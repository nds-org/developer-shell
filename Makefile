
IMAGES = developer-shell
-include Makefile.nds

#
#  If we get here, there was no Makefile.nds included.....
#  Assume that we are bootstrapping in a system with make installed,
#  so just call bootstrap
# 
bootstrap-developer-shell:
	./bootstrap
