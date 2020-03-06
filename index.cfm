<cfscript>
  systemOutput( '#now()#' );
  for( i=1; i <= 100; i++ ){
    writeOutput( '<a title="#encodeForHTMLAttribute( 'I break all the things' )#" href="/index.cfm?num=#i#">link to #i#</a>');
    writeoutput( '<br>' );
    if( structkeyexists( url, 'num' ) ){
      newnum = i+num;
      writeOutput( '<a title="#encodeForHTMLAttribute( 'I break all the things' )#" href="/index.cfm?num=#newnum#">link to #newnum#</a>');
      writeoutput( '<br>' );
    }
    writeoutput( '<br>' );
  }
</cfscript>