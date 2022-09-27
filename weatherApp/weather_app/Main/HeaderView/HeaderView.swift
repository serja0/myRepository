//
//  HeaderView.swift
//  weather_app
//
//  Created by Deny Vorko on 30.08.2022.
//

import Foundation
import UIKit

class HeaderView: UIView {
    
    private let infoHeaderView = InfoHeaderView()
    private let sunImageView = UIImageView(image: UIImage(named: "sunny"))
    // без цього неможливо реалізувати collectionView
    private let collectionViewLayout = UICollectionViewFlowLayout()
        // жовте вікно
    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupViews(){
        
        backgroundColor = .headerBackground
        layer.cornerRadius = 20
        
        addSubview(infoHeaderView)
        infoHeaderView.snp.makeConstraints {
            $0.leading.top.equalToSuperview().offset(20)
        }
        
        addSubview(sunImageView)
        sunImageView.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.top.equalToSuperview().offset(30)
            $0.height.width.equalTo(70)
        }
        sunImageView.contentMode = .scaleAspectFill
        
    }
    
    private func setupCollectionView() {
        
        addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview().inset(20)
            $0.height.equalTo(100)
        }

        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        // зарегили нашу ячейку
        collectionView.register(ValueCollectionViewCell.self, forCellWithReuseIdentifier: "valueCell")
        
        collectionViewLayout.minimumInteritemSpacing = 0
        collectionViewLayout.sectionInset.left = 0
        collectionViewLayout.sectionInset.right = 0
        collectionViewLayout.minimumLineSpacing = 0
        
    }
}

extension HeaderView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    //скільки буде ячейок
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HeaderWeatherInfo.someInfo().count
    }
    //яких само ячейок буде(наша кастомна тут буде)
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "valueCell", for: indexPath) as? ValueCollectionViewCell else {
        return UICollectionViewCell()
    }
        let item = HeaderWeatherInfo.someInfo()[indexPath.row]
        cell.configure(info: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.bounds.width/2
        let height: CGFloat = collectionView.bounds.height/2
        return CGSize(width: width, height: height)
    }

    
}
