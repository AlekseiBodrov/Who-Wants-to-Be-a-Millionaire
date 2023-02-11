//
//  RegistrationViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 07/02/2023.
//

import UIKit

final class RegistrationViewController: UIViewController {
    
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
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your nickname"
        label.textColor = .white
        label.font = .robotoMedium24()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let nicknameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .clear
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.white.cgColor
        textField.layer.cornerRadius = 10
        textField.textColor = .white
        textField.font = .robotoBold24()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    var stackView = UIStackView()
    
    private let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialLightBlue
        button.layer.cornerRadius = 10
        button.setTitle("Register", for: .normal)
        button.titleLabel?.font = .robotoBold24()
        button.tintColor = .white
        button.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let goldImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 6")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    //MARK: - life cycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        setConstraints()
        fetchData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        backgroundImage.frame = view.bounds
    }
    
    //MARK: - flow funcs
    private func configure() {
        view.addSubview(backgroundImage)
        
        stackView = UIStackView(
            arrangedSubviews: [
                gameIconImage,
                infoLabel,
                nicknameTextField,
                registerButton
            ],
            axis: .vertical,
            spacing: 20)
        
        view.addSubview(stackView)
        view.addSubview(goldImage)
    }
    
    @objc private func registerButtonTapped() {
        // check to added nickname
        guard let text = nicknameTextField.text else { return }
        UserDefaults.standard.set(text, forKey: "InputNickname")
    }
    
    private func fetchData() {
        nicknameTextField.text = UserDefaults.standard.string(forKey: "InputNickname")
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 77),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -77),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.heightAnchor.constraint(equalToConstant: 398)
        ])
        
        NSLayoutConstraint.activate([
            nicknameTextField.heightAnchor.constraint(equalToConstant: 47)
        ])
        
        NSLayoutConstraint.activate([
            registerButton.heightAnchor.constraint(equalToConstant: 47)
        ])
        
        NSLayoutConstraint.activate([
            goldImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goldImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            goldImage.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}
