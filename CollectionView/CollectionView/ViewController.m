//
//  ViewController.m
//  CollectionView
//
//  Created by A on 02/03/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,weak)IBOutlet UICollectionView *collection;
@property(nonatomic,strong)NSArray *arr1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collection.delegate=self;
    self.collection.dataSource=self;
    self.arr1=[NSArray arrayWithObjects:@"1",@"2",@"3",@"4", nil];
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.contentView.backgroundColor=[UIColor greenColor];
    return cell;

    if (collectionView.self.backgroundView==0) {
        cell.backgroundColor=[UIColor blueColor];
    }
    //*else if (cell==1){
      //  cell.backgroundColor=[UIColor redColor];
    //}
    //if (cell==2) {
    //    cell.backgroundColor=[UIColor grayColor];
  //  }else if (cell==3){
//                       cell.backgroundColor=[UIColor yellowColor];

    }

    
    
    
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
