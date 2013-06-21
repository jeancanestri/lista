//
//  listaViewController.h
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface listaViewController : UITableViewController
{
    NSMutableArray *arrayLista;
    NSIndexPath *lastIndexPath;
}


//Vetor que vai ter uma lista em específico
@property (nonatomic, strong) NSMutableArray *arrayLista;
@property (nonatomic, strong) NSIndexPath *lastIndexPath;

@end