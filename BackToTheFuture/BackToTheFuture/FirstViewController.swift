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
    
    var timer = Timer()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create an instance of Utilities
        
        let year = Utilities().getCurrentYear()
        
        label1.text = Utilities().getLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().getLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().getLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().getLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil , repeats: true)
        
        Tick()
        
    }
    
 
    
    func Tick(){
        
        //Set time label
        timeLabel.text = Utilities().getCurrentTime()
        
        //Animation for background color
       UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: { 
        self.view.alpha = 0.5
        
       }) { (true) in
        
        self.view.alpha = 1
        
        }
        
    }

}

