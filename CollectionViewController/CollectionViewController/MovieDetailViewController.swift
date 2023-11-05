//
//  MovieDetailViewController.swift
//  CollectionViewController
//
//  Created by Keto Nioradze on 04.11.23.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var movieData: MovieInfo?
    
    // MARK: Properties
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var movieImage = UIImageView()
    
    private var rateStackView: UIStackView = {
        let rateStackView = UIStackView()
        rateStackView.axis = .vertical
        rateStackView.spacing = 2
        rateStackView.alignment = .center
        rateStackView.translatesAutoresizingMaskIntoConstraints = false
        return rateStackView
    }()
    
    private var rateLabel = UILabel()
    
    private var iMDBLabel: UILabel = {
        let iMDBLabel = UILabel()
        iMDBLabel.text = "IMDB"
        iMDBLabel.textColor = .systemGray3
        iMDBLabel.translatesAutoresizingMaskIntoConstraints = false
        return iMDBLabel
    }()
    
    private var movieInfoStackView: UIStackView = {
        let movieInfoStackView = UIStackView()
        movieInfoStackView.axis = .vertical
        movieInfoStackView.spacing = 16
        movieInfoStackView.alignment = .leading
        movieInfoStackView.translatesAutoresizingMaskIntoConstraints = false
        return movieInfoStackView
    }()
    
    private var movieDescriptionTextView = UITextView()
    
    private var movieDetailsStackView: UIStackView = {
        let movieDetailsStackView = UIStackView()
        movieDetailsStackView.translatesAutoresizingMaskIntoConstraints = false
        movieDetailsStackView.distribution = .equalCentering
        movieDetailsStackView.axis = .vertical
        return movieDetailsStackView
    }()
    
    private var certificateStackView: UIStackView = {
        let certificateStackView = UIStackView()
        certificateStackView.axis = .horizontal
        certificateStackView.translatesAutoresizingMaskIntoConstraints = false
        certificateStackView.alignment = .leading
        return certificateStackView
    }()
    
    private var certificateLabel: UILabel = {
        let certificateLabel = UILabel()
        certificateLabel.text = "Certificate"
        certificateLabel.textColor = .systemGray4
        certificateLabel.font = UIFont(name: "Helvetica", size: 14)
        return certificateLabel
    }()
    
    private let certificateValueLabel = UILabel()
    
    private var runtimeStackView: UIStackView = {
        let runtimeStackView = UIStackView()
        runtimeStackView.axis = .horizontal
        runtimeStackView.translatesAutoresizingMaskIntoConstraints = false
        runtimeStackView.spacing = 16
        runtimeStackView.alignment = .leading
        return runtimeStackView
    }()
    
    private var runtimeLabel: UILabel = {
        let runtimeLabel = UILabel()
        runtimeLabel.text = "Runtime"
        runtimeLabel.textColor = .systemGray4
        runtimeLabel.font = UIFont(name: "Helvetica", size: 14)
        return runtimeLabel
    }()
    
    private let runtimeValueLabel = UILabel()
    
    private var releaseStackView: UIStackView = {
        let releaseStackView = UIStackView()
        releaseStackView.axis = .horizontal
        releaseStackView.translatesAutoresizingMaskIntoConstraints = false
        releaseStackView.spacing = 16
        releaseStackView.alignment = .leading
        return releaseStackView
    }()

    private var releaseLabel: UILabel = {
        let releaseLabel = UILabel()
        releaseLabel.text = "Release"
        releaseLabel.textColor = .systemGray4
        releaseLabel.font = UIFont(name: "Helvetica", size: 14)
        return releaseLabel
    }()
    
    private let releaseValueLabel = UILabel()
    
    private var genreStackView: UIStackView = {
        let genreStackView = UIStackView()
        genreStackView.axis = .horizontal
        genreStackView.translatesAutoresizingMaskIntoConstraints = false
        genreStackView.spacing = 16
        genreStackView.alignment = .leading
        return genreStackView
    }()
    
    private var genreLabel: UILabel = {
        let genreLabel = UILabel()
        genreLabel.text = "Genre"
        genreLabel.textColor = .systemGray4
        genreLabel.font = UIFont(name: "Helvetica", size: 14)
        return genreLabel
    }()
    
    private let genreValueLabel = UILabel()
    
    private var directorStackView: UIStackView = {
        let directorStackView = UIStackView()
        directorStackView.axis = .horizontal
        directorStackView.translatesAutoresizingMaskIntoConstraints = false
        directorStackView.spacing = 16
        directorStackView.alignment = .leading
        return directorStackView
    }()
    
    private var directorLabel: UILabel = {
        let directorLabel = UILabel()
        directorLabel.text = "Director"
        directorLabel.textColor = .systemGray4
        directorLabel.font = UIFont(name: "Helvetica", size: 14)
        return directorLabel
    }()
    
    private let directorValueLabel = UILabel()
    
    private var castStackView: UIStackView = {
        let castStackView = UIStackView()
        castStackView.axis = .horizontal
        castStackView.translatesAutoresizingMaskIntoConstraints = false
        castStackView.spacing = 16
        castStackView.alignment = .leading
        return castStackView
    }()
    
    private var castLabel: UILabel = {
        let castLabel = UILabel()
        castLabel.text = "Cast"
        castLabel.textColor = .systemGray4
        castLabel.font = UIFont(name: "Helvetica", size: 14)
        return castLabel
    }()
    
    private var castValueLabel = UILabel()
    
    private var selectButton: UIButton = {
        let selectButton = UIButton()
        selectButton.setTitle("Select session", for: .normal)
        selectButton.frame.size = CGSize(width: 343, height: 56)
        selectButton.translatesAutoresizingMaskIntoConstraints = false
        selectButton.backgroundColor = .orange
        selectButton.tintColor = .white
        return selectButton
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        navBarSetup()
        setupStackViewConstraints()
        setupImageConstraints()
        setUpMovieImage()
        setupRateStackViewConstraints()
        setupRateLabel()
        setupMovieInfoStackView()
        SetupMovieDescriptionTextView()
        setupMovieDescriptionTextViewConstraints()
        setupMovieDetailsStackViewConstraints()
        setupCertificateValueLabel()
        setupRuntimeValueLabel()
        setupReleaseValueLabel()
        setupGenreValueLabel()
        setupDirectorValueLabel()
        setupCastValueLabel()
        setupSelectButtonConstraints()
    }
    
    
    
    
    // MARK: - Setup View
    private func setupView() {
        view.backgroundColor = UIColor(red: 31/255, green: 41/255, blue: 61/255, alpha: 0.7)
        
        
        view.addSubview(movieImage)
        view.addSubview(stackView)
        stackView.addArrangedSubview(rateStackView)
        rateStackView.addArrangedSubview(rateLabel)
        rateStackView.addArrangedSubview(iMDBLabel)
        stackView.addArrangedSubview(movieInfoStackView)
        movieInfoStackView.addArrangedSubview(movieDescriptionTextView)
        movieInfoStackView.addArrangedSubview(movieDetailsStackView)
        movieDetailsStackView.addArrangedSubview(certificateStackView)
        certificateStackView.addArrangedSubview(certificateLabel)
        certificateStackView.addArrangedSubview(certificateValueLabel)
        movieDetailsStackView.addArrangedSubview(runtimeStackView)
        runtimeStackView.addArrangedSubview(runtimeLabel)
        runtimeStackView.addArrangedSubview(runtimeValueLabel)
        movieDetailsStackView.addArrangedSubview(releaseStackView)
        releaseStackView.addArrangedSubview(releaseLabel)
        releaseStackView.addArrangedSubview(releaseValueLabel)
        movieDetailsStackView.addArrangedSubview(genreStackView)
        genreStackView.addArrangedSubview(genreLabel)
        genreStackView.addArrangedSubview(genreValueLabel)
        movieDetailsStackView.addArrangedSubview(directorStackView)
        directorStackView.addArrangedSubview(directorLabel)
        directorStackView.addArrangedSubview(directorValueLabel)
        movieDetailsStackView.addArrangedSubview(castStackView)
        castStackView.addArrangedSubview(castLabel)
        castStackView.addArrangedSubview(castValueLabel)
        view.addSubview(selectButton)
    }
    
    // MARK: - Setup Navbar
    private func navBarSetup() {
        navigationItem.title = movieData?.name
        navigationController?.navigationBar.tintColor = .white
    }
    
    // MARK: - Private Methods
    private func setUpMovieImage() {
        movieImage.image = movieData?.movieSecondPageImage
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        movieImage.frame.size = CGSize(width: 375, height: 210)
        movieImage.contentMode = .scaleAspectFill
    }
    
    private func setupRateLabel() {
        rateLabel.text = "\(movieData?.rate ?? 0)"
        rateLabel.textColor = .white
        rateLabel.translatesAutoresizingMaskIntoConstraints = false
        rateLabel.textAlignment = .center
    }
    
    private func SetupMovieDescriptionTextView() {
        movieDescriptionTextView.text = movieData?.description
        movieDescriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        movieDescriptionTextView.textColor = .white
        movieDescriptionTextView.font = UIFont(name: "Helvetica", size: 14)
        movieDescriptionTextView.backgroundColor = UIColor(red: 31/255, green: 41/255, blue: 61/255, alpha: 1)
    }
    
    private func setupCertificateValueLabel() {
        certificateValueLabel.text = movieData?.certificate
        certificateValueLabel.textColor = .white
        certificateValueLabel.font = UIFont(name: "Helvetica", size: 14)
    }
    
    private func setupRuntimeValueLabel() {
        runtimeValueLabel.text = "\(movieData?.runTime ?? 00)"
        runtimeValueLabel.textColor = .white
        runtimeValueLabel.font = UIFont(name: "Helvetica", size: 14)
    }
    
    private func setupReleaseValueLabel() {
        releaseValueLabel.text = "\(movieData?.releaseYear ?? 00)"
        releaseValueLabel.textColor = .white
        releaseValueLabel.font = UIFont(name: "Helvetica", size: 14)
    }
    
    private func setupGenreValueLabel() {
        genreValueLabel.text = "\(movieData?.genre)"
        genreValueLabel.textColor = .white
        genreValueLabel.font = UIFont(name: "Helvetica", size: 14)
    }
    
    private func setupDirectorValueLabel() {
        directorValueLabel.text = movieData?.Director
        directorValueLabel.textColor = .white
        directorValueLabel.font = UIFont(name: "Helvetica", size: 14)
    }
    
    private func setupCastValueLabel() {
        castValueLabel.text = movieData?.cast
        castValueLabel.textColor = .white
        castLabel.translatesAutoresizingMaskIntoConstraints = false
        castValueLabel.font = UIFont(name: "Helvetica", size: 14)
    }
    
    // MARK: - Setup Constraints
    private func setupStackViewConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: movieImage.bottomAnchor, constant: 15),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
        ])
    }
    
    private func setupImageConstraints() {
        NSLayoutConstraint.activate([
            movieImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 115),
            movieImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            movieImage.heightAnchor.constraint(equalToConstant: 210),
            
            movieImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            movieImage.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
    
    private func setupRateStackViewConstraints() {
        NSLayoutConstraint.activate([
            rateStackView.topAnchor.constraint(equalTo: movieImage.bottomAnchor),
            rateStackView.heightAnchor.constraint(equalToConstant: 70),
            rateStackView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            rateStackView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
        ])
    }
    
    private func setupMovieDescriptionTextViewConstraints() {
        NSLayoutConstraint.activate([
            movieDescriptionTextView.topAnchor.constraint(equalTo: movieInfoStackView.bottomAnchor, constant: 10),
            movieDescriptionTextView.leftAnchor.constraint(equalTo: movieInfoStackView.leftAnchor, constant: 10),
            movieDescriptionTextView.rightAnchor.constraint(equalTo: movieInfoStackView.rightAnchor, constant: -10),
            movieDescriptionTextView.bottomAnchor.constraint(equalTo: movieInfoStackView.topAnchor, constant: 100)
        ])
    }
    
    private func setupMovieInfoStackView() {
        NSLayoutConstraint.activate([
            movieInfoStackView.topAnchor.constraint(equalTo: rateStackView.bottomAnchor, constant: 16),
            movieInfoStackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            movieInfoStackView.rightAnchor.constraint(equalTo: view.rightAnchor),
            movieInfoStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90)
        ])
    }
    
    private func setupMovieDetailsStackViewConstraints() {
        NSLayoutConstraint.activate([
            movieDetailsStackView.topAnchor.constraint(equalTo: movieDescriptionTextView.bottomAnchor, constant: 1),
            movieDetailsStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            movieDetailsStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            movieDetailsStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        ])
    }

    private func setupSelectButtonConstraints() {
        NSLayoutConstraint.activate([
            selectButton.topAnchor.constraint(equalTo: movieDetailsStackView.bottomAnchor, constant: 70),
            selectButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56),
            selectButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            selectButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
}
