//
//  ViewController.swift
//  FanBase
//
//  Created by Himanshu Churi on 7/31/20.
//  Copyright © 2020 Himanshu Churi. All rights reserved.
//

import UIKit

class MovieVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var movieTble: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        movieTble.delegate = self
        movieTble.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.setter.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let tCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell {
            let movies = DataService.setter.getMovies()[indexPath.row]
            tCell.updateView(movie: movies, sender: self)
            return tCell
        } else {
            return MovieCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            assert(sender as? actorDetails != nil)
            detailVC.initActor(act: sender as! actorDetails)
        }
    }
    

}

