package com.liysite.others;

public class OntamaRandomCreator extends RandomCreator {
	
	// Éú³ÉÓù»êĞÇ¼¶
    public int randomOntamaStar() {
    	int starnum = randomOne(1, 10000);
    	if(starnum <= 4000)
    		return 4;
    	else if(starnum > 4000 && starnum <= 7500)
    		return 5;
    	else
    		return 6;
    }
}
