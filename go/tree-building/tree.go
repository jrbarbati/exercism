// Package tree contains methods to build a tree of Records.
package tree

// Record holds sufficient data for building tree of Records.
type Record struct {
	ID     int
	Parent int
}

// Node is a node of the tree that represents a Record and it's children.
type Node struct {
	ID       int
	Children []*Node
}

// Build builds a Record tree given a slice of Records.
func Build(records []Record) (*Node, error) {
	return nil, nil
}
