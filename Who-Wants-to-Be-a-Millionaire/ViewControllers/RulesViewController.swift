//
//  RulesViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 11.02.2023.
//

import UIKit

class RulesViewController: UIViewController {
 
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    private let footerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image 5")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
 
    private let mainLabel: UILabel = {
        var licenseText = LicenseText()
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.robotoMedium24()
        label.text = licenseText.mainTitle
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let rulesListScrollView: UIScrollView = {
        let rulesList = UIScrollView()
        rulesList.backgroundColor = .white
        rulesList.layer.borderWidth = 5
        rulesList.layer.borderColor = UIColor.specialGold.cgColor
        rulesList.translatesAutoresizingMaskIntoConstraints = false
        return rulesList
    }()
    
    
    private let rulesTextLabel: UILabel = {
        var licenseText = LicenseText()
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.robotoMedium18()
        label.numberOfLines = 0
        label.text = licenseText.multiLineStringRulesList
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    @objc private var gotItButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("I GOT IT !", for: .normal)
        button.titleLabel?.font = UIFont.robotoBold20()
        button.tintColor = .white
        button.backgroundColor = UIColor.specialGreen
        button.addTarget(self, action: #selector(gotItButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc private func gotItButtonTapped() {
        // TODO: - Navigate back to main screen
    }
    
   // MARK: - Life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        backgroundImageView.frame = view.bounds
    }
    
// MARK: - Global setup for Views
    private func setupViews(){
        view.addSubview(backgroundImageView)
        view.addSubview(footerImageView)
        view.addSubview(rulesListScrollView)
        view.addSubview(mainLabel)
        view.addSubview(gotItButton)
        view.addSubview(rulesTextLabel)
        rulesListScrollView.addSubview(rulesTextLabel)
    }
}

// MARK: - Settings on Constrains
extension RulesViewController {
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            footerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            footerImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            footerImageView.heightAnchor.constraint(equalToConstant: 225),
            
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            mainLabel.heightAnchor.constraint(equalToConstant: 100),
            
            rulesListScrollView.topAnchor.constraint(equalTo: mainLabel.topAnchor, constant: 100),
            rulesListScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            rulesListScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            rulesListScrollView.bottomAnchor.constraint(equalTo: gotItButton.topAnchor, constant: -30),
            
            gotItButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            gotItButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            gotItButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            gotItButton.heightAnchor.constraint(equalToConstant: 50),
            
            rulesTextLabel.topAnchor.constraint(equalTo: rulesListScrollView.topAnchor, constant: 20),
            rulesTextLabel.leadingAnchor.constraint(equalTo: rulesListScrollView.leadingAnchor, constant: 7),
            rulesTextLabel.trailingAnchor.constraint(equalTo: rulesListScrollView.trailingAnchor, constant: -7),
            rulesTextLabel.bottomAnchor.constraint(equalTo: rulesListScrollView.bottomAnchor, constant: -10),
            rulesTextLabel.widthAnchor.constraint(equalTo: rulesListScrollView.widthAnchor, constant: -20)
        ])
    }
}
