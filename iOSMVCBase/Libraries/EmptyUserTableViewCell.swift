//
//  EmptyUserTableViewCell.swift
//  FlashCardApp
//

import UIKit

class EmptyUserTableViewCell: UITableViewCell {
    
    lazy var title: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .primaryColor
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        addSubview(label)
        
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .primaryColor
        button.setTitle("Resend verify mail", for: .normal)
        button.addTarget(self, action: #selector(resendVerifyMail), for: .touchUpInside)
        button.isHidden = true
        addSubview(button)
        
        return button
    }()

    override func layoutSubviews() {
        selectionStyle = .none
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        title.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        title.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
        
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 15).isActive = true
        button.widthAnchor.constraint(equalTo: title.widthAnchor).isActive = true
        button.layer.cornerRadius = button.frame.height/2
        button.isHidden = true
    }
    
    @objc func resendVerifyMail() {
    }
    
    override func prepareForReuse() {
        button.isHidden = true
    }
}
