//
//  TimeSheetViewController.swift
//  TimeSheet
//
//  Created by 岡本啓一 on 2022/11/02.
//

import UIKit
import SwiftUI
import Combine

class TimeSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let timeSheetView = TimeSheetView()

        let vc = UIHostingController(rootView: timeSheetView)
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
        
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        vc.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        vc.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        vc.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
