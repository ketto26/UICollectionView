//
//  ViewController.swift
//  CollectionViewController
//
//  Created by Keto Nioradze on 04.11.23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    private let navBarIconButton: UIBarButtonItem = {
        let navBarIconButton = UIBarButtonItem()
        navBarIconButton.image = UIImage(named: "navBarIconButton")
        return navBarIconButton
    }()
    
    private let navBarButtonProfile: UIBarButtonItem = {
        let navBarButtonProfile = UIBarButtonItem()
        navBarButtonProfile.title = "Profile"
        navBarButtonProfile.tintColor = .white
        return navBarButtonProfile
    }()
    
    private let mainStackView: UIStackView = {
        let mainSTackView = UIStackView()
        mainSTackView.axis = .vertical
        mainSTackView.distribution = .equalCentering
        mainSTackView.alignment = .center
        mainSTackView.spacing = 16
        mainSTackView.translatesAutoresizingMaskIntoConstraints = false
        return mainSTackView
    }()
    
    private let mainLabel: UILabel = {
        let mainLabel = UILabel()
        mainLabel.text = "Now in cinemas"
        mainLabel.textColor = .white
        mainLabel.font = UIFont(name: "Helvetica-Bold", size: 24)
        mainLabel.textAlignment = .left
        
        return mainLabel
    }()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(red: 26/255, green: 34/255, blue: 50/255, alpha: 1)
        return collectionView
    }()
    
    var movieData = MovieInfo.movieData
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 26/255, green: 34/255, blue: 50/255, alpha: 1)
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(mainLabel)
        mainStackView.addArrangedSubview(collectionView)
        
        navBarSetup()
        setupCollectionView()
        setupMainStackViewConstraints()
        setupMainLabelConstraints()
        setupCollectionViewConstraints()
    }

    // MARK: - Setup methods
    private func navBarSetup() {
        navigationItem.leftBarButtonItem = navBarIconButton
        navigationItem.rightBarButtonItem = navBarButtonProfile
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(MovieCell.self, forCellWithReuseIdentifier: "MovieCell")
    }
    

    // MARK: - Setup Constraints
    private func setupMainStackViewConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 0),
            mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }
    
    private func setupMainLabelConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    private func setupCollectionViewConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: mainStackView.topAnchor, constant: 40),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor)
        ])
    }
}

    // MARK: - Extensions and Delegates

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let currentMovie = movieData[indexPath.row]
        
        
        cell.movieImage.image = currentMovie.movieImage
        cell.rateLabel.text = "\(currentMovie.rate)"
        cell.movieNameLabel.text = currentMovie.name
        cell.genreLabel.text = "\(currentMovie.genre)"
        return cell
    }
     
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsPage = MovieDetailViewController()
        detailsPage.movieData = movieData[indexPath.row]
        navigationController?.pushViewController(detailsPage, animated: true)
    }
    
    
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 165, height: 278)
    }
}
