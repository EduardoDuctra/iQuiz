//
//  ViewController.swift
//  iQuiz
//
//  Created by Eduardo Bortolotti on 23/08/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var IniciarQuiz: UIButton!
    
    @IBAction func BotaoPressionado(_ sender: Any) {
        print("O botão foi pressionado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout(){
        IniciarQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }


}

