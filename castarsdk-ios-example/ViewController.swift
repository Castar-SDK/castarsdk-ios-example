//
//  ViewController.swift
//  Castar
//
//  Created by 电脑 on 2024/12/24.
//

import UIKit
import CastarSDK

class ViewController: UIViewController {

    /// Castar 实例
    private var castar: Castar?
    
    @IBAction func start(_ sender: Any) {
        
        castar?.start()
    }
    @IBAction func stop(_ sender: Any) {
        
        castar?.stop()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        initCastar()
    }
    
    func initCastar() {
        // 创建 Castar 实例
        let result = Castar.createInstance(devKey: "cskdDUgQH13fBE")
        
        switch result {
        case .success(let castarInstance):
            // 成功创建实例，启动
            self.castar = castarInstance
            
        case .failure(let error):
            // 处理初始化错误
            print("Failed to initialize Castar: \(error.localizedDescription)")
        }
    }
}



