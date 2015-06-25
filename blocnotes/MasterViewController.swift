//
//  ViewController.swift
//  blocnotes
//
//  Created by Cynthia Whitlatch on 6/25/15.
//  Copyright (c) 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        noteTable = self.UITableView
        
        //Make a new note.   In Swift you don't have to call any import methods to import classes that are contained within the project.
        
//        var n:Note = Note()
//        println("note date is \(n.date)")   // date is the variable from Note.swift
//          Commented out because it was used as an example.   
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

