/*:
 ## Упражнение - вычислимые свойства и наблюдатели свойства
 
 У структуры `Rectangle` ниже есть для свойства, одно для хранения высоты прямоугольника, а другое — для ширины. Добавьте вычислимое свойство, которое вычисляет площадь прямоугольника (то есть произведение ширины на высоту). Создайте экземпляр структуры `Rectangle` и выведите свойство `area` в консоль.
 */
struct Rectangle {  // Прямоугольник
    var width: Int  // Ширина
    var height: Int // Высота
    
    var area: Int{
        return(width * height)
    }
}

var square = Rectangle(width: 20, height: 20)
print(square.area)
/*:
 В структуре `Height` ниже, высота представлена как в дюймах, так и в сантиметрах. Однако, если меняется свойство `heightInInches`, переменная `heightInCentimeters` также должна меняться, чтобы ему соответствовать. Добавьте `didSet` к каждому из свойств, которое будет проверять, содержит ли другое свойство необходимое значение, и, если нет, устанавливать его. Если вы установите значение другого свойства сразу, без проверки, у вас получится вечный цикл, в котором каждое из свойств будет устанавливать другое по очереди.
 
 Создайте экземпляр типа `Height` и измените одно из его свойств. Выведите в консоль другое свойство, чтобы удостовериться, что оно соответственно изменилось.
 */
struct Height {                         // Высота
    var heightInInches: Double{
        didSet {
            if heightInInches != oldValue {
                self.heightInCentimeters = heightInInches * 2.54
            }
        }
    }          // Высота в дюймах
    
    var heightInCentimeters: Double {
        didSet {
            if heightInCentimeters != oldValue {
                self.heightInInches = heightInCentimeters / 2.54
            }
        }
    }    // Высота в сантиметрах
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

 var myHight = Height(heightInInches: 45)
print(myHight.heightInCentimeters, myHight.heightInInches)
myHight.heightInCentimeters = 56
print(myHight.heightInCentimeters, myHight.heightInInches)

//: [Ранее](@previous)  |  страница 7 из 10  |  [Далее: упражнение для приложения — среднее время и ободряющие сообщения](@next)
