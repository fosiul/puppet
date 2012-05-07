class baseclass { 
        include networking::resolver
	 include admin::sudo
}
 
node default { 
        include baseclass
}
