//
//  ThemeViewController.swift
//  Concentration
//
//  Created by Mauhibah Laila on 01/05/18.
//  Copyright © 2018 Laila Mauhibah. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
        "Halloween": "🎃👻☠️👽😈🤡",
        "Animals": "🐮🦁🐼🙈🐣🐈",
        "Fruits": "🍎🥑🥝🍊🍇🍉"
    ]
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }

}
