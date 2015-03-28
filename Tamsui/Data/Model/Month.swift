//
//  Month.swift
//  Tamsui
//
//  Created by mAir on 2015/2/13.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import Foundation
import CoreData

class Month: NSManagedObject {

    @NSManaged var locationLogs: AnyObject
    @NSManaged var locationShow: String
    @NSManaged var month: NSNumber
    @NSManaged var spirit: String
    @NSManaged var text: String
    @NSManaged var year: NSNumber
    @NSManaged var ymID: String
    @NSManaged var relPost1: Post
    @NSManaged var relPost2: Post
    @NSManaged var relPost3: Post

}
