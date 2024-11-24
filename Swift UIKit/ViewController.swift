//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController {
    private let myUIImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        myUIImageView.translatesAutoresizingMaskIntoConstraints = false
        myUIImageView.image = UIImage(named: "mySun")
        myUIImageView.contentMode = .scaleAspectFit
        //
        view.addSubview(myUIImageView)
        //
        NSLayoutConstraint.activate([
            myUIImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            myUIImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            myUIImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            myUIImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300)
        ])
    }


}

