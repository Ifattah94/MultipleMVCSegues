//
//  MoviesDetailViewController.swift
//  TableViewWithSegues
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class MoviesDetailViewController: UIViewController {

    

    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    
    @IBOutlet weak var actorsLabel: UILabel!
    
    @IBOutlet weak var summary: UITextView!
    
    
  
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let movie = movie else {
            return
        }
        
        movieImageView.image = UIImage(named: movie.posterImageName)
        movieNameLabel.text = movie.name
        yearLabel.text = String(movie.year)
        actorsLabel.text = movie.cast.joined(separator: ", ")
        summary.text = movie.description
        
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
