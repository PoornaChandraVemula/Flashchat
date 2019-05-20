//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD
import Toast


class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        
        SVProgressHUD.show()
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {
            
            (user, error) in
            
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                let alert = UIAlertController(title: "Warning", message:"Unable to connect. Please, try again", preferredStyle: .alert)
                let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
               alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            }
            else {
                print("Log in Successful!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToChat", sender: self)
               
                
            }
            
            
        }
        
        
    }
    
    


    
}  
