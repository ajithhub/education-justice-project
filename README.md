Documentation support tools for the EJP computer lab
=========================

http://ejpdocs.cuforrent.com/wiki/Producing_PDF_and_ZIM_locally

The files here help generate offline zim and pdf formats of media wiki pages.
See the requirements.txt for the 'pip freeze' of the virtuaenv I''m using at the
time of this writing.

References:
http://www.mediawiki.org/wiki/Extension:Collection
https://github.com/pediapress


The general workflow of the process is as follows:
=============================

1. Prepare yaml file describing the topics to collect
2. Generate the full JSON file that will be the input to mw-zip
3. Run mw-zip to collect and archive the remote wiki by way of the media wiki api
4. Use mw-render to produce zim or pdf files
