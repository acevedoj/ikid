//
//  ThirdViewController.swift
//  iKid
//
//  Created by Juan Acevedo on 10/24/18.
//  Copyright © 2018 acevedoj. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var flipped = false
    var joke: String = "Where do robots go for fun?"
    var answer: String = "The circuits"

    @IBOutlet weak var jokeLabel3: UILabel!
    @IBOutlet var thirdViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func flipJoke(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        UIView.commitAnimations()
        if (flipped) {
            jokeLabel3.text = joke
        } else {
            jokeLabel3.text = answer
        }
        flipped = !flipped
    }
}
