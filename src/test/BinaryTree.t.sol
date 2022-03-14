// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "../BinaryTree.sol";
contract BinaryTreeTest is DSTest {
    BinaryTree Tree;

    function setUp() public {
        Tree = new BinaryTree();

    }

    /*
     state change tests
    */
    function testInsert() public {
        Tree.insert(1);
        assertTrue(Tree.getRoot() == 1);
    }

    function testFindElement() public {
        Tree.insert(1);
        assertTrue(Tree.findElement(1));
        assertTrue(!Tree.findElement(2));
    }

    function testDeletion() public {
        Tree.insert(1);
        Tree.insert(4);
        Tree.insert(2);
        Tree.insert(3);
        Tree.deleteNode(1);
        assertTrue(!Tree.findElement(1));
        assertTrue(Tree.findElement(4));
        assertTrue(Tree.findElement(2));
        assertTrue(Tree.findElement(3));
    }

    function testClearTree() public {
        Tree.insert(1);
        Tree.insert(4);
        Tree.insert(2);
        Tree.insert(3);
        Tree.deleteNode(1);
        Tree.deleteNode(2);
        Tree.deleteNode(3);
        Tree.deleteNode(4);
        assertTrue(!Tree.findElement(1));
        assertTrue(!Tree.findElement(4));
        assertTrue(!Tree.findElement(2));
        assertTrue(!Tree.findElement(3));
    }

    function testFindMin() public {
        Tree.insert(1);
        Tree.insert(4);
        Tree.insert(2);
        Tree.insert(3);
        assertTrue(Tree.findMin() == 1);
    }

    function testFindMax() public {
        Tree.insert(1);
        Tree.insert(4);
        Tree.insert(2);
        Tree.insert(3);
        assertTrue(Tree.findMax() == 4);
    }

    function testTreeSize() public {
        Tree.insert(1);
        Tree.insert(4);
        Tree.insert(2);
        Tree.insert(3);
        assertTrue(Tree.getTreeSize() == 4);
    }
}   
