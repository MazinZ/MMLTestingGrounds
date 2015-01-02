// Playground - noun: a place where people can play

import UIKit

func buttonClicker(inout myButton: UIButton, inout myButtonNum: Int, maxNum: Int) -> Void {
    
    myButtonNum++
    
    if(myButtonNum == maxNum){
        myButton.setTitle("1", forState: UIControlState.Normal)
        myButtonNum = 1
    } else {
        myButton.setTitle(String(myButtonNum), forState: UIControlState.Normal)
    }
}


