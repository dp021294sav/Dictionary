//
//  NewWordViewController.swift
//  Dictionary
//
//  Created by Андрей Сергиенко on 09.10.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class NewWordViewController: UIViewController {

    @IBOutlet private weak var englishTextField: UITextField!
    @IBOutlet private weak var translateTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Новое слово"
    }

    @IBAction func savePressed(_ sender: Any) {
        guard let english = englishTextField.text, !english.isEmpty else {return}
        guard let translate = translateTextField.text, !translate.isEmpty else {return}
        let newWord = Word(englishWord: english, translate: translate)
        DataManager.instance.addWord(newWord)
        navigationController?.popViewController(animated: true)
    }
}
