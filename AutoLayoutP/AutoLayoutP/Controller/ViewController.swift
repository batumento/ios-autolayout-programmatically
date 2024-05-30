//
//  ViewController.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 18.05.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }

    func setupViews() {

        let smallLabel = makeSecondaryLabel(withText: "small")
        let topLeftLabel = makeLabel(withText: "top-left")
        let topRightLabel = makeLabel(withText: "top-right")
        let bottomLeftLabel = makeSecondaryLabel(withText: "bottom-left")
        let bottomRightButton = makeButton(withText: "bottom-right-button")
        let centerView = makeView()

        view.addSubview(topLeftLabel)
        view.addSubview(smallLabel)
        view.addSubview(topRightLabel)
        view.addSubview(bottomLeftLabel)
        view.addSubview(bottomRightButton)
        view.addSubview(centerView)

        NSLayoutConstraint.activate([

            topLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            topLeftLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            smallLabel.leadingAnchor.constraint(equalTo: topLeftLabel.trailingAnchor, constant: 8),
            smallLabel.firstBaselineAnchor.constraint(equalTo: topLeftLabel.firstBaselineAnchor),

            topRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            topRightLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            bottomLeftLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),

            bottomRightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            bottomRightButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            centerView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),

            centerView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.6),
            centerView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.7),
        ])
    }

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        return label
    }

    func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .systemGray
        label.backgroundColor = .systemYellow
        label.font = .systemFont(ofSize: 12)
        return label
    }

    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }

    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }
}

