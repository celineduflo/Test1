//
//  ViewController.swift
//  Test1
//
//  Created by Céline Duflo on 21/06/2019.
//  Copyright © 2019 Céline Duflo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var stepState: UIStepper!
    @IBOutlet weak var segmentState: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func switchh(_ sender: UISwitch) {
        animateActivity()
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        animateProgress()
    }
    @IBAction func segment(_ sender: UISegmentedControl) {
        changeColor()
    }
    
    func animateActivity() {
        if switchState.isOn {
           activity.startAnimating()
        } else {
           activity.stopAnimating()
        }
    }
    
    func animateProgress() {
        if switchState.isOn {
            progress.progress = Float(stepState.value)/10
        } else {
            activity.stopAnimating()
        }
    }
    
    func changeColor() {
        
    }
    
    
}

