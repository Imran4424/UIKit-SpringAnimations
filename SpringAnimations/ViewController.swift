//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Shah Md Imran Hossain on 12/3/23.
//

import UIKit

class ViewController: UIViewController {
    let basicView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        styleViews()
    }

    private func setupViews() {
        basicView.backgroundColor = .blue
        basicView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(basicView)
    }
    
    private func styleViews() {
        basicView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        basicView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        basicView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        basicView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        animateBox(to: .red)
    }
    
    private func animateBox(to color: UIColor) {
        UIView.animate(withDuration: 0.3, delay: 1) {
            self.basicView.backgroundColor = color
        }
    }
}
