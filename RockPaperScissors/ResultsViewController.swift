//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    @IBOutlet weak var Ending: UILabel!
    //TODO: Set up an outlet for the label
    
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
        
        if randomOption == userSelection {
            Ending.text = "It's a tie!"
        } else if randomOption == userSelection.weakness{
            Ending.text = "You have lost!"
        } else {
            Ending.text = "You have won!"
        }
        
        //TODO: Depending on the result, show the legend "You won", "You lost", "It's a tie" in the label
        
        

    }
}
