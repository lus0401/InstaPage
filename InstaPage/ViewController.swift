//
//  ViewController.swift
//  InstaPage
//
//  Created by t2023-m0051 on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Properties
    private lazy var instaDesignViewController = InstaDesignViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

/*

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

*/

