//
//  CoffeeMachine.swift
//  ModellingEntity
//
//  Created by Delvin on 15/05/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import Foundation

class CoffeeMachine : Machine{
    var numOfBeans: Int = 50
    var numOfMilk: Int
    var brand: String
    var made: Int = 0
    var error: String
    
    init(milk: Int, brand: String, error: String) {
        numOfMilk = milk
        self.brand = brand
        self.error = error
    }
    
    func addMilk(milk: Int) {
        numOfMilk = numOfMilk + milk
    }
    
    func addBeans(beans: Int) {
        numOfBeans = numOfBeans + beans
    }
    
    func makeCoffee() {
        if(numOfMilk>4 && numOfBeans>6){
            numOfBeans = numOfBeans - 7
            numOfMilk = numOfMilk - 5
            made += 1
            error = ""
        }
        else{
            error = "Not enough ingredient"
        }
    }
}
