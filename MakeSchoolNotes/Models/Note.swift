//
//  Note.swift
//  MakeSchoolNotes
//
//  Created by Andy Wong on 6/24/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import RealmSwift

class Note: Object {
    dynamic var title = ""
    dynamic var content = ""
    dynamic var modificationTime = NSDate() //What does NSDate do? What does NS mean? NSDate shows Year/Month/Day
}

