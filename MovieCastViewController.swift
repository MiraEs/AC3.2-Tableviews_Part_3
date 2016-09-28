//
//  MovieCastViewController.swift
//  Tableviews_Part_3
//
//  Created by Ilmira Estil on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieCastViewController: UIViewController {
    internal var selectedMovie: Movie!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.updateCasts(for: self.selectedMovie)
    }

    @IBOutlet weak var castTitleLabel: UILabel!
    @IBOutlet weak var castListLabel: UILabel!
    
    
    private func updateCasts(for movie: Movie) {
        self.castTitleLabel.text = "Cast List:"
        
        var names = ""
        for actor in movie.cast {
            names = ("\(actor.firstName)")
        }
        self.castListLabel.text = names
        //top -> down code
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
