//
//  HomeControllerViewModel.swift
//  MC3 MVVM Sample
//
//  Created by Dhiky Aldwiansyah on 22/07/21.
//

import Foundation
import Combine

class HomeControllerViewModel : NSObject {
    
//    var homeModel = CurrentValueSubject<HomeModel, Never>(.init(status: "", data: ""))
    var homeModel: PassthroughSubject<HomeModel, Never> = PassthroughSubject()
    
    func updateHomeModel(){
        let homeModelData = HomeModel(status: "baru", data: "baru")
        homeModel.send(homeModelData)
    }
    
}
