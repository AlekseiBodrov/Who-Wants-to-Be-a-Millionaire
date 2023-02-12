//
//  RepeatViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 07/02/2023.
//

import UIKit

final class StartViewController: UIViewController {

    var mainView = MainView.instanceFromNib()

    override func loadView() {
        super.loadView()
        view = mainView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        mainView.startButton.addTarget(self, action: #selector(startButtonAction), for: .touchUpInside)
        mainView.rulesButton.addTarget(self, action: #selector(rulesButtonAction), for: .touchUpInside)
    }

    @objc func startButtonAction(sender: UIButton!) {
        let viewController: RegistrationViewController = {
            let vc = RegistrationViewController()
            vc.modalPresentationStyle = .fullScreen
            return vc
        }()

        present(viewController, animated: false)
    }

    @objc func rulesButtonAction(sender: UIButton!) {
        let viewController: RulesViewController = {
            let vc = RulesViewController()
            vc.modalPresentationStyle = .fullScreen
            return vc
        }()

        present(viewController, animated: false)
    }
}
