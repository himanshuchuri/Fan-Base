//
//  ActorsCell.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import UIKit

class ActorsCell: UICollectionViewCell {
    
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    
    
    func updateActorView(actor: actorDetails ){
        actorImage.image = UIImage(named: actor.imageName)
        actorName.text = actor.title
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
