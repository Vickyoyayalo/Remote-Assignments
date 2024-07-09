//MARK: -Part 4

//(Optional) Please complete the following function that prints a pyramid made of asterisks.

//首先先來拆解題目意思，共5層且各自對應當層星號數量
//第一層：有 1 個星號，對應 i = 1
//第二層：有 3 個星號，對應 i = 2
//第三層：有 5 個星號，對應 i = 3
//第四層：有 7 個星號，對應 i = 4
//第五層：有 9 個星號，對應 i = 5

//再來拆解層數跟星號數量的區別，所以可以得出 [ 星號數量 ＝ 2 * 層數 - 1 ]
//層數:    星號數量:
//1        1
//2        3
//3        5
//4        7
//5        9

//記得要算空格數量，不然系統會以整個已預設置左對齊方式排列 [ 空格 ＝ 總層數 - 當前層數 ]
//層數:    空格數量:
//1        4        [ 5 總層數 - 1 當前層數 = 4 空格]
//2        3
//3        2
//4        1
//5        0


func printPyramid(layers: Int) {
    // 確保層數大於0
    guard layers > 0 else { //使用 guard 語句確保輸入的層數大於0，否則打印錯誤信息並返回
        print("The number of layers must be greater than 0.")
        return
    }
    
    // 從第1層開始到第n層
    for i in 1...layers { //從1循環到 layers，對每一層進行處理
        // 計算當前層需要的空格數量
        let spaces = layers - i // 每一層的空格數量為 layers 減去當前層數
        // 計算每層的星號數量，每一層星號數為（2*i - 1）
        let stars = 2 * i - 1
        // 打印每層的空格和星號
        let line = String(repeating: " ", count: spaces) + String(repeating: "*", count: stars)
        print(line)
    }
}

// 測試函數，打印5層金字塔，這裡是我們看到的5層，而不是索引，所以是物理上的12345的5
printPyramid(layers: 5)

//MARK: -Part 5
//(Optional) Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.

//我的想法想試著以KKday的app整合生成式人工智慧技術，為用戶提供更優質的使用體驗。用戶（潛在顧客）可以通過語音輸入（類似於ChatGPT的語音對話功能）快速找到自己心儀的旅遊行程，並直接獲得包含行程詳細信息和預訂連結URL的package建議。這樣可以大幅減少用戶想多花時間在不同頁面之間來回搜尋和比價，降低潛在顧客流失的風險。
