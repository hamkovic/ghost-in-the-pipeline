.PHONY: print-tags
print-tags:
	@python3 -c 'import os; \
vals=[os.environ.get(k,"") for k in ("FLAG1","FLAG2","FLAG3")]; \
[print("TAG%d:"% (i+1), "-".join("%02x"%b for b in v.encode())) for i,v in enumerate(vals)]'
