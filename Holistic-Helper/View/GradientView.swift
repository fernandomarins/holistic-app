//
//  GradientView.swift
//  Holistic-Helper
//
//  Created by Fernando Augusto de Marins on 10/12/2017.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//
import UIKit

@IBDesignable
class UIGradientView: UIView {
    
    var gradientLayer: CAGradientLayer?
    
    @IBInspectable
    var firstColor: UIColor = .black {
        didSet {
            setGradient()
        }
    }
    
    @IBInspectable
    var secondColor : UIColor = .white {
        didSet {
            setGradient()
        }
    }
    
    @IBInspectable
    var isHorizontal : Bool = false {
        didSet {
            setGradient()
        }
    }
    
    // MARK: - Lifecycle Methods
    override func layoutSubviews() {
        super.layoutSubviews()
        setGradient()
    }
    
    // MARK: - Private Methods
    fileprivate func setGradient() {
        if  let gradient = gradientLayer {
            gradient.removeFromSuperlayer()
        }
        
        let sublayer = CAGradientLayer()
        sublayer.frame = bounds
        sublayer.colors = [firstColor.cgColor, secondColor.cgColor]
        
        if  isHorizontal {
            sublayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            sublayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        
        gradientLayer = sublayer
        layer.addSublayer(gradientLayer!)
    }
}
