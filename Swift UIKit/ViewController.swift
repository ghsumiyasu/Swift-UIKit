//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController {
    //
    private var myLabel01 = UILabel()
    private var myLabel01Valor = UILabel()
    private var myStackView01Horizontal = UIStackView()
    //
    private var myLabel02 = UILabel()
    private var myLabel02Valor = UILabel()
    private var myStackView02Horizontal = UIStackView()
    //
    private var myStackViewVertical = UIStackView()
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        view.backgroundColor = .red
        //
        //
        //
        //
        //
        //
        myLabel01.translatesAutoresizingMaskIntoConstraints = false
        myLabel01.text = "Label01"
        myLabel01.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        myLabel01.textColor = .yellow
        //
        myLabel01Valor.translatesAutoresizingMaskIntoConstraints = false
        myLabel01Valor.text = "LabelValor01"
        myLabel01Valor.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        myLabel01Valor.textColor = .yellow
        //
        myStackView01Horizontal.translatesAutoresizingMaskIntoConstraints = false
        myStackView01Horizontal.axis = .horizontal
        //
        myStackView01Horizontal = UIStackView(arrangedSubviews: [myLabel01, myLabel01Valor])
        //Ou as labels podem ser incluidas individualmente
        //myStackView01.addArrangedSubview(myLabel01)
        //myStackView01.addArrangedSubview(myLabel01Valor)
        //
        //
        //
        //
        //
        //
        myLabel02.translatesAutoresizingMaskIntoConstraints = false
        myLabel02.text = "Label02"
        myLabel02.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        myLabel02.textColor = .yellow
        //
        myLabel02Valor.translatesAutoresizingMaskIntoConstraints = false
        myLabel02Valor.text = "LabelValor02"
        myLabel02Valor.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        myLabel02Valor.textColor = .yellow
        //
        myStackView02Horizontal.translatesAutoresizingMaskIntoConstraints = false
        myStackView02Horizontal.axis = .horizontal
        //
        myStackView02Horizontal = UIStackView(arrangedSubviews: [myLabel02, myLabel02Valor])
        //Ou as labels podem ser incluidas individualmente
        //myStackView02.addArrangedSubview(myLabel02)
        //myStackView02.addArrangedSubview(myLabel02Valor)
        //
        myStackViewVertical = UIStackView(arrangedSubviews: [myStackView01Horizontal, myStackView02Horizontal])
        myStackViewVertical.translatesAutoresizingMaskIntoConstraints = false
        myStackViewVertical.axis = .vertical
        myStackViewVertical.spacing = 3
        myStackViewVertical.backgroundColor = .orange
        myStackViewVertical.layer.cornerRadius = 10
        myStackViewVertical.isLayoutMarginsRelativeArrangement = true
        //Quando true e possivel customizar as bordas do layout
        myStackViewVertical.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24)
        //leading - esquerda
        //trailing - direita
        //
        view.addSubview(myStackViewVertical)
        //
        NSLayoutConstraint.activate([
            myStackViewVertical.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300),
            myStackViewVertical.widthAnchor.constraint(equalToConstant: 206),
            myStackViewVertical.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
}
