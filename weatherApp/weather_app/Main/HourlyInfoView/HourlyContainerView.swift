//
//  HourlyContainerView.swift
//  weather_app
//
//  Created by Deny Vorko on 20.09.2022.
//

import Foundation
import UIKit

class HourlyContainerView: UIView {

    var oneMass = UILabel()
    var twoMass = UILabel()
    
    var mass = [UILabel]()

    let labelOne: UILabel = {
        let label = UILabel()
        label.text = "Now"
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelTwo: UILabel = {
        let label = UILabel()
        label.text = "Scroll Bottom"
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .cyan
        return v
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        // add the scroll view to self.view
        addSubview(scrollView)

        // add labelOne to the scroll view
        scrollView.addSubview(labelOne)
        
        // add labelTwo to the scroll view
        scrollView.addSubview(labelTwo)
        
        // always a good idea to respect safe area
        let safeG = safeAreaLayoutGuide
        
        // we want to constrain subviews to the scroll view's Content Layout Guide
        let contentG = scrollView.contentLayoutGuide
        
        NSLayoutConstraint.activate([
            
            // constrain the scroll view to safe area with 8-pts on each side
            scrollView.topAnchor.constraint(equalTo: safeG.topAnchor, constant: 8.0),
            scrollView.leadingAnchor.constraint(equalTo: safeG.leadingAnchor, constant: 8.0),
            scrollView.trailingAnchor.constraint(equalTo: safeG.trailingAnchor, constant: -8.0),
            scrollView.bottomAnchor.constraint(equalTo: safeG.bottomAnchor, constant: -8.0),
            
            // constrain labelOne to leading & top of Content Layout Guide with 16-pts padding
            // this also defines the left & top of the scroll content
            labelOne.topAnchor.constraint(equalTo: contentG.topAnchor, constant: 16.0),
            labelOne.leadingAnchor.constraint(equalTo: contentG.leadingAnchor, constant: 16.0),

            // constrain labelTwo leading at 400-pts from labelOne trailing
            labelTwo.leadingAnchor.constraint(equalTo: labelOne.trailingAnchor, constant: 400.0),
            
            // constrain labelTwo top at 1000-pts from the labelOne bottom
            //labelTwo.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 1000),
            
            // constrain labelTwo to trailing & bottom of Content Layout Guide with 16-pts padding
            // this also defines the right & bottom of the scroll content
            labelTwo.trailingAnchor.constraint(equalTo: contentG.trailingAnchor, constant: -16.0),
            labelTwo.bottomAnchor.constraint(equalTo: contentG.bottomAnchor, constant: -16.0),
            
        ])
        
    }

}








    

