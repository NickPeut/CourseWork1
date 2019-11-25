#include "text.h"
int main() {

    setlocale( LC_ALL, "ru_RU.UTF-8");
    Text_t* text = (Text_t*)malloc(sizeof(Text_t));
    initText(text);

    FILE *input = fopen("../input.txt", "r");
    readText(text, input);
    fclose(input);
    //deleteSameSentence(text);

    sortText(text);
    processingText(text);

    FILE *output = fopen("../output.txt", "w");

    printUniqueWords(text, output);
    fwprintf(output, L"\n");
    printText(text, output);

    fclose(output);
    freeText(text);
    return 0;
}
