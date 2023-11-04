//
//  ViewController+CollectionView.swift
//  CollectionViewController
//
//  Created by Keto Nioradze on 04.11.23.
//

import UIKit


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let currentMovie = movieData[indexPath.row]
        
        cell.backgroundColor = .red
        cell.movieImage.image = currentMovie.movieImage
        cell.rateLabel.text = "\(currentMovie.rate)"
        cell.movieNameLabel.text = currentMovie.name
        cell.genreLabel.text = "\(currentMovie.genre)"
    //    cell.delegate = self
        return cell
    }
    
    
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 163, height: 278)
    }
}
