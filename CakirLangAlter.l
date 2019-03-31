%{
 #include <stdlib.h> 
 #include <math.h>
 #include "CakirLangAlter.h"
 void yyerror(char *);
%}

   /*	
	*	CakirLang
	*	Ş. Anıl ÇAKIR	20160808011
	*	Ezgi ÇAKIR	20150807005
	*/	

%option nounput yylineno

%%

":"							return COLON;			//swp
"<=>"						return ANCAK;			// logic operator
"=>"						return ISE;			// mantik ise baglacı, buyukesittir degil
">=" 						return GE;
"<=" 						return LE;
"==" 						return EQ;
"!=" 						return NE;
"++"    					return INC;
"--"    					return DEC;
"+"     					return PLUS;
"-"     					return MINUS;
"/"     					return DIV;
"*"     					return MUL;
"^"   	  					return POW;
"("    						return OPENBRACKET;
")"     					return CLOSEBRACKET;
";"							return SEMICOLON;		//swp
"%"     					return MOD;
"!"     					return NOTT;
"="   	  					return ASSIGN;
"\n"   			 			return EOLN;
"dongu"						return WHLE;
"eger" 						return IFF;
"yazdir" 					return PRIN;
"okut"						return SCN;
"devam"						return CONT;
"kir"						return BRK;
"bak"						return SWTCH;
"durum"						return CAS;
(dogru|yanlis)				return BOOL;
[a-zA-Z_]+[0-9]* 			return IDENT;
[+-]?[0-9]+    				return NNUMBER ;		//
[+-]?[0-9]+[\.][0-9]*		return DNUMBER;
[ \t\n]+					;
. 							printf("Beklenmedik Karakter \n");

%%
int yywrap(void) {
	return 1;
}
