//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Forma de representar o indentificador atravez de uma string onde o mesmo deve ser
        //refenciado na definicao da variavel instanciada da UITableView
        //let myCell = tableView.dequeueReusableCell(withIdentifier: "myIndentifier", for: indexPath)
        let myCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.myIndentifier, for: indexPath)
        return myCell
    }
    private var myTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.backgroundColor = .blue
        myTableView.dataSource = self
        myTableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.myIndentifier)
        
        view.addSubview(myTableView)
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }


}


/*
 class ViewController: UIViewController, UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 10
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         //Forma de representar o indentificador atravez de uma string onde o mesmo deve ser
         //refenciado na definicao da variavel instanciada da UITableView
         //let myCell = tableView.dequeueReusableCell(withIdentifier: "myIndentifier", for: indexPath)
         let myCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.myIndentifier, for: indexPath)
         return myCell
     }
     
     private lazy var myTableView:UITableView = {
         let table = UITableView()
         table.translatesAutoresizingMaskIntoConstraints = false
         table.backgroundColor = .blue
         table.dataSource = self
         //O indentificador referenciado pela string "myIndentififier"
         //table.register(MyTableViewCell.self, forCellReuseIdentifier: "myIndentifier")
         table.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.myIndentifier)
         return table
     }()

     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .red
         view.addSubview(myTableView)
         NSLayoutConstraint.activate([
             myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
             myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             myTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
         ])
     }


 }
 */
