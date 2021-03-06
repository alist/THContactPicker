//
//  Contact.h
//  upsi
//
//  Created by Mac on 3/24/14.
//  Copyright (c) 2014 Laith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NICellFactory.h"

@interface THContact : NSObject <NICellObject>

- (instancetype)initWithAttributes:(NSDictionary *)attributes;
- (NSString *)fullName;

@property (nonatomic, assign) NSInteger recordId;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) BOOL isFetched;//if false, then needs to refresh
@property (nonatomic, assign, getter = isSelected) BOOL selected;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSDate *dateUpdated;

@end
