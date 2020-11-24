//
//  ContactListModel.swift
//  codingChallange2
//
//  Created by sara alhammad on 24/11/2020.
//

import Foundation

struct person : Codable {
    var bioguideid : String
    var birthday : String
    var cspanid : Int?
    var firstname : String
    var gender : String
    var gender_label : String
    var lastname : String
    var link : String
    var middlename : String
    var name : String
    var namemod : String
    var nickname : String
    var osid : String?
    var pvsid : String?
    var sortname : String
    var twitterid : String?
    var youtubeid : String?
}

struct extra : Codable {
    var address : String
    var contact_form : String
    var fax : String?
    var office : String
    var rss_url : String?
}

struct objects : Codable {
    var caucus : String?
    var congress_numbers : [Int]
    var current : Bool
    var description : String
    var district : String?
    var enddate : String
    var extra : extra
    var leadership_title : String?
    var party : String
    var person: person
    var phone : String
    var role_type : String
    var role_type_label : String
    var senator_class : String
    var senator_class_label : String
    var senator_rank : String
    var senator_rank_label : String
    var startdate : String
    var state : String
    var title : String
    var title_long : String
    var website : String
}

struct meta : Codable {
    var limit : Int
    var offset : Int
    var total_count : Int
}

struct senator : Codable {
    var meta : meta
    var objects : [objects]
}
