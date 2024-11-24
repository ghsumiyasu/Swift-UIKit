//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController {
    //Existem duas formas de criar uma variavel, a primeira e a forma tradicional e
    //vamos chama-la de myView01
    private let myView01 = UIView(frame: .zero)
    //
    //
    //
    //
    //Outra forma e lazy var que vamos chamar de myView02
    private lazy var myView02: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        //view sera incorporada na view myView02 com todas as propriedades
    }()
    //
    //
    //
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        // Lazy var literalmente e uma variavel preguicosa ou seja ela somente será criada na memória
        // quando invocadao objetivo e não haver desperdício de memória, mesmo o objeto sendo instanciado.
        //
        //
        //
        //
        //Aqui vamos configurar as propiedades da variavel myView01
        //Nesse caso vamos criar uma subView em cima da view padrao
        myView01.backgroundColor = .red
        //Essa funcao desabilita todas as constrains automaticas do storyboard
        //Estamos usando a forma de fazer tudo em codigo
        myView01.translatesAutoresizingMaskIntoConstraints = false
        //
        //
        //
        //
        view.addSubview(myView01)
        view.addSubview(myView02)
        NSLayoutConstraint.activate([
            myView01.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            myView01.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            myView01.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            myView01.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -600)
        ])
        //
        NSLayoutConstraint.activate([
            myView02.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            myView02.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            myView02.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            myView02.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300)
        ])
    }


}

