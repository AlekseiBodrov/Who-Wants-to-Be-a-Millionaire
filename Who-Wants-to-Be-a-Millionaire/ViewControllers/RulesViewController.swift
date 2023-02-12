//
//  RulesViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 11.02.2023.
//

import UIKit

final class RulesViewController: UIViewController {
    var mainView = RulesView.instanceFromNib()

   override func loadView() {
       super.loadView()
       view = mainView
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        mainView.backButton.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        mainView.label.text = LicenseText.multiLineStringRulesList
        mainView.label.numberOfLines = 0
    }

    @objc func backButtonAction(sender: UIButton!) {
        dismiss(animated: false)
    }
}
