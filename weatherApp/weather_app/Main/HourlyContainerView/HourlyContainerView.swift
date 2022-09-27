//
//  HourlyContainerView.swift
//  weather_app
//
//  Created by Deny Vorko on 20.09.2022.
//

import Foundation
import UIKit

class HourlyContainerView: UIView {
    
    private let collectionViewLayout = UICollectionViewFlowLayout()
    private lazy var collectioView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func setupViews(){
        
        addSubview(collectioView)
        collectioView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        layer.cornerRadius = 10
        clipsToBounds = true
        
        collectioView.delegate = self
        collectioView.dataSource = self
        collectioView.backgroundColor = .appBackground
        collectioView.register(HourlyCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionViewLayout.scrollDirection = .horizontal
        collectioView.showsHorizontalScrollIndicator = false
    }
    
}

extension HourlyContainerView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HourlyWeatherInfo.mock.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? HourlyCollectionViewCell else {
            return UICollectionViewCell()
        }
        let item = HourlyWeatherInfo.mock[indexPath.row]
        cell.configure(item: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.bounds.width/5
        let height: CGFloat = collectionView.bounds.height
        return CGSize(width: width, height: height)
    }

}






