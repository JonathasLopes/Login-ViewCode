//
//  SportTableViewCell.swift
//  LoginViewCode
//
//  Created by Jonathas Lopes on 31/10/23.
//

import UIKit

class SportTableViewCell: UITableViewCell {

    static let identifier:String = "SportTableViewCell"
    
    var sportTableView:SportTableView = SportTableView()
    var data:[Sport] = []

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        self.configSportTableViewConstraints()
        self.sportTableView.configProtocolsToCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.sportTableView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportTableView)
    }
    
    private func configSportTableViewConstraints(){
        self.sportTableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    public func dataCollection(data: [Sport]) {
        self.data = data
    }
}

extension SportTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:SportCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: SportCollectionViewCell.identifier, for: indexPath) as? SportCollectionViewCell
        
        cell?.setUpCell(data: self.data[indexPath.row])
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 100)
    }
    
}
