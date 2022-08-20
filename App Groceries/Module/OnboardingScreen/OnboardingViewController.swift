//
//  ViewController.swift
//  App Groceries
//
//  Created by Dastan Zhapay on 20.08.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    private let onboardingImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        stylizeViews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubviews([
            onboardingImageView
        ])
    }
    
    func stylizeViews() {
        //view
        view.backgroundColor = .white
        
        //onboarding Image View
        onboardingImageView.image = AppImage.onboardingScreen.uiImage
        onboardingImageView.frame = view.bounds
    }
    
    func setConstraints() {
        
    }

}

