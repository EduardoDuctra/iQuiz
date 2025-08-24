//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Eduardo Bortolotti on 23/08/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet weak var TituloQuestaoLabel: UILabel!
    

    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func RespostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
        
        // se o índice do botão pressionado for igual ao índice da resposta correta
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCerta == sender.tag

        if usuarioAcertouResposta{
            pontuacao += 1
            print ("Usuario acertou")
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1
            
            //delay e chama a funcao configurar questao
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
            
        
        } else{
            navegaTelaDesempenho()
        }
       
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurarLayout()
        configurarQuestao()
    
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        TituloQuestaoLabel.numberOfLines = 0 //caber na tela
        TituloQuestaoLabel.textAlignment = .center
        
        for botaoArray in botoesRespostas{
            botaoArray.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        
        TituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        
        
        for botaoArray in botoesRespostas{
            
            //pega as respostas daquela questao (posicao no array) e coloca em cada botao do array
            let tituloBotao = questoes[numeroQuestao].respostas[botaoArray.tag]
            
            botaoArray.setTitle(tituloBotao, for: .normal)
            
            botaoArray.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
        
    }
    
    //transição. Usa o nome do identificador (da setinha)
    func navegaTelaDesempenho(){
      
            performSegue(withIdentifier: "irTelaDesempenho", sender: nil)
        }
    
    //ir para a próxima tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //verifica se a tela de destino é DesempenhoViewController
        guard let desempenhoVC =  segue.destination as? DesempenhoViewController
        else{
            return
        }
        //passa a pontuação para a VC da tela Desempenho. Passa parametros
        desempenhoVC.pontuacaoDesempenhoVC = pontuacao
    }
   
    
    

 
}
