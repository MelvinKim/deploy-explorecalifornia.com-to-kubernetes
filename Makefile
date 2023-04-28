.PHONY:	run_website stop_website install_kind

run_website:
	docker build -t explorecalifornia.com . && \
		docker run -d --rm --name explorecalifornia.com -p 5000:80 explorecalifornia.com

stop_website:
	docker stop explorecalifornia.com

install_kind:
	curl --location --output ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.18.0/kind-darwin-amd64 && \
		chmod +x ./kind && \
			./kind --version

