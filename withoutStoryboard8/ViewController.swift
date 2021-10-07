//
//  ViewController.swift
//  withoutStoryboard8
//
//  Created by Nikita on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {

    let background = UIImageView(image: #imageLiteral(resourceName: "1"))

    let labelText = UILabel(text: "Начало игры. И раздача начальных 12 карт по 3 совподающих карты")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelText.textColor = .red
        view.backgroundColor = .gray
        setupConstraints()

    }
    
    private func setupConstraints() {
        background.translatesAutoresizingMaskIntoConstraints = false    //свойство подключает маску
        view.addSubview(background)
        NSLayoutConstraint.activate([
            background.heightAnchor.constraint(equalToConstant: 900),           // картинка высотой 900
            background.widthAnchor.constraint(equalToConstant: 415),            // ширина картикин
            background.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),  //крепим к верху с отступом 0
            background.centerXAnchor.constraint(equalTo: view.centerXAnchor)    //привязка в центру
        ])
        
        labelText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelText)
        NSLayoutConstraint.activate([                               //включает constreint
            labelText.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            labelText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelText.heightAnchor.constraint(equalToConstant: 500),
            labelText.widthAnchor.constraint(equalToConstant: 350)
        ])
        labelText.numberOfLines = 0
        labelText.textAlignment = .justified
    }
}

import SwiftUI
struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)  //заполнить все
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = ViewController()
        
        func makeUIViewController(context: Context) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
