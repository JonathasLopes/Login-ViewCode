//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 26/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    var homeScreen:HomeScreen?
    var data:[DataUser] = [
        DataUser(name: "Jonathas", nameImage: "menino2"),
        DataUser(name: "João", nameImage: "menino1"),
        DataUser(name: "Bianca", nameImage: "menina1")
    ]
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        
        cell?.setUpDataCell(data: self.data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
