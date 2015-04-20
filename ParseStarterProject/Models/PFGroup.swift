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
    
    @NSManaged var name : String
    @NSManaged var radius : Double
    @NSManaged var leader : PFUser
    @NSManaged var members : [PFUser]
    
    override class func initialize() {
        self.registerSubclass()
    }
    
    class func parseClassName() -> String {
        return "PFGroup"
    }
    
    // add member to the group
    func addMember(member: PFUser) {
        if self["members"] == nil {
            self["members"] = []
        }
        members.append(member)
    }
    
    // remove member from the group
    func removeMember(member: PFUser) {
        if self["members"] == nil {
            self["members"] = []
        }
        if let index = find(self.members, member) {
            self.members.removeAtIndex(index)
        }
    }
    
    
}