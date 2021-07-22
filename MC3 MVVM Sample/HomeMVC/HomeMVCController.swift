//
//  ViewController.swift
//  MC3 MVVM Sample
//
//  Created by Dhiky Aldwiansyah on 22/07/21.
//

import UIKit

class HomeMVCController: UIViewController {

    private var homeMVCControllerViewModel = HomeMVCControllerViewModel()

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBAction func updateData(_ sender: Any) {
        homeMVCControllerViewModel.updateHomeModel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeMVCControllerViewModel.delegate = self
    }
    

}

extension HomeMVCController: HomeMVCControllerProtocol {
    func updateHomeData(homeData: HomeModel) {
        lblData.text = homeData.data
        lblStatus.text = homeData.status
    }
}
