while(1)
{
	`apps/openssl s_client -connect 10.102.57.146:443 -state -CAfile fidelityca.pem -cert tracecert.cer -key rsa_clnt1ky -certform DER -nokeycheck -multi_msg 2`;
	#`(echo -ne "GET /testsite/file5.html HTTP/1.1\r\nHost: 10.102.57.146\r\nKeep-Alive: 300\r\nConnection: keep-alive\r\n\r\n" ;) | apps/openssl s_client -connect 10.102.57.146:443 -state -cert rsa_clnt1.pem -key rsa_clnt1ky -nokeycheck -multi_msg 2 -ign_eof`;
}
