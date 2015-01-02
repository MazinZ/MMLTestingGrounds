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
    @IBOutlet weak var botLeftButton: UIButton!
    @IBOutlet weak var rightSumLabel: UILabel!
    @IBOutlet weak var leftSumLabel: UILabel!
    @IBOutlet weak var botSumLabel: UILabel!
    @IBOutlet weak var contButton: UIButton!
    
    var topButtonNum: Int = 1
    var midRightButtonNum: Int = 1
    var midLeftButtonNum: Int = 1
    var botRightButtonNum: Int = 1
    var botMidButtonNum: Int = 1
    var botLeftButtonNum: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeDefButtons()
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
        calculateSum()
    }
    
    @IBAction func midLeftClick() {
        midLeftButtonNum++
        if(midLeftButtonNum == 7){
            midLeftButton.setTitle("1", forState: UIControlState.Normal)
            midLeftButtonNum = 1
        } else {
            midLeftButton.setTitle(String(midLeftButtonNum), forState: UIControlState.Normal)
        }
        calculateSum()
    }
    
    @IBAction func midRightClick() {
        midRightButtonNum++
        if(midRightButtonNum == 7){
            midRightButton.setTitle("1", forState: UIControlState.Normal)
            midRightButtonNum = 1
        } else {
            midRightButton.setTitle(String(midRightButtonNum), forState: UIControlState.Normal)
        }
        calculateSum()
    }
    
    @IBAction func botLeftClick() {
        botLeftButtonNum++
        if(botLeftButtonNum == 7){
            botLeftButton.setTitle("1", forState: UIControlState.Normal)
            botLeftButtonNum = 1
        } else {
            botLeftButton.setTitle(String(botLeftButtonNum), forState: UIControlState.Normal)
        }
        calculateSum()
    }
    
    @IBAction func botMidClick() {
        botMidButtonNum++
        if(botMidButtonNum == 7){
            botMidButton.setTitle("1", forState: UIControlState.Normal)
            botMidButtonNum = 1
        } else {
            botMidButton.setTitle(String(botMidButtonNum), forState: UIControlState.Normal)
        }
        calculateSum()
    }
    
    @IBAction func botRightClick() {
        botRightButtonNum++
        if(botRightButtonNum == 7){
            botRightButton.setTitle("1", forState: UIControlState.Normal)
            botRightButtonNum = 1
        } else {
            botRightButton.setTitle(String(botRightButtonNum), forState: UIControlState.Normal)
        }
        calculateSum()
    }
    
    func initializeDefButtons () -> Void {
        topButton.setTitle("1", forState: UIControlState.Normal)
        midRightButton.setTitle("1", forState: UIControlState.Normal)
        midLeftButton.setTitle("1", forState: UIControlState.Normal)
        botMidButton.setTitle("1", forState: UIControlState.Normal)
        botLeftButton.setTitle("1", forState: UIControlState.Normal)
        botRightButton.setTitle("1", forState: UIControlState.Normal)
        calculateSum()
        contButton.hidden = true
    }
    
    func calculateSum () -> Void{
        var winner = true
        var leftSumN: Int?
        var rightSumN: Int?
        var botSumN: Int?
        
        rightSumN = topButtonNum + midRightButtonNum + botRightButtonNum
        botSumN = botRightButtonNum + botMidButtonNum + botLeftButtonNum
        leftSumN = topButtonNum + midLeftButtonNum + botLeftButtonNum
        
        rightSumLabel.text = "\(rightSumN!)"
        botSumLabel.text = "\(botSumN!)"
        leftSumLabel.text = "\(leftSumN!)"
        
        if(rightSumN == 10 && botSumN == 10 && leftSumN == 10){
            var numberArray: [Int] = [ topButtonNum, midLeftButtonNum, midRightButtonNum, botLeftButtonNum, botMidButtonNum, botRightButtonNum]
            
            for var i = 0 ; i<numberArray.count ; i++ {
                for var j = 0 ; j<numberArray.count ; j++ {
                    if(numberArray[i] == numberArray[j]){
                        if(i != j){
                            winner = false
                        }
                    }
                }
            }
            if(winner){
                contButton.hidden = false
                println("Winner")
            }
        }
    }
    
}

class SquareViewController: UIViewController {
    
    @IBOutlet weak var topLeftBut: UIButton!
    
    @IBOutlet weak var topBut: UIButton!
    
    @IBOutlet weak var topRightBut: UIButton!
    
    
    
    @IBOutlet weak var botLeftBut: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
