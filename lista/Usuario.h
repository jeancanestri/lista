//
//  Usuario.h
//  lista
//
//  Created by Jean Jean on 18/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Lista;

@interface Usuario : NSManagedObject

@property (nonatomic, retain) NSNumber * senha;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSSet *cria;
@property (nonatomic, retain) NSSet *compartilhadas;
@end

@interface Usuario (CoreDataGeneratedAccessors)

- (void)addCriaObject:(Lista *)value;
- (void)removeCriaObject:(Lista *)value;
- (void)addCria:(NSSet *)values;
- (void)removeCria:(NSSet *)values;

- (void)addCompartilhadasObject:(Lista *)value;
- (void)removeCompartilhadasObject:(Lista *)value;
- (void)addCompartilhadas:(NSSet *)values;
- (void)removeCompartilhadas:(NSSet *)values;

@end
