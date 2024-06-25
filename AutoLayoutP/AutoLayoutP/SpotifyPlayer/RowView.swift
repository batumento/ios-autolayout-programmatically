//
//  RowView.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 24.06.2024.
//

import UIKit

class RowView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {

        let titleLabel = makeLabel(withText: "Gapless Playback")
        let onSwitch = makeSwitch(isOn: true)

        addSubview(titleLabel)
        addSubview(onSwitch)
        titleLabel.backgroundColor = .yellow
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true

        onSwitch.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onSwitch.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
}
