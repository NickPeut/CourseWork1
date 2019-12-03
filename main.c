#include "text.h"
int main() {

    setlocale( LC_ALL, "ru_RU.UTF-8");
    Text_t* text = (Text_t*)malloc(sizeof(Text_t));
    initText(text);

    FILE *input = fopen("../input.txt", "r");
    readText(text, input);
    fclose(input);
    deleteSameSentence(text);

    FILE *output = fopen("../output.txt", "w");
    fwprintf(output, L"Введите номер действия:\n    1 - Распечатать каждое слово которое встречается не более одного раза в тексте.\n    2 - Заменить формат даты на: ДД/ММ/ГГГГ”.\n    3 - Отсортировать предложения по произведению длин слов в предложении.\n    4 - Удалить все предложения, которые содержат символ ‘#’ или ‘№’, но не содержат ни одной цифры.\n");
    int c;
    scanf("%d", &c);
    switch (c){
        case 1:
            printUniqueWords(text, output);
            break;
        case 2:
          //  dateProcessing(text);
            printText(text, output);
            break;
        case 3:
            sortText(text);
            printText(text, output);
            break;
        case 4:
            processingText(text);
            printText(text, output);
            break;
    }

    fclose(output);
    freeText(text);
    return 0;
}
