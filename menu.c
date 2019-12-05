#include "menu.h"
void menu(Text_t* text){

    FILE *output = fopen("../output.txt", "w");
    fwprintf(output, L"Введите номер действия:\n    1 - Распечатать каждое слово которое встречается не более одного раза в тексте.\n    2 - Заменить формат даты на: ДД/ММ/ГГГГ”.\n    3 - Отсортировать предложения по произведению длин слов в предложении.\n    4 - Удалить все предложения, которые содержат символ ‘#’ или ‘№’, но не содержат ни одной цифры.\n    5 - Вывести текст\n    6 - Выход\n");
    int c;
    while(true) {
        scanf("%d", &c);
        switch (c) {
            case 1:
                printUniqueWords(text, output);
                break;
            case 2:
                dateProcessing(text);
                break;
            case 3:
                sortText(text);
                break;
            case 4:
                processingText(text);
                break;
            case 5:
                printText(text, output);
                break;
            case 6:
                fclose(output);
                freeText(text);
                return;
            default:
                fwprintf(output, L"Error: не существующее действие.");

        }
    }

}