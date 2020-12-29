//
//  Character.swift
//  
//
//  Created by vincent santos on 05/10/2020.
//

import Foundation
// Create Character class with properties
class Character {
    var name: String
    var life: Int
    var weapon: Weapon
    //var isAlive: Bool{
    //return life > 0
    //}
    
    
    
    init ( name: String, life: Int, weapon: Weapon){
        self.name = name
        self.life = life
        self.weapon = weapon
        
    }
    // Basic attack fonction
    // Tester ok
    func attack(target: Character) {
        target.life  -= self.weapon.damage
        if target.life <= 0{
            target.life = 0
            print("\(target.name) has no more life, he is removed from the game")
            print("------------------------------------")
        }
        print("\(self.name) attack \(target.name) and withdraw \(self.weapon.damage)pv.and he remains\(target.life)PV" )
        print("------------------------------------")
        
    }
    
}

