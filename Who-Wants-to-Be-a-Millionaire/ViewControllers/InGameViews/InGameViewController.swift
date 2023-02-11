//
//  InGameViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 11.02.2023.
// Created By Andrey Alimov!

import UIKit

final class InGameViewController: UIViewController {
    
    // MARK: - Property list
    private var backgroundImageView = UIImageView()
    private var millionairImageView = UIImageView()
    private var questionLabel = UILabel()
    private var numberOfQuestionLabel = UILabel()
    private var pricePoolLabel = UILabel()
    private var stackForAnswerButtons = UIStackView()
    private var fivtyFivtyHelpButton = UIButton()
    private var phoneHelpButton = UIButton()
    private var peopleHelpButton = UIButton()
    
    private var questionBrain = QuestionsBrain()
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Configure UI
    private func configureUI() {
        addSubViews()
        setupConstraints()
        configureBackgroundImage()
        configureMillionaireImageVIew()
        configureQuestionLabel()
        configureNumberOfQuestionLabel()
        configurePricePoolLabel()
        configureStackForAnswerButtons()
        setupAnswersForButtons()
        configureFivtyFivtyHelpButton()
        configurePhoneHelpButton()
        configurePeopleHelpButton()
    }
    
    private func addSubViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(millionairImageView)
        view.addSubview(questionLabel)
        view.addSubview(numberOfQuestionLabel)
        view.addSubview(pricePoolLabel)
        view.addSubview(stackForAnswerButtons)
        view.addSubview(fivtyFivtyHelpButton)
        view.addSubview(peopleHelpButton)
        view.addSubview(phoneHelpButton)
    }
    
    // MARK: - BACKGROUND IMAGE
    private func configureBackgroundImage() {
        backgroundImageView.image = UIImage(named: "Frame 1")
        backgroundImageView.contentMode = .scaleAspectFill
    }
    
    // MARK: - MILLIONAIRE IMAGE VIEW
    private func configureMillionaireImageVIew() {
        millionairImageView.image = UIImage(named: "Image 1")
        millionairImageView.contentMode = .scaleAspectFill
    }
    
    // MARK: - FIVTY FIVTY HELP BUTTON
    private func configureFivtyFivtyHelpButton() {
        fivtyFivtyHelpButton.setImage(UIImage(named: "FivtyFivtyHelp"), for: .normal)
        fivtyFivtyHelpButton.addTarget(self, action: #selector(onFivtyHelpPressed), for: .touchUpInside)
    }
    
    @objc private func onFivtyHelpPressed() {
        // действия по нажатию на кнопку 50 на 50
        print("50/50 PRESSED")
    }
    
    // MARK: - PHONE HELP BUTTON
    private func configurePhoneHelpButton() {
        // TODO: - Скачать изображения, добавить в ассетс и изменить имя ниже
        phoneHelpButton.setImage(UIImage(named: "Group 30"), for: .normal)
        phoneHelpButton.addTarget(self, action: #selector(onPhoneHelpPressed), for: .touchUpInside)
    }
    
    @objc private func onPhoneHelpPressed() {
        // действия по нажатию на кнопку звонок другу
        print("PHONE PRESSED")
    }
    
    // MARK: - PEOPLE HELP BUTTON
    private func configurePeopleHelpButton() {
        // TODO: - Скачать изображения, добавить в ассетс и изменить имя ниже
        peopleHelpButton.setImage(UIImage(named: "Group 29"), for: .normal)
        peopleHelpButton.addTarget(self, action: #selector(onPeopleHelpPressed), for: .touchUpInside)
    }
    
    @objc private func onPeopleHelpPressed() {
        // действия по нажатию на кнопку помощь зала
        print("PEOPLE PRESSED")
    }
    
    // MARK: - QUESTION LABEL
    private func configureQuestionLabel() {
        questionLabel.text = "What year was the year, when first deodorant was invented in our life?" // замеоканные данные передалть, написать метод для сетапа лейблы
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .right
        questionLabel.textColor = .white
        questionLabel.font = UIFont.robotoMedium18()
    }
    
    // MARK: - NUMBER OF QUESTION LABEL
    private func configureNumberOfQuestionLabel() {
        numberOfQuestionLabel.text = "Question 1" // замеоканные данные передалть, написать метод для сетапа лейблы
        numberOfQuestionLabel.textAlignment = .left
        numberOfQuestionLabel.textColor = .white
        numberOfQuestionLabel.font = UIFont.robotoMedium24()
    }
    
    // MARK: - PRICE POOL LABEL
    private func configurePricePoolLabel() {
        pricePoolLabel.text = "500 RUB" // замеоканные данные передалть, написать метод для сетапа лейблы
        pricePoolLabel.textAlignment = .right
        pricePoolLabel.textColor = .white
        pricePoolLabel.font = UIFont.robotoMedium24()
    }
    
    // MARK: - CONFIGURE STACK FOR ANSWERS
    private func configureStackForAnswerButtons() {
        stackForAnswerButtons.axis = .vertical
        stackForAnswerButtons.spacing = 30
        stackForAnswerButtons.distribution = .fillEqually
    }
    
    // MARK: - ANSWER BUTTONS VIEW
    private func setupAnswersForButtons() {
        // просто пример пути
        let firstAnswers = questionBrain.questionLibrary.easyQuestions[0].answers
        let rightAnswer = questionBrain.questionLibrary.easyQuestions[0].rightAnswer
        
        for i in 0..<firstAnswers.count {
            let answerView = AnswerView()
            answerView.setup(index: i, answerText: firstAnswers[i])
            answerView.onViewTapped = { [weak self] answer in
                guard let self = self else { return }
                
                if answer == rightAnswer {
                    print("CORRECT")
                    answerView.makeViewCorrectState()
                } else {
                    print("FALSE")
                    answerView.makeViewFalseState()
                }
            }
            stackForAnswerButtons.addArrangedSubview(answerView)
        }
    }
}

// MARK: - Constraints
extension InGameViewController {
    
    private func setupConstraints() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        millionairImageView.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfQuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        pricePoolLabel.translatesAutoresizingMaskIntoConstraints = false
        stackForAnswerButtons.translatesAutoresizingMaskIntoConstraints = false
        fivtyFivtyHelpButton.translatesAutoresizingMaskIntoConstraints = false
        phoneHelpButton.translatesAutoresizingMaskIntoConstraints = false
        peopleHelpButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            millionairImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 19),
            millionairImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            millionairImageView.heightAnchor.constraint(equalToConstant: 87),
            millionairImageView.widthAnchor.constraint(equalToConstant: 87),
            
            questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 28),
            questionLabel.leadingAnchor.constraint(equalTo: millionairImageView.trailingAnchor, constant: 21),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -7),//
            
            numberOfQuestionLabel.topAnchor.constraint(equalTo: millionairImageView.bottomAnchor, constant: 14),
            numberOfQuestionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            numberOfQuestionLabel.heightAnchor.constraint(equalToConstant: 30),
            
            pricePoolLabel.centerYAnchor.constraint(equalTo: numberOfQuestionLabel.centerYAnchor),
            pricePoolLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27),
            
            stackForAnswerButtons.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackForAnswerButtons.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackForAnswerButtons.topAnchor.constraint(equalTo: numberOfQuestionLabel.bottomAnchor, constant: 30),
            
            fivtyFivtyHelpButton.heightAnchor.constraint(equalToConstant: 87),
            fivtyFivtyHelpButton.widthAnchor.constraint(equalToConstant: 105),
            fivtyFivtyHelpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            fivtyFivtyHelpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35),
            
            phoneHelpButton.heightAnchor.constraint(equalToConstant: 87),
            phoneHelpButton.widthAnchor.constraint(equalToConstant: 105),
            phoneHelpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneHelpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35),
            
            peopleHelpButton.heightAnchor.constraint(equalToConstant: 87),
            peopleHelpButton.widthAnchor.constraint(equalToConstant: 105),
            peopleHelpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            peopleHelpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35)
            ])
    }
}

