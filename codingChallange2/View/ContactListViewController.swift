//
//  ContactListViewController.swift
//  codingChallange2
//
//  Created by sara alhammad on 24/11/2020.
//

import UIKit

class ContactListViewController: UIViewController {

    
    var tableView = UITableView()
    var ContactListVM = ContactListViewModel()
    weak var coordinator : Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1)
        tableView.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1)
        configureTableView()
        self.tableView.tableFooterView = UIView()

    }
    
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 100
        
        tableView.register(ContactListTableViewCell.self, forCellReuseIdentifier: "ContactListTableViewCell")
        tableView.pin(to: view)
    }
    
    func setTableViewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}

extension ContactListViewController : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return ContactListVM.object.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactListTableViewCell") as! ContactListTableViewCell
        
        cell.contentView.layer.masksToBounds = true

        cell.icon.image  = #imageLiteral(resourceName: "democrat")
        if ContactListVM.object[indexPath.section].party == "Republican"{
            cell.icon.image  = #imageLiteral(resourceName: "republicant")
        }
        
        cell.name.text = "\(ContactListVM.object[indexPath.section].person.firstname) \(ContactListVM.object[indexPath.section].person.lastname)"
        cell.party.text = ContactListVM.object[indexPath.section].party
        cell.Description.text = ContactListVM.object[indexPath.section].description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.goToDetails(object: ContactListVM.object[indexPath.section])
    }
    
    
}

extension UIView{
    func pin(to superView : UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview!.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview!.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
    }
}

