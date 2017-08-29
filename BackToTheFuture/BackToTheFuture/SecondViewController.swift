//
//  SecondViewController.swift
//  BackToTheFuture
//
//  Created by Jose Melendez on 8/26/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labe1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func ButtonClicked(_ sender: Any) {
        let utils = Utilities()
        
        let year = utils.getRandomYear()
        
        labe1.text = utils.getLetterAtIndex(str: year, location: 0)
        
        lab2.text = utils.getLetterAtIndex(str: year, location: 1)
        
        lab3.text = utils.getLetterAtIndex(str: year, location: 2)
        
        lab4.text = utils.getLetterAtIndex(str: year, location: 3)
    }
}
