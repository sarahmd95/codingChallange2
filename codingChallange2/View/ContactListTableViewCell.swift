//
//  ContactListTableViewCell.swift
//  codingChallange2
//
//  Created by sara alhammad on 24/11/2020.
//

import UIKit

class ContactListTableViewCell: UITableViewCell {

    var icon = UIImageView()
    var name = UILabel()
    var party = UILabel()
    var Description = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        
        backgroundColor = .clear
        layer.masksToBounds = false
        layer.shadowOpacity = 0.53
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowColor = UIColor.lightGray.cgColor

        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 28
        
        

        
        addSubview(icon)
        addSubview(name)
        addSubview(party)
        addSubview(Description)
        
        configureIcon()
        configureLabel()
        setImageConstarints()
        setNameConstarints()
        setPartyConstarints()
        setDescriptionConstarints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureIcon(){
        icon.layer.borderWidth = 1
        icon.layer.masksToBounds = false
        icon.layer.borderColor = UIColor.white.cgColor
        icon.layer.cornerRadius = 40
        icon.clipsToBounds = true
    }
    
    func configureLabel(){
        name.numberOfLines = 0
        name.adjustsFontSizeToFitWidth = true
        name.textColor = #colorLiteral(red: 0.5450980392, green: 0.5529411765, blue: 0.631372549, alpha: 1)
        
        party.numberOfLines = 0
        party.adjustsFontSizeToFitWidth = true
        party.textColor = #colorLiteral(red: 0.5450980392, green: 0.5529411765, blue: 0.631372549, alpha: 1)

        Description.numberOfLines = 0
        Description.adjustsFontSizeToFitWidth = true
        Description.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
    }
    
    func setImageConstarints(){
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 80).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 80).isActive = true

    }
    
    func setNameConstarints(){
        name.translatesAutoresizingMaskIntoConstraints = false
        name.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
        name.leadingAnchor.constraint(equalTo: icon.leadingAnchor, constant: 100).isActive = true
        name.heightAnchor.constraint(equalToConstant: 20).isActive = true
        name.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setPartyConstarints(){
        party.translatesAutoresizingMaskIntoConstraints = false
        party.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        party.leadingAnchor.constraint(equalTo: icon.leadingAnchor, constant: 100).isActive = true
        party.heightAnchor.constraint(equalToConstant: 20).isActive = true
        party.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setDescriptionConstarints(){
        Description.translatesAutoresizingMaskIntoConstraints = false
        Description.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 30).isActive = true
        Description.leadingAnchor.constraint(equalTo: icon.leadingAnchor, constant: 100).isActive = true
        Description.heightAnchor.constraint(equalToConstant: 20).isActive = true
        Description.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    

}
