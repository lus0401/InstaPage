//
//  InstaDesignViewController.swift
//  InstaPage
//
//  Created by t2023-m0051 on 1/31/24.
//

import UIKit

class InstaDesignViewController: UIViewController {

    let instaDesignView = InstaDesignView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
}

extension InstaDesignViewController {
    private func setUI(){
        
        view.backgroundColor = .white
        
        instaDesignView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(instaDesignView)
        NSLayoutConstraint.activate([
            instaDesignView.topAnchor.constraint(equalTo: view.topAnchor),
            instaDesignView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            instaDesignView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            instaDesignView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    
    }
    
}






#if DEBUG

import SwiftUI

struct InstaDesignViewControllerPresentable : UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        InstaDesignViewController()
    }
}

struct InstaDesignViewControllerPresentable_PreviewProvider : PreviewProvider {
    static var previews: some View{
        InstaDesignViewControllerPresentable()
            .ignoresSafeArea()
    }
}


#endif
