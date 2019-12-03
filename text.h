#ifndef COURSE_WCHAR__TEXT_H
#define COURSE_WCHAR__TEXT_H

    #include "sentence.h"
    typedef struct Text{
        Sentence_t** sentences;
        size_t size;
        size_t capacity;
    } Text_t;

    void initText(Text_t* text);
    void reserveTextMemory(Text_t* text, size_t newCapacity);
    void addSentenceToText(Text_t* text, Sentence_t* sentence);
    void readText(Text_t* text, FILE *file);
    int cmp(const void* a, const void* b);
    void sortText(Text_t* text);
    void printText(Text_t *text, FILE *file);
    void dateProcessing(Text_t* text);
    void deleteSentences(Text_t* text, size_t ind);
    void processingText(Text_t* text);
    void freeText(Text_t* text);
    void deleteSameSentence(Text_t *text);
    void printUniqueWords(Text_t* text, FILE *file);
#endif //COURSE_WCHAR__TEXT_H
