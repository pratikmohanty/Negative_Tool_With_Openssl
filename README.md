# Negative_Tool_With_Openssl

New configurable options added to Openssl-1.0.1k to test negative scenarios from Client/Server side

Following are the new options added to openssl s_client:-
===================================================================

insert_app_data <position>  - send app data at specific position.
					
force_alert <position> <alert-number>  - force an alert to be sent at a specific position.

force_close_notify <position>  - force a close notify to be sent at a specific position.
					
corrupt_session_id	- corrupt the session ID after doing a -reconnect

corrupt_session_id_length <length>	- corrupt session length to <length> after doing a -reconnect

corrupt_session_version	- corrupt session version after doing a reconnect

nokeycheck	- forces the client not to check for the key mismatch in certificate

record_size <size>  - forces app data to be sent in packets of size <size>

send_unknown_cipher  - forces the client to send an unknown ciphers to the server

send_known_cipher  - forces the client to send a set of specific ciphers to the server

corrupt_cipher_suites_length <length>     - corrupts the number of cipher suites received on the server side

url  - specify the url to perform the get request from

corrupt_tls_extensions  - add random data to the tls extensions field

multi_msg <option>  - Works for when server requests for client certificate.

corrupt_major_minor <position> <value>  - Corrupt the ssl version used. Value to corrupt it to must be given in a 4 digit numeric format (eg, to corrupt it 0x0202, enter 0202)
					
no_ccs					- Send Finish Message without sending CCS

no_fin_other_hndsh			- Send some other handshake message instead of Finish message

data_reneg				- Send Application data between the Reneg handshake

data_reneg_client_hello                   - Send Application data before Client Hello of the Reneg handshake

reneg_bad_fin				- Send Bad Finish message for Reneg Handshake

hndsh_rec_zero <value>			- Send zero byte record for Encrypted handshake message.

sep_tcp_seg_client                        - Send Handshake messages in separate TCP segments

ssl_msg_zero <value>                    - Send only 0's in record of SSL handshake message.
			
Following are the new options added to openssl s_server:-
===================================================================
insert_app_data <position>  - send app data at specific position.
					
force_alert <position> <alert-number>  - force an alert to be sent at a specific position.

force_close_notify <position>  - force a close notify to be sent at a specific position.
					
corrupt_session_id	- corrupt the session ID after doing a -reconnect

corrupt_session_id_length <length>	- corrupt session length to <length> after doing a -reconnect

corrupt_session_version	- corrupt session version after doing a reconnect

nokeycheck	- forces the client not to check for the key mismatch in certificate

record_size <size>  - forces app data to be sent in packets of size <size>

send_ec_point_extn  				- force the ec point extension to be sent in the server hello

send_reneg_info_extn  				- force the renegotiation info extension to be sent in the server hello

corrupt_tls_extensions  - add random data to the tls extensions field

multi_msg <option>  - Options 4,5,6,7 works for DH ciphers.

corrupt_major_minor <position> <value>  - Corrupt the ssl version used. Value to corrupt it to must be given in a 4 digit numeric format (eg, to corrupt it 0x0202, enter 0202)
					
sep_tcp_seg_server                       - Send Handshake messages in separate TCP segments				
