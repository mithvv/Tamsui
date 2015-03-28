//
//  DataProvider.swift
//  Tamsui
//
//  Created by mAir on 2015/2/13.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

//import SugarRecord


class DataProvider: NSObject {
    
    var birthdate : NSDate
    
    override init() {
        self.birthdate = NSDate().dateByAddingTimeInterval(3600*24*365*20) // 默认回到 20 年前的自己
        
        super.init()
    }
   
    func setupMonthsDBWithBirthdate(birthdate: NSDate) -> Bool
    {
        return true
    }
    
    func monthsGroupByYear() -> Array<Array<Month>>
    {
        
        return Array()
    }
    
}
