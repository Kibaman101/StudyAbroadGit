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
        var q1 = Question(question: "How Old Are You?")
        q1.addAnswer("< 15", points: 5)
        q1.addAnswer("15 - 25", points: 10)
        q1.addAnswer("> 25", points: 3)
        var q2 = Question(question: "Lunch?")
        q2.addAnswer("Yes", points: 2)
        q2.addAnswer("No", points: 1)
        var q3 = Question(question: "Breakfast?")
        q3.addAnswer("Yes", points: 2)
        q3.addAnswer("No", points: 1)
        var q4 = Question(question: "Dinner?")
        q4.addAnswer("Yes", points: 2)
        q4.addAnswer("No", points: 1)
        QuestionBank.theQuestions.append(q1)
        QuestionBank.theQuestions.append(q2)
        QuestionBank.theQuestions.append(q3)
        QuestionBank.theQuestions.append(q4)

        
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
