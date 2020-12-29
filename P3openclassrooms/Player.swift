//
//  Player.swift
//  
//
//  Created by vincent santos on 05/10/2020.
//

import Foundation
// Create Player class with properties
class Player {
    var name : String
    var team = [Character]()
    var names = [String]()
    
    init(name: String) {
        self.name = name
    }
// Create name of character with filter
    func  nameCharacter() -> String {
        
        if let namePlayer = readLine() {
            
            
            let choice = namePlayer.trimmingCharacters(in: .whitespaces).lowercased()
            if choice.count > 0  && choice.count < 3 {
                print("///ERROR///  Choose a name of more than 3 characters")
            }else if choice.isEmpty {
                print("///ERROR///  Please enter a name")
            }else if names.contains(choice) {
                print("///ERROR///  Name already used")
            }else{
                return choice
            }
        }
        return nameCharacter()
    }
    
    
    // Character select with switch condition
    
    func createTeam() {
        // select 3 characters
        while team.count < 3 {
            // list of characters
            print("Player \(name) Take 3 characters on this list :")
            print("-----------------------------------------------------------------------------")
            print("1 - Warrior - with 100 pv and a Sword for weapon and take 10 pv damage")
            print("-----------------------------------------------------------------------------")
            print("2 - Berseker - with 115 pv and a Spear for weapon and take 15 pv damage")
            print("-----------------------------------------------------------------------------")
            print("3 - Dwarf - with 75 pv and a Knife for weapon and take 13 pv damage")
            print("-----------------------------------------------------------------------------")
            print("4 - Spy - with 50 pv and a Dagger for weapon and take 30 pv damage")
            print("-----------------------------------------------------------------------------")
            print("5 - Archer - with 60 pv and a bow for weapon and take 20 pv damage")
            print("-----------------------------------------------------------------------------")
            
            if let choice = readLine() {
                switch choice {
                // Add the character to create in the Team
                // Add the name of the chosen character in the table name
                case "1":
                    print("you are choice Warrior, take him a name:")
                    let name = nameCharacter()
                    let character = Warrior(name: name)
                    team.append(character)
                    names.append(name)
                case "2":
                    print("you are choice Berserker, take him a name:")
                    let name = nameCharacter()
                    let character = Berserker(name: name)
                    team.append(character)
                    names.append(name)
                case "3":
                    print("you are choice Dwarf, take him a name:")
                    let name = nameCharacter()
                    let character = Dwarf(name: name)
                    team.append(character)
                    names.append(name)
                case "4":
                    print("you are choice Spy, take him a name:")
                    let name = nameCharacter()
                    let character = Spy(name: name)
                    team.append(character)
                    names.append(name)
                case "5":
                    print("you are choice Archer, take him a name:")
                    let name = nameCharacter()
                    let character = Archer(name: name)
                    team.append(character)
                    names.append(name)
                default:
                    print("It's not correct, try again !")
                    print("-")
                    print("-")
                    print("-")
                }
            }
        }
        
    }
    
    func availableNameCharacter( name: String) -> Bool {
        var currentIndex = 0
        for (index, team) in team.enumerated() {
            if team.name == name {
                return false
                
            }
            currentIndex = index
        }
        addCharacterName(name: name, at: currentIndex)
        return true
    }
    func addCharacterName( name: String, at index: Int) {
        team[index].name = name
    }
    
    func selectCharacter(team: [Character] ) -> Character?  {
        for (index, character) in team.enumerated() {
            //Personnage dans le tableau
            print("The character \(index + 1) at name \(character.name)")
        }
       
        // Check this dead character
        if let choice = readLine(){
            if let choiceInt = Int(choice){
                if choiceInt >= 1 && choiceInt <= team.count {
                    return team[choiceInt - 1]
                }
            }
        }
        //   initaial choice
        return selectCharacter(team: team)
    }
}
