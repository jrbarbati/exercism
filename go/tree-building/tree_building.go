// Package tree contains methods to build a tree of Records.
package tree

import (
	"errors"
	"sort"
)

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
	if len(records) == 0 {
		return nil, nil
	}

	sort.Slice(records, func(i, j int) bool {
		return records[i].ID < records[j].ID
	})

	if err := validateRecords(records); err != nil {
		return nil, err
	}

	root := &Node{records[0].ID, findRecordsWithParent(records[0].ID, records)}
	buildTree(root, records[1:])
	return root, nil
}

func validateRecords(records []Record) error {
	root := records[0]

	if root.ID != 0 {
		return errors.New("no root node")
	}

	if root.Parent > 0 {
		return errors.New("root has parent")
	}

	for i := 0; i < len(records); i++ {
		if i < len(records) - 1 && records[i] == records[i+1] {
			return errors.New("records contain duplicates")
		}

		if records[i].ID < records[i].Parent {
			return errors.New("parent id is higher than record id")
		}

		if i < len(records) - 1 && records[i].ID + 1 != records[i+1].ID {
			return errors.New("non-continuous ids")
		}

		if records[i].ID == records[i].Parent && records[i].ID != 0 {
			return errors.New("record is parent to itself")
		}
	}

	return nil
}

func buildTree(parent *Node, records []Record) {
	for _, child := range parent.Children {
		child.Children = findRecordsWithParent(child.ID, records)

		if len(child.Children) == 0 {
			continue
		}

		buildTree(child, records)
	}
}

func findRecordsWithParent(parentId int, records []Record) []*Node {
	children := make([]*Node, 0)

	for _, record := range records[1:] {
		if record.Parent == parentId {
			children = append(children, &Node{ID: record.ID})
		}
	}

	if len(children) == 0 {
		return nil
	}

	return children
}
