//
//  ViewController.swift
//  9 calculator
//
//  Created by Mac User on 2017/09/24.
//  Copyright © 2017年 Mac User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screen: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var list:[String] = []
    var listPlus:[String] = []
    var list2:[String] = []
    var tapCount:[Int]? = [0]
    
    @IBAction func tapPlus() {
        listPlus.append("+")
        screenText(tap: 1)
        tapCount?.insert(1, at: 0)
    }
    
    @IBAction func tapCrs() {
        listPlus.append("×")
        screenText(tap: 1)
        tapCount?.insert(2, at: 0)
    }
    
    @IBAction func tapWar() {
        listPlus.append("÷")
        screenText(tap: 1)
        tapCount?.insert(3, at: 0)
    }
    
    @IBAction func tapDes() {
        listPlus.append("-")
        screenText(tap: 1)
        tapCount?.insert(4, at: 0)
    }
    
        
    @IBAction func listRemove() {
        list.removeAll()
        list2.removeAll()
        listPlus.removeAll()
        tapCount?.insert(0, at: 0)
        screen.text = "0"
        }
    
    @IBAction func equal() {
        switch tapCount![0] {
        case 1:
            ennzannsi(ope: 1)
        case 2:
            ennzannsi(ope: 2)
        case 3:
            ennzannsi(ope: 3)
        case 4:
            ennzannsi(ope: 4)
        default:
            break
        }
    }
    
    
    @IBAction func tapZero() {
        if tapCount![0] == 0 {
            list.append("0")
            screenText(tap: 0)
        } else {
            list2.append("0")
            screenText(tap: 1)
        }
        
    }
    @IBAction func tapOne() {
        if tapCount![0] == 0 {
            list.append("1")
            screenText(tap: 0)
        } else {
            list2.append("1")
            screenText(tap: 1)
        }
    }
    @IBAction func tapTwo() {
        if tapCount![0] == 0 {
            list.append("2")
            screenText(tap: 0)
        } else {
            list2.append("2")
            screenText(tap: 1)
        }
    }
    @IBAction func tapThree() {
        if tapCount![0] == 0 {
            list.append("3")
            screenText(tap: 0)
        } else {
            list2.append("3")
            screenText(tap: 1)
        }
    }
    @IBAction func tapFour() {
        if tapCount![0] == 0 {
            list.append("4")
            screenText(tap: 0)
        } else {
            list2.append("4")
            screenText(tap: 1)
        }
    }
    @IBAction func tapFive() {
        if tapCount![0] == 0 {
            list.append("5")
            screenText(tap: 0)
        } else {
            list2.append("5")
            screenText(tap: 1)
        }
    }
    @IBAction func tapSix() {
        if tapCount![0] == 0 {
            list.append("6")
            screenText(tap: 0)
        } else {
            list2.append("6")
            screenText(tap: 1)
        }
    }
    @IBAction func tapSeven() {
        if tapCount![0] == 0 {
            list.append("7")
            screenText(tap: 0)
        } else {
            list2.append("7")
            screenText(tap: 1)
        }
    }
    @IBAction func tapEight() {
        if tapCount![0] == 0 {
            list.append("8")
            screenText(tap: 0)
        } else {
            list2.append("8")
            screenText(tap: 1)
        }
    }
    @IBAction func tapNine() {
        if tapCount![0] == 0 {
            list.append("9")
            screenText(tap: 1)
        } else {
            list2.append("9")
            screenText(tap: 1)
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //電卓の画面に数字を表示する
    func screenText (tap:Int) {
        switch tap {
        case 0:
            var msg = ""
            for n in list {
                msg += n
            }
            screen.text = msg
            screen.font = UIFont.systemFont(ofSize: 30)
            screen.textAlignment = NSTextAlignment.right
            screen.numberOfLines = 0
        case 1:
            var msg2 = ""
            for m in list2 {
                msg2 += m
            }
            let hyojiText:[String] = [list.joined()]
            let hyojiText2:[String] = [list2.joined()]
            let matometeList:[String] = hyojiText + listPlus + hyojiText2
            let forHyoji:[String] = [matometeList.joined()]
            //画面に表示する
            screen.text = forHyoji[0]
            screen.font = UIFont.systemFont(ofSize: 30)
            screen.textAlignment = NSTextAlignment.right
            screen.numberOfLines = 0
        default:
            break
        }
    }
    
    func ennzannsi (ope:Int) {
        let finalList:[String] = [list.joined()]
        let finalList2:[String]? = [list2.joined()]
        let finalScreen = Int(finalList[0])
        let finalScreen2 = Int(finalList2![0])
        switch ope {
        case 1:
            let kekkaHyoji = finalScreen! + finalScreen2!
            let kekkaHot = String(kekkaHyoji)
            screen.text = kekkaHot
        case 2:
            let kekkaHyoji = finalScreen! * finalScreen2!
            let kekkaHot = String(kekkaHyoji)
            screen.text = kekkaHot
        case 3:
            let kekkaHyoji = finalScreen! / finalScreen2!
            let kekkaHot = String(kekkaHyoji)
            screen.text = kekkaHot
        case 4:
            let kekkaHyoji = finalScreen! - finalScreen2!
            let kekkaHot = String(kekkaHyoji)
            screen.text = kekkaHot
        default:
            break
        }
    }
}

