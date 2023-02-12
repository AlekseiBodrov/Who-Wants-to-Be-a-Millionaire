//
//  MainView.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Алексей on 12.02.2023.
//

import UIKit

class MainView: UIView {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var rulesButton: UIButton!
    
    static func instanceFromNib() -> MainView {
        return UINib(nibName: "MainView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MainView
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
}

