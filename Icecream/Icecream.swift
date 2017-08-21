//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream:[String:String] = ["Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"]

    
    
    
    
    // 2.
    
    func names(forFlavor flavor:String) -> [String]{
        var out:[String] = []
        for (nam,flav) in favoriteFlavorsOfIceCream{
            if flav == flavor{
                out.append(nam)
            }
        }
        return out
    }
    
    
    
    
    // 3.
    func count(forFlavor flavor:String) -> Int {
        var count = 0
        for (_,flav) in favoriteFlavorsOfIceCream{
            if flav == flavor{
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person:String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor:String, forPerson:String )-> Bool{
        if (favoriteFlavorsOfIceCream[forPerson] == nil){
            return false
        }else{
            let result = favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return (result != nil)
        }
    }
    
    
    
    
    
    // 6.
    
    
    func remove(person:String) -> Bool{
        /*if let person = favoriteFlavorsOfIceCream[person]{
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }else{
            return false
        }*/
        if (favoriteFlavorsOfIceCream[person] == nil){
            return false
        }else{
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }
    }
    
    
    
    
    
    // 7.
    func numberOfAttendees()-> Int{
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    
    func add(person:String, withFlavor:String) -> Bool {
        if let person = favoriteFlavorsOfIceCream[person]{
            return false
        }else {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sentence :String = ""
        var cream :String = ""
        for name in allNames{
            if let ice = favoriteFlavorsOfIceCream[name]{
                cream = ice
            }
            sentence.append("\(name) likes \(cream)\n")
        }
        return sentence
    }
    
    
    
    
    
    

}
