//
//  ActorDetails.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import Foundation

struct actorDetails {
    private(set) public var title:String
    private(set) public var imageName: String
    private(set) public var desc: String
    
    
    init(title: String, imageName: String, desc: String) {
        self.title = title
        self.imageName = imageName
        self.desc = desc
    }
}
