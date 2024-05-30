//
//  SafeLayoutVC.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 20.05.2024.
//

import UIKit

class SafeLayoutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        view.backgroundColor = .systemBackground
        let topLabel = makeLabel(withText: "Top")
        view.addSubview(topLabel)

        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }

    func makeLabel(withText text: String) -> UILabel {

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .systemBlue
        return label
    }
}
