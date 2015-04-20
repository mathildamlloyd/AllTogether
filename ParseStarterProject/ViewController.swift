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
        
//        var currUser:PFUser = PFUser.currentUser()!
//        println(currUser.username)
//        currUser.username = "bobby"
//        currUser.password = "1234"
//        currUser.email = "abc@abc.com"
//        currUser.signUpInBackgroundWithBlock { (success, error) -> Void in
//            if (success) {
//                print("Successfully saved")
//            }
//            else {
//                println("error");
//                println(error);
//            }
//        }
        
        var acc1 = PFUser();
        acc1.username = "Bob1"
        acc1.email = "test1@test.com"
        acc1.password = "1234"

        
//        acc1.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
//            if (success) {
//                print("Successfully saved")
//            }
//            else {
//                println("error");
//                println(error);
//                println(acc1)
//                println(acc1.ACL)
//            }
//        }

        acc1.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            if (success) {
                print("Successfully saved")
                var acc2 = PFUser();
                acc2.username = "Bob2"
                acc2.email = "test2@test.com"
                acc2.password = "1234"
            
                acc2.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
                    if (success) {
                        print("Successfully saved")
                        var acc3 = PFUser();
                        acc3.username = "Bob3"
                        acc3.email = "test3@test.com"
                        acc3.password = "1234"
                        
                        acc3.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
                            if (success) {
                                print("Successfully saved")
                                println("Creating group")
                                var g1 = PFGroup(className : "PFGroup");
                                g1.addMember(acc1);
                                g1.leader = acc2;
                                g1.addMember(acc3);
                                println("Saving group");
                                g1.saveInBackgroundWithBlock{ (success: Bool, error: NSError?) -> Void in
                                    if (success) {
                                        println("Successfully saved")
                                        println("Number of members in group: \(g1.members.count)")
                                        g1.removeMember(acc1)
                                        g1.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
                                            if (success) {
                                                println("Number of members in group: \(g1.members.count)")
                                            }
                                            else {
                                                println(error)
                                            }
                                        }
                                        
                                    }
                                    else {
                                        println("error");
                                        println(error);
                                    }
                                }
                            }
                            else {
                                println("error");
                                println(error);
                            }
                        }
                    }
                    else {
                        println("error");
                        println(error);
                    }
                }
            }
            else {
                println("error");
                println(error);
            }
        }
        
        

//        var acc2 = PFAccount();
//        acc2.username = "Alice"
//        var acc3 = PFAccount();
//        acc3.username = "Eve"
//        acc1.signUpInBackgroundWithBlock(nil);
//        print("saved Bob")
//        acc2.signUpInBackgroundWithBlock(nil);
//        print("saved Alice")
//        acc3.signUpInBackgroundWithBlock(nil);
//        print("saved Eve")
//        
//        
//        // Create a group
//        var g1 = PFGroup();
//        g1.radius = 20;
//        g1.leader = acc1;
//        g1.members.append(acc2)
//        g1.members.append(acc3);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

