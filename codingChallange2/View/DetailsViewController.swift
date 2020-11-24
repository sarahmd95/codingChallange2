//
//  DetailsViewController.swift
//  codingChallange2
//
//  Created by sara alhammad on 24/11/2020.
//

import UIKit

class DetailsViewController: UIViewController {

    weak var coordinator : Coordinator?
    var object : objects?
    var mainCard = UIView()
    var detailsCard = UIView()
    var scrollView = UIScrollView()
    
    var icon = UIImageView()
    var name = UILabel()
    var link = UILabel()
    var bioGuidID = UILabel()
    var bioID = UILabel()
    var party = UILabel()
    
    var addressLabel = UILabel()
    var officeLabel = UILabel()
    var nameDetailLabel = UILabel()
    var birthdayLabel = UILabel()
    var endDateLabel = UILabel()
    var genderLabel = UILabel()
    var sortNameLabel = UILabel()
    var websiteLabel = UILabel()
    var phoneLabel = UILabel()
    
    var address = UILabel()
    var office = UILabel()
    var nameDetail = UILabel()
    var birthday = UILabel()
    var endDate = UILabel()
    var gender = UILabel()
    var sortName = UILabel()
    var website = UILabel()
    var phone = UILabel()
    
    var mailIcon = UIImageView()
    var speakIcon = UIImageView()
    var phoneIcon = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.hidesBackButton = true

        setUpMenuButton()
        
