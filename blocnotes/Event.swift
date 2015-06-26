//
//  Event.swift
//  blocnotes
//
//  Created by Cynthia Whitlatch on 6/25/15.
//  Copyright (c) 2015 Cynthia Whitlatch. All rights reserved.
//

import Foundation
import CoreData

class Event: NSManagedObject {

    @NSManaged var timeStamp: NSDate
    @NSManaged var newNote: String

}
