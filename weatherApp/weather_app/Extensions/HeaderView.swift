//
//  HeaderView.swift
//  weather_app
//
//  Created by Deny Vorko on 02.09.2022.
//

import Foundation

extension HeaderView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    private let collectionViewLayout = UICollectionViewLayout()
    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)

    collectionView.delegate = self
    collectionView.dataSource = self

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
}
