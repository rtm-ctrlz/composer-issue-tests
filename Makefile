run: clean
	docker run --rm \
		-v "${PWD}/lib-a:/src/lib-a:ro" \
		-v "${PWD}/project:/src/project:ro" \
		-v "${PWD}/test-in-docker.sh:/src/test-in-docker.sh:ro" \
		composer:2.0.8 \
		sh /src/test-in-docker.sh

clean:
	@rm -rf \
		${PWD}/lib-a/build/build.log \
		${PWD}/lib-a/vendor \
		${PWD}/project/vendor