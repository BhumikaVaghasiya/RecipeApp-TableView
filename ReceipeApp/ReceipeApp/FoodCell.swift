//
//  CityCell.swift
//  MyTableView
//
//  Created by DCS on 26/11/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    
    //step 1
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        return imageView
    }()
    private let myLabel:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.layer.cornerRadius = 15
        label.layer.masksToBounds = true
        label.backgroundColor = .orange
        label.textColor = .white
        label.textAlignment = .center
       
        label.numberOfLines = 2
        return label
    }()
    
    
    //step 2
    func setupCityCellWith(title name: String){
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        
        myImageView.frame = CGRect(x: 6, y:4, width: 360, height: 230)
        myLabel.frame = CGRect(x: myImageView.left + 20, y: myImageView.top + 95, width: 75, height: 45 )
        
        myImageView.image = UIImage(named: name)
        myLabel.text = name
    }
}

