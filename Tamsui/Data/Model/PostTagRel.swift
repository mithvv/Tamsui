//
//  PostTagRel.swift
//  Tamsui
//
//  Created by mAir on 2015/2/13.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import Foundation
import CoreData

class PostTagRel: NSManagedObject {

    @NSManaged var relPost: NSSet
    @NSManaged var relTagInfo: NSSet

}
