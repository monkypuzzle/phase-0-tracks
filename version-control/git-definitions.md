# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a process by which developers ensure that any changes being made to a master codebase concurrently don't conflict and can ultimately be combined. Each developer downloads a "version" of the code- base to edit and must go through a series of checks before incorporating their changes into the master.

* What is a branch and why would you use one?

A branch is a divergence from the main codebase that can ultimately be merged back in to the master. You would use one whenever you might be working on a feature that's relatively self-contained and can be parsed out to be worked on independently. It's different from a fork in that instead of being an entire repository that's been separated from the original repository, it's just a different version of the same repository, and the intention is ultimately for it to be merged with the master.

* What is a commit? What makes a good commit message?

A commit is when, after finalizing some changes to a file, you're sending those changes to be added to the master copy of the file in question. My sense of it is that it's kind of like a "save". A good commit message is concise but specific - it should mention specifically what has been changed so that anybody reviewing commits can understand who has done what.

* What is a merge conflict?

A merge conflict is when two or more people have committed changes to the master version that conflict. These conflicts must be resolved manually, with someone (presumably whoever committed most recently, and therefore received the conflict alert) reviewing the conflicts in the code, and deciding how to reconcile any differences.

Check out these emoji: :ramen: :moon: :sunflower: