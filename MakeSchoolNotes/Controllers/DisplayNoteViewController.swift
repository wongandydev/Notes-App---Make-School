//
//  DisplayNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit
import RealmSwift

class DisplayNoteViewController: UIViewController {

    @IBOutlet weak var noteContentTextView: UITextField!
    @IBOutlet weak var noteTitleTextField: UITextView!

    var note: Note?
    
    override func viewWillAppear(animated: Bool) {//give us the opportuniy to excute some view controller specific code before the user sees the view controll. For this case it will remove "Loremm ipsum..."
        super.viewWillAppear(animated)
        
        if let note = note {
            noteTitleTextField.text = note.title //if there is something in note, Title will be presented inthe Note
            noteContentTextView.text = note.content //if there is something in note, the text content will bre revealed
        }
        else {
        noteTitleTextField.text = ""
        noteContentTextView.text = ""
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { //Used to tell the app to save the information so when you click back on the cell, the notes will re-appear
        let listNotesTableViewController = segue.destinationViewController as! ListNotesTableViewController
        if segue.identifier == "Save" { //Used to save current notes .
            if let note = note{
                let newNote = Note()
                newNote.title = noteTitleTextField.text ?? ""
                newNote.content = noteContentTextView.text ?? ""
                    
                RealmHelper.updateNote(note, newNote: newNote)
                
            }
            else{ //creates new note if "Save" isn't pressed
                let note = Note()
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text ?? ""
                note.modificationTime = NSDate()
                
                RealmHelper.addNote(note)
            }
            listNotesTableViewController.notes = RealmHelper.retrieveNotes()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



