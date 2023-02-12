//
//  RegistrationView.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Алексей on 12.02.2023.
//

import UIKit

class RegistrationView: UIView {


    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    static func instanceFromNib() -> RegistrationView {
        return UINib(nibName: "RegistrationView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! RegistrationView
    }
}

