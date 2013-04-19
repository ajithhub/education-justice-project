URL:=http://ejpdocs.cuforrent.com/
PUBLISH_PATH:=/u/aantony/public_html/wikibooks
PUBLISH_URL:=http://homedirs/~aantony/wikibooks

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

docs:
	python yaml_collection_to_json.py test_book.yml
	mw-zip -c http://ejpdocs.cuforrent.com/ -o test_book.zip -m test_book.json
	mw-render -c test_book.zip -o test2.2.zim -w zim
	cp *.{pdf,zim} /u/aantony/public_html/wikibooks/




