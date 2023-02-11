//
//  QuestionField.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Kazakov Danil on 06.02.2023.
//

import UIKit

class QuestionButton: UIButton {
    
    let questionLabel = UILabel()
    let priceLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame.size = CGSize(width: 321, height: 34.82)
    }
    
    convenience init(image: UIImage?) {
        self.init(frame: .zero)

        guard let buttonImage = image else { return }
        
        self.setImage(buttonImage, for: .normal)
        
        self.addQuestionLabel()
        self.addPriceLabel()
        
    }
    
    func addQuestionLabel() {
        questionLabel.frame = CGRect(
            x: 15,
            y: 3,
            width: self.frame.width / 2,
            height: self.frame.height / 1.5
        )
        
        questionLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        questionLabel.textAlignment = .left
        questionLabel.textColor = .white
        
        self.addSubview(questionLabel)
    }
    
    func addPriceLabel() {
        priceLabel.frame = CGRect(
            x: self.frame.size.width - 150,
            y: 5,
            width: self.frame.width / 2,
            height: self.frame.height / 1.5
        )
        
        priceLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        priceLabel.textAlignment = .center
        priceLabel.textColor = .white
        
        self.addSubview(priceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
