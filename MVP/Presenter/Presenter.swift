//
//  Presenter.swift
//  MVP
//
//  Created by Hany Karam on 7/1/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit
protocol getToDos {
    func showHud()
    func HideHud()
    func getDataSuccessfully()
    func showError(error: String)
    
}
protocol reloadCellTitles {
    func reloadTitle(title: String)
}
class Presenter {
    private var view: getToDos?
    private var toDoIndicator = ToDoIndicator()
    private var todos = [HomeModel]()
    init(view: getToDos) {
        self.view = view
    }
    func getToDos(){
        view?.showHud()
        toDoIndicator.getToDosTitles { [weak self] (titles, error) in
            self?.view?.HideHud()
            print(titles ?? "")
            if error != nil{
                return
            }
            guard let todos = titles else {return}
            self?.todos = todos
            
            self?.view?.getDataSuccessfully()
        }
    }
    func titlesCount() -> Int{
        return todos.count
    }
    func reloadTitles(cell: reloadCellTitles, index: Int){
        cell.reloadTitle(title: todos[index].title ?? "")
    }
}
