//
//  ViewController.swift
//  ModellingEntity
//
//  Created by Delvin on 15/05/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    @IBOutlet weak var madeLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    var coffeeMachine: CoffeeMachine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coffeeMachine = CoffeeMachine(milk: 80, brand: "Ristretto", error: "")
        updateLabel()
    }

    @IBAction func addCoffee(_ sender: Any) {
        coffeeMachine.addBeans(beans: 80)
        updateLabel()
    }
    
    @IBAction func addMilk(_ sender: Any) {
        coffeeMachine.addMilk(milk: 50)
        updateLabel()
    }
    @IBAction func makeCoffee(_ sender: Any) {
        coffeeMachine.makeCoffee()
        updateLabel()
    }
    
    func updateLabel(){
        coffeeLabel.text = String(coffeeMachine.numOfBeans)
        milkLabel.text = String(coffeeMachine.numOfMilk)
        madeLabel.text = String(coffeeMachine.made)
        brandLabel.text = coffeeMachine.brand
        errorLabel.text = coffeeMachine.error
    }

}

