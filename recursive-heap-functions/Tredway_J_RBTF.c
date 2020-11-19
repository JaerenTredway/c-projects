#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

/* ************************************
 * Author:      Jaeren Tredway
 * Date:        11-12-2020
 * Project:     #9: Recursive Binary Tree Functions
 * Description:
 *  Input:
 *      1.  No additional input required, program has built-in 'input'
 *  Output:
 *      1.  print out the results of each function 
 *  To compile and run:
 *      1.  gcc Tredway_J_RBTF.c
 *      2.  ./a.out
 ************************************ */

// a single node structure:
typedef struct node
{                       // represents one node in a Binary Tree
    int data;           // data associated with this node
    struct node *left;  // pointer to left-child node in tree
    struct node *right; // pointer to right-child node in tree
} Node;


// the tree structure:
typedef struct
{
    Node *root; // pointer to the root node of the tree
} BinaryTree;

//variables:
int singleChildCounter = 0;


// function proto-types:
void createTree(BinaryTree *someTree);
Node *initTree();
void toString(Node *someTree);
void preorder(Node *curr);
void postorder(Node *curr);
int size(Node *curr);
int height(Node *curr);
bool contains(Node *curr, int target);
bool isHeapOrdered(Node *curr);
int numSingleChild(Node *curr);
void makeMirror(Node *curr);


//main method sets up tree, then prints out function results:
int main()
{
    //set up tree:
    BinaryTree *myTree = malloc(sizeof(BinaryTree));
    createTree(myTree); // initialize the fields of the list
    myTree->root = initTree();
    printf("the tree is:\n");
    toString(myTree->root);

    //print out function results:
    int treeSize = size(myTree->root);
    printf("\nthe tree has size = %d\n", treeSize);

    int treeHeight = height(myTree->root);
    printf("\nthe tree has height = %d\n", treeHeight);

    bool flag = contains(myTree->root, 12);
    printf("\nthe tree contains 12: %d\n", flag);

    bool isValidHeap = isHeapOrdered(myTree->root);
    printf("\nthe tree is heap ordered: %d\n", isValidHeap);

    int numSingle = numSingleChild(myTree->root);
    printf("\nthe number of nodes with 1 child is: %d\n", numSingle);

    makeMirror(myTree->root);
    printf("\nafter taking the mirror image, the tree is:\n");
    toString(myTree->root);
} //END main() method


// start the tree by pointing to the root:
void createTree(BinaryTree *someTree)
{
    someTree->root = NULL;
}


// initialize one tree Node with the given data:
Node *initNode(int theData)
{
    Node *theNode;

    theNode = malloc(sizeof(Node));
    theNode->data = theData;
    theNode->left = NULL;
    theNode->right = NULL;

    return (theNode);
}


// set the data values of each node, and return a pointer to the root:
Node *initTree()
{
    Node *aLeaf, *bLeaf, *cLeaf, *dLeaf, *eLeaf;
    Node *fNode, *gNode, *hNode, *iNode, *jNode, *kNode, *lNode, *mNode;

    aLeaf = initNode(18);
    bLeaf = initNode(5);
    cLeaf = initNode(12);
    dLeaf = initNode(14);
    eLeaf = initNode(33);

    fNode = initNode(17);
    fNode->left = bLeaf;
    fNode->right = cLeaf;

    gNode = initNode(87);
    gNode->left = fNode;
    gNode->right = NULL;

    hNode = initNode(25);
    hNode->left = NULL;
    hNode->right = gNode;

    iNode = initNode(35);
    iNode->left = aLeaf;
    iNode->right = hNode;

    jNode = initNode(29);
    jNode->left = dLeaf;
    jNode->right = NULL;

    kNode = initNode(38);
    kNode->left = jNode;
    kNode->right = eLeaf;

    lNode = initNode(49);
    lNode->left = NULL;
    lNode->right = kNode;

    mNode = initNode(53);
    mNode->left = iNode;
    mNode->right = lNode;

    return (mNode); // return a pointer to root of the tree
}


