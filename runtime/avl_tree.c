#include "avl_tree.h"
#include "util.h"

int avl_get_height(Node *root){
  if(root == NULL)
    return 0;
  return root->height;
}

Node *avl_create_node(int key){
  Node* node = (Node *) malloc(sizeof(Node));
  node->key = key;
  node->left = NULL;
  node->right = NULL;
  node->height = 1;
  return node;
}

int avl_balance_diff(Node *root){
  if(root == NULL) {
    return 0;
  }
  return avl_get_height(root->left) - avl_get_height(root->right);
}

Node* avl_rotate_right(Node *root){
  Node* x = root->left;
  Node* T2 = x->right;

  x->right = root;
  root->left = T2;

  int xrh = avl_get_height(x->right), xlh = avl_get_height(x->left);
  x->height = MAX(xlh, xrh) + 1;
  int yrh = avl_get_height(x->right), ylh = avl_get_height(x->left);
  root->height = MAX(ylh, yrh) + 1;

  return x;
}

Node* avl_rotate_left(Node *root) {
  Node* y = root->right;
  Node* T2 = y->left;

  y->left = root;
  root->right = T2;

  int xrh = avl_get_height(root->right), xlh = avl_get_height(root->left);
  root->height = MAX(xlh, xrh) + 1;
  int yrh = avl_get_height(root->right), ylh = avl_get_height(root->left);
  y->height = MAX(ylh, yrh) + 1;

  return y;
}

Node *avl_insert(Node *root, int key) {
  if (root == NULL)
    return  avl_create_node(key);

  if (key < root->key)
    root->left  = avl_insert(root->left, key);
  else if (key > root->key)
    root->right = avl_insert(root->right, key);

  int lh = avl_get_height(root->left), rh = avl_get_height(root->right);
  root->height = 1 + MAX(lh, rh);
  int bf = avl_balance_diff(root);

  if(bf>1 && key < root->left->key) {
    return avl_rotate_right(root);
  }
  if(bf<-1 && key > root->right->key) {
    return avl_rotate_left(root);
  }
  if(bf>1 && key > root->left->key) {
    root->left = avl_rotate_left(root->left);
    return avl_rotate_right(root);
  }
  if(bf<-1 && key < root->right->key) {
    root->right = avl_rotate_right(root->right);
    return avl_rotate_left(root);
  }
  return root;
}

void avl_free(Node *root) {
  if (!root) return;
  avl_free(root->left);
  avl_free(root->right);
  free(root);
}

Node *avl_search(Node *root, int key) {
  if (!root) return NULL;
  if(root->key == key) return root;
  Node *where = key > root->key ? root->right : root->left;
  return avl_search(where, key);
}