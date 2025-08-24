//
//  Questao.swift
//  iQuiz
//
//  Created by Eduardo Bortolotti on 23/08/25.
//

import Foundation

class Questao {
    var titulo: String
    var respostas: [String]
    var respostaCerta: Int
    
    init(titulo: String, respostas: [String], respostaCerta: Int) {
        self.titulo = titulo
        self.respostas = respostas
        self.respostaCerta = respostaCerta
    }
}

let questoes: [Questao] = [
    Questao(
        titulo: "Qual é o nome completo do grupo TXT?",
        respostas: ["Tomorrow X Together", "The X Together", "Tomorrow X Team"],
        respostaCerta: 0
    ),
    Questao(
        titulo: "Em que ano o TXT debutou?",
        respostas: ["2018", "2019", "2020"],
        respostaCerta: 1
    ),
    Questao(
        titulo: "Qual é o nome do primeiro álbum completo do TXT?",
        respostas: ["The Dream Chapter: Magic", "The Chaos Chapter: Fight or Escape", "The Dream Chapter: STAR"],
        respostaCerta: 2
    ),
    Questao(
        titulo: "Quem é o líder do TXT?",
        respostas: ["Soobin", "Yeonjun", "Beomgyu"],
        respostaCerta: 0
    ),
    Questao(
        titulo: "Quantos membros compõem o TXT?",
        respostas: ["4", "5", "6"],
        respostaCerta: 1
    )
]


