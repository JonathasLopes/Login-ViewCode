//
//  SportCollectionView.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 02/11/23.
//

import UIKit

class SportCollectionView: UIView {
    
    lazy var imageView:UIImageView = {
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var sportName:UILabel = {
        let name = UILabel()
        
        name.translatesAutoresizingMaskIntoConstraints = false
        name.textAlignment = .center
        name.textColor = .darkGray
        
        return name
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.configImageViewConstraints()
        self.configSportNameConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.addSubview(self.imageView)
        self.addSubview(self.sportName)
    }
    
    private func configImageViewConstraints() {
        self.imageView.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
            make.bottom.equalTo(self.sportName.snp.top).inset(-10)
        }
    }
    
    private func configSportNameConstraints() {
        self.sportName.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.trailing.bottom.equalToSuperview().inset(10)
            make.height.equalTo(20)
        }
    }
}
