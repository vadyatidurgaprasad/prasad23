//
//  ViewController.m
//  CollectionView2
//
//  Created by A on 27/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic,weak)IBOutlet UICollectionView *collection;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collection.delegate=self;
    self.collection.dataSource=self;
    [self.collection reloadData];
    
    
    
    
}




-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 50;
    
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
    cell.backgroundColor=[UIColor redColor];
    [cell setTintColor:[UIColor greenColor]];
    
    
    
    return cell;
    
                                
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
