//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultsViewController
        switch segue.identifier {
        case "Rock":
            vc?.userSelection = GameOption.rock
        case "Paper":
            vc?.userSelection = GameOption.paper
        case "Scissors":
            vc?.userSelection = GameOption.scissors
        default:
            break
        }
    }
    @IBAction func unwindToGame(segue:UIStoryboardSegue){
        
    }

    
    
}
