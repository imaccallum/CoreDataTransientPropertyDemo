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
        return number.intValue >= 60 ? "Pass" : "Fail"

    }
}
