//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 26/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    var homeScreen:HomeScreen?
    var dataUser:[DataUser] = [
        DataUser(name: "Jonathas", nameImage: "menino2"),
        DataUser(name: "João", nameImage: "menino1"),
        DataUser(name: "Bianca", nameImage: "menina1")
    ]
    
    var dataSport:[Sport] = [
        Sport(name: "Corrida", nameImage: "corrida"),
        Sport(name: "Yoga", nameImage: "yoga"),
        Sport(name: "Ciclismo", nameImage: "ciclismo")
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
        return self.dataUser.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == self.dataUser.count {
            let cell:SportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SportTableViewCell.identifier, for: indexPath) as? SportTableViewCell
            cell?.dataCollection(data: self.dataSport)
            return cell ?? UITableViewCell()
        }
        
        let cell:UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        
        cell?.setUpDataCell(data: self.dataUser[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
