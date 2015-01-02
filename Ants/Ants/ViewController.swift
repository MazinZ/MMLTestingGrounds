//
//  ViewController.swift
//  Ants
//
//  Created by Matthew Gross on 1/1/15.
//  Copyright (c) 2015 MTM. All rights reserved.
//

import UIKit

func buttonClicker(inout myButton: UIButton!, inout myButtonNum: Int, maxNum: Int) -> Void {
    
    myButtonNum++
    
    if(myButtonNum == maxNum){
        myButton.setTitle("1", forState: UIControlState.Normal)
        myButtonNum = 1
    } else {
        myButton.setTitle(String(myButtonNum), forState: UIControlState.Normal)
    }
}

func initializeButton(inout myButton: UIButton!) -> Void {
    myButton.setTitle("1", forState: UIControlState.Normal)
}

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
    @IBOutlet weak var midLeftBut: UIButton!
    @IBOutlet weak var midRightBut: UIButton!
    @IBOutlet weak var botLeftBut: UIButton!
    @IBOutlet weak var botMidBut: UIButton!
    @IBOutlet weak var botRightBut: UIButton!
    
    var topLeftButtonNum: Int = 1
    var topButtonNum: Int = 1
    var topRightButtonNum: Int = 1
    var midRightButtonNum: Int = 1
    var midLeftButtonNum: Int = 1
    var botRightButtonNum: Int = 1
    var botMidButtonNum: Int = 1
    var botLeftButtonNum: Int = 1
    
    @IBOutlet weak var topSumLab: UILabel!
    @IBOutlet weak var leftSumLab: UILabel!
    @IBOutlet weak var rightSumLab: UILabel!
    @IBOutlet weak var botSumLab: UILabel!
    
    @IBOutlet weak var contButton: UIButton!
    
    
    func calculateSquareSum(){
        var winner = true
        var topSumN: Int?
        var leftSumN: Int?
        var rightSumN: Int?
        var botSumN: Int?
        
        
        topSumN = topLeftButtonNum + topButtonNum + topRightButtonNum
        rightSumN = topRightButtonNum + midRightButtonNum + botRightButtonNum
        botSumN = botRightButtonNum + botMidButtonNum + botLeftButtonNum
        leftSumN = topLeftButtonNum + midLeftButtonNum + botLeftButtonNum
        
        topSumLab.text = "\(topSumN!)"
        rightSumLab.text = "\(rightSumN!)"
        botSumLab.text = "\(botSumN!)"
        leftSumLab.text = "\(leftSumN!)"
        
        if(rightSumN == 12 && botSumN == 12 && leftSumN == 12 && topSumN == 12){
            var numberArray: [Int] = [ topLeftButtonNum, topButtonNum, topRightButtonNum, midLeftButtonNum, midRightButtonNum, botLeftButtonNum, botMidButtonNum, botRightButtonNum]
            
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeButton(&topLeftBut)
        initializeButton(&topBut)
        initializeButton(&topRightBut)
        initializeButton(&midLeftBut)
        initializeButton(&midRightBut)
        initializeButton(&botLeftBut)
        initializeButton(&botMidBut)
        initializeButton(&botRightBut)
        contButton.hidden = true
        calculateSquareSum()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func topLeftClick() {
        buttonClicker(&topLeftBut, &topLeftButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func topClick() {
        buttonClicker(&topBut, &topButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func topRightClick() {
        buttonClicker(&topRightBut, &topRightButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func midLeftClick() {
        buttonClicker(&midLeftBut, &midLeftButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func midRightClick() {
        buttonClicker(&midRightBut, &midRightButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func botLeftClick() {
        buttonClicker(&botLeftBut, &botLeftButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func botMidClick() {
        buttonClicker(&botMidBut, &botMidButtonNum, 9)
        calculateSquareSum()
    }
    @IBAction func botRightClick() {
        buttonClicker(&botRightBut, &botRightButtonNum, 9)
        calculateSquareSum()
    }
}

class PentagonViewController: UIViewController {
    
    @IBOutlet weak var aBut: UIButton!
    @IBOutlet weak var bBut: UIButton!
    @IBOutlet weak var cBut: UIButton!
    @IBOutlet weak var dBut: UIButton!
    @IBOutlet weak var eBut: UIButton!
    @IBOutlet weak var fBut: UIButton!
    @IBOutlet weak var gBot: UIButton!
    @IBOutlet weak var hBot: UIButton!
    @IBOutlet weak var iBot: UIButton!
    @IBOutlet weak var jbot: UIButton!
    
    @IBOutlet weak var topLeftSumBut: UILabel!
    @IBOutlet weak var topRightSumBut: UILabel!
    @IBOutlet weak var botLeftSumBut: UILabel!
    @IBOutlet weak var botSumBut: UILabel!
    @IBOutlet weak var botRightSumBut: UILabel!
    
    var aButtonNum: Int = 1
    var bButtonNum: Int = 1
    var cButtonNum: Int = 1
    var dButtonNum: Int = 1
    var eButtonNum: Int = 1
    var fButtonNum: Int = 1
    var gButtonNum: Int = 1
    var hButtonNum: Int = 1
    var iButtonNum: Int = 1
    var jButtonNum: Int = 1
    
    @IBOutlet weak var contbutton: UIButton!
    
    func calculatePentSum(){
        var winner = true
        var topLeftSumN: Int?
        var topRightSumN: Int?
        var botLeftSumN: Int?
        var botRightSumN: Int?
        var botSumN: Int?
        
        
        topLeftSumN = aButtonNum + iButtonNum + jButtonNum
        topRightSumN = aButtonNum + bButtonNum + cButtonNum
        botLeftSumN = iButtonNum + hButtonNum + gButtonNum
        botRightSumN = cButtonNum + dButtonNum + eButtonNum
        botSumN = gButtonNum + fButtonNum + eButtonNum
        
        topLeftSumBut.text = "\(topLeftSumN!)"
        topRightSumBut.text = "\(topRightSumN!)"
        botLeftSumBut.text = "\(botLeftSumN!)"
        botRightSumBut.text = "\(botRightSumN!)"
        botSumBut.text = "\(botSumN!)"
        
        if(topLeftSumN == 14 && topRightSumN == 14 && botLeftSumN == 14 && botRightSumN == 14 && botSumN == 14){
            var numberArray: [Int] = [ aButtonNum, bButtonNum, cButtonNum, dButtonNum, eButtonNum, fButtonNum, gButtonNum, hButtonNum, iButtonNum, jButtonNum]
            
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
                contbutton.hidden = false
                println("Winner")
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeButton(&aBut)
        initializeButton(&bBut)
        initializeButton(&cBut)
        initializeButton(&dBut)
        initializeButton(&eBut)
        initializeButton(&fBut)
        initializeButton(&gBot)
        initializeButton(&hBot)
        initializeButton(&iBot)
        initializeButton(&jbot)
        contbutton.hidden = true
        calculatePentSum()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func aClick() {
        buttonClicker(&aBut, &aButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func bClick() {
        buttonClicker(&bBut, &bButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func cClick() {
        buttonClicker(&cBut, &cButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func dClick() {
        buttonClicker(&dBut, &dButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func eClick() {
        buttonClicker(&eBut, &eButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func fClick() {
        buttonClicker(&fBut, &fButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func gClick() {
        buttonClicker(&gBot, &gButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func hClick() {
        buttonClicker(&hBot, &hButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func iClick() {
        buttonClicker(&iBot, &iButtonNum, 11)
        calculatePentSum()
    }
    @IBAction func jClick() {
        buttonClicker(&jbot, &jButtonNum, 11)
        calculatePentSum()
    }
}
