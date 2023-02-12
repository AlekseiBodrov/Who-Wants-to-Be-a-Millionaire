//
//  RegistrationViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 07/02/2023.
//

import UIKit

final class RegistrationViewController: UIViewController {
    var mainView = RegistrationView.instanceFromNib()

   override func loadView() {
       super.loadView()
       view = mainView
   }
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        mainView.textField.text = "adasdas"
        mainView.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }

    @objc func buttonAction(sender: UIButton!) {
        let viewController: GameViewController = {
            let vc = GameViewController()
            vc.modalPresentationStyle = .fullScreen
            return vc
        }()

        present(viewController, animated: false)
    }
}
