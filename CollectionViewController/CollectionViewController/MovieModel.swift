//
//  MovieModel.swift
//  CollectionViewController
//
//  Created by Keto Nioradze on 04.11.23.
//

import UIKit

enum MovieGenre {
    case action
    case adventure
    case horror
    case comedy
}

final class MovieInfo {
    let movieImage: UIImage
    let name: String
    let rate: Double
    var genre: MovieGenre
    let description: String
    let certificate: String
    let runTime: Double
    let releaseYear: Int
    let Director: String
    let cast: String
    
    init(movieImage: UIImage, name: String, rate: Double, genre: MovieGenre, description: String, certificate: String, runTime: Double, releaseYear: Int, Director: String, cast: String) {
        self.movieImage = movieImage
        self.name = name
        self.rate = rate
        self.genre = genre
        self.description = description
        self.certificate = certificate
        self.runTime = runTime
        self.releaseYear = releaseYear
        self.Director = Director
        self.cast = cast
    }
    
    static let movieData = [
        MovieInfo(movieImage: UIImage(named: "batman")!, name: "Batman", rate: 8.1, genre: MovieGenre.action, description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.", certificate: "16+", runTime: 02.56, releaseYear: 2022, Director: "Matt Reeves", cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaard"),
        MovieInfo(movieImage: UIImage(named: "batman")!, name: "Batman", rate: 8.1, genre: MovieGenre.action, description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.", certificate: "16+", runTime: 02.56, releaseYear: 2022, Director: "Matt Reeves", cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaard"),
        MovieInfo(movieImage: UIImage(named: "batman")!, name: "Batman", rate: 8.1, genre: MovieGenre.action, description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.", certificate: "16+", runTime: 02.56, releaseYear: 2022, Director: "Matt Reeves", cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaard"),
        MovieInfo(movieImage: UIImage(named: "batman")!, name: "Batman", rate: 8.1, genre: MovieGenre.action, description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.", certificate: "16+", runTime: 02.56, releaseYear: 2022, Director: "Matt Reeves", cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaard"),
        MovieInfo(movieImage: UIImage(named: "batman")!, name: "Batman", rate: 8.1, genre: MovieGenre.action, description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.", certificate: "16+", runTime: 02.56, releaseYear: 2022, Director: "Matt Reeves", cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaard"),
        MovieInfo(movieImage: UIImage(named: "batman")!, name: "Batman", rate: 8.1, genre: MovieGenre.action, description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.", certificate: "16+", runTime: 02.56, releaseYear: 2022, Director: "Matt Reeves", cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro,     Andy Serkis, Peter Sarsgaard"),
    ]
    
}
