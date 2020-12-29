//
//  Game.swift
//  
//
//  Created by vincent santos on 12/10/2020.
//

import Foundation
//Create intial lunching game class
class GameInitializer {
    var player1 : Player
    var player2 : Player
    var numberOfTurn = 0
    var diedCharacters = [Character]()
    
    
    
    init() {
        
        player1 = Player(name: "1")
        player1.createTeam()
        player2 = Player(name: "2")
        player2.createTeam()
        fight()
        statsEndGame()
        
    }
    
    
    
    // Team in live
    func teamIsAlive(player: Player) -> Bool {
        for(index, character)  in player.team.enumerated() {
            if  character.life <= 0{
                diedCharacters.append(character)
                player.team.remove(at: index)
            }
        }
        // si tout le monde est mort
        if  player.team.count == 0 {
            return false
        }
        //   si il reste au moins un caracters
        return true
        
    }
    
    // End game Statistics
    func statsEndGame() {
        print("------------------------------------")
        print("------------------------------------")
        //print("Vous n'avez plus d'équipe")
        if teamIsAlive(player: player1) {
            print( " Player 1 win")
            print("------------------------------------")
            print("Player 2 loose , we have not team")
        } else {
            print("Player 2 win")
            print("------------------------------------")
            print("Player 1 loose , we have not team")
        }
        print("Nomber of turn: \(numberOfTurn)")
        print("------------------------------------")
        print("Killed characters:")
        print("------------------------------------")
        for  characterDead in diedCharacters {
            print("Name : \(characterDead.name)")
        }
        
    }
    
    // attacker/defenser fight fonction
    func TurnOfFight (attacker: Player, defender: Player)  {
        let chest = Chest()
        // Choose character
        let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        
        let targetCharacter = attacker.selectCharacter(team: defender.team)
        if let attak = attackingCharacter,let target = targetCharacter {
            attak.attack(target: target)
            if let newWeapon = chest.randomWeapon() {
                print("------------------------------------")
                print("you are find a new weapon")
                print("------------------------------------")
                attak.weapon = newWeapon
            }
        }
    }
    // Select turn fonction
    func fight () {
        while teamIsAlive(player: player1) && teamIsAlive(player: player2){
            print("------------------------------------")
            print("Player 1 it's your turn")
            print("------------------------------------")
            print("Please select your characters")
            print("------------------------------------")
            TurnOfFight(attacker: player1, defender: player2)
            numberOfTurn += 1
            if teamIsAlive(player: player2){
                print("------------------------------------")
                print("Player 2 it's your turn")
                print("------------------------------------")
                TurnOfFight(attacker: player2, defender: player1 )
            }
        }
    }
}

