/*:
 ## Упражнение - приведение числовых типов

 Создайте целочисленную константу `x` и присвойте ей значение 10, а также рациональную константу двойной точности `y` со значением 3.2.  Создайте константу `multipliedAsIntegers`, равную произведению `x` на `y`.  Компилируется ли ваш код?  Если нет, исправьте его с помощью приведения типа `Double` к типу `Int`.  Выведите результат.
 */
let x : Int = 10
let y : Double = 3.2
let multipliedAsIntegers = x * Int(y)
print(multipliedAsIntegers)

/*:
 Создайте константу `multipliedAsDoubles`, также равную произведению `x` на `y`, но в этот раз приведите `Int` к типу `Double` в выражении.  Выведите результат.
 */
let multipliedAsDoubles = y * Double(x)
print(multipliedAsDoubles)

/*:
 Различаются ли значения `multipliedAsIntegers` и `multipliedAsDoubles`?  Напечатайте в консоль объяснение, почему это так.
 */
print("Значения отличаются, так как в первом случае получается значение типа Int без знаков после запятой, а во втором Double")

//: [Ранее](@previous)  |  страница 7 из 8  |  [Далее: Упражнение для приложения - приведение типов](@next)