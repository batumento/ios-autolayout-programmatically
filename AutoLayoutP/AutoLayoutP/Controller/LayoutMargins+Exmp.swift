//
//  LayoutMargins+Exmp.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 31.05.2024.
//

import UIKit

class LayoutMargins_Exmp: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(withText: "OK")
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(withText: "Cancel")
        let trailingGuide = UILayoutGuide()

        view.addSubview(okButton)
        view.addSubview(cancelButton)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)

        let margins = view.layoutMarginsGuide

        margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor).isActive = true
        leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor).isActive = true

        okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor).isActive = true
        middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor).isActive = true

        cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor).isActive = true
        trailingGuide.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true

        okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor).isActive = true

        leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor).isActive = true
        leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor).isActive = true

        leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.plain()
            config.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
            button.configuration = config
        }

        else {
            button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        }
        button.setTitleColor(.red, for: .normal)
        return button
    }
}
