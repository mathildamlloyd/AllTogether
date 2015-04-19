//
//  PFGroup.swift
//  CoreLocation
//
//  Created by mattie on 4/19/15.
//  Copyright (c) 2015 AllTogether. All rights reserved.
//

import Foundation
import Parse

class PFGroup : PFObject, PFSubclassing {
    
    @NSManaged var radius : Double;
    @NSManaged var members : [PFAccount];
    @NSManaged var leader : PFAccount;
    
    override class func initialize() {
        self.registerSubclass()
    }
    
    class func parseClassName() -> String! {
        return "PFGroup";
    }
    
    
}