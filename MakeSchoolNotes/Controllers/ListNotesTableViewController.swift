//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //tells table view how many cells it should display
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{ //tells Table View what cells to display

        let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath) as! ListNotesTableViewCell
        
        cell.notesTitleLabel.text = "note's title"
        cell.notesModificationTimeLabel.text = "note's modification time"
        
        return cell
        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath)
//        //Displays the actual cells in in the table view // DequeueReuseableCelWithDentifier pretty much recycles old cells to use it. If there isn't any, then it will create it's own
//        
//        cell.textLabel?.text = "Yay = it's working!"
//        
//        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {//storing the identifier of the segue taht was triggered into a loval variable called "Odentifier" //What is identifier?
        if identifier == "displayNote" {//Checking to see ifthe "displayNote" sqgue was triggered
            print ("Transitioning to the Display Note View Controller") //prints the message in parenthesis
                }
        }
    }

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
}