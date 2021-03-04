import Foundation
/*:
 ## Упражнение для приложения - циклы while
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Вы хотите, чтобы ваше фитнес-приложение помогало бегунам держать и улучшать темп.  Темп бега — это количество шагов в беге, которое совершает бегун за минуту.  Чтобы помочь держать темп, приложение запрашивает у пользователя требуемый темп, а затем издаёт звук при каждом интервале, когда нужно совершить очередной беговой шаг.
 
 В этом упражнении вы симулируете «испытание» реализации удержания темпа в вашем приложении.  Используйте цикл while, чтобы вывести в консоль сообщение "Сделать шаг" 10 раз.  После того, как вы вывели это сообщение, добавьте следующий код внутри вашего цикла: `Thread.sleep(forTimeInterval: 60/cadence)`.  Этот код обеспечит паузу между каждой итерацией цикла такой продолжительности, что сообщения будут выводится с нужным темпом.
 */
let cadence: Double = 180
var testSteps = 0
var i = 0
while i != 10 {
    i += 1
    print("Сделать шаг")
    Thread.sleep(forTimeInterval: 60/cadence)
}

/*:
 Заново создайте пример выше, но в этот раз используйте цикл repeat-while.
 */
testSteps = 0

repeat {
    testSteps += 1
    print("Сделать шаг")
    Thread.sleep(forTimeInterval: 60/cadence)
} while testSteps < 11


//: [Ранее](@previous)  |  страница 4 из 6  |  [Далее: Упражнение - Команды передачи управления](@next)