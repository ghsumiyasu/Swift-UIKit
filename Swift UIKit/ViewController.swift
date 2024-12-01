//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt myIndexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.myIndentifier, for: myIndexPath)
        return myCell
    }
    //
    private var myLayout = UICollectionViewFlowLayout()
    //
    private var myLabel = UILabel()
    //
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        myLayout = UICollectionViewFlowLayout()
        myLayout.scrollDirection = .horizontal
        myLayout.itemSize = CGSize(width: 67, height: 84)
        myLayout.sectionInset = UIEdgeInsets(top: .zero, left: 12, bottom: 0, right: 12)
        // Uma UICollectionView nao pode ser instanciada com o valor nulo
        //Necessitando atribuir um valor ja nesse momento
        let myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: myLayout)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView.backgroundColor = .blue
        myCollectionView.dataSource = self
        myCollectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.myIndentifier)
        //
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "My Label"
        myLabel.textColor = .cyan
        myLabel.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        //
        view.addSubview(myCollectionView)

        NSLayoutConstraint.activate([
            myCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            myCollectionView.heightAnchor.constraint(equalToConstant: 84),
            myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
     }


 }

/*
// Codigo criado usando a variavel lazy que a primeira vista e interessante, mas pretendo estudar mais
//sobre ela, dando um atencao maior ao modo tradicional de criar variaveis, caso acima ...
class ViewController: UIViewController {
    private lazy var myCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 67, height: 84)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .blue
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(myCollectionView)
        NSLayoutConstraint.activate([
            myCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            myCollectionView.heightAnchor.constraint(equalToConstant: 84),
            myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
*/
