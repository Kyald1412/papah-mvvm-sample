//
//  HomeControllerViewModel.swift
//  MC3 MVVM Sample
//
//  Created by Dhiky Aldwiansyah on 22/07/21.
//

import Foundation

protocol HomeMVCControllerProtocol {
    func updateHomeData(homeData: HomeModel)
}

class HomeMVCControllerViewModel : NSObject {
    
    var delegate: HomeMVCControllerProtocol?
    
    let homeModelData = HomeModel(status: "", data: "")

    func updateHomeModel(){
        let homeModelData = HomeModel(status: "baru", data: "baru")
        delegate?.updateHomeData(homeData: homeModelData)
    }
    
}
