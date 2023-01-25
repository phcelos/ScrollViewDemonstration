//
//  ViewController.swift
//  ScrollViewDemonstration
//
//  Created by Paulo Henrique on 25/01/23.
//

import UIKit

class ViewController: UIViewController {
    private let mainVew: UIView = {
        let view = MainView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewHierarchy()
        setupConstraints()
    }
    
    private func setupViewHierarchy() {
        view.addSubview(mainVew)
    }
    
    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        mainVew.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        mainVew.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        mainVew.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        mainVew.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
    }
}

