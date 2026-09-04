serve:
	hugo serve

build:
	make -C politiques
	for document in charte coussin faecum positions codedevie; do \
		mkdir -p "static/documents/$$document" ; \
		cp "politiques/build/$$document.html" "static/documents/$$document/index.html" ; \
		cp "politiques/build/$$document.pdf" "static/documents/$$document.pdf" ; \
	done
