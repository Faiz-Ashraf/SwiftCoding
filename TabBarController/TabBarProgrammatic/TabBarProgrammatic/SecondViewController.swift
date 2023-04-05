//
//  SecondViewController.swift
//  TabBarProgrammatic
//
//  Created by Steven Curtis on 03/04/2023.
//

import UIKit

class SecondViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .blue
        self.view = view
    }
}
