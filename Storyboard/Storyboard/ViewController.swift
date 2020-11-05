//
//  ViewController.swift
//  Storyboard
//
//  Created by Марина Щербикова on 05.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    ///Счечик нажатий на кнопку
    var counter : Int = 0
    
    /// Наша кнопка
    @IBOutlet weak var someButton: UIButton!
    
    ///Наш переключатель
    @IBOutlet weak var someSwitch: UISwitch!
    
    ///Наш Лейбл
    @IBOutlet weak var labelForText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        someButton.setTitle("Наша кнопка", for: .normal)
        someButton.backgroundColor = .darkGray
        someButton.layer.cornerRadius = 20
        
    }


    ///Обработка нажатия
    /// -Parament sender: сам компонент
    @IBAction func changeValueOfSwitch(_ sender: UISwitch) {
        //sender.isOn = true
        //print(someSwitch.isOn)

        //someSwitch.isOn =  true
    }
    
    /// Обрабатываем нажатие кнопки
    @IBAction func buttonPressed() {
        
        // Меняем значение нечего переключателя
        someSwitch.isOn.toggle()
        
        //Увеличиваем кол-во нажатий
        counter += 1
        
        // Задаем информацию о состоянии переключателя
        let switchText: String = someSwitch .isOn ? "Переключатель включен" : "Переключатель выключен"
        // Задаем инфоомацию о кол-ве нажатий
        let counterText: String = String(counter)
        
        // Подпись
        let supportedText: String = "Кол-во нажатий"
        
        // Складываем строки
        let result: String = switchText + " " + supportedText + " " + counterText
        
        //Присваиваем нашему лейблу текст
        labelForText.text = result
    }
    
}
