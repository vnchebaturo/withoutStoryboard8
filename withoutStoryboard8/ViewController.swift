//
//  ViewController.swift
//  withoutStoryboard8
//
//  Created by Nikita on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {

    //let background = UIImageView(image: )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray

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
