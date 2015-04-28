//
//  Question.swift
//  StudyAbroad
//
//  Created by Nick Schumacher on 4/27/15.
//  Copyright (c) 2015 Nick Schumacher. All rights reserved.
//

import UIKit

class Question: NSObject
{
    var question : String
    var theAnswers = [String]()
    var thePoints = [Int]()
    var theUserPoints : Int
    var maxPoints : Int
    
    init(question: String)
    {
        self.question = question
        self.theUserPoints = -1
        self.maxPoints = -1
    }
    
    func addAnswer(answer:String, points: Int)
    {
        theAnswers.append(answer)
        thePoints.append(points)
        if(points > self.maxPoints)
        {
            self.maxPoints = points
        }
    }
    
}
