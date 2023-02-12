//
//  RulesView.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Алексей on 12.02.2023.
//

import UIKit

class RulesView: UIView {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var backButton: UIButton!

    static func instanceFromNib() -> RulesView {
        return UINib(nibName: "RulesView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! RulesView
    }
}
