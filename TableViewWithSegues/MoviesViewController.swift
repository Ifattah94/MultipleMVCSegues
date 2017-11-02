//
//  MoviesViewController.swift
//  TableViewWithSegues
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var MovieTableView: UITableView!
    
    var movies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        MovieTableView.delegate = self
        MovieTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    func loadData() {
        self.movies = MovieData.movies
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = self.movies[indexPath.row]
        let cell = MovieTableView.dequeueReusableCell(withIdentifier: "Movie Cell", for: indexPath)
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = String(movie.year)
        return cell
        
    }
    
   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MoviesDetailViewController {
            let selectedRow = MovieTableView.indexPathForSelectedRow!.row
            let selectedMovie = self.movies[selectedRow]
            destination.movie = selectedMovie
            
            }
 

}
}
