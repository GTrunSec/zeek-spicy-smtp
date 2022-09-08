
compile:
    spicyz -D zeek analyzer/analyzer.spicy analyzer/analyzer.evt analyzer/zeek_analyzer.spicy -o smtp.hlto
test:
    zeek -B dpd -Cr ./tests/Trace smtp.hlto

read:
    zeek -r smtp.pcap smtp.hlto Spicy::enable_print=T
