//
//  ViewController.swift
//  Ants
//
//  Created by Matthew Gross on 1/1/15.
//  Copyright (c) 2015 MTM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var midRightButton: UIButton!
    @IBOutlet weak var midLeftButton: UIButton!
    @IBOutlet weak var botRightButton: UIButton!
    @IBOutlet weak var botMidButton: UIButton!
    @IBOutlet weak var botLeftbutton: UIButton!
    
    var topButtonNum: Int = 1
    var midRightButtonNum: Int = 1
    var midLeftButtonNum: Int = 1
    var botRightButtonNum: Int = 1
    var botMidButtonNum: Int = 1
    var botLeftButtonNum: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topButton.setTitle("1", forState: UIControlState.Normal)
        midRightButton.setTitle("1", forState: UIControlState.Normal)
        midLeftButton.setTitle("1", forState: UIControlState.Normal)
        botMidButton.setTitle("1", forState: UIControlState.Normal)
        botLeftbutton.setTitle("1", forState: UIControlState.Normal)
        botRightButton.setTitle("1", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func topClick() {
        topButtonNum++
        if(topButtonNum == 7){
            topButton.setTitle("1", forState: UIControlState.Normal)
            topButtonNum = 1
        } else {
            topButton.setTitle(String(topButtonNum), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func midLeftClick() {
        midLeftButtonNum++
        if(midLeftButtonNum == 7){
            midLeftButton.setTitle("1", forState: UIControlState.Normal)
            midLeftButtonNum = 1
        } else {
            midLeftButton.setTitle(String(midLeftButtonNum), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func midRightClick() {
        midRightButtonNum++
        if(midRightButtonNum == 7){
            midRightButton.setTitle("1", forState: UIControlState.Normal)
            midRightButtonNum = 1
        } else {
            midRightButton.setTitle(String(midRightButtonNum), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func botLeftClick() {
        botLeftButtonNum++
        if(botLeftButtonNum == 7){
            botLeftbutton.setTitle("1", forState: UIControlState.Normal)
            botLeftButtonNum = 1
        } else {
            botLeftbutton.setTitle(String(botLeftButtonNum), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func botMidClick() {
        botMidButtonNum++
        if(botMidButtonNum == 7){
            botMidButton.setTitle("1", forState: UIControlState.Normal)
            botMidButtonNum = 1
        } else {
            botMidButton.setTitle(String(botMidButtonNum), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func botRightClick() {
        botRightButtonNum++
        if(botRightButtonNum == 7){
            botRightButton.setTitle("1", forState: UIControlState.Normal)
            botRightButtonNum = 1
        } else {
            botRightButton.setTitle(String(botRightButtonNum), forState: UIControlState.Normal)
        }
    }
    
}

