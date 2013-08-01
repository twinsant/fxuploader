MAIN=uploader.mxml
SOURCES=$(MAIN) RoundedCornerSkin.mxml
SWF=uploader.swf
$(SWF):$(SOURCES)
	mxmlc -output=$(SWF) -debug=true -static-link-runtime-shared-libraries -use-network $(MAIN)

clean:
	rm $(SWF)

release:$(SOURCES)
	mxmlc -output=$(SWF) -debug=false -static-link-runtime-shared-libraries -use-network $(MAIN)
