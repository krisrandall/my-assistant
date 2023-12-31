# Control the terminal using Langchain

Here is the [demo video](https://twitter.com/lobotomyrobot/status/1645209135728979969) of how it works.

Add your OPEN AI API KEY by executing the following command in your terminal:

```
export OPENAI_API_KEY=""
```

Then run the main.py file using a command like the following:

```
python3 assist.py "Please do the following three things:  1. create a .gitignore that ignores the file specific_task.txt, 2. modify yourself so that in addition to the additional_prompts.txt file, you also read in a specific_task.txt prompt (do not error if that file is not found), 3. commit and push all changes"
```

Modify the assistant to suit your needs by modifying `additional_prompts.txt`, or `specific_task.txt`


----

## AI Assistant, Work in Prgress

Originally based on git@github.com:toshvelaga/langchain-control-the-terminal.git

Modified by ChatGPT with the following prompt:

```
Please modify this LangChain python script for me in the following way:

1. The script should require command line input (or it can also be provided as a parameter), and
2. The prompt should be built from a hardcoded string (as it currently is) + read in a text file (additional_prompts.txt) + the command line input
```

The intention is to build up the `additional_prompts.txt` over time so that I can tell the thing to
do stuff that I want it to and it can automatically create new apps from scratch and such.

Not sure when I'll spend time on it or where it will go.

Decided to make this public, 'cause I usually don't, and so maybe it will evolve differently.

(NB: to install new python components, use `python3 -m pip install component` (just a reminder to myself :))
