
test/temp.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
       0:	c3                   	ret    
       1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
       8:	00 00 00 00 
       c:	0f 1f 40 00          	nopl   0x0(%rax)
      10:	48 83 ec 28          	sub    $0x28,%rsp
      14:	48 8b 05 15 88 00 00 	mov    0x8815(%rip),%rax        # 0x8830
      1b:	31 c9                	xor    %ecx,%ecx
      1d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      23:	48 8b 05 16 88 00 00 	mov    0x8816(%rip),%rax        # 0x8840
      2a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      30:	48 8b 05 19 88 00 00 	mov    0x8819(%rip),%rax        # 0x8850
      37:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      3d:	48 8b 05 dc 87 00 00 	mov    0x87dc(%rip),%rax        # 0x8820
      44:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      4a:	48 8b 05 8f 86 00 00 	mov    0x868f(%rip),%rax        # 0x86e0
      51:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
      56:	75 0f                	jne    0x67
      58:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
      5c:	48 01 d0             	add    %rdx,%rax
      5f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
      65:	74 69                	je     0xd0
      67:	48 8b 05 a2 87 00 00 	mov    0x87a2(%rip),%rax        # 0x8810
      6e:	89 0d 98 af 00 00    	mov    %ecx,0xaf98(%rip)        # 0xb00c
      74:	8b 00                	mov    (%rax),%eax
      76:	85 c0                	test   %eax,%eax
      78:	75 46                	jne    0xc0
      7a:	b9 01 00 00 00       	mov    $0x1,%ecx
      7f:	e8 3c 62 00 00       	call   0x62c0
      84:	e8 c7 68 00 00       	call   0x6950
      89:	48 8b 15 40 87 00 00 	mov    0x8740(%rip),%rdx        # 0x87d0
      90:	8b 12                	mov    (%rdx),%edx
      92:	89 10                	mov    %edx,(%rax)
      94:	e8 a7 68 00 00       	call   0x6940
      99:	48 8b 15 10 87 00 00 	mov    0x8710(%rip),%rdx        # 0x87b0
      a0:	8b 12                	mov    (%rdx),%edx
      a2:	89 10                	mov    %edx,(%rax)
      a4:	e8 07 06 00 00       	call   0x6b0
      a9:	48 8b 05 e0 85 00 00 	mov    0x85e0(%rip),%rax        # 0x8690
      b0:	83 38 01             	cmpl   $0x1,(%rax)
      b3:	74 53                	je     0x108
      b5:	31 c0                	xor    %eax,%eax
      b7:	48 83 c4 28          	add    $0x28,%rsp
      bb:	c3                   	ret    
      bc:	0f 1f 40 00          	nopl   0x0(%rax)
      c0:	b9 02 00 00 00       	mov    $0x2,%ecx
      c5:	e8 f6 61 00 00       	call   0x62c0
      ca:	eb b8                	jmp    0x84
      cc:	0f 1f 40 00          	nopl   0x0(%rax)
      d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
      d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
      d9:	74 45                	je     0x120
      db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
      e0:	75 85                	jne    0x67
      e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
      e9:	0f 86 78 ff ff ff    	jbe    0x67
      ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
      f5:	31 c9                	xor    %ecx,%ecx
      f7:	85 d2                	test   %edx,%edx
      f9:	0f 95 c1             	setne  %cl
      fc:	e9 66 ff ff ff       	jmp    0x67
     101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     108:	48 8d 0d 81 06 00 00 	lea    0x681(%rip),%rcx        # 0x790
     10f:	e8 5c 0d 00 00       	call   0xe70
     114:	31 c0                	xor    %eax,%eax
     116:	48 83 c4 28          	add    $0x28,%rsp
     11a:	c3                   	ret    
     11b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
     124:	0f 86 3d ff ff ff    	jbe    0x67
     12a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
     131:	31 c9                	xor    %ecx,%ecx
     133:	45 85 c0             	test   %r8d,%r8d
     136:	0f 95 c1             	setne  %cl
     139:	e9 29 ff ff ff       	jmp    0x67
     13e:	66 90                	xchg   %ax,%ax
     140:	48 83 ec 38          	sub    $0x38,%rsp
     144:	48 8b 05 b5 86 00 00 	mov    0x86b5(%rip),%rax        # 0x8800
     14b:	4c 8d 05 c6 ae 00 00 	lea    0xaec6(%rip),%r8        # 0xb018
     152:	48 8d 15 c7 ae 00 00 	lea    0xaec7(%rip),%rdx        # 0xb020
     159:	48 8d 0d c8 ae 00 00 	lea    0xaec8(%rip),%rcx        # 0xb028
     160:	8b 00                	mov    (%rax),%eax
     162:	89 05 9c ae 00 00    	mov    %eax,0xae9c(%rip)        # 0xb004
     168:	48 8d 05 95 ae 00 00 	lea    0xae95(%rip),%rax        # 0xb004
     16f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
     174:	48 8b 05 45 86 00 00 	mov    0x8645(%rip),%rax        # 0x87c0
     17b:	44 8b 08             	mov    (%rax),%r9d
     17e:	e8 4d 61 00 00       	call   0x62d0
     183:	90                   	nop
     184:	48 83 c4 38          	add    $0x38,%rsp
     188:	c3                   	ret    
     189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     190:	41 55                	push   %r13
     192:	41 54                	push   %r12
     194:	55                   	push   %rbp
     195:	57                   	push   %rdi
     196:	56                   	push   %rsi
     197:	53                   	push   %rbx
     198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
     19f:	b9 0d 00 00 00       	mov    $0xd,%ecx
     1a4:	31 c0                	xor    %eax,%eax
     1a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
     1ab:	4c 89 c7             	mov    %r8,%rdi
     1ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
     1b1:	48 8b 3d 58 86 00 00 	mov    0x8658(%rip),%rdi        # 0x8810
     1b8:	44 8b 0f             	mov    (%rdi),%r9d
     1bb:	45 85 c9             	test   %r9d,%r9d
     1be:	0f 85 ac 02 00 00    	jne    0x470
     1c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
     1cb:	00 00 
     1cd:	48 8b 1d 6c 85 00 00 	mov    0x856c(%rip),%rbx        # 0x8740
     1d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
     1d8:	31 ed                	xor    %ebp,%ebp
     1da:	4c 8b 25 3b c0 00 00 	mov    0xc03b(%rip),%r12        # 0xc21c
     1e1:	eb 16                	jmp    0x1f9
     1e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     1e8:	48 39 c6             	cmp    %rax,%rsi
     1eb:	0f 84 1f 02 00 00    	je     0x410
     1f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     1f6:	41 ff d4             	call   *%r12
     1f9:	48 89 e8             	mov    %rbp,%rax
     1fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
     201:	48 85 c0             	test   %rax,%rax
     204:	75 e2                	jne    0x1e8
     206:	48 8b 35 43 85 00 00 	mov    0x8543(%rip),%rsi        # 0x8750
     20d:	31 ed                	xor    %ebp,%ebp
     20f:	8b 06                	mov    (%rsi),%eax
     211:	83 f8 01             	cmp    $0x1,%eax
     214:	0f 84 0d 02 00 00    	je     0x427
     21a:	8b 06                	mov    (%rsi),%eax
     21c:	85 c0                	test   %eax,%eax
     21e:	0f 84 7c 02 00 00    	je     0x4a0
     224:	c7 05 da ad 00 00 01 	movl   $0x1,0xadda(%rip)        # 0xb008
     22b:	00 00 00 
     22e:	8b 06                	mov    (%rsi),%eax
     230:	83 f8 01             	cmp    $0x1,%eax
     233:	0f 84 03 02 00 00    	je     0x43c
     239:	85 ed                	test   %ebp,%ebp
     23b:	0f 84 1c 02 00 00    	je     0x45d
     241:	48 8b 05 88 84 00 00 	mov    0x8488(%rip),%rax        # 0x86d0
     248:	48 8b 00             	mov    (%rax),%rax
     24b:	48 85 c0             	test   %rax,%rax
     24e:	74 0c                	je     0x25c
     250:	45 31 c0             	xor    %r8d,%r8d
     253:	ba 02 00 00 00       	mov    $0x2,%edx
     258:	31 c9                	xor    %ecx,%ecx
     25a:	ff d0                	call   *%rax
     25c:	e8 cf 08 00 00       	call   0xb30
     261:	48 8d 0d 18 0c 00 00 	lea    0xc18(%rip),%rcx        # 0xe80
     268:	ff 15 a6 bf 00 00    	call   *0xbfa6(%rip)        # 0xc214
     26e:	48 8b 15 bb 84 00 00 	mov    0x84bb(%rip),%rdx        # 0x8730
     275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 0x0
     27c:	48 89 02             	mov    %rax,(%rdx)
     27f:	e8 cc 65 00 00       	call   0x6850
     284:	e8 07 06 00 00       	call   0x890
     289:	48 8b 05 50 84 00 00 	mov    0x8450(%rip),%rax        # 0x86e0
     290:	48 89 05 f1 b8 00 00 	mov    %rax,0xb8f1(%rip)        # 0xbb88
     297:	e8 94 66 00 00       	call   0x6930
     29c:	31 c9                	xor    %ecx,%ecx
     29e:	48 8b 00             	mov    (%rax),%rax
     2a1:	48 85 c0             	test   %rax,%rax
     2a4:	75 1c                	jne    0x2c2
     2a6:	eb 58                	jmp    0x300
     2a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     2af:	00 
     2b0:	84 d2                	test   %dl,%dl
     2b2:	74 45                	je     0x2f9
     2b4:	83 e1 01             	and    $0x1,%ecx
     2b7:	74 27                	je     0x2e0
     2b9:	b9 01 00 00 00       	mov    $0x1,%ecx
     2be:	48 83 c0 01          	add    $0x1,%rax
     2c2:	0f b6 10             	movzbl (%rax),%edx
     2c5:	80 fa 20             	cmp    $0x20,%dl
     2c8:	7e e6                	jle    0x2b0
     2ca:	41 89 c8             	mov    %ecx,%r8d
     2cd:	41 83 f0 01          	xor    $0x1,%r8d
     2d1:	80 fa 22             	cmp    $0x22,%dl
     2d4:	41 0f 44 c8          	cmove  %r8d,%ecx
     2d8:	eb e4                	jmp    0x2be
     2da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     2e0:	84 d2                	test   %dl,%dl
     2e2:	74 15                	je     0x2f9
     2e4:	0f 1f 40 00          	nopl   0x0(%rax)
     2e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
     2ec:	48 83 c0 01          	add    $0x1,%rax
     2f0:	84 d2                	test   %dl,%dl
     2f2:	74 05                	je     0x2f9
     2f4:	80 fa 20             	cmp    $0x20,%dl
     2f7:	7e ef                	jle    0x2e8
     2f9:	48 89 05 80 b8 00 00 	mov    %rax,0xb880(%rip)        # 0xbb80
     300:	44 8b 07             	mov    (%rdi),%r8d
     303:	45 85 c0             	test   %r8d,%r8d
     306:	74 16                	je     0x31e
     308:	b8 0a 00 00 00       	mov    $0xa,%eax
	...
