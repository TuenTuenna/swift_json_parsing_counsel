//
//  ApiClient.swift
//  ApiParsing
//
//  Created by Jeff Jeong on 2022/05/29.
//

import Foundation
import Combine

class ApiClient : ObservableObject {
    var cancellable: AnyCancellable?
    
    let api = API()
    
    func loadFoods(){
        cancellable = api.loadFoods()
            .sink(receiveCompletion: { result in
                switch result {
                case .finished:
                    print("finished")
                case .failure(let err):
                    print("failed \(err)")
                }
            }, receiveValue: { foods in
                print("receivedValue : foods: \(foods)")
            })
    }
    
}
