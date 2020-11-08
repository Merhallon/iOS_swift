//
//  ViewController.swift
//  lesson_3
//
//  Created by Марина Щербикова on 05.11.2020.
//
// Смысл игры, сделать так, чтобы все переключатели были включены. Но кнопке отражается кол-во нажатий на кнопку. Цвет кнопки может менятся от кол-ва нажатий.

import UIKit

class ViewController: UIViewController {
    
    //Инициализируем счетчик нажатий
    var counter : Int = 0
    
    //Инициализируем счетчик нажатий для 1ой конопки
    var counterTwo : Int = 0
    
    // Добавляем кнопку-счетчик 1
    @IBOutlet weak var buttonCounter: UIButton!
    
    //Добавляем кнопку  кнопку-счетчик 2
    @IBOutlet weak var buttonCounterTwo: UIButton!
    
    // Добавляем переключатель 1
    @IBOutlet weak var switchOne: UISwitch!
    
    // Добавляем переключатель 2
    @IBOutlet weak var switchTwo: UISwitch!
    
    // Добавляем переключатель 3
    @IBOutlet weak var switchThree: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        switchOne.isOn.toggle()
        switchTwo.isOn.toggle()
        switchThree.isOn.toggle()
        
        buttonCounter.setTitle("0", for: .normal)
        buttonCounter.backgroundColor = .yellow
        buttonCounter.layer.cornerRadius = 35
        
        buttonCounterTwo.setTitle("0", for: .normal)
        buttonCounterTwo.backgroundColor = .green
        buttonCounterTwo.layer.cornerRadius = 35
                
    }
    /// Обработка нажатия на кнопку
    /// - Parameter sender: Собственно сам компонент
    @IBAction func buttonPressed(_sender: Any) {
        
        // Увеличиваем счетчик нажатий
        counter += 1
        
        //Делаем из счетчика строку
        let counterText : String = String(counter)
        
        //Изменяем текст на кнопке на кол-во нажатий
        buttonCounter.setTitle(counterText, for: .normal)
        
        //Прописываем условие для работы 2 переключателя
        if counter % 2 == 0 {
            switchTwo.isOn.toggle()
        }
            
        //Прописываем условие для работы 3 переключателя
        if counter % 4 == 0 {
            switchThree.isOn.toggle()
        }
        
        //Прописываем условие для смены цвета 1ой кнопки
        if counter >= 8 {
            buttonCounter.backgroundColor = .white
        }
        
    }
    
    /// Обработка нажатия на 2ю кнопку
    /// - Parameter sender: Собственно сам компонент
    @IBAction func buttonTwoPressed(_ sender: Any) {
        
        // Увеличиваем счетчик нажатий
        counterTwo += 1
        
        //Делаем из счетчика строку
        let counterTextTwo : String = String(counterTwo)
        
        //Изменяем текст на кнопке на кол-во нажатий
        buttonCounterTwo.setTitle(counterTextTwo, for: .normal)
        
        //Прописываем условие для работы 1го переключателя
        if buttonCounter.backgroundColor == .white && counterTwo > 5 {
            switchOne.isOn.toggle()
        }
    }
    
    
}

