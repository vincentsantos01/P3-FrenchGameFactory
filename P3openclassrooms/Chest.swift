//
//  Chest.swift
//  
//
//  Created by vincent santos on 24/10/2020.
//

import Foundation

// class chest
class Chest {
    
    func randomWeapon() -> Weapon? {
        let randomNumber = Int.random(in: 1...10)
        
        if randomNumber == 1 {
            return Weapon(name: "Sword", damage: 30)
        }
        if randomNumber == 3 {
            return Weapon(name: "Knife", damage: 35)
        }
        if randomNumber == 5 {
            return Weapon(name: "Spear", damage: 45)
        }
        if randomNumber == 7 {
            return Weapon(name: "Dagger", damage: 70)
        }
        if randomNumber == 9 {
            return Weapon(name: "Bow", damage: 50)
        }
        
        return nil
    }
}
