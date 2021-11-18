//
//  SearchViewController.swift
//  VK
//
//  Created by admin on 11/18/21.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchTableViewCell
        switch indexPath.row {
             case 0:
                 cell.pic1.image = UIImage(named: "1")
                 cell.pic2.image = UIImage(named: "2")
             case 1:
                 cell.pic1.image = UIImage(named: "3")
                 cell.pic2.image = UIImage(named: "4")
             default:
                 cell.pic1.image = UIImage(named: "5")
             }
             return cell
         }
}
    
    

