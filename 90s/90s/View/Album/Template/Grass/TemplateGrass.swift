//
//  TemplateGrass.swift
//  Template
//
//  Created by 김진우 on 2021/10/16.
//

import Foundation

import SnapKit

final class TemplateGrass: UIView, TemplateView {
    
    // MARK: - UI Component
    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Template_Grass_Background")
        addSubview(imageView)
        return imageView
    }()
    
    lazy var imageView1: GrassImageView = {
        let imageView = GrassImageView()
        imageView.tag = 0
        imageView.delegate = self
        imageView.backgroundColor = .gray
        addSubview(imageView)
        return imageView
    }()
    
    lazy var imageView2: GrassImageView = {
        let imageView = GrassImageView()
        imageView.tag = 1
        imageView.delegate = self
        imageView.backgroundColor = .gray
        addSubview(imageView)
        return imageView
    }()
    
    // MARK: - Property
    let scale = UIScreen.main.bounds.width / 323
    
    var isEditing: Bool = false {
        didSet {
            setEditing(isEditing)
        }
    }
    var currentIndex: Int = -1
    weak var delegate: TemplateViewDelegate?
    
    
    // MARK: - Init
    init() {
        super.init(frame: .zero)
        
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Method
    private func setLayout() {
        backgroundImageView.snp.makeConstraints {
            $0.top.left.bottom.right.equalToSuperview()
        }
        
        imageView1.snp.makeConstraints {
            $0.width.equalTo(199 * scale)
            $0.height.equalTo(151 * scale)
            $0.top.equalToSuperview().offset(111 * scale)
            $0.left.equalToSuperview().offset(42 * scale)
        }
        
        imageView2.snp.makeConstraints {
            $0.width.equalTo(199 * scale)
            $0.height.equalTo(151 * scale)
            $0.bottom.equalToSuperview().offset(-110 * scale)
            $0.left.equalToSuperview().offset(82 * scale)
        }
    }
    
    private func setEditing(_ isEditing: Bool) {
        imageView1.isUserInteractionEnabled = isEditing
        imageView2.isUserInteractionEnabled = isEditing
        
        if isEditing {
            if imageView1.image == nil {
                imageView1.image = .init(named: "Icon_Add_Photo")
                imageView1.contentMode = .center
            }
            if imageView2.image == nil {
                imageView2.image = .init(named: "Icon_Add_Photo")
                imageView2.contentMode = .center
            }
        } else {
            imageView1.contentMode = .scaleAspectFit
            imageView2.contentMode = .scaleAspectFit
        }
    }
    
    // MARK: - Interface
    func bind(page: Page) {
        for index in 0..<page.imagesURL.count {
            if index == 0 {
                imageView1.imageURL = page.imagesURL[index]
            } else if index == 1 {
                imageView2.imageURL = page.imagesURL[index]
            }
        }
    }
}

extension TemplateGrass: TemplateImageViewDelegate {
    func tapped(_ index: Int) {
        currentIndex = index
        delegate?.didTapPhoto(index: index)
    }
}
