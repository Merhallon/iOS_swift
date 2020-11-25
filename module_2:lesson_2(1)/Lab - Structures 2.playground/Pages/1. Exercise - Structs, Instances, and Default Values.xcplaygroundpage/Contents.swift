/*:
 ## Упражнение — структуры, экземпляры и значения по умолчанию
 
 Вы создаёте приложение для отслеживания геопозиции. Создайте структуру `GPS` с двумя переменными свойствами: latitude (широта) и longitude (долгота), и присвойте обоим значение 0.0.
 */
struct GPS {
    var latitude = 0.0
    var longitude = 0.0
}

/*:
 Создайте экземпляр переменной типа `GPS` под названием `somePlace`. Он должен быть инициализирован без передачи аргументов. Выведите значения свойств latitude и longitude переменной `somePlace`, каждое из которых должно быть равно 0.0.
 */
var somePlace = GPS()
print("latitude = \(somePlace.latitude)")
print("longitude = \(somePlace.longitude)")


/*:
 Поменяйте свойство latitude переменной `somePlace` на 51.514004, а longitude — на 0.125226, затем выведите обновлённые значения.
 */
somePlace.latitude = 51.514004
somePlace.longitude = 0.125226
print("latitude = \(somePlace.latitude)")
print("longitude = \(somePlace.longitude)")
/*:
 Вы создаёте социальное приложение для обмена книгами. Создайте структуру `Book` с четырьмя переменными свойствами: `title` (название), `author` (автор), `pages` (количество страниц) и `price` (стоимость). Значения по умолчанию для `title` и `author` — пустые строки. `pages` по умолчанию должно быть равно 0, а `price` — 0.0.
 */
struct Book {
    var title = String()
    var author = String()
    var pages = 0
    var price = 0.0
    
}

/*:
 Создайте экземпляр переменной типа `Book` под названием `favoriteBook` без передачи каких-либо аргументов. Выведите название книги `favoriteBook`. Отражает ли это значение настоящее название вашей любимой книги? Скорее всего, нет. Поменяйте все четыре свойства переменной `favoriteBook` на реальные значения для вашей любимой книги. Затем, используя их, выведите известные факты об этой книге.
 */
var favoriteBook = Book()
print("Название книги: \(favoriteBook.title)")

favoriteBook.author = "Макс Фрай"
favoriteBook.title = "Большая телега"
favoriteBook.pages = 150
favoriteBook.price = 250

print("Книга \(favoriteBook.title) на \(favoriteBook.pages) страниц, автора \(favoriteBook.author), проживающего в Вильнюсе, стоит \(favoriteBook.price) рублей ")

//: страница 1 из 10  |  [Далее: Упражнение для приложения — учёт тренировок](@next)
