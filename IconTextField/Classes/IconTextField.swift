//
//  IconTextField.swift
//  IconTextField
//
//  Created by Josh Arnold on 9/8/19.
//

import UIKit
import SnapKit

open class IconTextField: UITextField {
    
    public init() {
        super.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 40))
        self.configure()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    func configure() {
        self.font = UIFont.systemFont(ofSize: 20, weight: .light)
        self.tintColor = UIColor.init(white: 0.75, alpha: 1)
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setIcon(image:UIImage?, width:CGFloat = 20, padding:CGFloat = 10) {
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
//        imageView.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.height)
        
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: width + padding, height: self.frame.height)
        container.addSubview(imageView)
        
        imageView.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalTo(width)
        }
        
        leftViewMode = .always
        leftView = container
    }
    
    public func underline(color:UIColor = UIColor.init(white: 0.85, alpha: 1)) {
        let line = UIView()
        line.backgroundColor = color
        addSubview(line)
        line.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(1)
        }
    }

}
