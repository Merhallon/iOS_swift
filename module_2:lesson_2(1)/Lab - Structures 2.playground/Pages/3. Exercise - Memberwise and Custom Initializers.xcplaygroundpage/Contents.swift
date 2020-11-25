/*:
 ## Упражнение — дефолтные и пользовательские инициализаторы
 
 В упражнении «1. Структуры, экземпляры и значения по умолчанию», мы создали структуру `GPS` со значениями по умолчанию для свойств `latitude` (широта) и `longitude` (долгота). Снова создайте структуру `GPS`, но в этот раз не задавайте значения по умолчанию. Оба свойства должны быть типа `Double`.
 */
struct GPS {
    var latitude = Double()
    var longitude = Double()
}

/*:
 Создайте константу `somePlace` — экземпляр `GPS` — и, используя поэлементный конструктор (инициализатор), установите `latitude` равным 51.514004, а `longitude` — равным 0.125226. Выведите значения свойств `somePlace` в консоль.
 */
let somePlace = GPS(latitude: 51.514004, longitude: 0.125226)
print("\(somePlace.latitude) \n", somePlace.longitude)

/*:
 В упражнении «1. Структуры, экземпляры и значения по умолчанию» мы также создали структуру `Book`.  Воссоздайте эту структуру без значений по умолчанию. Выберите для каждого свойства нужный тип. Объявите экземпляр `favoriteBook` и инициализируйте его значениями вашей любимой книги с помощью поэлементного конструктора. Выведите информацию о вашей любимой книге в консоль, используя свойства`favoriteBook`.
 */
struct Book {
    var title = String()
    var author = String()
    var pages = Int()
    var price = Double()
    
}

var favoriteBook = Book(title: "Большая телега", author: "Макс Фрай", pages: 150, price: 250.0)
print("Книга \(favoriteBook.title) на \(favoriteBook.pages) страниц, автора \(favoriteBook.author), проживающего в Вильнюсе, стоит \(favoriteBook.price) рублей ")
/*:
 Создайте структуру `Height` (рост) с двумя переменными свойствами, `heightInInches` (рост в дюймах) и `heightInCentimeters` (рост в сантиметрах). Оба должны иметь тип `Double`.
 
 Создайте два пользовательских конструктора (инициализатора).  Один конструктор должен принимать аргумент типа `Double`, представляющий рост в дюймах. Второй инициализатор должен принимать аргумент типа `Double`, означающий рост в сантиметрах. Каждый конструктор должен использовать свой параметр для того, чтобы установить свойство, соответствующее переданным единицам измерения. Затем он должен установить второе свойство, вычислив его значение из переданного параметра.  Подсказка: *1 дюйм = 2.54 сантиметра*.
 
 - Пример: если вы используете инициализатор для дюймов и передадите ему значение 65, он должен установить `heightInInches` равным 65, а `heightInCentimeters` — равным 165.1.
 */
struct Height {
    var heightInInches = Double()
    var heightInCentimeters = Double()
    
    init(ches: Double) {
        self.heightInInches = ches
        self.heightInCentimeters = ches * 2.54
    }
    
    init(centimeters: Double) {
        self.heightInCentimeters = centimeters
        self.heightInInches = centimeters / 2.54
    }
    
}

/*:
 Создайте экземпляр переменной `someonesHeight` типа `Height`. Используйте конструктор для дюймов, чтобы сделать рост равным 65. Выведите в консоль значение свойства в сантиметрах, и проверьте, что оно равно 165.1.
 */
var someonesHeight = Height(ches: 65)
print(someonesHeight.heightInCentimeters)

/*:
 Создайте экземпляр переменной `myHeight` типа `Height` и инициализируйте его значением вашего собственного роста. Убедитесь, что оба значения — `heightInInches` и `heightInCentimeters` — верны.  Выведите их значения в консоль.
 */
var myHeight = Height(centimeters: 168)
print(myHeight.heightInCentimeters, myHeight.heightInInches)

//: [Ранее](@previous)  |  страница 3 из 10  |  [Далее: упражнение для приложения — пользователи и дистанция](@next)
