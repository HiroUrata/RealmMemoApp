//
//  RealmCRUDGroup.swift
//  RealmMemoApp
//
//  Created by UrataHiroki on 2021/09/05.
//

import Foundation
import RealmSwift

class RealmCRUDGroup{
    
    static var resultRealmArray:[[String:String]] = []
    
}

extension RealmCRUDGroup{
    
    static func createRealm(createDataOne:String,createDataTwo:String){
        
        do{
            let realm = try Realm()
            let realmDataModel = RealmDataModel()
            realmDataModel.realmDataOne = createDataOne
            realmDataModel.realmDataTwo = createDataTwo
            
            try realm.write({
                
                realm.add(realmDataModel)
            })
            
        }catch{
            
            
        }
        
    }
    
}

extension RealmCRUDGroup{
    
    static func readAllRealm(){
        
        do{
            let realm = try Realm()
            resultRealmArray = []
            
            for result in realm.objects(RealmDataModel.self){
                
                self.resultRealmArray.append(["OneData":result.realmDataOne,"TwoData":result.realmDataTwo])
            }
        }catch{
            
        }
    }
}
