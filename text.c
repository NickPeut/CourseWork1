#include "text.h"


void initText(Text_t* text) {
    text->capacity = 10;
    text->sentences = (Sentence_t**)malloc(text->capacity * sizeof(Sentence_t*));
    text->size = 0;
}


void reserveTextMemory(Text_t* text, size_t newCapacity) {
    text->sentences = (Sentence_t**)(realloc(text->sentences, newCapacity * sizeof(Sentence_t*)));
    text->capacity = newCapacity;
}


void addSentenceToText(Text_t* text, Sentence_t* sentence) {
    if (text->size == text->capacity) {
        reserveTextMemory(text, text->capacity * 2);
    }
    text->sentences[text->size] = sentence;
    text->size++;
}

void readText(Text_t* text, FILE *file) {
    while (true) {
        Sentence_t *sentence = (Sentence_t *) malloc(sizeof(Sentence_t));
        initSentence(sentence);
        readSentence(sentence, file);
        updateSentenceProduct(sentence);
        if (sentence->size == 0 || isTerminalSymbol(sentence->symbols[sentence->size - 1])) {
            freeSentence(sentence);
            break;
        }
        addSentenceToText(text, sentence);
    }
}
int cmp(const void* a, const void* b){
    return ((*((Sentence_t**)a))->product - (*((Sentence_t**)b))->product);
}

void sortText(Text_t* text){
    qsort(text->sentences, text->size, sizeof(Sentence_t*), (__compar_fn_t) cmp);
}


void printText(Text_t *text, FILE *file) {
    for (size_t i = 0; i < text->size; i++) {
        fwprintf(file,L"%ls ", text->sentences[i]->symbols);
    }
}

void deleteSentences(Text_t* text, size_t ind) {
    freeSentence(text->sentences[ind]);
    for (size_t i = ind; i < text->size - 1; i++) {
        text->sentences[i] = text->sentences[i+1];
    }
    text->size--;
}

void processingText(Text_t* text) {
    for (size_t i = 0;  i < text->size; i++) {
        if (!foundInSentence(text->sentences[i])) {
            deleteSentences(text, i);
            i--;
        }
    }
}

bool isWordInSentence(Sentence_t* sentence, Sentence_t* word){
    int count = 0;
    for(int i = 0; i < sentence->size - word->size; i++){
        int j = 0;
        for(j = 0; j < word->size; j++){
            if(sentence->symbols[i+j] != word->symbols[j]) {
                break;
            }
        }
        if(j == word->size){
            count++;
        }
    }
    return count > 1;
}



Sentence_t* getWord(Text_t* text, size_t* i, size_t* j){
    Sentence_t *word = (Sentence_t *) malloc(sizeof(Sentence_t));
    initSentence(word);
    while(*i < text->size) {
        if(*j != 0) do {
            (*j)++;
        } while(*j < text->sentences[*i]->size && (isEndingSentence(text->sentences[*i]->symbols[*j]) || isSentenceSeparator(text->sentences[*i]->symbols[*j])));
        if(*j >= text->sentences[*i]->size){
            (*i)++;
            (*j = 0);
        }
        while(*j < text->sentences[*i]->size && !isEndingSentence(text->sentences[*i]->symbols[*j]) && !isSentenceSeparator(text->sentences[*i]->symbols[*j])){
            addSymbolToSentence(word, text->sentences[*i]->symbols[*j]);
            (*j)++;
            if(*j >= text->sentences[*i]->size || isEndingSentence(text->sentences[*i]->symbols[*j]) || isSentenceSeparator(text->sentences[*i]->symbols[*j])){
                return word;
            }
        }
        (*i)++;
        (*j = 0);
    }
    return word;
}

void checkWord(Text_t *text, Sentence_t *word, Text_t *ansText, size_t i) {
    bool flag = true;
    for(size_t k = 0; k < text->size; k++) {
        if(k != i) {
            if(wcsstr(text->sentences[k]->symbols, word->symbols)){
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
/*
void deleteSameSentence(Text_t *text) {
    for (size_t i = 0; i < text->size - 1; i++) {
        for (size_t j = i; j < text->size; j++) {
            if (wcpncpy(text->sentences[i]->symbols, text->sentences[j]->symbols)) {
                deleteSentences(text, j);
                j--;
            }
        }
    }
}
*/
void printUniqueWords(Text_t* text, FILE* file) {
    size_t i = 0;
    size_t j = 0;
    Text_t* ansText = (Text_t*)malloc(sizeof(Text_t));
    initText(ansText);
    while(i < text->size) {
        Sentence_t* word = getWord(text, &i, &j);
        checkWord(text, word, ansText, i);

    }
    printText(ansText, file);
    freeText(ansText);
}



void freeText(Text_t* text) {
    for (size_t i = 0; i < text->size; i++) {
        freeSentence(text->sentences[i]);
    }
    free(text->sentences);
    free(text);
}