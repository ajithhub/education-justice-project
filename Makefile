URL:=http://ejpdocs.cuforrent.com/
PUBLISH_PATH:=/u/aantony/public_html/wikibooks
PUBLISH_URL:=http://homedirs/~aantony/wikibooks


BOOKS=ejp_server_guide.zim ejp_server_guide.pdf

# Don't delete the zip intermediate file...
.PRECIOUS: %.zip


%.json: %.yml yaml_collection_to_json.py
	python yaml_collection_to_json.py --collection $< --url $(URL)

%.zip: %.json
	mw-zip -c $(URL)  -o $@ -m $<

%.pdf: %.zip
	mw-render -c $< -o $@ -w rl
	cp $@ $(PUBLISH_PATH)
	chmod a+r $(PUBLISH_PATH)/$@
	@echo Published PDF: $(PUBLISH_URL)/$@

%.zim: %.zip
	mw-render -c $< -o $@ -w zim
	cp $@ $(PUBLISH_PATH)
	chmod a+r $(PUBLISH_PATH)/$@
	@echo Published ZIM: $(PUBLISH_URL)/$@

all: $(BOOKS)

