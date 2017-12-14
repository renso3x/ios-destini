//
//  Story.swift
//  Destini
//
//  Created by Romeo Enso on 14/12/2017.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    var story: String
    var answerA: String?
    var answerB: String?
    
    init(questionText: String, answerA: String?, answerB: String?) {
        story = questionText
        self.answerA = answerA
        self.answerB = answerB
    }
    
}
