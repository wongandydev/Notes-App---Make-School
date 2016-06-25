//
//  DisplayNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {
    @IBOutlet weak var noteContentTextView: UITextField!
    @IBOutlet weak var noteContentTextField: UITextView!

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print ("Cancel button tapped")
            }
            else if identifier == "Save" {
                print ("Save buttton tapped")
                
                let note = Note()
                
                note.title = noteContentTextView.text ?? "" //Allows no Title and it will display whatever user enters as Title
                note.content = noteContentTextField.text   //Xcode is constanly telling me to add ! behind text but tutorial doesn't
                
                note.modificationTime = NSDate()// What does the NS mean? //NSDATE - Year/Month/Day
                
                let listNotesTableViewController = segue.destinationViewController as! ListNotesTableViewController //What does this do?
                
                listNotesTableViewController.notes.append(note) //dds what we write into notes?
                
            }
        }
    }

    override func viewWillAppear(animated: Bool) {//give us the opportuniy to excute some view controller specific code before the user sees the view controll. For this case it will remove "Loremm ipsum..."
        super.viewWillAppear(animated)
        
        noteContentTextField.text = ""
        noteContentTextView.text = ""
    }
}
