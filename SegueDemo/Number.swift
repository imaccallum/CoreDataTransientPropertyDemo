//
//  Number.swift
//  SegueDemo
//
//  Created by Ian MacCallum on 2/2/15.
//  Copyright (c) 2015 MacCDevTeam. All rights reserved.
//

import Foundation
import CoreData

class Number: NSManagedObject {

    @NSManaged var number: NSNumber
    var primitiveSection: String?
    
    dynamic var section: String? {
        willAccessValueForKey("section")
        var temp = primitiveSection
        didAccessValueForKey("section")
        
        if temp == nil {
            temp = number.intValue >= 60 ? "Pass" : "Fail"
            primitiveSection = temp
        }
        
        return temp
    }
    
    
}
