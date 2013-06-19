//
//  VariasListasViewController.h
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Usuario.h"
#import "Lista.h"
#import "Item.h"



@interface VariasListasViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *arrayVariasListas;
}


//Vetor que vai ter as listas
@property (nonatomic, strong) NSMutableArray *arrayVariasListas;


@end
