//  ViewController.swift
//  InstaPage
//
//  Created by t2023-m0051 on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Properties
    private lazy var instaDesignViewController = InstaDesignViewController()
    
    private let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.backgroundColor = .systemGray6
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private let mainButton1: CustomButton = {
        let button = CustomButton(text: "Insta Design Page", backgroundColor: .systemPink)
        return button
    }()
    
    private let mainButton2: CustomButton = {
        let button = CustomButton(text: "To Do List", backgroundColor: .systemTeal)
        return button
    }()
    
    private let mainButton3: CustomButton = {
        let button = CustomButton(text: "let's go", backgroundColor: .systemIndigo)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMainLogo()
        setUI()
        setLayout()
    }
}


extension ViewController {
    private func setUI() {
        view.backgroundColor = .white
        
        [mainImage, mainButton1, mainButton2, mainButton3].forEach {
            view.addSubview($0)
        }
        
        mainButton1.addTarget(self, action: #selector(navigateToProfileDesignVC), for: .touchUpInside)
        mainButton2.addTarget(self, action: #selector(navigateToProfileVC), for: .touchUpInside)
        mainButton3.addTarget(self, action: #selector(navigateToTodoVC), for: .touchUpInside)
        
    }
    
    private func setLayout() {
        NSLayoutConstraint.activate([
            
            mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            mainImage.widthAnchor.constraint(equalToConstant: 250),
            mainImage.heightAnchor.constraint(equalToConstant: 200),
            
            mainButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainButton1.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 30),
            
            mainButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainButton2.topAnchor.constraint(equalTo: mainButton1.bottomAnchor, constant: 15),
            
            mainButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainButton3.topAnchor.constraint(equalTo: mainButton2.bottomAnchor, constant: 15),
             
        ])
    }
    
    private func setMainLogo() {
        ImageLoader.loadImage(from: "https://spartacodingclub.kr/css/images/scc-og.jpg", into: self.mainImage)
    }
}


// MARK: - Extensions : @objc method

extension ViewController {
    @objc private func navigateToProfileDesignVC() {
        self.navigationController?.pushViewController(instaDesignViewController, animated: true)
        //instaDesignViewController.modalPresentationStyle = .fullScreen
        //present(instaDesignViewController, animated: true)
    
    }
    
    @objc private func navigateToProfileVC() {
        //instaDesignViewController.viewModel = viewModel
        //present(instaDesignViewController, animated: true)
    }
    
    @objc private func navigateToTodoVC() {
        //self.navigationController?.pushViewController(instaDesignViewController, animated: true)
    }

}



#if DEBUG

import SwiftUI

struct ViewControllerPresentable : UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewControllerPresentable_PreviewProvider : PreviewProvider {
    static var previews: some View{
        ViewControllerPresentable()
            .ignoresSafeArea()
    }
}


#endif



