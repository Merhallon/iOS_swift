/*:
 ## Упражнение - инструкции if и if-else
 
 Вы создаёте программу для подсчёта денег, которая выводит разные ответы в зависимости от количества наличных.  Дана переменная `dollars` со значением 0.  Напишите инструкцию if, которая выводит "Извини, ты банкрот!" в случае, если переменная `dollars` равна 0.  Проверьте, что будет напечатано в консоли.
 */
var dollars = 0
if dollars == 0{
    print("Извини, ты банкрот!")
}

/*:
 Переменная `dollars` получила новое значение 10.  Напишите инструкцию if-else, которая по-прежнему выводит "Извини, ты банкрот!" в случае, если `dollars` равна 0, но также печатает "Немножечко денег есть!" в противном случае.  Проверьте, что будет напечатано в консоли.
 */
dollars = 10
if dollars == 0{
    print("Извини, ты банкрот!")
}
else{
    print("Немножечко денег есть!")
}

/*:
 Теперь `dollars` получила значение 105.  Напишите инструкцию if-else-if, выводящую "Извини, ты банкрот!" в случае, если `dollars` равна 0, печатает "Немножечко денег есть!" в случае, если значение `dollars` меньше 100 и выводит "Похоже, мы богаты!" в противном случае.  Проверьте, что будет напечатано в консоли.
 */
dollars = 105
if dollars == 0{
    print("Извини, ты банкрот!")
}
else if dollars < 100{
    print("Немножечко денег есть!")
}
else {
    print("Похоже, мы богаты!")
}

//: [Ранее](@previous)  |  страница 2 из 9  |  [Далее: Упражнение для приложения - фитнес-решения](@next)
