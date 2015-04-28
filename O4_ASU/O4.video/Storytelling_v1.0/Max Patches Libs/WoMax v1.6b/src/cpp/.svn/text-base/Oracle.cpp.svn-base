/*---------------------------------
 * Oracle.cpp
 * Created on 09/03/09 by BenCello
 *---------------------------------*/

#include <iostream>
#include <map>
using namespace std;

#include "Oracle_classes.hpp"
#include "Oracle_label.hpp"
#include "Oracle_data.hpp"
#include "Oracle_learn.hpp"


int main (int argc, char * const argv[]) {
	O_oracle oracle;
	O_data data;
	O_char a ('a');
	O_char b ('b');
	O_char c ('c');
	
	oracle.start();
	data.start<O_char>();
	
	O_learner build (oracle,data);
	
	build.add(a);
	build.add(b);
	build.add(c);
	build.add(a);
	build.add(b);
	build.add(c);
	build.add(c);
	build.add(a);
	
	//cout<<oracle;
	//cout<<*(O_spectral*)data[7];
	
	list<pair<O_state*,int> > * SLT = new list<pair<O_state*,int> >;
	SLT = oracle[0]->rec_sortSLT(SLT,3);
	list<pair<O_state*,int> >::iterator SLTit;
	for (SLTit=SLT->begin(); SLTit!=SLT->end(); SLTit++) {
		cout<<(*SLTit).first->get_statenb()<<" "<<(*SLTit).second<<endl;
	}
	cout<<endl;
	SLT = oracle[6]->sortedSLT(1,3);
	for (SLTit=SLT->begin(); SLTit!=SLT->end(); SLTit++) {
		cout<<(*SLTit).first->get_statenb()<<" "<<(*SLTit).second<<endl;
	}
	
	//oracle.freestates();
	//data.freestates<O_char>();
}


