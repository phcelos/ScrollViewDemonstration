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
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        view.axis = .vertical
        return view
    }()
    
    private let numbersLabel1: UILabel = {
        let view = UILabel()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.numberOfLines = 0
        view.textAlignment = .center
        view.text = NumbersTextGenerator.generateNumbersText(until: 15)
        return view
    }()
    
    private let numbersLabel2: UILabel = {
        let view = UILabel()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.numberOfLines = 0
        view.textAlignment = .center
        view.text = NumbersTextGenerator.generateNumbersText(until: 20)
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
        scrollView.addSubview(stackView)
        
        stackView.addArrangedSubview(numbersLabel1)
        stackView.addArrangedSubview(numbersLabel2)
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
        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
}
