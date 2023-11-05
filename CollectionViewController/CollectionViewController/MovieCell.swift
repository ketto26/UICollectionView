//
//  MovieCell.swift
//  CollectionViewController
//
//  Created by Keto Nioradze on 04.11.23.
//

import UIKit

//protocol MovieCellDelegate: AnyObject{}

class MovieCell: UICollectionViewCell {
    
    // MARK: - Setup Properties
    let movieImage: UIImageView = {
        let movieImage = UIImageView()
        movieImage.contentMode = .scaleAspectFit
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        return movieImage
    }()
    
    
    let rateLabel: UILabel = {
        let rateLabel = UILabel()
        rateLabel.frame.size = CGSize(width: 33, height: 23)
        rateLabel.backgroundColor = .orange
        rateLabel.textColor = .white
        rateLabel.font = UIFont(name: "Helvetica-Bold", size: 12)
        rateLabel.translatesAutoresizingMaskIntoConstraints = false
        return rateLabel
    }()
    
    let favouriteButton: UIButton = {
        let favouriteButton = UIButton()
        favouriteButton.setImage(UIImage(named: "heart"), for: .normal)
        favouriteButton.addTarget(self, action: #selector(favouriteButtonClicked), for: .touchUpInside)
        favouriteButton.translatesAutoresizingMaskIntoConstraints = false
        return favouriteButton
    }()
    
    let movieNameLabel: UILabel = {
        let movieNameLabel = UILabel()
        movieNameLabel.textColor = .white
        movieNameLabel.font = UIFont(name: "Helvetica-Bold", size: 16)
        movieNameLabel.textAlignment = .left
        movieNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return movieNameLabel
    }()
    
    let genreLabel: UILabel = {
        let genreLabel: UILabel = UILabel()
        genreLabel.font = UIFont(name: "Helvetica", size: 14)
        genreLabel.textColor = .systemGray4
        genreLabel.textAlignment = .left
        genreLabel.translatesAutoresizingMaskIntoConstraints = false
        return genreLabel
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Setup Ui
    private func setupUI() {
        contentView.addSubview(movieImage)
        contentView.addSubview(favouriteButton)
        contentView.addSubview(rateLabel)
        contentView.addSubview(movieNameLabel)
        contentView.addSubview(genreLabel)
    }
    
    // MARK: - Private Methods
    @objc func favouriteButtonClicked() {
        favouriteButton.setImage(UIImage(named: "redHeart"), for: .normal)
    }
    
    // MARK: - Setup Constraints
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            movieImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 15),
            movieImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -20),
            
            favouriteButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            favouriteButton.leftAnchor.constraint(equalTo: movieImage.leftAnchor, constant: 20),
            
            rateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            rateLabel.rightAnchor.constraint(equalTo: movieImage.rightAnchor, constant: -50),
            
            movieNameLabel.topAnchor.constraint(equalTo: movieImage.bottomAnchor, constant: -50),
            movieNameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 1),
            
            genreLabel.topAnchor.constraint(equalTo: movieNameLabel.bottomAnchor, constant: 1),
            genreLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 1),
            
        ])
    }
    
}

