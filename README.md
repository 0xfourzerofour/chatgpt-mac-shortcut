# Chat GPT Mac Shortcut

This script is a Bash script for calling the OpenAI API to generate text using the GPT-3.5 model. The script takes one argument, which is the user's message to the AI.

To use this script, you first need to obtain an OpenAI API key, which you should replace "INSERT_YOUR_API_KEY" with in the script. You also need to specify the model ID that you want to use, which is set to "gpt-3.5-turbo" in the script.

When you run the script with a message as an argument, it sends a request to the OpenAI API using cURL with the specified API key and model ID. The response is stored in the "response" variable. The script then uses the jq command-line tool to parse the response and extract the generated text, which is stored in the "output" variable. Finally, the script echoes the generated text to the terminal.

If you are using a Mac, you can create a shortcut to automate running this script with a selected text as an argument. Here are the steps to create the shortcut:

- Open Shortcuts and create a new shortcut.
- Allow Quick actions to be able to use shortcut keys.
- Search for the "Run Shell Script" action.
- Copy and paste the script into the "Run Shell Script" action.
- Add a show action which will get the output from the shellscript and show it as a pop up window.

Note: You can find most of the settings in the screenshots provided.

## Workflow

![Gpt Workflow](/data/shortcut.png)

![Gpt Workflow](/data/shortcut_1.png)

![Gpt Workflow](/data/shortcut_2.png)
