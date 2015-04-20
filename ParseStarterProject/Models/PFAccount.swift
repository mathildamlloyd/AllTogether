//
//  PFAccount.swift
//  CoreLocation
//
//  Created by mattie on 4/19/15.
//  Copyright (c) 2015 AllTogether. All rights reserved.
//

import Foundation
import Parse

class PFAccount : PFUser, PFSubclassing {
    
    @NSManaged var location : PFGeoPoint
    
    override class func initialize() {
        self.registerSubclass()
    }
    
    override class func parseClassName() -> String {
        return "PFAccount"
    }

}