//
//  DataManager.swift
//  Dictionary
//
//  Created by Андрей Сергиенко on 09.10.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import Foundation

final class DataManager {
    static let instance = DataManager()
    private init() { }
    private (set) var newWords: [Word] = []
    
    func addWord(_ word: Word) {
        newWords.append(word)
    }
}
