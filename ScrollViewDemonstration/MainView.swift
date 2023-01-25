//
//  MainView.swift
//  ScrollViewDemonstration
//
//  Created by Paulo Henrique on 25/01/23.
//

import UIKit

class MainView: UIView {
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private let numbersLabel1: UILabel = {
        let view = UILabel()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.numberOfLines = 0
        view.textAlignment = .center
        view.text = NumbersTextGenerator.generateNumbersText(until: 10)
        return view
    }()
    
    private let numbersLabel2: UILabel = {
        let view = UILabel()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.numberOfLines = 0
        view.textAlignment = .center
        view.text = NumbersTextGenerator.generateNumbersText(until: 15)
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .green
        
        setupViewHierarchy()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewHierarchy() {
        addSubview(scrollView)
        scrollView.addSubview(numbersLabel1)
        scrollView.addSubview(numbersLabel2)
    }
    
    private func setupConstraints() {
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        /**
         This line is the key.
         
         If you do not set the contentView's width, doesn't matter if you had setup leading and trailing constraints, the contentView won't be centtered and won't have the correct size.
         */
        numbersLabel1.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        numbersLabel1.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        numbersLabel1.bottomAnchor.constraint(equalTo: numbersLabel2.topAnchor).isActive = true
        numbersLabel1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        numbersLabel2.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        numbersLabel2.topAnchor.constraint(equalTo: numbersLabel1.bottomAnchor).isActive = true
        numbersLabel2.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        numbersLabel2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }
}
