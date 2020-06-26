//
//  CollectionCell.swift
//  AppForNetwork
//
//  Created by Иван Лебедев on 24.06.2020.
//  Copyright © 2020 Иван Лебедев. All rights reserved.
//


import UIKit

class CollectionCell: UICollectionViewCell{
    
    @IBOutlet weak var articleViewCell: UIView!
    @IBOutlet weak var titleOfArticle: UILabel!
    @IBOutlet weak var textFromArticle: UILabel!
    @IBOutlet weak var AuthorsID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        articleViewCell.layer.cornerRadius = 20
        articleViewCell.layer.masksToBounds = true
        articleViewCell.layer.borderWidth = 4
        articleViewCell.layer.borderColor = #colorLiteral(red: 0.7502356172, green: 0.9140889645, blue: 1, alpha: 1)
    }
    
}



