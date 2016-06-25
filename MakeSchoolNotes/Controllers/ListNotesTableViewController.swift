//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    var notes = [Note](){ //Array called notes initialized with Note(from note.swift) in the array //every time a user enters or deletes a note, the array will correspond
    
        didSet {
            tableView.reloadData() //Tels the table view controller to update it's cells to show that there is a new note recently saved 
        }
    }
    
    @IBAction func unWindToListNotesViewController(segue: UIStoryboardSegue){
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //tells table view how many cells it should display
        //return 10
        return notes.count //only shows the  total # of note in note.swift
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{ //tells Table View what cells to display

        let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath) as! ListNotesTableViewCell
        
        let row = indexPath.row //lets row equal to the indexPath's row
        
        let note = notes[row] //lets note = to notes(note.swift)'s row
        
        cell.notesTitleLabel.text = note.title // changes Title Label to what the note's title is
        
        cell.notesModificationTimeLabel.text = note.modificationTime.convertToString() //canges te modification time to what is shown in notes(note.swift)
        
        return cell
//
//        cell.notesTitleLabel.text = "note's title"
//        cell.notesModificationTimeLabel.text = "note's modification time"
//        
//        return cell
//        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath)
//        //Displays the actual cells in in the table view // DequeueReuseableCelWithDentifier pretty much recycles old cells to use it. If there isn't any, then it will create it's own
//        
//        cell.textLabel?.text = "Yay = it's working!"
//        
//        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {//storing the identifier of the segue taht was triggered into a loval variable called "Odentifier" //What is identifier?
        if identifier == "displayNote" {//Checking to see if the "displayNote" sqgue was triggered
            print ("Table view cell tapped") //prints the message in parenthesis
                }
        else if identifier == "addNote" { //if add button also know as addNote is tapped, do what is inside if statement
            print ("+ button tapped")
            }
        }
    }

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
}