//
//  Note.swift
//  blocnotes
//
//  Created by Cynthia Whitlatch on 6/25/15.
//  Copyright (c) 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit

var allNotes:[Note] = []    //Global Variable --> An array of notes representing notes we are creating.               
                            //Initialized to an empty array.
var currentNoteIndex:Int = -1       //Refers tot he current index in the note array.  Once we select
                                    //a note to edit, the current note index is going to save it
var noteTable:UITableView?  //References the table of notes.  Unable to instantiate this because we
                            //don't have access to the TableView until the application launches.  For
                            //this reason you declare the noteTable as optional.

//********** ? and !   ---- means the variable could possibly be null.  If you use the ? if the value is nil then nothing afterward will run.  If you use the ! and the value is NOT nill then you will get an error in the application.  

let kallNotes:String = "notes"


class Note: NSObject {
   
    var date:String
    var note:String
    
    override init() {
        
        //   Remember you need to override the init method and make sure that if your properties are not instantiated upon declaration that you instantiate them withint the init method!
        
        date = NSDate().description
        
        //  gives us a date basted on the current time.  We need to be able to convert it to a string so we use description property to do that!
        
        note = ""
    }
    
    func dictionary() -> NSDictionary {
        return ["note":note, "date":date]    //shorthand dictionary...key:value, key:value
    }
    
    //Below is the whole conversion process for converting notes into dictionaries and saving the array of dictionaries to persistent storage

    class func saveNotes() {
        
        var aDictionaries:[NSDictionary] = []   //an array of instantiated dictionaries.
        for var i:Int = 0; i < allNotes.count; i++ {
            //var i is going to be an int, initialized as 0, AS LONG AS i is less than allNotes.count and i++
            aDictionaries.append(allNotes[i].dictionary())
        }
        NSUserDefaults.standardUserDefaults().setObject(aDictionaries, forKey:kAllNotes)
    
}

    class func loadNotes() {
        var defaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var savedData:[NSDictionary]? = defaults.objectForKey(kallNotes) as? [NSDictionary]
        savedData?.count
        
    }
    
    
}
