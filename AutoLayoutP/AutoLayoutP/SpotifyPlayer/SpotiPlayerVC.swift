//
//  SpotiPlayerVC.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 22.06.2024.
//

import UIKit

class SpotiPlayerVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()
        
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        
        view.addSubview(spotifyButton)

        albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true

        trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 5).isActive = true
        trackLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 5).isActive = true

        playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 5).isActive = true
        playButton.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        playButton.heightAnchor.constraint(equalTo: playButton.widthAnchor, multiplier: 1).isActive = true
        
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 5).isActive = true
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true

        previewEndLabel.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor).isActive = true
        previewEndLabel.centerYAnchor.constraint(equalTo: previewStartLabel.centerYAnchor).isActive = true

        progressView.centerYAnchor.constraint(equalTo: previewEndLabel.centerYAnchor).isActive = true
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 5).isActive = true
        progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -5).isActive = true

        spotifyButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 10).isActive = true
        spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
