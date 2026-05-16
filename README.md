# Writing an NIH F30, optimized for AI to help you

The GitHub repository, or project folder, shows how I structured my NIH F30 grant.
I hope this can help you find a setup for yourself that is easier and faster.
[YouTube video](https://www.youtube.com/watch?v=oi-B7zu8M8g)

## Motivation

Biomedical science is used to writing grants and paper using a big Word file.
This is useful in some ways, but has drawbacks: citation handling is only there on desktop, the formatting needs to be set every time, it's hard to see what changed since last version, and it's unwieldy to have the whole grant in just one big file.
In our current age of AI LLMs (Large Language Models), we encounter even more problems: copy/pasting sections into chat windows gives only a static snapshot without the context of other sections, and full Word docs are not as easy for AI models to parse.
What if we can solve all of these problems and have a reproducible grant-writing template that is built to have AI models help us make higher quality grants in less time?

## The Basic Idea

While many of us only use ChatGPT and other AI models through the online chat window, AI engineers built tools like Claude Code or OpenAI's Codex for fellow programmers.
They work with programming projects that have multiple files of many words each (code).
These files depend on each other and a change in one part of the codebase might affect another part.

Wait a minute...

Grants are also files of text with many sections that depend on each other!
Here, we leverage AI tools built for code to create a system where AI models can see a live view of our whole grant at all times.
They can also read NIH instructions, style guides for writing, planning documents, bibliographies, and more.

## What This Contains

The repository contains a template filled with a small draft of a made-up student, Allie Gator at the University of Florida (Go Gators!).
The mentors mentioned are the names of great scientists playing made-up characters.

## Setup

Setting this up involves some technical steps that not everyone is familiar with.
Luckily, the details are all packed within [SETUP.md](SETUP.md), which you can feed into an LLM to help guide you.
You can also have you AI agent give you a [GUIDED_TOUR.md](GUIDED_TOUR.md). Just ask it!

## More Details about the Ingredients

### Markdown
The "source" files are a type of file called Markdown, which is almost like basic .txt files except that you can *italicize* words with a single '*' on either side, **bold** them with two asterisks, and other formatting.
It's super handy.
In fact, the new NIH SciENcv biosketches use [markdown formatting](https://www.ncbi.nlm.nih.gov/sciencv/wikihelp/)!
[Here](https://markdownlivepreview.com/) is a nice guide.

Word files (.docx) are actually really complex from a computer standpoint, and require a specialized program to open them up.
Markdown files (and other "plain text" files) are so simple you can open them up in Wordpad!
This simplicity is a blessing and also makes them easier for AI agents to read.

### Quarto
A program called [Quarto](https://quarto.org/) was made to turn markdown files into research-quality documents.
You'll see a special file called `draft.qmd` which is a Quarto markdown file which ties all of the section files together.
Markdown (especially with Quarto) has a lot of cool features, including tying 

### VSCode Editor
To actually look at the grant project, I recommend using [Microsoft VSCode](https://code.visualstudio.com/download).
This is the most popular code editor that programmers use.
This is perfect for us as it allows us to look at the different files, has an option to view the "prettified" markdown preview, and has a built-in sidebar for AI agents.

### AI Service
I recommend you get a subscription for an AI service which includes coding agent (Codex, Claude Code, Gemini CLI, etc.).
This does cost money, but allows you to use excellent AI models which will make your life easier and grant better.
I recommend either OpenAI or Anthropic (Claude) $20/month plan.

### Git and GitHub
You are likely familiar with files like `Specific_Aims_v12_no_sequencing.docx` or `Draft_final_03_22_v3.docx`.
Programmers also have to worry about different versions of files, especially when code files depend on each other or many people are working on one project.
A [cool guy](https://en.wikipedia.org/wiki/Linus_Torvalds) made a program called [Git](https://github.com/git-guides), which acts like "Track Changes" and keeps a history of what changed in each file forever.
A company called [GitHub](https://github.com/) made a cloud service using Git to hold on to programming projects to make it easier to collaborate, kind of like OneDrive or Dropbox.
This is *super* useful together because it gives you Tracked Changes for everything and makes it easier to work from multiple computers.
There are many details to this but any LLM can explain it to you at your desired level of depth ;).


## What can the AI do?

But what can the AI do?
And, specifically, what can it do here that it can't do in the normal ChatGPT browser window?

The `ai/` folder tells an agent what the project is, how the writing should sound, where the files live, and what rules to follow.
That means you can ask for help without re-explaining the whole grant every time.

Examples of useful requests:

- "Export the Specific Aims page as a .docx for my PI."
- "Turn this mentor feedback into a checklist."
- "Revise the Candidate section so it better matches the training plan."
- "Check whether Aim 3 depends too much on Aim 2."
- "Find every place where I describe the central hypothesis and make the wording consistent."
- "Read my aims page and tell me where the logic breaks."

This works better when the grant is in "plain text" (.md or .txt but NOT .docx) because the agent can inspect the whole structure, edit the right files directly, and keep track of changes.

## What Stays Familiar

This workflow does not require you to abandon normal grant culture.

You can still:

- send Word documents to mentors
- collect tracked comments
- make PDFs for layout review
- store biosketches and letters of support
- keep a references file
- assemble separate NIH attachment PDFs

The difference is that these are outputs and supporting materials.
The actual working draft lives in Markdown.

## What Is In This Template

- `markdown/` contains the grant sections.
- `ai/` contains instructions and project context for AI agents.
- `feedback/` is where you put comments, marked-up drafts, and reviewer notes.
- `biosketches/` contains synthetic biosketch drafts.
- `support/` contains synthetic letters of support.
- `refs/` contains the bibliography.
- `docs/workflows/` contains practical workflow notes.

You do not need to understand every folder on day one.
The structure is meant to become useful as the grant gets more complicated.

## A Caution

This grant is on a *public* GitHub repo, but you probably want to make your grant *private*.

AI can be helpful, but quality is supreme and you are the scientist.
You bear the ultimate responsibility for the grant.
Always check the grant.

