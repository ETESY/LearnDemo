//
//  RegisterVC.swift
//  LoginVC
//
//  Created by etesy on 2022/11/7.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "success",
            let destination = segue.destination as? SuccessVC
        else { return }
            
        destination.text = "注册成功"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        guard identifier == "success" else { return true }
            
            let username = usernameTextField.text ?? ""
            if username.isEmpty {
                errorLabel.text = "请输入用户名"
                return false
            }
            
            let password = passwordTextField.text ?? ""
            if password.isEmpty {
                errorLabel.text = "请输入密码"
                return false
            }
            
            errorLabel.text = nil
            
            return true
        }
    
    @IBAction func clickLoginButon(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
