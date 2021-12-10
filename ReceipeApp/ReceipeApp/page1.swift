//
//  page1.swift
//  ReceipeApp
//
//  Created by DCS on 04/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class page1: UIViewController {
    
    public  let Rname:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 37)
        label.textColor = .orange
        label.text = "Delicious Recipes"
        return label
    }()
    
    private let nameTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Username"
        textField.textAlignment = .center
        textField.layer.cornerRadius = 20
        textField.layer.borderWidth = 1
        textField.textColor = .orange
        textField.layer.borderColor = UIColor.orange.cgColor
        return  textField
    }()
    
    private let addressTextView:UITextView = {
        let textView = UITextView()
        textView.text = ""
        textView.textAlignment = .center
        textView.backgroundColor = .lightGray
        return textView
    }()
    
    private let pwdTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Password"
        textField.textAlignment = .center
        textField.layer.cornerRadius = 20
        textField.layer.borderWidth = 1
        textField.textColor = .orange
        textField.layer.borderColor = UIColor.orange.cgColor
        return  textField
    }()
    
    private let loginButton:UIButton = {
        let button = UIButton()
        button.setTitle("LOGIN", for: .normal)
        button.addTarget(self, action: #selector(handleClick), for: .touchUpInside)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 20
        return button
    }()
    
    @objc func handleClick() {
        let vc = page2()
        navigationController?.pushViewController(vc, animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        self.view.backgroundColor = UIColor(patternImage:  UIImage(named: "mbg")!)
        
        view.addSubview(Rname)
        view.addSubview(nameTextField)
        view.addSubview(addressTextView)
        view.addSubview(pwdTextField)
        view.addSubview(loginButton)
        
    }
    override func viewDidLayoutSubviews() {
      
        Rname.frame = CGRect(x: 45, y: 210, width: 300, height: 43)
        nameTextField.frame = CGRect(x: 40, y: 330, width: view.width - 80, height: 43)
        pwdTextField.frame = CGRect(x: 40, y: nameTextField.bottom + 20, width: view.width - 80, height: 43)
        loginButton.frame = CGRect(x: 40, y: pwdTextField.bottom + 30, width: view.width - 80, height: 43)
    }
    


}
