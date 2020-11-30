/*:
 ## Упражнения - циклы For-In
 
 Создайте цикл for-in, выводящий в консоль числа от 1 до 100.
 */
for index in 1 ... 100 {
    print(index)
}
/*:
 Создайте цикл for-in, проходящий по всем символам в строке `alphabet`.  Выведите в консоль каждый символ, а также его индекс в строке.
 */
let alphabet = "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"
for letter in alphabet {
    print(letter)
}

/*:
 Создайте словарь типа `[String: String]`, где ключами будут названия стран, а значениями — названия их столиц.  Включите в коллекцию, как минимум, три пары ключ/значение.  Затем примените цикл for-in, чтобы пройти по парам и вывести в консоль ключи и значения словаря.
 */
let country : [String: String] =  ["Чехия": "Прага", "Финляндия": "Хельсинки", "Швеция": "Стокгольм"]
for (countryName, town) in country {
    print("\(countryName): \(town)")
}

//: страница 1 из 6  |  [Далее: Упражнение для приложения - виды спорта](@next)