        view.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1)
        view.addSubview(scrollView)
        setupScrollView()
        
        scrollView.addSubview(mainCard)
        scrollView.addSubview(detailsCard)
        
        setCardConstarints()
        
        mainCard.addSubview(icon)
        mainCard.addSubview(name)
        mainCard.addSubview(link)
        mainCard.addSubview(bioGuidID)
        mainCard.addSubview(bioID)
        mainCard.addSubview(party)
        setMainCardContentConstarints()
        
        detailsCard.addSubview(addressLabel)
        detailsCard.addSubview(officeLabel)
        detailsCard.addSubview(nameDetailLabel)
        detailsCard.addSubview(birthdayLabel)
        detailsCard.addSubview(endDateLabel)
        detailsCard.addSubview(genderLabel)
        detailsCard.addSubview(sortNameLabel)
        detailsCard.addSubview(websiteLabel)
        detailsCard.addSubview(phoneLabel)

        detailsCard.addSubview(address)
        detailsCard.addSubview(office)
        detailsCard.addSubview(nameDetail)
        detailsCard.addSubview(birthday)
        detailsCard.addSubview(endDate)
        detailsCard.addSubview(gender)
        detailsCard.addSubview(sortName)
        detailsCard.addSubview(website)
        detailsCard.addSubview(phone)

        detailsCard.addSubview(mailIcon)
        detailsCard.addSubview(speakIcon)
        detailsCard.addSubview(phoneIcon)

        
        setDetailsCardContentConstarints()

    }
    
    func setUpMenuButton(){
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        menuBtn.setImage(UIImage(named:"back"), for: .normal)
        menuBtn.addTarget(self, action:  #selector(self.goBack(sender:)), for: UIControl.Event.touchUpInside)

        let menuBarItem = UIBarButtonItem(customView: menuBtn)
        let currWidth = menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 24)
        currWidth?.isActive = true
        let currHeight = menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 24)
        currHeight?.isActive = true
        self.navigationItem.leftBarButtonItem = menuBarItem
    }
    
    
    func setupScrollView(){
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollView.contentSize = CGSize(width: 200, height: 1000)
        
    }
    
    func setCardConstarints(){
        mainCard.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        mainCard.translatesAutoresizingMaskIntoConstraints = false
        mainCard.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -250).isActive = true
        mainCard.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        mainCard.heightAnchor.constraint(equalToConstant: 280).isActive = true
        mainCard.widthAnchor.constraint(equalToConstant: 380).isActive = true
        
        mainCard.layer.shadowColor = UIColor.lightGray.cgColor
        mainCard.layer.shadowOpacity = 0.53
        mainCard.layer.shadowOffset = .zero
        mainCard.layer.shadowRadius = 4
        
        mainCard.layer.cornerRadius = 15
     
        
        detailsCard.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1)
        detailsCard.translatesAutoresizingMaskIntoConstraints = false
        detailsCard.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: 100).isActive = true
        detailsCard.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        detailsCard.heightAnchor.constraint(equalToConstant: 400).isActive = true
        detailsCard.widthAnchor.constraint(equalToConstant: 380).isActive = true
    }
    
    func setMainCardContentConstarints(){
        icon.translatesAutoresizingMaskIntoConstraints = false
//        icon.centerYAnchor.constraint(equalTo: mainCard.centerYAnchor).isActive = true
        icon.centerXAnchor.constraint(equalTo: mainCard.centerXAnchor).isActive = true
        icon.topAnchor.constraint(equalTo: mainCard.topAnchor, constant: -50).isActive = true
//        icon.leadingAnchor.constraint(equalTo: mainCard.leadingAnchor, constant: 12).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 120).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        icon.layer.borderWidth = 1
        icon.layer.masksToBounds = false
        icon.layer.borderColor = UIColor.white.cgColor
        icon.layer.cornerRadius = 60
        icon.clipsToBounds = true
        
        icon.image = #imageLiteral(resourceName: "democrat")
        if object?.party == "Republican"{
            icon.image = #imageLiteral(resourceName: "republicant")
        }
        
        name.translatesAutoresizingMaskIntoConstraints = false
        name.centerYAnchor.constraint(equalTo: mainCard.centerYAnchor, constant: -10).isActive = true
        name.centerXAnchor.constraint(equalTo: mainCard.centerXAnchor, constant: 10).isActive = true
//        name.leadingAnchor.constraint(equalTo: mainCard.leadingAnchor, constant: 150).isActive = true
        name.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        name.trailingAnchor.constraint(equalTo: mainCard.trailingAnchor, constant: -12).isActive = true
        
        name.numberOfLines = 0
        name.adjustsFontSizeToFitWidth = true
        name.font = UIFont.boldSystemFont(ofSize: 26.0)
        name.text = "\(object!.person.firstname) \(object!.person.lastname)"
        
        link.translatesAutoresizingMaskIntoConstraints = false
        link.centerYAnchor.constraint(equalTo: mainCard.centerYAnchor, constant: 20).isActive = true
        link.centerXAnchor.constraint(equalTo: mainCard.centerXAnchor).isActive = true
//        link.leadingAnchor.constraint(equalTo: mainCard.leadingAnchor, constant: 150).isActive = true
        link.heightAnchor.constraint(equalToConstant: 500).isActive = true
        link.widthAnchor.constraint(equalToConstant: 350).isActive = true
//        link.trailingAnchor.constraint(equalTo: mainCard.trailingAnchor, constant: -12).isActive = true
        
//        link.numberOfLines = 0
        link.adjustsFontSizeToFitWidth = true
        link.text = object?.person.link
        link.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onClicLabel(sender:)))
        link.isUserInteractionEnabled = true
        link.addGestureRecognizer(tap)
        
        bioGuidID.translatesAutoresizingMaskIntoConstraints = false
        bioGuidID.centerYAnchor.constraint(equalTo: mainCard.centerYAnchor, constant: 60).isActive = true
        bioGuidID.leadingAnchor.constraint(equalTo: mainCard.leadingAnchor, constant: 50).isActive = true
        bioGuidID.heightAnchor.constraint(equalToConstant: 20).isActive = true
        bioGuidID.trailingAnchor.constraint(equalTo: mainCard.trailingAnchor, constant: -12).isActive = true
        
        bioGuidID.numberOfLines = 0
        bioGuidID.adjustsFontSizeToFitWidth = true
        bioGuidID.text = "Bio Guid Id"
        bioGuidID.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        bioID.translatesAutoresizingMaskIntoConstraints = false
        bioID.centerYAnchor.constraint(equalTo: mainCard.centerYAnchor, constant: 90).isActive = true
        bioID.leadingAnchor.constraint(equalTo: mainCard.leadingAnchor, constant: 50).isActive = true
        bioID.heightAnchor.constraint(equalToConstant: 20).isActive = true
        bioID.trailingAnchor.constraint(equalTo: mainCard.trailingAnchor, constant: -12).isActive = true
        
        bioID.numberOfLines = 0
        bioID.adjustsFontSizeToFitWidth = true
        bioID.font = UIFont.boldSystemFont(ofSize: 20.0)
        bioID.text = object?.person.bioguideid
        
        
        party.translatesAutoresizingMaskIntoConstraints = false
        party.centerYAnchor.constraint(equalTo: mainCard.centerYAnchor, constant: 90).isActive = true
        party.leadingAnchor.constraint(equalTo: mainCard.leadingAnchor, constant: 250).isActive = true
        party.heightAnchor.constraint(equalToConstant: 20).isActive = true
        party.trailingAnchor.constraint(equalTo: mainCard.trailingAnchor, constant: -12).isActive = true
        
        party.numberOfLines = 0
        party.adjustsFontSizeToFitWidth = true
        party.font = UIFont.boldSystemFont(ofSize: 20.0)
        party.text = object?.party

    }
    
    func setDetailsCardContentConstarints(){
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: -180).isActive = true
        addressLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        addressLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        addressLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        addressLabel.numberOfLines = 0
        addressLabel.adjustsFontSizeToFitWidth = true
        addressLabel.text = "address"
        addressLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        address.translatesAutoresizingMaskIntoConstraints = false
        address.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: -150).isActive = true
        address.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        address.heightAnchor.constraint(equalToConstant: 20).isActive = true
        address.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        address.numberOfLines = 0
        address.adjustsFontSizeToFitWidth = true
        address.text = object?.extra.address
        address.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        


        officeLabel.translatesAutoresizingMaskIntoConstraints = false
        officeLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: -120).isActive = true
        officeLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        officeLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        officeLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        officeLabel.numberOfLines = 0
        officeLabel.adjustsFontSizeToFitWidth = true
        officeLabel.text = "office"
        officeLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        office.translatesAutoresizingMaskIntoConstraints = false
        office.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: -90).isActive = true
        office.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        office.heightAnchor.constraint(equalToConstant: 20).isActive = true
        office.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        office.numberOfLines = 0
        office.adjustsFontSizeToFitWidth = true
        office.text = object?.extra.office
        office.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        

        nameDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        nameDetailLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: -60).isActive = true
        nameDetailLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        nameDetailLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameDetailLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        nameDetailLabel.numberOfLines = 0
        nameDetailLabel.adjustsFontSizeToFitWidth = true
        nameDetailLabel.text = "name"
        nameDetailLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        nameDetail.translatesAutoresizingMaskIntoConstraints = false
        nameDetail.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: -30).isActive = true
        nameDetail.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        nameDetail.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameDetail.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        nameDetail.numberOfLines = 0
        nameDetail.adjustsFontSizeToFitWidth = true
        nameDetail.text = object?.person.name
        nameDetail.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        

        birthdayLabel.translatesAutoresizingMaskIntoConstraints = false
        birthdayLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 0).isActive = true
        birthdayLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        birthdayLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        birthdayLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        birthdayLabel.numberOfLines = 0
        birthdayLabel.adjustsFontSizeToFitWidth = true
        birthdayLabel.text = "birthday"
        birthdayLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        birthday.translatesAutoresizingMaskIntoConstraints = false
        birthday.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 30).isActive = true
        birthday.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        birthday.heightAnchor.constraint(equalToConstant: 20).isActive = true
        birthday.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        birthday.numberOfLines = 0
        birthday.adjustsFontSizeToFitWidth = true
        birthday.text = object?.person.birthday
        birthday.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        

        endDateLabel.translatesAutoresizingMaskIntoConstraints = false
        endDateLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 60).isActive = true
        endDateLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        endDateLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        endDateLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        endDateLabel.numberOfLines = 0
        endDateLabel.adjustsFontSizeToFitWidth = true
        endDateLabel.text = "endDate"
        endDateLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        endDate.translatesAutoresizingMaskIntoConstraints = false
        endDate.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 90).isActive = true
        endDate.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        endDate.heightAnchor.constraint(equalToConstant: 20).isActive = true
        endDate.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        endDate.numberOfLines = 0
        endDate.adjustsFontSizeToFitWidth = true
        endDate.text = object?.enddate
        endDate.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        

        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        genderLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 120).isActive = true
        genderLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        genderLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        genderLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        genderLabel.numberOfLines = 0
        genderLabel.adjustsFontSizeToFitWidth = true
        genderLabel.text = "gender"
        genderLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        gender.translatesAutoresizingMaskIntoConstraints = false
        gender.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 150).isActive = true
        gender.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        gender.heightAnchor.constraint(equalToConstant: 20).isActive = true
        gender.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        gender.numberOfLines = 0
        gender.adjustsFontSizeToFitWidth = true
        gender.text = object?.person.gender
        gender.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        

        sortNameLabel.translatesAutoresizingMaskIntoConstraints = false
        sortNameLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 180).isActive = true
        sortNameLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        sortNameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        sortNameLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        sortNameLabel.numberOfLines = 0
        sortNameLabel.adjustsFontSizeToFitWidth = true
        sortNameLabel.text = "sortName"
        sortNameLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        sortName.translatesAutoresizingMaskIntoConstraints = false
        sortName.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 210).isActive = true
        sortName.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        sortName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        sortName.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        sortName.numberOfLines = 0
        sortName.adjustsFontSizeToFitWidth = true
        sortName.text = object?.person.sortname
        sortName.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        
        

        websiteLabel.translatesAutoresizingMaskIntoConstraints = false
        websiteLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 240).isActive = true
        websiteLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        websiteLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        websiteLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        websiteLabel.numberOfLines = 0
        websiteLabel.adjustsFontSizeToFitWidth = true
        websiteLabel.text = "website"
        websiteLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)
        
        website.translatesAutoresizingMaskIntoConstraints = false
        website.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 270).isActive = true
        website.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        website.heightAnchor.constraint(equalToConstant: 20).isActive = true
        website.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        website.numberOfLines = 0
        website.adjustsFontSizeToFitWidth = true
        website.text = object?.website
        website.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        
        

        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 300).isActive = true
        phoneLabel.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        phoneLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        phoneLabel.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        phoneLabel.numberOfLines = 0
        phoneLabel.adjustsFontSizeToFitWidth = true
        phoneLabel.text = "phone"
        phoneLabel.textColor = #colorLiteral(red: 0.7176470588, green: 0.7098039216, blue: 0.7568627451, alpha: 1)

        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 330).isActive = true
        phone.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 20).isActive = true
        phone.heightAnchor.constraint(equalToConstant: 20).isActive = true
        phone.trailingAnchor.constraint(equalTo: detailsCard.trailingAnchor, constant: -12).isActive = true

        phone.numberOfLines = 0
        phone.adjustsFontSizeToFitWidth = true
        phone.text = object?.phone
        phone.font = UIFont.boldSystemFont(ofSize: 20.0)
        

        mailIcon.translatesAutoresizingMaskIntoConstraints = false
        mailIcon.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 400).isActive = true
        mailIcon.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 80).isActive = true
        mailIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        mailIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true

        mailIcon.image = #imageLiteral(resourceName: "email")

        speakIcon.translatesAutoresizingMaskIntoConstraints = false
        speakIcon.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 400).isActive = true
        speakIcon.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 160).isActive = true
        speakIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        speakIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true

        speakIcon.image = #imageLiteral(resourceName: "speak")

        phoneIcon.translatesAutoresizingMaskIntoConstraints = false
        phoneIcon.centerYAnchor.constraint(equalTo: detailsCard.centerYAnchor, constant: 400).isActive = true
        phoneIcon.leadingAnchor.constraint(equalTo: detailsCard.leadingAnchor, constant: 240).isActive = true
        phoneIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        phoneIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true

        phoneIcon.image = #imageLiteral(resourceName: "phone")
        
    }
    
    @objc func onClicLabel(sender:UITapGestureRecognizer) {
        openUrl(urlString: object?.person.link)
    }


    func openUrl(urlString:String!) {
        let url = URL(string: urlString)!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    @objc func goBack(sender: UIBarButtonItem){
        
        coordinator?.goBack()
    }

}
