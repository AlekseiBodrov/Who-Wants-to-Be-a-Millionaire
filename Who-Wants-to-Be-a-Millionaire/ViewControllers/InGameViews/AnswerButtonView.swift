//
//  AsnwerButtonView.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 10.02.2023.
//

import UIKit

final class AnswerView: UIView {
    
    // MARK: - Propery list
    private let backgroundImageView = UIImageView()
    private var numberOfAnswerLabel = UILabel()
    private var answerLabel = UILabel()
    
    var isSelected: ((String) -> Void)?
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Publick methods
    func setup(index: Int, answerText: String) {
        setupAnswerLabel(with: answerText)
        setupNumberOfAnswer(index: index)
    }
    
    func makeViewCorrectState() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            // Код здесь выполнится через 5 секунд после вызова метода
            self.makeViewCorrectState()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.returnToBaseState()
            }
        }
    }
    
    func makeViewFalseState() {
        // TODO: - MAKE FASLE STATE
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            // Код здесь выполнится через 5 секунд после вызова метода
            self.makeErrorState()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.returnToBaseState()
            }
        }
    }
    
    // MARK: - Configure UI
    private func configureUI() {
        addSubViews()
        setupConstraints()
        configureBackgroundImage()
        configureNumberOfANswerLabel()
        configureAnswerLabel()
        configureTapGesutre()
    }
    
    private func addSubViews() {
        addSubview(backgroundImageView)
        addSubview(numberOfAnswerLabel)
        addSubview(answerLabel)
    }
    
    // MARK: - LABELS
    private func configureNumberOfANswerLabel() {
        numberOfAnswerLabel.textColor = .white
    }
    
    private func configureAnswerLabel() {
        answerLabel.textColor = .white
        answerLabel.textAlignment = .right
    }
    
    // MARK: - BACKGROUND IMAGE VIEW
    private func configureBackgroundImage() {
        backgroundImageView.image = UIImage(named: "AnswerButtonBackground")
    }
    
    // MARK: - STATES
    private func makeErrorState() {
        // TODO: - сделать
        backgroundColor = .red
    }
    
    private func makeCorrectState() {
        // TODO: - сделать
    }
    
    private func returnToBaseState() {
        // TODO: - сделать
        backgroundColor = .clear
    }
    
    // MARK: - SETUP LABELS
    private func setupNumberOfAnswer(index: Int) {
        switch index {
        case 0: numberOfAnswerLabel.text = "A"
        case 1: numberOfAnswerLabel.text = "B"
        case 2: numberOfAnswerLabel.text = "C"
        case 3: numberOfAnswerLabel.text = "D"
        default: break
        }
    }
        
    private func setupAnswerLabel(with answer: String) {
        answerLabel.text = answer
    }
    
    // MARK: - TAP GESURE
    private func configureTapGesutre() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onViewPressed))
        addGestureRecognizer(tapGesture)
    }
    
    @objc private func onViewPressed() {
        isSelected?(answerLabel.text ?? "")
    }
}

// MARK: - Constraints
extension AnswerView {
    
    private func setupConstraints() {
        
        numberOfAnswerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundImageView.heightAnchor.constraint(equalToConstant: 60),

            numberOfAnswerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            numberOfAnswerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            answerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            answerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
