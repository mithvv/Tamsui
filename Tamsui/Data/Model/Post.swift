//
//  Post.swift
//  Tamsui
//
//  Created by mAir on 2015/2/13.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObject {
    class func entityName() -> String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
}


class Post: NSManagedObject {

    @NSManaged var detailText: String
    @NSManaged var imageData: NSData
    @NSManaged var imageHashID: String
    @NSManaged var title: String
    @NSManaged var relMonth: Month
    
    
    override class func entityName() -> String {
        return "Post"
    }


}
