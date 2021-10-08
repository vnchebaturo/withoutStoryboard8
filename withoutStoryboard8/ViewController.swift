//
//  ViewController.swift
//  withoutStoryboard8
//
//  Created by Nikita on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {

    let background = UIImageView(image: #imageLiteral(resourceName: "2"))

    var labelText = UILabel(text: "Начало игры. И раздача начальных 12 карт по 3 совподающих карты, можно добавлять по 3 карты в игру, но не более 24")
   // labelText.font = UIFont(name: "Ubb", size: 30)
   
    let buttonOne = UIButton(title: "Hello", backgroundColor: .black, titleColor: .white, isShadow: true)
    
    let buttonTwo = UIButton(title: "Раздать 3 карты", backgroundColor: .black, titleColor: .white, isShadow: true)
   
//    var  masButton = [StackButton(button: buttonOne), StackButton(button: buttonTwo)]
   //masButton.append(buttonOne)
    
//---------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        view.backgroundColor = .gray
        setupConstraints()

    }
//---------------------------------------------------
    private func setupConstraints() {
        //настройки фона
        background.translatesAutoresizingMaskIntoConstraints = false    //свойство подключает маску
        view.addSubview(background)
        NSLayoutConstraint.activate([
            background.heightAnchor.constraint(equalToConstant: 900),           // картинка высотой 900
            background.widthAnchor.constraint(equalToConstant: 415),            // ширина картикин
            background.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),  //крепим к верху с отступом 0
            background.centerXAnchor.constraint(equalTo: view.centerXAnchor)    //привязка в центру
        ])
        //настройки текста
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
        labelText.textColor = .white
        labelText.font = labelText.font.withSize(20)
        
        
        _ = StackButton(button: buttonOne)
        _ = StackButton(button: buttonTwo)
        //настройки кнопок
        let stackButtonView = UIStackView(arrangedSubviews: [buttonOne, buttonTwo])
        
        
        
        stackButtonView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackButtonView)
        stackButtonView.axis = .vertical
        stackButtonView.spacing = 20
        
        
        stackButtonView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:  -60).isActive = true
        stackButtonView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        //stackButtonView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40).isActive = true
        stackButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}



//MARK: SwiftUI

import SwiftUI
struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all).previewInterfaceOrientation(.portrait)  //заполнить все
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
