//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Eduardo Bortolotti on 24/08/25.
//

import UIKit


class DesempenhoViewController: UIViewController {
    
    var pontuacaoDesempenhoVC: Int?
    

    
    @IBOutlet weak var resultdoLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciar: UIButton!
    @IBOutlet weak var percentualLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurarLayout()
        configurarDesempenho()
  
    }
    
    func configurarLayout(){
        botaoReiniciar.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
        
    }
    
    func configurarDesempenho(){
        guard let pontuacaoFinal = pontuacaoDesempenhoVC
        else {
            return
        }
        resultdoLabel.text = "Você acertou \(pontuacaoFinal) de \(questoes.count) questões"
        
        let percentualFinal = (pontuacaoFinal*100)/questoes.count
        
        percentualLabel.text = "Percentual final \(percentualFinal)%"
    }
    
}
