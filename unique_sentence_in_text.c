#include "unique_sentence_in_text.h"

Sentence_t* getWord(Text_t* text, size_t* i, size_t* j);
void checkWordUnique(Text_t *text, Sentence_t *word, Text_t *ansText, size_t i);
bool check(Text_t *text, Sentence_t *word, int index);


void printUniqueWords(Text_t* text, FILE* file) {
    size_t i = 0;
    size_t j = 0;
    Text_t* ansText = (Text_t*)malloc(sizeof(Text_t));
    initText(ansText);
    while(i < text->size) {
        Sentence_t* word = getWord(text, &i, &j);
        checkWordUnique(text, word, ansText, i);
    }
    printText(ansText, file);
    freeText(ansText);
}



Sentence_t* getWord(Text_t* text, size_t* i, size_t* j){
    Sentence_t *word = (Sentence_t *) malloc(sizeof(Sentence_t));
    initSentence(word);
    while(*i < text->size) {
        if(*j != 0)
            skipSeparators(j, text, i);
        if(*j >= text->sentences[*i]->size){
            (*i)++;
            (*j = 0);
        }
        while(*i < text->size && *j < text->sentences[*i]->size && !isEndingOfSentence(text->sentences[*i]->symbols[*j]) && !isSentenceSeparator(text->sentences[*i]->symbols[*j])){
            addSymbolToSentence(word, text->sentences[*i]->symbols[*j]);
            (*j)++;
            if(*j >= text->sentences[*i]->size || isEndingOfSentence(text->sentences[*i]->symbols[*j]) || isSentenceSeparator(text->sentences[*i]->symbols[*j])){
                return word;
            }
        }
        (*i)++;
        (*j) = 0;
    }
    return word;
}



void checkWordUnique(Text_t *text, Sentence_t *word, Text_t *ansText, size_t i) {
    bool flag = true;
    for(size_t k = 0; k < text->size; k++) {
        if(k != i) {
            if(check(text, word, k)){
                flag = (flag * false);
            }
        } else {
            flag = (flag * !isWordInSentence(text->sentences[k], word));
        }
    }
    if(flag) {
        addSentenceToText(ansText, word);
    } else {
        freeSentence(word);
    }
}


bool check(Text_t *text, Sentence_t *word, int index) {
    wchar_t* checkWStr = malloc(sizeof(wchar_t) * (text->sentences[index]->size + 2));
    wcpcpy(checkWStr, text->sentences[index]->symbols);
    wchar_t *buff;

    wchar_t * pch = wcstok(checkWStr,L" ,.", &buff);

    while (pch != NULL) {
        if (wcscmp(pch, word->symbols) == 0) {
            free(checkWStr);
            return true;
        }
        pch = wcstok (NULL, L" ,.", &buff);
    }
    free(checkWStr);
    return false;
}
