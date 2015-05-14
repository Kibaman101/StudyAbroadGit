//
//  LookingForUniversityTVC.swift
//  StudyAbroad
//
//  Created by Nick Schumacher on 4/27/15.
//  Copyright (c) 2015 Nick Schumacher. All rights reserved.
//

import UIKit

class LookingForUniversityTVC: UITableViewController
{
    @IBOutlet var theQuestionsTV: UITableView!
    override func viewDidAppear(animated: Bool)
    {
        //did they answer all of the questions?
        var count = 0
        var totalPoints = 0
        var maxPoints = 0
        for(var i = 0; i < QuestionBank.theQuestions.count; i++)
        {
            if(QuestionBank.theQuestions[i].theUserPoints != -1)
            {
                count++
                totalPoints += QuestionBank.theQuestions[i].theUserPoints
                maxPoints += QuestionBank.theQuestions[i].maxPoints
            }
        }
        if(count == QuestionBank.theQuestions.count)
        {
            var percentage = (Double(totalPoints)/Double(maxPoints))*100
            var av = UIAlertView(title: "Survey Complete", message: "Your Score: \(percentage)%", delegate: nil, cancelButtonTitle: "OK")
            av.show()
        }
    }
    
    override func viewDidLoad()
    {
        QuestionBank.theQuestionsTV = self.theQuestionsTV
        QuestionBank.theQuestions.removeAll(keepCapacity: false)
        var q1 = Question(question: "What countries can a student travel to?")
        q1.addAnswer("Italy", points: 1)
        q1.addAnswer("Spain", points: 1)
        q1.addAnswer("Germany", points: 1)
        q1.addAnswer("All of the Above", points: 2)
        
        var q2 = Question(question: "How long are the study abroad travels?")
        q2.addAnswer("One year", points: 1)
        q2.addAnswer("One semester", points: 1)
        q2.addAnswer("Three weeks", points: 1)
        q2.addAnswer("All of the above", points: 2)
        var q5 = Question(question: "Whose tuition do you pay while SA?")
        q5.addAnswer("Concordia's", points: 2)
        q5.addAnswer("Visiting Schoo's", points: 1)
        q5.addAnswer("Standard Fee", points: 1)
        q5.addAnswer("None of the Above", points: 1)
        var q7 = Question(question: "Who is the head of the CUW SA program?")
        q7.addAnswer("Dr. Locklair", points: 1)
        q7.addAnswer("Chuck Norris", points: 1)
        q7.addAnswer("Professor Tuffey", points: 2)
        q7.addAnswer("President Ferry", points: 1)
        var q8 = Question(question: "Which method cannot help you pay for SA?")
        q8.addAnswer("Music Scholarship", points: 2)
        q8.addAnswer("Financial Aid", points: 1)
        var q9 = Question(question: "Concordia offers study abroad internships.")
        q9.addAnswer("True", points: 2)
        q9.addAnswer("False", points: 1)

        QuestionBank.theQuestions.append(q1)
        QuestionBank.theQuestions.append(q2)
        QuestionBank.theQuestions.append(q5)
        QuestionBank.theQuestions.append(q7)
        QuestionBank.theQuestions.append(q8)
        QuestionBank.theQuestions.append(q9)


        
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return QuestionBank.theQuestions.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        cell.textLabel!.text = QuestionBank.theQuestions[indexPath.row].question
        if(QuestionBank.theQuestions[indexPath.row].theUserPoints == -1)
        {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if(QuestionBank.theQuestions[indexPath.row].theUserPoints == -1)
        {
            var answerTVC = storyboard?.instantiateViewControllerWithIdentifier("LookingForUniversityAnswersTVC") as! LookingForUniversityAnswersTVC
            answerTVC.whichRow(indexPath.row)
            self.navigationController?.pushViewController(answerTVC, animated: true)
        }
        else
        {
            var av = UIAlertView(title: "Alert", message: "Question Already Answered", delegate: nil, cancelButtonTitle: "OK");
            av.show()
        }
    }

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
