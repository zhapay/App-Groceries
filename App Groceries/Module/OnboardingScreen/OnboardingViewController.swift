//
//  ViewController.swift
//  App Groceries
//
//  Created by Dastan Zhapay on 20.08.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private let onboardingImageView = UIImageView()
    private let iconImageView = UIImageView()
    private let welcomeLabel = UILabel()
    private let detailsLabel = UILabel()
    private let startButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        stylizeViews()
        setConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.isStatusBarHidden = true
    }
    
    func addSubviews() {
        view.addSubviews([
            onboardingImageView,
            iconImageView,
            welcomeLabel,
            detailsLabel,
            startButton
        ])
    }
    
    func stylizeViews() {
        view.backgroundColor = .white
        
        onboardingImageView.image = AppImage.onboardingScreen.uiImage
        onboardingImageView.frame = view.bounds
        
        iconImageView.image = AppImage.iconImage.uiImage
        
        welcomeLabel.text = "Welcome \nto our store"
        welcomeLabel.numberOfLines = 2
        welcomeLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        welcomeLabel.textColor = .white
        
        detailsLabel.numberOfLines = 1
        detailsLabel.text = "Get your groceries in as fast as one hour"
        detailsLabel.textColor = .gray
        detailsLabel.font = UIFont.systemFont(ofSize: 20)
        
        startButton.backgroundColor = AppColor.green.uiColor
        startButton.setTitle("Get started", for: .normal)
        startButton.setTitleColor(.white, for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        startButton.layer.cornerRadius = 10
        startButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        constraints += [
            iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 45),
            iconImageView.heightAnchor.constraint(equalToConstant: 55),
            iconImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 470)
        ]
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        constraints += [
            welcomeLabel.centerXAnchor.constraint(equalTo: iconImageView.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 30),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 200)
        ]
        
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        constraints += [
            detailsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailsLabel.heightAnchor.constraint(equalToConstant: 15),
            detailsLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 24)
        ]
        
        startButton.translatesAutoresizingMaskIntoConstraints = false
        constraints += [
            startButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12),
            startButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12),
            startButton.heightAnchor.constraint(equalToConstant: 65),
            startButton.topAnchor.constraint(equalTo: detailsLabel.bottomAnchor, constant: 22)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc
    func buttonTapped() {
        let locationVC = LocationViewController()
        navigationController?.pushViewController(locationVC, animated: true)
    }

}

