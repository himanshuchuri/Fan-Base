//
//  MovieCell.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieImage : UIImageView!
    @IBOutlet weak var actorCollView: UICollectionView!

    private(set) public var  mov = [actorDetails]()
    
    private var sender: UIViewController!


    
    func updateView(movie: movieNames, sender: UIViewController) { // sender added as it sends needs to send to controller.
        movieName.text = movie.title
        movieImage.image = UIImage(named: movie.imageName)
        actorCollView.delegate = self
        actorCollView.dataSource = self
        mov = DataService.setter.getActors(forMovieTitle: movieName.text!)
        self.sender = sender
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.setter.getActors(forMovieTitle: movieName.text!).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cvCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorsCell{
            let actor = mov[indexPath.row]
            cvCell.updateActorView(actor: actor)
            return cvCell
        }else {
            return ActorsCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
               let actors = mov[indexPath.row]
               sender.performSegue(withIdentifier: "ActorDetail", sender: actors)
           }

}
