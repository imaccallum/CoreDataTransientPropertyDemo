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
    
    dynamic var section: String? {
        println("SECTION")
        switch number.intValue {
        case 0..<60: return "F"
        case 60..<70: return "D"
        case 70..<80: return "C"
        case 80..<90: return "B"
        case 90..<100: return "A"
        default: return "N/A"
        }
    }
}
