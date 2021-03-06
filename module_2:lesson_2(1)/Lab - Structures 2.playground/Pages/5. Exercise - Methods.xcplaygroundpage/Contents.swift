/*:
 ## Упражнение — методы
 
 Ниже вы видите структуру `Book`. Добавьте метод экземпляра к этой структуре с именем `description`, который выводит в консоль информацию о книге. Затем создайте экземпляр структуры `Book` и вызовите данный метод для созданного экземпляра.
 */
struct Book {           // Книга
    var title: String   // Название
    var author: String  // Автор
    var pages: Int      // Количество страниц
    var price: Double   // Цена
    
    func description() {
        print("Книга \(title) на \(pages) страниц, автора \(author), стоит \(price) рублей ")
    }
}

var favoriteBook = Book(title: "Большая телега", author: "Макс Фрай", pages: 150, price: 250.0)
favoriteBook.description()
/*:
 Изучите структуру `Post`, представляющую стандартное послание в социальной сети. Добавьте изменяющий (`mutating`) метод в эту структуру под названием `like`, который будет увеличивать `likes` на единицу. Затем создайте экземпляр структуры `Post` и вызовите его метод `like()`. Выведите в консоль свойство `likes` до и после вызова метода, чтобы проверить, изменилось ли количество лайков.
 */
struct Post {                   // Послание
    var message: String         // Текст сообщения
    var likes: Int              // Число лайков
    var numberOfComments: Int   // Количество комментариев
    
    mutating func like (){
        likes += 1
    }
}

var noname = Post(message: "Hi", likes: 34, numberOfComments: 2)
print("Колличество лайков: \(noname.likes)")
noname.like()
print("Колличество лайков: \(noname.likes)")

//: [Ранее](@previous)  |  страница 5 из 10  |  [Далее: упражнение для приложения — функции разминки](@next)
