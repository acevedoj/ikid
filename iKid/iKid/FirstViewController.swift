//
//  FirstViewController.swift
//  iKid
//
//  Created by Juan Acevedo on 10/24/18.
//  Copyright © 2018 acevedoj. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var flipped: Bool = false
    var joke: String = "Why did the cookie cry?"
    var answer: String = "Because his father was \n a wafer so long!"
    
    @IBOutlet weak var goodJoke: UILabel!
    @IBOutlet var viewController: UIView!
    
    
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
            goodJoke.text = joke
        } else {
            goodJoke.text = answer
        }
        flipped = !flipped
    }
}

