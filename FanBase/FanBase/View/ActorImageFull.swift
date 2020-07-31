//
//  ActorImageFull.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import UIKit

@IBDesignable

class ActorImageFull: UIImageView {
    
    func newView(){
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4)
        layer.borderWidth = 2.0
        layer.cornerRadius = 10.0
    }
    
    override func prepareForInterfaceBuilder() {
        newView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        newView()
    }

}
