//
//  DetailsViewController.swift
//  Dictionary
//
//  Created by Андрей Сергиенко on 09.10.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet private weak var englishLabel: UILabel!
    @IBOutlet private weak var russianLabel: UILabel!
    
    var word: Word?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        englishLabel.text = word?.englishWord
        russianLabel.text = word?.translate
    }
}
