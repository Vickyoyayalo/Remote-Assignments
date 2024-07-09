//: ## iOS Remote Learning Assignment - Week 4
//  ViewController.swift
// MARK: -Part 1

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    //方法一
    
    override func viewDidLoad() { //覆寫 viewDidLoad 方法，這個方法會在視圖載入到記憶體後被調用。
        super.viewDidLoad() //調用父類的 viewDidLoad 方法，確保繼承自父類的所有初始化邏輯都被執行。
        table.dataSource = self // 設置 table view 的數據源為當前的 ViewController，這樣 ViewController 會提供數據給 table view。
        table.delegate = self // 設置 table view 的委託為當前的 ViewController，這樣 ViewController 可以處理 table view 的事件。
        table.rowHeight = 100 // 設置 table view 的行高為 100 像素
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2 // 返回 2 個 section，表示 table view 有２個 section
    }
    
    // 定義一個方法，返回指定 section 中的行數
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 如果是第 0 個 section，返回 10 行，否則返回 5 行。
        if section == 0 {
            return 10
        } else {   // 如果是第 1 個 section，返回 5 行
            return 5
        }
    }
    
    // 定義一個方法，返回指定位置的 cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 從可重用的 cell 池中取出一個 cell，標識符為 "cell"
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // 設置 cell 的 textLabel 的文字，顯示當前的 section 和行數
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        // 返回這個配置好的 cell
        return cell
    }
}

//方法二 但不能scroll down to second section?

//    struct Sunset {
//        let title: String
//    }
//
//    let data: [Sunset] = [
//        Sunset(title: "This is section 0, row 0"),
//        Sunset(title: "This is section 0, row 1"),
//        Sunset(title: "This is section 0, row 2"),
//        Sunset(title: "This is section 0, row 3"),
//        Sunset(title: "This is section 0, row 4"),
//        Sunset(title: "This is section 0, row 5"),
//        Sunset(title: "This is section 0, row 6"),
//        Sunset(title: "This is section 0, row 7")
//    ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        table.dataSource = self
//        table.delegate = self
//        // Do any additional setup after loading the view.
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let sunset = data[indexPath.row]
//        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
//        cell.label.text = sunset.titlee
//
//        return cell
//
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
//}
//
// MARK: --Part 2
//在手動調用 reloadData() 之後，系統將按以下順序調用 UITableViewDataSource 的方法：
//
//Step 1.
//numberOfSections(in:):
//返回 table view 中的 section 數量。
//系統會先詢問 table view 有多少個 section。
//Step 2.
//tableView(_:numberOfRowsInSection:):
//返回每個 section 中的行數。
//系統會為每個 section 問一次這個方法。
//Step 3.
//tableView(_:cellForRowAt:):
//返回每個行的 cell。
//系統會為每個可見的Row問一次這個方法，用於創建和配置 cell。

