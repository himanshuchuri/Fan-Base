//
//  DetailVC.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
        
    
    @IBOutlet weak var detImage: UIImageView!
    @IBOutlet weak var detName: UILabel!
    @IBOutlet weak var detDesc: UILabel!
    
    private(set) public var detailName = " "
    private(set) public var detailImage = " "
    private(set) public var detailDesc = " "
    
    func initActor(act: actorDetails){
        detailName = act.title
        detailImage = act.imageName
        detailDesc = act.desc
        navigationItem.title = act.title
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detName.text = detailName
        detImage.image = UIImage(named: detailImage)
        detDesc.text = detailDesc
        
        
    }
    

}
