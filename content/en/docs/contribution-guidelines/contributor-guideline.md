---
title: "Contributor guidelines"
linkTitle: "Contributor guidelines"
weight: 20
description: >
  These are recommendations when contributing to the SSS repositories.
  They consider contributions to both actual content (mostly Markdown) and source code (challenges and activities) made via Git.
  Make sure you follow them whenever you make a contribution.
---

## First Step

Some good first steps and best practices when using Git are explained here:

- the Git Immersion tutorial: https://gitimmersion.com/
- the Atlassian tutorial: https://www.atlassian.com/git/tutorials/learn-git-with-bitbucket-cloud
- this blog post on the ROSEdu Techblog: https://techblog.rosedu.org/git-good-practices.html

## Language

All of our content is developed in English.
This means we use English for content, support code, commit messages, pull requests, issues, comments, everything.

## Content Writing Style

This section addresses the development of session content and other Markdown files.

- Write each sentence on a new line. This way, changing one sentence only affects one line in the source code.
- Use the **first person plural** when writing documentation and tutorials.
- Use phrases like `we run the command / app`, `we look at the source code`, `we find the flag`.
- Use the second person for challenges and other individual activities.
- Use phrases like `find the flag`, `run this command`, `download the tool`.

## Issues

When opening an issue, please clearly state the problem.

- Make sure it's reproducible.
- Add images if required.
- Also, if relevant, detail the environment you used (OS, software versions).
- Ideally, if the issue is something you could fix, open a pull request with the fix.

## Discussions

Use Github discussions for bringing up ideas on content, new chapters, new sections.

- Provide support to others asking questions and take part in suggestions brought by others.
- For in-depth discussions, please join the [SSS Discord community](https://bit.ly/DiscordSecuritySummerSchool).
- Please be civil when taking part in discussions.

## Pull Requests

For pull requests, please follow the [GitHub flow](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork): create a fork of the repository, create your own branch, do commits, push changes to your branch, do a pull request (PR).

- The destination branch of pull requests is the default `master` branch.
- Make sure each commit corresponds to **one** code / content change only.
- Also make sure one pull request covers only **one** topic.
- How a good commit message should look like: https://cbea.ms/git-commit/.
- The use of `-s` / `--signoff` when creating a commit is optional, but strongly recommended.
