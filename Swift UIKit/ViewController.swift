//
//  ViewController.swift
//  Swift UIKit
//
//  Created by Desenvolvimento on 2024/10/29.
//

import UIKit

class ViewController: UIViewController {
    private let customView = UIView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private func setupView() {
        view.backgroundColor = UIColor.red
        customView.backgroundColor = .black
        customView.translatesAutoresizingMaskIntoConstraints = false
        setHierarchy()
        setConstraints()
    }
    private func setHierarchy() {
        view.addSubview(customView)    }
    private func setConstraints() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])    }
}

