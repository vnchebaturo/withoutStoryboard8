//
//  ViewController.swift
//  withoutStoryboard8
//
//  Created by Nikita on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {

    let background = UIImageView(image: #imageLiteral(resourceName: "1"))

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        setupConstraints()

    }
    
    private func setupConstraints() {
        background.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(background)
        NSLayoutConstraint.activate([
        background.heightAnchor.constraint(equalToConstant: 900),
        background.widthAnchor.constraint(equalToConstant: 415),
        background.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
        background.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
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
