//
//  ViewController.swift
//  AppForNetwork
//
//  Created by Иван Лебедев on 24.06.2020.
//  Copyright © 2020 Иван Лебедев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - private properties
    
    private var cellViewModel = CellViewModel()

    
    // MARK: - IBOutlets
    @IBOutlet weak var collectionCellsView: UICollectionView!{
        didSet{
            
            collectionCellsView.delegate = self
            collectionCellsView.dataSource = self
            
            
        }
    }
    
    // MARK: - IBActions
    @IBAction func addArticleButton(_ sender: UIButton) {
        
        cellViewModel.createCell()
        
    }
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "articleCellIdentifier", for: indexPath) as? CollectionCell else {
                return UICollectionViewCell()
            }
            cell.titleOfArticle.text = "ffsdf"
            cell.AuthorsID.text = "35"
            cell.textFromArticle.text = "asdfasdfasdfasdfasdfasdfasdfasd"
            return cell
        }
    }
    
    


