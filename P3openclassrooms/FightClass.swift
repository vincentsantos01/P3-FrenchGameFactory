//
//  FightClass.swift
//  
//
//  Created by vincent santos on 12/10/2020.
//

import Foundation
// Create Warrior class with specific weapon and damage power
class Warrior : Character {
    var defaultWeapon = Weapon(name: "Sword", damage: 20)
    init(name: String){
        super.init(name: name, life: 80, weapon: defaultWeapon)
    }
    
}
// Create Dwarf Class with specific weapon and damage power
class Dwarf : Character {
    var defaultWeapon = Weapon(name: "Knife", damage: 20)
    init(name: String){
        super.init(name: name, life: 50, weapon: defaultWeapon)
    }
    
}
// Create Berseker class with specific weapon and damage power
class Berserker : Character {
    var defaultWeapon = Weapon(name: "Spear", damage: 30)
    init(name: String){
        super.init(name: name, life: 100, weapon: defaultWeapon)
    }
    
}
// Create Spy class with specific weapon and damage power
class Spy : Character {
    var defaultWeapon = Weapon(name: "Dagger", damage: 60)
    init(name: String){
        super.init(name: name, life: 30, weapon: defaultWeapon)
    }
    
}
//Create Archer class with specific weapon and damage power
class Archer : Character {
    var defaultWeapon = Weapon(name: "Bow", damage: 40)
    init(name: String){
        super.init(name: name, life: 40, weapon: defaultWeapon)
    }
    
}
