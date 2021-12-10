//
//  page3.swift
//  ReceipeApp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class page3: UIViewController {
    
   
    public  let Fname:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.layer.cornerRadius = 25
        label.layer.masksToBounds = true
        label.backgroundColor = .orange
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private let DecLable:UILabel = {
       let label = UILabel()
        label.text = "Ingrediens:\nRed Onion\nRedPappers\nTomatoes\nOlive Oil \nGarlic\n\nMethod: \n1 Cut thr onion,red pappers and bascon into small pieces.\n2 Heat some olive oil in ap pan and try the oninon,red pappers and bascon.\n3 Add oagano,garlic,tomatoes and water and cook for 20 minutes."
        label.numberOfLines = 30
        return label
    }()
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationController?.setNavigationBarHidden(false, animated: true)
        view.backgroundColor = .white
        view.addSubview(myImageView)
        view.addSubview(Fname)
        myImageView.image = UIImage(named: Fname.text!)
        view.addSubview(DecLable)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myImageView.frame = CGRect(x: 10, y: 80, width: 355, height: 300)
        Fname.frame = CGRect(x: 10, y: myImageView.height + 90, width: 355, height: 45)
        DecLable.frame = CGRect(x: 11, y: 335, width: view.width - 20, height: 500)
       
    }
    
    

}
