//
//  RepeatViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 07/02/2023.
//

import UIKit

final class RepeatViewController: UIViewController {

    //MARK: - let/var
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let gameIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let infoLoseLabel: UILabel = {
        let label = UILabel()
        label.text = "You losed on {attempt} attempt"
        label.textColor = .white
//        label.font = .robotoMedium24()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let loseLabel: UILabel = {
        let label = UILabel()
        label.text = "LOSE"
        label.textColor = .red
//        label.font = .syneRegular50()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var stackView = UIStackView()
    
    private let playAgainButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        button.setTitle("PLAY AGAIN", for: .normal)
//        button.titleLabel?.font = .robotoMedium36()
        button.tintColor = .white
        button.addTarget(RepeatViewController.self, action: #selector(playAgainButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //MARK: - life cycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        setConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        backgroundImage.frame = view.bounds
    }
    
    //MARK: - flow funcs
    private func configure() {
        view.addSubview(backgroundImage)
//        
//        stackView = UIStackView(
//            arrangedSubviews: [gameIconImage, infoLoseLabel, loseLabel],
//            axis: .vertical,
//            spacing: 10)
        
        view.addSubview(stackView)
        
        view.addSubview(playAgainButton)
    }
    
    @objc private func playAgainButtonTapped() {
        print("playAgainButtonTapped")
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            playAgainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 62),
            playAgainButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            playAgainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -62),
            playAgainButton.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
