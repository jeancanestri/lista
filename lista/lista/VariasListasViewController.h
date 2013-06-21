//
//  variasListasViewController.h
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "listaViewController.h"

@interface variasListasViewController : UITableViewController
{
    NSMutableArray *arrayVariasListas;
}


//Vetor que vai ter as listas
@property (nonatomic, strong) NSMutableArray *arrayVariasListas;


///////////////////// BOTOES INTERFACE////////////////////////
//Botão que cria uma Lista
- (IBAction) adicionaLista;
- (IBAction) editaLista;

@end
