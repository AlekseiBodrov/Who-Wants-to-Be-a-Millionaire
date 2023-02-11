//
//  ChooseQuestionViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Kazakov Danil on 06.02.2023.
//

import UIKit

class ChooseQuestionViewController: UIViewController {

    let contentView = ChooseQuestionView()
    
    override func loadView() {
        self.view = ChooseQuestionView(frame: UIScreen.main.bounds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
