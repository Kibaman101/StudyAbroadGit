//
//  DetailVC.swift
//  StudyAbroad
//
//  Created by Nick Schumacher on 4/3/15.
//  Copyright (c) 2015 Nick Schumacher. All rights reserved.
//

import UIKit

class DetailVC: UIViewController
{

    @IBOutlet weak var theTextView: UITextView!
    var theText = "Default Value"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theTextView.text = theText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setText(text : String) -> Void
    {
        theText = text
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
