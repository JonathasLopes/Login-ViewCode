//
//  UserDatailView.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 31/10/23.
//

import UIKit

class UserDetailView: UIView {
    
    lazy var userImageView:UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.configUserImageViewConstraints()
        self.configNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.addSubview(self.userImageView)
        self.addSubview(self.nameLabel)
    }
    
    //    private func setUpConstraints() {
    //        NSLayoutConstraint.activate([
    //            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
    //            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
    //            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
    //            self.userImageView.widthAnchor.constraint(equalToConstant: 80),
    //
    //            self.nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
    //            self.nameLabel.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 20),
    //        ])
    //    }
    
    func configUserImageViewConstraints() {
        self.userImageView.snp.makeConstraints { make in
            make.centerY.leading.equalToSuperview()
            make.height.width.equalTo(80)
        }
    }
    
    func configNameLabelConstraints() {
        self.nameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.userImageView.snp.trailing).offset(20)
        }
    }
    
}
