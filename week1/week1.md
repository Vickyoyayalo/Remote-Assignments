# 軟體人才培訓學院 / iOS Class
##Remote Learning Assignment - Week 1##
###Part 1: Git & GitHub 
2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them. 
 -    git status : 顯示工作目錄的狀態，通常會用在檢查現階段的branch(分支)、尚未暫存的修改、已暫存但還沒提交的變更等等。
 -    git diff ：顯示繳交檔案之間的差異，或顯示工作目錄和索引之間的變更，通常用在查看工作目錄或索引中我們所做的變更，清楚文件間的不同之處。
 -    git add ：文件內容添加到暫時存放區域，通常使用在將文件的修改或新文件添加到下一次繳交當中。
 -    git reset ：重置當前HEAD到指定狀態，通常為取消暫存區的變更。＊HEAD 當做「目前所在分支」看待＊
 -    git commit ：記錄對repository(儲存庫)的變更，通常是將暫存區中的變更繳交到local repository(本地儲存庫)，生成新的繳交記錄。
 -   git log ：顯示繳交的diary(日誌)，通常為查看儲存庫的繳交歷史，包括提交個人資訊、作者、日期和繳交信息。
 -    git branch ：列出、創建或刪除分支，通常為管理分支，如查看所有分支、建立新分支、刪除分支等。
 -    git merge ：合併兩個或多個開發歷史，通常為將其他的分支的修改合併到現在正在進行的分支。
 -    git push [ repo_name ] [ branch_name ] ：更新Remote repository（遠端儲存庫）中的引用和有關的東西，通常為將本地儲存庫的變更送到遠端儲存庫。
 -    git remote ：查看遠端儲存庫集合，通常使用在添加、刪除和查看遠端儲存庫。
 -    fork ：很特別的沒有git在前面，是將儲存庫複製到你的GitHub帳戶，通常是在自己個人的帳戶中創建其他儲存庫的副本，進行開發製作。
 -    (Advanced) git rebase ：重新應用繳交在另一基礎之上，感覺上是整合變更並保持繳交歷史的一致，通常用於清理繳交歷史。
 -    (Advanced) git cherry-pick ：使用在特定提交的變更，通常會從一個分支中選擇特定繳交並應用到其他分支。
 -    (Advanced) git reflog ：為記錄分支和其他引用更新的時間，通常是查看所有HEAD的變動，包括撤銷操作的記錄。
 -    (Advanced) git tag ：為歷史紀錄中的特定點的創建、列出、刪除或驗證，通常為特定繳交創建標籤，用於標記版本發布點。

3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
使用 mkdir Remote-Assignments 創建一個名為 Remote-Assignments 的資料夾，然後進入該資料夾 cd Remote-Assignments。在資料夾內，使用 mkdir week1 創建一個名為 week1 的子資料夾。接著，初始化Git儲存庫，輸入 git init。再來將此週的作業文件複製到 week1 資料夾中，例如使用 cp /path/to/your/assignment/file week1/。然後，使用 git add . 添加所有文件到Git暫存區。提交這些文件並添加提交信息，輸入 git commit -m "Add week 1 assignments"。

再來將本地儲存庫與GitHub遠端儲存庫連接，使用 git remote add origin https://github.com/ Vickyoyayalo/Remote-Assignments.git 添加遠端儲存庫，並輸入 git branch -M main 設置主分支。最後使用 git push -u origin main 將文件推送到GitHub遠端儲存庫。
###Part 2: Basic 
1.    Please explain the difference between let and var.
都是宣告變數的關鍵字。var 是表示變數可能會改變，let 則是不會改變。
以下是我在網路上找到的舉例哈
 -    Var表示值可以改變
var appearance: String這裡使用var宣告代表此變數的值(appearance)可能會變動（就像男大十八變一樣，帥氣程度也會改變）
 -    let表示值一旦設置就不能改變。
