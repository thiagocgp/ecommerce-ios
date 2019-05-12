//
//  CadastroViewController.swift
//  Ecommerce
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit
import FirebaseDatabase


class CadastroViewController: UIViewController {

  
    var ref:DatabaseReference?
    
    @IBOutlet weak var vrProdutoNome: UITextField!
    @IBOutlet weak var vrProdutoDescricao: UITextField!
    @IBOutlet weak var vrProdutoPreco: UITextField!
    @IBOutlet weak var vrProdutoImagem: UIImageView!
    @IBOutlet weak var vcContatoNome: UITextField!
    @IBOutlet weak var vrContatoTel: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        imagePicker.delegate = self
        ref = Database.database().reference()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tirarFoto(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cadastrar(_ sender: UIButton) {
        //Verifica se tem todos os objetos antes de salvar o produto
        if(vrProdutoNome.text != "" && vrProdutoDescricao.text != "" && vrProdutoPreco.text != ""
            && vrProdutoImagem.image != nil && vrContatoTel.text != "" && vrContatoTel.text != ""){
            let p = Produto()
            p.produtoNome = vrProdutoNome.text!
            p.produtoDescricao = vrProdutoDescricao.text!
            p.produtoPreco = vrProdutoPreco.text!
            p.produtoImagem = vrProdutoImagem.image!
            p.contatoNome = vcContatoNome.text!
            p.contatoTel = vrContatoTel.text!
            //Transformando imagem do produto em String base64 para enviar ao banco do firebase
            let imageData:NSData = UIImagePNGRepresentation(p.produtoImagem)! as NSData
            let strBase64 = imageData.base64EncodedString(options: .lineLength64Characters)
            let item = ["produtoNome": p.produtoNome, "produtoDescricao": p.produtoDescricao,
                        "produtoPreco": p.produtoPreco, "produtoImage": strBase64,
                        "contatoNome": p.contatoNome, "contatoTel": p.contatoTel] as [String : Any]
            self.ref?.child("Produtos").childByAutoId().setValue(item)
        } else {
            print("Ainda faltam dados para cadastro")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CadastroViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            vrProdutoImagem.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
