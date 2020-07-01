//
//  ViewController.swift
//  MVP
//
//  Created by Hany Karam on 7/1/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var HomeTV: UITableView!
    var presenter: Presenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: self)
        presenter.getToDos()

    }


}
extension HomeVC:getToDos{
    func showHud() {
        Hud.show()
    }
    
    func HideHud() {
        Hud.dismiss()
    }
    
    func getDataSuccessfully() {
      HomeTV.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
    
    
}
extension HomeVC:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return presenter.titlesCount()
      
   }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
      presenter.reloadTitles(cell: cell, index: indexPath.row)

        return cell
    }
    
    
}
