//
//  MainLocationViewController.swift
//  App Groceries
//
//  Created by admin on 24.08.2022.
//

import Foundation
import UIKit

class LocationViewController: UIViewController {
    
    override func viewDidLoad() {
        addSubviews()
        stylizeView()
        setConstraints()
    }
    
    func addSubviews() {
       
    }
    
    func stylizeView() {
        view.backgroundColor = .white
        
        let backButton = UIBarButtonItem(
            image: AppImage.back.originalImage,
            style: .done,
            target: self,
            action: #selector(backButtonTapped)
        )
        navigationItem.leftBarButtonItem = backButton
    }
    
    func setConstraints() {
        
    }
    
    @objc
    func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}
