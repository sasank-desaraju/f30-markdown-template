# References

My reference setup uses Zotero to maintain a bibliography and create a .bib file for use.

If you ask AI LLMs to do literature review and grab references, I recommend having LLMs generate DOIs.
This way, you can plug them into a citation manager like Zotero to see if that paper actually exists and is what you want.

I create a Zotero project for the grant.
I have AI create the DOIs in a comma-separated list and place them in `doi_list.md`.
Then, I copy those and put them in Zotero's magic wand "Add item by identifier".
This populates the references with the real information without risking AI hallucination.
Then, I have Zotero [export the collection](https://libguides.rhul.ac.uk/referencing/Zoterolatex) as a .bib (`f30.bib`).
You may have to install BetterBibTex in your Zotero beforehand.

Agents should not hand-edit `f30.bib`.
If a citation is missing, add the DOI to `doi_list.md` and ask the user to import it into Zotero and re-export the bibliography.
