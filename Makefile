TARGETS = noargs noscripts noplugins noplugins_noscripts

$(TARGETS):
	docker-compose up --build $@
	
all: $(TARGETS) clean
	
clean:
	docker-compose down -t 0
	
