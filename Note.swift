//
//  Note.swift
//  blocnotes
//
//  Created by Cynthia Whitlatch on 6/25/15.
//  Copyright (c) 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit

//GLOBAL variables to manage the data - class variables, as of this writing, not supported in SWIFT

var allNotes:[Note] = []

//creating an array that represents all the notes created

var currentNoteIndex:Int = -1

//This refers to the current index in the note array.  So once you select a note to edit the current note index is going to save the note you are editing.

var noteTable:UITableView?

//References the table of notes.  No way to instantiate the note table inside of this class because there's no access until the app launches and the view loads.  Use a ! or a ? if you can't instantiate it and need to declare it as optional



class Note: NSObject {
    var date:String
    var note:String
    
    //For variables that you can't initialize right away you need to declare that they can be optional using ! or ?.
    
    // () = constructor    Gives a date based on the current time.  Need to be able to convert it to a string rather than an NSDate.   Use DESCRIPTION property to do this.
    
    //  When you use the init methon in your sub-classing and other class you need to override the init method.
    
    override init() {
        date = NSDate().description
        note = ""
    }
}
