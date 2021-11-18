//
//  FeedViewController.swift
//  VK
//
//  Created by admin on 11/18/21.
//

import UIKit

class FeedViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIManager.shared.getPost(id: "post1", imageId: "1") { result1 in
            self.posts.append(result1!)
            APIManager.shared.getPost(id: "post2", imageId: "2") { result2 in
                self.posts.append(result2!)
                APIManager.shared.getPost(id: "post3", imageId: "3") { result3 in
                    self.posts.append(result3!)
                    APIManager.shared.getPost(id: "post4", imageId: "4") { result4 in
                        self.posts.append(result4!)
                        APIManager.shared.getPost(id: "post5", imageId: "5") { result5 in
                            self.posts.append(result5!)
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                            }
                        }
                    }
                }
            }
        }
    }
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedTableViewCell
        cell.postName.text = posts[indexPath.row].name
        cell.postDate.text = posts[indexPath.row].date
        cell.postText.text = posts[indexPath.row].text
        cell.postImage.image = posts[indexPath.row].image
        return cell
    }
    
    
}
