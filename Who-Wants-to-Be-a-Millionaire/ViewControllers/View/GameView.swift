//
//  GameView.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Алексей on 12.02.2023.
//

import UIKit

class GameView: UIView {

    @IBOutlet weak var timerLabel: UILabel!

    @IBOutlet weak var questiansLabel: UILabel!

    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelC: UILabel!
    @IBOutlet weak var labelD: UILabel!


    static func instanceFromNib() -> GameView {
        return UINib(nibName: "GameView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! GameView
    }
}
