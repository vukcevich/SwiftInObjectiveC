//
//  SwiftFile.swift
//  SwiftInObjectiveC
//
//  Created by Marijan Vukcevich on 1/14/15.
//  Copyright (c) 2015 xyz. All rights reserved.
//

import Foundation


public var dictVar = [
    "firstId":"1234",
    "secondId":"",
    "fifthId": "Dtttt"
]



@objc class SwiftFile {
    private init() {}
    
    class func dictionaryObjects() -> Dictionary<String,String> { return dictVar }
    
    class func setDictionaryObjects (keyName:String, keyValue:String){
        dictVar[keyName] = keyValue
    }
}