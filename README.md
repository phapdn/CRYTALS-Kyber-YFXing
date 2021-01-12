# CRYSTALS-Kyber

The project is implemented using Vivado 2017.3 on Windows system. The source codes are for academic use only.

Our design has been verified against NIST KAT files in round-3 submission (located in NIST-PQ-Submission-Kyber-20201001\Reference_Implementation\crypto_kem\kyber512 for kyber512, the other two in kyber768 and kyber1024 respectively). Output data points of major processures were compared with corresponding results in reference software implementation, and we have adjusted data orders in several places to make the design compliant. As no random number generator is involved in our design, we extract corresponding byte string that generated with randombytes() in C implementation as our random 256-bit input d in key generation and m in encapsulation, which means to verify the functionality of server or client, the random 256-bit d or m must be set manually (d can be set in Kyber_Server.v line 180, m in Kyber_Client.v line 170).

The simulation can be configured with different k (in Kyber_tb.v line 39), then two .txt files would be generated, namely output_ser.txt and output_cli.txt, corresponding to current m and d random input. Each row contains one 32-bit output, as part of pk or c and it should be noted that the last eight rows correspond to established 256-bit key. Besides, the expected results in KAT files (PQCkemKAT_xxxx.rsp) are extracted from byte arrays in C implementation and expressed in big-endian, contrary to the generated little-endian 32-bit output from our design.

Our paper can be found in https://(waiting for publication), bellow is the abstract.

Post-quantum cryptosystems should be prepared before the advent of powerful quantum computers to ensure information secure in our daily life. In 2016 a post-quantum standardization contest was launched by National Institute of Standards and Technology (NIST), and there have been lots of works concentrating on evaluation of these candidate protocols, mainly in pure software or through hardware-software co-design methodology on different platforms. As the contest progresses to third round in July 2020 with only 7 finalists and 8 alternate candidates remained, more dedicated and specific hardware designs should be considered to illustrate the intrinsic property of a certain protocol and achieve better performance. To this end, we present a standalone hardware design of CRYSTALS-KYBER, a module learning-with-errors (MLWE) based key exchange mechanism (KEM) protocol within the 7 finalists on FPGA platform. Through elaborate scheduling of sampling and number theoretic transform (NTT) related calculations, decent performance is achieved with limited hardware resources. The way that Encode/Decode and the tweaked Fujisaki-Okamoto transform are implemented is demonstrated in detail. Analysis about minimizing memory footprint is also given out. In summary, we realize the adaptive chosen ciphertext attack (CCA) secure Kyber with all selectable module dimension k on the smallest Xilinx Artix-7 device. Our design computes key-generation, encapsulation (encryption) and decapsulation (decryption and reencryption) phase in 3768/5079/6668 cycles when k = 2, 6316/7925/10049 cycles when k = 3, and 9380/11321/13908 cycles when k = 4, consuming 7412/6785 LUTs, 4644/3981 FFs, 2126/1899 slices, 2/2 DSPs and 3/3 BRAMs in server/client with 6.2/6.0 ns critical path delay, outperforming corresponding high level synthesis (HLS) based designs or hardware-software co-designs to a large extent.
