//
//  CadastroViewController.swift
//  Ecommerce
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var vrProdutoNome: UITextField!
    @IBOutlet weak var vrProdutoDescricao: UITextField!
    @IBOutlet weak var vrProdutoPreco: UITextField!
    @IBOutlet weak var vrProdutoImagem: UIImageView!
    @IBOutlet weak var vcContatoNome: UITextField!
    @IBOutlet weak var vrContatoTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tirarFoto(_ sender: UIButton) {
    }
    
    @IBAction func cadastrar(_ sender: UIButton) {
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
