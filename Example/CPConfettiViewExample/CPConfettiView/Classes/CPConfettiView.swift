//
//  CPConfettiView.swift
//  CPConfettiViewExample
//
//  Created by framgia on 3/3/17.
//  Copyright © 2017 Vo Nguyen Chi Phuong. All rights reserved.
//

import Foundation

import UIKit
import QuartzCore

public enum CPConfettiDirection {
    case Top
    case Bottom
}

public class CPConfettiView: UIView {

    var emitter: CAEmitterLayer = CAEmitterLayer()
    public var intensity: Float!
    private var active :Bool!
    private var image: UIImage?
    var direction: CPConfettiDirection = .Top

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    func setup() {
        intensity = 0.5
        direction = .Top
        active = false
    }

    // Duration is time active anitmation.Default is 0 -> It won't stop
    public func startConfetti(duration: TimeInterval = 0) {
        guard let _ = image else {
            return
        }

        let x = frame.size.width / 2
        let y = direction == .Top ? 0 : frame.size.height
        emitter.emitterPosition = CGPoint(x: x, y: y)
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterSize = CGSize(width: frame.size.width, height: 1)
        emitter.birthRate = 1
        emitter.emitterCells = [confettiWithColor()]

        layer.addSublayer(emitter)
        active = true
        if duration != 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + duration, execute: {
                self.stopConfetti()
            })
        }
    }

    public func stopConfetti() {
        emitter.birthRate = 0
        active = false
    }

    public func setImageForConfetti(image: UIImage) {
        self.image = image
    }

    func confettiWithColor() -> CAEmitterCell {
        let confetti = CAEmitterCell()
        confetti.birthRate = 4 * intensity
        confetti.lifetime = 10
        confetti.velocity = CGFloat(350 * intensity)
        confetti.velocityRange = CGFloat(80.0 * intensity)
        confetti.emissionLongitude = direction == .Top ? CGFloat(M_PI) : CGFloat(0)
        confetti.emissionRange = CGFloat(M_PI / 12)
        confetti.scale = 1
        confetti.scaleRange = 0.5
        confetti.contents = image!.cgImage
        return confetti
    }
    
    public func isActive() -> Bool {
        return self.active
    }
}
