//
//  ViewController.swift
//  BackToTheFuture
//
//  Created by Jose Melendez on 8/26/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //IB-Outlets
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create an instance of Utilities
        
        let year = Utilities().getCurrentYear()
        
        label1.text = Utilities().getLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().getLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().getLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().getLetterAtIndex(str: year, location: 3)

        
        
    }

}

