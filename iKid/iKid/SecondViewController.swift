//
//  SecondViewController.swift
//  iKid
//
//  Created by Juan Acevedo on 10/24/18.
//  Copyright © 2018 acevedoj. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var flipped: Bool = false;
    var joke2: String = "Here's a joke about nil"
    var answer2: String = " "

    @IBOutlet weak var jokeLabel2: UILabel!
    @IBOutlet var secondViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func flipJoke(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        UIView.commitAnimations()
        if (flipped) {
            jokeLabel2.text = joke2
        } else {
            jokeLabel2.text = answer2
        }
        flipped = !flipped
    }
}
