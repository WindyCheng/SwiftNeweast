//: Playground - noun: a place where people can play

import UIKit


// 代码整理
enum Theme{
    case DayMode
    case NightMode
}

class UI{
    
    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: Theme = .DayMode{
        didSet{
            //self.changeTheme(themeMode)             //swift 2
            self.changeTheme(themeMode: themeMode)    //swift 3
        }
    }
    
    init(){
        self.themeMode = .DayMode
        //self.changeTheme(themeMode)             //swift 2
        self.changeTheme(themeMode: themeMode)    //swift 3
    
    }
    
    init(themeMode: Theme){
        self.themeMode = themeMode
        //self.changeTheme(themeMode)             //swift 2
        self.changeTheme(themeMode: themeMode)    //swift 3
    }
    
    func changeTheme( themeMode: Theme ){
        switch(themeMode){
        case .DayMode:
            //fontColor = UIColor.blackColor()         //swift 2
            //swift3中，颜色从“xxxColor()”变成了"xxx"。直接调用UIColor.xxx即可
            //backgroundColor = UIColor.whiteColor()   //swift 2
            fontColor = UIColor.black                  //swift 3
            backgroundColor = UIColor.white            //swift 3
        case .NightMode:
            //fontColor = UIColor.whiteColor()         //swift 2
            //backgroundColor = UIColor.blackColor()   //swift 2
            fontColor = UIColor.white                  //swift 3
            backgroundColor = UIColor.black            //swift 3
        }
    }
}


let ui = UI()
ui.themeMode
ui.fontColor
ui.backgroundColor

ui.themeMode = .NightMode
ui.themeMode
ui.fontColor
ui.backgroundColor
