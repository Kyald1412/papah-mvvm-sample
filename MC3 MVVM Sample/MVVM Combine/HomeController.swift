//
//  ViewController.swift
//  MC3 MVVM Sample
//
//  Created by Dhiky Aldwiansyah on 22/07/21.
//

import UIKit
import Combine

class HomeController: UIViewController {
    
    private var disposables = Set<AnyCancellable>()
    
    private var homeControllerViewModel = HomeControllerViewModel()

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBAction func updateData(_ sender: Any) {
        homeControllerViewModel.updateHomeModel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
    func setupViewModel() {
        homeControllerViewModel.homeModel.sink { data in
            self.updateView(homeModel: data)
        }.store(in: &disposables)
    }
    
    func updateView(homeModel: HomeModel){
        lblData.text = homeModel.data
        lblStatus.text = homeModel.status
    }


}

