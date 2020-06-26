//
//  CellViewModel.swift
//  AppForNetwork
//
//  Created by Иван Лебедев on 24.06.2020.
//  Copyright © 2020 Иван Лебедев. All rights reserved.
//

import Foundation
import UIKit

class CellViewModel{
    
    private var network = Network(URL: "https://jsonplaceholder.typicode.com/posts/1")
    private var cell : CellModel?
    
    func createCell() {
        
        network.getDataFromNetwork()
        
    }
    
}
