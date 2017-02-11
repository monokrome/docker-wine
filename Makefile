all: bin/winetricks bin/xvfb-run
	docker build -t monokrome/wine:latest .


bin/winetricks:
	wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks -P ./bin
	chmod +x $@


bin/xvfb-run:
	wget https://raw.githubusercontent.com/monokrome/xvfb-run/master/xvfb-run -P ./bin
	chmod +x xvfb-run


clean:
	rm -rf bin


.PHONY: clean