let gender: String用 let 宣告表示性別（gender）不會改變
資料來源：https://reurl.cc/dnjyM8
2.    In Swift, we usually define a variable through the syntax as below: 
.var x: Int = 10.
We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be. 
我認為應該要使用let 因為若pi是圓周率，是不能改變的，使用let
let pi: Double = 3.14159
3.    Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
首先先宣告x和y兩變數，再去指定其資料類型
let x: Int = 10
let y: Int = 20
let average: Double = Double(x + y) / 2.0
然後跟一般數學加減乘除一樣
4.    Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0. 
● Please solve this problem so that we can put the average in the record system. 
● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ). 
(10 / 3) 是整數除法，結果為整數。
(10.0 / 3.0) 是浮點數除法，結果為小數。
5.    Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder. 
let remainder = 10 % 3
6.    Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation. 
Ex: .var x = 10.=>.var x: Int = 10. 
 -    var flag: Bool = true  //Bool 布林值
 -    var inputString: String = "Hello world." //字串
 -    let bitsInByte: Int = 8 //整數
 -    let averageScore: Double = 86.8 //雙精度浮點數類型，儲存更大的小數點，Apple公司也說他們預設Double為主
7.    What is Type Inference(類型推斷) in Swift? 
類型推斷是Swift編譯器自動推斷變數、常數或表達式的類型的能力。這使得我們在編寫程式碼時不必明確聲明所有類型，從而簡化了程式碼。
8.    What is the issue about this piece of code? 
var 已經在先前賦予phoneNumber 一個值（Int），就不行在後面又同時賦予字串（String）
9.    Compond assignment operators are very useful when programming. Please declare a variable salary with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process. 
let salary: Int = 22000
salary += 28000 
10.    You should notice that ‘=’ has a different meaning in programming. In the real world, ‘=’ means equal while in programming, ‘=’ means assign. You simply put the right-hand side data into the left-hand side variable or constant. Now please write down the Equality operator in Swift. 
let equalityOperator = ( a == b )  // == 雙等號 等於 Equality operator

###Part 3: Collection 
You should know how to declare an Array in Swift, and also how to add, remove, insert, read an object in an array. You should be familiar with the following syntax: append, .insert, remove . 
Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error. Please interact with the array very carefully. 
Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error. Please interact with the array very carefully. 
1.    Please initialize an empty array with String data type and assign it to a variable named myFriends.
var myFriends: Array<String> = [ ]
var myFriends: [String] = [ ]   
var myFriends = Array<String>( )
var myFriends= [String]( )
// Array 一連串的同類型<Element>資料，在array裡面的index都會是正整數
2.    According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once. 
var myFriends= [String]( )
myFriends.append(contentsOf: ["Ian", "Bomi", "Kevin"])  
// .append（Element） 增補，沒特定位置；.insert（Element, at: Int）插入在特定的位置
3.    Oops, I forgot to add ‘Michael’ who is one of my best friends222, please help me to add Michael to the end of myFriends array. 
myFriends.append("Michael")
4.    Because I usually hang out with Kevin, please move Kevin to the beginning of the myFriends array. 
if let index = myFriends.firstIndex(of: "Kevin") {
    let kevin = myFriends.remove(at: index)
    myFriends.insert(kevin, at: 0)
}
print(myFriends)
 
//0代表第一個順位，補充.firstIndex(of: "Element") 的直須要是equatable
5.    Use for...in to print all the friends in myFriends array. 
for friend in myFriends {
    print(friend)
}
//這樣print出來會是一列一列的顯示名字
 
6.    Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it. 
會跑出error因為沒有index 5的內容，因為0代表第一位置
7.    How to get the first element in an array? 
let firstFriend = myFriends.first
8.    How to get the last element in an array? 
let lastFriend = myFriends.last
9.    Please initialize a with keys of type String, value of type Int, and assign it to a variable named. 
var myCountryNumber = [String:Int]()
var myCountryNumber: [String: Int] = [:]
10.    Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively. 

11.    Change the value of ‘GB’ from 44 to 0. 
12.    How to declare an empty dictionary? 
13.    How to remove a key-value pair in a dictionary? 

