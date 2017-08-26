//
//  Model.swift
//  BackToTheFuture
//
//  Created by Jose Melendez on 8/26/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import Foundation


class Utilities {
    
    //We want to get the current year 
    func getCurrentYear() -> String {
        
        let date = Date()
        
        //Grap the current calendar of the user
        let calendar = Calendar.current
        
        //Grap the current year
        return String(calendar.component(.year, from: date))
        
    }
    
    func getLetterAtIndex(str: String, location: Int) -> String {
        
        let index = str.index(str.startIndex, offsetBy: location)
        
        //Convert the character to a String
        return String(str[index])
    }
}
