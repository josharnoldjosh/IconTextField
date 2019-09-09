//
//  IconTextField.swift
//  IconTextField
//
//  Created by Josh Arnold on 9/8/19.
//

import UIKit
import SnapKit

public class IconTextField: UITextField {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.font = UIFont.systemFont(ofSize: 20, weight: .light)
        self.tintColor = UIColor.init(white: 0.75, alpha: 1)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setIcon(image:UIImage?, width:CGFloat = 25, padding:CGFloat = 10) {
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.height)
        
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: width + padding, height: self.frame.height)
        container.addSubview(imageView)
        
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
