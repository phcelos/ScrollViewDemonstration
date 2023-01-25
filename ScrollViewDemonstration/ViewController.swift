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
        mainVew.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainVew.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainVew.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainVew.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

