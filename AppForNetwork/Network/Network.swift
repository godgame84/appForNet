//
//  Network.swift
//  AppForNetwork
//
//  Created by Иван Лебедев on 26.06.2020.
//  Copyright © 2020 Иван Лебедев. All rights reserved.
//

import Foundation
import UIKit

struct Article:Codable {
    var posts : ArticleParts?
}

struct ArticleParts: Codable {
    var body: String?
    var title: String?
    var userId: Int?
    var id: Int?
}



class Network: URLSession {
    
    //MARK: - Private Properties
    
    private var URLstring: String
    
    // MARK: - Initialization
    
    init(URL: String) {
        
        URLstring = URL
        
    }
    
    // MARK: - Public Methods
    
    func getDataFromNetwork() {
        guard let url = URL(string: self.URLstring) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            guard let data = data else { return }
            print(data)
            
            do {
                //let json = try JSONSerialization.jsonObject(with: data, options: [])
                let json = try JSONDecoder().decode(Article.self, from: data)
                
                
                
                
                print(json)
                
            } catch {
                print(error)
            }
        }.resume()
        
        
    }
    
    func sendDataToNetwork(title: String, userID: Int, body:String) {
        guard let url = URL(string: self.URLstring) else { return }
        
        var request = URLRequest(url: url)
        let parameters = ["title": title, "body": body, "userId": userID] as [String : Any]
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {return}
        request.httpBody = httpBody
        
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            guard let data = data else {return}
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch  {
                print(error)
            }
        }.resume()
    }
}
