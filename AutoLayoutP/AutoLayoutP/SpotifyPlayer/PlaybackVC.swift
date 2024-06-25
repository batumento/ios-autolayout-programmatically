//
//  PlaybackVC.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 24.06.2024.
//

import UIKit

class PlaybackVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "HEllo"

        let stackView = makeStackView(withOrientation: .vertical)
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        stackView.backgroundColor = .systemPink
        view.addSubview(scrollView)

        for i in 1...45 {
            
            let row = RowView()
            stackView.addArrangedSubview(row)
            if i % 5 == 0 {
                stackView.addArrangedSubview(makeSpacerView(height: 200))
            }
            row.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1, constant: -32).isActive = true
            
        }

        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 40, leading: 15, bottom: 40, trailing: 16)
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
}
