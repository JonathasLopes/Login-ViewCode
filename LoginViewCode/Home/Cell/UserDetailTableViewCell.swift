//
//  UserDatailTableViewCell.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 26/10/23.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    static let identifier:String = "UserDatailTableViewCell"
    
    lazy var userDetailView:UserDetailView = {
        let view = UserDetailView()
        
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        self.configDescriptionCellConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.contentView.addSubview(self.userDetailView)
    }
    
    public func setUpDataCell(data: DataUser) {
        self.userDetailView.nameLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func configDescriptionCellConstraints(){
        self.userDetailView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
