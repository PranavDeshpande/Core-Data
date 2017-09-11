//
//  ViewController.swift
//  CData
//
//  Created by Pranav Shashikant Deshpande on 8/23/17.
//  Copyright © 2017 Pranav Shashikant Deshpande. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [Array<Any>]()
    override func viewDidLoad() {
        super.viewDidLoad()
        createData()
        fetchData()
    
    }
    
    func createData() {
        // context is a request fr persistant container which has managed objects
       let user = User(context: context)
        
        user.name = "Hi"
        user.age = 20
        
        let user1 = User(context: context)
        user1.name = "Hello"
        user1.age = 10
        appDelegate.saveContext()
    }
    
    func fetchData() {
        
        do {
            // we are saving the fetched info in a var called data with user.fetchrequest.. user bcoz user is the entity
        try data = [context.fetch(User.fetchRequest())]
            for each in data {
                print(each)
            }
        }
        catch {
            print (error)
        }
    }


}

