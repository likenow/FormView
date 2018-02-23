//
//  XYPHPhoneZonesItem.m
//  FormView
//
//  Created by 黄伯驹 on 23/02/2018.
//  Copyright © 2018 黄伯驹. All rights reserved.
//

#import "XYPHPhoneZonesItem.h"
#import "XYPHContryItem.h"

@interface XYPHPhoneZonesItem()

@property (nonatomic, strong, readwrite) NSString *groupKey;

@property (nonatomic, strong, readwrite) NSArray <XYPHContryItem *>*zones;

@end

@implementation XYPHPhoneZonesItem

+ (instancetype)itemWithKey:(NSString *)key zones:(NSArray *)zones {
    XYPHPhoneZonesItem *item = [XYPHPhoneZonesItem new];
    item.groupKey = key;
    NSMutableArray <XYPHContryItem *>*items = [NSMutableArray arrayWithCapacity:zones.count];
    for (NSDictionary *dict in zones) {
        XYPHContryItem *item = [XYPHContryItem new];
        item.name = dict[@"name"];
        item.content = dict[@"content"];
        item.dialCcode = dict[@"dial_ccode"];
        [items addObject:item];
    }
    item.zones = items;
    return item;
}

@end
