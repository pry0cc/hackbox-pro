#!/bin/bash

cd Recon

for f in $(bash -c ls); 
do
	cd $f
	
	if [[ -f requirements.txt ]]
	then
		echo "$f is python!"
		pip install -r requirements.txt
		pip3 install -r requirements.txt
	fi

	if [[ -f Gemfile ]]
	then
		echo "$f is ruby!"
		bundle install
	fi

	cd ..
done
