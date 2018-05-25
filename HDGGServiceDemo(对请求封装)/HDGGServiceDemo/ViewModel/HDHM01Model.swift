//
//  HDGG01Response.swift
//  HDGGServiceDemo
//
//  Created by caihongguang on 2018/5/24.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit
import ObjectMapper


class CollectListModel:Mappable {
    
    var cid:Int?
    var content:String?
    var cover:String?
    var title:String?
    var userName:String?
    
    init(){}
    
    required init?(map: Map) {
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        cid <- map["Cid"]
        content <- map["Content"]
        cover <- map["Cover"]
        title <- map["Title"]
        userName <- map["UserName"]
        
    }
    
}

class RecipeListModel: Mappable {
    
    var cover:String?
    var rid:Int?
    var title:String?
    var userName:String?
    
    init(){}
    
    required init?(map: Map) {
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        rid <- map["Rid"]
        cover <- map["Cover"]
        title <- map["Title"]
        userName <- map["UserName"]
    }
}

class TagListModel: Mappable {
    
    var id:Int?
    var name:String?
    
    init(){}
    
    required init?(map: Map) {
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        id <- map["Id"]
        name <- map["Name"]
    }
}

class WikiListModel:Mappable {
    
    var url:String?
    var content:String?
    var cover:String?
    var title:String?
    var userName:String?
    
    init(){}
    
    required init?(map: Map) {
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        url <- map["Url"]
        content <- map["Content"]
        cover <- map["Cover"]
        title <- map["Title"]
        userName <- map["UserName"]
        
    }
    
}

class HDHM01Result: Mappable {
    //类型一定要写对 不然获取不到
    var collectList:Array<CollectListModel>?
    var recipeList:Array<RecipeListModel>?
    var tagList:Array<TagListModel>?
    var wikiList:Array<WikiListModel>?
    
    init(){}
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        collectList <- map["collect_list"]
        recipeList <- map["recipe_list"]
        tagList <- map["tag_list"]
        wikiList <- map["wiki_list"]
        
    }
    
}

class HDHM01Response: Mappable {
    
    var request_id:String?
    var result:HDHM01Result?
    
    init(){}
    
    required init?(map: Map){
        mapping(map:map)
    }
    func mapping(map: Map) {
        
        request_id <- map["request_id"]
        result <- map["result"]
        
    }
    
}

