//
//  GameViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 11.02.2023.
//

import UIKit

final class GameViewController: UIViewController {
    var mainView = GameView.instanceFromNib()

   override func loadView() {
       super.loadView()
       view = mainView
   }

}
