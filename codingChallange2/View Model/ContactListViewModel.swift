//
//  ContactListViewModel.swift
//  codingChallange2
//
//  Created by sara alhammad on 24/11/2020.
//

import Foundation

class ContactListViewModel {
    
    @Published var object = [objects]()
    
    init() {
        load()
    }
    
    func load(){
        if let fileLocation = Bundle.main.url(forResource: "usSenators", withExtension: "json"){
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode(senator.self, from: data)
                print("dataFromJson \(dataFromJson)")
                
                self.object = dataFromJson.objects
                sort()
                
            }catch{
                print("Error occured when decoding")
            }
        }
    }
    
    func sort(){
        self.object = self.object.sorted(by: { $0.person.lastname < $1.person.lastname })
    }
}
