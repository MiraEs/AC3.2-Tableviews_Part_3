//
//  MovieDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Ilmira Estil on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    internal var selectedMovie: Movie!
        @IBOutlet weak var moviePosterImageView: UIImageView!
        @IBOutlet weak var genreLabel: UILabel!
        @IBOutlet weak var locationLabel: UILabel!
        @IBOutlet weak var summaryLabel: UILabel!
        @IBOutlet weak var summaryTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateViews(for: self.selectedMovie)
    }
    
    //why this is private vs. internal --> prevents from incorrect calls especially when outlets aren't initialized yet
    private func updateViews(for movie: Movie) {
        self.moviePosterImageView.image = UIImage(named: movie.poster)!
        self.genreLabel.text = "Genre: " + movie.genre.capitalized
        self.locationLabel.text = "Locations: " + movie.locations.joined(separator: ", ")
        self.summaryTextLabel.text = movie.summary
    }
   

}
