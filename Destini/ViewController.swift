//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var destiniStories = DestiniStory()
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        startDestini()
    }
    
    func startDestini() {
        storyIndex = 0
        storyTextView.text = destiniStories.stories[0].story
        topButton.setTitle(destiniStories.stories[0].answerA, for: .normal)
        bottomButton.setTitle(destiniStories.stories[0].answerB, for: .normal)
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if storyIndex == 0 , sender.tag == 1 {
            storyIndex = 2
            storyTextView.text = destiniStories.stories[storyIndex].story
            topButton.setTitle(destiniStories.stories[storyIndex].answerA, for: .normal)
            bottomButton.setTitle(destiniStories.stories[storyIndex].answerB, for: .normal)
        } else if storyIndex == 0 , sender.tag == 2 {
            storyIndex = 1
            storyTextView.text = destiniStories.stories[storyIndex].story
            topButton.setTitle(destiniStories.stories[storyIndex].answerA, for: .normal)
            bottomButton.setTitle(destiniStories.stories[storyIndex].answerB, for: .normal)
        } else if storyIndex == 2 , sender.tag == 1 {
            storyTextView.text = destiniStories.stories[5].story
            storyIndex = 3
        } else if storyIndex == 2 , sender.tag == 2 {
            storyTextView.text = destiniStories.stories[4].story
            storyIndex = 3
        } else if storyIndex == 1 , sender.tag == 1 {
            storyIndex = 2
            storyTextView.text = destiniStories.stories[storyIndex].story
            topButton.setTitle(destiniStories.stories[storyIndex].answerA, for: .normal)
            bottomButton.setTitle(destiniStories.stories[storyIndex].answerB, for: .normal)
        } else if storyIndex == 1 , sender.tag == 2 {
            storyTextView.text = destiniStories.stories[3].story
            storyIndex = 3
        }
        
        if storyIndex == 3 || storyIndex == 4 {
            topButton.isHidden = true
            bottomButton.isHidden = true
            resetButton.isHidden = false
        }
    }
    
    @IBAction func backToStory(_ sender: UIButton) {
        startDestini()
        resetButton.isHidden = true
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
}

