//: Playground - noun: a place where people can play

import UIKit

internal enum Theme{
    case DayMode
    case NightMode
}

internal class UI{
    
    private var fontColor: UIColor!
    private var backgroundColor: UIColor!
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
    
    private func changeTheme( themeMode: Theme ){
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
    
    func show(){
        //print("The font color is \(fontColor == UIColor.whiteColor() ? "WHITE" : "BLACK" )")          //swift 2
        print("The font color is \(fontColor == UIColor.white ? "WHITE" : "BLACK" )")     //swift 3
        //print("The background color is \(backgroundColor == UIColor.whiteColor() ? "WHITE" : "BLACK")")       //swift 2
        print("The background color is \(backgroundColor == UIColor.white ? "WHITE" : "BLACK")")   // swift 3
    }
}





