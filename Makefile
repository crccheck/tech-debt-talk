build:
	docker build -t crccheck/managing-tech-debt-slides .

run:
	docker run --rm --name tech_debt_slides -p 8001:1947 \
	  crccheck/managing-tech-debt-slides

gh-pages:
	git push -f origin HEAD:gh-pages
