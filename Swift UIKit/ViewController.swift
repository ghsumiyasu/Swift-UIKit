//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

 class ViewController: UIViewController {

     private var layout = UICollectionViewFlowLayout()

     override func viewDidLoad() {
         super.viewDidLoad()

         view.backgroundColor = .red
         layout = UICollectionViewFlowLayout()
         layout.scrollDirection = .horizontal
         layout.itemSize = CGSize(width: 67, height: 84)
         layout.sectionInset = UIEdgeInsets(top: .zero, left: 12, bottom: 0, right: 12)
         
         let myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
         myCollectionView.translatesAutoresizingMaskIntoConstraints = false
         myCollectionView.backgroundColor = .blue
         
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
