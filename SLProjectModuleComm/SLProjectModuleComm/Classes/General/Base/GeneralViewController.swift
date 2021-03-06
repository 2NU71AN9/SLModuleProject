//
//  GeneralViewController.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/8/27.
//  Copyright © 2020 孙梁. All rights reserved.
//

import UIKit

open class GeneralViewController: UIViewController {

    var contentView: BaseView? {
        view as? BaseView
    }
    var viewModel: BaseViewModel?

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        let nibNameOrNil = String(describing: type(of: self))
        if Bundle.main.path(forResource: nibNameOrNil, ofType: "nib") != nil {
            super.init(nibName: nibNameOrNil, bundle: nil)
        } else {
            super.init(nibName: nil, bundle: nil)
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public required convenience init() {
        let nibNameOrNil = String(describing: type(of: self))
        if Bundle.main.path(forResource: nibNameOrNil, ofType: "nib") != nil {
            self.init(nibName: nibNameOrNil, bundle: nil)
        } else {
            self.init(nibName: nil, bundle: nil)
        }
    }

    public override func loadView() {
        super.loadView()
        let name = String(describing: type(of: self))
        let clsName = String(name.prefix(upTo: name.index(name.endIndex, offsetBy: -10)))

        if Bundle.main.path(forResource: clsName, ofType: "nib") != nil,
            let nibCls = Bundle.main.loadNibNamed("\(clsName)", owner: nil, options: nil)?.first as? BaseView {
            view = nibCls
        } else if let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? BaseView.Type {
            view = cls.init()
        }
        if let cls = NSClassFromString(Bundle.main.namespace + "." + clsName + "Model") as? BaseViewModel.Type {
            viewModel = cls.init()
        }
    }
}
