#!/bin/bash

echo "Number of Lines in your File: "
	wc -l < test.log

echo "Lines where the word Error appears: "
	 grep -i error test.log

echo "Number of lines with errors: "
	 grep -i error test.log | wc -l
