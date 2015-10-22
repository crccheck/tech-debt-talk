NAME = crccheck/tech-debt

build:
	docker build -t $(NAME) .

run:
	docker run --rm -t --name tech_debt_slides -p 8001:1947 $(NAME)

gh-pages:
	git push -f origin HEAD:gh-pages
