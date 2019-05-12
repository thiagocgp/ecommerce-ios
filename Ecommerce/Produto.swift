//
//  Produto.swift
//  Ecommerce
//
//  Created by Ítalo Tavares on 11/05/19.
//  Copyright © 2019 ufg. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct Produto {
    var produtoNome: String
    var produtoDescricao: String
    var produtoPreco: String
    var produtoImagem: UIImage
    var contatoNome: String
    var contatoTel: String
    
    init(){
        self.produtoNome = ""
        self.produtoDescricao = ""
        self.produtoPreco = ""
        self.produtoImagem = UIImage.init()
        self.contatoNome = ""
        self.contatoTel = ""
    }
    
    init(produtoNome: String, produtoDescricao: String, produtoPreco: String, produtoImagem: UIImage, contatoNome: String,
         contatoTel: String ) {
        self.produtoNome = produtoNome
        self.produtoDescricao = produtoDescricao
        self.produtoPreco = produtoPreco
        self.produtoImagem = produtoImagem
        self.contatoNome = contatoNome
        self.contatoTel = contatoTel
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: Any]
        produtoNome = snapshotValue["produtoNome"] as! String
        produtoDescricao = snapshotValue["produtoDescricao"] as! String
        produtoPreco = snapshotValue["produtoPreco"] as! String
        let produtoImagemSTR = snapshotValue["produtoImagem"] as! String
        let dataDecoded: Data = Data(base64Encoded: produtoImagemSTR, options: .ignoreUnknownCharacters)!
        let decodedImage = UIImage(data: dataDecoded)
        produtoImagem = decodedImage!
        contatoNome = snapshotValue["contatoNome"] as! String
        contatoTel = snapshotValue["contatoTel"] as! String
    }
    
    func toAnyObject() -> Any{
        let imageData:NSData = UIImagePNGRepresentation(produtoImagem)! as NSData
        let strBase64 = imageData.base64EncodedString(options: .lineLength64Characters)
        return[
            "produtoNome": produtoNome,
            "produtoDescricao": produtoDescricao,
            "produtoPreco": produtoPreco,
            "produtoImagem": strBase64,
            "contatoNome": contatoNome,
            "contatoTel": contatoTel
        ]
    }
}
