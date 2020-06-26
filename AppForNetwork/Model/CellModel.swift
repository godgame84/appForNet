//
//  CellModel.swift
//  AppForNetwork
//
//  Created by Иван Лебедев on 26.06.2020.
//  Copyright © 2020 Иван Лебедев. All rights reserved.
//

import Foundation

class CellModel {
    var textOfArticle: String
    var titleOfArticle: String
    var userID: Int
    
    init(text:String, title:String, ID: Int) {
        textOfArticle = text
        titleOfArticle = title
        userID = ID
    }
}
