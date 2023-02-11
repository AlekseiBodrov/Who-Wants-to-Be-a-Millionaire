//
//  ScheduleViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 10/02/2023.
//

import UIKit

final class ScheduleViewController: UIViewController {

    //MARK: - let/var
    //right answer
    var heightAnswerFirst = CGFloat(Int.random(in: 50...70))
    
    //wrong answer
    var heightAnswerSecond = CGFloat(Int.random(in: 5...10))
    
    //wrong answer
    var heightAnswerThird = CGFloat(Int.random(in: 5...10))

    //wrong answer
//    heightAnswerFirst - heightAnswerSecond - heightAnswerThird
    var heightAnswerFourth = CGFloat(Int.random(in: 5...10))
    
    
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let graphicsBackground: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLightBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let answerFirst: UIView = {
        let view = UIView()
        view.backgroundColor = .specialRed
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let answerSecond: UIView = {
        let view = UIView()
        view.backgroundColor = .specialRed
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    private let answerThird: UIView = {
        let view = UIView()
        view.backgroundColor = .specialRed
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    private let answerFourth: UIView = {
        let view = UIView()
        view.backgroundColor = .specialRed
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
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
        view.addSubview(graphicsBackground)
        
        graphicsBackground.addSubview(answerFirst)
        graphicsBackground.addSubview(answerSecond)
        graphicsBackground.addSubview(answerThird)
        graphicsBackground.addSubview(answerFourth)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            graphicsBackground.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            graphicsBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            graphicsBackground.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            graphicsBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            graphicsBackground.heightAnchor.constraint(equalToConstant: 400)
        ])
        
        NSLayoutConstraint.activate([
            answerFirst.leadingAnchor.constraint(equalTo: graphicsBackground.leadingAnchor, constant: 27),
            answerFirst.bottomAnchor.constraint(equalTo: graphicsBackground.bottomAnchor, constant: -10),
            answerFirst.widthAnchor.constraint(equalToConstant: 50),
            answerFirst.heightAnchor.constraint(equalToConstant: heightAnswerFirst)
        ])
        
        NSLayoutConstraint.activate([
            answerSecond.leadingAnchor.constraint(equalTo: answerFirst.trailingAnchor, constant: 27),
            answerSecond.bottomAnchor.constraint(equalTo: graphicsBackground.bottomAnchor, constant: -10),
            answerSecond.widthAnchor.constraint(equalToConstant: 50),
            answerSecond.heightAnchor.constraint(equalToConstant: heightAnswerSecond)
        ])

        NSLayoutConstraint.activate([
            answerThird.leadingAnchor.constraint(equalTo: answerSecond.trailingAnchor, constant: 27),
            answerThird.bottomAnchor.constraint(equalTo: graphicsBackground.bottomAnchor, constant: -10),
            answerThird.widthAnchor.constraint(equalToConstant: 50),
            answerThird.heightAnchor.constraint(equalToConstant: heightAnswerThird)
        ])
        
        NSLayoutConstraint.activate([
            answerFourth.leadingAnchor.constraint(equalTo: answerThird.trailingAnchor, constant: 27),
            answerFourth.bottomAnchor.constraint(equalTo: graphicsBackground.bottomAnchor, constant: -10),
            answerFourth.widthAnchor.constraint(equalToConstant: 50),
            answerFourth.heightAnchor.constraint(equalToConstant: heightAnswerFourth)
        ])
    }
}
