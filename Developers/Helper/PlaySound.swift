//
//  PlaySound.swift
//  Developers
//
//  Created by Önder Koşar on 14.10.2020.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
