//
//  Item.h
//  lista
//
//  Created by Jean Jean on 18/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Item : NSManagedObject

@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSNumber * estado;
@property (nonatomic, retain) NSManagedObject *lista;

@end
