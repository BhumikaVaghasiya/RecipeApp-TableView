//
//  page2.swift
//  ReceipeApp
//
//  Created by DCS on 04/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class page2: UIViewController {

    private let myTableView = UITableView()
    private var foodArray = ["Pizza","Sushi","Burger","Veg Sandwich","Pasta","Noodles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title="Recipe's Menu"
        view.addSubview(myTableView)
        setupTableView()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
         navigationController?.setNavigationBarHidden(false, animated: true)
        myTableView.frame=CGRect(x:0,y: view.safeAreaInsets.top, width: view.frame.size.width, height: view.frame.size.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
    }
}

extension page2: UITableViewDataSource, UITableViewDelegate{
    
    private func setupTableView() {
        myTableView.dataSource=self
        myTableView.delegate=self
        myTableView.register(FoodCell.self, forCellReuseIdentifier: "FoodCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return foodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        cell.setupCityCellWith(title: foodArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(foodArray[indexPath.row])
        
        let vc = page3()
        vc.Fname.text = foodArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}




