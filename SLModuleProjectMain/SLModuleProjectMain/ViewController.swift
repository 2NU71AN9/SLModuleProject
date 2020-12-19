//
//  ViewController.swift
//  SLModuleProjectMain
//
//  Created by 孙梁 on 2020/12/19.
//

import UIKit
import SLProjectModuleComm

class ViewController: BaseViewController {
    
    required convenience init() {
        fatalError("init() has not been implemented")
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = SLViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
