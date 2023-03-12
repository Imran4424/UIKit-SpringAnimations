//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Shah Md Imran Hossain on 12/3/23.
//

import UIKit

class ViewController: UIViewController {
    let basicView = UIView()
    var yAnchor = NSLayoutConstraint()
    var xAnchor = NSLayoutConstraint()
    var widthAnchor = NSLayoutConstraint()
    var heightAnchor = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        styleViews()
        
        perform(#selector(animateBox), with: nil, afterDelay: 1)
    }

    private func setupViews() {
        basicView.backgroundColor = .blue
        basicView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(basicView)
    }
    
    private func styleViews() {
        yAnchor = basicView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        yAnchor.isActive = true
        
        xAnchor = basicView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        xAnchor.isActive = true
        
        widthAnchor = basicView.widthAnchor.constraint(equalToConstant: 200)
        widthAnchor.isActive = true
        
        heightAnchor = basicView.heightAnchor.constraint(equalToConstant: 200)
        heightAnchor.isActive = true
    }
    
    @objc private func animateBox() {
        yAnchor.isActive = false
        yAnchor = basicView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200)
        yAnchor.isActive = true
        
        xAnchor.isActive = false
        xAnchor = basicView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20)
        xAnchor.isActive = true
        
        widthAnchor.isActive = false
        widthAnchor = basicView.widthAnchor.constraint(equalToConstant: 300)
        widthAnchor.isActive = true
        
        heightAnchor.isActive = false
        heightAnchor = basicView.heightAnchor.constraint(equalToConstant: view.frame.height - 50)
        heightAnchor.isActive = true
        
        UIView.animate(withDuration: 0.6, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 1.5, options: .curveEaseIn) {
            self.view.layoutIfNeeded()
        }
    }
}
