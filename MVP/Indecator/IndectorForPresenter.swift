//
//  IndectorForPresenter.swift
//  MVP
//
//  Created by Hany Karam on 7/1/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import Foundation
import Alamofire
class ToDoIndicator{
    
    func getToDosTitles(completion: @escaping ([HomeModel]?, Error?) -> ()){
        
        let url = "https://jsonplaceholder.typicode.com/todos"
        
        Alamofire.request(url, method: .get, encoding: JSONEncoding.default).responseJSON { (response) in
            
            switch response.result{
                
            case .success(_):
                
                do{
                    
                    guard let data = response.data else {return}
                    
                    let result = try JSONDecoder().decode([HomeModel].self, from: data)
                    
                    completion(result, nil)
                    
                }catch{
                    completion(nil, error)
                }
                
            case .failure(_):
                completion(nil, response.error)
            }
            
        }
        
    }
}
