//
//  ChooseQuestionView.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Kazakov Danil on 06.02.2023.
//

import UIKit

class ChooseQuestionView: UIView {

    let contentView = UIView(frame: .zero)
    
    let backgroundView: UIImageView = {
        let backgroundView = UIImageView()
        backgroundView.image = UIImage(named: "BG")
        
        return backgroundView
    }()
    
    lazy var logoView: UIImageView = {
        let logoView = UIImageView()
        logoView.frame.size = CGSize(width: 81.5, height: 65.61)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.image = UIImage(named: "Image")
        
        return logoView
    }()
    
    lazy var textFieldsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 5.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let firstQuestion = QuestionButton(image: UIImage(named: "First"))
    let secondQuestion = QuestionButton(image: UIImage(named: "Question"))
    let thirdQuestion = QuestionButton(image: UIImage(named: "Question"))
    let fourthQuestion = QuestionButton(image: UIImage(named: "Question"))
    let fifthQuestion = QuestionButton(image: UIImage(named: "NotBurnedQuestion"))
    let sixthQuestion = QuestionButton(image: UIImage(named: "Question"))
    let sevenQuestion = QuestionButton(image: UIImage(named: "Question"))
    let eightQuestion = QuestionButton(image: UIImage(named: "Question"))
    let nineQuestion = QuestionButton(image: UIImage(named: "Question"))
    let tenQuestion = QuestionButton(image: UIImage(named: "NotBurnedQuestion"))
    let elevenQuestion = QuestionButton(image: UIImage(named: "Question"))
    let twelfthQuestion = QuestionButton(image: UIImage(named: "Question"))
    let thirteenQuestion = QuestionButton(image: UIImage(named: "Question"))
    let fourteenthQuestion = QuestionButton(image: UIImage(named: "Question"))
    let fifteenthQuestion = QuestionButton(image: UIImage(named: "MillionQuestion"))
    
    override init(frame: CGRect = CGRect.zero) {
        super.init(frame: frame)
        
        layoutIfNeeded()
        updateConstraintsIfNeeded()
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        commonInit()
        addViews()
        addInformationToLabels()
    }
    
    func addViews() {
        contentView.addSubview(logoView)
        contentView.addSubview(textFieldsStackView)
        
        [firstQuestion, secondQuestion,
         thirdQuestion, fourthQuestion,
         fifthQuestion, sixthQuestion,
         sevenQuestion, eightQuestion,
         nineQuestion, tenQuestion,
         elevenQuestion, twelfthQuestion,
         thirteenQuestion, fourteenthQuestion,
         fifteenthQuestion].reversed().forEach {
            textFieldsStackView.addArrangedSubview($0)
        }
        
    }
    
    func addInformationToLabels() {
        
        [firstQuestion, secondQuestion,
         thirdQuestion, fourthQuestion,
         fifthQuestion, sixthQuestion,
         sevenQuestion, eightQuestion,
         nineQuestion, tenQuestion,
         elevenQuestion, twelfthQuestion,
         thirteenQuestion, fourteenthQuestion,
         fifteenthQuestion].forEach { $0.questionLabel.text = "вопрос 1" }
        
        [firstQuestion, secondQuestion,
         thirdQuestion, fourthQuestion,
         fifthQuestion, sixthQuestion,
         sevenQuestion, eightQuestion,
         nineQuestion, tenQuestion,
         elevenQuestion, twelfthQuestion,
         thirteenQuestion, fourteenthQuestion,
         fifteenthQuestion].forEach { $0.priceLabel.text = "500.000 ₽" }
        
    }
    
    func commonInit() {
        addSubview(contentView)
        contentView.addSubview(backgroundView)
        
        contentView.frame = self.bounds
        backgroundView.frame = contentView.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ChooseQuestionView {
    override func updateConstraintsIfNeeded() {
        super.updateConstraintsIfNeeded()
        
        NSLayoutConstraint.activate([
            //MARK: - LOGO
            logoView.topAnchor.constraint(
                equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10
            ),
            logoView.centerXAnchor.constraint(
                equalTo: contentView.centerXAnchor
            ),
            logoView.widthAnchor.constraint(equalToConstant: 101),
            logoView.heightAnchor.constraint(equalToConstant: 101),
            
            //MARK: - TEXTFIELD
            textFieldsStackView.centerXAnchor.constraint(
                equalTo: logoView.centerXAnchor
            ),
            textFieldsStackView.topAnchor.constraint(
                equalTo: logoView.bottomAnchor, constant: 13.39
            ),
            textFieldsStackView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor, constant: 42
            ),
            textFieldsStackView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -42
            ),
            textFieldsStackView.bottomAnchor.constraint(
                equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
