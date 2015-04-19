//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var test1 = PFObject(className: "dummy");
        test1["attr1"] = 1;
        test1.saveInBackgroundWithBlock(nil);
        print("saved test object")
        
        
        
        var acc1 = PFAccount();
        acc1.username = "Bob"
        var acc2 = PFAccount();
        acc2.username = "Alice"
        var acc3 = PFAccount();
        acc3.username = "Eve"
        acc1.signUpInBackgroundWithBlock(nil);
        print("saved Bob")
        acc2.signUpInBackgroundWithBlock(nil);
        print("saved Alice")
        acc3.signUpInBackgroundWithBlock(nil);
        print("saved Eve")
        
        
        // Create a group
        var g1 = PFGroup();
        g1.radius = 20;
        g1.leader = acc1;
        g1.members.append(acc2)
        g1.members.append(acc3);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

