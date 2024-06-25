//
//  CompressionResistanceVC.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 3.06.2024.
//

import UIKit

class CompressionResistanceVC: UIViewController {
    
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView1.image = UIImage(named: "Metropia_poster")
        imageView2.image = UIImage(named: "Metropia_poster")
        
        imageView1.contentMode = .scaleAspectFit
        imageView2.contentMode = .scaleAspectFit
        
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageView1)
        view.addSubview(imageView2)

        NSLayoutConstraint.activate([
            imageView1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])

        NSLayoutConstraint.activate([
            imageView2.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 20),
            imageView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])

        imageView1.setContentHuggingPriority(UILayoutPriority(249), for: .vertical)
        imageView1.setContentCompressionResistancePriority(UILayoutPriority(749), for: .vertical)
        
        imageView2.setContentHuggingPriority(UILayoutPriority(251), for: .vertical)
        imageView2.setContentCompressionResistancePriority(UILayoutPriority(751), for: .vertical)
    }
}
