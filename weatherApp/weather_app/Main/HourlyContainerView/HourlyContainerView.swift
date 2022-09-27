//
//  HourlyContainerView.swift
//  weather_app
//
//  Created by Deny Vorko on 20.09.2022.
//

import Foundation
import UIKit

class HourlyContainerView: UIView {

    private let layout = UICollectionViewLayout()
    private lazy var collectioView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
    }

}








    

