//
//  QuestionModel.swift
//  Simple Language
//
//  Created by David Hohl on 16.12.17.
//  Copyright © 2017 David Hohl. All rights reserved.
//

import Foundation

struct Question {
    let key: String
    let english: ( word: String, alternatives: Array<String>, fake: Array<String>)
    let german:  ( word: String, alternatives: Array<String>, fake: Array<String>)
}

extension Question {
    init?(json: [String:Any]) {
        
        guard let key = json["key"] as? String,
            let english = json["english"] as? [String: Any],
            let englishWord = english["word"] as? String,
            let englishAlternatives = english["alternatives"] as? [String],
            let englishFake = english["fake"] as? [String],
            let german = json["german"] as? [String: Any],
            let germanWord = german["word"] as? String,
            let germanAlternatives = german["alternatives"] as? [String],
            let germanFake = german["fake"] as? [String]
        
        else {
            return nil
        }
        
        self.key = key
        self.english.word = englishWord
        self.english.alternatives = englishAlternatives
        self.english.fake = englishFake
        
        self.german.word = germanWord
        self.german.alternatives = germanAlternatives
        self.german.fake = germanFake

    }
}


