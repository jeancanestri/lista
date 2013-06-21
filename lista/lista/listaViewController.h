//
//  listaViewController.h
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Lista.h"
#import "Item.h"

@interface listaViewController : UITableViewController
{
    NSMutableArray *arrayLista;
}


//Vetor que vai ter uma lista em específico
@property (nonatomic, strong) NSMutableArray *arrayLista;



///////////////////// BOTOES INTERFACE////////////////////////
//Botão que adiciona item
- (IBAction) adicionaItem;
- (IBAction) removeItem;

@end