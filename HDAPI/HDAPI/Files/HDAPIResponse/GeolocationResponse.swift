//
//  GeolocationResponse.swift
//  HDAPI
//
//  Created by Hieu Dinh on 11/16/19.
//  Copyright © 2019 Hieu Dinh. All rights reserved.
//

import ObjectMapper

public class GeolocationResponse: HDApiResponse {
    public var query: String?
    public var status: String?
    public var continent: String?
    public var continentCode: String?
    public var country: String?
    public var countryCode: String?
    public var region: String?
    public var regionName: String?
    public var city: String?
    public var district: String?
    public var zip: String?
    public var lat: Double?
    public var lon: Double?
    public var timezone: String?
    public var currency: String?
    public var isp: String?
    public var org: String?
    public var welcomeAs: String?
    public var asname: String?
    public var reverse: String?
    public var mobile: Bool?
    public var proxy: Bool?
    
    override public func mapping(map: Map) {
        super.mapping(map: map)
        query <- map["query"]
        status <- map["status"]
        continent <- map["continent"]
        continentCode <- map["continentCode"]
        country <- map["country"]
        countryCode <- map["countryCode"]
        region <- map["region"]
        regionName <- map["regionName"]
        city <- map["city"]
        district <- map["district"]
        zip <- map["zip"]
        lat <- map["lat"]
        lon <- map["lon"]
        timezone <- map["timezone"]
        currency <- map["currency"]
        isp <- map["isp"]
        org <- map["org"]
        welcomeAs <- map["welcomeAs"]
        asname <- map["asname"]
        reverse <- map["reverse"]
        mobile <- map["mobile"]
        proxy <- map["proxy"]
    }
}