// output the contents of the Tree:
void toString(Node *root)
{
    preorder(root); // kick-start the recursion
    printf("\n");
}


// output the contents of the Tree in PREORDER:
void preorder(Node *curr)
{
    if (curr == NULL) {
        return; // tree is empty, nothing to output
    } else {
        printf("%d ", curr->data);
        preorder(curr->left); // left subtree
        preorder(curr->right); // right subtree
    }
}


// output the contents of the Tree in POSTORDER:
void postorder(Node *curr)
{
    if (curr == NULL) {
        return; // tree is empty, nothing to output
    } else {
        postorder(curr->left); // left subtree
        postorder(curr->right); // right subtre
        printf("%d ", curr->data);
    }
}


// return true if-and-only-if the subtree pointed to by
// the parameter curr is "heap-ordered", that is, the value in
// each node is smaller than its parent value:
bool isHeapOrdered(Node *curr)
{
    // exit condition, if node has no children: 
    if (curr->left == NULL && curr->right == NULL) {
        return (true);
    // if the node has only one (left) child, recurse that branch:
    } else if (curr->right == NULL) {  
        if (curr->data >= curr->left->data) {
            isHeapOrdered(curr->left);
        } else return (false);
    // if the node has only one (right) child, recurse that branch:
    } else if (curr->left == NULL) {  
        if (curr->data >= curr->right->data) {
            isHeapOrdered(curr->right);
        } else {
            //printf("FOUND THE FAILURE LOCATION\n");
            return (false);
        }
    // if there are 2 child nodes, recurse down both sub-trees: 
    } else if (curr->left != NULL && curr->right != NULL) {
        if (curr->data >= curr->left->data && curr->data >= curr->right->data) {
            return ((isHeapOrdered(curr->left)) && 
                (isHeapOrdered(curr->right))); 
        } else return (false);
    }
    return (false);
}


// return the number of nodes in the tree that have exactly
// one child:
int numSingleChild(Node *curr)
{
    // exit condition, if node has no children: 
    if (curr->left == NULL && curr->right == NULL) {
        return (singleChildCounter); 
    }
    // if the node has only one child, recurse down that branch: 
    if (curr->right == NULL) { 
        singleChildCounter++; 
        numSingleChild(curr->left);
    } else if (curr->left == NULL) {
        singleChildCounter++; 
        numSingleChild(curr->right);
    // if there are 2 child nodes, recurse down into both:
    } else if (curr->right != NULL && curr->left != NULL){
        (numSingleChild(curr->left));
        (numSingleChild(curr->right)); 
    }
    return singleChildCounter;
}


// transform the subtree pointed to by curr to be its mirror-image,
// that is, the right child becomes the left child, and vice versa:
void makeMirror(Node *curr)
{
}


// return the number of nodes in the subtree:
int size(Node *curr)
{
    if (curr == NULL) {
        return 0; // tree is empty
    } else {
        int leftSize = size(curr->left); // left subtree
        int rightSize = size(curr->right); // right subtree
        return (leftSize + rightSize + 1);
    }
}


// return the height of the subtree pointed to by curr:
int height(Node *curr)
{
    if (curr == NULL) {
        return -1; // tree is empty
    } else {
        int leftHeight = height(curr->left); // left subtree
        int rightHeight = height(curr->right); // right subtree
        if (leftHeight > rightHeight)
            return leftHeight + 1;
        else
            return rightHeight + 1;
    }
}


// return true if-and-only-if the subtree below curr
// contains the given target:
bool contains(Node *curr, int target)
{
    if (curr == NULL)
        return false; // tree is empty
    else if (curr->data == target)
        return true;
    else {
        bool leftSide = contains(curr->left, target); // left subtree
        if (leftSide)
            return true;
        bool rightSide = contains(curr->right, target); // right subtree
        return (rightSide);
    }
}
