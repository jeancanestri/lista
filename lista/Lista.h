//
//  Lista.h
//  lista
//
//  Created by Jean Jean on 18/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Item;

@interface Lista : NSManagedObject
{
    NSString * nome;
}

@property (nonatomic, strong) NSString * nome;
//@property (nonatomic, retain) NSString * tipo;
//@property (nonatomic, retain) NSManagedObject *criador;
//@property (nonatomic, retain) NSSet *compartilhadaCom;
//@property (nonatomic, retain) NSSet *items;

@end

@interface Lista (CoreDataGeneratedAccessors)

- (void)addCompartilhadaComObject:(NSManagedObject *)value;
- (void)removeCompartilhadaComObject:(NSManagedObject *)value;
- (void)addCompartilhadaCom:(NSSet *)values;
- (void)removeCompartilhadaCom:(NSSet *)values;

- (void)addItemsObject:(Item *)value;
- (void)removeItemsObject:(Item *)value;
- (void)addItems:(NSSet *)values;
- (void)removeItems:(NSSet *)values;

@end
