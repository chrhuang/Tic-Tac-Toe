//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Christian HUANG on 12/02/2020.
//  Copyright © 2020 Christian HUANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var case1: UIButton!
    @IBOutlet weak var case2: UIButton!
    @IBOutlet weak var case3: UIButton!
    @IBOutlet weak var case4: UIButton!
    @IBOutlet weak var case5: UIButton!
    @IBOutlet weak var case6: UIButton!
    @IBOutlet weak var case7: UIButton!
    @IBOutlet weak var case8: UIButton!
    @IBOutlet weak var case9: UIButton!
    var player: Int = 1
    var nb: Int = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        case1.setTitle("", for: .normal)
        case2.setTitle("", for: .normal)
        case3.setTitle("", for: .normal)
        case4.setTitle("", for: .normal)
        case5.setTitle("", for: .normal)
        case6.setTitle("", for: .normal)
        case7.setTitle("", for: .normal)
        case8.setTitle("", for: .normal)
        case9.setTitle("", for: .normal)
    }


    @IBAction func case1Pressed(_ sender: UIButton) {
        if (case1.currentTitle == "") {
            writeCommand(case1)
        }
    }
    
    @IBAction func case2Pressed(_ sender: UIButton) {
        if (case2.currentTitle == "") {
            writeCommand(case2)
        }
    }
    
    @IBAction func case3Pressed(_ sender: UIButton) {
        if (case3.currentTitle == "") {
            writeCommand(case3)
        }
    }
    
    @IBAction func case4Pressed(_ sender: UIButton) {
        if (case4.currentTitle == "") {
            writeCommand(case4)
        }
    }
    
    @IBAction func case5Pressed(_ sender: UIButton) {
        if (case5.currentTitle == "") {
            writeCommand(case5)
        }
    }
    
    @IBAction func case6Pressed(_ sender: UIButton) {
        if (case6.currentTitle == "") {
            writeCommand(case6)
        }
    }
    
    @IBAction func case7Pressed(_ sender: UIButton) {
        if (case7.currentTitle == "") {
            writeCommand(case7)
        }
    }
    
    @IBAction func case8Pressed(_ sender: UIButton) {
        if (case8.currentTitle == "") {
            writeCommand(case8)
        }
    }
    @IBAction func case9Pressed(_ sender: UIButton) {
        if (case9.currentTitle == "") {
                writeCommand(case9)
        }
    }
    
    func writeCommand(_ currentCase: UIButton!) {
        if (player == 1) {
            currentCase.setTitle("X", for: .normal)
        } else {
            currentCase.setTitle("O", for: .normal)
        }
        nb += 1
        if (checkVictory() == true) {
            playerLabel.text = "Player " + String(player) + " Win !"
            
            return ;
        }
        if (nb == 9) {
            playerLabel.text = "Draw !"
            return ;
        }
        changePlayer()
    }
    
    func changePlayer() {
        if (player == 1) {
            player = 2
            playerLabel.text = "Player 2"
        } else {
            player = 1
            playerLabel.text = "Player 1"
        }
    }
    
    func checkVictory() -> Bool {
        if (nb < 5) {
            return false
        }
        if (case1.currentTitle == "X" &&
            case2.currentTitle == "X" &&
            case3.currentTitle == "X") {
            return true
        } else if (case1.currentTitle == "O" &&
            case2.currentTitle == "O" &&
            case3.currentTitle == "O" ) {
            return true
        } else if (case4.currentTitle == "X" &&
            case5.currentTitle == "X" &&
            case6.currentTitle == "X") {
            return true
        } else if (case4.currentTitle == "O" &&
            case5.currentTitle == "O" &&
            case6.currentTitle == "O") {
            return true
        } else if (case7.currentTitle == "X" &&
            case8.currentTitle == "X" &&
            case9.currentTitle == "X") {
            return true
        } else if (case7.currentTitle == "O" &&
            case8.currentTitle == "O" &&
            case9.currentTitle == "O") {
            return true
        } else if (case1.currentTitle == "X" &&
            case4.currentTitle == "X" &&
            case7.currentTitle == "X") {
            return true
        } else if (case1.currentTitle == "O" &&
            case4.currentTitle == "O" &&
            case7.currentTitle == "O") {
            return true
        } else if (case2.currentTitle == "X" &&
            case5.currentTitle == "X" &&
            case8.currentTitle == "X") {
            return true
        } else if (case2.currentTitle == "O" &&
            case5.currentTitle == "O" &&
            case8.currentTitle == "O") {
            return true
        } else if (case3.currentTitle == "X" &&
            case6.currentTitle == "X" &&
            case9.currentTitle == "X") {
            return true
        } else if (case3.currentTitle == "O" &&
            case6.currentTitle == "O" &&
            case9.currentTitle == "O") {
            return true
        } else if (case1.currentTitle == "X" &&
            case5.currentTitle == "X" &&
            case9.currentTitle == "X") {
            return true
        } else if (case1.currentTitle == "O" &&
            case5.currentTitle == "O" &&
            case9.currentTitle == "O") {
            return true
        } else if (case3.currentTitle == "X" &&
            case5.currentTitle == "X" &&
            case7.currentTitle == "X") {
            return true
        } else if (case3.currentTitle == "O" &&
            case5.currentTitle == "O" &&
            case7.currentTitle == "O") {
            return true
        }
        return false
    }
}
