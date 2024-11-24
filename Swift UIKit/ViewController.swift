//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

//Recomecando o processo

class ViewController: UIViewController {
    private let customView = UIView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private func setupView() {
        view.backgroundColor = .red
        customView.backgroundColor = .blue
        customView.translatesAutoresizingMaskIntoConstraints = false
        setHierarchy()
        setConstraints()
    }
    private func setHierarchy() {
        view.addSubview(customView)    }
    private func setConstraints() {
        //Verificando o transito entre os commits
        NSLayoutConstraint.activate([
            //SafefeArea corresponde a area abaixo da camera traseira e o parte acima do botao inferior
            //ou seja a area "limpa" do iPhone
            //
            //*
            //A view utiliza a area total do iPhone
            customView.topAnchor.constraint(equalTo: view.topAnchor),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            //*/
            //
            /*
            //A area utilizada a area total do iPhone respeitando a constante topAnchor a parte superior
            //a constante leadingAnchor a lateral direita a constante trailingAnchor a lateral esquerda
            //a constante bottomAnchor a parte inferior do iPhone
            //
            customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
            */
            //
            /*
            //A area utilizada a safeArea respeitando a constante topAnchor a parte superior
            //a constante leadingAnchor a lateral direita a constante trailingAnchor a lateral esquerda
            //a constante bottomAnchor a parte inferior do iPhone
            //
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
            */
            //
            /*
            //A view utiliza a area total da safeArea
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            */
        ])
    }
}

