Documentation support tools for the EJP computer lab
=========================

Pediapress offers a public mwlib rederer, but it can''t handle the kind of load
we want, and is a huge pain to use for large "books".  Further, our hosting is
unreliable, so we need to patch mwlib to do what we want.

http://ejpdocs.cuforrent.com/wiki/Producing_PDF_and_ZIM_locally


References:
http://www.mediawiki.org/wiki/Extension:Collection
https://github.com/pediapress

The files here help generate offline zim and pdf formats of media wiki pages.
See the requirements.txt for the 'pip freeze' of the virtuaenv I''m using at the
time of this writing.

You will need to specify the pediapress repo to get the specific versions:

  pip install -r requirements.txt -i http://pypi.pediapress.com/simple/

Also depends on libevent-devel and pdftk at least.  There are a whole lot
native modules needed so be prepared to debug compilation errors from missing
dependencies.  You should be using a virtualenv for this.

The general workflow of the process is as follows:
=============================

1. Prepare yaml file describing the topics to collect
2. Generate the full JSON file that will be the input to mw-zip
3. Run mw-zip to collect and archive the remote wiki by way of the media wiki api
4. Use mw-render to produce zim or pdf files


Things to to next
============

* Fiugure out why we have to retry, and why it always works on a second attempt
* Cache images locally.  No sense downloading thema ll again if we know they didn't change.

