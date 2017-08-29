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
    
    func getCurrentTime() -> String {
        
        //Create an instance of the Date class
        //Date represents a single point in time
        
        let date = Date()
        
        //Create an instance of the Date Formatter object 
        //Date formatter creates visual representations of Date()
        
        let formatter = DateFormatter()
        
        //We only want the time so it's .none for style
        formatter.dateStyle = .none
        
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
        
    }
}
