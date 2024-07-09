//
//  ViewController.swift
//  week4_no.3
//
//  Created by Vickyhereiam on 2024/7/9.
//

import UIKit

// 定義一個結構來表示車站數據
struct Station: Codable {
    let stationID: String
    let stationName: String
    let stationAddress: String
}

class ViewController: UIViewController {
    
    // 定義三個 IBOutlet，分別連接到 storyboard 中的三個 UILabel
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 設置 UI 元素的初始值
        stationIDLabel.text = "Loading..."
        stationNameLabel.text = "Loading..."
        stationAddressLabel.text = "Loading..."
        // 調用方法加載數據
        fetchData()
    }
    
    // 定義一個方法來獲取數據
    func fetchData() {
        // 定義數據源的 URL
        let urlString = "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station"
        // 確保 URL 有效
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        // 使用 URLSession 來發送 GET 請求
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // 確保沒有錯誤並且數據有效
            guard let data = data, error == nil else {
                print("Failed to fetch data")
                return
            }
            
            // 嘗試解碼 JSON 數據
            do {
                let station = try JSONDecoder().decode(Station.self, from: data)
                // 在主線程中更新 UI
                DispatchQueue.main.async {
                    self.updateUI(with: station)
                }
            } catch {
                print("Failed to decode JSON")
            }
        }
        
        // 開始數據任務
        task.resume()
    }
    
    // 定義一個方法來更新 UI 元素
    func updateUI(with station: Station) {
        stationIDLabel.text = station.stationID
        stationNameLabel.text = station.stationName
        stationAddressLabel.text = station.stationAddress
    }
}

