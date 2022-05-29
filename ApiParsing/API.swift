//
//  API.swift
//  ApiParsing
//
//  Created by Jeff Jeong on 2022/05/29.
//

import Foundation
import Combine

struct API {
    
    let foodUrl = URL(string: "https://open.neis.go.kr/hub/mealServiceDietInfo?Type=json&ATPT_OFCDC_SC_CODE=E10&SD_SCHUL_CODE=7310563&MMEAL_SC_CODE=2&MLSV_YMD=20220530")!
    
    
    func loadFoods() -> AnyPublisher<[Row], Error> {
        URLSession.shared.dataTaskPublisher(for: foodUrl)
            .map{ $0.data }
            .decode(type: FoodsResponse.self, decoder: JSONDecoder())
            .map{ $0.mealServiceDietInfo } // [MealServiceDietInfo]
            .map{ dietInfo in
                let rows = dietInfo.compactMap{ $0.row } // [Row]
                return rows.flatMap{ $0 } // [[Row]] -> [Row]
            }
            .eraseToAnyPublisher()
    }
    
}

