//
//  TreeUtil.cpp
//  HelloData
//
//  Created by Bob on 2022/7/20.
//

#include "TreeUtil.hpp"

#include <iostream>
#include <queue>
using namespace::std;

#define OVERFLOW -2
#define OK 1
#define NULL1 0
#define ERROR -1
#define MAXSIZE 100

typedef int  Status;
typedef char TelemType;

typedef struct BitTNode{
    TelemType data;
    struct BitTNode *lChild, *rChild;
    int flag;
}BitTNode, *BitTree;

typedef BitTree SElemType;

typedef struct {
    BitTNode *link;
    int tag;
}BElemType;

typedef struct {
    SElemType *base;
    SElemType *top;
    int stackSize;
}SqStack;


Status InitStack(SqStack &S){
    S.base = new SElemType[MAXSIZE];
    if (!S.base) return OVERFLOW;
    
    S.top = S.base;
    S.stackSize = MAXSIZE;
    return OK;
}

bool StackEmpty(SqStack S){
    return (S.top == S.base);
}

bool StackFull(SqStack S){
    return (S.top - S.base >= S.stackSize);
}

Status Push(SqStack &S, BitTree e){
    if (StackFull(S)) return ERROR;
    *S.top++ = e;
    return OK;
}

Status Pop(SqStack &S, BitTree &e){
    if (StackEmpty(S)) return ERROR;
    e = *--S.top;
    return OK;
}


/// 前序遍历
/// @param T 根节点
void PreOrder(BitTree T){
    if (T) {
        cout << T->data;
        PreOrder(T->lChild);
        PreOrder(T->rChild);
    }
}
 
/// 中序遍历
/// @param T 根节点
void InOrder(BitTree T){
    if (T) {
        InOrder(T->lChild);
        cout << T->data;
        InOrder(T->rChild);
    }
}

/// 后序遍历
/// @param T 根节点
void PostOrder(BitTree T){
    if (T) {
        PostOrder(T->lChild);
        PostOrder(T->rChild);
        cout << T->data;
    }
}


/// 求二叉树叶子节点个数
/// @param T 根节点
int CountLeaf(BitTree T){
    static int count = 0;
    if (T) {
        if (!T->lChild && !T->rChild) count++;
        CountLeaf(T->lChild);
        CountLeaf(T->rChild);
    }
    return count;
}


/// 求二叉树深度
/// @param T 根节点
int Depth(BitTree T){
    int dl, dr, d;
    if (!T) {
        d = 0;
    }else{
        dl = Depth(T->lChild);
        dr = Depth(T->rChild);
        d = 1 + (dl > dr ? dl : dr);
    }
    
    return d;
}
