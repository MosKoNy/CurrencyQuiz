//
//  CurrencyPriceModel.swift
//  CurrencyQuiz
//
//  Created by GA007295 on 26/2/2566 BE.
//

import Foundation
import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

class CurrentPriceModel: Object,Mappable {
    @objc dynamic var _id = ObjectId.generate()
    @objc dynamic var time: Time?
    @objc dynamic var disclaimer, chartName: String?
    @objc dynamic var bpi: Bpi?
    
    
    override init() {
        super.init()
    }
    
    required init?(map: ObjectMapper.Map) {
        super.init()
    }
    
    init(time: Time?, disclaimer: String?, chartName: String?, bpi: Bpi?) {
        self.time = time
        self.disclaimer = disclaimer
        self.chartName = chartName
        self.bpi = bpi
    }
    
    func mapping(map: ObjectMapper.Map) {
        time <- map["time"]
        disclaimer <- map["disclaimer"]
        chartName <- map["chartName"]
        bpi <- map["bpi"]
    }
}

// MARK: - Bpi
class Bpi: Object,Mappable {
    @objc dynamic var usd, gbp, eur: BpiDetail?
    
    override init() {
        super.init()
    }
    
    required init?(map: ObjectMapper.Map) {
        super.init()
    }
    
    init(usd: BpiDetail?, gbp: BpiDetail?, eur: BpiDetail?) {
        self.usd = usd
        self.gbp = gbp
        self.eur = eur
    }
    
    func mapping(map: ObjectMapper.Map) {
        usd <- map["USD"]
        gbp <- map["GBP"]
        eur <- map["EUR"]
    }
}

// MARK: - BpiDetail
class BpiDetail: Object,Mappable {
    @objc dynamic var code, symbol, rate, des: String?
    dynamic var rateFloat: Double!
    
    override init() {
        super.init()
    }
    
    required init?(map: ObjectMapper.Map) {
        super.init()
    }
    
    init(code: String?, symbol: String?, rate: String?, description: String?, rateFloat: Double!) {
        self.code = code
        self.symbol = symbol
        self.rate = rate
        self.des = description
        self.rateFloat = rateFloat
    }
    
    func mapping(map: ObjectMapper.Map) {
        code <- map["code"]
        symbol <- map["symbol"]
        rate <- map["rate"]
        des <- map["description"]
        rateFloat <- map["rate_float"]
    }
}

// MARK: - Time
class Time: Object,Mappable {
    @objc dynamic var updated: String?
    @objc dynamic var updatedISO: String?
    @objc dynamic var updateduk: String?
    
    override init() {
        super.init()
    }
    
    required init?(map: ObjectMapper.Map) {
        super.init()
    }
    
    init(updated: String?, updatedISO: String?, updateduk: String?) {
        self.updated = updated
        self.updatedISO = updatedISO
        self.updateduk = updateduk
    }
    
    func mapping(map: ObjectMapper.Map) {
        updated <- map["updated"]
        updatedISO <- map["updatedISO"]
        updateduk <- map["updateduk"]
    }
}
