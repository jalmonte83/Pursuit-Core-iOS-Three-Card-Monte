//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var chooseACard: UILabel!
    
    
    
    
    
   
    
    
    override func viewDidLoad() {
        
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    @IBAction func cardWillFilp(_ sender: UIButton) {
        var images = [UIImage.init(named: "kingCard"), UIImage.init(named: "threeCard"), UIImage.init(named: "threeCard")]
        images = images.shuffled()
        switch sender.tag {
        case 0:
            if images[0] == UIImage(named: "kingCard") {
                card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
                chooseACard.text = "You Won!"
            } else {
                card0.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    chooseACard.text = "You lost!"
            }
            card0.isEnabled = false
            card1.isEnabled = false
            card2.isEnabled = false
        case 1:
            if images[1] == UIImage(named: "kingCard") {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    chooseACard.text = "You Won!"
                } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                        chooseACard.text = "You lost!"
            }
            card0.isEnabled = false
            card1.isEnabled = false
            card2.isEnabled = false
        case 2:
            if images[2] == UIImage(named: "kingCard") {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    chooseACard.text = "You Won!"
                } else {
            card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                            chooseACard.text = "You lost!"
                        
                }
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
        default:
            print("Invalid Entry")
        }
        for image in 0..<images.count {
            if images[image] == UIImage.init(named: "kingCard"){
                if image == 0 {
                    card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
            }
                else if image == 1 {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
        
            else if image == 2 {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            }
        }
        }
    }
    

    
    @IBAction func newGame(_ sender: UIButton) {
    
    chooseACard.text = "Choose a Card!"
    card0.isEnabled = true
    card1.isEnabled = true
    card2.isEnabled = true
    card0.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)

    }

}

