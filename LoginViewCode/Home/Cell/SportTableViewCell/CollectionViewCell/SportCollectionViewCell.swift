//
//  SportCollectionViewCell.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 02/11/23.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    static let identifier:String = "SportCollectionViewCell"
    
    let sportCollectionView:SportCollectionView = SportCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.configSportCollectionViewConstraints()
    }
    
    public func setUpCell(data:Sport){
        self.sportCollectionView.imageView.image = UIImage(named: data.nameImage)
        self.sportCollectionView.sportName.text = data.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.sportCollectionView.layer.borderWidth = 6.0
        self.sportCollectionView.layer.borderColor = UIColor.blue.cgColor
        self.sportCollectionView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportCollectionView)
    }
    
    private func configSportCollectionViewConstraints() {
        self.sportCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
