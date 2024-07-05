import UIKit

extension UIViewController{
    
    func setupKeyBoardLayout() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        hideKeyboardWhenTappedArround()
    }
    
    @objc
    private func keyboardWillShow(notification: Notification){
        let responderKeyboardType = UIResponder.keyboardFrameEndUserInfoKey
        guard let userInfo = notification.userInfo,
              let keyboardFrame = userInfo[responderKeyboardType] as? NSValue else { return }
        let keyboardIsHidden = view.frame.origin.y == 0
        
        if keyboardIsHidden {
            view.frame.origin.y -= keyboardFrame.cgRectValue.height
        }
        
    }
    
    @objc
    private func keyboardWillHide(notification: Notification){
        let keyboardIsHidden = view.frame.origin.y == 0
        if !keyboardIsHidden {
            view.frame.origin.y = 0
        }
    }
    
    private func hideKeyboardWhenTappedArround() {
        let tap = UITapGestureRecognizer(target: self,
                                         action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc
    private func dismissKeyboard() {
        view.endEditing(true)
        }
}






//extension UIViewController {
//
//    // 註冊鍵盤通知
//    func registerForKeyboardNotifications() {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//
//    // 取消鍵盤通知註冊
//    func unregisterForKeyboardNotifications() {
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//
//    @objc func keyboardWillShow(notification: NSNotification) {
//        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
//            self.view.frame.origin.y = -keyboardSize.height
//        }
//    }
//
//    @objc func keyboardWillHide(notification: NSNotification) {
//        self.view.frame.origin.y = 0
//    }
//
//    // 點擊背景隱藏鍵盤
//    func hideKeyboardWhenTappedAround() {
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
//        tapGesture.cancelsTouchesInView = false
//        view.addGestureRecognizer(tapGesture)
//    }
//
//    @objc func dismissKeyboard() {
//        view.endEditing(true)
//    }
//}
