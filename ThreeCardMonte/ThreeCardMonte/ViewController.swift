//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
   
    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet var cards: [UIButton]!
    var winningNumber = Int.random(in: 0...2)
    
    func winning(num: Int) {
        cards[num].setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
        theLabel.text = "You've won, yo!"
        cards.forEach { (button) in
            button.isEnabled = false
        }
    }
    
    func disablesCards() {
        cards.forEach { (button) in
            button.isEnabled = false
        }
        theLabel.text = "Sorry, wrong card! Try again!"
    }
    
    
    @IBAction func userChoice(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if winningNumber == 0 {
                winning(num: 0)
            } else {
                cards[winningNumber].setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
                cards[0].setImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
                disablesCards()
            }
        case 1:
            if winningNumber == 1 {
                winning(num: 1)
            } else {
                cards[winningNumber].setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
                cards[1].setImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
                disablesCards()
            }
        case 2:
            if winningNumber == 2 {
                winning(num: 2)
            } else {
                cards[winningNumber].setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
                cards[2].setImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
                disablesCards()
            }
        default :
            print("what the fuck is this")
        }
            
    
    }
    
    func resetTheGame() {
        winningNumber = Int.random(in: 0...2)
        cards.forEach { (button) in
            button.isEnabled = true
            button.setImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
            
        }
        
        theLabel.text = "Pick a card"
    }
    

    
    @IBOutlet weak var Random: UIButton!
    
    @IBAction func Randomizer(_ sender: Any) {
            resetTheGame()
    }
    
    
    
    
    func randoCard() -> Int {
        let theCard = Int.random(in: 1...3)
        return theCard
        
    }
    
    
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    theLabel.text = "Pick a card"
    
    // Do any additional setup after loading the view, typically from a nib.
  }


}

