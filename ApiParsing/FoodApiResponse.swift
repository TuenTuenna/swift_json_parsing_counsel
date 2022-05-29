// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let foodsResponse = try? newJSONDecoder().decode(FoodsResponse.self, from: jsonData)

import Foundation

// MARK: - FoodsResponse
struct FoodsResponse: Codable {
    let mealServiceDietInfo: [MealServiceDietInfo]
}

// MARK: - MealServiceDietInfo
struct MealServiceDietInfo: Codable {
    let head: [Head]?
    let row: [Row]?
}

// MARK: - Head
struct Head: Codable {
    let listTotalCount: Int?
    let result: Result?

    enum CodingKeys: String, CodingKey {
        case listTotalCount = "list_total_count"
        case result = "RESULT"
    }
}

// MARK: - Result
struct Result: Codable {
    let code, message: String

    enum CodingKeys: String, CodingKey {
        case code = "CODE"
        case message = "MESSAGE"
    }
}

// MARK: - Row
struct Row: Codable {
    let atptOfcdcScCode, atptOfcdcScNm, sdSchulCode, schulNm: String
    let mmealScCode, mmealScNm, mlsvYmd, mlsvFgr: String
    let ddishNm, orplcInfo, calInfo, ntrInfo: String
    let mlsvFromYmd, mlsvToYmd: String

    enum CodingKeys: String, CodingKey {
        case atptOfcdcScCode = "ATPT_OFCDC_SC_CODE"
        case atptOfcdcScNm = "ATPT_OFCDC_SC_NM"
        case sdSchulCode = "SD_SCHUL_CODE"
        case schulNm = "SCHUL_NM"
        case mmealScCode = "MMEAL_SC_CODE"
        case mmealScNm = "MMEAL_SC_NM"
        case mlsvYmd = "MLSV_YMD"
        case mlsvFgr = "MLSV_FGR"
        case ddishNm = "DDISH_NM"
        case orplcInfo = "ORPLC_INFO"
        case calInfo = "CAL_INFO"
        case ntrInfo = "NTR_INFO"
        case mlsvFromYmd = "MLSV_FROM_YMD"
        case mlsvToYmd = "MLSV_TO_YMD"
    }
}
