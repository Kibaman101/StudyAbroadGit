//
//  ListTVC.swift
//  StudyAbroad
//
//  Created by Nick Schumacher on 4/3/15.
//  Copyright (c) 2015 Nick Schumacher. All rights reserved.
//

import UIKit

class ListTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }
*/
    /*
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
*/
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        var theText = (sender as! UITableViewCell).textLabel?.text
        if(theText! == "MIB 570")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/programs/tripdescriptions/flyer_austria.pdf")
        }
        else if(theText! == "Shoes")
        {
            (segue.destinationViewController as! DetailVC).setText("We are talking about shoes here")
        }
        else if(theText! == "Featured Program")
        {
            (segue.destinationViewController as! DetailVC).setText("Concordia Semester in Italy and Germany \nDates: January 2 - April 19, 2016 \nStudy Locations: Rome, Italy & Wittenberg, Germany \nCosts: $13,975 - Housing, full credit load, and excursions \nBonus: Includes Spring Break service trip in Hungary \nApply by May 1st, 2015 to be eligible for a $500 scholarship!  \nApply Here: https://cuwstudyabroad.formstack.com/forms/application")
        }
        else if(theText! == "ENS 201 Wind Ensemble")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/programs/tripdescriptions/Ens%20201-%20Scotland%20Ireland.pdf")
        }
        else if(theText! == "Financial Aid Study Abroad Worksheet")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/_assets/FinancialAidStudyAbroadWorksheet.pdf")
        }
        else if(theText! == "PHIL 425 Adv. Christian Apologetics")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/programs/tripdescriptions/flyer_france.pdf")
        }
        else if(theText! == "Study Abroad Internships")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/programs/internship.html")
        }

        
        else if(theText! == "More info about API")
        {
            (segue.destinationViewController as! DetailVC).setText("http://www.apistudyabroad.com/program-finder/")
        }
        else if(theText! == "More info about ISA")
        {
            (segue.destinationViewController as! DetailVC).setText("http://studiesabroad.com/programs/document/InternshipsandServiceLearning")
        }
        else if(theText! == "Gilman Scholarship Program")
        {
            (segue.destinationViewController as! DetailVC).setText("http://www.iie.org/Programs/Gilman-Scholarship-Program")
        }
        else if(theText! == "Concordia Photography Scholarship")
        {
            (segue.destinationViewController as! DetailVC).setText("Application Deadline: March 15th\n\nAmount: $500 (1 award per year)\n\nAn award of $500 will be granted to one student who demonstrates exemplary photojournalistic skills. Preference will be given to students pursuing major or minor studies in photography at Concordia. Applications will be accepted until March 15th each year for abroad programs that begin within the subsequent academic year. Students will be expected to submit images and film footage to the Office of Study Abroad upon their return. A committee, comprised of Study Abroad staff and School of Arts and Sciences faculty will select the awardees each year based on their application, portfolio, and study abroad destination.\n\nTO APPLY: Submit a portfolio of images, as well as a CV on a flashdrive to the Study Abroad office in Katharine 115 before March 15th.\n\n\n")
        }

        else if(theText! == "NSEP David L. Boren Scholarship")
        {
            (segue.destinationViewController as! DetailVC).setText("http://www.borenawards.org")
        }
        else if(theText! == "CU Study Abroad Grant")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/funding/grant.html")
        }
        else if(theText! == "The Global Studies Grant")
        {
            (segue.destinationViewController as! DetailVC).setText("http://www.globalstudiesfoundation.org/ShowContents.cfm?CategoryID=4")
        }
        
        else if(theText! == "Medical and Emergency Contact Form")
        {
            (segue.destinationViewController as! DetailVC).setText("https://cuwstudyabroad.formstack.com/forms/medicaldisclosure")
        }
        else if(theText! == "Study Abroad Application")
        {
            (segue.destinationViewController as! DetailVC).setText("https://cuwstudyabroad.formstack.com/forms/application")
        }
        else if(theText! == "Risk, Release and Participation Form")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/_assets/AssumptionofRiskReleaseandParticipationAgreement.pdf")
        }

        else if(theText! == "Medical and Emergency Contact Form")
        {
            (segue.destinationViewController as! DetailVC).setText("https://cuwstudyabroad.formstack.com/forms/medicaldisclosure")
        }
        else if(theText! == "Study Abroad Application")
        {
            (segue.destinationViewController as! DetailVC).setText("https://cuwstudyabroad.formstack.com/forms/application")
        }
        else if(theText! == "Risk, Release and Participation Form")
        {
            (segue.destinationViewController as! DetailVC).setText("https://www.cuw.edu/Departments/studyabroad/_assets/AssumptionofRiskReleaseandParticipationAgreement.pdf")
        }
        
        else if(theText! == "Answer 1")
        {
            (segue.destinationViewController as! DetailVC).setText("You got it right!!!")
        }
        else if(theText! == "Answer 2")
        {
            (segue.destinationViewController as! DetailVC).setText("You got it wrong :(")
        }
        else if(theText! == "Answer 3")
        {
            (segue.destinationViewController as! DetailVC).setText("You got it wrong :(")
        }

    }
    

}
