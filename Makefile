check:
	makepkg -s -c -i

submit:
	mkaurball
	aur-submit kramdown-man*.src.tar.gz

clean:
	rm -rf pkg src kramdown-man* ruby-kramdown-man*

release: check submit clean

.PHONY: check submit clean release
