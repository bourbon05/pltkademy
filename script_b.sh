
#!/bin/bash

#creating files:
touch random_text_{1..10}.txt

#filling files with random characters:
for data in random_text_{1..10}.txt ; do
	shuf -er -n 1000 {0..9} > $data;
# shuf options -e: each ARG is an input line
#	       -r: repeats output 
done

echo "Job's done"
