//
//  GradientImageView.swift
//  Template
//
//  Created by 김진우 on 2021/10/16.
//

import UIKit

final class GradientImageView: UIView, TemplateImageView {
    
    var image: UIImage? {
        didSet {
            imageView.image = self.image
        }
    }
    
    weak var delegate: TemplateImageViewDelegate?
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.backgroundColor = .gray
        imageView.contentMode = .scaleAspectFill
        addSubview(imageView)
        return imageView
    }()
    
    lazy var caseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleToFill
        addSubview(imageView)
        return imageView
    }()
    
    init() {
        super.init(frame: .zero)
        
        setLayout()
        setAction()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setAction() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        caseImageView.addGestureRecognizer(tapGesture)
    }
    
    private func setLayout() {
        imageView.snp.makeConstraints {
            $0.top.left.bottom.right.equalToSuperview()
        }
        
        caseImageView.snp.makeConstraints {
            $0.top.left.bottom.right.equalToSuperview()
        }
    }
    
    @objc func tap(_ sender: UITapGestureRecognizer) {
        delegate?.tapped(tag)
    }
}
