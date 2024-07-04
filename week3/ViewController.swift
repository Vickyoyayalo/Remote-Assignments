//
//  ViewController.swift
//  week3Appworks
//
//  Created by Vickyhereiam on 2024/7/3.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var accountLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var actionbutton: UIButton!
    
    // 初始頁面顯示
    override func viewDidLoad() {
        super.viewDidLoad()
        // 初始化checkTextField和checkLabel
        checkTextField.isEnabled = false // 禁用checkTextField
        checkLabel.textColor = .gray // 將checkLabel設置為灰色
        checkTextField.backgroundColor = .lightGray // 將checkTextField背景設置為亮灰色
        // 設置segmentedControl的顏色屬性
        segmentedControl.selectedSegmentTintColor = .black // 設置選中段的背景顏色為黑色
        segmentedControl.backgroundColor = .white // 設置segmentedControl的背景顏色為白色
        // 設置segmentedControl的文字顏色
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected) // 選中的文字顏色為白色
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal) // 未選中的文字顏色為黑色
        segmentedControl.layer.borderWidth = 1.5 // 設置segmentedControl的邊框寬度
    }
    
    // 當segmentedControl的值改變時被調用
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 { // Log in
            // 設置checkTextField和checkLabel為不可用和灰色
            checkTextField.isEnabled = false // 禁用checkTextField
            checkLabel.textColor = .gray // 將checkLabel設置為灰色
            checkTextField.backgroundColor = .lightGray // 將checkTextField背景設置為亮灰色
        } else { // Sign Up
            // 設置checkTextField和checkLabel為可用和黑色
            checkTextField.isEnabled = true // 啟用checkTextField
            checkLabel.textColor = .black // 將checkLabel設置為黑色
            checkTextField.backgroundColor = .white // 將checkTextField背景設置為白色
        }
    }
    
    // 當按下actionButton時被調用
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        if segmentedControl.selectedSegmentIndex == 0 { // Log In
            // 驗證accountTextField和passwordTextField的輸入
            guard let account = accountTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !account.isEmpty else {
                showAlert(title: "Error", message: "Account should not be empty.")
                return
            }
            guard let password = passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !password.isEmpty else {
                showAlert(title: "Error", message: "Password should not be empty.")
                return
            }
            
            // 驗證賬號和密碼
            if account == "appworks_school" && password == "1234" {
                showAlert(title: "Success", message: "Login successful!")
            } else {
                showAlert(title: "Error", message: "Invalid account or password.")
            }
        } else if segmentedControl.selectedSegmentIndex == 1 { // Sign Up
            // 驗證accountTextField, passwordTextField和checkTextField的輸入
            guard let account = accountTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !account.isEmpty else {
                showAlert(title: "Error", message: "Account should not be empty.")
                return
            }
            guard let password = passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !password.isEmpty else {
                showAlert(title: "Error", message: "Password should not be empty.")
                return
            }
            guard let checkPassword = checkTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !checkPassword.isEmpty else {
                showAlert(title: "Error", message: "Check password should not be empty.")
                return
            }
            
            // 註冊邏輯
            if password == checkPassword {
                showAlert(title: "Success", message: "Sign up successful!")
            } else {
                showAlert(title: "Error", message: "Passwords do not match.")
            }
        }
    }
    
    // 顯示警告框
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
