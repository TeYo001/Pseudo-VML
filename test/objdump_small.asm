
test/temp_small.bin:     file format binary


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
      7f:	e8 0c 62 00 00       	call   0x6290
      84:	e8 97 68 00 00       	call   0x6920
      89:	48 8b 15 40 87 00 00 	mov    0x8740(%rip),%rdx        # 0x87d0
      90:	8b 12                	mov    (%rdx),%edx
      92:	89 10                	mov    %edx,(%rax)
      94:	e8 77 68 00 00       	call   0x6910
      99:	48 8b 15 10 87 00 00 	mov    0x8710(%rip),%rdx        # 0x87b0
      a0:	8b 12                	mov    (%rdx),%edx
      a2:	89 10                	mov    %edx,(%rax)
      a4:	e8 d7 05 00 00       	call   0x680
      a9:	48 8b 05 e0 85 00 00 	mov    0x85e0(%rip),%rax        # 0x8690
      b0:	83 38 01             	cmpl   $0x1,(%rax)
      b3:	74 53                	je     0x108
      b5:	31 c0                	xor    %eax,%eax
      b7:	48 83 c4 28          	add    $0x28,%rsp
      bb:	c3                   	ret    
      bc:	0f 1f 40 00          	nopl   0x0(%rax)
      c0:	b9 02 00 00 00       	mov    $0x2,%ecx
      c5:	e8 c6 61 00 00       	call   0x6290
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
     108:	48 8d 0d 51 06 00 00 	lea    0x651(%rip),%rcx        # 0x760
     10f:	e8 2c 0d 00 00       	call   0xe40
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
     17e:	e8 1d 61 00 00       	call   0x62a0
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
     25c:	e8 9f 08 00 00       	call   0xb00
     261:	48 8d 0d e8 0b 00 00 	lea    0xbe8(%rip),%rcx        # 0xe50
     268:	ff 15 a6 bf 00 00    	call   *0xbfa6(%rip)        # 0xc214
     26e:	48 8b 15 bb 84 00 00 	mov    0x84bb(%rip),%rdx        # 0x8730
     275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 0x0
     27c:	48 89 02             	mov    %rax,(%rdx)
     27f:	e8 9c 65 00 00       	call   0x6820
     284:	e8 d7 05 00 00       	call   0x860
     289:	48 8b 05 50 84 00 00 	mov    0x8450(%rip),%rax        # 0x86e0
     290:	48 89 05 f1 b8 00 00 	mov    %rax,0xb8f1(%rip)        # 0xbb88
     297:	e8 64 66 00 00       	call   0x6900
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
     30d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
     312:	0f 85 e8 00 00 00    	jne    0x400
     318:	89 05 e2 6c 00 00    	mov    %eax,0x6ce2(%rip)        # 0x7000
     31e:	8b 1d 04 ad 00 00    	mov    0xad04(%rip),%ebx        # 0xb028
     324:	44 8d 63 01          	lea    0x1(%rbx),%r12d
     328:	4d 63 e4             	movslq %r12d,%r12
     32b:	49 c1 e4 03          	shl    $0x3,%r12
     32f:	4c 89 e1             	mov    %r12,%rcx
     332:	e8 e1 5e 00 00       	call   0x6218
     337:	4c 8b 2d e2 ac 00 00 	mov    0xace2(%rip),%r13        # 0xb020
     33e:	48 89 c7             	mov    %rax,%rdi
     341:	85 db                	test   %ebx,%ebx
     343:	7e 46                	jle    0x38b
     345:	8d 6b ff             	lea    -0x1(%rbx),%ebp
     348:	31 db                	xor    %ebx,%ebx
     34a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
     355:	e8 9e 5e 00 00       	call   0x61f8
     35a:	48 8d 70 01          	lea    0x1(%rax),%rsi
     35e:	48 89 f1             	mov    %rsi,%rcx
     361:	e8 b2 5e 00 00       	call   0x6218
     366:	49 89 f0             	mov    %rsi,%r8
     369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
     36d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
     372:	48 89 c1             	mov    %rax,%rcx
     375:	e8 96 5e 00 00       	call   0x6210
     37a:	48 89 d8             	mov    %rbx,%rax
     37d:	48 83 c3 01          	add    $0x1,%rbx
     381:	48 39 c5             	cmp    %rax,%rbp
     384:	75 ca                	jne    0x350
     386:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
     38b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     392:	48 89 3d 87 ac 00 00 	mov    %rdi,0xac87(%rip)        # 0xb020
     399:	e8 b2 02 00 00       	call   0x650
     39e:	48 8b 05 4b 83 00 00 	mov    0x834b(%rip),%rax        # 0x86f0
     3a5:	4c 8b 05 6c ac 00 00 	mov    0xac6c(%rip),%r8        # 0xb018
     3ac:	8b 0d 76 ac 00 00    	mov    0xac76(%rip),%ecx        # 0xb028
     3b2:	48 8b 00             	mov    (%rax),%rax
     3b5:	4c 89 00             	mov    %r8,(%rax)
     3b8:	48 8b 15 61 ac 00 00 	mov    0xac61(%rip),%rdx        # 0xb020
     3bf:	e8 0c 66 00 00       	call   0x69d0
     3c4:	8b 0d 42 ac 00 00    	mov    0xac42(%rip),%ecx        # 0xb00c
     3ca:	89 05 40 ac 00 00    	mov    %eax,0xac40(%rip)        # 0xb010
     3d0:	85 c9                	test   %ecx,%ecx
     3d2:	0f 84 e6 00 00 00    	je     0x4be
     3d8:	8b 15 2a ac 00 00    	mov    0xac2a(%rip),%edx        # 0xb008
     3de:	85 d2                	test   %edx,%edx
     3e0:	0f 84 9a 00 00 00    	je     0x480
     3e6:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
     3ed:	5b                   	pop    %rbx
     3ee:	5e                   	pop    %rsi
     3ef:	5f                   	pop    %rdi
     3f0:	5d                   	pop    %rbp
     3f1:	41 5c                	pop    %r12
     3f3:	41 5d                	pop    %r13
     3f5:	c3                   	ret    
     3f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     3fd:	00 00 00 
     400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
     405:	e9 0e ff ff ff       	jmp    0x318
     40a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     410:	48 8b 35 39 83 00 00 	mov    0x8339(%rip),%rsi        # 0x8750
     417:	bd 01 00 00 00       	mov    $0x1,%ebp
     41c:	8b 06                	mov    (%rsi),%eax
     41e:	83 f8 01             	cmp    $0x1,%eax
     421:	0f 85 f3 fd ff ff    	jne    0x21a
     427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
     42c:	e8 4f 5e 00 00       	call   0x6280
     431:	8b 06                	mov    (%rsi),%eax
     433:	83 f8 01             	cmp    $0x1,%eax
     436:	0f 85 fd fd ff ff    	jne    0x239
     43c:	48 8b 15 3d 83 00 00 	mov    0x833d(%rip),%rdx        # 0x8780
     443:	48 8b 0d 26 83 00 00 	mov    0x8326(%rip),%rcx        # 0x8770
     44a:	e8 19 5e 00 00       	call   0x6268
     44f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
     455:	85 ed                	test   %ebp,%ebp
     457:	0f 85 e4 fd ff ff    	jne    0x241
     45d:	31 c0                	xor    %eax,%eax
     45f:	48 87 03             	xchg   %rax,(%rbx)
     462:	e9 da fd ff ff       	jmp    0x241
     467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     46e:	00 00 
     470:	4c 89 c1             	mov    %r8,%rcx
     473:	ff 15 73 bd 00 00    	call   *0xbd73(%rip)        # 0xc1ec
     479:	e9 46 fd ff ff       	jmp    0x1c4
     47e:	66 90                	xchg   %ax,%ax
     480:	e8 f3 5d 00 00       	call   0x6278
     485:	8b 05 85 ab 00 00    	mov    0xab85(%rip),%eax        # 0xb010
     48b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
     492:	5b                   	pop    %rbx
     493:	5e                   	pop    %rsi
     494:	5f                   	pop    %rdi
     495:	5d                   	pop    %rbp
     496:	41 5c                	pop    %r12
     498:	41 5d                	pop    %r13
     49a:	c3                   	ret    
     49b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     4a0:	48 8b 15 f9 82 00 00 	mov    0x82f9(%rip),%rdx        # 0x87a0
     4a7:	48 8b 0d e2 82 00 00 	mov    0x82e2(%rip),%rcx        # 0x8790
     4ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
     4b4:	e8 af 5d 00 00       	call   0x6268
     4b9:	e9 70 fd ff ff       	jmp    0x22e
     4be:	89 c1                	mov    %eax,%ecx
     4c0:	e8 83 5d 00 00       	call   0x6248
     4c5:	90                   	nop
     4c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     4cd:	00 00 00 
     4d0:	48 83 ec 28          	sub    $0x28,%rsp
     4d4:	48 8b 05 35 83 00 00 	mov    0x8335(%rip),%rax        # 0x8810
     4db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
     4e1:	e8 aa fc ff ff       	call   0x190
     4e6:	90                   	nop
     4e7:	90                   	nop
     4e8:	48 83 c4 28          	add    $0x28,%rsp
     4ec:	c3                   	ret    
     4ed:	0f 1f 00             	nopl   (%rax)
     4f0:	48 83 ec 28          	sub    $0x28,%rsp
     4f4:	48 8b 05 15 83 00 00 	mov    0x8315(%rip),%rax        # 0x8810
     4fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     501:	e8 8a fc ff ff       	call   0x190
     506:	90                   	nop
     507:	90                   	nop
     508:	48 83 c4 28          	add    $0x28,%rsp
     50c:	c3                   	ret    
     50d:	0f 1f 00             	nopl   (%rax)
     510:	48 83 ec 28          	sub    $0x28,%rsp
     514:	e8 47 5d 00 00       	call   0x6260
     519:	48 85 c0             	test   %rax,%rax
     51c:	0f 94 c0             	sete   %al
     51f:	0f b6 c0             	movzbl %al,%eax
     522:	f7 d8                	neg    %eax
     524:	48 83 c4 28          	add    $0x28,%rsp
     528:	c3                   	ret    
     529:	90                   	nop
     52a:	90                   	nop
     52b:	90                   	nop
     52c:	90                   	nop
     52d:	90                   	nop
     52e:	90                   	nop
     52f:	90                   	nop
     530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 0x540
     537:	e9 d4 ff ff ff       	jmp    0x510
     53c:	0f 1f 40 00          	nopl   0x0(%rax)
     540:	c3                   	ret    
     541:	90                   	nop
     542:	90                   	nop
     543:	90                   	nop
     544:	90                   	nop
     545:	90                   	nop
     546:	90                   	nop
     547:	90                   	nop
     548:	90                   	nop
     549:	90                   	nop
     54a:	90                   	nop
     54b:	90                   	nop
     54c:	90                   	nop
     54d:	90                   	nop
     54e:	90                   	nop
     54f:	90                   	nop
     550:	48 83 ec 48          	sub    $0x48,%rsp
     554:	b9 01 00 00 00       	mov    $0x1,%ecx
     559:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
     55e:	4c 8d 44 24 58       	lea    0x58(%rsp),%r8
     563:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
     568:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
     56d:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
     572:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
     577:	ff 15 13 6b 00 00    	call   *0x6b13(%rip)        # 0x7090
     57d:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
     582:	48 8d 15 77 7a 00 00 	lea    0x7a77(%rip),%rdx        # 0x8000
     589:	48 89 c1             	mov    %rax,%rcx
     58c:	e8 ef 10 00 00       	call   0x1680
     591:	48 83 c4 48          	add    $0x48,%rsp
     595:	c3                   	ret    
     596:	90                   	nop
     597:	90                   	nop
     598:	90                   	nop
     599:	90                   	nop
     59a:	90                   	nop
     59b:	90                   	nop
     59c:	90                   	nop
     59d:	90                   	nop
     59e:	90                   	nop
     59f:	90                   	nop
     5a0:	48 83 ec 28          	sub    $0x28,%rsp
     5a4:	48 8b 05 65 6a 00 00 	mov    0x6a65(%rip),%rax        # 0x7010
     5ab:	48 8b 00             	mov    (%rax),%rax
     5ae:	48 85 c0             	test   %rax,%rax
     5b1:	74 22                	je     0x5d5
     5b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     5b8:	ff d0                	call   *%rax
     5ba:	48 8b 05 4f 6a 00 00 	mov    0x6a4f(%rip),%rax        # 0x7010
     5c1:	48 8d 50 08          	lea    0x8(%rax),%rdx
     5c5:	48 8b 40 08          	mov    0x8(%rax),%rax
     5c9:	48 89 15 40 6a 00 00 	mov    %rdx,0x6a40(%rip)        # 0x7010
     5d0:	48 85 c0             	test   %rax,%rax
     5d3:	75 e3                	jne    0x5b8
     5d5:	48 83 c4 28          	add    $0x28,%rsp
     5d9:	c3                   	ret    
     5da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     5e0:	56                   	push   %rsi
     5e1:	53                   	push   %rbx
     5e2:	48 83 ec 28          	sub    $0x28,%rsp
     5e6:	48 8b 15 b3 80 00 00 	mov    0x80b3(%rip),%rdx        # 0x86a0
     5ed:	48 8b 02             	mov    (%rdx),%rax
     5f0:	89 c1                	mov    %eax,%ecx
     5f2:	83 f8 ff             	cmp    $0xffffffff,%eax
     5f5:	74 39                	je     0x630
     5f7:	85 c9                	test   %ecx,%ecx
     5f9:	74 20                	je     0x61b
     5fb:	89 c8                	mov    %ecx,%eax
     5fd:	83 e9 01             	sub    $0x1,%ecx
     600:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
     604:	48 29 c8             	sub    %rcx,%rax
     607:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
     60c:	0f 1f 40 00          	nopl   0x0(%rax)
     610:	ff 13                	call   *(%rbx)
     612:	48 83 eb 08          	sub    $0x8,%rbx
     616:	48 39 f3             	cmp    %rsi,%rbx
     619:	75 f5                	jne    0x610
     61b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 0x5a0
     622:	48 83 c4 28          	add    $0x28,%rsp
     626:	5b                   	pop    %rbx
     627:	5e                   	pop    %rsi
     628:	e9 e3 fe ff ff       	jmp    0x510
     62d:	0f 1f 00             	nopl   (%rax)
     630:	31 c0                	xor    %eax,%eax
     632:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     638:	44 8d 40 01          	lea    0x1(%rax),%r8d
     63c:	89 c1                	mov    %eax,%ecx
     63e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
     643:	4c 89 c0             	mov    %r8,%rax
     646:	75 f0                	jne    0x638
     648:	eb ad                	jmp    0x5f7
     64a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     650:	8b 05 da a9 00 00    	mov    0xa9da(%rip),%eax        # 0xb030
     656:	85 c0                	test   %eax,%eax
     658:	74 06                	je     0x660
     65a:	c3                   	ret    
     65b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     660:	c7 05 c6 a9 00 00 01 	movl   $0x1,0xa9c6(%rip)        # 0xb030
     667:	00 00 00 
     66a:	e9 71 ff ff ff       	jmp    0x5e0
     66f:	90                   	nop
     670:	48 ff 25 05 bc 00 00 	rex.W jmp *0xbc05(%rip)        # 0xc27c
     677:	90                   	nop
     678:	90                   	nop
     679:	90                   	nop
     67a:	90                   	nop
     67b:	90                   	nop
     67c:	90                   	nop
     67d:	90                   	nop
     67e:	90                   	nop
     67f:	90                   	nop
     680:	31 c0                	xor    %eax,%eax
     682:	c3                   	ret    
     683:	90                   	nop
     684:	90                   	nop
     685:	90                   	nop
     686:	90                   	nop
     687:	90                   	nop
     688:	90                   	nop
     689:	90                   	nop
     68a:	90                   	nop
     68b:	90                   	nop
     68c:	90                   	nop
     68d:	90                   	nop
     68e:	90                   	nop
     68f:	90                   	nop
     690:	48 83 ec 28          	sub    $0x28,%rsp
     694:	83 fa 03             	cmp    $0x3,%edx
     697:	74 17                	je     0x6b0
     699:	85 d2                	test   %edx,%edx
     69b:	74 13                	je     0x6b0
     69d:	b8 01 00 00 00       	mov    $0x1,%eax
     6a2:	48 83 c4 28          	add    $0x28,%rsp
     6a6:	c3                   	ret    
     6a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     6ae:	00 00 
     6b0:	e8 cb 0a 00 00       	call   0x1180
     6b5:	b8 01 00 00 00       	mov    $0x1,%eax
     6ba:	48 83 c4 28          	add    $0x28,%rsp
     6be:	c3                   	ret    
     6bf:	90                   	nop
     6c0:	56                   	push   %rsi
     6c1:	53                   	push   %rbx
     6c2:	48 83 ec 28          	sub    $0x28,%rsp
     6c6:	48 8b 05 b3 7f 00 00 	mov    0x7fb3(%rip),%rax        # 0x8680
     6cd:	83 38 02             	cmpl   $0x2,(%rax)
     6d0:	74 06                	je     0x6d8
     6d2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
     6d8:	83 fa 02             	cmp    $0x2,%edx
     6db:	74 13                	je     0x6f0
     6dd:	83 fa 01             	cmp    $0x1,%edx
     6e0:	74 4e                	je     0x730
     6e2:	b8 01 00 00 00       	mov    $0x1,%eax
     6e7:	48 83 c4 28          	add    $0x28,%rsp
     6eb:	5b                   	pop    %rbx
     6ec:	5e                   	pop    %rsi
     6ed:	c3                   	ret    
     6ee:	66 90                	xchg   %ax,%ax
     6f0:	48 8d 1d 69 c9 00 00 	lea    0xc969(%rip),%rbx        # 0xd060
     6f7:	48 8d 35 62 c9 00 00 	lea    0xc962(%rip),%rsi        # 0xd060
     6fe:	48 39 de             	cmp    %rbx,%rsi
     701:	74 df                	je     0x6e2
     703:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     708:	48 8b 03             	mov    (%rbx),%rax
     70b:	48 85 c0             	test   %rax,%rax
     70e:	74 02                	je     0x712
     710:	ff d0                	call   *%rax
     712:	48 83 c3 08          	add    $0x8,%rbx
     716:	48 39 de             	cmp    %rbx,%rsi
     719:	75 ed                	jne    0x708
     71b:	b8 01 00 00 00       	mov    $0x1,%eax
     720:	48 83 c4 28          	add    $0x28,%rsp
     724:	5b                   	pop    %rbx
     725:	5e                   	pop    %rsi
     726:	c3                   	ret    
     727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     72e:	00 00 
     730:	e8 4b 0a 00 00       	call   0x1180
     735:	b8 01 00 00 00       	mov    $0x1,%eax
     73a:	48 83 c4 28          	add    $0x28,%rsp
     73e:	5b                   	pop    %rbx
     73f:	5e                   	pop    %rsi
     740:	c3                   	ret    
     741:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     748:	00 00 00 00 
     74c:	0f 1f 40 00          	nopl   0x0(%rax)
     750:	31 c0                	xor    %eax,%eax
     752:	c3                   	ret    
     753:	90                   	nop
     754:	90                   	nop
     755:	90                   	nop
     756:	90                   	nop
     757:	90                   	nop
     758:	90                   	nop
     759:	90                   	nop
     75a:	90                   	nop
     75b:	90                   	nop
     75c:	90                   	nop
     75d:	90                   	nop
     75e:	90                   	nop
     75f:	90                   	nop
     760:	56                   	push   %rsi
     761:	53                   	push   %rbx
     762:	48 83 ec 78          	sub    $0x78,%rsp
     766:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
     76b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
     770:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
     776:	83 39 06             	cmpl   $0x6,(%rcx)
     779:	0f 87 cd 00 00 00    	ja     0x84c
     77f:	8b 01                	mov    (%rcx),%eax
     781:	48 8d 15 1c 7a 00 00 	lea    0x7a1c(%rip),%rdx        # 0x81a4
     788:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     78c:	48 01 d0             	add    %rdx,%rax
     78f:	ff e0                	jmp    *%rax
     791:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     798:	48 8d 1d b7 79 00 00 	lea    0x79b7(%rip),%rbx        # 0x8156
     79f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
     7a5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
     7aa:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
     7af:	48 8b 71 08          	mov    0x8(%rcx),%rsi
     7b3:	b9 02 00 00 00       	mov    $0x2,%ecx
     7b8:	e8 33 60 00 00       	call   0x67f0
     7bd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
     7c4:	49 89 d8             	mov    %rbx,%r8
     7c7:	48 8d 15 aa 79 00 00 	lea    0x79aa(%rip),%rdx        # 0x8178
     7ce:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
     7d4:	48 89 c1             	mov    %rax,%rcx
     7d7:	49 89 f1             	mov    %rsi,%r9
     7da:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
     7e0:	e8 5b 5a 00 00       	call   0x6240
     7e5:	90                   	nop
     7e6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
     7eb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
     7f0:	31 c0                	xor    %eax,%eax
     7f2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
     7f8:	48 83 c4 78          	add    $0x78,%rsp
     7fc:	5b                   	pop    %rbx
     7fd:	5e                   	pop    %rsi
     7fe:	c3                   	ret    
     7ff:	90                   	nop
     800:	48 8d 1d 89 78 00 00 	lea    0x7889(%rip),%rbx        # 0x8090
     807:	eb 96                	jmp    0x79f
     809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     810:	48 8d 1d b9 78 00 00 	lea    0x78b9(%rip),%rbx        # 0x80d0
     817:	eb 86                	jmp    0x79f
     819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     820:	48 8d 1d 89 78 00 00 	lea    0x7889(%rip),%rbx        # 0x80b0
     827:	e9 73 ff ff ff       	jmp    0x79f
     82c:	0f 1f 40 00          	nopl   0x0(%rax)
     830:	48 8d 1d e9 78 00 00 	lea    0x78e9(%rip),%rbx        # 0x8120
     837:	e9 63 ff ff ff       	jmp    0x79f
     83c:	0f 1f 40 00          	nopl   0x0(%rax)
     840:	48 8d 1d b1 78 00 00 	lea    0x78b1(%rip),%rbx        # 0x80f8
     847:	e9 53 ff ff ff       	jmp    0x79f
     84c:	48 8d 1d 2d 78 00 00 	lea    0x782d(%rip),%rbx        # 0x8080
     853:	e9 47 ff ff ff       	jmp    0x79f
     858:	90                   	nop
     859:	90                   	nop
     85a:	90                   	nop
     85b:	90                   	nop
     85c:	90                   	nop
     85d:	90                   	nop
     85e:	90                   	nop
     85f:	90                   	nop
     860:	db e3                	fninit 
     862:	c3                   	ret    
     863:	90                   	nop
     864:	90                   	nop
     865:	90                   	nop
     866:	90                   	nop
     867:	90                   	nop
     868:	90                   	nop
     869:	90                   	nop
     86a:	90                   	nop
     86b:	90                   	nop
     86c:	90                   	nop
     86d:	90                   	nop
     86e:	90                   	nop
     86f:	90                   	nop
     870:	41 54                	push   %r12
     872:	53                   	push   %rbx
     873:	48 83 ec 38          	sub    $0x38,%rsp
     877:	49 89 cc             	mov    %rcx,%r12
     87a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
     87f:	b9 02 00 00 00       	mov    $0x2,%ecx
     884:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
     889:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
     88e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
     893:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
     898:	e8 53 5f 00 00       	call   0x67f0
     89d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
     8a3:	ba 01 00 00 00       	mov    $0x1,%edx
     8a8:	48 8d 0d 11 79 00 00 	lea    0x7911(%rip),%rcx        # 0x81c0
     8af:	49 89 c1             	mov    %rax,%r9
     8b2:	e8 71 59 00 00       	call   0x6228
     8b7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
     8bc:	b9 02 00 00 00       	mov    $0x2,%ecx
     8c1:	e8 2a 5f 00 00       	call   0x67f0
     8c6:	4c 89 e2             	mov    %r12,%rdx
     8c9:	48 89 c1             	mov    %rax,%rcx
     8cc:	49 89 d8             	mov    %rbx,%r8
     8cf:	e8 14 59 00 00       	call   0x61e8
     8d4:	e8 7f 59 00 00       	call   0x6258
     8d9:	90                   	nop
     8da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     8e0:	41 54                	push   %r12
     8e2:	55                   	push   %rbp
     8e3:	57                   	push   %rdi
     8e4:	56                   	push   %rsi
     8e5:	53                   	push   %rbx
     8e6:	48 83 ec 50          	sub    $0x50,%rsp
     8ea:	48 63 3d b3 a7 00 00 	movslq 0xa7b3(%rip),%rdi        # 0xb0a4
     8f1:	49 89 cc             	mov    %rcx,%r12
     8f4:	48 89 d6             	mov    %rdx,%rsi
     8f7:	4c 89 c3             	mov    %r8,%rbx
     8fa:	85 ff                	test   %edi,%edi
     8fc:	0f 8e 8e 01 00 00    	jle    0xa90
     902:	48 8b 05 9f a7 00 00 	mov    0xa79f(%rip),%rax        # 0xb0a8
     909:	31 c9                	xor    %ecx,%ecx
     90b:	48 83 c0 18          	add    $0x18,%rax
     90f:	90                   	nop
     910:	48 8b 10             	mov    (%rax),%rdx
     913:	49 39 d4             	cmp    %rdx,%r12
     916:	72 14                	jb     0x92c
     918:	4c 8b 40 08          	mov    0x8(%rax),%r8
     91c:	45 8b 40 08          	mov    0x8(%r8),%r8d
     920:	4c 01 c2             	add    %r8,%rdx
     923:	49 39 d4             	cmp    %rdx,%r12
     926:	0f 82 8b 00 00 00    	jb     0x9b7
     92c:	83 c1 01             	add    $0x1,%ecx
     92f:	48 83 c0 28          	add    $0x28,%rax
     933:	39 f9                	cmp    %edi,%ecx
     935:	75 d9                	jne    0x910
     937:	4c 89 e1             	mov    %r12,%rcx
     93a:	e8 51 0a 00 00       	call   0x1390
     93f:	48 89 c5             	mov    %rax,%rbp
     942:	48 85 c0             	test   %rax,%rax
     945:	0f 84 a2 01 00 00    	je     0xaed
     94b:	48 8b 05 56 a7 00 00 	mov    0xa756(%rip),%rax        # 0xb0a8
     952:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
     956:	48 c1 e7 03          	shl    $0x3,%rdi
     95a:	48 01 f8             	add    %rdi,%rax
     95d:	48 89 68 20          	mov    %rbp,0x20(%rax)
     961:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     967:	e8 54 0b 00 00       	call   0x14c0
     96c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
     96f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
     974:	41 b8 30 00 00 00    	mov    $0x30,%r8d
     97a:	48 01 c1             	add    %rax,%rcx
     97d:	48 8b 05 24 a7 00 00 	mov    0xa724(%rip),%rax        # 0xb0a8
     984:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
     989:	ff 15 a5 b8 00 00    	call   *0xb8a5(%rip)        # 0xc234
     98f:	48 85 c0             	test   %rax,%rax
     992:	0f 84 3a 01 00 00    	je     0xad2
     998:	8b 44 24 44          	mov    0x44(%rsp),%eax
     99c:	8d 50 c0             	lea    -0x40(%rax),%edx
     99f:	83 e2 bf             	and    $0xffffffbf,%edx
     9a2:	74 0c                	je     0x9b0
     9a4:	8d 50 fc             	lea    -0x4(%rax),%edx
     9a7:	83 e2 fb             	and    $0xfffffffb,%edx
     9aa:	0f 85 90 00 00 00    	jne    0xa40
     9b0:	83 05 ed a6 00 00 01 	addl   $0x1,0xa6ed(%rip)        # 0xb0a4
     9b7:	83 fb 08             	cmp    $0x8,%ebx
     9ba:	73 2c                	jae    0x9e8
     9bc:	f6 c3 04             	test   $0x4,%bl
     9bf:	0f 85 db 00 00 00    	jne    0xaa0
     9c5:	85 db                	test   %ebx,%ebx
     9c7:	74 10                	je     0x9d9
     9c9:	0f b6 06             	movzbl (%rsi),%eax
     9cc:	41 88 04 24          	mov    %al,(%r12)
     9d0:	f6 c3 02             	test   $0x2,%bl
     9d3:	0f 85 e7 00 00 00    	jne    0xac0
     9d9:	48 83 c4 50          	add    $0x50,%rsp
     9dd:	5b                   	pop    %rbx
     9de:	5e                   	pop    %rsi
     9df:	5f                   	pop    %rdi
     9e0:	5d                   	pop    %rbp
     9e1:	41 5c                	pop    %r12
     9e3:	c3                   	ret    
     9e4:	0f 1f 40 00          	nopl   0x0(%rax)
     9e8:	48 8b 06             	mov    (%rsi),%rax
     9eb:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
     9f0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
     9f4:	49 89 04 24          	mov    %rax,(%r12)
     9f8:	89 d8                	mov    %ebx,%eax
     9fa:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
     9ff:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
     a04:	49 29 cc             	sub    %rcx,%r12
     a07:	44 01 e3             	add    %r12d,%ebx
     a0a:	4c 29 e6             	sub    %r12,%rsi
     a0d:	83 e3 f8             	and    $0xfffffff8,%ebx
     a10:	83 fb 08             	cmp    $0x8,%ebx
     a13:	72 c4                	jb     0x9d9
     a15:	83 e3 f8             	and    $0xfffffff8,%ebx
     a18:	31 c0                	xor    %eax,%eax
     a1a:	89 c2                	mov    %eax,%edx
     a1c:	83 c0 08             	add    $0x8,%eax
     a1f:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
     a23:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
     a27:	39 d8                	cmp    %ebx,%eax
     a29:	72 ef                	jb     0xa1a
     a2b:	48 83 c4 50          	add    $0x50,%rsp
     a2f:	5b                   	pop    %rbx
     a30:	5e                   	pop    %rsi
     a31:	5f                   	pop    %rdi
     a32:	5d                   	pop    %rbp
     a33:	41 5c                	pop    %r12
     a35:	c3                   	ret    
     a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a3d:	00 00 00 
     a40:	83 f8 02             	cmp    $0x2,%eax
     a43:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     a48:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
     a4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     a53:	b8 40 00 00 00       	mov    $0x40,%eax
     a58:	44 0f 45 c0          	cmovne %eax,%r8d
     a5c:	48 03 3d 45 a6 00 00 	add    0xa645(%rip),%rdi        # 0xb0a8
     a63:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
     a67:	49 89 f9             	mov    %rdi,%r9
     a6a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
     a6e:	ff 15 b8 b7 00 00    	call   *0xb7b8(%rip)        # 0xc22c
     a74:	85 c0                	test   %eax,%eax
     a76:	0f 85 34 ff ff ff    	jne    0x9b0
     a7c:	ff 15 62 b7 00 00    	call   *0xb762(%rip)        # 0xc1e4
     a82:	48 8d 0d af 77 00 00 	lea    0x77af(%rip),%rcx        # 0x8238
     a89:	89 c2                	mov    %eax,%edx
     a8b:	e8 e0 fd ff ff       	call   0x870
     a90:	31 ff                	xor    %edi,%edi
     a92:	e9 a0 fe ff ff       	jmp    0x937
     a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     a9e:	00 00 
     aa0:	8b 06                	mov    (%rsi),%eax
     aa2:	89 db                	mov    %ebx,%ebx
     aa4:	41 89 04 24          	mov    %eax,(%r12)
     aa8:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
     aac:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
     ab1:	e9 23 ff ff ff       	jmp    0x9d9
     ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     abd:	00 00 00 
     ac0:	89 db                	mov    %ebx,%ebx
     ac2:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
     ac7:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
     acd:	e9 07 ff ff ff       	jmp    0x9d9
     ad2:	48 8b 05 cf a5 00 00 	mov    0xa5cf(%rip),%rax        # 0xb0a8
     ad9:	8b 55 08             	mov    0x8(%rbp),%edx
     adc:	48 8d 0d 1d 77 00 00 	lea    0x771d(%rip),%rcx        # 0x8200
     ae3:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
     ae8:	e8 83 fd ff ff       	call   0x870
     aed:	4c 89 e2             	mov    %r12,%rdx
     af0:	48 8d 0d e9 76 00 00 	lea    0x76e9(%rip),%rcx        # 0x81e0
     af7:	e8 74 fd ff ff       	call   0x870
     afc:	90                   	nop
     afd:	0f 1f 00             	nopl   (%rax)
     b00:	55                   	push   %rbp
     b01:	41 57                	push   %r15
     b03:	41 56                	push   %r14
     b05:	41 55                	push   %r13
     b07:	41 54                	push   %r12
     b09:	57                   	push   %rdi
     b0a:	56                   	push   %rsi
     b0b:	53                   	push   %rbx
     b0c:	48 83 ec 38          	sub    $0x38,%rsp
     b10:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
     b17:	00 
     b18:	8b 35 82 a5 00 00    	mov    0xa582(%rip),%esi        # 0xb0a0
     b1e:	85 f6                	test   %esi,%esi
     b20:	74 16                	je     0xb38
     b22:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
     b26:	5b                   	pop    %rbx
     b27:	5e                   	pop    %rsi
     b28:	5f                   	pop    %rdi
     b29:	41 5c                	pop    %r12
     b2b:	41 5d                	pop    %r13
     b2d:	41 5e                	pop    %r14
     b2f:	41 5f                	pop    %r15
     b31:	5d                   	pop    %rbp
     b32:	c3                   	ret    
     b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     b38:	c7 05 5e a5 00 00 01 	movl   $0x1,0xa55e(%rip)        # 0xb0a0
     b3f:	00 00 00 
     b42:	e8 d9 08 00 00       	call   0x1420
     b47:	48 98                	cltq   
     b49:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     b4d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
     b54:	00 
     b55:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
     b59:	e8 e2 0a 00 00       	call   0x1640
     b5e:	4c 8b 25 4b 7b 00 00 	mov    0x7b4b(%rip),%r12        # 0x86b0
     b65:	48 8b 1d 54 7b 00 00 	mov    0x7b54(%rip),%rbx        # 0x86c0
     b6c:	c7 05 2e a5 00 00 00 	movl   $0x0,0xa52e(%rip)        # 0xb0a4
     b73:	00 00 00 
     b76:	48 29 c4             	sub    %rax,%rsp
     b79:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
     b7e:	48 89 05 23 a5 00 00 	mov    %rax,0xa523(%rip)        # 0xb0a8
     b85:	4c 89 e0             	mov    %r12,%rax
     b88:	48 29 d8             	sub    %rbx,%rax
     b8b:	48 83 f8 07          	cmp    $0x7,%rax
     b8f:	7e 91                	jle    0xb22
     b91:	8b 13                	mov    (%rbx),%edx
     b93:	48 83 f8 0b          	cmp    $0xb,%rax
     b97:	0f 8f 4b 01 00 00    	jg     0xce8
     b9d:	85 d2                	test   %edx,%edx
     b9f:	0f 85 cb 01 00 00    	jne    0xd70
     ba5:	8b 43 04             	mov    0x4(%rbx),%eax
     ba8:	85 c0                	test   %eax,%eax
     baa:	0f 85 c0 01 00 00    	jne    0xd70
     bb0:	8b 53 08             	mov    0x8(%rbx),%edx
     bb3:	83 fa 01             	cmp    $0x1,%edx
     bb6:	0f 85 1c 02 00 00    	jne    0xdd8
     bbc:	48 83 c3 0c          	add    $0xc,%rbx
     bc0:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
     bc4:	4c 8b 2d 15 7b 00 00 	mov    0x7b15(%rip),%r13        # 0x86e0
     bcb:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
     bd2:	ff ff ff 
     bd5:	4c 39 e3             	cmp    %r12,%rbx
     bd8:	72 3f                	jb     0xc19
     bda:	e9 43 ff ff ff       	jmp    0xb22
     bdf:	90                   	nop
     be0:	44 0f b6 01          	movzbl (%rcx),%r8d
     be4:	4c 89 ff             	mov    %r15,%rdi
     be7:	4d 89 c2             	mov    %r8,%r10
     bea:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
     bf1:	45 84 c0             	test   %r8b,%r8b
     bf4:	4d 0f 48 c2          	cmovs  %r10,%r8
     bf8:	49 29 d0             	sub    %rdx,%r8
     bfb:	4c 89 fa             	mov    %r15,%rdx
     bfe:	4d 01 c8             	add    %r9,%r8
     c01:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
     c05:	41 b8 01 00 00 00    	mov    $0x1,%r8d
     c0b:	e8 d0 fc ff ff       	call   0x8e0
     c10:	48 83 c3 0c          	add    $0xc,%rbx
     c14:	4c 39 e3             	cmp    %r12,%rbx
     c17:	73 77                	jae    0xc90
     c19:	8b 13                	mov    (%rbx),%edx
     c1b:	8b 4b 04             	mov    0x4(%rbx),%ecx
     c1e:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
     c23:	4c 01 ea             	add    %r13,%rdx
     c26:	4c 01 e9             	add    %r13,%rcx
     c29:	4c 8b 0a             	mov    (%rdx),%r9
     c2c:	41 83 f8 20          	cmp    $0x20,%r8d
     c30:	0f 84 0a 01 00 00    	je     0xd40
     c36:	0f 87 d4 00 00 00    	ja     0xd10
     c3c:	41 83 f8 08          	cmp    $0x8,%r8d
     c40:	74 9e                	je     0xbe0
     c42:	41 83 f8 10          	cmp    $0x10,%r8d
     c46:	0f 85 75 01 00 00    	jne    0xdc1
     c4c:	44 0f b7 01          	movzwl (%rcx),%r8d
     c50:	4c 89 ff             	mov    %r15,%rdi
     c53:	4d 89 c2             	mov    %r8,%r10
     c56:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
     c5d:	66 45 85 c0          	test   %r8w,%r8w
     c61:	4d 0f 48 c2          	cmovs  %r10,%r8
     c65:	48 83 c3 0c          	add    $0xc,%rbx
     c69:	49 29 d0             	sub    %rdx,%r8
     c6c:	4c 89 fa             	mov    %r15,%rdx
     c6f:	4d 01 c8             	add    %r9,%r8
     c72:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
     c76:	41 b8 02 00 00 00    	mov    $0x2,%r8d
     c7c:	e8 5f fc ff ff       	call   0x8e0
     c81:	4c 39 e3             	cmp    %r12,%rbx
     c84:	72 93                	jb     0xc19
     c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c8d:	00 00 00 
     c90:	8b 05 0e a4 00 00    	mov    0xa40e(%rip),%eax        # 0xb0a4
     c96:	85 c0                	test   %eax,%eax
     c98:	0f 8e 84 fe ff ff    	jle    0xb22
     c9e:	4c 8b 25 87 b5 00 00 	mov    0xb587(%rip),%r12        # 0xc22c
     ca5:	31 db                	xor    %ebx,%ebx
     ca7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     cae:	00 00 
     cb0:	48 8b 05 f1 a3 00 00 	mov    0xa3f1(%rip),%rax        # 0xb0a8
     cb7:	48 01 d8             	add    %rbx,%rax
     cba:	44 8b 00             	mov    (%rax),%r8d
     cbd:	45 85 c0             	test   %r8d,%r8d
     cc0:	74 0e                	je     0xcd0
     cc2:	48 8b 50 10          	mov    0x10(%rax),%rdx
     cc6:	48 8b 48 08          	mov    0x8(%rax),%rcx
     cca:	49 89 f9             	mov    %rdi,%r9
     ccd:	41 ff d4             	call   *%r12
     cd0:	83 c6 01             	add    $0x1,%esi
     cd3:	48 83 c3 28          	add    $0x28,%rbx
     cd7:	3b 35 c7 a3 00 00    	cmp    0xa3c7(%rip),%esi        # 0xb0a4
     cdd:	7c d1                	jl     0xcb0
     cdf:	e9 3e fe ff ff       	jmp    0xb22
     ce4:	0f 1f 40 00          	nopl   0x0(%rax)
     ce8:	85 d2                	test   %edx,%edx
     cea:	0f 85 80 00 00 00    	jne    0xd70
     cf0:	8b 43 04             	mov    0x4(%rbx),%eax
     cf3:	89 c7                	mov    %eax,%edi
     cf5:	0b 7b 08             	or     0x8(%rbx),%edi
     cf8:	0f 85 aa fe ff ff    	jne    0xba8
     cfe:	8b 53 0c             	mov    0xc(%rbx),%edx
     d01:	48 83 c3 0c          	add    $0xc,%rbx
     d05:	e9 93 fe ff ff       	jmp    0xb9d
     d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d10:	41 83 f8 40          	cmp    $0x40,%r8d
     d14:	0f 85 a7 00 00 00    	jne    0xdc1
     d1a:	48 8b 01             	mov    (%rcx),%rax
     d1d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
     d23:	4c 89 ff             	mov    %r15,%rdi
     d26:	48 29 d0             	sub    %rdx,%rax
     d29:	4c 89 fa             	mov    %r15,%rdx
     d2c:	4c 01 c8             	add    %r9,%rax
     d2f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     d33:	e8 a8 fb ff ff       	call   0x8e0
     d38:	e9 d3 fe ff ff       	jmp    0xc10
     d3d:	0f 1f 00             	nopl   (%rax)
     d40:	8b 01                	mov    (%rcx),%eax
     d42:	4c 89 ff             	mov    %r15,%rdi
     d45:	49 89 c0             	mov    %rax,%r8
     d48:	4c 09 f0             	or     %r14,%rax
     d4b:	45 85 c0             	test   %r8d,%r8d
     d4e:	49 0f 49 c0          	cmovns %r8,%rax
     d52:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     d58:	48 29 d0             	sub    %rdx,%rax
     d5b:	4c 89 fa             	mov    %r15,%rdx
     d5e:	4c 01 c8             	add    %r9,%rax
     d61:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     d65:	e8 76 fb ff ff       	call   0x8e0
     d6a:	e9 a1 fe ff ff       	jmp    0xc10
     d6f:	90                   	nop
     d70:	4c 39 e3             	cmp    %r12,%rbx
     d73:	0f 83 a9 fd ff ff    	jae    0xb22
     d79:	49 83 ec 01          	sub    $0x1,%r12
     d7d:	4c 8b 2d 5c 79 00 00 	mov    0x795c(%rip),%r13        # 0x86e0
     d84:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
     d88:	49 29 dc             	sub    %rbx,%r12
     d8b:	49 c1 ec 03          	shr    $0x3,%r12
     d8f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
     d94:	0f 1f 40 00          	nopl   0x0(%rax)
     d98:	8b 4b 04             	mov    0x4(%rbx),%ecx
     d9b:	8b 03                	mov    (%rbx),%eax
     d9d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     da3:	48 89 fa             	mov    %rdi,%rdx
     da6:	48 83 c3 08          	add    $0x8,%rbx
     daa:	4c 01 e9             	add    %r13,%rcx
     dad:	03 01                	add    (%rcx),%eax
     daf:	89 45 a8             	mov    %eax,-0x58(%rbp)
     db2:	e8 29 fb ff ff       	call   0x8e0
     db7:	4c 39 e3             	cmp    %r12,%rbx
     dba:	75 dc                	jne    0xd98
     dbc:	e9 cf fe ff ff       	jmp    0xc90
     dc1:	44 89 c2             	mov    %r8d,%edx
     dc4:	48 8d 0d cd 74 00 00 	lea    0x74cd(%rip),%rcx        # 0x8298
     dcb:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
     dd2:	00 
     dd3:	e8 98 fa ff ff       	call   0x870
     dd8:	48 8d 0d 81 74 00 00 	lea    0x7481(%rip),%rcx        # 0x8260
     ddf:	e8 8c fa ff ff       	call   0x870
     de4:	90                   	nop
     de5:	90                   	nop
     de6:	90                   	nop
     de7:	90                   	nop
     de8:	90                   	nop
     de9:	90                   	nop
     dea:	90                   	nop
     deb:	90                   	nop
     dec:	90                   	nop
     ded:	90                   	nop
     dee:	90                   	nop
     def:	90                   	nop
     df0:	48 83 ec 58          	sub    $0x58,%rsp
     df4:	48 8b 05 b5 a2 00 00 	mov    0xa2b5(%rip),%rax        # 0xb0b0
     dfb:	48 85 c0             	test   %rax,%rax
     dfe:	74 2c                	je     0xe2c
     e00:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
     e07:	00 00 
     e09:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
     e0d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
     e12:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
     e17:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
     e1d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
     e23:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
     e29:	ff d0                	call   *%rax
     e2b:	90                   	nop
     e2c:	48 83 c4 58          	add    $0x58,%rsp
     e30:	c3                   	ret    
     e31:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     e38:	00 00 00 00 
     e3c:	0f 1f 40 00          	nopl   0x0(%rax)
     e40:	48 89 0d 69 a2 00 00 	mov    %rcx,0xa269(%rip)        # 0xb0b0
     e47:	e9 3c 54 00 00       	jmp    0x6288
     e4c:	90                   	nop
     e4d:	90                   	nop
     e4e:	90                   	nop
     e4f:	90                   	nop
     e50:	41 54                	push   %r12
     e52:	48 83 ec 20          	sub    $0x20,%rsp
     e56:	48 8b 11             	mov    (%rcx),%rdx
     e59:	8b 02                	mov    (%rdx),%eax
     e5b:	49 89 cc             	mov    %rcx,%r12
     e5e:	89 c1                	mov    %eax,%ecx
     e60:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
     e66:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
     e6c:	0f 84 ce 00 00 00    	je     0xf40
     e72:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
     e77:	0f 87 aa 00 00 00    	ja     0xf27
     e7d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
     e82:	76 54                	jbe    0xed8
     e84:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
     e89:	83 f8 09             	cmp    $0x9,%eax
     e8c:	77 3a                	ja     0xec8
     e8e:	48 8d 15 3b 74 00 00 	lea    0x743b(%rip),%rdx        # 0x82d0
     e95:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     e99:	48 01 d0             	add    %rdx,%rax
     e9c:	ff e0                	jmp    *%rax
     e9e:	31 d2                	xor    %edx,%edx
     ea0:	b9 08 00 00 00       	mov    $0x8,%ecx
     ea5:	e8 5e 53 00 00       	call   0x6208
     eaa:	48 83 f8 01          	cmp    $0x1,%rax
     eae:	0f 85 b7 00 00 00    	jne    0xf6b
     eb4:	ba 01 00 00 00       	mov    $0x1,%edx
     eb9:	b9 08 00 00 00       	mov    $0x8,%ecx
     ebe:	e8 45 53 00 00       	call   0x6208
     ec3:	e8 98 f9 ff ff       	call   0x860
     ec8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     ecd:	48 83 c4 20          	add    $0x20,%rsp
     ed1:	41 5c                	pop    %r12
     ed3:	c3                   	ret    
     ed4:	0f 1f 40 00          	nopl   0x0(%rax)
     ed8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
     edd:	0f 84 a5 00 00 00    	je     0xf88
     ee3:	76 3b                	jbe    0xf20
     ee5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
     eea:	74 dc                	je     0xec8
     eec:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
     ef1:	75 34                	jne    0xf27
     ef3:	31 d2                	xor    %edx,%edx
     ef5:	b9 04 00 00 00       	mov    $0x4,%ecx
     efa:	e8 09 53 00 00       	call   0x6208
     eff:	48 83 f8 01          	cmp    $0x1,%rax
     f03:	0f 84 a7 00 00 00    	je     0xfb0
     f09:	48 85 c0             	test   %rax,%rax
     f0c:	74 19                	je     0xf27
     f0e:	b9 04 00 00 00       	mov    $0x4,%ecx
     f13:	ff d0                	call   *%rax
     f15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f1a:	eb b1                	jmp    0xecd
     f1c:	0f 1f 40 00          	nopl   0x0(%rax)
     f20:	3d 02 00 00 80       	cmp    $0x80000002,%eax
     f25:	74 a1                	je     0xec8
     f27:	48 8b 05 a2 a1 00 00 	mov    0xa1a2(%rip),%rax        # 0xb0d0
     f2e:	48 85 c0             	test   %rax,%rax
     f31:	74 1d                	je     0xf50
     f33:	4c 89 e1             	mov    %r12,%rcx
     f36:	48 83 c4 20          	add    $0x20,%rsp
     f3a:	41 5c                	pop    %r12
     f3c:	48 ff e0             	rex.W jmp *%rax
     f3f:	90                   	nop
     f40:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
     f44:	0f 85 28 ff ff ff    	jne    0xe72
     f4a:	e9 79 ff ff ff       	jmp    0xec8
     f4f:	90                   	nop
     f50:	31 c0                	xor    %eax,%eax
     f52:	48 83 c4 20          	add    $0x20,%rsp
     f56:	41 5c                	pop    %r12
     f58:	c3                   	ret    
     f59:	31 d2                	xor    %edx,%edx
     f5b:	b9 08 00 00 00       	mov    $0x8,%ecx
     f60:	e8 a3 52 00 00       	call   0x6208
     f65:	48 83 f8 01          	cmp    $0x1,%rax
     f69:	74 65                	je     0xfd0
     f6b:	48 85 c0             	test   %rax,%rax
     f6e:	74 b7                	je     0xf27
     f70:	b9 08 00 00 00       	mov    $0x8,%ecx
     f75:	ff d0                	call   *%rax
     f77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f7c:	e9 4c ff ff ff       	jmp    0xecd
     f81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     f88:	31 d2                	xor    %edx,%edx
     f8a:	b9 0b 00 00 00       	mov    $0xb,%ecx
     f8f:	e8 74 52 00 00       	call   0x6208
     f94:	48 83 f8 01          	cmp    $0x1,%rax
     f98:	74 4f                	je     0xfe9
     f9a:	48 85 c0             	test   %rax,%rax
     f9d:	74 88                	je     0xf27
     f9f:	b9 0b 00 00 00       	mov    $0xb,%ecx
     fa4:	ff d0                	call   *%rax
     fa6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     fab:	e9 1d ff ff ff       	jmp    0xecd
     fb0:	ba 01 00 00 00       	mov    $0x1,%edx
     fb5:	b9 04 00 00 00       	mov    $0x4,%ecx
     fba:	e8 49 52 00 00       	call   0x6208
     fbf:	83 c8 ff             	or     $0xffffffff,%eax
     fc2:	e9 06 ff ff ff       	jmp    0xecd
     fc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     fce:	00 00 
     fd0:	ba 01 00 00 00       	mov    $0x1,%edx
     fd5:	b9 08 00 00 00       	mov    $0x8,%ecx
     fda:	e8 29 52 00 00       	call   0x6208
     fdf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     fe4:	e9 e4 fe ff ff       	jmp    0xecd
     fe9:	ba 01 00 00 00       	mov    $0x1,%edx
     fee:	b9 0b 00 00 00       	mov    $0xb,%ecx
     ff3:	e8 10 52 00 00       	call   0x6208
     ff8:	83 c8 ff             	or     $0xffffffff,%eax
     ffb:	e9 cd fe ff ff       	jmp    0xecd
    1000:	41 54                	push   %r12
    1002:	57                   	push   %rdi
    1003:	56                   	push   %rsi
    1004:	53                   	push   %rbx
    1005:	48 83 ec 28          	sub    $0x28,%rsp
    1009:	48 8d 0d f0 a0 00 00 	lea    0xa0f0(%rip),%rcx        # 0xb100
    1010:	ff 15 c6 b1 00 00    	call   *0xb1c6(%rip)        # 0xc1dc
    1016:	48 8b 1d c3 a0 00 00 	mov    0xa0c3(%rip),%rbx        # 0xb0e0
    101d:	48 85 db             	test   %rbx,%rbx
    1020:	74 32                	je     0x1054
    1022:	48 8b 3d fb b1 00 00 	mov    0xb1fb(%rip),%rdi        # 0xc224
    1029:	48 8b 35 b4 b1 00 00 	mov    0xb1b4(%rip),%rsi        # 0xc1e4
    1030:	8b 0b                	mov    (%rbx),%ecx
    1032:	ff d7                	call   *%rdi
    1034:	49 89 c4             	mov    %rax,%r12
    1037:	ff d6                	call   *%rsi
    1039:	85 c0                	test   %eax,%eax
    103b:	75 0e                	jne    0x104b
    103d:	4d 85 e4             	test   %r12,%r12
    1040:	74 09                	je     0x104b
    1042:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1046:	4c 89 e1             	mov    %r12,%rcx
    1049:	ff d0                	call   *%rax
    104b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
    104f:	48 85 db             	test   %rbx,%rbx
    1052:	75 dc                	jne    0x1030
    1054:	48 8d 0d a5 a0 00 00 	lea    0xa0a5(%rip),%rcx        # 0xb100
    105b:	48 83 c4 28          	add    $0x28,%rsp
    105f:	5b                   	pop    %rbx
    1060:	5e                   	pop    %rsi
    1061:	5f                   	pop    %rdi
    1062:	41 5c                	pop    %r12
    1064:	48 ff 25 99 b1 00 00 	rex.W jmp *0xb199(%rip)        # 0xc204
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1070:	57                   	push   %rdi
    1071:	56                   	push   %rsi
    1072:	53                   	push   %rbx
    1073:	48 83 ec 20          	sub    $0x20,%rsp
    1077:	8b 05 6b a0 00 00    	mov    0xa06b(%rip),%eax        # 0xb0e8
    107d:	89 cf                	mov    %ecx,%edi
    107f:	48 89 d6             	mov    %rdx,%rsi
    1082:	85 c0                	test   %eax,%eax
    1084:	75 0a                	jne    0x1090
    1086:	48 83 c4 20          	add    $0x20,%rsp
    108a:	5b                   	pop    %rbx
    108b:	5e                   	pop    %rsi
    108c:	5f                   	pop    %rdi
    108d:	c3                   	ret    
    108e:	66 90                	xchg   %ax,%ax
    1090:	ba 18 00 00 00       	mov    $0x18,%edx
    1095:	b9 01 00 00 00       	mov    $0x1,%ecx
    109a:	e8 b1 51 00 00       	call   0x6250
    109f:	48 89 c3             	mov    %rax,%rbx
    10a2:	48 85 c0             	test   %rax,%rax
    10a5:	74 3c                	je     0x10e3
    10a7:	89 38                	mov    %edi,(%rax)
    10a9:	48 8d 0d 50 a0 00 00 	lea    0xa050(%rip),%rcx        # 0xb100
    10b0:	48 89 70 08          	mov    %rsi,0x8(%rax)
    10b4:	ff 15 22 b1 00 00    	call   *0xb122(%rip)        # 0xc1dc
    10ba:	48 8b 05 1f a0 00 00 	mov    0xa01f(%rip),%rax        # 0xb0e0
    10c1:	48 8d 0d 38 a0 00 00 	lea    0xa038(%rip),%rcx        # 0xb100
    10c8:	48 89 1d 11 a0 00 00 	mov    %rbx,0xa011(%rip)        # 0xb0e0
    10cf:	48 89 43 10          	mov    %rax,0x10(%rbx)
    10d3:	ff 15 2b b1 00 00    	call   *0xb12b(%rip)        # 0xc204
    10d9:	31 c0                	xor    %eax,%eax
    10db:	48 83 c4 20          	add    $0x20,%rsp
    10df:	5b                   	pop    %rbx
    10e0:	5e                   	pop    %rsi
    10e1:	5f                   	pop    %rdi
    10e2:	c3                   	ret    
    10e3:	83 c8 ff             	or     $0xffffffff,%eax
    10e6:	eb 9e                	jmp    0x1086
    10e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    10ef:	00 
    10f0:	53                   	push   %rbx
    10f1:	48 83 ec 20          	sub    $0x20,%rsp
    10f5:	8b 05 ed 9f 00 00    	mov    0x9fed(%rip),%eax        # 0xb0e8
    10fb:	89 cb                	mov    %ecx,%ebx
    10fd:	85 c0                	test   %eax,%eax
    10ff:	75 0f                	jne    0x1110
    1101:	31 c0                	xor    %eax,%eax
    1103:	48 83 c4 20          	add    $0x20,%rsp
    1107:	5b                   	pop    %rbx
    1108:	c3                   	ret    
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1110:	48 8d 0d e9 9f 00 00 	lea    0x9fe9(%rip),%rcx        # 0xb100
    1117:	ff 15 bf b0 00 00    	call   *0xb0bf(%rip)        # 0xc1dc
    111d:	48 8b 0d bc 9f 00 00 	mov    0x9fbc(%rip),%rcx        # 0xb0e0
    1124:	48 85 c9             	test   %rcx,%rcx
    1127:	74 2a                	je     0x1153
    1129:	31 d2                	xor    %edx,%edx
    112b:	eb 0e                	jmp    0x113b
    112d:	0f 1f 00             	nopl   (%rax)
    1130:	48 89 ca             	mov    %rcx,%rdx
    1133:	48 85 c0             	test   %rax,%rax
    1136:	74 1b                	je     0x1153
    1138:	48 89 c1             	mov    %rax,%rcx
    113b:	8b 01                	mov    (%rcx),%eax
    113d:	39 d8                	cmp    %ebx,%eax
    113f:	48 8b 41 10          	mov    0x10(%rcx),%rax
    1143:	75 eb                	jne    0x1130
    1145:	48 85 d2             	test   %rdx,%rdx
    1148:	74 26                	je     0x1170
    114a:	48 89 42 10          	mov    %rax,0x10(%rdx)
    114e:	e8 dd 50 00 00       	call   0x6230
    1153:	48 8d 0d a6 9f 00 00 	lea    0x9fa6(%rip),%rcx        # 0xb100
    115a:	ff 15 a4 b0 00 00    	call   *0xb0a4(%rip)        # 0xc204
    1160:	31 c0                	xor    %eax,%eax
    1162:	48 83 c4 20          	add    $0x20,%rsp
    1166:	5b                   	pop    %rbx
    1167:	c3                   	ret    
    1168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    116f:	00 
    1170:	48 89 05 69 9f 00 00 	mov    %rax,0x9f69(%rip)        # 0xb0e0
    1177:	eb d5                	jmp    0x114e
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1180:	53                   	push   %rbx
    1181:	48 83 ec 20          	sub    $0x20,%rsp
    1185:	83 fa 02             	cmp    $0x2,%edx
    1188:	0f 84 c2 00 00 00    	je     0x1250
    118e:	77 28                	ja     0x11b8
    1190:	85 d2                	test   %edx,%edx
    1192:	74 4c                	je     0x11e0
    1194:	8b 05 4e 9f 00 00    	mov    0x9f4e(%rip),%eax        # 0xb0e8
    119a:	85 c0                	test   %eax,%eax
    119c:	74 32                	je     0x11d0
    119e:	c7 05 40 9f 00 00 01 	movl   $0x1,0x9f40(%rip)        # 0xb0e8
    11a5:	00 00 00 
    11a8:	b8 01 00 00 00       	mov    $0x1,%eax
    11ad:	48 83 c4 20          	add    $0x20,%rsp
    11b1:	5b                   	pop    %rbx
    11b2:	c3                   	ret    
    11b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    11b8:	83 fa 03             	cmp    $0x3,%edx
    11bb:	75 eb                	jne    0x11a8
    11bd:	8b 05 25 9f 00 00    	mov    0x9f25(%rip),%eax        # 0xb0e8
    11c3:	85 c0                	test   %eax,%eax
    11c5:	74 e1                	je     0x11a8
    11c7:	e8 34 fe ff ff       	call   0x1000
    11cc:	eb da                	jmp    0x11a8
    11ce:	66 90                	xchg   %ax,%ax
    11d0:	48 8d 0d 29 9f 00 00 	lea    0x9f29(%rip),%rcx        # 0xb100
    11d7:	ff 15 17 b0 00 00    	call   *0xb017(%rip)        # 0xc1f4
    11dd:	eb bf                	jmp    0x119e
    11df:	90                   	nop
    11e0:	8b 05 02 9f 00 00    	mov    0x9f02(%rip),%eax        # 0xb0e8
    11e6:	85 c0                	test   %eax,%eax
    11e8:	74 05                	je     0x11ef
    11ea:	e8 11 fe ff ff       	call   0x1000
    11ef:	8b 05 f3 9e 00 00    	mov    0x9ef3(%rip),%eax        # 0xb0e8
    11f5:	83 f8 01             	cmp    $0x1,%eax
    11f8:	75 ae                	jne    0x11a8
    11fa:	48 8b 1d df 9e 00 00 	mov    0x9edf(%rip),%rbx        # 0xb0e0
    1201:	48 85 db             	test   %rbx,%rbx
    1204:	74 1b                	je     0x1221
    1206:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    120d:	00 00 00 
    1210:	48 89 d9             	mov    %rbx,%rcx
    1213:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
    1217:	e8 14 50 00 00       	call   0x6230
    121c:	48 85 db             	test   %rbx,%rbx
    121f:	75 ef                	jne    0x1210
    1221:	48 8d 0d d8 9e 00 00 	lea    0x9ed8(%rip),%rcx        # 0xb100
    1228:	48 c7 05 ad 9e 00 00 	movq   $0x0,0x9ead(%rip)        # 0xb0e0
    122f:	00 00 00 00 
    1233:	c7 05 ab 9e 00 00 00 	movl   $0x0,0x9eab(%rip)        # 0xb0e8
    123a:	00 00 00 
    123d:	ff 15 91 af 00 00    	call   *0xaf91(%rip)        # 0xc1d4
    1243:	e9 60 ff ff ff       	jmp    0x11a8
    1248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    124f:	00 
    1250:	e8 0b f6 ff ff       	call   0x860
    1255:	b8 01 00 00 00       	mov    $0x1,%eax
    125a:	48 83 c4 20          	add    $0x20,%rsp
    125e:	5b                   	pop    %rbx
    125f:	c3                   	ret    
    1260:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1264:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1268:	31 c0                	xor    %eax,%eax
    126a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
    1270:	75 0b                	jne    0x127d
    1272:	31 c0                	xor    %eax,%eax
    1274:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
    127a:	0f 94 c0             	sete   %al
    127d:	c3                   	ret    
    127e:	66 90                	xchg   %ax,%ax
    1280:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1285:	75 09                	jne    0x1290
    1287:	eb d7                	jmp    0x1260
    1289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1290:	31 c0                	xor    %eax,%eax
    1292:	c3                   	ret    
    1293:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    129a:	00 00 00 00 
    129e:	66 90                	xchg   %ax,%ax
    12a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    12a4:	48 01 c1             	add    %rax,%rcx
    12a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    12ab:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
    12b0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
    12b4:	85 c9                	test   %ecx,%ecx
    12b6:	74 2d                	je     0x12e5
    12b8:	83 e9 01             	sub    $0x1,%ecx
    12bb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    12bf:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
    12c4:	0f 1f 40 00          	nopl   0x0(%rax)
    12c8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    12cc:	4c 89 c1             	mov    %r8,%rcx
    12cf:	49 39 d0             	cmp    %rdx,%r8
    12d2:	77 08                	ja     0x12dc
    12d4:	03 48 08             	add    0x8(%rax),%ecx
    12d7:	48 39 d1             	cmp    %rdx,%rcx
    12da:	77 0b                	ja     0x12e7
    12dc:	48 83 c0 28          	add    $0x28,%rax
    12e0:	4c 39 c8             	cmp    %r9,%rax
    12e3:	75 e3                	jne    0x12c8
    12e5:	31 c0                	xor    %eax,%eax
    12e7:	c3                   	ret    
    12e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12ef:	00 
    12f0:	41 54                	push   %r12
    12f2:	56                   	push   %rsi
    12f3:	53                   	push   %rbx
    12f4:	48 83 ec 20          	sub    $0x20,%rsp
    12f8:	48 89 cb             	mov    %rcx,%rbx
    12fb:	e8 f8 4e 00 00       	call   0x61f8
    1300:	48 83 f8 08          	cmp    $0x8,%rax
    1304:	77 7a                	ja     0x1380
    1306:	48 8b 0d d3 73 00 00 	mov    0x73d3(%rip),%rcx        # 0x86e0
    130d:	45 31 e4             	xor    %r12d,%r12d
    1310:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1315:	75 57                	jne    0x136e
    1317:	e8 44 ff ff ff       	call   0x1260
    131c:	85 c0                	test   %eax,%eax
    131e:	74 4e                	je     0x136e
    1320:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1324:	48 01 c1             	add    %rax,%rcx
    1327:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    132b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
    1330:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
    1334:	85 c0                	test   %eax,%eax
    1336:	74 48                	je     0x1380
    1338:	83 e8 01             	sub    $0x1,%eax
    133b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    133f:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
    1344:	eb 13                	jmp    0x1359
    1346:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    134d:	00 00 00 
    1350:	49 83 c4 28          	add    $0x28,%r12
    1354:	49 39 f4             	cmp    %rsi,%r12
    1357:	74 27                	je     0x1380
    1359:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    135f:	48 89 da             	mov    %rbx,%rdx
    1362:	4c 89 e1             	mov    %r12,%rcx
    1365:	e8 86 4e 00 00       	call   0x61f0
    136a:	85 c0                	test   %eax,%eax
    136c:	75 e2                	jne    0x1350
    136e:	4c 89 e0             	mov    %r12,%rax
    1371:	48 83 c4 20          	add    $0x20,%rsp
    1375:	5b                   	pop    %rbx
    1376:	5e                   	pop    %rsi
    1377:	41 5c                	pop    %r12
    1379:	c3                   	ret    
    137a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1380:	45 31 e4             	xor    %r12d,%r12d
    1383:	4c 89 e0             	mov    %r12,%rax
    1386:	48 83 c4 20          	add    $0x20,%rsp
    138a:	5b                   	pop    %rbx
    138b:	5e                   	pop    %rsi
    138c:	41 5c                	pop    %r12
    138e:	c3                   	ret    
    138f:	90                   	nop
    1390:	48 83 ec 28          	sub    $0x28,%rsp
    1394:	4c 8b 15 45 73 00 00 	mov    0x7345(%rip),%r10        # 0x86e0
    139b:	45 31 c0             	xor    %r8d,%r8d
    139e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
    13a4:	49 89 c9             	mov    %rcx,%r9
    13a7:	75 60                	jne    0x1409
    13a9:	4c 89 d1             	mov    %r10,%rcx
    13ac:	e8 af fe ff ff       	call   0x1260
    13b1:	85 c0                	test   %eax,%eax
    13b3:	74 54                	je     0x1409
    13b5:	49 63 42 3c          	movslq 0x3c(%r10),%rax
    13b9:	4c 89 c9             	mov    %r9,%rcx
    13bc:	4c 29 d1             	sub    %r10,%rcx
    13bf:	49 01 c2             	add    %rax,%r10
    13c2:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
    13c7:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
    13cc:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
    13d1:	85 c0                	test   %eax,%eax
    13d3:	74 31                	je     0x1406
    13d5:	83 e8 01             	sub    $0x1,%eax
    13d8:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    13dc:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
    13e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13e8:	41 8b 50 0c          	mov    0xc(%r8),%edx
    13ec:	48 89 d0             	mov    %rdx,%rax
    13ef:	48 39 d1             	cmp    %rdx,%rcx
    13f2:	72 09                	jb     0x13fd
    13f4:	41 03 40 08          	add    0x8(%r8),%eax
    13f8:	48 39 c1             	cmp    %rax,%rcx
    13fb:	72 0c                	jb     0x1409
    13fd:	49 83 c0 28          	add    $0x28,%r8
    1401:	4d 39 c8             	cmp    %r9,%r8
    1404:	75 e2                	jne    0x13e8
    1406:	45 31 c0             	xor    %r8d,%r8d
    1409:	4c 89 c0             	mov    %r8,%rax
    140c:	48 83 c4 28          	add    $0x28,%rsp
    1410:	c3                   	ret    
    1411:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1418:	00 00 00 00 
    141c:	0f 1f 40 00          	nopl   0x0(%rax)
    1420:	48 83 ec 28          	sub    $0x28,%rsp
    1424:	48 8b 0d b5 72 00 00 	mov    0x72b5(%rip),%rcx        # 0x86e0
    142b:	31 c0                	xor    %eax,%eax
    142d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1432:	75 12                	jne    0x1446
    1434:	e8 27 fe ff ff       	call   0x1260
    1439:	85 c0                	test   %eax,%eax
    143b:	74 09                	je     0x1446
    143d:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1441:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
    1446:	48 83 c4 28          	add    $0x28,%rsp
    144a:	c3                   	ret    
    144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1450:	48 83 ec 28          	sub    $0x28,%rsp
    1454:	45 31 c0             	xor    %r8d,%r8d
    1457:	49 89 c9             	mov    %rcx,%r9
    145a:	48 8b 0d 7f 72 00 00 	mov    0x727f(%rip),%rcx        # 0x86e0
    1461:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1466:	75 4c                	jne    0x14b4
    1468:	e8 f3 fd ff ff       	call   0x1260
    146d:	85 c0                	test   %eax,%eax
    146f:	74 43                	je     0x14b4
    1471:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1475:	48 01 c1             	add    %rax,%rcx
    1478:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    147c:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
    1481:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
    1485:	85 c0                	test   %eax,%eax
    1487:	74 28                	je     0x14b1
    1489:	83 e8 01             	sub    $0x1,%eax
    148c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1490:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
    1495:	0f 1f 00             	nopl   (%rax)
    1498:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
    149d:	74 09                	je     0x14a8
    149f:	4d 85 c9             	test   %r9,%r9
    14a2:	74 10                	je     0x14b4
    14a4:	49 83 e9 01          	sub    $0x1,%r9
    14a8:	49 83 c0 28          	add    $0x28,%r8
    14ac:	49 39 c0             	cmp    %rax,%r8
    14af:	75 e7                	jne    0x1498
    14b1:	45 31 c0             	xor    %r8d,%r8d
    14b4:	4c 89 c0             	mov    %r8,%rax
    14b7:	48 83 c4 28          	add    $0x28,%rsp
    14bb:	c3                   	ret    
    14bc:	0f 1f 40 00          	nopl   0x0(%rax)
    14c0:	48 83 ec 28          	sub    $0x28,%rsp
    14c4:	48 8b 0d 15 72 00 00 	mov    0x7215(%rip),%rcx        # 0x86e0
    14cb:	45 31 c0             	xor    %r8d,%r8d
    14ce:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    14d3:	75 0b                	jne    0x14e0
    14d5:	e8 86 fd ff ff       	call   0x1260
    14da:	85 c0                	test   %eax,%eax
    14dc:	4c 0f 45 c1          	cmovne %rcx,%r8
    14e0:	4c 89 c0             	mov    %r8,%rax
    14e3:	48 83 c4 28          	add    $0x28,%rsp
    14e7:	c3                   	ret    
    14e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14ef:	00 
    14f0:	48 83 ec 28          	sub    $0x28,%rsp
    14f4:	4c 8b 0d e5 71 00 00 	mov    0x71e5(%rip),%r9        # 0x86e0
    14fb:	31 c0                	xor    %eax,%eax
    14fd:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
    1503:	49 89 c8             	mov    %rcx,%r8
    1506:	75 57                	jne    0x155f
    1508:	4c 89 c9             	mov    %r9,%rcx
    150b:	e8 50 fd ff ff       	call   0x1260
    1510:	85 c0                	test   %eax,%eax
    1512:	74 4b                	je     0x155f
    1514:	49 63 41 3c          	movslq 0x3c(%r9),%rax
    1518:	4c 89 c1             	mov    %r8,%rcx
    151b:	4c 29 c9             	sub    %r9,%rcx
    151e:	49 01 c1             	add    %rax,%r9
    1521:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
    1526:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
    152b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
    1530:	85 d2                	test   %edx,%edx
    1532:	74 29                	je     0x155d
    1534:	83 ea 01             	sub    $0x1,%edx
    1537:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
    153b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
    1540:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    1544:	4c 89 c2             	mov    %r8,%rdx
    1547:	4c 39 c1             	cmp    %r8,%rcx
    154a:	72 08                	jb     0x1554
    154c:	03 50 08             	add    0x8(%rax),%edx
    154f:	48 39 d1             	cmp    %rdx,%rcx
    1552:	72 14                	jb     0x1568
    1554:	48 83 c0 28          	add    $0x28,%rax
    1558:	4c 39 c8             	cmp    %r9,%rax
    155b:	75 e3                	jne    0x1540
    155d:	31 c0                	xor    %eax,%eax
    155f:	48 83 c4 28          	add    $0x28,%rsp
    1563:	c3                   	ret    
    1564:	0f 1f 40 00          	nopl   0x0(%rax)
    1568:	8b 40 24             	mov    0x24(%rax),%eax
    156b:	f7 d0                	not    %eax
    156d:	c1 e8 1f             	shr    $0x1f,%eax
    1570:	48 83 c4 28          	add    $0x28,%rsp
    1574:	c3                   	ret    
    1575:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    157c:	00 00 00 00 
    1580:	48 83 ec 28          	sub    $0x28,%rsp
    1584:	4c 8b 1d 55 71 00 00 	mov    0x7155(%rip),%r11        # 0x86e0
    158b:	45 31 c9             	xor    %r9d,%r9d
    158e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
    1594:	41 89 c8             	mov    %ecx,%r8d
    1597:	75 5f                	jne    0x15f8
    1599:	4c 89 d9             	mov    %r11,%rcx
    159c:	e8 bf fc ff ff       	call   0x1260
    15a1:	85 c0                	test   %eax,%eax
    15a3:	74 53                	je     0x15f8
    15a5:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
    15a9:	4c 01 d9             	add    %r11,%rcx
    15ac:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
    15b2:	85 c0                	test   %eax,%eax
    15b4:	74 42                	je     0x15f8
    15b6:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
    15ba:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
    15bf:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
    15c3:	85 c9                	test   %ecx,%ecx
    15c5:	74 31                	je     0x15f8
    15c7:	83 e9 01             	sub    $0x1,%ecx
    15ca:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    15ce:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
    15d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    15d8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
    15dc:	4c 89 c9             	mov    %r9,%rcx
    15df:	4c 39 c8             	cmp    %r9,%rax
    15e2:	72 08                	jb     0x15ec
    15e4:	03 4a 08             	add    0x8(%rdx),%ecx
    15e7:	48 39 c8             	cmp    %rcx,%rax
    15ea:	72 14                	jb     0x1600
    15ec:	48 83 c2 28          	add    $0x28,%rdx
    15f0:	4c 39 d2             	cmp    %r10,%rdx
    15f3:	75 e3                	jne    0x15d8
    15f5:	45 31 c9             	xor    %r9d,%r9d
    15f8:	4c 89 c8             	mov    %r9,%rax
    15fb:	48 83 c4 28          	add    $0x28,%rsp
    15ff:	c3                   	ret    
    1600:	4c 01 d8             	add    %r11,%rax
    1603:	eb 0b                	jmp    0x1610
    1605:	0f 1f 00             	nopl   (%rax)
    1608:	41 83 e8 01          	sub    $0x1,%r8d
    160c:	48 83 c0 14          	add    $0x14,%rax
    1610:	8b 48 04             	mov    0x4(%rax),%ecx
    1613:	85 c9                	test   %ecx,%ecx
    1615:	75 07                	jne    0x161e
    1617:	8b 50 0c             	mov    0xc(%rax),%edx
    161a:	85 d2                	test   %edx,%edx
    161c:	74 d7                	je     0x15f5
    161e:	45 85 c0             	test   %r8d,%r8d
    1621:	7f e5                	jg     0x1608
    1623:	44 8b 48 0c          	mov    0xc(%rax),%r9d
    1627:	4d 01 d9             	add    %r11,%r9
    162a:	4c 89 c8             	mov    %r9,%rax
    162d:	48 83 c4 28          	add    $0x28,%rsp
    1631:	c3                   	ret    
    1632:	90                   	nop
    1633:	90                   	nop
    1634:	90                   	nop
    1635:	90                   	nop
    1636:	90                   	nop
    1637:	90                   	nop
    1638:	90                   	nop
    1639:	90                   	nop
    163a:	90                   	nop
    163b:	90                   	nop
    163c:	90                   	nop
    163d:	90                   	nop
    163e:	90                   	nop
    163f:	90                   	nop
    1640:	51                   	push   %rcx
    1641:	50                   	push   %rax
    1642:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1648:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    164d:	72 19                	jb     0x1668
    164f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
    1656:	48 83 09 00          	orq    $0x0,(%rcx)
    165a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
    1660:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1666:	77 e7                	ja     0x164f
    1668:	48 29 c1             	sub    %rax,%rcx
    166b:	48 83 09 00          	orq    $0x0,(%rcx)
    166f:	58                   	pop    %rax
    1670:	59                   	pop    %rcx
    1671:	c3                   	ret    
    1672:	90                   	nop
    1673:	90                   	nop
    1674:	90                   	nop
    1675:	90                   	nop
    1676:	90                   	nop
    1677:	90                   	nop
    1678:	90                   	nop
    1679:	90                   	nop
    167a:	90                   	nop
    167b:	90                   	nop
    167c:	90                   	nop
    167d:	90                   	nop
    167e:	90                   	nop
    167f:	90                   	nop
    1680:	41 55                	push   %r13
    1682:	41 54                	push   %r12
    1684:	53                   	push   %rbx
    1685:	48 83 ec 30          	sub    $0x30,%rsp
    1689:	4c 89 c3             	mov    %r8,%rbx
    168c:	49 89 cc             	mov    %rcx,%r12
    168f:	49 89 d5             	mov    %rdx,%r13
    1692:	e8 99 51 00 00       	call   0x6830
    1697:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    169c:	4d 89 e9             	mov    %r13,%r9
    169f:	45 31 c0             	xor    %r8d,%r8d
    16a2:	4c 89 e2             	mov    %r12,%rdx
    16a5:	b9 00 60 00 00       	mov    $0x6000,%ecx
    16aa:	e8 f1 1a 00 00       	call   0x31a0
    16af:	4c 89 e1             	mov    %r12,%rcx
    16b2:	41 89 c5             	mov    %eax,%r13d
    16b5:	e8 e6 51 00 00       	call   0x68a0
    16ba:	44 89 e8             	mov    %r13d,%eax
    16bd:	48 83 c4 30          	add    $0x30,%rsp
    16c1:	5b                   	pop    %rbx
    16c2:	41 5c                	pop    %r12
    16c4:	41 5d                	pop    %r13
    16c6:	c3                   	ret    
    16c7:	90                   	nop
    16c8:	90                   	nop
    16c9:	90                   	nop
    16ca:	90                   	nop
    16cb:	90                   	nop
    16cc:	90                   	nop
    16cd:	90                   	nop
    16ce:	90                   	nop
    16cf:	90                   	nop
    16d0:	48 83 ec 58          	sub    $0x58,%rsp
    16d4:	44 8b 5a 08          	mov    0x8(%rdx),%r11d
    16d8:	4c 8b 12             	mov    (%rdx),%r10
    16db:	4c 89 d8             	mov    %r11,%rax
    16de:	66 25 ff 7f          	and    $0x7fff,%ax
    16e2:	0f 85 80 00 00 00    	jne    0x1768
    16e8:	4d 89 d3             	mov    %r10,%r11
    16eb:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
    16ef:	49 c1 eb 20          	shr    $0x20,%r11
    16f3:	45 09 da             	or     %r11d,%r10d
    16f6:	0f 84 7c 00 00 00    	je     0x1778
    16fc:	45 85 db             	test   %r11d,%r11d
    16ff:	0f 89 c3 00 00 00    	jns    0x17c8
    1705:	41 89 c3             	mov    %eax,%r11d
    1708:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
    170f:	00 
    1710:	41 81 e3 ff 7f 00 00 	and    $0x7fff,%r11d
    1717:	41 81 eb 3e 40 00 00 	sub    $0x403e,%r11d
    171e:	66 90                	xchg   %ax,%ax
    1720:	25 00 80 00 00       	and    $0x8000,%eax
    1725:	4c 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10
    172c:	00 
    172d:	41 89 02             	mov    %eax,(%r10)
    1730:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    1735:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
    173a:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
    173f:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
    1744:	49 89 d0             	mov    %rdx,%r8
    1747:	44 89 da             	mov    %r11d,%edx
    174a:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
    174e:	48 8d 0d 0b 59 00 00 	lea    0x590b(%rip),%rcx        # 0x7060
    1755:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    175a:	e8 f1 25 00 00       	call   0x3d50
    175f:	48 83 c4 58          	add    $0x58,%rsp
    1763:	c3                   	ret    
    1764:	0f 1f 40 00          	nopl   0x0(%rax)
    1768:	66 3d ff 7f          	cmp    $0x7fff,%ax
    176c:	74 1a                	je     0x1788
    176e:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
    1772:	eb 91                	jmp    0x1705
    1774:	0f 1f 40 00          	nopl   0x0(%rax)
    1778:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    177f:	00 
    1780:	45 31 db             	xor    %r11d,%r11d
    1783:	eb 9b                	jmp    0x1720
    1785:	0f 1f 00             	nopl   (%rax)
    1788:	4c 89 d0             	mov    %r10,%rax
    178b:	48 c1 e8 20          	shr    $0x20,%rax
    178f:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    1794:	44 09 d0             	or     %r10d,%eax
    1797:	74 17                	je     0x17b0
    1799:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
    17a0:	00 
    17a1:	45 31 db             	xor    %r11d,%r11d
    17a4:	31 c0                	xor    %eax,%eax
    17a6:	e9 7a ff ff ff       	jmp    0x1725
    17ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    17b0:	c7 44 24 44 03 00 00 	movl   $0x3,0x44(%rsp)
    17b7:	00 
    17b8:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
    17bc:	45 31 db             	xor    %r11d,%r11d
    17bf:	e9 5c ff ff ff       	jmp    0x1720
    17c4:	0f 1f 40 00          	nopl   0x0(%rax)
    17c8:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
    17cf:	00 
    17d0:	41 bb c3 bf ff ff    	mov    $0xffffbfc3,%r11d
    17d6:	e9 45 ff ff ff       	jmp    0x1720
    17db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    17e0:	53                   	push   %rbx
    17e1:	48 83 ec 20          	sub    $0x20,%rsp
    17e5:	48 89 d3             	mov    %rdx,%rbx
    17e8:	8b 52 08             	mov    0x8(%rdx),%edx
    17eb:	f6 c6 40             	test   $0x40,%dh
    17ee:	75 08                	jne    0x17f8
    17f0:	8b 43 24             	mov    0x24(%rbx),%eax
    17f3:	39 43 28             	cmp    %eax,0x28(%rbx)
    17f6:	7e 13                	jle    0x180b
    17f8:	4c 8b 03             	mov    (%rbx),%r8
    17fb:	80 e6 20             	and    $0x20,%dh
    17fe:	75 20                	jne    0x1820
    1800:	48 63 43 24          	movslq 0x24(%rbx),%rax
    1804:	41 88 0c 00          	mov    %cl,(%r8,%rax,1)
    1808:	8b 43 24             	mov    0x24(%rbx),%eax
    180b:	83 c0 01             	add    $0x1,%eax
    180e:	89 43 24             	mov    %eax,0x24(%rbx)
    1811:	48 83 c4 20          	add    $0x20,%rsp
    1815:	5b                   	pop    %rbx
    1816:	c3                   	ret    
    1817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    181e:	00 00 
    1820:	4c 89 c2             	mov    %r8,%rdx
    1823:	e8 10 4a 00 00       	call   0x6238
    1828:	8b 43 24             	mov    0x24(%rbx),%eax
    182b:	83 c0 01             	add    $0x1,%eax
    182e:	89 43 24             	mov    %eax,0x24(%rbx)
    1831:	48 83 c4 20          	add    $0x20,%rsp
    1835:	5b                   	pop    %rbx
    1836:	c3                   	ret    
    1837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    183e:	00 00 
    1840:	41 56                	push   %r14
    1842:	41 55                	push   %r13
    1844:	41 54                	push   %r12
    1846:	55                   	push   %rbp
    1847:	57                   	push   %rdi
    1848:	56                   	push   %rsi
    1849:	53                   	push   %rbx
    184a:	48 83 ec 40          	sub    $0x40,%rsp
    184e:	4c 8d 74 24 28       	lea    0x28(%rsp),%r14
    1853:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    1858:	4c 89 c6             	mov    %r8,%rsi
    185b:	49 89 cc             	mov    %rcx,%r12
    185e:	89 d5                	mov    %edx,%ebp
    1860:	4d 89 f0             	mov    %r14,%r8
    1863:	31 d2                	xor    %edx,%edx
    1865:	4c 89 e9             	mov    %r13,%rcx
    1868:	e8 33 4e 00 00       	call   0x66a0
    186d:	8b 46 10             	mov    0x10(%rsi),%eax
    1870:	85 c0                	test   %eax,%eax
    1872:	78 05                	js     0x1879
    1874:	39 c5                	cmp    %eax,%ebp
    1876:	0f 4f e8             	cmovg  %eax,%ebp
    1879:	8b 46 0c             	mov    0xc(%rsi),%eax
    187c:	39 e8                	cmp    %ebp,%eax
    187e:	0f 8f 95 00 00 00    	jg     0x1919
    1884:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
    188b:	85 ed                	test   %ebp,%ebp
    188d:	0f 8e cc 00 00 00    	jle    0x195f
    1893:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1898:	41 0f b7 14 24       	movzwl (%r12),%edx
    189d:	4d 89 f0             	mov    %r14,%r8
    18a0:	4c 89 e9             	mov    %r13,%rcx
    18a3:	49 83 c4 02          	add    $0x2,%r12
    18a7:	e8 f4 4d 00 00       	call   0x66a0
    18ac:	85 c0                	test   %eax,%eax
    18ae:	7e 4d                	jle    0x18fd
    18b0:	83 e8 01             	sub    $0x1,%eax
    18b3:	4c 89 eb             	mov    %r13,%rbx
    18b6:	49 8d 7c 05 01       	lea    0x1(%r13,%rax,1),%rdi
    18bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18c0:	0f be 0b             	movsbl (%rbx),%ecx
    18c3:	48 83 c3 01          	add    $0x1,%rbx
    18c7:	48 89 f2             	mov    %rsi,%rdx
    18ca:	e8 11 ff ff ff       	call   0x17e0
    18cf:	48 39 fb             	cmp    %rdi,%rbx
    18d2:	75 ec                	jne    0x18c0
    18d4:	83 ed 01             	sub    $0x1,%ebp
    18d7:	75 bf                	jne    0x1898
    18d9:	8b 46 0c             	mov    0xc(%rsi),%eax
    18dc:	8d 50 ff             	lea    -0x1(%rax),%edx
    18df:	89 56 0c             	mov    %edx,0xc(%rsi)
    18e2:	85 c0                	test   %eax,%eax
    18e4:	7e 24                	jle    0x190a
    18e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    18ed:	00 00 00 
    18f0:	48 89 f2             	mov    %rsi,%rdx
    18f3:	b9 20 00 00 00       	mov    $0x20,%ecx
    18f8:	e8 e3 fe ff ff       	call   0x17e0
    18fd:	8b 46 0c             	mov    0xc(%rsi),%eax
    1900:	8d 50 ff             	lea    -0x1(%rax),%edx
    1903:	89 56 0c             	mov    %edx,0xc(%rsi)
    1906:	85 c0                	test   %eax,%eax
    1908:	7f e6                	jg     0x18f0
    190a:	48 83 c4 40          	add    $0x40,%rsp
    190e:	5b                   	pop    %rbx
    190f:	5e                   	pop    %rsi
    1910:	5f                   	pop    %rdi
    1911:	5d                   	pop    %rbp
    1912:	41 5c                	pop    %r12
    1914:	41 5d                	pop    %r13
    1916:	41 5e                	pop    %r14
    1918:	c3                   	ret    
    1919:	29 e8                	sub    %ebp,%eax
    191b:	89 46 0c             	mov    %eax,0xc(%rsi)
    191e:	f6 46 09 04          	testb  $0x4,0x9(%rsi)
    1922:	75 2b                	jne    0x194f
    1924:	83 e8 01             	sub    $0x1,%eax
    1927:	89 46 0c             	mov    %eax,0xc(%rsi)
    192a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1930:	48 89 f2             	mov    %rsi,%rdx
    1933:	b9 20 00 00 00       	mov    $0x20,%ecx
    1938:	e8 a3 fe ff ff       	call   0x17e0
    193d:	8b 46 0c             	mov    0xc(%rsi),%eax
    1940:	8d 50 ff             	lea    -0x1(%rax),%edx
    1943:	89 56 0c             	mov    %edx,0xc(%rsi)
    1946:	85 c0                	test   %eax,%eax
    1948:	75 e6                	jne    0x1930
    194a:	e9 3c ff ff ff       	jmp    0x188b
    194f:	85 ed                	test   %ebp,%ebp
    1951:	0f 8f 41 ff ff ff    	jg     0x1898
    1957:	83 e8 01             	sub    $0x1,%eax
    195a:	89 46 0c             	mov    %eax,0xc(%rsi)
    195d:	eb 91                	jmp    0x18f0
    195f:	c7 46 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rsi)
    1966:	eb a2                	jmp    0x190a
    1968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    196f:	00 
    1970:	57                   	push   %rdi
    1971:	56                   	push   %rsi
    1972:	53                   	push   %rbx
    1973:	48 83 ec 20          	sub    $0x20,%rsp
    1977:	41 8b 40 10          	mov    0x10(%r8),%eax
    197b:	48 89 ce             	mov    %rcx,%rsi
    197e:	89 d7                	mov    %edx,%edi
    1980:	4c 89 c3             	mov    %r8,%rbx
    1983:	85 c0                	test   %eax,%eax
    1985:	78 05                	js     0x198c
    1987:	39 c2                	cmp    %eax,%edx
    1989:	0f 4f f8             	cmovg  %eax,%edi
    198c:	8b 43 0c             	mov    0xc(%rbx),%eax
    198f:	39 f8                	cmp    %edi,%eax
    1991:	7f 6d                	jg     0x1a00
    1993:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    199a:	85 ff                	test   %edi,%edi
    199c:	0f 84 ae 00 00 00    	je     0x1a50
    19a2:	8d 47 ff             	lea    -0x1(%rdi),%eax
    19a5:	48 8d 7c 06 01       	lea    0x1(%rsi,%rax,1),%rdi
    19aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    19b0:	0f be 0e             	movsbl (%rsi),%ecx
    19b3:	48 83 c6 01          	add    $0x1,%rsi
    19b7:	48 89 da             	mov    %rbx,%rdx
    19ba:	e8 21 fe ff ff       	call   0x17e0
    19bf:	48 39 f7             	cmp    %rsi,%rdi
    19c2:	75 ec                	jne    0x19b0
    19c4:	8b 43 0c             	mov    0xc(%rbx),%eax
    19c7:	8d 50 ff             	lea    -0x1(%rax),%edx
    19ca:	89 53 0c             	mov    %edx,0xc(%rbx)
    19cd:	85 c0                	test   %eax,%eax
    19cf:	7e 21                	jle    0x19f2
    19d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    19d8:	48 89 da             	mov    %rbx,%rdx
    19db:	b9 20 00 00 00       	mov    $0x20,%ecx
    19e0:	e8 fb fd ff ff       	call   0x17e0
    19e5:	8b 43 0c             	mov    0xc(%rbx),%eax
    19e8:	8d 50 ff             	lea    -0x1(%rax),%edx
    19eb:	89 53 0c             	mov    %edx,0xc(%rbx)
    19ee:	85 c0                	test   %eax,%eax
    19f0:	7f e6                	jg     0x19d8
    19f2:	48 83 c4 20          	add    $0x20,%rsp
    19f6:	5b                   	pop    %rbx
    19f7:	5e                   	pop    %rsi
    19f8:	5f                   	pop    %rdi
    19f9:	c3                   	ret    
    19fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a00:	29 f8                	sub    %edi,%eax
    1a02:	89 43 0c             	mov    %eax,0xc(%rbx)
    1a05:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
    1a09:	75 35                	jne    0x1a40
    1a0b:	83 e8 01             	sub    $0x1,%eax
    1a0e:	89 43 0c             	mov    %eax,0xc(%rbx)
    1a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a18:	48 89 da             	mov    %rbx,%rdx
    1a1b:	b9 20 00 00 00       	mov    $0x20,%ecx
    1a20:	e8 bb fd ff ff       	call   0x17e0
    1a25:	8b 43 0c             	mov    0xc(%rbx),%eax
    1a28:	8d 50 ff             	lea    -0x1(%rax),%edx
    1a2b:	89 53 0c             	mov    %edx,0xc(%rbx)
    1a2e:	85 c0                	test   %eax,%eax
    1a30:	75 e6                	jne    0x1a18
    1a32:	e9 63 ff ff ff       	jmp    0x199a
    1a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a3e:	00 00 
    1a40:	85 ff                	test   %edi,%edi
    1a42:	0f 85 5a ff ff ff    	jne    0x19a2
    1a48:	83 e8 01             	sub    $0x1,%eax
    1a4b:	89 43 0c             	mov    %eax,0xc(%rbx)
    1a4e:	eb 88                	jmp    0x19d8
    1a50:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
    1a57:	eb 99                	jmp    0x19f2
    1a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a60:	41 54                	push   %r12
    1a62:	53                   	push   %rbx
    1a63:	48 83 ec 28          	sub    $0x28,%rsp
    1a67:	48 8d 05 92 68 00 00 	lea    0x6892(%rip),%rax        # 0x8300
    1a6e:	49 89 cc             	mov    %rcx,%r12
    1a71:	48 85 c9             	test   %rcx,%rcx
    1a74:	48 89 d3             	mov    %rdx,%rbx
    1a77:	48 63 52 10          	movslq 0x10(%rdx),%rdx
    1a7b:	4c 0f 44 e0          	cmove  %rax,%r12
    1a7f:	4c 89 e1             	mov    %r12,%rcx
    1a82:	85 d2                	test   %edx,%edx
    1a84:	78 1a                	js     0x1aa0
    1a86:	e8 f5 46 00 00       	call   0x6180
    1a8b:	48 89 c2             	mov    %rax,%rdx
    1a8e:	49 89 d8             	mov    %rbx,%r8
    1a91:	4c 89 e1             	mov    %r12,%rcx
    1a94:	48 83 c4 28          	add    $0x28,%rsp
    1a98:	5b                   	pop    %rbx
    1a99:	41 5c                	pop    %r12
    1a9b:	e9 d0 fe ff ff       	jmp    0x1970
    1aa0:	e8 53 47 00 00       	call   0x61f8
    1aa5:	eb e4                	jmp    0x1a8b
    1aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1aae:	00 00 
    1ab0:	48 83 ec 38          	sub    $0x38,%rsp
    1ab4:	45 8b 50 08          	mov    0x8(%r8),%r10d
    1ab8:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
    1abf:	ff 
    1ac0:	85 c9                	test   %ecx,%ecx
    1ac2:	74 4c                	je     0x1b10
    1ac4:	c6 44 24 2c 2d       	movb   $0x2d,0x2c(%rsp)
    1ac9:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
    1ace:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1ad3:	41 83 e2 20          	and    $0x20,%r10d
    1ad7:	31 c9                	xor    %ecx,%ecx
    1ad9:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
    1add:	83 e0 df             	and    $0xffffffdf,%eax
    1ae0:	44 09 d0             	or     %r10d,%eax
    1ae3:	41 88 04 09          	mov    %al,(%r9,%rcx,1)
    1ae7:	48 83 c1 01          	add    $0x1,%rcx
    1aeb:	48 83 f9 03          	cmp    $0x3,%rcx
    1aef:	75 e8                	jne    0x1ad9
    1af1:	49 8d 51 03          	lea    0x3(%r9),%rdx
    1af5:	4c 89 d9             	mov    %r11,%rcx
    1af8:	4c 29 da             	sub    %r11,%rdx
    1afb:	e8 70 fe ff ff       	call   0x1970
    1b00:	90                   	nop
    1b01:	48 83 c4 38          	add    $0x38,%rsp
    1b05:	c3                   	ret    
    1b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b0d:	00 00 00 
    1b10:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
    1b17:	74 17                	je     0x1b30
    1b19:	c6 44 24 2c 2b       	movb   $0x2b,0x2c(%rsp)
    1b1e:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
    1b23:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b28:	eb a9                	jmp    0x1ad3
    1b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1b30:	41 f6 c2 40          	test   $0x40,%r10b
    1b34:	74 1a                	je     0x1b50
    1b36:	c6 44 24 2c 20       	movb   $0x20,0x2c(%rsp)
    1b3b:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
    1b40:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b45:	eb 8c                	jmp    0x1ad3
    1b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b4e:	00 00 
    1b50:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b55:	4d 89 d9             	mov    %r11,%r9
    1b58:	e9 76 ff ff ff       	jmp    0x1ad3
    1b5d:	0f 1f 00             	nopl   (%rax)
    1b60:	55                   	push   %rbp
    1b61:	41 54                	push   %r12
    1b63:	57                   	push   %rdi
    1b64:	56                   	push   %rsi
    1b65:	53                   	push   %rbx
    1b66:	48 89 e5             	mov    %rsp,%rbp
    1b69:	48 83 ec 30          	sub    $0x30,%rsp
    1b6d:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
    1b71:	49 89 cc             	mov    %rcx,%r12
    1b74:	0f 84 96 00 00 00    	je     0x1c10
    1b7a:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
    1b7e:	66 85 d2             	test   %dx,%dx
    1b81:	74 6d                	je     0x1bf0
    1b83:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    1b88:	48 89 e6             	mov    %rsp,%rsi
    1b8b:	48 83 c0 0f          	add    $0xf,%rax
    1b8f:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    1b93:	e8 a8 fa ff ff       	call   0x1640
    1b98:	48 29 c4             	sub    %rax,%rsp
    1b9b:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
    1b9f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1ba6:	00 
    1ba7:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
    1bac:	48 89 d9             	mov    %rbx,%rcx
    1baf:	e8 ec 4a 00 00       	call   0x66a0
    1bb4:	85 c0                	test   %eax,%eax
    1bb6:	0f 8e 94 00 00 00    	jle    0x1c50
    1bbc:	83 e8 01             	sub    $0x1,%eax
    1bbf:	48 8d 7c 03 01       	lea    0x1(%rbx,%rax,1),%rdi
    1bc4:	0f 1f 40 00          	nopl   0x0(%rax)
    1bc8:	0f be 0b             	movsbl (%rbx),%ecx
    1bcb:	48 83 c3 01          	add    $0x1,%rbx
    1bcf:	4c 89 e2             	mov    %r12,%rdx
    1bd2:	e8 09 fc ff ff       	call   0x17e0
    1bd7:	48 39 fb             	cmp    %rdi,%rbx
    1bda:	75 ec                	jne    0x1bc8
    1bdc:	48 89 f4             	mov    %rsi,%rsp
    1bdf:	48 89 ec             	mov    %rbp,%rsp
    1be2:	5b                   	pop    %rbx
    1be3:	5e                   	pop    %rsi
    1be4:	5f                   	pop    %rdi
    1be5:	41 5c                	pop    %r12
    1be7:	5d                   	pop    %rbp
    1be8:	c3                   	ret    
    1be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1bf0:	4c 89 e2             	mov    %r12,%rdx
    1bf3:	b9 2e 00 00 00       	mov    $0x2e,%ecx
    1bf8:	e8 e3 fb ff ff       	call   0x17e0
    1bfd:	90                   	nop
    1bfe:	48 89 ec             	mov    %rbp,%rsp
    1c01:	5b                   	pop    %rbx
    1c02:	5e                   	pop    %rsi
    1c03:	5f                   	pop    %rdi
    1c04:	41 5c                	pop    %r12
    1c06:	5d                   	pop    %rbp
    1c07:	c3                   	ret    
    1c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c0f:	00 
    1c10:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1c17:	00 
    1c18:	48 8d 5d f8          	lea    -0x8(%rbp),%rbx
    1c1c:	e8 ff 45 00 00       	call   0x6220
    1c21:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
    1c25:	49 89 d9             	mov    %rbx,%r9
    1c28:	41 b8 10 00 00 00    	mov    $0x10,%r8d
    1c2e:	48 8b 10             	mov    (%rax),%rdx
    1c31:	e8 fa 47 00 00       	call   0x6430
    1c36:	85 c0                	test   %eax,%eax
    1c38:	7e 2e                	jle    0x1c68
    1c3a:	0f b7 55 f6          	movzwl -0xa(%rbp),%edx
    1c3e:	66 41 89 54 24 18    	mov    %dx,0x18(%r12)
    1c44:	41 89 44 24 14       	mov    %eax,0x14(%r12)
    1c49:	e9 30 ff ff ff       	jmp    0x1b7e
    1c4e:	66 90                	xchg   %ax,%ax
    1c50:	4c 89 e2             	mov    %r12,%rdx
    1c53:	b9 2e 00 00 00       	mov    $0x2e,%ecx
    1c58:	e8 83 fb ff ff       	call   0x17e0
    1c5d:	e9 7a ff ff ff       	jmp    0x1bdc
    1c62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1c68:	41 0f b7 54 24 18    	movzwl 0x18(%r12),%edx
    1c6e:	eb d4                	jmp    0x1c44
    1c70:	55                   	push   %rbp
    1c71:	57                   	push   %rdi
    1c72:	56                   	push   %rsi
    1c73:	53                   	push   %rbx
    1c74:	48 83 ec 28          	sub    $0x28,%rsp
    1c78:	41 8b 41 0c          	mov    0xc(%r9),%eax
    1c7c:	89 cd                	mov    %ecx,%ebp
    1c7e:	48 89 d7             	mov    %rdx,%rdi
    1c81:	44 89 c6             	mov    %r8d,%esi
    1c84:	4c 89 cb             	mov    %r9,%rbx
    1c87:	45 85 c0             	test   %r8d,%r8d
    1c8a:	0f 8e 10 02 00 00    	jle    0x1ea0
    1c90:	41 39 c0             	cmp    %eax,%r8d
    1c93:	0f 8e f7 00 00 00    	jle    0x1d90
    1c99:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    1ca0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1ca5:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
    1ca9:	74 4d                	je     0x1cf8
    1cab:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    1cb0:	0f 84 0a 01 00 00    	je     0x1dc0
    1cb6:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
    1cbb:	44 8d 46 02          	lea    0x2(%rsi),%r8d
    1cbf:	4c 0f af c2          	imul   %rdx,%r8
    1cc3:	89 c2                	mov    %eax,%edx
    1cc5:	49 c1 e8 21          	shr    $0x21,%r8
    1cc9:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
    1ccd:	29 c1                	sub    %eax,%ecx
    1ccf:	41 83 f8 01          	cmp    $0x1,%r8d
    1cd3:	75 1b                	jne    0x1cf0
    1cd5:	e9 e6 00 00 00       	jmp    0x1dc0
    1cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ce0:	83 ea 01             	sub    $0x1,%edx
    1ce3:	89 c8                	mov    %ecx,%eax
    1ce5:	01 d0                	add    %edx,%eax
    1ce7:	89 53 0c             	mov    %edx,0xc(%rbx)
    1cea:	0f 84 2a 03 00 00    	je     0x201a
    1cf0:	85 d2                	test   %edx,%edx
    1cf2:	7f ec                	jg     0x1ce0
    1cf4:	0f 1f 40 00          	nopl   0x0(%rax)
    1cf8:	85 ed                	test   %ebp,%ebp
    1cfa:	0f 85 22 01 00 00    	jne    0x1e22
    1d00:	8b 53 08             	mov    0x8(%rbx),%edx
    1d03:	f6 c6 01             	test   $0x1,%dh
    1d06:	0f 85 84 02 00 00    	jne    0x1f90
    1d0c:	83 e2 40             	and    $0x40,%edx
    1d0f:	0f 85 f3 02 00 00    	jne    0x2008
    1d15:	8b 43 0c             	mov    0xc(%rbx),%eax
    1d18:	85 c0                	test   %eax,%eax
    1d1a:	7e 15                	jle    0x1d31
    1d1c:	8b 53 08             	mov    0x8(%rbx),%edx
    1d1f:	81 e2 00 06 00 00    	and    $0x600,%edx
    1d25:	81 fa 00 02 00 00    	cmp    $0x200,%edx
    1d2b:	0f 84 77 02 00 00    	je     0x1fa8
    1d31:	48 8d 6b 20          	lea    0x20(%rbx),%rbp
    1d35:	85 f6                	test   %esi,%esi
    1d37:	0f 8e bb 01 00 00    	jle    0x1ef8
    1d3d:	0f 1f 00             	nopl   (%rax)
    1d40:	0f b6 07             	movzbl (%rdi),%eax
    1d43:	b9 30 00 00 00       	mov    $0x30,%ecx
    1d48:	84 c0                	test   %al,%al
    1d4a:	74 07                	je     0x1d53
    1d4c:	48 83 c7 01          	add    $0x1,%rdi
    1d50:	0f be c8             	movsbl %al,%ecx
    1d53:	48 89 da             	mov    %rbx,%rdx
    1d56:	e8 85 fa ff ff       	call   0x17e0
    1d5b:	83 ee 01             	sub    $0x1,%esi
    1d5e:	0f 84 d4 00 00 00    	je     0x1e38
    1d64:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
    1d68:	74 d6                	je     0x1d40
    1d6a:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    1d6f:	74 cf                	je     0x1d40
    1d71:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    1d77:	3d 55 55 55 55       	cmp    $0x55555555,%eax
    1d7c:	77 c2                	ja     0x1d40
    1d7e:	49 89 d8             	mov    %rbx,%r8
    1d81:	ba 01 00 00 00       	mov    $0x1,%edx
    1d86:	48 89 e9             	mov    %rbp,%rcx
    1d89:	e8 b2 fa ff ff       	call   0x1840
    1d8e:	eb b0                	jmp    0x1d40
    1d90:	41 8b 51 10          	mov    0x10(%r9),%edx
    1d94:	44 29 c0             	sub    %r8d,%eax
    1d97:	39 d0                	cmp    %edx,%eax
    1d99:	0f 8e fa fe ff ff    	jle    0x1c99
    1d9f:	29 d0                	sub    %edx,%eax
    1da1:	89 43 0c             	mov    %eax,0xc(%rbx)
    1da4:	85 d2                	test   %edx,%edx
    1da6:	0f 8e b4 01 00 00    	jle    0x1f60
    1dac:	83 e8 01             	sub    $0x1,%eax
    1daf:	89 43 0c             	mov    %eax,0xc(%rbx)
    1db2:	85 f6                	test   %esi,%esi
    1db4:	7e 0a                	jle    0x1dc0
    1db6:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
    1dba:	0f 85 eb fe ff ff    	jne    0x1cab
    1dc0:	85 c0                	test   %eax,%eax
    1dc2:	0f 8e 30 ff ff ff    	jle    0x1cf8
    1dc8:	85 ed                	test   %ebp,%ebp
    1dca:	0f 85 f8 00 00 00    	jne    0x1ec8
    1dd0:	8b 53 08             	mov    0x8(%rbx),%edx
    1dd3:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
    1dd9:	0f 84 f1 01 00 00    	je     0x1fd0
    1ddf:	83 e8 01             	sub    $0x1,%eax
    1de2:	89 43 0c             	mov    %eax,0xc(%rbx)
    1de5:	0f 84 18 ff ff ff    	je     0x1d03
    1deb:	f6 c6 06             	test   $0x6,%dh
    1dee:	0f 85 0f ff ff ff    	jne    0x1d03
    1df4:	83 e8 01             	sub    $0x1,%eax
    1df7:	89 43 0c             	mov    %eax,0xc(%rbx)
    1dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e00:	48 89 da             	mov    %rbx,%rdx
    1e03:	b9 20 00 00 00       	mov    $0x20,%ecx
    1e08:	e8 d3 f9 ff ff       	call   0x17e0
    1e0d:	8b 43 0c             	mov    0xc(%rbx),%eax
    1e10:	8d 50 ff             	lea    -0x1(%rax),%edx
    1e13:	89 53 0c             	mov    %edx,0xc(%rbx)
    1e16:	85 c0                	test   %eax,%eax
    1e18:	7f e6                	jg     0x1e00
    1e1a:	85 ed                	test   %ebp,%ebp
    1e1c:	0f 84 de fe ff ff    	je     0x1d00
    1e22:	48 89 da             	mov    %rbx,%rdx
    1e25:	b9 2d 00 00 00       	mov    $0x2d,%ecx
    1e2a:	e8 b1 f9 ff ff       	call   0x17e0
    1e2f:	e9 e1 fe ff ff       	jmp    0x1d15
    1e34:	0f 1f 40 00          	nopl   0x0(%rax)
    1e38:	8b 43 10             	mov    0x10(%rbx),%eax
    1e3b:	85 c0                	test   %eax,%eax
    1e3d:	7f 19                	jg     0x1e58
    1e3f:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
    1e43:	75 13                	jne    0x1e58
    1e45:	83 e8 01             	sub    $0x1,%eax
    1e48:	89 43 10             	mov    %eax,0x10(%rbx)
    1e4b:	48 83 c4 28          	add    $0x28,%rsp
    1e4f:	5b                   	pop    %rbx
    1e50:	5e                   	pop    %rsi
    1e51:	5f                   	pop    %rdi
    1e52:	5d                   	pop    %rbp
    1e53:	c3                   	ret    
    1e54:	0f 1f 40 00          	nopl   0x0(%rax)
    1e58:	48 89 d9             	mov    %rbx,%rcx
    1e5b:	e8 00 fd ff ff       	call   0x1b60
    1e60:	eb 21                	jmp    0x1e83
    1e62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e68:	0f b6 07             	movzbl (%rdi),%eax
    1e6b:	b9 30 00 00 00       	mov    $0x30,%ecx
    1e70:	84 c0                	test   %al,%al
    1e72:	74 07                	je     0x1e7b
    1e74:	48 83 c7 01          	add    $0x1,%rdi
    1e78:	0f be c8             	movsbl %al,%ecx
    1e7b:	48 89 da             	mov    %rbx,%rdx
    1e7e:	e8 5d f9 ff ff       	call   0x17e0
    1e83:	8b 43 10             	mov    0x10(%rbx),%eax
    1e86:	8d 50 ff             	lea    -0x1(%rax),%edx
    1e89:	89 53 10             	mov    %edx,0x10(%rbx)
    1e8c:	85 c0                	test   %eax,%eax
    1e8e:	7f d8                	jg     0x1e68
    1e90:	48 83 c4 28          	add    $0x28,%rsp
    1e94:	5b                   	pop    %rbx
    1e95:	5e                   	pop    %rsi
    1e96:	5f                   	pop    %rdi
    1e97:	5d                   	pop    %rbp
    1e98:	c3                   	ret    
    1e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ea0:	85 c0                	test   %eax,%eax
    1ea2:	0f 8e 48 01 00 00    	jle    0x1ff0
    1ea8:	83 e8 01             	sub    $0x1,%eax
    1eab:	8b 53 10             	mov    0x10(%rbx),%edx
    1eae:	39 d0                	cmp    %edx,%eax
    1eb0:	0f 8f e9 fe ff ff    	jg     0x1d9f
    1eb6:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    1ebd:	e9 36 fe ff ff       	jmp    0x1cf8
    1ec2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ec8:	83 e8 01             	sub    $0x1,%eax
    1ecb:	89 43 0c             	mov    %eax,0xc(%rbx)
    1ece:	0f 84 4e ff ff ff    	je     0x1e22
    1ed4:	f7 43 08 00 06 00 00 	testl  $0x600,0x8(%rbx)
    1edb:	0f 84 13 ff ff ff    	je     0x1df4
    1ee1:	48 89 da             	mov    %rbx,%rdx
    1ee4:	b9 2d 00 00 00       	mov    $0x2d,%ecx
    1ee9:	e8 f2 f8 ff ff       	call   0x17e0
    1eee:	e9 22 fe ff ff       	jmp    0x1d15
    1ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1ef8:	48 89 da             	mov    %rbx,%rdx
    1efb:	b9 30 00 00 00       	mov    $0x30,%ecx
    1f00:	e8 db f8 ff ff       	call   0x17e0
    1f05:	8b 43 10             	mov    0x10(%rbx),%eax
    1f08:	85 c0                	test   %eax,%eax
    1f0a:	7f 14                	jg     0x1f20
    1f0c:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
    1f10:	75 0e                	jne    0x1f20
    1f12:	85 f6                	test   %esi,%esi
    1f14:	75 1d                	jne    0x1f33
    1f16:	e9 2a ff ff ff       	jmp    0x1e45
    1f1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1f20:	48 89 d9             	mov    %rbx,%rcx
    1f23:	e8 38 fc ff ff       	call   0x1b60
    1f28:	85 f6                	test   %esi,%esi
    1f2a:	0f 84 53 ff ff ff    	je     0x1e83
    1f30:	8b 43 10             	mov    0x10(%rbx),%eax
    1f33:	01 f0                	add    %esi,%eax
    1f35:	89 43 10             	mov    %eax,0x10(%rbx)
    1f38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1f3f:	00 
    1f40:	48 89 da             	mov    %rbx,%rdx
    1f43:	b9 30 00 00 00       	mov    $0x30,%ecx
    1f48:	e8 93 f8 ff ff       	call   0x17e0
    1f4d:	83 c6 01             	add    $0x1,%esi
    1f50:	75 ee                	jne    0x1f40
    1f52:	e9 2c ff ff ff       	jmp    0x1e83
    1f57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1f5e:	00 00 
    1f60:	8b 53 08             	mov    0x8(%rbx),%edx
    1f63:	f6 c6 08             	test   $0x8,%dh
    1f66:	0f 85 40 fe ff ff    	jne    0x1dac
    1f6c:	85 f6                	test   %esi,%esi
    1f6e:	0f 8e 54 fe ff ff    	jle    0x1dc8
    1f74:	80 e6 10             	and    $0x10,%dh
    1f77:	0f 84 4b fe ff ff    	je     0x1dc8
    1f7d:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    1f82:	0f 84 40 fe ff ff    	je     0x1dc8
    1f88:	e9 29 fd ff ff       	jmp    0x1cb6
    1f8d:	0f 1f 00             	nopl   (%rax)
    1f90:	48 89 da             	mov    %rbx,%rdx
    1f93:	b9 2b 00 00 00       	mov    $0x2b,%ecx
    1f98:	e8 43 f8 ff ff       	call   0x17e0
    1f9d:	e9 73 fd ff ff       	jmp    0x1d15
    1fa2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1fa8:	83 e8 01             	sub    $0x1,%eax
    1fab:	89 43 0c             	mov    %eax,0xc(%rbx)
    1fae:	66 90                	xchg   %ax,%ax
    1fb0:	48 89 da             	mov    %rbx,%rdx
    1fb3:	b9 30 00 00 00       	mov    $0x30,%ecx
    1fb8:	e8 23 f8 ff ff       	call   0x17e0
    1fbd:	8b 43 0c             	mov    0xc(%rbx),%eax
    1fc0:	8d 50 ff             	lea    -0x1(%rax),%edx
    1fc3:	89 53 0c             	mov    %edx,0xc(%rbx)
    1fc6:	85 c0                	test   %eax,%eax
    1fc8:	7f e6                	jg     0x1fb0
    1fca:	e9 62 fd ff ff       	jmp    0x1d31
    1fcf:	90                   	nop
    1fd0:	f6 c6 06             	test   $0x6,%dh
    1fd3:	0f 85 2a fd ff ff    	jne    0x1d03
    1fd9:	8b 43 0c             	mov    0xc(%rbx),%eax
    1fdc:	8d 48 ff             	lea    -0x1(%rax),%ecx
    1fdf:	89 4b 0c             	mov    %ecx,0xc(%rbx)
    1fe2:	85 c0                	test   %eax,%eax
    1fe4:	0f 8e 19 fd ff ff    	jle    0x1d03
    1fea:	e9 11 fe ff ff       	jmp    0x1e00
    1fef:	90                   	nop
    1ff0:	0f 84 b5 fe ff ff    	je     0x1eab
    1ff6:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    1ffd:	e9 f6 fc ff ff       	jmp    0x1cf8
    2002:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2008:	48 89 da             	mov    %rbx,%rdx
    200b:	b9 20 00 00 00       	mov    $0x20,%ecx
    2010:	e8 cb f7 ff ff       	call   0x17e0
    2015:	e9 fb fc ff ff       	jmp    0x1d15
    201a:	89 d0                	mov    %edx,%eax
    201c:	e9 9f fd ff ff       	jmp    0x1dc0
    2021:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2028:	00 00 00 00 
    202c:	0f 1f 40 00          	nopl   0x0(%rax)
    2030:	41 54                	push   %r12
    2032:	53                   	push   %rbx
    2033:	48 83 ec 68          	sub    $0x68,%rsp
    2037:	44 8b 42 10          	mov    0x10(%rdx),%r8d
    203b:	db 29                	fldt   (%rcx)
    203d:	48 89 d3             	mov    %rdx,%rbx
    2040:	45 85 c0             	test   %r8d,%r8d
    2043:	79 0d                	jns    0x2052
    2045:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
    204c:	41 b8 06 00 00 00    	mov    $0x6,%r8d
    2052:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    2057:	db 7c 24 50          	fstpt  0x50(%rsp)
    205b:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
    2061:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    2066:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
    206b:	b9 03 00 00 00       	mov    $0x3,%ecx
    2070:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    2075:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    207a:	e8 51 f6 ff ff       	call   0x16d0
    207f:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
    2084:	49 89 c4             	mov    %rax,%r12
    2087:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
    208e:	74 48                	je     0x20d8
    2090:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    2094:	49 89 d9             	mov    %rbx,%r9
    2097:	48 89 c2             	mov    %rax,%rdx
    209a:	e8 d1 fb ff ff       	call   0x1c70
    209f:	eb 14                	jmp    0x20b5
    20a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    20a8:	48 89 da             	mov    %rbx,%rdx
    20ab:	b9 20 00 00 00       	mov    $0x20,%ecx
    20b0:	e8 2b f7 ff ff       	call   0x17e0
    20b5:	8b 43 0c             	mov    0xc(%rbx),%eax
    20b8:	8d 50 ff             	lea    -0x1(%rax),%edx
    20bb:	89 53 0c             	mov    %edx,0xc(%rbx)
    20be:	85 c0                	test   %eax,%eax
    20c0:	7f e6                	jg     0x20a8
    20c2:	4c 89 e1             	mov    %r12,%rcx
    20c5:	e8 f6 1a 00 00       	call   0x3bc0
    20ca:	90                   	nop
    20cb:	48 83 c4 68          	add    $0x68,%rsp
    20cf:	5b                   	pop    %rbx
    20d0:	41 5c                	pop    %r12
    20d2:	c3                   	ret    
    20d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    20d8:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    20dc:	49 89 d8             	mov    %rbx,%r8
    20df:	48 89 c2             	mov    %rax,%rdx
    20e2:	e8 c9 f9 ff ff       	call   0x1ab0
    20e7:	4c 89 e1             	mov    %r12,%rcx
    20ea:	e8 d1 1a 00 00       	call   0x3bc0
    20ef:	90                   	nop
    20f0:	48 83 c4 68          	add    $0x68,%rsp
    20f4:	5b                   	pop    %rbx
    20f5:	41 5c                	pop    %r12
    20f7:	c3                   	ret    
    20f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    20ff:	00 
    2100:	55                   	push   %rbp
    2101:	41 57                	push   %r15
    2103:	41 56                	push   %r14
    2105:	41 55                	push   %r13
    2107:	41 54                	push   %r12
    2109:	57                   	push   %rdi
    210a:	56                   	push   %rsi
    210b:	53                   	push   %rbx
    210c:	48 83 ec 28          	sub    $0x28,%rsp
    2110:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
    2117:	00 
    2118:	b8 00 00 00 00       	mov    $0x0,%eax
    211d:	44 8b 6a 10          	mov    0x10(%rdx),%r13d
    2121:	44 8b 52 08          	mov    0x8(%rdx),%r10d
    2125:	45 85 ed             	test   %r13d,%r13d
    2128:	41 0f 49 c5          	cmovns %r13d,%eax
    212c:	48 89 d3             	mov    %rdx,%rbx
    212f:	83 c0 17             	add    $0x17,%eax
    2132:	41 f7 c2 00 10 00 00 	test   $0x1000,%r10d
    2139:	74 0b                	je     0x2146
    213b:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
    2140:	0f 85 f2 01 00 00    	jne    0x2338
    2146:	44 8b 5b 0c          	mov    0xc(%rbx),%r11d
    214a:	41 39 c3             	cmp    %eax,%r11d
    214d:	41 0f 4d c3          	cmovge %r11d,%eax
    2151:	48 98                	cltq   
    2153:	48 83 c0 0f          	add    $0xf,%rax
    2157:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    215b:	e8 e0 f4 ff ff       	call   0x1640
    2160:	48 29 c4             	sub    %rax,%rsp
    2163:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2168:	41 f6 c2 80          	test   $0x80,%r10b
    216c:	74 11                	je     0x217f
    216e:	48 85 c9             	test   %rcx,%rcx
    2171:	0f 88 f9 01 00 00    	js     0x2370
    2177:	41 80 e2 7f          	and    $0x7f,%r10b
    217b:	44 89 53 08          	mov    %r10d,0x8(%rbx)
    217f:	48 85 c9             	test   %rcx,%rcx
    2182:	0f 84 c8 02 00 00    	je     0x2450
    2188:	49 be 03 00 00 00 00 	movabs $0x8000000000000003,%r14
    218f:	00 00 80 
    2192:	44 89 d6             	mov    %r10d,%esi
    2195:	49 89 f8             	mov    %rdi,%r8
    2198:	49 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r9
    219f:	cc cc cc 
    21a2:	81 e6 00 10 00 00    	and    $0x1000,%esi
    21a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    21af:	00 
    21b0:	4d 8d 60 01          	lea    0x1(%r8),%r12
    21b4:	4c 39 c7             	cmp    %r8,%rdi
    21b7:	74 2f                	je     0x21e8
    21b9:	85 f6                	test   %esi,%esi
    21bb:	74 2b                	je     0x21e8
    21bd:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    21c2:	74 24                	je     0x21e8
    21c4:	4c 89 c0             	mov    %r8,%rax
    21c7:	48 29 f8             	sub    %rdi,%rax
    21ca:	4c 21 f0             	and    %r14,%rax
    21cd:	48 83 f8 03          	cmp    $0x3,%rax
    21d1:	75 15                	jne    0x21e8
    21d3:	49 8d 40 02          	lea    0x2(%r8),%rax
    21d7:	41 c6 00 2c          	movb   $0x2c,(%r8)
    21db:	4d 89 e0             	mov    %r12,%r8
    21de:	49 89 c4             	mov    %rax,%r12
    21e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    21e8:	48 89 c8             	mov    %rcx,%rax
    21eb:	49 89 cf             	mov    %rcx,%r15
    21ee:	49 f7 e1             	mul    %r9
    21f1:	48 c1 ea 03          	shr    $0x3,%rdx
    21f5:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    21f9:	48 01 c0             	add    %rax,%rax
    21fc:	49 29 c7             	sub    %rax,%r15
    21ff:	4c 89 f8             	mov    %r15,%rax
    2202:	83 c0 30             	add    $0x30,%eax
    2205:	41 88 00             	mov    %al,(%r8)
    2208:	48 83 f9 09          	cmp    $0x9,%rcx
    220c:	76 12                	jbe    0x2220
    220e:	48 89 d1             	mov    %rdx,%rcx
    2211:	4d 89 e0             	mov    %r12,%r8
    2214:	eb 9a                	jmp    0x21b0
    2216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    221d:	00 00 00 
    2220:	45 85 ed             	test   %r13d,%r13d
    2223:	0f 8e 57 01 00 00    	jle    0x2380
    2229:	4c 89 e0             	mov    %r12,%rax
    222c:	44 89 ea             	mov    %r13d,%edx
    222f:	48 29 f8             	sub    %rdi,%rax
    2232:	29 c2                	sub    %eax,%edx
    2234:	89 d0                	mov    %edx,%eax
    2236:	85 d2                	test   %edx,%edx
    2238:	7e 2b                	jle    0x2265
    223a:	8d 48 ff             	lea    -0x1(%rax),%ecx
    223d:	8d 42 ff             	lea    -0x1(%rdx),%eax
    2240:	49 8d 54 04 01       	lea    0x1(%r12,%rax,1),%rdx
    2245:	4c 89 e0             	mov    %r12,%rax
    2248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    224f:	00 
    2250:	48 83 c0 01          	add    $0x1,%rax
    2254:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    2258:	48 39 d0             	cmp    %rdx,%rax
    225b:	75 f3                	jne    0x2250
    225d:	48 63 c1             	movslq %ecx,%rax
    2260:	4d 8d 64 04 01       	lea    0x1(%r12,%rax,1),%r12
    2265:	4c 39 e7             	cmp    %r12,%rdi
    2268:	0f 84 2a 01 00 00    	je     0x2398
    226e:	45 85 db             	test   %r11d,%r11d
    2271:	7e 3d                	jle    0x22b0
    2273:	4c 89 e0             	mov    %r12,%rax
    2276:	48 29 f8             	sub    %rdi,%rax
    2279:	41 29 c3             	sub    %eax,%r11d
    227c:	44 89 5b 0c          	mov    %r11d,0xc(%rbx)
    2280:	45 85 db             	test   %r11d,%r11d
    2283:	7e 2b                	jle    0x22b0
    2285:	41 f7 c2 c0 01 00 00 	test   $0x1c0,%r10d
    228c:	0f 85 1e 01 00 00    	jne    0x23b0
    2292:	45 85 ed             	test   %r13d,%r13d
    2295:	0f 88 26 01 00 00    	js     0x23c1
    229b:	41 f7 c2 00 04 00 00 	test   $0x400,%r10d
    22a2:	0f 84 68 01 00 00    	je     0x2410
    22a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    22af:	00 
    22b0:	41 f6 c2 80          	test   $0x80,%r10b
    22b4:	74 6a                	je     0x2320
    22b6:	41 c6 04 24 2d       	movb   $0x2d,(%r12)
    22bb:	49 8d 74 24 01       	lea    0x1(%r12),%rsi
    22c0:	48 39 f7             	cmp    %rsi,%rdi
    22c3:	73 38                	jae    0x22fd
    22c5:	0f 1f 00             	nopl   (%rax)
    22c8:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
    22cc:	48 83 ee 01          	sub    $0x1,%rsi
    22d0:	48 89 da             	mov    %rbx,%rdx
    22d3:	e8 08 f5 ff ff       	call   0x17e0
    22d8:	48 39 f7             	cmp    %rsi,%rdi
    22db:	75 eb                	jne    0x22c8
    22dd:	8b 43 0c             	mov    0xc(%rbx),%eax
    22e0:	8d 50 ff             	lea    -0x1(%rax),%edx
    22e3:	89 53 0c             	mov    %edx,0xc(%rbx)
    22e6:	85 c0                	test   %eax,%eax
    22e8:	7e 20                	jle    0x230a
    22ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    22f0:	48 89 da             	mov    %rbx,%rdx
    22f3:	b9 20 00 00 00       	mov    $0x20,%ecx
    22f8:	e8 e3 f4 ff ff       	call   0x17e0
    22fd:	8b 43 0c             	mov    0xc(%rbx),%eax
    2300:	8d 50 ff             	lea    -0x1(%rax),%edx
    2303:	89 53 0c             	mov    %edx,0xc(%rbx)
    2306:	85 c0                	test   %eax,%eax
    2308:	7f e6                	jg     0x22f0
    230a:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
    230e:	5b                   	pop    %rbx
    230f:	5e                   	pop    %rsi
    2310:	5f                   	pop    %rdi
    2311:	41 5c                	pop    %r12
    2313:	41 5d                	pop    %r13
    2315:	41 5e                	pop    %r14
    2317:	41 5f                	pop    %r15
    2319:	5d                   	pop    %rbp
    231a:	c3                   	ret    
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2320:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
    2327:	74 27                	je     0x2350
    2329:	41 c6 04 24 2b       	movb   $0x2b,(%r12)
    232e:	49 8d 74 24 01       	lea    0x1(%r12),%rsi
    2333:	eb 8b                	jmp    0x22c0
    2335:	0f 1f 00             	nopl   (%rax)
    2338:	89 c2                	mov    %eax,%edx
    233a:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
    2340:	49 0f af d0          	imul   %r8,%rdx
    2344:	48 c1 ea 21          	shr    $0x21,%rdx
    2348:	01 d0                	add    %edx,%eax
    234a:	e9 f7 fd ff ff       	jmp    0x2146
    234f:	90                   	nop
    2350:	41 83 e2 40          	and    $0x40,%r10d
    2354:	4c 89 e6             	mov    %r12,%rsi
    2357:	0f 84 63 ff ff ff    	je     0x22c0
    235d:	41 c6 04 24 20       	movb   $0x20,(%r12)
    2362:	48 83 c6 01          	add    $0x1,%rsi
    2366:	e9 55 ff ff ff       	jmp    0x22c0
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2370:	48 f7 d9             	neg    %rcx
    2373:	e9 10 fe ff ff       	jmp    0x2188
    2378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    237f:	00 
    2380:	4c 39 e7             	cmp    %r12,%rdi
    2383:	0f 85 e5 fe ff ff    	jne    0x226e
    2389:	45 85 ed             	test   %r13d,%r13d
    238c:	0f 84 dc fe ff ff    	je     0x226e
    2392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2398:	41 c6 04 24 30       	movb   $0x30,(%r12)
    239d:	49 83 c4 01          	add    $0x1,%r12
    23a1:	e9 c8 fe ff ff       	jmp    0x226e
    23a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    23ad:	00 00 00 
    23b0:	41 83 eb 01          	sub    $0x1,%r11d
    23b4:	44 89 5b 0c          	mov    %r11d,0xc(%rbx)
    23b8:	45 85 ed             	test   %r13d,%r13d
    23bb:	0f 89 da fe ff ff    	jns    0x229b
    23c1:	44 89 d0             	mov    %r10d,%eax
    23c4:	25 00 06 00 00       	and    $0x600,%eax
    23c9:	3d 00 02 00 00       	cmp    $0x200,%eax
    23ce:	0f 85 c7 fe ff ff    	jne    0x229b
    23d4:	8b 53 0c             	mov    0xc(%rbx),%edx
    23d7:	8d 42 ff             	lea    -0x1(%rdx),%eax
    23da:	89 43 0c             	mov    %eax,0xc(%rbx)
    23dd:	85 d2                	test   %edx,%edx
    23df:	0f 8e cb fe ff ff    	jle    0x22b0
    23e5:	89 c1                	mov    %eax,%ecx
    23e7:	4c 89 e0             	mov    %r12,%rax
    23ea:	49 8d 54 0c 01       	lea    0x1(%r12,%rcx,1),%rdx
    23ef:	90                   	nop
    23f0:	48 83 c0 01          	add    $0x1,%rax
    23f4:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    23f8:	48 39 d0             	cmp    %rdx,%rax
    23fb:	75 f3                	jne    0x23f0
    23fd:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    2404:	4d 8d 64 0c 01       	lea    0x1(%r12,%rcx,1),%r12
    2409:	e9 a2 fe ff ff       	jmp    0x22b0
    240e:	66 90                	xchg   %ax,%ax
    2410:	8b 43 0c             	mov    0xc(%rbx),%eax
    2413:	8d 50 ff             	lea    -0x1(%rax),%edx
    2416:	89 53 0c             	mov    %edx,0xc(%rbx)
    2419:	85 c0                	test   %eax,%eax
    241b:	0f 8e 8f fe ff ff    	jle    0x22b0
    2421:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2428:	48 89 da             	mov    %rbx,%rdx
    242b:	b9 20 00 00 00       	mov    $0x20,%ecx
    2430:	e8 ab f3 ff ff       	call   0x17e0
    2435:	8b 43 0c             	mov    0xc(%rbx),%eax
    2438:	8d 50 ff             	lea    -0x1(%rax),%edx
    243b:	89 53 0c             	mov    %edx,0xc(%rbx)
    243e:	85 c0                	test   %eax,%eax
    2440:	7f e6                	jg     0x2428
    2442:	44 8b 53 08          	mov    0x8(%rbx),%r10d
    2446:	e9 65 fe ff ff       	jmp    0x22b0
    244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2450:	45 85 ed             	test   %r13d,%r13d
    2453:	7e 0e                	jle    0x2463
    2455:	44 89 ea             	mov    %r13d,%edx
    2458:	49 89 fc             	mov    %rdi,%r12
    245b:	44 89 e8             	mov    %r13d,%eax
    245e:	e9 d7 fd ff ff       	jmp    0x223a
    2463:	49 89 fc             	mov    %rdi,%r12
    2466:	e9 1e ff ff ff       	jmp    0x2389
    246b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2470:	41 55                	push   %r13
    2472:	41 54                	push   %r12
    2474:	53                   	push   %rbx
    2475:	48 83 ec 20          	sub    $0x20,%rsp
    2479:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    247f:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    2483:	4d 89 cc             	mov    %r9,%r12
    2486:	4c 63 e8             	movslq %eax,%r13
    2489:	c1 f8 1f             	sar    $0x1f,%eax
    248c:	4d 69 c5 67 66 66 66 	imul   $0x66666667,%r13,%r8
    2493:	49 c1 f8 22          	sar    $0x22,%r8
    2497:	41 29 c0             	sub    %eax,%r8d
    249a:	74 22                	je     0x24be
    249c:	0f 1f 40 00          	nopl   0x0(%rax)
    24a0:	49 63 c0             	movslq %r8d,%rax
    24a3:	41 c1 f8 1f          	sar    $0x1f,%r8d
    24a7:	41 83 c2 01          	add    $0x1,%r10d
    24ab:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    24b2:	48 c1 f8 22          	sar    $0x22,%rax
    24b6:	44 29 c0             	sub    %r8d,%eax
    24b9:	41 89 c0             	mov    %eax,%r8d
    24bc:	75 e2                	jne    0x24a0
    24be:	41 8b 5c 24 2c       	mov    0x2c(%r12),%ebx
    24c3:	83 fb ff             	cmp    $0xffffffff,%ebx
    24c6:	75 0e                	jne    0x24d6
    24c8:	41 c7 44 24 2c 02 00 	movl   $0x2,0x2c(%r12)
    24cf:	00 00 
    24d1:	bb 02 00 00 00       	mov    $0x2,%ebx
    24d6:	41 39 da             	cmp    %ebx,%r10d
    24d9:	45 8b 4c 24 0c       	mov    0xc(%r12),%r9d
    24de:	41 0f 4d da          	cmovge %r10d,%ebx
    24e2:	44 89 c8             	mov    %r9d,%eax
    24e5:	44 8d 43 02          	lea    0x2(%rbx),%r8d
    24e9:	44 29 c0             	sub    %r8d,%eax
    24ec:	45 39 c1             	cmp    %r8d,%r9d
    24ef:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    24f5:	4d 89 e1             	mov    %r12,%r9
    24f8:	41 0f 4e c0          	cmovle %r8d,%eax
    24fc:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    2502:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
    2507:	e8 64 f7 ff ff       	call   0x1c70
    250c:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    2511:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
    2516:	4c 89 e2             	mov    %r12,%rdx
    2519:	41 89 44 24 10       	mov    %eax,0x10(%r12)
    251e:	89 c8                	mov    %ecx,%eax
    2520:	83 e1 20             	and    $0x20,%ecx
    2523:	0d c0 01 00 00       	or     $0x1c0,%eax
    2528:	83 c9 45             	or     $0x45,%ecx
    252b:	41 89 44 24 08       	mov    %eax,0x8(%r12)
    2530:	e8 ab f2 ff ff       	call   0x17e0
    2535:	44 8d 53 01          	lea    0x1(%rbx),%r10d
    2539:	4c 89 e2             	mov    %r12,%rdx
    253c:	4c 89 e9             	mov    %r13,%rcx
    253f:	45 01 54 24 0c       	add    %r10d,0xc(%r12)
    2544:	48 83 c4 20          	add    $0x20,%rsp
    2548:	5b                   	pop    %rbx
    2549:	41 5c                	pop    %r12
    254b:	41 5d                	pop    %r13
    254d:	e9 ae fb ff ff       	jmp    0x2100
    2552:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2559:	00 00 00 00 
    255d:	0f 1f 00             	nopl   (%rax)
    2560:	41 54                	push   %r12
    2562:	53                   	push   %rbx
    2563:	48 83 ec 68          	sub    $0x68,%rsp
    2567:	44 8b 42 10          	mov    0x10(%rdx),%r8d
    256b:	db 29                	fldt   (%rcx)
    256d:	48 89 d3             	mov    %rdx,%rbx
    2570:	45 85 c0             	test   %r8d,%r8d
    2573:	78 6b                	js     0x25e0
    2575:	41 83 c0 01          	add    $0x1,%r8d
    2579:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    257e:	db 7c 24 50          	fstpt  0x50(%rsp)
    2582:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
    2588:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    258d:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
    2592:	b9 02 00 00 00       	mov    $0x2,%ecx
    2597:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    259c:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    25a1:	e8 2a f1 ff ff       	call   0x16d0
    25a6:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
    25ab:	49 89 c4             	mov    %rax,%r12
    25ae:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
    25b5:	74 39                	je     0x25f0
    25b7:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    25bb:	49 89 d9             	mov    %rbx,%r9
    25be:	48 89 c2             	mov    %rax,%rdx
    25c1:	e8 aa fe ff ff       	call   0x2470
    25c6:	4c 89 e1             	mov    %r12,%rcx
    25c9:	e8 f2 15 00 00       	call   0x3bc0
    25ce:	90                   	nop
    25cf:	48 83 c4 68          	add    $0x68,%rsp
    25d3:	5b                   	pop    %rbx
    25d4:	41 5c                	pop    %r12
    25d6:	c3                   	ret    
    25d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    25de:	00 00 
    25e0:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
    25e7:	41 b8 07 00 00 00    	mov    $0x7,%r8d
    25ed:	eb 8a                	jmp    0x2579
    25ef:	90                   	nop
    25f0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    25f4:	49 89 d8             	mov    %rbx,%r8
    25f7:	48 89 c2             	mov    %rax,%rdx
    25fa:	e8 b1 f4 ff ff       	call   0x1ab0
    25ff:	4c 89 e1             	mov    %r12,%rcx
    2602:	e8 b9 15 00 00       	call   0x3bc0
    2607:	90                   	nop
    2608:	48 83 c4 68          	add    $0x68,%rsp
    260c:	5b                   	pop    %rbx
    260d:	41 5c                	pop    %r12
    260f:	c3                   	ret    
    2610:	41 54                	push   %r12
    2612:	56                   	push   %rsi
    2613:	53                   	push   %rbx
    2614:	48 83 ec 60          	sub    $0x60,%rsp
    2618:	44 8b 42 10          	mov    0x10(%rdx),%r8d
    261c:	db 29                	fldt   (%rcx)
    261e:	48 89 d3             	mov    %rdx,%rbx
    2621:	45 85 c0             	test   %r8d,%r8d
    2624:	0f 88 fe 00 00 00    	js     0x2728
    262a:	0f 84 e0 00 00 00    	je     0x2710
    2630:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    2635:	db 7c 24 50          	fstpt  0x50(%rsp)
    2639:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
    263f:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    2644:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
    2649:	b9 02 00 00 00       	mov    $0x2,%ecx
    264e:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    2653:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    2658:	e8 73 f0 ff ff       	call   0x16d0
    265d:	8b 74 24 4c          	mov    0x4c(%rsp),%esi
    2661:	49 89 c4             	mov    %rax,%r12
    2664:	81 fe 00 80 ff ff    	cmp    $0xffff8000,%esi
    266a:	0f 84 d0 00 00 00    	je     0x2740
    2670:	8b 43 08             	mov    0x8(%rbx),%eax
    2673:	25 00 08 00 00       	and    $0x800,%eax
    2678:	83 fe fd             	cmp    $0xfffffffd,%esi
    267b:	7c 4b                	jl     0x26c8
    267d:	8b 53 10             	mov    0x10(%rbx),%edx
    2680:	39 d6                	cmp    %edx,%esi
    2682:	7f 44                	jg     0x26c8
    2684:	85 c0                	test   %eax,%eax
    2686:	0f 84 cc 00 00 00    	je     0x2758
    268c:	29 f2                	sub    %esi,%edx
    268e:	89 53 10             	mov    %edx,0x10(%rbx)
    2691:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    2695:	49 89 d9             	mov    %rbx,%r9
    2698:	41 89 f0             	mov    %esi,%r8d
    269b:	4c 89 e2             	mov    %r12,%rdx
    269e:	e8 cd f5 ff ff       	call   0x1c70
    26a3:	eb 10                	jmp    0x26b5
    26a5:	0f 1f 00             	nopl   (%rax)
    26a8:	48 89 da             	mov    %rbx,%rdx
    26ab:	b9 20 00 00 00       	mov    $0x20,%ecx
    26b0:	e8 2b f1 ff ff       	call   0x17e0
    26b5:	8b 43 0c             	mov    0xc(%rbx),%eax
    26b8:	8d 50 ff             	lea    -0x1(%rax),%edx
    26bb:	89 53 0c             	mov    %edx,0xc(%rbx)
    26be:	85 c0                	test   %eax,%eax
    26c0:	7f e6                	jg     0x26a8
    26c2:	eb 28                	jmp    0x26ec
    26c4:	0f 1f 40 00          	nopl   0x0(%rax)
    26c8:	85 c0                	test   %eax,%eax
    26ca:	75 34                	jne    0x2700
    26cc:	4c 89 e1             	mov    %r12,%rcx
    26cf:	e8 24 3b 00 00       	call   0x61f8
    26d4:	83 e8 01             	sub    $0x1,%eax
    26d7:	89 43 10             	mov    %eax,0x10(%rbx)
    26da:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    26de:	49 89 d9             	mov    %rbx,%r9
    26e1:	41 89 f0             	mov    %esi,%r8d
    26e4:	4c 89 e2             	mov    %r12,%rdx
    26e7:	e8 84 fd ff ff       	call   0x2470
    26ec:	4c 89 e1             	mov    %r12,%rcx
    26ef:	e8 cc 14 00 00       	call   0x3bc0
    26f4:	90                   	nop
    26f5:	48 83 c4 60          	add    $0x60,%rsp
    26f9:	5b                   	pop    %rbx
    26fa:	5e                   	pop    %rsi
    26fb:	41 5c                	pop    %r12
    26fd:	c3                   	ret    
    26fe:	66 90                	xchg   %ax,%ax
    2700:	8b 43 10             	mov    0x10(%rbx),%eax
    2703:	83 e8 01             	sub    $0x1,%eax
    2706:	eb cf                	jmp    0x26d7
    2708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    270f:	00 
    2710:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
    2717:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    271d:	e9 0e ff ff ff       	jmp    0x2630
    2722:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2728:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
    272f:	41 b8 06 00 00 00    	mov    $0x6,%r8d
    2735:	e9 f6 fe ff ff       	jmp    0x2630
    273a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2740:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    2744:	49 89 d8             	mov    %rbx,%r8
    2747:	48 89 c2             	mov    %rax,%rdx
    274a:	e8 61 f3 ff ff       	call   0x1ab0
    274f:	eb 9b                	jmp    0x26ec
    2751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2758:	4c 89 e1             	mov    %r12,%rcx
    275b:	e8 98 3a 00 00       	call   0x61f8
    2760:	29 f0                	sub    %esi,%eax
    2762:	89 43 10             	mov    %eax,0x10(%rbx)
    2765:	0f 89 26 ff ff ff    	jns    0x2691
    276b:	8b 53 0c             	mov    0xc(%rbx),%edx
    276e:	85 d2                	test   %edx,%edx
    2770:	0f 8e 1b ff ff ff    	jle    0x2691
    2776:	01 d0                	add    %edx,%eax
    2778:	89 43 0c             	mov    %eax,0xc(%rbx)
    277b:	e9 11 ff ff ff       	jmp    0x2691
    2780:	55                   	push   %rbp
    2781:	41 57                	push   %r15
    2783:	41 56                	push   %r14
    2785:	41 55                	push   %r13
    2787:	41 54                	push   %r12
    2789:	57                   	push   %rdi
    278a:	56                   	push   %rsi
    278b:	53                   	push   %rbx
    278c:	48 83 ec 28          	sub    $0x28,%rsp
    2790:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
    2797:	00 
    2798:	41 89 ca             	mov    %ecx,%r10d
    279b:	4c 89 c6             	mov    %r8,%rsi
    279e:	83 f9 6f             	cmp    $0x6f,%ecx
    27a1:	0f 84 81 02 00 00    	je     0x2a28
    27a7:	45 8b 58 10          	mov    0x10(%r8),%r11d
    27ab:	b8 00 00 00 00       	mov    $0x0,%eax
    27b0:	45 8b 60 08          	mov    0x8(%r8),%r12d
    27b4:	45 85 db             	test   %r11d,%r11d
    27b7:	41 0f 49 c3          	cmovns %r11d,%eax
    27bb:	83 c0 12             	add    $0x12,%eax
    27be:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
    27c5:	0f 85 55 01 00 00    	jne    0x2920
    27cb:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    27cf:	41 39 c1             	cmp    %eax,%r9d
    27d2:	41 0f 4d c1          	cmovge %r9d,%eax
    27d6:	48 98                	cltq   
    27d8:	48 83 c0 0f          	add    $0xf,%rax
    27dc:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    27e0:	e8 5b ee ff ff       	call   0x1640
    27e5:	b9 04 00 00 00       	mov    $0x4,%ecx
    27ea:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
    27f0:	48 29 c4             	sub    %rax,%rsp
    27f3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    27f8:	48 89 fb             	mov    %rdi,%rbx
    27fb:	48 85 d2             	test   %rdx,%rdx
    27fe:	0f 84 ac 02 00 00    	je     0x2ab0
    2804:	45 89 d5             	mov    %r10d,%r13d
    2807:	41 83 e5 20          	and    $0x20,%r13d
    280b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2810:	44 89 c0             	mov    %r8d,%eax
    2813:	48 83 c3 01          	add    $0x1,%rbx
    2817:	21 d0                	and    %edx,%eax
    2819:	44 8d 70 30          	lea    0x30(%rax),%r14d
    281d:	83 c0 37             	add    $0x37,%eax
    2820:	44 09 e8             	or     %r13d,%eax
    2823:	45 89 f7             	mov    %r14d,%r15d
    2826:	41 80 fe 3a          	cmp    $0x3a,%r14b
    282a:	41 0f 42 c7          	cmovb  %r15d,%eax
    282e:	48 d3 ea             	shr    %cl,%rdx
    2831:	88 43 ff             	mov    %al,-0x1(%rbx)
    2834:	48 85 d2             	test   %rdx,%rdx
    2837:	75 d7                	jne    0x2810
    2839:	48 39 fb             	cmp    %rdi,%rbx
    283c:	0f 84 6e 02 00 00    	je     0x2ab0
    2842:	45 85 db             	test   %r11d,%r11d
    2845:	0f 8e 15 01 00 00    	jle    0x2960
    284b:	48 89 d8             	mov    %rbx,%rax
    284e:	44 89 d9             	mov    %r11d,%ecx
    2851:	48 29 f8             	sub    %rdi,%rax
    2854:	29 c1                	sub    %eax,%ecx
    2856:	89 c8                	mov    %ecx,%eax
    2858:	85 c9                	test   %ecx,%ecx
    285a:	0f 8e 00 01 00 00    	jle    0x2960
    2860:	83 e8 01             	sub    $0x1,%eax
    2863:	48 89 c2             	mov    %rax,%rdx
    2866:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
    286b:	48 89 d8             	mov    %rbx,%rax
    286e:	66 90                	xchg   %ax,%ax
    2870:	48 83 c0 01          	add    $0x1,%rax
    2874:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    2878:	48 39 c8             	cmp    %rcx,%rax
    287b:	75 f3                	jne    0x2870
    287d:	48 63 c2             	movslq %edx,%rax
    2880:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
    2885:	48 39 fb             	cmp    %rdi,%rbx
    2888:	0f 84 ee 00 00 00    	je     0x297c
    288e:	48 89 d8             	mov    %rbx,%rax
    2891:	48 29 f8             	sub    %rdi,%rax
    2894:	44 39 c8             	cmp    %r9d,%eax
    2897:	0f 8c fb 00 00 00    	jl     0x2998
    289d:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
    28a4:	41 83 fa 6f          	cmp    $0x6f,%r10d
    28a8:	0f 84 5a 01 00 00    	je     0x2a08
    28ae:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
    28b4:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
    28b8:	0f 85 ba 02 00 00    	jne    0x2b78
    28be:	48 39 df             	cmp    %rbx,%rdi
    28c1:	73 45                	jae    0x2908
    28c3:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    28c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    28ce:	00 00 
    28d0:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
    28d4:	48 83 eb 01          	sub    $0x1,%rbx
    28d8:	48 89 f2             	mov    %rsi,%rdx
    28db:	e8 00 ef ff ff       	call   0x17e0
    28e0:	48 39 fb             	cmp    %rdi,%rbx
    28e3:	77 eb                	ja     0x28d0
    28e5:	45 85 ed             	test   %r13d,%r13d
    28e8:	7e 1e                	jle    0x2908
    28ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    28f0:	48 89 f2             	mov    %rsi,%rdx
    28f3:	b9 20 00 00 00       	mov    $0x20,%ecx
    28f8:	e8 e3 ee ff ff       	call   0x17e0
    28fd:	44 89 e0             	mov    %r12d,%eax
    2900:	41 83 ec 01          	sub    $0x1,%r12d
    2904:	85 c0                	test   %eax,%eax
    2906:	7f e8                	jg     0x28f0
    2908:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
    290c:	5b                   	pop    %rbx
    290d:	5e                   	pop    %rsi
    290e:	5f                   	pop    %rdi
    290f:	41 5c                	pop    %r12
    2911:	41 5d                	pop    %r13
    2913:	41 5e                	pop    %r14
    2915:	41 5f                	pop    %r15
    2917:	5d                   	pop    %rbp
    2918:	c3                   	ret    
    2919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2920:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
    2926:	0f 85 3c 02 00 00    	jne    0x2b68
    292c:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2930:	44 39 c8             	cmp    %r9d,%eax
    2933:	41 0f 4c c1          	cmovl  %r9d,%eax
    2937:	48 98                	cltq   
    2939:	48 83 c0 0f          	add    $0xf,%rax
    293d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2941:	e8 fa ec ff ff       	call   0x1640
    2946:	b9 04 00 00 00       	mov    $0x4,%ecx
    294b:	48 29 c4             	sub    %rax,%rsp
    294e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2953:	e9 45 01 00 00       	jmp    0x2a9d
    2958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    295f:	00 
    2960:	41 83 fa 6f          	cmp    $0x6f,%r10d
    2964:	0f 84 56 01 00 00    	je     0x2ac0
    296a:	48 39 fb             	cmp    %rdi,%rbx
    296d:	0f 85 1b ff ff ff    	jne    0x288e
    2973:	45 85 db             	test   %r11d,%r11d
    2976:	0f 84 12 ff ff ff    	je     0x288e
    297c:	c6 03 30             	movb   $0x30,(%rbx)
    297f:	48 83 c3 01          	add    $0x1,%rbx
    2983:	48 89 d8             	mov    %rbx,%rax
    2986:	48 29 f8             	sub    %rdi,%rax
    2989:	44 39 c8             	cmp    %r9d,%eax
    298c:	0f 8d 0b ff ff ff    	jge    0x289d
    2992:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2998:	41 29 c1             	sub    %eax,%r9d
    299b:	8b 56 08             	mov    0x8(%rsi),%edx
    299e:	44 89 4e 0c          	mov    %r9d,0xc(%rsi)
    29a2:	45 89 cd             	mov    %r9d,%r13d
    29a5:	41 83 fa 6f          	cmp    $0x6f,%r10d
    29a9:	0f 84 31 01 00 00    	je     0x2ae0
    29af:	f6 c6 08             	test   $0x8,%dh
    29b2:	0f 84 50 01 00 00    	je     0x2b08
    29b8:	41 83 ed 02          	sub    $0x2,%r13d
    29bc:	45 85 ed             	test   %r13d,%r13d
    29bf:	7e 09                	jle    0x29ca
    29c1:	45 85 db             	test   %r11d,%r11d
    29c4:	0f 88 1e 02 00 00    	js     0x2be8
    29ca:	44 88 13             	mov    %r10b,(%rbx)
    29cd:	48 83 c3 02          	add    $0x2,%rbx
    29d1:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
    29d5:	45 85 ed             	test   %r13d,%r13d
    29d8:	0f 8e e0 fe ff ff    	jle    0x28be
    29de:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    29e2:	80 e6 04             	and    $0x4,%dh
    29e5:	0f 85 33 01 00 00    	jne    0x2b1e
    29eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    29f0:	48 89 f2             	mov    %rsi,%rdx
    29f3:	b9 20 00 00 00       	mov    $0x20,%ecx
    29f8:	e8 e3 ed ff ff       	call   0x17e0
    29fd:	44 89 e0             	mov    %r12d,%eax
    2a00:	41 83 ec 01          	sub    $0x1,%r12d
    2a04:	85 c0                	test   %eax,%eax
    2a06:	7f e8                	jg     0x29f0
    2a08:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
    2a0e:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
    2a14:	48 39 fb             	cmp    %rdi,%rbx
    2a17:	0f 87 b3 fe ff ff    	ja     0x28d0
    2a1d:	e9 e6 fe ff ff       	jmp    0x2908
    2a22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2a28:	45 8b 58 10          	mov    0x10(%r8),%r11d
    2a2c:	b8 00 00 00 00       	mov    $0x0,%eax
    2a31:	45 8b 60 08          	mov    0x8(%r8),%r12d
    2a35:	45 85 db             	test   %r11d,%r11d
    2a38:	41 0f 49 c3          	cmovns %r11d,%eax
    2a3c:	83 c0 18             	add    $0x18,%eax
    2a3f:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
    2a46:	0f 84 e4 00 00 00    	je     0x2b30
    2a4c:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
    2a52:	0f 84 ac 01 00 00    	je     0x2c04
    2a58:	b9 03 00 00 00       	mov    $0x3,%ecx
    2a5d:	41 89 c0             	mov    %eax,%r8d
    2a60:	41 b9 ab aa aa aa    	mov    $0xaaaaaaab,%r9d
    2a66:	4d 0f af c1          	imul   %r9,%r8
    2a6a:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2a6e:	49 c1 e8 21          	shr    $0x21,%r8
    2a72:	44 01 c0             	add    %r8d,%eax
    2a75:	44 39 c8             	cmp    %r9d,%eax
    2a78:	41 0f 4c c1          	cmovl  %r9d,%eax
    2a7c:	48 98                	cltq   
    2a7e:	48 83 c0 0f          	add    $0xf,%rax
    2a82:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2a86:	e8 b5 eb ff ff       	call   0x1640
    2a8b:	48 29 c4             	sub    %rax,%rsp
    2a8e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2a93:	41 83 fa 6f          	cmp    $0x6f,%r10d
    2a97:	0f 84 ba 00 00 00    	je     0x2b57
    2a9d:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
    2aa3:	48 89 fb             	mov    %rdi,%rbx
    2aa6:	48 85 d2             	test   %rdx,%rdx
    2aa9:	0f 85 55 fd ff ff    	jne    0x2804
    2aaf:	90                   	nop
    2ab0:	41 81 e4 ff f7 ff ff 	and    $0xfffff7ff,%r12d
    2ab7:	44 89 66 08          	mov    %r12d,0x8(%rsi)
    2abb:	e9 82 fd ff ff       	jmp    0x2842
    2ac0:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
    2ac4:	0f 84 a0 fe ff ff    	je     0x296a
    2aca:	c6 03 30             	movb   $0x30,(%rbx)
    2acd:	48 83 c3 01          	add    $0x1,%rbx
    2ad1:	e9 94 fe ff ff       	jmp    0x296a
    2ad6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2add:	00 00 00 
    2ae0:	45 85 db             	test   %r11d,%r11d
    2ae3:	0f 88 9f 00 00 00    	js     0x2b88
    2ae9:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    2aed:	80 e6 04             	and    $0x4,%dh
    2af0:	0f 84 fa fe ff ff    	je     0x29f0
    2af6:	48 39 fb             	cmp    %rdi,%rbx
    2af9:	0f 87 d1 fd ff ff    	ja     0x28d0
    2aff:	e9 ec fd ff ff       	jmp    0x28f0
    2b04:	0f 1f 40 00          	nopl   0x0(%rax)
    2b08:	45 85 db             	test   %r11d,%r11d
    2b0b:	0f 88 d7 00 00 00    	js     0x2be8
    2b11:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    2b15:	80 e6 04             	and    $0x4,%dh
    2b18:	0f 84 d2 fe ff ff    	je     0x29f0
    2b1e:	48 39 df             	cmp    %rbx,%rdi
    2b21:	0f 82 a9 fd ff ff    	jb     0x28d0
    2b27:	e9 c4 fd ff ff       	jmp    0x28f0
    2b2c:	0f 1f 40 00          	nopl   0x0(%rax)
    2b30:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2b34:	41 39 c1             	cmp    %eax,%r9d
    2b37:	41 0f 4d c1          	cmovge %r9d,%eax
    2b3b:	48 98                	cltq   
    2b3d:	48 83 c0 0f          	add    $0xf,%rax
    2b41:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2b45:	e8 f6 ea ff ff       	call   0x1640
    2b4a:	b9 03 00 00 00       	mov    $0x3,%ecx
    2b4f:	48 29 c4             	sub    %rax,%rsp
    2b52:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2b57:	41 b8 07 00 00 00    	mov    $0x7,%r8d
    2b5d:	e9 96 fc ff ff       	jmp    0x27f8
    2b62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2b68:	b9 04 00 00 00       	mov    $0x4,%ecx
    2b6d:	e9 eb fe ff ff       	jmp    0x2a5d
    2b72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2b78:	44 88 13             	mov    %r10b,(%rbx)
    2b7b:	48 83 c3 02          	add    $0x2,%rbx
    2b7f:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
    2b83:	e9 36 fd ff ff       	jmp    0x28be
    2b88:	89 d0                	mov    %edx,%eax
    2b8a:	25 00 06 00 00       	and    $0x600,%eax
    2b8f:	3d 00 02 00 00       	cmp    $0x200,%eax
    2b94:	0f 85 4f ff ff ff    	jne    0x2ae9
    2b9a:	45 8d 45 ff          	lea    -0x1(%r13),%r8d
    2b9e:	44 89 c0             	mov    %r8d,%eax
    2ba1:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
    2ba6:	48 89 d8             	mov    %rbx,%rax
    2ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2bb0:	48 83 c0 01          	add    $0x1,%rax
    2bb4:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    2bb8:	48 39 c8             	cmp    %rcx,%rax
    2bbb:	75 f3                	jne    0x2bb0
    2bbd:	49 63 c0             	movslq %r8d,%rax
    2bc0:	45 29 e8             	sub    %r13d,%r8d
    2bc3:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
    2bc8:	45 89 c5             	mov    %r8d,%r13d
    2bcb:	41 83 fa 6f          	cmp    $0x6f,%r10d
    2bcf:	0f 84 00 fe ff ff    	je     0x29d5
    2bd5:	f6 c6 08             	test   $0x8,%dh
    2bd8:	0f 84 f7 fd ff ff    	je     0x29d5
    2bde:	e9 e7 fd ff ff       	jmp    0x29ca
    2be3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2be8:	89 d0                	mov    %edx,%eax
    2bea:	25 00 06 00 00       	and    $0x600,%eax
    2bef:	3d 00 02 00 00       	cmp    $0x200,%eax
    2bf4:	74 a4                	je     0x2b9a
    2bf6:	f6 c6 08             	test   $0x8,%dh
    2bf9:	0f 85 cb fd ff ff    	jne    0x29ca
    2bff:	e9 0d ff ff ff       	jmp    0x2b11
    2c04:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2c08:	44 39 c8             	cmp    %r9d,%eax
    2c0b:	41 0f 4c c1          	cmovl  %r9d,%eax
    2c0f:	e9 27 ff ff ff       	jmp    0x2b3b
    2c14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2c1b:	00 00 00 00 
    2c1f:	90                   	nop
    2c20:	41 55                	push   %r13
    2c22:	41 54                	push   %r12
    2c24:	55                   	push   %rbp
    2c25:	57                   	push   %rdi
    2c26:	56                   	push   %rsi
    2c27:	53                   	push   %rbx
    2c28:	48 83 ec 68          	sub    $0x68,%rsp
    2c2c:	4c 8b 11             	mov    (%rcx),%r10
    2c2f:	44 8b 59 08          	mov    0x8(%rcx),%r11d
    2c33:	41 0f bf cb          	movswl %r11w,%ecx
    2c37:	4c 89 de             	mov    %r11,%rsi
    2c3a:	44 8d 04 09          	lea    (%rcx,%rcx,1),%r8d
    2c3e:	49 89 d4             	mov    %rdx,%r12
    2c41:	4c 89 d2             	mov    %r10,%rdx
    2c44:	45 0f b7 c0          	movzwl %r8w,%r8d
    2c48:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
    2c4d:	48 c1 ea 20          	shr    $0x20,%rdx
    2c51:	44 89 5c 24 38       	mov    %r11d,0x38(%rsp)
    2c56:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
    2c5c:	44 09 d2             	or     %r10d,%edx
    2c5f:	89 d0                	mov    %edx,%eax
    2c61:	f7 d8                	neg    %eax
    2c63:	09 d0                	or     %edx,%eax
    2c65:	c1 e8 1f             	shr    $0x1f,%eax
    2c68:	44 09 c0             	or     %r8d,%eax
    2c6b:	41 b8 fe ff 00 00    	mov    $0xfffe,%r8d
    2c71:	41 29 c0             	sub    %eax,%r8d
    2c74:	44 89 c0             	mov    %r8d,%eax
    2c77:	c1 e8 10             	shr    $0x10,%eax
    2c7a:	0f 85 d8 02 00 00    	jne    0x2f58
    2c80:	66 45 85 db          	test   %r11w,%r11w
    2c84:	0f 88 d6 01 00 00    	js     0x2e60
    2c8a:	66 81 e6 ff 7f       	and    $0x7fff,%si
    2c8f:	0f 85 a3 01 00 00    	jne    0x2e38
    2c95:	4d 85 d2             	test   %r10,%r10
    2c98:	0f 85 42 03 00 00    	jne    0x2fe0
    2c9e:	41 8b 54 24 10       	mov    0x10(%r12),%edx
    2ca3:	83 fa 0e             	cmp    $0xe,%edx
    2ca6:	0f 86 f4 01 00 00    	jbe    0x2ea0
    2cac:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    2cb1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2cb6:	41 8b 44 24 10       	mov    0x10(%r12),%eax
    2cbb:	85 c0                	test   %eax,%eax
    2cbd:	0f 8e ad 04 00 00    	jle    0x3170
    2cc3:	c6 44 24 40 2e       	movb   $0x2e,0x40(%rsp)
    2cc8:	48 8d 44 24 41       	lea    0x41(%rsp),%rax
    2ccd:	c6 00 30             	movb   $0x30,(%rax)
    2cd0:	48 8d 58 01          	lea    0x1(%rax),%rbx
    2cd4:	45 8b 44 24 0c       	mov    0xc(%r12),%r8d
    2cd9:	bd 02 00 00 00       	mov    $0x2,%ebp
    2cde:	45 85 c0             	test   %r8d,%r8d
    2ce1:	0f 8e 89 00 00 00    	jle    0x2d70
    2ce7:	45 8b 4c 24 10       	mov    0x10(%r12),%r9d
    2cec:	48 89 d8             	mov    %rbx,%rax
    2cef:	0f bf ce             	movswl %si,%ecx
    2cf2:	48 29 f8             	sub    %rdi,%rax
    2cf5:	45 8d 14 01          	lea    (%r9,%rax,1),%r10d
    2cf9:	45 85 c9             	test   %r9d,%r9d
    2cfc:	41 0f 4f c2          	cmovg  %r10d,%eax
    2d00:	45 31 c9             	xor    %r9d,%r9d
    2d03:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
    2d09:	41 0f 95 c1          	setne  %r9b
    2d0d:	c1 f9 1f             	sar    $0x1f,%ecx
    2d10:	46 8d 4c 08 05       	lea    0x5(%rax,%r9,1),%r9d
    2d15:	48 0f bf c6          	movswq %si,%rax
    2d19:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    2d20:	45 89 ca             	mov    %r9d,%r10d
    2d23:	48 c1 f8 22          	sar    $0x22,%rax
    2d27:	29 c8                	sub    %ecx,%eax
    2d29:	74 2a                	je     0x2d55
    2d2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2d30:	48 63 c8             	movslq %eax,%rcx
    2d33:	41 83 c2 01          	add    $0x1,%r10d
    2d37:	c1 f8 1f             	sar    $0x1f,%eax
    2d3a:	48 69 c9 67 66 66 66 	imul   $0x66666667,%rcx,%rcx
    2d41:	41 8d 6a 02          	lea    0x2(%r10),%ebp
    2d45:	44 29 cd             	sub    %r9d,%ebp
    2d48:	48 c1 f9 22          	sar    $0x22,%rcx
    2d4c:	29 c1                	sub    %eax,%ecx
    2d4e:	89 c8                	mov    %ecx,%eax
    2d50:	75 de                	jne    0x2d30
    2d52:	0f bf ed             	movswl %bp,%ebp
    2d55:	45 39 d0             	cmp    %r10d,%r8d
    2d58:	0f 8e 7a 03 00 00    	jle    0x30d8
    2d5e:	45 29 d0             	sub    %r10d,%r8d
    2d61:	f6 c6 06             	test   $0x6,%dh
    2d64:	0f 84 be 03 00 00    	je     0x3128
    2d6a:	45 89 44 24 0c       	mov    %r8d,0xc(%r12)
    2d6f:	90                   	nop
    2d70:	f6 c2 80             	test   $0x80,%dl
    2d73:	0f 85 47 03 00 00    	jne    0x30c0
    2d79:	f6 c6 01             	test   $0x1,%dh
    2d7c:	0f 85 6e 03 00 00    	jne    0x30f0
    2d82:	83 e2 40             	and    $0x40,%edx
    2d85:	0f 85 85 03 00 00    	jne    0x3110
    2d8b:	4c 89 e2             	mov    %r12,%rdx
    2d8e:	b9 30 00 00 00       	mov    $0x30,%ecx
    2d93:	e8 48 ea ff ff       	call   0x17e0
    2d98:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    2d9d:	4c 89 e2             	mov    %r12,%rdx
    2da0:	83 e1 20             	and    $0x20,%ecx
    2da3:	83 c9 58             	or     $0x58,%ecx
    2da6:	e8 35 ea ff ff       	call   0x17e0
    2dab:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    2db0:	85 c0                	test   %eax,%eax
    2db2:	7e 32                	jle    0x2de6
    2db4:	41 f6 44 24 09 02    	testb  $0x2,0x9(%r12)
    2dba:	74 2a                	je     0x2de6
    2dbc:	83 e8 01             	sub    $0x1,%eax
    2dbf:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
    2dc4:	0f 1f 40 00          	nopl   0x0(%rax)
    2dc8:	4c 89 e2             	mov    %r12,%rdx
    2dcb:	b9 30 00 00 00       	mov    $0x30,%ecx
    2dd0:	e8 0b ea ff ff       	call   0x17e0
    2dd5:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    2dda:	8d 50 ff             	lea    -0x1(%rax),%edx
    2ddd:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
    2de2:	85 c0                	test   %eax,%eax
    2de4:	7f e2                	jg     0x2dc8
    2de6:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
    2deb:	48 39 fb             	cmp    %rdi,%rbx
    2dee:	77 25                	ja     0x2e15
    2df0:	e9 98 01 00 00       	jmp    0x2f8d
    2df5:	0f 1f 00             	nopl   (%rax)
    2df8:	41 0f b7 44 24 20    	movzwl 0x20(%r12),%eax
    2dfe:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
    2e03:	66 85 c0             	test   %ax,%ax
    2e06:	0f 85 84 02 00 00    	jne    0x3090
    2e0c:	48 39 fb             	cmp    %rdi,%rbx
    2e0f:	0f 84 78 01 00 00    	je     0x2f8d
    2e15:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
    2e19:	48 83 eb 01          	sub    $0x1,%rbx
    2e1d:	83 f9 2e             	cmp    $0x2e,%ecx
    2e20:	0f 84 0a 02 00 00    	je     0x3030
    2e26:	83 f9 2c             	cmp    $0x2c,%ecx
    2e29:	74 cd                	je     0x2df8
    2e2b:	4c 89 e2             	mov    %r12,%rdx
    2e2e:	e8 ad e9 ff ff       	call   0x17e0
    2e33:	eb d7                	jmp    0x2e0c
    2e35:	0f 1f 00             	nopl   (%rax)
    2e38:	85 d2                	test   %edx,%edx
    2e3a:	75 44                	jne    0x2e80
    2e3c:	66 81 fe ff 7f       	cmp    $0x7fff,%si
    2e41:	75 3d                	jne    0x2e80
    2e43:	81 e1 00 80 00 00    	and    $0x8000,%ecx
    2e49:	4d 89 e0             	mov    %r12,%r8
    2e4c:	48 8d 15 b8 54 00 00 	lea    0x54b8(%rip),%rdx        # 0x830b
    2e53:	e8 58 ec ff ff       	call   0x1ab0
    2e58:	e9 0d 01 00 00       	jmp    0x2f6a
    2e5d:	0f 1f 00             	nopl   (%rax)
    2e60:	41 81 4c 24 08 80 00 	orl    $0x80,0x8(%r12)
    2e67:	00 00 
    2e69:	66 81 e6 ff 7f       	and    $0x7fff,%si
    2e6e:	0f 84 21 fe ff ff    	je     0x2c95
    2e74:	eb c2                	jmp    0x2e38
    2e76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e7d:	00 00 00 
    2e80:	41 8b 54 24 10       	mov    0x10(%r12),%edx
    2e85:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
    2e8a:	66 81 ee ff 3f       	sub    $0x3fff,%si
    2e8f:	83 fa 0e             	cmp    $0xe,%edx
    2e92:	0f 87 80 01 00 00    	ja     0x3018
    2e98:	4d 85 d2             	test   %r10,%r10
    2e9b:	78 08                	js     0x2ea5
    2e9d:	0f 1f 00             	nopl   (%rax)
    2ea0:	4d 01 d2             	add    %r10,%r10
    2ea3:	79 fb                	jns    0x2ea0
    2ea5:	b9 0e 00 00 00       	mov    $0xe,%ecx
    2eaa:	b8 04 00 00 00       	mov    $0x4,%eax
    2eaf:	49 d1 ea             	shr    %r10
    2eb2:	29 d1                	sub    %edx,%ecx
    2eb4:	c1 e1 02             	shl    $0x2,%ecx
    2eb7:	48 d3 e0             	shl    %cl,%rax
    2eba:	49 01 c2             	add    %rax,%r10
    2ebd:	0f 88 45 02 00 00    	js     0x3108
    2ec3:	4d 01 d2             	add    %r10,%r10
    2ec6:	b9 0f 00 00 00       	mov    $0xf,%ecx
    2ecb:	29 d1                	sub    %edx,%ecx
    2ecd:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    2ed2:	c1 e1 02             	shl    $0x2,%ecx
    2ed5:	49 d3 ea             	shr    %cl,%r10
    2ed8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2edd:	41 89 d1             	mov    %edx,%r9d
    2ee0:	41 89 d0             	mov    %edx,%r8d
    2ee3:	48 89 fb             	mov    %rdi,%rbx
    2ee6:	41 81 e1 00 08 00 00 	and    $0x800,%r9d
    2eed:	41 83 e0 20          	and    $0x20,%r8d
    2ef1:	eb 27                	jmp    0x2f1a
    2ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2ef8:	31 c0                	xor    %eax,%eax
    2efa:	48 39 fb             	cmp    %rdi,%rbx
    2efd:	77 09                	ja     0x2f08
    2eff:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
    2f04:	85 c9                	test   %ecx,%ecx
    2f06:	78 09                	js     0x2f11
    2f08:	83 c0 30             	add    $0x30,%eax
    2f0b:	88 03                	mov    %al,(%rbx)
    2f0d:	48 83 c3 01          	add    $0x1,%rbx
    2f11:	4d 85 d2             	test   %r10,%r10
    2f14:	0f 84 8e 01 00 00    	je     0x30a8
    2f1a:	44 89 d1             	mov    %r10d,%ecx
    2f1d:	83 e1 0f             	and    $0xf,%ecx
    2f20:	49 f7 c2 f0 ff ff ff 	test   $0xfffffffffffffff0,%r10
    2f27:	0f 84 13 01 00 00    	je     0x3040
    2f2d:	41 8b 44 24 10       	mov    0x10(%r12),%eax
    2f32:	49 c1 ea 04          	shr    $0x4,%r10
    2f36:	85 c0                	test   %eax,%eax
    2f38:	7e 08                	jle    0x2f42
    2f3a:	83 e8 01             	sub    $0x1,%eax
    2f3d:	41 89 44 24 10       	mov    %eax,0x10(%r12)
    2f42:	85 c9                	test   %ecx,%ecx
    2f44:	74 b2                	je     0x2ef8
    2f46:	89 c8                	mov    %ecx,%eax
    2f48:	83 f9 09             	cmp    $0x9,%ecx
    2f4b:	76 bb                	jbe    0x2f08
    2f4d:	8d 41 37             	lea    0x37(%rcx),%eax
    2f50:	44 09 c0             	or     %r8d,%eax
    2f53:	eb b6                	jmp    0x2f0b
    2f55:	0f 1f 00             	nopl   (%rax)
    2f58:	4d 89 e0             	mov    %r12,%r8
    2f5b:	48 8d 15 a5 53 00 00 	lea    0x53a5(%rip),%rdx        # 0x8307
    2f62:	31 c9                	xor    %ecx,%ecx
    2f64:	e8 47 eb ff ff       	call   0x1ab0
    2f69:	90                   	nop
    2f6a:	48 83 c4 68          	add    $0x68,%rsp
    2f6e:	5b                   	pop    %rbx
    2f6f:	5e                   	pop    %rsi
    2f70:	5f                   	pop    %rdi
    2f71:	5d                   	pop    %rbp
    2f72:	41 5c                	pop    %r12
    2f74:	41 5d                	pop    %r13
    2f76:	c3                   	ret    
    2f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2f7e:	00 00 
    2f80:	4c 89 e2             	mov    %r12,%rdx
    2f83:	b9 30 00 00 00       	mov    $0x30,%ecx
    2f88:	e8 53 e8 ff ff       	call   0x17e0
    2f8d:	41 8b 44 24 10       	mov    0x10(%r12),%eax
    2f92:	8d 50 ff             	lea    -0x1(%rax),%edx
    2f95:	41 89 54 24 10       	mov    %edx,0x10(%r12)
    2f9a:	85 c0                	test   %eax,%eax
    2f9c:	7f e2                	jg     0x2f80
    2f9e:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    2fa3:	4c 89 e2             	mov    %r12,%rdx
    2fa6:	83 e1 20             	and    $0x20,%ecx
    2fa9:	83 c9 50             	or     $0x50,%ecx
    2fac:	e8 2f e8 ff ff       	call   0x17e0
    2fb1:	41 01 6c 24 0c       	add    %ebp,0xc(%r12)
    2fb6:	48 0f bf ce          	movswq %si,%rcx
    2fba:	4c 89 e2             	mov    %r12,%rdx
    2fbd:	41 81 4c 24 08 c0 01 	orl    $0x1c0,0x8(%r12)
    2fc4:	00 00 
    2fc6:	e8 35 f1 ff ff       	call   0x2100
    2fcb:	90                   	nop
    2fcc:	48 83 c4 68          	add    $0x68,%rsp
    2fd0:	5b                   	pop    %rbx
    2fd1:	5e                   	pop    %rsi
    2fd2:	5f                   	pop    %rdi
    2fd3:	5d                   	pop    %rbp
    2fd4:	41 5c                	pop    %r12
    2fd6:	41 5d                	pop    %r13
    2fd8:	c3                   	ret    
    2fd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2fe0:	0f 88 a2 01 00 00    	js     0x3188
    2fe6:	b8 01 c0 ff ff       	mov    $0xffffc001,%eax
    2feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2ff0:	89 c6                	mov    %eax,%esi
    2ff2:	83 e8 01             	sub    $0x1,%eax
    2ff5:	4d 01 d2             	add    %r10,%r10
    2ff8:	79 f6                	jns    0x2ff0
    2ffa:	41 8b 54 24 10       	mov    0x10(%r12),%edx
    2fff:	83 fa 0e             	cmp    $0xe,%edx
    3002:	0f 86 9d fe ff ff    	jbe    0x2ea5
    3008:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    300d:	e9 c6 fe ff ff       	jmp    0x2ed8
    3012:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3018:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    301d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3022:	4d 85 d2             	test   %r10,%r10
    3025:	0f 85 ad fe ff ff    	jne    0x2ed8
    302b:	e9 86 fc ff ff       	jmp    0x2cb6
    3030:	4c 89 e1             	mov    %r12,%rcx
    3033:	e8 28 eb ff ff       	call   0x1b60
    3038:	e9 cf fd ff ff       	jmp    0x2e0c
    303d:	0f 1f 00             	nopl   (%rax)
    3040:	48 39 fb             	cmp    %rdi,%rbx
    3043:	77 13                	ja     0x3058
    3045:	45 85 c9             	test   %r9d,%r9d
    3048:	75 0e                	jne    0x3058
    304a:	45 8b 5c 24 10       	mov    0x10(%r12),%r11d
    304f:	45 85 db             	test   %r11d,%r11d
    3052:	7e 0b                	jle    0x305f
    3054:	0f 1f 40 00          	nopl   0x0(%rax)
    3058:	c6 03 2e             	movb   $0x2e,(%rbx)
    305b:	48 83 c3 01          	add    $0x1,%rbx
    305f:	8d 46 ff             	lea    -0x1(%rsi),%eax
    3062:	49 83 fa 01          	cmp    $0x1,%r10
    3066:	74 16                	je     0x307e
    3068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    306f:	00 
    3070:	89 c6                	mov    %eax,%esi
    3072:	49 d1 ea             	shr    %r10
    3075:	8d 46 ff             	lea    -0x1(%rsi),%eax
    3078:	49 83 fa 01          	cmp    $0x1,%r10
    307c:	75 f2                	jne    0x3070
    307e:	45 31 d2             	xor    %r10d,%r10d
    3081:	e9 bc fe ff ff       	jmp    0x2f42
    3086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    308d:	00 00 00 
    3090:	4d 89 e0             	mov    %r12,%r8
    3093:	ba 01 00 00 00       	mov    $0x1,%edx
    3098:	4c 89 e9             	mov    %r13,%rcx
    309b:	e8 a0 e7 ff ff       	call   0x1840
    30a0:	e9 67 fd ff ff       	jmp    0x2e0c
    30a5:	0f 1f 00             	nopl   (%rax)
    30a8:	48 39 fb             	cmp    %rdi,%rbx
    30ab:	0f 85 23 fc ff ff    	jne    0x2cd4
    30b1:	e9 00 fc ff ff       	jmp    0x2cb6
    30b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    30bd:	00 00 00 
    30c0:	4c 89 e2             	mov    %r12,%rdx
    30c3:	b9 2d 00 00 00       	mov    $0x2d,%ecx
    30c8:	e8 13 e7 ff ff       	call   0x17e0
    30cd:	e9 b9 fc ff ff       	jmp    0x2d8b
    30d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    30d8:	41 c7 44 24 0c ff ff 	movl   $0xffffffff,0xc(%r12)
    30df:	ff ff 
    30e1:	e9 8a fc ff ff       	jmp    0x2d70
    30e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    30ed:	00 00 00 
    30f0:	4c 89 e2             	mov    %r12,%rdx
    30f3:	b9 2b 00 00 00       	mov    $0x2b,%ecx
    30f8:	e8 e3 e6 ff ff       	call   0x17e0
    30fd:	e9 89 fc ff ff       	jmp    0x2d8b
    3102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3108:	83 c6 01             	add    $0x1,%esi
    310b:	e9 b6 fd ff ff       	jmp    0x2ec6
    3110:	4c 89 e2             	mov    %r12,%rdx
    3113:	b9 20 00 00 00       	mov    $0x20,%ecx
    3118:	e8 c3 e6 ff ff       	call   0x17e0
    311d:	e9 69 fc ff ff       	jmp    0x2d8b
    3122:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3128:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    312c:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
    3131:	45 85 c0             	test   %r8d,%r8d
    3134:	0f 8e 36 fc ff ff    	jle    0x2d70
    313a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3140:	4c 89 e2             	mov    %r12,%rdx
    3143:	b9 20 00 00 00       	mov    $0x20,%ecx
    3148:	e8 93 e6 ff ff       	call   0x17e0
    314d:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    3152:	8d 50 ff             	lea    -0x1(%rax),%edx
    3155:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
    315a:	85 c0                	test   %eax,%eax
    315c:	7f e2                	jg     0x3140
    315e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    3163:	e9 08 fc ff ff       	jmp    0x2d70
    3168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    316f:	00 
    3170:	48 89 f8             	mov    %rdi,%rax
    3173:	f6 c6 08             	test   $0x8,%dh
    3176:	0f 84 51 fb ff ff    	je     0x2ccd
    317c:	e9 42 fb ff ff       	jmp    0x2cc3
    3181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3188:	be 02 c0 ff ff       	mov    $0xffffc002,%esi
    318d:	e9 68 fe ff ff       	jmp    0x2ffa
    3192:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3199:	00 00 00 00 
    319d:	0f 1f 00             	nopl   (%rax)
    31a0:	41 57                	push   %r15
    31a2:	41 56                	push   %r14
    31a4:	41 55                	push   %r13
    31a6:	41 54                	push   %r12
    31a8:	55                   	push   %rbp
    31a9:	57                   	push   %rdi
    31aa:	56                   	push   %rsi
    31ab:	53                   	push   %rbx
    31ac:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    31b3:	4c 8b a4 24 10 01 00 	mov    0x110(%rsp),%r12
    31ba:	00 
    31bb:	89 cf                	mov    %ecx,%edi
    31bd:	48 89 d5             	mov    %rdx,%rbp
    31c0:	44 89 c3             	mov    %r8d,%ebx
    31c3:	4c 89 ce             	mov    %r9,%rsi
    31c6:	e8 a5 30 00 00       	call   0x6270
    31cb:	0f be 0e             	movsbl (%rsi),%ecx
    31ce:	81 e7 00 60 00 00    	and    $0x6000,%edi
    31d4:	31 d2                	xor    %edx,%edx
    31d6:	8b 00                	mov    (%rax),%eax
    31d8:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
    31df:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
    31e3:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
    31e8:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    31ec:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
    31f3:	ff ff ff 
    31f6:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
    31fd:	00 
    31fe:	31 c0                	xor    %eax,%eax
    3200:	89 7c 24 78          	mov    %edi,0x78(%rsp)
    3204:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
    320b:	ff 
    320c:	66 89 84 24 88 00 00 	mov    %ax,0x88(%rsp)
    3213:	00 
    3214:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
    321b:	00 00 00 00 
    321f:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
    3226:	00 
    3227:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
    322e:	00 00 00 00 
    3232:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
    3239:	ff ff ff ff 
    323d:	85 c9                	test   %ecx,%ecx
    323f:	0f 84 da 00 00 00    	je     0x331f
    3245:	4c 8d 2d d4 50 00 00 	lea    0x50d4(%rip),%r13        # 0x8320
    324c:	eb 1b                	jmp    0x3269
    324e:	66 90                	xchg   %ax,%ax
    3250:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3255:	e8 86 e5 ff ff       	call   0x17e0
    325a:	0f be 0b             	movsbl (%rbx),%ecx
    325d:	48 83 c3 01          	add    $0x1,%rbx
    3261:	85 c9                	test   %ecx,%ecx
    3263:	0f 84 af 00 00 00    	je     0x3318
    3269:	83 f9 25             	cmp    $0x25,%ecx
    326c:	75 e2                	jne    0x3250
    326e:	0f b6 03             	movzbl (%rbx),%eax
    3271:	89 7c 24 78          	mov    %edi,0x78(%rsp)
    3275:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
    327c:	ff ff 
    327e:	84 c0                	test   %al,%al
    3280:	0f 84 92 00 00 00    	je     0x3318
    3286:	48 89 de             	mov    %rbx,%rsi
    3289:	4c 8d 54 24 7c       	lea    0x7c(%rsp),%r10
    328e:	45 31 ff             	xor    %r15d,%r15d
    3291:	45 31 f6             	xor    %r14d,%r14d
    3294:	41 bb 03 00 00 00    	mov    $0x3,%r11d
    329a:	8d 50 e0             	lea    -0x20(%rax),%edx
    329d:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
    32a1:	0f be c8             	movsbl %al,%ecx
    32a4:	80 fa 5a             	cmp    $0x5a,%dl
    32a7:	77 17                	ja     0x32c0
    32a9:	0f b6 d2             	movzbl %dl,%edx
    32ac:	49 63 54 95 00       	movslq 0x0(%r13,%rdx,4),%rdx
    32b1:	4c 01 ea             	add    %r13,%rdx
    32b4:	ff e2                	jmp    *%rdx
    32b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    32bd:	00 00 00 
    32c0:	83 e8 30             	sub    $0x30,%eax
    32c3:	3c 09                	cmp    $0x9,%al
    32c5:	0f 87 ad 06 00 00    	ja     0x3978
    32cb:	41 83 fe 03          	cmp    $0x3,%r14d
    32cf:	0f 87 a3 06 00 00    	ja     0x3978
    32d5:	45 85 f6             	test   %r14d,%r14d
    32d8:	0f 85 63 06 00 00    	jne    0x3941
    32de:	41 be 01 00 00 00    	mov    $0x1,%r14d
    32e4:	4d 85 d2             	test   %r10,%r10
    32e7:	0f 84 ab 04 00 00    	je     0x3798
    32ed:	41 8b 02             	mov    (%r10),%eax
    32f0:	85 c0                	test   %eax,%eax
    32f2:	0f 88 56 06 00 00    	js     0x394e
    32f8:	8d 04 80             	lea    (%rax,%rax,4),%eax
    32fb:	8d 44 41 d0          	lea    -0x30(%rcx,%rax,2),%eax
    32ff:	41 89 02             	mov    %eax,(%r10)
    3302:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3306:	48 89 ee             	mov    %rbp,%rsi
    3309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3310:	84 c0                	test   %al,%al
    3312:	75 86                	jne    0x329a
    3314:	0f 1f 40 00          	nopl   0x0(%rax)
    3318:	8b 8c 24 94 00 00 00 	mov    0x94(%rsp),%ecx
    331f:	89 c8                	mov    %ecx,%eax
    3321:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    3328:	5b                   	pop    %rbx
    3329:	5e                   	pop    %rsi
    332a:	5f                   	pop    %rdi
    332b:	5d                   	pop    %rbp
    332c:	41 5c                	pop    %r12
    332e:	41 5d                	pop    %r13
    3330:	41 5e                	pop    %r14
    3332:	41 5f                	pop    %r15
    3334:	c3                   	ret    
    3335:	0f 1f 00             	nopl   (%rax)
    3338:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    333d:	41 83 ff 03          	cmp    $0x3,%r15d
    3341:	0f 84 0c 07 00 00    	je     0x3a53
    3347:	45 8b 0c 24          	mov    (%r12),%r9d
    334b:	41 83 ff 02          	cmp    $0x2,%r15d
    334f:	74 14                	je     0x3365
    3351:	41 83 ff 01          	cmp    $0x1,%r15d
    3355:	0f 84 4a 06 00 00    	je     0x39a5
    335b:	41 83 ff 05          	cmp    $0x5,%r15d
    335f:	75 04                	jne    0x3365
    3361:	45 0f b6 c9          	movzbl %r9b,%r9d
    3365:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    336a:	83 f9 75             	cmp    $0x75,%ecx
    336d:	0f 84 ee 06 00 00    	je     0x3a61
    3373:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    3378:	4c 89 ca             	mov    %r9,%rdx
    337b:	49 89 dc             	mov    %rbx,%r12
    337e:	48 89 eb             	mov    %rbp,%rbx
    3381:	e8 fa f3 ff ff       	call   0x2780
    3386:	e9 cf fe ff ff       	jmp    0x325a
    338b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3390:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3394:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    339a:	48 89 ee             	mov    %rbp,%rsi
    339d:	41 be 04 00 00 00    	mov    $0x4,%r14d
    33a3:	e9 68 ff ff ff       	jmp    0x3310
    33a8:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
    33af:	00 
    33b0:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    33b5:	41 83 ff 03          	cmp    $0x3,%r15d
    33b9:	0f 84 86 06 00 00    	je     0x3a45
    33bf:	49 63 0c 24          	movslq (%r12),%rcx
    33c3:	41 83 ff 02          	cmp    $0x2,%r15d
    33c7:	74 14                	je     0x33dd
    33c9:	41 83 ff 01          	cmp    $0x1,%r15d
    33cd:	0f 84 e0 05 00 00    	je     0x39b3
    33d3:	41 83 ff 05          	cmp    $0x5,%r15d
    33d7:	75 04                	jne    0x33dd
    33d9:	48 0f be c9          	movsbq %cl,%rcx
    33dd:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    33e2:	48 89 c8             	mov    %rcx,%rax
    33e5:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    33ea:	49 89 dc             	mov    %rbx,%r12
    33ed:	48 89 eb             	mov    %rbp,%rbx
    33f0:	48 c1 f8 3f          	sar    $0x3f,%rax
    33f4:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    33f9:	e8 02 ed ff ff       	call   0x2100
    33fe:	e9 57 fe ff ff       	jmp    0x325a
    3403:	41 83 ef 02          	sub    $0x2,%r15d
    3407:	49 8b 0c 24          	mov    (%r12),%rcx
    340b:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    3410:	41 83 ff 01          	cmp    $0x1,%r15d
    3414:	0f 86 d5 04 00 00    	jbe    0x38ef
    341a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    341f:	49 89 dc             	mov    %rbx,%r12
    3422:	48 89 eb             	mov    %rbp,%rbx
    3425:	e8 36 e6 ff ff       	call   0x1a60
    342a:	e9 2b fe ff ff       	jmp    0x325a
    342f:	41 83 ef 02          	sub    $0x2,%r15d
    3433:	41 8b 04 24          	mov    (%r12),%eax
    3437:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    343c:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
    3443:	ff ff ff ff 
    3447:	41 83 ff 01          	cmp    $0x1,%r15d
    344b:	0f 86 62 02 00 00    	jbe    0x36b3
    3451:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
    3456:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    345b:	88 44 24 60          	mov    %al,0x60(%rsp)
    345f:	49 89 dc             	mov    %rbx,%r12
    3462:	ba 01 00 00 00       	mov    $0x1,%edx
    3467:	48 89 eb             	mov    %rbp,%rbx
    346a:	e8 01 e5 ff ff       	call   0x1970
    346f:	e9 e6 fd ff ff       	jmp    0x325a
    3474:	45 85 f6             	test   %r14d,%r14d
    3477:	0f 85 1b 03 00 00    	jne    0x3798
    347d:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3481:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
    3488:	00 
    3489:	48 89 ee             	mov    %rbp,%rsi
    348c:	e9 7f fe ff ff       	jmp    0x3310
    3491:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3495:	3c 36                	cmp    $0x36,%al
    3497:	0f 84 85 05 00 00    	je     0x3a22
    349d:	3c 33                	cmp    $0x33,%al
    349f:	0f 84 c9 04 00 00    	je     0x396e
    34a5:	48 89 ee             	mov    %rbp,%rsi
    34a8:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    34ae:	41 be 04 00 00 00    	mov    $0x4,%r14d
    34b4:	e9 57 fe ff ff       	jmp    0x3310
    34b9:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    34bd:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
    34c2:	48 89 ee             	mov    %rbp,%rsi
    34c5:	41 be 04 00 00 00    	mov    $0x4,%r14d
    34cb:	e9 40 fe ff ff       	jmp    0x3310
    34d0:	8b 44 24 78          	mov    0x78(%rsp),%eax
    34d4:	49 8b 14 24          	mov    (%r12),%rdx
    34d8:	49 83 c4 08          	add    $0x8,%r12
    34dc:	83 c8 20             	or     $0x20,%eax
    34df:	89 44 24 78          	mov    %eax,0x78(%rsp)
    34e3:	a8 04                	test   $0x4,%al
    34e5:	0f 84 3c 02 00 00    	je     0x3727
    34eb:	db 2a                	fldt   (%rdx)
    34ed:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    34f2:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    34f7:	48 89 eb             	mov    %rbp,%rbx
    34fa:	db 7c 24 40          	fstpt  0x40(%rsp)
    34fe:	e8 2d eb ff ff       	call   0x2030
    3503:	e9 52 fd ff ff       	jmp    0x325a
    3508:	8b 44 24 78          	mov    0x78(%rsp),%eax
    350c:	49 8b 14 24          	mov    (%r12),%rdx
    3510:	49 83 c4 08          	add    $0x8,%r12
    3514:	83 c8 20             	or     $0x20,%eax
    3517:	89 44 24 78          	mov    %eax,0x78(%rsp)
    351b:	a8 04                	test   $0x4,%al
    351d:	0f 84 3c 02 00 00    	je     0x375f
    3523:	db 2a                	fldt   (%rdx)
    3525:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    352a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    352f:	48 89 eb             	mov    %rbp,%rbx
    3532:	db 7c 24 40          	fstpt  0x40(%rsp)
    3536:	e8 d5 f0 ff ff       	call   0x2610
    353b:	e9 1a fd ff ff       	jmp    0x325a
    3540:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3544:	49 8b 14 24          	mov    (%r12),%rdx
    3548:	49 83 c4 08          	add    $0x8,%r12
    354c:	83 c8 20             	or     $0x20,%eax
    354f:	89 44 24 78          	mov    %eax,0x78(%rsp)
    3553:	a8 04                	test   $0x4,%al
    3555:	0f 84 94 01 00 00    	je     0x36ef
    355b:	db 2a                	fldt   (%rdx)
    355d:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3562:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3567:	48 89 eb             	mov    %rbp,%rbx
    356a:	db 7c 24 40          	fstpt  0x40(%rsp)
    356e:	e8 ed ef ff ff       	call   0x2560
    3573:	e9 e2 fc ff ff       	jmp    0x325a
    3578:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    357c:	3c 6c                	cmp    $0x6c,%al
    357e:	0f 84 85 04 00 00    	je     0x3a09
    3584:	48 89 ee             	mov    %rbp,%rsi
    3587:	41 bf 02 00 00 00    	mov    $0x2,%r15d
    358d:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3593:	e9 78 fd ff ff       	jmp    0x3310
    3598:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    359c:	3c 68                	cmp    $0x68,%al
    359e:	0f 84 4c 04 00 00    	je     0x39f0
    35a4:	48 89 ee             	mov    %rbp,%rsi
    35a7:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    35ad:	41 be 04 00 00 00    	mov    $0x4,%r14d
    35b3:	e9 58 fd ff ff       	jmp    0x3310
    35b8:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
    35bc:	48 89 eb             	mov    %rbp,%rbx
    35bf:	e8 3c 2c 00 00       	call   0x6200
    35c4:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    35c9:	48 89 c1             	mov    %rax,%rcx
    35cc:	e8 8f e4 ff ff       	call   0x1a60
    35d1:	e9 84 fc ff ff       	jmp    0x325a
    35d6:	49 8b 14 24          	mov    (%r12),%rdx
    35da:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
    35e1:	00 
    35e2:	49 83 c4 08          	add    $0x8,%r12
    35e6:	41 83 ff 05          	cmp    $0x5,%r15d
    35ea:	0f 84 f6 03 00 00    	je     0x39e6
    35f0:	41 83 ff 01          	cmp    $0x1,%r15d
    35f4:	0f 84 8c 04 00 00    	je     0x3a86
    35fa:	41 83 ff 02          	cmp    $0x2,%r15d
    35fe:	74 0a                	je     0x360a
    3600:	41 83 ff 03          	cmp    $0x3,%r15d
    3604:	0f 84 c3 04 00 00    	je     0x3acd
    360a:	89 02                	mov    %eax,(%rdx)
    360c:	48 89 eb             	mov    %rbp,%rbx
    360f:	e9 46 fc ff ff       	jmp    0x325a
    3614:	45 85 f6             	test   %r14d,%r14d
    3617:	75 0a                	jne    0x3623
    3619:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
    361d:	0f 84 69 03 00 00    	je     0x398c
    3623:	49 8b 14 24          	mov    (%r12),%rdx
    3627:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    362c:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    3631:	b9 78 00 00 00       	mov    $0x78,%ecx
    3636:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    363d:	00 00 
    363f:	49 89 dc             	mov    %rbx,%r12
    3642:	48 89 eb             	mov    %rbp,%rbx
    3645:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
    364a:	e8 31 f1 ff ff       	call   0x2780
    364f:	e9 06 fc ff ff       	jmp    0x325a
    3654:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3658:	49 8b 14 24          	mov    (%r12),%rdx
    365c:	49 83 c4 08          	add    $0x8,%r12
    3660:	83 c8 20             	or     $0x20,%eax
    3663:	89 44 24 78          	mov    %eax,0x78(%rsp)
    3667:	a8 04                	test   $0x4,%al
    3669:	0f 84 65 01 00 00    	je     0x37d4
    366f:	db 2a                	fldt   (%rdx)
    3671:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3676:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    367b:	48 89 eb             	mov    %rbp,%rbx
    367e:	db 7c 24 40          	fstpt  0x40(%rsp)
    3682:	e8 99 f5 ff ff       	call   0x2c20
    3687:	e9 ce fb ff ff       	jmp    0x325a
    368c:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3691:	b9 25 00 00 00       	mov    $0x25,%ecx
    3696:	48 89 eb             	mov    %rbp,%rbx
    3699:	e8 42 e1 ff ff       	call   0x17e0
    369e:	e9 b7 fb ff ff       	jmp    0x325a
    36a3:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
    36aa:	ff ff ff ff 
    36ae:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    36b3:	41 8b 04 24          	mov    (%r12),%eax
    36b7:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
    36bc:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    36c1:	49 89 dc             	mov    %rbx,%r12
    36c4:	ba 01 00 00 00       	mov    $0x1,%edx
    36c9:	48 89 eb             	mov    %rbp,%rbx
    36cc:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
    36d1:	e8 6a e1 ff ff       	call   0x1840
    36d6:	e9 7f fb ff ff       	jmp    0x325a
    36db:	8b 44 24 78          	mov    0x78(%rsp),%eax
    36df:	49 8b 14 24          	mov    (%r12),%rdx
    36e3:	49 83 c4 08          	add    $0x8,%r12
    36e7:	a8 04                	test   $0x4,%al
    36e9:	0f 85 6c fe ff ff    	jne    0x355b
    36ef:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    36f4:	dd 44 24 30          	fldl   0x30(%rsp)
    36f8:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    36fd:	48 89 eb             	mov    %rbp,%rbx
    3700:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3705:	db 7c 24 40          	fstpt  0x40(%rsp)
    3709:	e8 52 ee ff ff       	call   0x2560
    370e:	e9 47 fb ff ff       	jmp    0x325a
    3713:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3717:	49 8b 14 24          	mov    (%r12),%rdx
    371b:	49 83 c4 08          	add    $0x8,%r12
    371f:	a8 04                	test   $0x4,%al
    3721:	0f 85 c4 fd ff ff    	jne    0x34eb
    3727:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    372c:	dd 44 24 30          	fldl   0x30(%rsp)
    3730:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3735:	48 89 eb             	mov    %rbp,%rbx
    3738:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    373d:	db 7c 24 40          	fstpt  0x40(%rsp)
    3741:	e8 ea e8 ff ff       	call   0x2030
    3746:	e9 0f fb ff ff       	jmp    0x325a
    374b:	8b 44 24 78          	mov    0x78(%rsp),%eax
    374f:	49 8b 14 24          	mov    (%r12),%rdx
    3753:	49 83 c4 08          	add    $0x8,%r12
    3757:	a8 04                	test   $0x4,%al
    3759:	0f 85 c4 fd ff ff    	jne    0x3523
    375f:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    3764:	dd 44 24 30          	fldl   0x30(%rsp)
    3768:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    376d:	48 89 eb             	mov    %rbp,%rbx
    3770:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3775:	db 7c 24 40          	fstpt  0x40(%rsp)
    3779:	e8 92 ee ff ff       	call   0x2610
    377e:	e9 d7 fa ff ff       	jmp    0x325a
    3783:	45 85 f6             	test   %r14d,%r14d
    3786:	0f 85 aa 01 00 00    	jne    0x3936
    378c:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
    3793:	00 
    3794:	0f 1f 40 00          	nopl   0x0(%rax)
    3798:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    379c:	48 89 ee             	mov    %rbp,%rsi
    379f:	e9 6c fb ff ff       	jmp    0x3310
    37a4:	41 83 fe 01          	cmp    $0x1,%r14d
    37a8:	0f 86 13 02 00 00    	jbe    0x39c1
    37ae:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    37b2:	41 be 04 00 00 00    	mov    $0x4,%r14d
    37b8:	48 89 ee             	mov    %rbp,%rsi
    37bb:	e9 50 fb ff ff       	jmp    0x3310
    37c0:	8b 44 24 78          	mov    0x78(%rsp),%eax
    37c4:	49 8b 14 24          	mov    (%r12),%rdx
    37c8:	49 83 c4 08          	add    $0x8,%r12
    37cc:	a8 04                	test   $0x4,%al
    37ce:	0f 85 9b fe ff ff    	jne    0x366f
    37d4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    37d9:	dd 44 24 30          	fldl   0x30(%rsp)
    37dd:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    37e2:	48 89 eb             	mov    %rbp,%rbx
    37e5:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    37ea:	db 7c 24 40          	fstpt  0x40(%rsp)
    37ee:	e8 2d f4 ff ff       	call   0x2c20
    37f3:	e9 62 fa ff ff       	jmp    0x325a
    37f8:	45 85 f6             	test   %r14d,%r14d
    37fb:	75 9b                	jne    0x3798
    37fd:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3801:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
    3806:	48 89 ee             	mov    %rbp,%rsi
    3809:	e9 02 fb ff ff       	jmp    0x3310
    380e:	45 85 f6             	test   %r14d,%r14d
    3811:	75 85                	jne    0x3798
    3813:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3817:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
    381e:	00 
    381f:	48 89 ee             	mov    %rbp,%rsi
    3822:	e9 e9 fa ff ff       	jmp    0x3310
    3827:	4d 85 d2             	test   %r10,%r10
    382a:	74 82                	je     0x37ae
    382c:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
    3833:	0f 85 20 01 00 00    	jne    0x3959
    3839:	41 8b 04 24          	mov    (%r12),%eax
    383d:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
    3842:	41 89 02             	mov    %eax,(%r10)
    3845:	85 c0                	test   %eax,%eax
    3847:	0f 88 44 02 00 00    	js     0x3a91
    384d:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3851:	49 89 d4             	mov    %rdx,%r12
    3854:	48 89 ee             	mov    %rbp,%rsi
    3857:	45 31 d2             	xor    %r10d,%r10d
    385a:	e9 b1 fa ff ff       	jmp    0x3310
    385f:	45 85 f6             	test   %r14d,%r14d
    3862:	0f 85 30 ff ff ff    	jne    0x3798
    3868:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
    386f:	00 
    3870:	e9 23 ff ff ff       	jmp    0x3798
    3875:	45 85 f6             	test   %r14d,%r14d
    3878:	0f 85 1a ff ff ff    	jne    0x3798
    387e:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
    3883:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
    3888:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
    388f:	00 
    3890:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
    3895:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
    389c:	00 
    389d:	e8 7e 29 00 00       	call   0x6220
    38a2:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    38a7:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
    38ac:	41 b8 10 00 00 00    	mov    $0x10,%r8d
    38b2:	48 8b 50 08          	mov    0x8(%rax),%rdx
    38b6:	e8 75 2b 00 00       	call   0x6430
    38bb:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
    38c0:	41 bb 03 00 00 00    	mov    $0x3,%r11d
    38c6:	85 c0                	test   %eax,%eax
    38c8:	7e 0d                	jle    0x38d7
    38ca:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
    38cf:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
    38d6:	00 
    38d7:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
    38de:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    38e2:	48 89 ee             	mov    %rbp,%rsi
    38e5:	e9 26 fa ff ff       	jmp    0x3310
    38ea:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    38ef:	4d 8b 24 24          	mov    (%r12),%r12
    38f3:	48 8d 05 16 4a 00 00 	lea    0x4a16(%rip),%rax        # 0x8310
    38fa:	4d 85 e4             	test   %r12,%r12
    38fd:	4c 0f 44 e0          	cmove  %rax,%r12
    3901:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
    3908:	85 c0                	test   %eax,%eax
    390a:	0f 88 69 01 00 00    	js     0x3a79
    3910:	48 63 d0             	movslq %eax,%rdx
    3913:	4c 89 e1             	mov    %r12,%rcx
    3916:	e8 95 28 00 00       	call   0x61b0
    391b:	4c 89 e1             	mov    %r12,%rcx
    391e:	48 89 c2             	mov    %rax,%rdx
    3921:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    3926:	49 89 dc             	mov    %rbx,%r12
    3929:	e8 12 df ff ff       	call   0x1840
    392e:	48 89 eb             	mov    %rbp,%rbx
    3931:	e9 24 f9 ff ff       	jmp    0x325a
    3936:	41 83 fe 03          	cmp    $0x3,%r14d
    393a:	77 3c                	ja     0x3978
    393c:	b9 30 00 00 00       	mov    $0x30,%ecx
    3941:	41 83 fe 02          	cmp    $0x2,%r14d
    3945:	45 0f 44 f3          	cmove  %r11d,%r14d
    3949:	e9 96 f9 ff ff       	jmp    0x32e4
    394e:	83 e9 30             	sub    $0x30,%ecx
    3951:	41 89 0a             	mov    %ecx,(%r10)
    3954:	e9 3f fe ff ff       	jmp    0x3798
    3959:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    395d:	45 31 d2             	xor    %r10d,%r10d
    3960:	48 89 ee             	mov    %rbp,%rsi
    3963:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3969:	e9 a2 f9 ff ff       	jmp    0x3310
    396e:	80 7e 02 32          	cmpb   $0x32,0x2(%rsi)
    3972:	0f 84 3c 01 00 00    	je     0x3ab4
    3978:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    397d:	b9 25 00 00 00       	mov    $0x25,%ecx
    3982:	e8 59 de ff ff       	call   0x17e0
    3987:	e9 ce f8 ff ff       	jmp    0x325a
    398c:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
    3993:	10 00 00 00 
    3997:	89 f8                	mov    %edi,%eax
    3999:	80 cc 02             	or     $0x2,%ah
    399c:	89 44 24 78          	mov    %eax,0x78(%rsp)
    39a0:	e9 7e fc ff ff       	jmp    0x3623
    39a5:	45 0f b7 c9          	movzwl %r9w,%r9d
    39a9:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    39ae:	e9 b7 f9 ff ff       	jmp    0x336a
    39b3:	48 0f bf c9          	movswq %cx,%rcx
    39b7:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    39bc:	e9 21 fa ff ff       	jmp    0x33e2
    39c1:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    39c5:	41 be 02 00 00 00    	mov    $0x2,%r14d
    39cb:	48 89 ee             	mov    %rbp,%rsi
    39ce:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    39d5:	00 00 00 00 
    39d9:	4c 8d 94 24 80 00 00 	lea    0x80(%rsp),%r10
    39e0:	00 
    39e1:	e9 2a f9 ff ff       	jmp    0x3310
    39e6:	88 02                	mov    %al,(%rdx)
    39e8:	48 89 eb             	mov    %rbp,%rbx
    39eb:	e9 6a f8 ff ff       	jmp    0x325a
    39f0:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
    39f4:	41 bf 05 00 00 00    	mov    $0x5,%r15d
    39fa:	48 83 c6 02          	add    $0x2,%rsi
    39fe:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3a04:	e9 07 f9 ff ff       	jmp    0x3310
    3a09:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
    3a0d:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    3a13:	48 83 c6 02          	add    $0x2,%rsi
    3a17:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3a1d:	e9 ee f8 ff ff       	jmp    0x3310
    3a22:	80 7e 02 34          	cmpb   $0x34,0x2(%rsi)
    3a26:	0f 85 4c ff ff ff    	jne    0x3978
    3a2c:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
    3a30:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    3a36:	48 83 c6 03          	add    $0x3,%rsi
    3a3a:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3a40:	e9 cb f8 ff ff       	jmp    0x3310
    3a45:	49 8b 0c 24          	mov    (%r12),%rcx
    3a49:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    3a4e:	e9 8f f9 ff ff       	jmp    0x33e2
    3a53:	4d 8b 0c 24          	mov    (%r12),%r9
    3a57:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    3a5c:	e9 09 f9 ff ff       	jmp    0x336a
    3a61:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3a66:	4c 89 c9             	mov    %r9,%rcx
    3a69:	49 89 dc             	mov    %rbx,%r12
    3a6c:	48 89 eb             	mov    %rbp,%rbx
    3a6f:	e8 8c e6 ff ff       	call   0x2100
    3a74:	e9 e1 f7 ff ff       	jmp    0x325a
    3a79:	4c 89 e1             	mov    %r12,%rcx
    3a7c:	e8 5f 27 00 00       	call   0x61e0
    3a81:	e9 95 fe ff ff       	jmp    0x391b
    3a86:	66 89 02             	mov    %ax,(%rdx)
    3a89:	48 89 eb             	mov    %rbp,%rbx
    3a8c:	e9 c9 f7 ff ff       	jmp    0x325a
    3a91:	45 85 f6             	test   %r14d,%r14d
    3a94:	75 42                	jne    0x3ad8
    3a96:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3a9a:	f7 5c 24 7c          	negl   0x7c(%rsp)
    3a9e:	49 89 d4             	mov    %rdx,%r12
    3aa1:	48 89 ee             	mov    %rbp,%rsi
    3aa4:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
    3aab:	00 
    3aac:	45 31 d2             	xor    %r10d,%r10d
    3aaf:	e9 5c f8 ff ff       	jmp    0x3310
    3ab4:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
    3ab8:	41 bf 02 00 00 00    	mov    $0x2,%r15d
    3abe:	48 83 c6 03          	add    $0x3,%rsi
    3ac2:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3ac8:	e9 43 f8 ff ff       	jmp    0x3310
    3acd:	48 89 02             	mov    %rax,(%rdx)
    3ad0:	48 89 eb             	mov    %rbp,%rbx
    3ad3:	e9 82 f7 ff ff       	jmp    0x325a
    3ad8:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
    3adf:	ff ff ff ff 
    3ae3:	e9 65 fd ff ff       	jmp    0x384d
    3ae8:	90                   	nop
    3ae9:	90                   	nop
    3aea:	90                   	nop
    3aeb:	90                   	nop
    3aec:	90                   	nop
    3aed:	90                   	nop
    3aee:	90                   	nop
    3aef:	90                   	nop
    3af0:	53                   	push   %rbx
    3af1:	48 83 ec 20          	sub    $0x20,%rsp
    3af5:	31 db                	xor    %ebx,%ebx
    3af7:	83 f9 1b             	cmp    $0x1b,%ecx
    3afa:	7e 18                	jle    0x3b14
    3afc:	b8 04 00 00 00       	mov    $0x4,%eax
    3b01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3b08:	01 c0                	add    %eax,%eax
    3b0a:	83 c3 01             	add    $0x1,%ebx
    3b0d:	8d 50 17             	lea    0x17(%rax),%edx
    3b10:	39 ca                	cmp    %ecx,%edx
    3b12:	7c f4                	jl     0x3b08
    3b14:	89 d9                	mov    %ebx,%ecx
    3b16:	e8 95 1b 00 00       	call   0x56b0
    3b1b:	89 18                	mov    %ebx,(%rax)
    3b1d:	48 83 c0 04          	add    $0x4,%rax
    3b21:	48 83 c4 20          	add    $0x20,%rsp
    3b25:	5b                   	pop    %rbx
    3b26:	c3                   	ret    
    3b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3b2e:	00 00 
    3b30:	57                   	push   %rdi
    3b31:	56                   	push   %rsi
    3b32:	53                   	push   %rbx
    3b33:	48 83 ec 20          	sub    $0x20,%rsp
    3b37:	48 89 ce             	mov    %rcx,%rsi
    3b3a:	48 89 d7             	mov    %rdx,%rdi
    3b3d:	41 83 f8 1b          	cmp    $0x1b,%r8d
    3b41:	7e 6d                	jle    0x3bb0
    3b43:	b8 04 00 00 00       	mov    $0x4,%eax
    3b48:	31 db                	xor    %ebx,%ebx
    3b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3b50:	01 c0                	add    %eax,%eax
    3b52:	83 c3 01             	add    $0x1,%ebx
    3b55:	8d 48 17             	lea    0x17(%rax),%ecx
    3b58:	41 39 c8             	cmp    %ecx,%r8d
    3b5b:	7f f3                	jg     0x3b50
    3b5d:	89 d9                	mov    %ebx,%ecx
    3b5f:	e8 4c 1b 00 00       	call   0x56b0
    3b64:	48 8d 4e 01          	lea    0x1(%rsi),%rcx
    3b68:	89 18                	mov    %ebx,(%rax)
    3b6a:	0f b6 16             	movzbl (%rsi),%edx
    3b6d:	4c 8d 48 04          	lea    0x4(%rax),%r9
    3b71:	88 50 04             	mov    %dl,0x4(%rax)
    3b74:	4c 89 c8             	mov    %r9,%rax
    3b77:	84 d2                	test   %dl,%dl
    3b79:	74 19                	je     0x3b94
    3b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3b80:	44 0f b6 01          	movzbl (%rcx),%r8d
    3b84:	48 83 c0 01          	add    $0x1,%rax
    3b88:	48 83 c1 01          	add    $0x1,%rcx
    3b8c:	44 88 00             	mov    %r8b,(%rax)
    3b8f:	45 84 c0             	test   %r8b,%r8b
    3b92:	75 ec                	jne    0x3b80
    3b94:	48 85 ff             	test   %rdi,%rdi
    3b97:	74 03                	je     0x3b9c
    3b99:	48 89 07             	mov    %rax,(%rdi)
    3b9c:	4c 89 c8             	mov    %r9,%rax
    3b9f:	48 83 c4 20          	add    $0x20,%rsp
    3ba3:	5b                   	pop    %rbx
    3ba4:	5e                   	pop    %rsi
    3ba5:	5f                   	pop    %rdi
    3ba6:	c3                   	ret    
    3ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3bae:	00 00 
    3bb0:	31 db                	xor    %ebx,%ebx
    3bb2:	eb a9                	jmp    0x3b5d
    3bb4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3bbb:	00 00 00 00 
    3bbf:	90                   	nop
    3bc0:	ba 01 00 00 00       	mov    $0x1,%edx
    3bc5:	48 89 c8             	mov    %rcx,%rax
    3bc8:	8b 49 fc             	mov    -0x4(%rcx),%ecx
    3bcb:	d3 e2                	shl    %cl,%edx
    3bcd:	89 48 04             	mov    %ecx,0x4(%rax)
    3bd0:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
    3bd4:	89 50 08             	mov    %edx,0x8(%rax)
    3bd7:	e9 d4 1b 00 00       	jmp    0x57b0
    3bdc:	0f 1f 40 00          	nopl   0x0(%rax)
    3be0:	41 57                	push   %r15
    3be2:	41 56                	push   %r14
    3be4:	41 55                	push   %r13
    3be6:	41 54                	push   %r12
    3be8:	55                   	push   %rbp
    3be9:	57                   	push   %rdi
    3bea:	56                   	push   %rsi
    3beb:	53                   	push   %rbx
    3bec:	48 83 ec 38          	sub    $0x38,%rsp
    3bf0:	31 c0                	xor    %eax,%eax
    3bf2:	8b 72 14             	mov    0x14(%rdx),%esi
    3bf5:	49 89 cc             	mov    %rcx,%r12
    3bf8:	49 89 d6             	mov    %rdx,%r14
    3bfb:	39 71 14             	cmp    %esi,0x14(%rcx)
    3bfe:	0f 8c e4 00 00 00    	jl     0x3ce8
    3c04:	83 ee 01             	sub    $0x1,%esi
    3c07:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
    3c0b:	48 8d 69 18          	lea    0x18(%rcx),%rbp
    3c0f:	31 d2                	xor    %edx,%edx
    3c11:	4c 63 de             	movslq %esi,%r11
    3c14:	49 c1 e3 02          	shl    $0x2,%r11
    3c18:	4a 8d 3c 1b          	lea    (%rbx,%r11,1),%rdi
    3c1c:	49 01 eb             	add    %rbp,%r11
    3c1f:	8b 07                	mov    (%rdi),%eax
    3c21:	45 8b 03             	mov    (%r11),%r8d
    3c24:	8d 48 01             	lea    0x1(%rax),%ecx
    3c27:	44 89 c0             	mov    %r8d,%eax
    3c2a:	f7 f1                	div    %ecx
    3c2c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    3c30:	41 89 c5             	mov    %eax,%r13d
    3c33:	41 39 c8             	cmp    %ecx,%r8d
    3c36:	72 56                	jb     0x3c8e
    3c38:	41 89 c7             	mov    %eax,%r15d
    3c3b:	49 89 da             	mov    %rbx,%r10
    3c3e:	49 89 e9             	mov    %rbp,%r9
    3c41:	31 c9                	xor    %ecx,%ecx
    3c43:	31 d2                	xor    %edx,%edx
    3c45:	0f 1f 00             	nopl   (%rax)
    3c48:	41 8b 02             	mov    (%r10),%eax
    3c4b:	45 8b 01             	mov    (%r9),%r8d
    3c4e:	49 83 c2 04          	add    $0x4,%r10
    3c52:	49 83 c1 04          	add    $0x4,%r9
    3c56:	49 0f af c7          	imul   %r15,%rax
    3c5a:	48 01 c8             	add    %rcx,%rax
    3c5d:	48 89 c1             	mov    %rax,%rcx
    3c60:	89 c0                	mov    %eax,%eax
    3c62:	48 01 d0             	add    %rdx,%rax
    3c65:	48 c1 e9 20          	shr    $0x20,%rcx
    3c69:	49 29 c0             	sub    %rax,%r8
    3c6c:	4c 89 c0             	mov    %r8,%rax
    3c6f:	45 89 41 fc          	mov    %r8d,-0x4(%r9)
    3c73:	48 c1 e8 20          	shr    $0x20,%rax
    3c77:	83 e0 01             	and    $0x1,%eax
    3c7a:	48 89 c2             	mov    %rax,%rdx
    3c7d:	4c 39 d7             	cmp    %r10,%rdi
    3c80:	73 c6                	jae    0x3c48
    3c82:	45 8b 0b             	mov    (%r11),%r9d
    3c85:	45 85 c9             	test   %r9d,%r9d
    3c88:	0f 84 9d 00 00 00    	je     0x3d2b
    3c8e:	4c 89 f2             	mov    %r14,%rdx
    3c91:	4c 89 e1             	mov    %r12,%rcx
    3c94:	e8 77 20 00 00       	call   0x5d10
    3c99:	85 c0                	test   %eax,%eax
    3c9b:	78 47                	js     0x3ce4
    3c9d:	41 8d 45 01          	lea    0x1(%r13),%eax
    3ca1:	49 89 e8             	mov    %rbp,%r8
    3ca4:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    3ca8:	31 c0                	xor    %eax,%eax
    3caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3cb0:	8b 0b                	mov    (%rbx),%ecx
    3cb2:	41 8b 10             	mov    (%r8),%edx
    3cb5:	48 83 c3 04          	add    $0x4,%rbx
    3cb9:	49 83 c0 04          	add    $0x4,%r8
    3cbd:	48 01 c8             	add    %rcx,%rax
    3cc0:	48 29 c2             	sub    %rax,%rdx
    3cc3:	48 89 d0             	mov    %rdx,%rax
    3cc6:	41 89 50 fc          	mov    %edx,-0x4(%r8)
    3cca:	48 c1 e8 20          	shr    $0x20,%rax
    3cce:	83 e0 01             	and    $0x1,%eax
    3cd1:	48 39 df             	cmp    %rbx,%rdi
    3cd4:	73 da                	jae    0x3cb0
    3cd6:	48 63 c6             	movslq %esi,%rax
    3cd9:	48 8d 44 85 00       	lea    0x0(%rbp,%rax,4),%rax
    3cde:	8b 08                	mov    (%rax),%ecx
    3ce0:	85 c9                	test   %ecx,%ecx
    3ce2:	74 25                	je     0x3d09
    3ce4:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
    3ce8:	48 83 c4 38          	add    $0x38,%rsp
    3cec:	5b                   	pop    %rbx
    3ced:	5e                   	pop    %rsi
    3cee:	5f                   	pop    %rdi
    3cef:	5d                   	pop    %rbp
    3cf0:	41 5c                	pop    %r12
    3cf2:	41 5d                	pop    %r13
    3cf4:	41 5e                	pop    %r14
    3cf6:	41 5f                	pop    %r15
    3cf8:	c3                   	ret    
    3cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3d00:	8b 10                	mov    (%rax),%edx
    3d02:	85 d2                	test   %edx,%edx
    3d04:	75 0c                	jne    0x3d12
    3d06:	83 ee 01             	sub    $0x1,%esi
    3d09:	48 83 e8 04          	sub    $0x4,%rax
    3d0d:	48 39 c5             	cmp    %rax,%rbp
    3d10:	72 ee                	jb     0x3d00
    3d12:	41 89 74 24 14       	mov    %esi,0x14(%r12)
    3d17:	eb cb                	jmp    0x3ce4
    3d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3d20:	45 8b 03             	mov    (%r11),%r8d
    3d23:	45 85 c0             	test   %r8d,%r8d
    3d26:	75 0c                	jne    0x3d34
    3d28:	83 ee 01             	sub    $0x1,%esi
    3d2b:	49 83 eb 04          	sub    $0x4,%r11
    3d2f:	4c 39 dd             	cmp    %r11,%rbp
    3d32:	72 ec                	jb     0x3d20
    3d34:	41 89 74 24 14       	mov    %esi,0x14(%r12)
    3d39:	4c 89 f2             	mov    %r14,%rdx
    3d3c:	4c 89 e1             	mov    %r12,%rcx
    3d3f:	e8 cc 1f 00 00       	call   0x5d10
    3d44:	85 c0                	test   %eax,%eax
    3d46:	0f 89 51 ff ff ff    	jns    0x3c9d
    3d4c:	eb 96                	jmp    0x3ce4
    3d4e:	90                   	nop
    3d4f:	90                   	nop
    3d50:	41 57                	push   %r15
    3d52:	41 56                	push   %r14
    3d54:	41 55                	push   %r13
    3d56:	41 54                	push   %r12
    3d58:	55                   	push   %rbp
    3d59:	57                   	push   %rdi
    3d5a:	56                   	push   %rsi
    3d5b:	53                   	push   %rbx
    3d5c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    3d63:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
    3d6a:	00 
    3d6b:	45 8b 21             	mov    (%r9),%r12d
    3d6e:	44 89 e0             	mov    %r12d,%eax
    3d71:	83 e0 cf             	and    $0xffffffcf,%eax
    3d74:	41 89 01             	mov    %eax,(%r9)
    3d77:	44 89 e0             	mov    %r12d,%eax
    3d7a:	48 89 cd             	mov    %rcx,%rbp
    3d7d:	89 d6                	mov    %edx,%esi
    3d7f:	83 e0 07             	and    $0x7,%eax
    3d82:	4c 89 84 24 f0 00 00 	mov    %r8,0xf0(%rsp)
    3d89:	00 
    3d8a:	4c 89 cf             	mov    %r9,%rdi
    3d8d:	83 f8 03             	cmp    $0x3,%eax
    3d90:	0f 84 ba 02 00 00    	je     0x4050
    3d96:	44 89 e3             	mov    %r12d,%ebx
    3d99:	83 e3 04             	and    $0x4,%ebx
    3d9c:	89 5c 24 24          	mov    %ebx,0x24(%rsp)
    3da0:	0f 85 1a 02 00 00    	jne    0x3fc0
    3da6:	85 c0                	test   %eax,%eax
    3da8:	0f 84 72 02 00 00    	je     0x4020
    3dae:	8d 50 ff             	lea    -0x1(%rax),%edx
    3db1:	31 c0                	xor    %eax,%eax
    3db3:	83 fa 01             	cmp    $0x1,%edx
    3db6:	0f 87 32 02 00 00    	ja     0x3fee
    3dbc:	44 8b 29             	mov    (%rcx),%r13d
    3dbf:	b8 20 00 00 00       	mov    $0x20,%eax
    3dc4:	31 c9                	xor    %ecx,%ecx
    3dc6:	41 83 fd 20          	cmp    $0x20,%r13d
    3dca:	0f 8e b0 02 00 00    	jle    0x4080
    3dd0:	01 c0                	add    %eax,%eax
    3dd2:	83 c1 01             	add    $0x1,%ecx
    3dd5:	41 39 c5             	cmp    %eax,%r13d
    3dd8:	7f f6                	jg     0x3dd0
    3dda:	e8 d1 18 00 00       	call   0x56b0
    3ddf:	45 8d 55 ff          	lea    -0x1(%r13),%r10d
    3de3:	4c 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%r8
    3dea:	00 
    3deb:	41 c1 fa 05          	sar    $0x5,%r10d
    3def:	49 89 c7             	mov    %rax,%r15
    3df2:	48 8d 50 18          	lea    0x18(%rax),%rdx
    3df6:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
    3dfd:	00 
    3dfe:	4d 63 d2             	movslq %r10d,%r10
    3e01:	49 c1 e2 02          	shl    $0x2,%r10
    3e05:	4d 01 d0             	add    %r10,%r8
    3e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3e0f:	00 
    3e10:	8b 08                	mov    (%rax),%ecx
    3e12:	48 83 c0 04          	add    $0x4,%rax
    3e16:	48 83 c2 04          	add    $0x4,%rdx
    3e1a:	89 4a fc             	mov    %ecx,-0x4(%rdx)
    3e1d:	49 39 c0             	cmp    %rax,%r8
    3e20:	73 ee                	jae    0x3e10
    3e22:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
    3e29:	00 
    3e2a:	49 83 c0 01          	add    $0x1,%r8
    3e2e:	49 8d 42 04          	lea    0x4(%r10),%rax
    3e32:	48 8d 53 01          	lea    0x1(%rbx),%rdx
    3e36:	49 39 d0             	cmp    %rdx,%r8
    3e39:	ba 04 00 00 00       	mov    $0x4,%edx
    3e3e:	48 0f 42 c2          	cmovb  %rdx,%rax
    3e42:	48 c1 f8 02          	sar    $0x2,%rax
    3e46:	89 c3                	mov    %eax,%ebx
    3e48:	49 8d 04 87          	lea    (%r15,%rax,4),%rax
    3e4c:	eb 0e                	jmp    0x3e5c
    3e4e:	66 90                	xchg   %ax,%ax
    3e50:	48 83 e8 04          	sub    $0x4,%rax
    3e54:	85 db                	test   %ebx,%ebx
    3e56:	0f 84 34 02 00 00    	je     0x4090
    3e5c:	44 8b 58 14          	mov    0x14(%rax),%r11d
    3e60:	89 da                	mov    %ebx,%edx
    3e62:	83 eb 01             	sub    $0x1,%ebx
    3e65:	45 85 db             	test   %r11d,%r11d
    3e68:	74 e6                	je     0x3e50
    3e6a:	48 63 db             	movslq %ebx,%rbx
    3e6d:	41 89 57 14          	mov    %edx,0x14(%r15)
    3e71:	41 0f bd 44 9f 18    	bsr    0x18(%r15,%rbx,4),%eax
    3e77:	89 d3                	mov    %edx,%ebx
    3e79:	c1 e3 05             	shl    $0x5,%ebx
    3e7c:	83 f0 1f             	xor    $0x1f,%eax
    3e7f:	29 c3                	sub    %eax,%ebx
    3e81:	4c 89 f9             	mov    %r15,%rcx
    3e84:	e8 a7 16 00 00       	call   0x5530
    3e89:	89 74 24 38          	mov    %esi,0x38(%rsp)
    3e8d:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    3e91:	85 c0                	test   %eax,%eax
    3e93:	0f 85 07 02 00 00    	jne    0x40a0
    3e99:	45 8b 57 14          	mov    0x14(%r15),%r10d
    3e9d:	45 85 d2             	test   %r10d,%r10d
    3ea0:	0f 84 72 01 00 00    	je     0x4018
    3ea6:	48 8d 54 24 7c       	lea    0x7c(%rsp),%rdx
    3eab:	4c 89 f9             	mov    %r15,%rcx
    3eae:	e8 7d 20 00 00       	call   0x5f30
    3eb3:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    3eb7:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3ebb:	66 49 0f 7e c0       	movq   %xmm0,%r8
    3ec0:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3ec5:	49 c1 e8 20          	shr    $0x20,%r8
    3ec9:	01 d9                	add    %ebx,%ecx
    3ecb:	89 c0                	mov    %eax,%eax
    3ecd:	41 81 e0 ff ff 0f 00 	and    $0xfffff,%r8d
    3ed4:	8d 51 ff             	lea    -0x1(%rcx),%edx
    3ed7:	41 81 c8 00 00 f0 3f 	or     $0x3ff00000,%r8d
    3ede:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
    3ee2:	41 89 d1             	mov    %edx,%r9d
    3ee5:	f2 0f 59 0d cb 45 00 	mulsd  0x45cb(%rip),%xmm1        # 0x84b8
    3eec:	00 
    3eed:	4d 89 c2             	mov    %r8,%r10
    3ef0:	41 c1 f9 1f          	sar    $0x1f,%r9d
    3ef4:	49 c1 e2 20          	shl    $0x20,%r10
    3ef8:	45 89 cb             	mov    %r9d,%r11d
    3efb:	4c 09 d0             	or     %r10,%rax
    3efe:	41 31 d3             	xor    %edx,%r11d
    3f01:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3f06:	f2 0f 5c 05 92 45 00 	subsd  0x4592(%rip),%xmm0        # 0x84a0
    3f0d:	00 
    3f0e:	45 29 cb             	sub    %r9d,%r11d
    3f11:	f2 0f 59 05 8f 45 00 	mulsd  0x458f(%rip),%xmm0        # 0x84a8
    3f18:	00 
    3f19:	41 81 eb 35 04 00 00 	sub    $0x435,%r11d
    3f20:	f2 0f 58 05 88 45 00 	addsd  0x4588(%rip),%xmm0        # 0x84b0
    3f27:	00 
    3f28:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3f2c:	45 85 db             	test   %r11d,%r11d
    3f2f:	7e 15                	jle    0x3f46
    3f31:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3f35:	f2 41 0f 2a cb       	cvtsi2sd %r11d,%xmm1
    3f3a:	f2 0f 59 0d 7e 45 00 	mulsd  0x457e(%rip),%xmm1        # 0x84c0
    3f41:	00 
    3f42:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3f46:	66 0f ef f6          	pxor   %xmm6,%xmm6
    3f4a:	f2 44 0f 2c f0       	cvttsd2si %xmm0,%r14d
    3f4f:	66 0f 2f f0          	comisd %xmm0,%xmm6
    3f53:	0f 87 8f 07 00 00    	ja     0x46e8
    3f59:	41 89 d3             	mov    %edx,%r11d
    3f5c:	89 c0                	mov    %eax,%eax
    3f5e:	41 c1 e3 14          	shl    $0x14,%r11d
    3f62:	45 01 d8             	add    %r11d,%r8d
    3f65:	49 c1 e0 20          	shl    $0x20,%r8
    3f69:	4c 09 c0             	or     %r8,%rax
    3f6c:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    3f71:	49 89 c2             	mov    %rax,%r10
    3f74:	89 d8                	mov    %ebx,%eax
    3f76:	29 d0                	sub    %edx,%eax
    3f78:	44 8d 58 ff          	lea    -0x1(%rax),%r11d
    3f7c:	41 83 fe 16          	cmp    $0x16,%r14d
    3f80:	0f 87 3a 01 00 00    	ja     0x40c0
    3f86:	4c 8b 05 d3 47 00 00 	mov    0x47d3(%rip),%r8        # 0x8760
    3f8d:	49 63 d6             	movslq %r14d,%rdx
    3f90:	66 49 0f 6e ea       	movq   %r10,%xmm5
    3f95:	f2 41 0f 10 04 d0    	movsd  (%r8,%rdx,8),%xmm0
    3f9b:	66 0f 2f c5          	comisd %xmm5,%xmm0
    3f9f:	0f 86 cb 03 00 00    	jbe    0x4370
    3fa5:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
    3fac:	00 
    3fad:	41 83 ee 01          	sub    $0x1,%r14d
    3fb1:	e9 12 01 00 00       	jmp    0x40c8
    3fb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    3fbd:	00 00 00 
    3fc0:	83 f8 04             	cmp    $0x4,%eax
    3fc3:	75 4b                	jne    0x4010
    3fc5:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    3fcc:	00 
    3fcd:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    3fd4:	00 
    3fd5:	41 b8 03 00 00 00    	mov    $0x3,%r8d
    3fdb:	48 8d 0d b7 44 00 00 	lea    0x44b7(%rip),%rcx        # 0x8499
    3fe2:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
    3fe8:	e8 43 fb ff ff       	call   0x3b30
    3fed:	90                   	nop
    3fee:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
    3ff5:	00 
    3ff6:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    3ffd:	5b                   	pop    %rbx
    3ffe:	5e                   	pop    %rsi
    3fff:	5f                   	pop    %rdi
    4000:	5d                   	pop    %rbp
    4001:	41 5c                	pop    %r12
    4003:	41 5d                	pop    %r13
    4005:	41 5e                	pop    %r14
    4007:	41 5f                	pop    %r15
    4009:	c3                   	ret    
    400a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4010:	31 c0                	xor    %eax,%eax
    4012:	eb da                	jmp    0x3fee
    4014:	0f 1f 40 00          	nopl   0x0(%rax)
    4018:	4c 89 f9             	mov    %r15,%rcx
    401b:	e8 90 17 00 00       	call   0x57b0
    4020:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    4027:	00 
    4028:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    402f:	00 
    4030:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4036:	48 8d 0d 60 44 00 00 	lea    0x4460(%rip),%rcx        # 0x849d
    403d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    4043:	e8 e8 fa ff ff       	call   0x3b30
    4048:	eb a4                	jmp    0x3fee
    404a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4050:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    4057:	00 
    4058:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    405f:	00 
    4060:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    4066:	48 8d 0d 23 44 00 00 	lea    0x4423(%rip),%rcx        # 0x8490
    406d:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
    4073:	e8 b8 fa ff ff       	call   0x3b30
    4078:	e9 71 ff ff ff       	jmp    0x3fee
    407d:	0f 1f 00             	nopl   (%rax)
    4080:	89 d9                	mov    %ebx,%ecx
    4082:	e9 53 fd ff ff       	jmp    0x3dda
    4087:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    408e:	00 00 
    4090:	41 c7 47 14 00 00 00 	movl   $0x0,0x14(%r15)
    4097:	00 
    4098:	e9 e4 fd ff ff       	jmp    0x3e81
    409d:	0f 1f 00             	nopl   (%rax)
    40a0:	89 c2                	mov    %eax,%edx
    40a2:	4c 89 f9             	mov    %r15,%rcx
    40a5:	e8 86 13 00 00       	call   0x5430
    40aa:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    40ae:	8d 14 30             	lea    (%rax,%rsi,1),%edx
    40b1:	29 c3                	sub    %eax,%ebx
    40b3:	89 54 24 38          	mov    %edx,0x38(%rsp)
    40b7:	e9 dd fd ff ff       	jmp    0x3e99
    40bc:	0f 1f 40 00          	nopl   0x0(%rax)
    40c0:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
    40c7:	00 
    40c8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    40cf:	00 
    40d0:	45 85 db             	test   %r11d,%r11d
    40d3:	0f 88 f7 05 00 00    	js     0x46d0
    40d9:	45 85 f6             	test   %r14d,%r14d
    40dc:	0f 89 a7 02 00 00    	jns    0x4389
    40e2:	44 89 f0             	mov    %r14d,%eax
    40e5:	44 29 74 24 44       	sub    %r14d,0x44(%rsp)
    40ea:	f7 d8                	neg    %eax
    40ec:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    40f1:	45 31 f6             	xor    %r14d,%r14d
    40f4:	89 44 24 54          	mov    %eax,0x54(%rsp)
    40f8:	83 bc 24 00 01 00 00 	cmpl   $0x9,0x100(%rsp)
    40ff:	09 
    4100:	0f 87 9a 02 00 00    	ja     0x43a0
    4106:	83 bc 24 00 01 00 00 	cmpl   $0x5,0x100(%rsp)
    410d:	05 
    410e:	0f 8f fc 05 00 00    	jg     0x4710
    4114:	81 c1 fd 03 00 00    	add    $0x3fd,%ecx
    411a:	31 c0                	xor    %eax,%eax
    411c:	81 f9 f7 07 00 00    	cmp    $0x7f7,%ecx
    4122:	0f 96 c0             	setbe  %al
    4125:	89 44 24 40          	mov    %eax,0x40(%rsp)
    4129:	83 bc 24 00 01 00 00 	cmpl   $0x4,0x100(%rsp)
    4130:	04 
    4131:	0f 84 81 0b 00 00    	je     0x4cb8
    4137:	83 bc 24 00 01 00 00 	cmpl   $0x5,0x100(%rsp)
    413e:	05 
    413f:	0f 84 eb 09 00 00    	je     0x4b30
    4145:	83 bc 24 00 01 00 00 	cmpl   $0x2,0x100(%rsp)
    414c:	02 
    414d:	0f 85 e5 06 00 00    	jne    0x4838
    4153:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    415a:	00 
    415b:	44 8b 8c 24 08 01 00 	mov    0x108(%rsp),%r9d
    4162:	00 
    4163:	b9 01 00 00 00       	mov    $0x1,%ecx
    4168:	45 85 c9             	test   %r9d,%r9d
    416b:	0f 4f 8c 24 08 01 00 	cmovg  0x108(%rsp),%ecx
    4172:	00 
    4173:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    4177:	89 4c 24 6c          	mov    %ecx,0x6c(%rsp)
    417b:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
    417f:	89 8c 24 08 01 00 00 	mov    %ecx,0x108(%rsp)
    4186:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
    418b:	e8 60 f9 ff ff       	call   0x3af0
    4190:	83 7c 24 28 0e       	cmpl   $0xe,0x28(%rsp)
    4195:	44 0f b6 4c 24 40    	movzbl 0x40(%rsp),%r9d
    419b:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    41a0:	0f 96 c0             	setbe  %al
    41a3:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
    41a8:	41 21 c1             	and    %eax,%r9d
    41ab:	8b 45 0c             	mov    0xc(%rbp),%eax
    41ae:	83 e8 01             	sub    $0x1,%eax
    41b1:	89 44 24 40          	mov    %eax,0x40(%rsp)
    41b5:	74 29                	je     0x41e0
    41b7:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    41bb:	b8 02 00 00 00       	mov    $0x2,%eax
    41c0:	85 c9                	test   %ecx,%ecx
    41c2:	0f 49 c1             	cmovns %ecx,%eax
    41c5:	41 83 e4 08          	and    $0x8,%r12d
    41c9:	89 44 24 40          	mov    %eax,0x40(%rsp)
    41cd:	89 c1                	mov    %eax,%ecx
    41cf:	0f 84 e3 05 00 00    	je     0x47b8
    41d5:	b8 03 00 00 00       	mov    $0x3,%eax
    41da:	29 c8                	sub    %ecx,%eax
    41dc:	89 44 24 40          	mov    %eax,0x40(%rsp)
    41e0:	45 84 c9             	test   %r9b,%r9b
    41e3:	0f 84 cf 05 00 00    	je     0x47b8
    41e9:	8b 44 24 40          	mov    0x40(%rsp),%eax
    41ed:	0b 44 24 50          	or     0x50(%rsp),%eax
    41f1:	0f 85 c1 05 00 00    	jne    0x47b8
    41f7:	44 8b 44 24 68       	mov    0x68(%rsp),%r8d
    41fc:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    4203:	00 
    4204:	f2 0f 10 44 24 60    	movsd  0x60(%rsp),%xmm0
    420a:	45 85 c0             	test   %r8d,%r8d
    420d:	74 12                	je     0x4221
    420f:	f2 0f 10 25 b9 42 00 	movsd  0x42b9(%rip),%xmm4        # 0x84d0
    4216:	00 
    4217:	66 0f 2f e0          	comisd %xmm0,%xmm4
    421b:	0f 87 54 0e 00 00    	ja     0x5075
    4221:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4225:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    4229:	f2 0f 58 0d b7 42 00 	addsd  0x42b7(%rip),%xmm1        # 0x84e8
    4230:	00 
    4231:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    4236:	66 48 0f 7e c8       	movq   %xmm1,%rax
    423b:	48 c1 ea 20          	shr    $0x20,%rdx
    423f:	89 c0                	mov    %eax,%eax
    4241:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
    4247:	48 c1 e2 20          	shl    $0x20,%rdx
    424b:	48 09 d0             	or     %rdx,%rax
    424e:	8b 54 24 28          	mov    0x28(%rsp),%edx
    4252:	85 d2                	test   %edx,%edx
    4254:	0f 84 26 05 00 00    	je     0x4780
    425a:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
    425f:	45 31 e4             	xor    %r12d,%r12d
    4262:	48 8b 15 f7 44 00 00 	mov    0x44f7(%rip),%rdx        # 0x8760
    4269:	66 48 0f 6e d0       	movq   %rax,%xmm2
    426e:	41 8d 42 ff          	lea    -0x1(%r10),%eax
    4272:	48 98                	cltq   
    4274:	f2 0f 10 24 c2       	movsd  (%rdx,%rax,8),%xmm4
    4279:	8b 44 24 48          	mov    0x48(%rsp),%eax
    427d:	85 c0                	test   %eax,%eax
    427f:	0f 84 ff 0c 00 00    	je     0x4f84
    4285:	f2 0f 10 0d 83 42 00 	movsd  0x4283(%rip),%xmm1        # 0x8510
    428c:	00 
    428d:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    4291:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    4296:	f2 0f 5e cc          	divsd  %xmm4,%xmm1
    429a:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    429e:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    42a2:	66 0f ef d2          	pxor   %xmm2,%xmm2
    42a6:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
    42aa:	83 c0 30             	add    $0x30,%eax
    42ad:	88 01                	mov    %al,(%rcx)
    42af:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    42b3:	66 0f 2f c8          	comisd %xmm0,%xmm1
    42b7:	0f 87 c9 0f 00 00    	ja     0x5286
    42bd:	f2 0f 10 25 0b 42 00 	movsd  0x420b(%rip),%xmm4        # 0x84d0
    42c4:	00 
    42c5:	f2 0f 10 1d 0b 42 00 	movsd  0x420b(%rip),%xmm3        # 0x84d8
    42cc:	00 
    42cd:	eb 41                	jmp    0x4310
    42cf:	90                   	nop
    42d0:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    42d4:	83 c0 01             	add    $0x1,%eax
    42d7:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    42db:	44 39 d0             	cmp    %r10d,%eax
    42de:	0f 8d c5 04 00 00    	jge    0x47a9
    42e4:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    42e8:	66 0f ef d2          	pxor   %xmm2,%xmm2
    42ec:	48 83 c2 01          	add    $0x1,%rdx
    42f0:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    42f4:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    42f8:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
    42fc:	83 c0 30             	add    $0x30,%eax
    42ff:	88 42 ff             	mov    %al,-0x1(%rdx)
    4302:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    4306:	66 0f 2f c8          	comisd %xmm0,%xmm1
    430a:	0f 87 76 0f 00 00    	ja     0x5286
    4310:	66 0f 10 d4          	movupd %xmm4,%xmm2
    4314:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
    4318:	66 0f 2f ca          	comisd %xmm2,%xmm1
    431c:	76 b2                	jbe    0x42d0
    431e:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    4323:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    4327:	49 89 d0             	mov    %rdx,%r8
    432a:	89 44 24 44          	mov    %eax,0x44(%rsp)
    432e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4333:	eb 13                	jmp    0x4348
    4335:	0f 1f 00             	nopl   (%rax)
    4338:	48 39 c2             	cmp    %rax,%rdx
    433b:	0f 84 95 0e 00 00    	je     0x51d6
    4341:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    4345:	49 89 d0             	mov    %rdx,%r8
    4348:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
    434c:	80 f9 39             	cmp    $0x39,%cl
    434f:	74 e7                	je     0x4338
    4351:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
    4356:	83 c1 01             	add    $0x1,%ecx
    4359:	88 0a                	mov    %cl,(%rdx)
    435b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4362:	00 
    4363:	e9 15 03 00 00       	jmp    0x467d
    4368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    436f:	00 
    4370:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
    4377:	00 
    4378:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    437f:	00 
    4380:	45 85 db             	test   %r11d,%r11d
    4383:	0f 88 47 03 00 00    	js     0x46d0
    4389:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    438e:	45 01 f3             	add    %r14d,%r11d
    4391:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    4398:	00 
    4399:	e9 5a fd ff ff       	jmp    0x40f8
    439e:	66 90                	xchg   %ax,%ax
    43a0:	c7 84 24 00 01 00 00 	movl   $0x0,0x100(%rsp)
    43a7:	00 00 00 00 
    43ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
    43af:	44 89 5c 24 28       	mov    %r11d,0x28(%rsp)
    43b4:	f2 41 0f 2a c5       	cvtsi2sd %r13d,%xmm0
    43b9:	f2 0f 59 05 07 41 00 	mulsd  0x4107(%rip),%xmm0        # 0x84c8
    43c0:	00 
    43c1:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    43c5:	83 c1 03             	add    $0x3,%ecx
    43c8:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    43cc:	e8 1f f7 ff ff       	call   0x3af0
    43d1:	44 8b 5c 24 28       	mov    0x28(%rsp),%r11d
    43d6:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    43db:	8b 45 0c             	mov    0xc(%rbp),%eax
    43de:	83 e8 01             	sub    $0x1,%eax
    43e1:	89 44 24 40          	mov    %eax,0x40(%rsp)
    43e5:	0f 85 3d 03 00 00    	jne    0x4728
    43eb:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    43ef:	85 c9                	test   %ecx,%ecx
    43f1:	0f 88 a6 0d 00 00    	js     0x519d
    43f7:	8b 44 24 50          	mov    0x50(%rsp),%eax
    43fb:	3b 45 14             	cmp    0x14(%rbp),%eax
    43fe:	0f 8e d6 08 00 00    	jle    0x4cda
    4404:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
    440b:	00 00 00 00 
    440f:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
    4416:	ff 
    4417:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    441e:	ff 
    441f:	90                   	nop
    4420:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    4424:	41 29 dd             	sub    %ebx,%r13d
    4427:	8b 55 04             	mov    0x4(%rbp),%edx
    442a:	41 8d 45 01          	lea    0x1(%r13),%eax
    442e:	44 29 e9             	sub    %r13d,%ecx
    4431:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4435:	39 d1                	cmp    %edx,%ecx
    4437:	0f 8d 03 07 00 00    	jge    0x4b40
    443d:	8b 8c 24 00 01 00 00 	mov    0x100(%rsp),%ecx
    4444:	83 e9 03             	sub    $0x3,%ecx
    4447:	83 e1 fd             	and    $0xfffffffd,%ecx
    444a:	0f 84 f0 06 00 00    	je     0x4b40
    4450:	8b 44 24 38          	mov    0x38(%rsp),%eax
    4454:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
    4459:	29 d0                	sub    %edx,%eax
    445b:	83 c0 01             	add    $0x1,%eax
    445e:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
    4465:	01 
    4466:	0f 9f c1             	setg   %cl
    4469:	45 85 d2             	test   %r10d,%r10d
    446c:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4470:	0f 9f c2             	setg   %dl
    4473:	84 d1                	test   %dl,%cl
    4475:	74 09                	je     0x4480
    4477:	44 39 d0             	cmp    %r10d,%eax
    447a:	0f 8f ce 06 00 00    	jg     0x4b4e
    4480:	8b 54 24 44          	mov    0x44(%rsp),%edx
    4484:	41 01 c3             	add    %eax,%r11d
    4487:	44 8b 6c 24 54       	mov    0x54(%rsp),%r13d
    448c:	01 d0                	add    %edx,%eax
    448e:	89 54 24 38          	mov    %edx,0x38(%rsp)
    4492:	89 44 24 44          	mov    %eax,0x44(%rsp)
    4496:	b9 01 00 00 00       	mov    $0x1,%ecx
    449b:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
    44a0:	e8 2b 14 00 00       	call   0x58d0
    44a5:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    44ac:	00 
    44ad:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
    44b2:	49 89 c4             	mov    %rax,%r12
    44b5:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    44b9:	85 c9                	test   %ecx,%ecx
    44bb:	7e 1f                	jle    0x44dc
    44bd:	45 85 db             	test   %r11d,%r11d
    44c0:	7e 1a                	jle    0x44dc
    44c2:	44 39 d9             	cmp    %r11d,%ecx
    44c5:	89 c8                	mov    %ecx,%eax
    44c7:	41 0f 4f c3          	cmovg  %r11d,%eax
    44cb:	29 44 24 44          	sub    %eax,0x44(%rsp)
    44cf:	29 c1                	sub    %eax,%ecx
    44d1:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    44d5:	41 29 c3             	sub    %eax,%r11d
    44d8:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
    44dc:	8b 54 24 54          	mov    0x54(%rsp),%edx
    44e0:	85 d2                	test   %edx,%edx
    44e2:	74 53                	je     0x4537
    44e4:	8b 44 24 48          	mov    0x48(%rsp),%eax
    44e8:	85 c0                	test   %eax,%eax
    44ea:	0f 84 c0 08 00 00    	je     0x4db0
    44f0:	45 85 ed             	test   %r13d,%r13d
    44f3:	7e 35                	jle    0x452a
    44f5:	4c 89 e1             	mov    %r12,%rcx
    44f8:	44 89 ea             	mov    %r13d,%edx
    44fb:	44 89 5c 24 60       	mov    %r11d,0x60(%rsp)
    4500:	e8 4b 15 00 00       	call   0x5a50
    4505:	4c 89 fa             	mov    %r15,%rdx
    4508:	48 89 c1             	mov    %rax,%rcx
    450b:	49 89 c4             	mov    %rax,%r12
    450e:	e8 ed 13 00 00       	call   0x5900
    4513:	4c 89 f9             	mov    %r15,%rcx
    4516:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    451b:	e8 90 12 00 00       	call   0x57b0
    4520:	4c 8b 7c 24 58       	mov    0x58(%rsp),%r15
    4525:	44 8b 5c 24 60       	mov    0x60(%rsp),%r11d
    452a:	8b 54 24 54          	mov    0x54(%rsp),%edx
    452e:	44 29 ea             	sub    %r13d,%edx
    4531:	0f 85 a9 08 00 00    	jne    0x4de0
    4537:	b9 01 00 00 00       	mov    $0x1,%ecx
    453c:	44 89 5c 24 54       	mov    %r11d,0x54(%rsp)
    4541:	e8 8a 13 00 00       	call   0x58d0
    4546:	83 fb 01             	cmp    $0x1,%ebx
    4549:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
    454e:	0f 94 c3             	sete   %bl
    4551:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
    4558:	01 
    4559:	49 89 c5             	mov    %rax,%r13
    455c:	0f 9e c0             	setle  %al
    455f:	21 c3                	and    %eax,%ebx
    4561:	45 85 f6             	test   %r14d,%r14d
    4564:	0f 8f 66 03 00 00    	jg     0x48d0
    456a:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    4571:	00 
    4572:	84 db                	test   %bl,%bl
    4574:	0f 85 96 0b 00 00    	jne    0x5110
    457a:	be 1f 00 00 00       	mov    $0x1f,%esi
    457f:	45 85 f6             	test   %r14d,%r14d
    4582:	0f 85 6b 03 00 00    	jne    0x48f3
    4588:	44 29 de             	sub    %r11d,%esi
    458b:	44 8b 44 24 44       	mov    0x44(%rsp),%r8d
    4590:	83 ee 04             	sub    $0x4,%esi
    4593:	83 e6 1f             	and    $0x1f,%esi
    4596:	41 01 f0             	add    %esi,%r8d
    4599:	89 74 24 7c          	mov    %esi,0x7c(%rsp)
    459d:	89 f2                	mov    %esi,%edx
    459f:	45 85 c0             	test   %r8d,%r8d
    45a2:	7e 1c                	jle    0x45c0
    45a4:	44 89 c2             	mov    %r8d,%edx
    45a7:	4c 89 f9             	mov    %r15,%rcx
    45aa:	44 89 5c 24 44       	mov    %r11d,0x44(%rsp)
    45af:	e8 2c 16 00 00       	call   0x5be0
    45b4:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
    45b8:	44 8b 5c 24 44       	mov    0x44(%rsp),%r11d
    45bd:	49 89 c7             	mov    %rax,%r15
    45c0:	44 01 da             	add    %r11d,%edx
    45c3:	85 d2                	test   %edx,%edx
    45c5:	7e 0b                	jle    0x45d2
    45c7:	4c 89 e9             	mov    %r13,%rcx
    45ca:	e8 11 16 00 00       	call   0x5be0
    45cf:	49 89 c5             	mov    %rax,%r13
    45d2:	8b 44 24 68          	mov    0x68(%rsp),%eax
    45d6:	83 bc 24 00 01 00 00 	cmpl   $0x2,0x100(%rsp)
    45dd:	02 
    45de:	40 0f 9f c5          	setg   %bpl
    45e2:	85 c0                	test   %eax,%eax
    45e4:	0f 85 a6 05 00 00    	jne    0x4b90
    45ea:	8b 44 24 28          	mov    0x28(%rsp),%eax
    45ee:	85 c0                	test   %eax,%eax
    45f0:	0f 8f 1a 03 00 00    	jg     0x4910
    45f6:	40 84 ed             	test   %bpl,%bpl
    45f9:	0f 84 11 03 00 00    	je     0x4910
    45ff:	44 8b 74 24 28       	mov    0x28(%rsp),%r14d
    4604:	45 85 f6             	test   %r14d,%r14d
    4607:	0f 85 a1 02 00 00    	jne    0x48ae
    460d:	4c 89 e9             	mov    %r13,%rcx
    4610:	45 31 c0             	xor    %r8d,%r8d
    4613:	ba 05 00 00 00       	mov    $0x5,%edx
    4618:	e8 03 12 00 00       	call   0x5820
    461d:	4c 89 f9             	mov    %r15,%rcx
    4620:	48 89 c2             	mov    %rax,%rdx
    4623:	49 89 c5             	mov    %rax,%r13
    4626:	e8 e5 16 00 00       	call   0x5d10
    462b:	85 c0                	test   %eax,%eax
    462d:	0f 8e 7b 02 00 00    	jle    0x48ae
    4633:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4637:	83 c0 02             	add    $0x2,%eax
    463a:	89 44 24 44          	mov    %eax,0x44(%rsp)
    463e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4643:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
    4649:	c6 00 31             	movb   $0x31,(%rax)
    464c:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4653:	00 
    4654:	4c 89 e9             	mov    %r13,%rcx
    4657:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    465c:	e8 4f 11 00 00       	call   0x57b0
    4661:	4d 85 e4             	test   %r12,%r12
    4664:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4669:	74 12                	je     0x467d
    466b:	4c 89 e1             	mov    %r12,%rcx
    466e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    4673:	e8 38 11 00 00       	call   0x57b0
    4678:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    467d:	4c 89 f9             	mov    %r15,%rcx
    4680:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    4685:	e8 26 11 00 00       	call   0x57b0
    468a:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    468f:	8b 5c 24 44          	mov    0x44(%rsp),%ebx
    4693:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    469a:	00 
    469b:	48 83 bc 24 18 01 00 	cmpq   $0x0,0x118(%rsp)
    46a2:	00 00 
    46a4:	c6 06 00             	movb   $0x0,(%rsi)
    46a7:	89 18                	mov    %ebx,(%rax)
    46a9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    46ae:	74 0b                	je     0x46bb
    46b0:	48 8b 9c 24 18 01 00 	mov    0x118(%rsp),%rbx
    46b7:	00 
    46b8:	48 89 33             	mov    %rsi,(%rbx)
    46bb:	8b 74 24 24          	mov    0x24(%rsp),%esi
    46bf:	09 37                	or     %esi,(%rdi)
    46c1:	e9 28 f9 ff ff       	jmp    0x3fee
    46c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    46cd:	00 00 00 
    46d0:	ba 01 00 00 00       	mov    $0x1,%edx
    46d5:	45 31 db             	xor    %r11d,%r11d
    46d8:	29 c2                	sub    %eax,%edx
    46da:	89 54 24 44          	mov    %edx,0x44(%rsp)
    46de:	e9 f6 f9 ff ff       	jmp    0x40d9
    46e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    46e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    46ec:	f2 41 0f 2a ce       	cvtsi2sd %r14d,%xmm1
    46f1:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    46f5:	7a 06                	jp     0x46fd
    46f7:	0f 84 5c f8 ff ff    	je     0x3f59
    46fd:	41 83 ee 01          	sub    $0x1,%r14d
    4701:	e9 53 f8 ff ff       	jmp    0x3f59
    4706:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    470d:	00 00 00 
    4710:	83 ac 24 00 01 00 00 	subl   $0x4,0x100(%rsp)
    4717:	04 
    4718:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
    471f:	00 
    4720:	e9 04 fa ff ff       	jmp    0x4129
    4725:	0f 1f 00             	nopl   (%rax)
    4728:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
    472f:	00 00 00 00 
    4733:	45 31 c9             	xor    %r9d,%r9d
    4736:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    473d:	00 
    473e:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
    4745:	ff 
    4746:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    474d:	ff 
    474e:	e9 64 fa ff ff       	jmp    0x41b7
    4753:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4757:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    475b:	f2 0f 58 0d 85 3d 00 	addsd  0x3d85(%rip),%xmm1        # 0x84e8
    4762:	00 
    4763:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    4768:	66 48 0f 7e c8       	movq   %xmm1,%rax
    476d:	48 c1 ea 20          	shr    $0x20,%rdx
    4771:	89 c0                	mov    %eax,%eax
    4773:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
    4779:	48 c1 e2 20          	shl    $0x20,%rdx
    477d:	48 09 d0             	or     %rdx,%rax
    4780:	f2 0f 5c 05 68 3d 00 	subsd  0x3d68(%rip),%xmm0        # 0x84f0
    4787:	00 
    4788:	66 48 0f 6e c8       	movq   %rax,%xmm1
    478d:	66 0f 2f c1          	comisd %xmm1,%xmm0
    4791:	0f 87 9d 09 00 00    	ja     0x5134
    4797:	66 0f 57 0d 61 3d 00 	xorpd  0x3d61(%rip),%xmm1        # 0x8500
    479e:	00 
    479f:	66 0f 2f c8          	comisd %xmm0,%xmm1
    47a3:	0f 87 ff 00 00 00    	ja     0x48a8
    47a9:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
    47b0:	00 
    47b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    47b8:	44 8b 4c 24 38       	mov    0x38(%rsp),%r9d
    47bd:	45 85 c9             	test   %r9d,%r9d
    47c0:	0f 88 ba 00 00 00    	js     0x4880
    47c6:	8b 44 24 50          	mov    0x50(%rsp),%eax
    47ca:	39 45 14             	cmp    %eax,0x14(%rbp)
    47cd:	0f 8c ad 00 00 00    	jl     0x4880
    47d3:	48 8b 15 86 3f 00 00 	mov    0x3f86(%rip),%rdx        # 0x8760
    47da:	44 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8d
    47e1:	00 
    47e2:	48 98                	cltq   
    47e4:	48 89 c6             	mov    %rax,%rsi
    47e7:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    47ec:	45 85 c0             	test   %r8d,%r8d
    47ef:	0f 89 03 05 00 00    	jns    0x4cf8
    47f5:	8b 44 24 28          	mov    0x28(%rsp),%eax
    47f9:	85 c0                	test   %eax,%eax
    47fb:	0f 8f f7 04 00 00    	jg     0x4cf8
    4801:	0f 85 a1 00 00 00    	jne    0x48a8
    4807:	f2 0f 59 15 e1 3c 00 	mulsd  0x3ce1(%rip),%xmm2        # 0x84f0
    480e:	00 
    480f:	66 0f 2f 54 24 60    	comisd 0x60(%rsp),%xmm2
    4815:	0f 83 8d 00 00 00    	jae    0x48a8
    481b:	83 c6 02             	add    $0x2,%esi
    481e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4823:	45 31 ed             	xor    %r13d,%r13d
    4826:	45 31 e4             	xor    %r12d,%r12d
    4829:	89 74 24 44          	mov    %esi,0x44(%rsp)
    482d:	e9 11 fe ff ff       	jmp    0x4643
    4832:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4838:	83 bc 24 00 01 00 00 	cmpl   $0x3,0x100(%rsp)
    483f:	03 
    4840:	0f 85 65 fb ff ff    	jne    0x43ab
    4846:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    484d:	00 
    484e:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4852:	03 84 24 08 01 00 00 	add    0x108(%rsp),%eax
    4859:	89 44 24 6c          	mov    %eax,0x6c(%rsp)
    485d:	83 c0 01             	add    $0x1,%eax
    4860:	89 44 24 28          	mov    %eax,0x28(%rsp)
    4864:	85 c0                	test   %eax,%eax
    4866:	0f 8e 5c 04 00 00    	jle    0x4cc8
    486c:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4870:	89 c1                	mov    %eax,%ecx
    4872:	e9 0f f9 ff ff       	jmp    0x4186
    4877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    487e:	00 00 
    4880:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    4884:	85 c9                	test   %ecx,%ecx
    4886:	0f 85 94 fb ff ff    	jne    0x4420
    488c:	8b 44 24 44          	mov    0x44(%rsp),%eax
    4890:	44 8b 6c 24 54       	mov    0x54(%rsp),%r13d
    4895:	45 31 e4             	xor    %r12d,%r12d
    4898:	89 44 24 38          	mov    %eax,0x38(%rsp)
    489c:	e9 14 fc ff ff       	jmp    0x44b5
    48a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    48a8:	45 31 ed             	xor    %r13d,%r13d
    48ab:	45 31 e4             	xor    %r12d,%r12d
    48ae:	8b 84 24 08 01 00 00 	mov    0x108(%rsp),%eax
    48b5:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    48bc:	00 
    48bd:	f7 d8                	neg    %eax
    48bf:	89 44 24 44          	mov    %eax,0x44(%rsp)
    48c3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    48c8:	e9 87 fd ff ff       	jmp    0x4654
    48cd:	0f 1f 00             	nopl   (%rax)
    48d0:	4c 89 e9             	mov    %r13,%rcx
    48d3:	44 89 f2             	mov    %r14d,%edx
    48d6:	e8 75 11 00 00       	call   0x5a50
    48db:	84 db                	test   %bl,%bl
    48dd:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
    48e2:	49 89 c5             	mov    %rax,%r13
    48e5:	0f 85 a2 08 00 00    	jne    0x518d
    48eb:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    48f2:	00 
    48f3:	41 8b 45 14          	mov    0x14(%r13),%eax
    48f7:	83 e8 01             	sub    $0x1,%eax
    48fa:	48 98                	cltq   
    48fc:	41 0f bd 74 85 18    	bsr    0x18(%r13,%rax,4),%esi
    4902:	83 f6 1f             	xor    $0x1f,%esi
    4905:	e9 7e fc ff ff       	jmp    0x4588
    490a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4910:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4914:	8b 6c 24 48          	mov    0x48(%rsp),%ebp
    4918:	83 c0 01             	add    $0x1,%eax
    491b:	89 44 24 44          	mov    %eax,0x44(%rsp)
    491f:	85 ed                	test   %ebp,%ebp
    4921:	0f 84 c9 02 00 00    	je     0x4bf0
    4927:	8b 54 24 38          	mov    0x38(%rsp),%edx
    492b:	01 f2                	add    %esi,%edx
    492d:	85 d2                	test   %edx,%edx
    492f:	7e 0b                	jle    0x493c
    4931:	4c 89 e1             	mov    %r12,%rcx
    4934:	e8 a7 12 00 00       	call   0x5be0
    4939:	49 89 c4             	mov    %rax,%r12
    493c:	8b 5c 24 54          	mov    0x54(%rsp),%ebx
    4940:	4d 89 e6             	mov    %r12,%r14
    4943:	85 db                	test   %ebx,%ebx
    4945:	0f 85 88 07 00 00    	jne    0x50d3
    494b:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4950:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4957:	00 
    4958:	48 89 bc 24 f8 00 00 	mov    %rdi,0xf8(%rsp)
    495f:	00 
    4960:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    4965:	e9 aa 00 00 00       	jmp    0x4a14
    496a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4970:	48 89 c1             	mov    %rax,%rcx
    4973:	e8 38 0e 00 00       	call   0x57b0
    4978:	b8 01 00 00 00       	mov    $0x1,%eax
    497d:	85 f6                	test   %esi,%esi
    497f:	0f 88 f0 04 00 00    	js     0x4e75
    4985:	0b b4 24 00 01 00 00 	or     0x100(%rsp),%esi
    498c:	75 11                	jne    0x499f
    498e:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
    4995:	00 
    4996:	f6 06 01             	testb  $0x1,(%rsi)
    4999:	0f 84 d6 04 00 00    	je     0x4e75
    499f:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    49a4:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
    49a8:	85 c0                	test   %eax,%eax
    49aa:	7e 0b                	jle    0x49b7
    49ac:	83 7c 24 40 02       	cmpl   $0x2,0x40(%rsp)
    49b1:	0f 85 95 07 00 00    	jne    0x514c
    49b7:	88 5d ff             	mov    %bl,-0x1(%rbp)
    49ba:	8b 44 24 28          	mov    0x28(%rsp),%eax
    49be:	39 44 24 7c          	cmp    %eax,0x7c(%rsp)
    49c2:	0f 84 b2 07 00 00    	je     0x517a
    49c8:	4c 89 f9             	mov    %r15,%rcx
    49cb:	45 31 c0             	xor    %r8d,%r8d
    49ce:	ba 0a 00 00 00       	mov    $0xa,%edx
    49d3:	e8 48 0e 00 00       	call   0x5820
    49d8:	45 31 c0             	xor    %r8d,%r8d
    49db:	ba 0a 00 00 00       	mov    $0xa,%edx
    49e0:	4c 89 e1             	mov    %r12,%rcx
    49e3:	49 89 c7             	mov    %rax,%r15
    49e6:	4d 39 f4             	cmp    %r14,%r12
    49e9:	0f 84 29 01 00 00    	je     0x4b18
    49ef:	e8 2c 0e 00 00       	call   0x5820
    49f4:	4c 89 f1             	mov    %r14,%rcx
    49f7:	45 31 c0             	xor    %r8d,%r8d
    49fa:	ba 0a 00 00 00       	mov    $0xa,%edx
    49ff:	49 89 c4             	mov    %rax,%r12
    4a02:	e8 19 0e 00 00       	call   0x5820
    4a07:	49 89 c6             	mov    %rax,%r14
    4a0a:	83 44 24 7c 01       	addl   $0x1,0x7c(%rsp)
    4a0f:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
    4a14:	4c 89 ea             	mov    %r13,%rdx
    4a17:	4c 89 f9             	mov    %r15,%rcx
    4a1a:	e8 c1 f1 ff ff       	call   0x3be0
    4a1f:	4c 89 e2             	mov    %r12,%rdx
    4a22:	4c 89 f9             	mov    %r15,%rcx
    4a25:	89 c7                	mov    %eax,%edi
    4a27:	8d 58 30             	lea    0x30(%rax),%ebx
    4a2a:	e8 e1 12 00 00       	call   0x5d10
    4a2f:	4c 89 f2             	mov    %r14,%rdx
    4a32:	4c 89 e9             	mov    %r13,%rcx
    4a35:	89 c6                	mov    %eax,%esi
    4a37:	e8 24 13 00 00       	call   0x5d60
    4a3c:	44 8b 58 10          	mov    0x10(%rax),%r11d
    4a40:	45 85 db             	test   %r11d,%r11d
    4a43:	0f 85 27 ff ff ff    	jne    0x4970
    4a49:	48 89 c2             	mov    %rax,%rdx
    4a4c:	4c 89 f9             	mov    %r15,%rcx
    4a4f:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    4a54:	e8 b7 12 00 00       	call   0x5d10
    4a59:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
    4a5e:	89 c5                	mov    %eax,%ebp
    4a60:	4c 89 c1             	mov    %r8,%rcx
    4a63:	e8 48 0d 00 00       	call   0x57b0
    4a68:	89 e8                	mov    %ebp,%eax
    4a6a:	0b 84 24 00 01 00 00 	or     0x100(%rsp),%eax
    4a71:	0f 85 ac 09 00 00    	jne    0x5423
    4a77:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
    4a7e:	00 
    4a7f:	8b 12                	mov    (%rdx),%edx
    4a81:	89 54 24 48          	mov    %edx,0x48(%rsp)
    4a85:	83 e2 01             	and    $0x1,%edx
    4a88:	0b 54 24 40          	or     0x40(%rsp),%edx
    4a8c:	0f 85 eb fe ff ff    	jne    0x497d
    4a92:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    4a97:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    4a9b:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    4aa2:	00 
    4aa3:	48 8d 6a 01          	lea    0x1(%rdx),%rbp
    4aa7:	83 fb 39             	cmp    $0x39,%ebx
    4aaa:	0f 84 99 07 00 00    	je     0x5249
    4ab0:	85 f6                	test   %esi,%esi
    4ab2:	0f 8e 48 09 00 00    	jle    0x5400
    4ab8:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
    4abc:	b8 20 00 00 00       	mov    $0x20,%eax
    4ac1:	83 c3 31             	add    $0x31,%ebx
    4ac4:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    4ac9:	89 44 24 24          	mov    %eax,0x24(%rsp)
    4acd:	88 1e                	mov    %bl,(%rsi)
    4acf:	4c 89 e6             	mov    %r12,%rsi
    4ad2:	4d 89 f4             	mov    %r14,%r12
    4ad5:	0f 1f 00             	nopl   (%rax)
    4ad8:	4c 89 e9             	mov    %r13,%rcx
    4adb:	e8 d0 0c 00 00       	call   0x57b0
    4ae0:	4d 85 e4             	test   %r12,%r12
    4ae3:	0f 84 e7 02 00 00    	je     0x4dd0
    4ae9:	48 85 f6             	test   %rsi,%rsi
    4aec:	0f 84 85 07 00 00    	je     0x5277
    4af2:	4c 39 e6             	cmp    %r12,%rsi
    4af5:	0f 84 7c 07 00 00    	je     0x5277
    4afb:	48 89 f1             	mov    %rsi,%rcx
    4afe:	e8 ad 0c 00 00       	call   0x57b0
    4b03:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4b08:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    4b0d:	e9 59 fb ff ff       	jmp    0x466b
    4b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4b18:	e8 03 0d 00 00       	call   0x5820
    4b1d:	49 89 c4             	mov    %rax,%r12
    4b20:	49 89 c6             	mov    %rax,%r14
    4b23:	e9 e2 fe ff ff       	jmp    0x4a0a
    4b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4b2f:	00 
    4b30:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    4b37:	00 
    4b38:	e9 11 fd ff ff       	jmp    0x484e
    4b3d:	0f 1f 00             	nopl   (%rax)
    4b40:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
    4b47:	01 
    4b48:	0f 8e 32 f9 ff ff    	jle    0x4480
    4b4e:	8b 44 24 28          	mov    0x28(%rsp),%eax
    4b52:	8b 4c 24 54          	mov    0x54(%rsp),%ecx
    4b56:	83 e8 01             	sub    $0x1,%eax
    4b59:	39 c1                	cmp    %eax,%ecx
    4b5b:	0f 8c 99 02 00 00    	jl     0x4dfa
    4b61:	29 c1                	sub    %eax,%ecx
    4b63:	41 89 cd             	mov    %ecx,%r13d
    4b66:	8b 44 24 28          	mov    0x28(%rsp),%eax
    4b6a:	85 c0                	test   %eax,%eax
    4b6c:	0f 88 ea 04 00 00    	js     0x505c
    4b72:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    4b76:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4b7a:	41 01 c3             	add    %eax,%r11d
    4b7d:	01 c8                	add    %ecx,%eax
    4b7f:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
    4b83:	89 44 24 44          	mov    %eax,0x44(%rsp)
    4b87:	e9 0a f9 ff ff       	jmp    0x4496
    4b8c:	0f 1f 40 00          	nopl   0x0(%rax)
    4b90:	4c 89 ea             	mov    %r13,%rdx
    4b93:	4c 89 f9             	mov    %r15,%rcx
    4b96:	e8 75 11 00 00       	call   0x5d10
    4b9b:	85 c0                	test   %eax,%eax
    4b9d:	0f 89 47 fa ff ff    	jns    0x45ea
    4ba3:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4ba7:	45 31 c0             	xor    %r8d,%r8d
    4baa:	4c 89 f9             	mov    %r15,%rcx
    4bad:	ba 0a 00 00 00       	mov    $0xa,%edx
    4bb2:	8d 58 ff             	lea    -0x1(%rax),%ebx
    4bb5:	e8 66 0c 00 00       	call   0x5820
    4bba:	49 89 c7             	mov    %rax,%r15
    4bbd:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    4bc1:	85 c0                	test   %eax,%eax
    4bc3:	0f 9e c0             	setle  %al
    4bc6:	21 c5                	and    %eax,%ebp
    4bc8:	8b 44 24 48          	mov    0x48(%rsp),%eax
    4bcc:	85 c0                	test   %eax,%eax
    4bce:	0f 85 34 07 00 00    	jne    0x5308
    4bd4:	40 84 ed             	test   %bpl,%bpl
    4bd7:	0f 85 89 06 00 00    	jne    0x5266
    4bdd:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4be1:	89 44 24 44          	mov    %eax,0x44(%rsp)
    4be5:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    4be9:	89 44 24 28          	mov    %eax,0x28(%rsp)
    4bed:	0f 1f 00             	nopl   (%rax)
    4bf0:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4bf7:	00 
    4bf8:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
    4bfd:	8b 74 24 28          	mov    0x28(%rsp),%esi
    4c01:	eb 1d                	jmp    0x4c20
    4c03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4c08:	4c 89 f9             	mov    %r15,%rcx
    4c0b:	45 31 c0             	xor    %r8d,%r8d
    4c0e:	ba 0a 00 00 00       	mov    $0xa,%edx
    4c13:	e8 08 0c 00 00       	call   0x5820
    4c18:	83 44 24 7c 01       	addl   $0x1,0x7c(%rsp)
    4c1d:	49 89 c7             	mov    %rax,%r15
    4c20:	4c 89 ea             	mov    %r13,%rdx
    4c23:	4c 89 f9             	mov    %r15,%rcx
    4c26:	48 83 c5 01          	add    $0x1,%rbp
    4c2a:	e8 b1 ef ff ff       	call   0x3be0
    4c2f:	8d 58 30             	lea    0x30(%rax),%ebx
    4c32:	88 5d ff             	mov    %bl,-0x1(%rbp)
    4c35:	39 74 24 7c          	cmp    %esi,0x7c(%rsp)
    4c39:	7c cd                	jl     0x4c08
    4c3b:	31 f6                	xor    %esi,%esi
    4c3d:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    4c41:	85 c9                	test   %ecx,%ecx
    4c43:	0f 84 e0 01 00 00    	je     0x4e29
    4c49:	41 8b 47 14          	mov    0x14(%r15),%eax
    4c4d:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    4c51:	83 f9 02             	cmp    $0x2,%ecx
    4c54:	0f 84 05 02 00 00    	je     0x4e5f
    4c5a:	83 f8 01             	cmp    $0x1,%eax
    4c5d:	7f 08                	jg     0x4c67
    4c5f:	41 8b 4f 18          	mov    0x18(%r15),%ecx
    4c63:	85 c9                	test   %ecx,%ecx
    4c65:	74 40                	je     0x4ca7
    4c67:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    4c6c:	eb 12                	jmp    0x4c80
    4c6e:	66 90                	xchg   %ax,%ax
    4c70:	48 39 c8             	cmp    %rcx,%rax
    4c73:	0f 84 96 01 00 00    	je     0x4e0f
    4c79:	0f b6 50 ff          	movzbl -0x1(%rax),%edx
    4c7d:	48 89 c5             	mov    %rax,%rbp
    4c80:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
    4c84:	80 fa 39             	cmp    $0x39,%dl
    4c87:	74 e7                	je     0x4c70
    4c89:	83 c2 01             	add    $0x1,%edx
    4c8c:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4c93:	00 
    4c94:	88 10                	mov    %dl,(%rax)
    4c96:	e9 3d fe ff ff       	jmp    0x4ad8
    4c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4ca0:	0f b6 55 fe          	movzbl -0x2(%rbp),%edx
    4ca4:	48 89 c5             	mov    %rax,%rbp
    4ca7:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
    4cab:	80 fa 30             	cmp    $0x30,%dl
    4cae:	74 f0                	je     0x4ca0
    4cb0:	e9 23 fe ff ff       	jmp    0x4ad8
    4cb5:	0f 1f 00             	nopl   (%rax)
    4cb8:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    4cbf:	00 
    4cc0:	e9 96 f4 ff ff       	jmp    0x415b
    4cc5:	0f 1f 00             	nopl   (%rax)
    4cc8:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4ccf:	00 
    4cd0:	b9 01 00 00 00       	mov    $0x1,%ecx
    4cd5:	e9 ac f4 ff ff       	jmp    0x4186
    4cda:	48 63 44 24 50       	movslq 0x50(%rsp),%rax
    4cdf:	48 8b 15 7a 3a 00 00 	mov    0x3a7a(%rip),%rdx        # 0x8760
    4ce6:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    4ced:	ff 
    4cee:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    4cf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4cf8:	f2 0f 10 44 24 60    	movsd  0x60(%rsp),%xmm0
    4cfe:	44 8b 44 24 50       	mov    0x50(%rsp),%r8d
    4d03:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4d0a:	00 
    4d0b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    4d10:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4d14:	41 83 c0 01          	add    $0x1,%r8d
    4d18:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    4d1c:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
    4d21:	48 8d 56 01          	lea    0x1(%rsi),%rdx
    4d25:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    4d29:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4d2d:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    4d31:	8d 48 30             	lea    0x30(%rax),%ecx
    4d34:	88 0e                	mov    %cl,(%rsi)
    4d36:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4d3a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    4d3e:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    4d42:	0f 8b 64 06 00 00    	jnp    0x53ac
    4d48:	f2 0f 10 1d 88 37 00 	movsd  0x3788(%rip),%xmm3        # 0x84d8
    4d4f:	00 
    4d50:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
    4d54:	3b 4c 24 28          	cmp    0x28(%rsp),%ecx
    4d58:	0f 84 fa 01 00 00    	je     0x4f58
    4d5e:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    4d62:	83 c1 01             	add    $0x1,%ecx
    4d65:	48 83 c2 01          	add    $0x1,%rdx
    4d69:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    4d6d:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4d71:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    4d75:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    4d79:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4d7d:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    4d81:	8d 48 30             	lea    0x30(%rax),%ecx
    4d84:	88 4a ff             	mov    %cl,-0x1(%rdx)
    4d87:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4d8b:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    4d8f:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    4d93:	7a bb                	jp     0x4d50
    4d95:	75 b9                	jne    0x4d50
    4d97:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4d9c:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    4da1:	e9 d7 f8 ff ff       	jmp    0x467d
    4da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4dad:	00 00 00 
    4db0:	8b 54 24 54          	mov    0x54(%rsp),%edx
    4db4:	4c 89 f9             	mov    %r15,%rcx
    4db7:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
    4dbc:	e8 8f 0c 00 00       	call   0x5a50
    4dc1:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
    4dc6:	49 89 c7             	mov    %rax,%r15
    4dc9:	e9 69 f7 ff ff       	jmp    0x4537
    4dce:	66 90                	xchg   %ax,%ax
    4dd0:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4dd5:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    4dda:	e9 9e f8 ff ff       	jmp    0x467d
    4ddf:	90                   	nop
    4de0:	4c 89 f9             	mov    %r15,%rcx
    4de3:	44 89 5c 24 54       	mov    %r11d,0x54(%rsp)
    4de8:	e8 63 0c 00 00       	call   0x5a50
    4ded:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
    4df2:	49 89 c7             	mov    %rax,%r15
    4df5:	e9 3d f7 ff ff       	jmp    0x4537
    4dfa:	89 c2                	mov    %eax,%edx
    4dfc:	2b 54 24 54          	sub    0x54(%rsp),%edx
    4e00:	45 31 ed             	xor    %r13d,%r13d
    4e03:	89 44 24 54          	mov    %eax,0x54(%rsp)
    4e07:	41 01 d6             	add    %edx,%r14d
    4e0a:	e9 57 fd ff ff       	jmp    0x4b66
    4e0f:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4e14:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
    4e19:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4e20:	00 
    4e21:	c6 00 31             	movb   $0x31,(%rax)
    4e24:	e9 af fc ff ff       	jmp    0x4ad8
    4e29:	4c 89 f9             	mov    %r15,%rcx
    4e2c:	ba 01 00 00 00       	mov    $0x1,%edx
    4e31:	e8 aa 0d 00 00       	call   0x5be0
    4e36:	4c 89 ea             	mov    %r13,%rdx
    4e39:	48 89 c1             	mov    %rax,%rcx
    4e3c:	49 89 c7             	mov    %rax,%r15
    4e3f:	e8 cc 0e 00 00       	call   0x5d10
    4e44:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    4e48:	85 c0                	test   %eax,%eax
    4e4a:	0f 8f 17 fe ff ff    	jg     0x4c67
    4e50:	75 09                	jne    0x4e5b
    4e52:	83 e3 01             	and    $0x1,%ebx
    4e55:	0f 85 0c fe ff ff    	jne    0x4c67
    4e5b:	41 8b 47 14          	mov    0x14(%r15),%eax
    4e5f:	83 f8 01             	cmp    $0x1,%eax
    4e62:	0f 8e d1 04 00 00    	jle    0x5339
    4e68:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    4e6f:	00 
    4e70:	e9 32 fe ff ff       	jmp    0x4ca7
    4e75:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    4e7a:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
    4e7f:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    4e83:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    4e8a:	00 
    4e8b:	48 83 c6 01          	add    $0x1,%rsi
    4e8f:	48 89 f5             	mov    %rsi,%rbp
    4e92:	45 85 d2             	test   %r10d,%r10d
    4e95:	0f 84 55 03 00 00    	je     0x51f0
    4e9b:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
    4ea0:	0f 8e bd 04 00 00    	jle    0x5363
    4ea6:	83 7c 24 40 02       	cmpl   $0x2,0x40(%rsp)
    4eab:	0f 84 85 03 00 00    	je     0x5236
    4eb1:	48 89 bc 24 f8 00 00 	mov    %rdi,0xf8(%rsp)
    4eb8:	00 
    4eb9:	4c 89 f7             	mov    %r14,%rdi
    4ebc:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
    4ec1:	eb 4d                	jmp    0x4f10
    4ec3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4ec8:	88 5e ff             	mov    %bl,-0x1(%rsi)
    4ecb:	45 31 c0             	xor    %r8d,%r8d
    4ece:	48 89 f9             	mov    %rdi,%rcx
    4ed1:	ba 0a 00 00 00       	mov    $0xa,%edx
    4ed6:	49 89 f6             	mov    %rsi,%r14
    4ed9:	e8 42 09 00 00       	call   0x5820
    4ede:	49 39 fc             	cmp    %rdi,%r12
    4ee1:	4c 89 f9             	mov    %r15,%rcx
    4ee4:	ba 0a 00 00 00       	mov    $0xa,%edx
    4ee9:	4c 0f 44 e0          	cmove  %rax,%r12
    4eed:	45 31 c0             	xor    %r8d,%r8d
    4ef0:	48 89 c5             	mov    %rax,%rbp
    4ef3:	48 83 c6 01          	add    $0x1,%rsi
    4ef7:	e8 24 09 00 00       	call   0x5820
    4efc:	4c 89 ea             	mov    %r13,%rdx
    4eff:	48 89 ef             	mov    %rbp,%rdi
    4f02:	48 89 c1             	mov    %rax,%rcx
    4f05:	49 89 c7             	mov    %rax,%r15
    4f08:	e8 d3 ec ff ff       	call   0x3be0
    4f0d:	8d 58 30             	lea    0x30(%rax),%ebx
    4f10:	48 89 fa             	mov    %rdi,%rdx
    4f13:	4c 89 e9             	mov    %r13,%rcx
    4f16:	48 89 f5             	mov    %rsi,%rbp
    4f19:	e8 f2 0d 00 00       	call   0x5d10
    4f1e:	85 c0                	test   %eax,%eax
    4f20:	7f a6                	jg     0x4ec8
    4f22:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
    4f27:	49 89 fe             	mov    %rdi,%r14
    4f2a:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    4f31:	00 
    4f32:	83 fb 39             	cmp    $0x39,%ebx
    4f35:	0f 84 0e 03 00 00    	je     0x5249
    4f3b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4f42:	00 
    4f43:	4c 89 e6             	mov    %r12,%rsi
    4f46:	83 c3 01             	add    $0x1,%ebx
    4f49:	4d 89 f4             	mov    %r14,%r12
    4f4c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    4f51:	88 18                	mov    %bl,(%rax)
    4f53:	e9 80 fb ff ff       	jmp    0x4ad8
    4f58:	8b 74 24 40          	mov    0x40(%rsp),%esi
    4f5c:	85 f6                	test   %esi,%esi
    4f5e:	0f 84 68 03 00 00    	je     0x52cc
    4f64:	83 fe 01             	cmp    $0x1,%esi
    4f67:	0f 84 e5 03 00 00    	je     0x5352
    4f6d:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4f72:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    4f77:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    4f7e:	00 
    4f7f:	e9 f9 f6 ff ff       	jmp    0x467d
    4f84:	f2 0f 59 e2          	mulsd  %xmm2,%xmm4
    4f88:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    4f8d:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4f91:	45 31 c0             	xor    %r8d,%r8d
    4f94:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4f9b:	00 
    4f9c:	f2 0f 10 15 34 35 00 	movsd  0x3534(%rip),%xmm2        # 0x84d8
    4fa3:	00 
    4fa4:	eb 18                	jmp    0x4fbe
    4fa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4fad:	00 00 00 
    4fb0:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4fb4:	83 c1 01             	add    $0x1,%ecx
    4fb7:	45 89 c8             	mov    %r9d,%r8d
    4fba:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    4fbe:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    4fc2:	85 c0                	test   %eax,%eax
    4fc4:	74 0f                	je     0x4fd5
    4fc6:	66 0f ef db          	pxor   %xmm3,%xmm3
    4fca:	45 89 c8             	mov    %r9d,%r8d
    4fcd:	f2 0f 2a d8          	cvtsi2sd %eax,%xmm3
    4fd1:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
    4fd5:	48 83 c2 01          	add    $0x1,%rdx
    4fd9:	83 c0 30             	add    $0x30,%eax
    4fdc:	88 42 ff             	mov    %al,-0x1(%rdx)
    4fdf:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
    4fe3:	44 39 d1             	cmp    %r10d,%ecx
    4fe6:	75 c8                	jne    0x4fb0
    4fe8:	89 c1                	mov    %eax,%ecx
    4fea:	45 84 c0             	test   %r8b,%r8b
    4fed:	75 04                	jne    0x4ff3
    4fef:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4ff3:	f2 0f 10 05 15 35 00 	movsd  0x3515(%rip),%xmm0        # 0x8510
    4ffa:	00 
    4ffb:	66 0f 10 d4          	movupd %xmm4,%xmm2
    4fff:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    5003:	66 0f 2f ca          	comisd %xmm2,%xmm1
    5007:	0f 87 a9 02 00 00    	ja     0x52b6
    500d:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
    5011:	66 0f 2f c1          	comisd %xmm1,%xmm0
    5015:	0f 86 8e f7 ff ff    	jbe    0x47a9
    501b:	66 0f 2e ce          	ucomisd %xmm6,%xmm1
    501f:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5024:	7a 06                	jp     0x502c
    5026:	0f 84 a3 03 00 00    	je     0x53cf
    502c:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5033:	00 
    5034:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
    5039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5040:	48 89 d1             	mov    %rdx,%rcx
    5043:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    5047:	80 79 ff 30          	cmpb   $0x30,-0x1(%rcx)
    504b:	74 f3                	je     0x5040
    504d:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    5052:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
    5057:	e9 21 f6 ff ff       	jmp    0x467d
    505c:	8b 44 24 44          	mov    0x44(%rsp),%eax
    5060:	2b 44 24 28          	sub    0x28(%rsp),%eax
    5064:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    506b:	00 
    506c:	89 44 24 38          	mov    %eax,0x38(%rsp)
    5070:	e9 21 f4 ff ff       	jmp    0x4496
    5075:	8b 4c 24 28          	mov    0x28(%rsp),%ecx
    5079:	85 c9                	test   %ecx,%ecx
    507b:	0f 84 d2 f6 ff ff    	je     0x4753
    5081:	44 8b 54 24 6c       	mov    0x6c(%rsp),%r10d
    5086:	45 85 d2             	test   %r10d,%r10d
    5089:	0f 8e 1a f7 ff ff    	jle    0x47a9
    508f:	f2 0f 59 05 41 34 00 	mulsd  0x3441(%rip),%xmm0        # 0x84d8
    5096:	00 
    5097:	f2 0f 10 0d 41 34 00 	movsd  0x3441(%rip),%xmm1        # 0x84e0
    509e:	00 
    509f:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
    50a5:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    50a9:	f2 0f 58 0d 37 34 00 	addsd  0x3437(%rip),%xmm1        # 0x84e8
    50b0:	00 
    50b1:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    50b6:	66 48 0f 7e c8       	movq   %xmm1,%rax
    50bb:	48 c1 ea 20          	shr    $0x20,%rdx
    50bf:	89 c0                	mov    %eax,%eax
    50c1:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
    50c7:	48 c1 e2 20          	shl    $0x20,%rdx
    50cb:	48 09 d0             	or     %rdx,%rax
    50ce:	e9 8f f1 ff ff       	jmp    0x4262
    50d3:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    50d8:	e8 d3 05 00 00       	call   0x56b0
    50dd:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
    50e2:	49 89 c6             	mov    %rax,%r14
    50e5:	48 8d 48 10          	lea    0x10(%rax),%rcx
    50e9:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    50ee:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
    50f5:	00 
    50f6:	e8 15 11 00 00       	call   0x6210
    50fb:	4c 89 f1             	mov    %r14,%rcx
    50fe:	ba 01 00 00 00       	mov    $0x1,%edx
    5103:	e8 d8 0a 00 00       	call   0x5be0
    5108:	49 89 c6             	mov    %rax,%r14
    510b:	e9 3b f8 ff ff       	jmp    0x494b
    5110:	8b 45 04             	mov    0x4(%rbp),%eax
    5113:	83 c0 01             	add    $0x1,%eax
    5116:	39 f0                	cmp    %esi,%eax
    5118:	0f 8d 5c f4 ff ff    	jge    0x457a
    511e:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
    5123:	41 83 c3 01          	add    $0x1,%r11d
    5127:	c7 44 24 54 01 00 00 	movl   $0x1,0x54(%rsp)
    512e:	00 
    512f:	e9 46 f4 ff ff       	jmp    0x457a
    5134:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
    513b:	00 
    513c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5141:	45 31 ed             	xor    %r13d,%r13d
    5144:	45 31 e4             	xor    %r12d,%r12d
    5147:	e9 f7 f4 ff ff       	jmp    0x4643
    514c:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    5153:	00 
    5154:	83 fb 39             	cmp    $0x39,%ebx
    5157:	0f 84 ec 00 00 00    	je     0x5249
    515d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    5162:	83 c3 01             	add    $0x1,%ebx
    5165:	4c 89 e6             	mov    %r12,%rsi
    5168:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    516f:	00 
    5170:	4d 89 f4             	mov    %r14,%r12
    5173:	88 18                	mov    %bl,(%rax)
    5175:	e9 5e f9 ff ff       	jmp    0x4ad8
    517a:	4c 89 e6             	mov    %r12,%rsi
    517d:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    5184:	00 
    5185:	4d 89 f4             	mov    %r14,%r12
    5188:	e9 b0 fa ff ff       	jmp    0x4c3d
    518d:	8b 45 04             	mov    0x4(%rbp),%eax
    5190:	83 c0 01             	add    $0x1,%eax
    5193:	39 c6                	cmp    %eax,%esi
    5195:	0f 8e 50 f7 ff ff    	jle    0x48eb
    519b:	eb 81                	jmp    0x511e
    519d:	41 29 dd             	sub    %ebx,%r13d
    51a0:	8b 55 04             	mov    0x4(%rbp),%edx
    51a3:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
    51aa:	00 00 00 00 
    51ae:	41 8d 45 01          	lea    0x1(%r13),%eax
    51b2:	44 29 e9             	sub    %r13d,%ecx
    51b5:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
    51bc:	ff 
    51bd:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    51c1:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    51c8:	ff 
    51c9:	39 d1                	cmp    %edx,%ecx
    51cb:	0f 8c 6c f2 ff ff    	jl     0x443d
    51d1:	e9 aa f2 ff ff       	jmp    0x4480
    51d6:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
    51db:	48 89 c2             	mov    %rax,%rdx
    51de:	b9 31 00 00 00       	mov    $0x31,%ecx
    51e3:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
    51e8:	c6 00 30             	movb   $0x30,(%rax)
    51eb:	e9 69 f1 ff ff       	jmp    0x4359
    51f0:	85 c0                	test   %eax,%eax
    51f2:	7e 37                	jle    0x522b
    51f4:	4c 89 f9             	mov    %r15,%rcx
    51f7:	ba 01 00 00 00       	mov    $0x1,%edx
    51fc:	e8 df 09 00 00       	call   0x5be0
    5201:	4c 89 ea             	mov    %r13,%rdx
    5204:	48 89 c1             	mov    %rax,%rcx
    5207:	49 89 c7             	mov    %rax,%r15
    520a:	e8 01 0b 00 00       	call   0x5d10
    520f:	85 c0                	test   %eax,%eax
    5211:	0f 8e a0 01 00 00    	jle    0x53b7
    5217:	83 fb 39             	cmp    $0x39,%ebx
    521a:	74 2d                	je     0x5249
    521c:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
    5220:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
    5227:	00 
    5228:	83 c3 31             	add    $0x31,%ebx
    522b:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
    5230:	0f 8e 5a 01 00 00    	jle    0x5390
    5236:	4c 89 e6             	mov    %r12,%rsi
    5239:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5240:	00 
    5241:	4d 89 f4             	mov    %r14,%r12
    5244:	e9 03 fd ff ff       	jmp    0x4f4c
    5249:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    524e:	4c 89 e6             	mov    %r12,%rsi
    5251:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    5256:	4d 89 f4             	mov    %r14,%r12
    5259:	ba 39 00 00 00       	mov    $0x39,%edx
    525e:	c6 00 39             	movb   $0x39,(%rax)
    5261:	e9 1a fa ff ff       	jmp    0x4c80
    5266:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    526a:	89 5c 24 50          	mov    %ebx,0x50(%rsp)
    526e:	89 44 24 28          	mov    %eax,0x28(%rsp)
    5272:	e9 88 f3 ff ff       	jmp    0x45ff
    5277:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    527c:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    5281:	e9 e5 f3 ff ff       	jmp    0x466b
    5286:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    528a:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    528f:	89 44 24 44          	mov    %eax,0x44(%rsp)
    5293:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5298:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    529d:	0f 8a d4 fc ff ff    	jp     0x4f77
    52a3:	0f 85 ce fc ff ff    	jne    0x4f77
    52a9:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
    52b0:	00 
    52b1:	e9 c7 f3 ff ff       	jmp    0x467d
    52b6:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    52bb:	49 89 d0             	mov    %rdx,%r8
    52be:	89 44 24 44          	mov    %eax,0x44(%rsp)
    52c2:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    52c7:	e9 7c f0 ff ff       	jmp    0x4348
    52cc:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    52d0:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    52d4:	66 0f 2f c2          	comisd %xmm2,%xmm0
    52d8:	0f 87 a5 00 00 00    	ja     0x5383
    52de:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    52e2:	0f 8a f9 00 00 00    	jp     0x53e1
    52e8:	0f 85 f3 00 00 00    	jne    0x53e1
    52ee:	a8 01                	test   $0x1,%al
    52f0:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    52f5:	0f 85 4a f0 ff ff    	jne    0x4345
    52fb:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5302:	00 
    5303:	e9 38 fd ff ff       	jmp    0x5040
    5308:	4c 89 e1             	mov    %r12,%rcx
    530b:	45 31 c0             	xor    %r8d,%r8d
    530e:	ba 0a 00 00 00       	mov    $0xa,%edx
    5313:	e8 08 05 00 00       	call   0x5820
    5318:	49 89 c4             	mov    %rax,%r12
    531b:	40 84 ed             	test   %bpl,%bpl
    531e:	0f 85 42 ff ff ff    	jne    0x5266
    5324:	8b 44 24 50          	mov    0x50(%rsp),%eax
    5328:	89 44 24 44          	mov    %eax,0x44(%rsp)
    532c:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    5330:	89 44 24 28          	mov    %eax,0x28(%rsp)
    5334:	e9 ee f5 ff ff       	jmp    0x4927
    5339:	41 8b 47 18          	mov    0x18(%r15),%eax
    533d:	85 c0                	test   %eax,%eax
    533f:	b8 10 00 00 00       	mov    $0x10,%eax
    5344:	0f 44 44 24 24       	cmove  0x24(%rsp),%eax
    5349:	89 44 24 24          	mov    %eax,0x24(%rsp)
    534d:	e9 55 f9 ff ff       	jmp    0x4ca7
    5352:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    5356:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    535b:	49 89 d0             	mov    %rdx,%r8
    535e:	e9 e5 ef ff ff       	jmp    0x4348
    5363:	45 8b 4f 18          	mov    0x18(%r15),%r9d
    5367:	45 85 c9             	test   %r9d,%r9d
    536a:	0f 85 36 fb ff ff    	jne    0x4ea6
    5370:	85 c0                	test   %eax,%eax
    5372:	0f 8f 7c fe ff ff    	jg     0x51f4
    5378:	4c 89 e6             	mov    %r12,%rsi
    537b:	4d 89 f4             	mov    %r14,%r12
    537e:	e9 c9 fb ff ff       	jmp    0x4f4c
    5383:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5388:	49 89 d0             	mov    %rdx,%r8
    538b:	e9 b8 ef ff ff       	jmp    0x4348
    5390:	45 8b 47 18          	mov    0x18(%r15),%r8d
    5394:	4c 89 e6             	mov    %r12,%rsi
    5397:	4d 89 f4             	mov    %r14,%r12
    539a:	45 85 c0             	test   %r8d,%r8d
    539d:	74 54                	je     0x53f3
    539f:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    53a6:	00 
    53a7:	e9 a0 fb ff ff       	jmp    0x4f4c
    53ac:	0f 84 e5 f9 ff ff    	je     0x4d97
    53b2:	e9 91 f9 ff ff       	jmp    0x4d48
    53b7:	75 09                	jne    0x53c2
    53b9:	f6 c3 01             	test   $0x1,%bl
    53bc:	0f 85 55 fe ff ff    	jne    0x5217
    53c2:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
    53c9:	00 
    53ca:	e9 5c fe ff ff       	jmp    0x522b
    53cf:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
    53d6:	00 
    53d7:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
    53dc:	e9 5f fc ff ff       	jmp    0x5040
    53e1:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    53e8:	00 
    53e9:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    53ee:	e9 4d fc ff ff       	jmp    0x5040
    53f3:	8b 44 24 40          	mov    0x40(%rsp),%eax
    53f7:	89 44 24 24          	mov    %eax,0x24(%rsp)
    53fb:	e9 4c fb ff ff       	jmp    0x4f4c
    5400:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
    5405:	7e 0a                	jle    0x5411
    5407:	b8 10 00 00 00       	mov    $0x10,%eax
    540c:	e9 b3 f6 ff ff       	jmp    0x4ac4
    5411:	41 83 7f 18 00       	cmpl   $0x0,0x18(%r15)
    5416:	ba 10 00 00 00       	mov    $0x10,%edx
    541b:	0f 45 c2             	cmovne %edx,%eax
    541e:	e9 a1 f6 ff ff       	jmp    0x4ac4
    5423:	89 e8                	mov    %ebp,%eax
    5425:	e9 53 f5 ff ff       	jmp    0x497d
    542a:	90                   	nop
    542b:	90                   	nop
    542c:	90                   	nop
    542d:	90                   	nop
    542e:	90                   	nop
    542f:	90                   	nop
    5430:	41 54                	push   %r12
    5432:	55                   	push   %rbp
    5433:	57                   	push   %rdi
    5434:	56                   	push   %rsi
    5435:	53                   	push   %rbx
    5436:	48 63 59 14          	movslq 0x14(%rcx),%rbx
    543a:	89 d5                	mov    %edx,%ebp
    543c:	49 89 ca             	mov    %rcx,%r10
    543f:	c1 fd 05             	sar    $0x5,%ebp
    5442:	39 eb                	cmp    %ebp,%ebx
    5444:	7e 7a                	jle    0x54c0
    5446:	4c 8d 61 18          	lea    0x18(%rcx),%r12
    544a:	48 63 ed             	movslq %ebp,%rbp
    544d:	4d 8d 1c 9c          	lea    (%r12,%rbx,4),%r11
    5451:	49 8d 34 ac          	lea    (%r12,%rbp,4),%rsi
    5455:	83 e2 1f             	and    $0x1f,%edx
    5458:	0f 84 82 00 00 00    	je     0x54e0
    545e:	8b 06                	mov    (%rsi),%eax
    5460:	89 d1                	mov    %edx,%ecx
    5462:	bf 20 00 00 00       	mov    $0x20,%edi
    5467:	4c 8d 46 04          	lea    0x4(%rsi),%r8
    546b:	29 d7                	sub    %edx,%edi
    546d:	d3 e8                	shr    %cl,%eax
    546f:	41 89 c1             	mov    %eax,%r9d
    5472:	4d 39 c3             	cmp    %r8,%r11
    5475:	0f 86 9d 00 00 00    	jbe    0x5518
    547b:	4c 89 e6             	mov    %r12,%rsi
    547e:	66 90                	xchg   %ax,%ax
    5480:	41 8b 00             	mov    (%r8),%eax
    5483:	89 f9                	mov    %edi,%ecx
    5485:	48 83 c6 04          	add    $0x4,%rsi
    5489:	49 83 c0 04          	add    $0x4,%r8
    548d:	d3 e0                	shl    %cl,%eax
    548f:	89 d1                	mov    %edx,%ecx
    5491:	44 09 c8             	or     %r9d,%eax
    5494:	89 46 fc             	mov    %eax,-0x4(%rsi)
    5497:	45 8b 48 fc          	mov    -0x4(%r8),%r9d
    549b:	41 d3 e9             	shr    %cl,%r9d
    549e:	4d 39 c3             	cmp    %r8,%r11
    54a1:	77 dd                	ja     0x5480
    54a3:	48 29 eb             	sub    %rbp,%rbx
    54a6:	49 8d 44 9c fc       	lea    -0x4(%r12,%rbx,4),%rax
    54ab:	44 89 08             	mov    %r9d,(%rax)
    54ae:	45 85 c9             	test   %r9d,%r9d
    54b1:	74 4a                	je     0x54fd
    54b3:	48 83 c0 04          	add    $0x4,%rax
    54b7:	eb 44                	jmp    0x54fd
    54b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    54c0:	41 c7 42 14 00 00 00 	movl   $0x0,0x14(%r10)
    54c7:	00 
    54c8:	41 c7 42 18 00 00 00 	movl   $0x0,0x18(%r10)
    54cf:	00 
    54d0:	5b                   	pop    %rbx
    54d1:	5e                   	pop    %rsi
    54d2:	5f                   	pop    %rdi
    54d3:	5d                   	pop    %rbp
    54d4:	41 5c                	pop    %r12
    54d6:	c3                   	ret    
    54d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    54de:	00 00 
    54e0:	4c 89 e7             	mov    %r12,%rdi
    54e3:	49 39 f3             	cmp    %rsi,%r11
    54e6:	76 d8                	jbe    0x54c0
    54e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    54ef:	00 
    54f0:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    54f1:	49 39 f3             	cmp    %rsi,%r11
    54f4:	77 fa                	ja     0x54f0
    54f6:	48 29 eb             	sub    %rbp,%rbx
    54f9:	49 8d 04 9c          	lea    (%r12,%rbx,4),%rax
    54fd:	4c 29 e0             	sub    %r12,%rax
    5500:	48 c1 f8 02          	sar    $0x2,%rax
    5504:	41 89 42 14          	mov    %eax,0x14(%r10)
    5508:	85 c0                	test   %eax,%eax
    550a:	74 bc                	je     0x54c8
    550c:	5b                   	pop    %rbx
    550d:	5e                   	pop    %rsi
    550e:	5f                   	pop    %rdi
    550f:	5d                   	pop    %rbp
    5510:	41 5c                	pop    %r12
    5512:	c3                   	ret    
    5513:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5518:	41 89 42 18          	mov    %eax,0x18(%r10)
    551c:	85 c0                	test   %eax,%eax
    551e:	74 a0                	je     0x54c0
    5520:	4c 89 e0             	mov    %r12,%rax
    5523:	eb 8e                	jmp    0x54b3
    5525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    552c:	00 00 00 00 
    5530:	45 31 c0             	xor    %r8d,%r8d
    5533:	48 63 51 14          	movslq 0x14(%rcx),%rdx
    5537:	48 8d 41 18          	lea    0x18(%rcx),%rax
    553b:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
    553f:	48 39 c8             	cmp    %rcx,%rax
    5542:	72 19                	jb     0x555d
    5544:	eb 29                	jmp    0x556f
    5546:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    554d:	00 00 00 
    5550:	48 83 c0 04          	add    $0x4,%rax
    5554:	41 83 c0 20          	add    $0x20,%r8d
    5558:	48 39 c1             	cmp    %rax,%rcx
    555b:	76 12                	jbe    0x556f
    555d:	8b 10                	mov    (%rax),%edx
    555f:	85 d2                	test   %edx,%edx
    5561:	74 ed                	je     0x5550
    5563:	48 39 c1             	cmp    %rax,%rcx
    5566:	76 07                	jbe    0x556f
    5568:	f3 0f bc d2          	tzcnt  %edx,%edx
    556c:	41 01 d0             	add    %edx,%r8d
    556f:	44 89 c0             	mov    %r8d,%eax
    5572:	c3                   	ret    
    5573:	90                   	nop
    5574:	90                   	nop
    5575:	90                   	nop
    5576:	90                   	nop
    5577:	90                   	nop
    5578:	90                   	nop
    5579:	90                   	nop
    557a:	90                   	nop
    557b:	90                   	nop
    557c:	90                   	nop
    557d:	90                   	nop
    557e:	90                   	nop
    557f:	90                   	nop
    5580:	56                   	push   %rsi
    5581:	53                   	push   %rbx
    5582:	48 83 ec 28          	sub    $0x28,%rsp
    5586:	8b 05 64 65 00 00    	mov    0x6564(%rip),%eax        # 0xbaf0
    558c:	89 ce                	mov    %ecx,%esi
    558e:	83 f8 02             	cmp    $0x2,%eax
    5591:	74 7b                	je     0x560e
    5593:	85 c0                	test   %eax,%eax
    5595:	74 39                	je     0x55d0
    5597:	83 f8 01             	cmp    $0x1,%eax
    559a:	75 23                	jne    0x55bf
    559c:	48 8b 1d 79 6c 00 00 	mov    0x6c79(%rip),%rbx        # 0xc21c
    55a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    55a8:	b9 01 00 00 00       	mov    $0x1,%ecx
    55ad:	ff d3                	call   *%rbx
    55af:	8b 05 3b 65 00 00    	mov    0x653b(%rip),%eax        # 0xbaf0
    55b5:	83 f8 01             	cmp    $0x1,%eax
    55b8:	74 ee                	je     0x55a8
    55ba:	83 f8 02             	cmp    $0x2,%eax
    55bd:	74 4f                	je     0x560e
    55bf:	48 83 c4 28          	add    $0x28,%rsp
    55c3:	5b                   	pop    %rbx
    55c4:	5e                   	pop    %rsi
    55c5:	c3                   	ret    
    55c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    55cd:	00 00 00 
    55d0:	b8 01 00 00 00       	mov    $0x1,%eax
    55d5:	87 05 15 65 00 00    	xchg   %eax,0x6515(%rip)        # 0xbaf0
    55db:	85 c0                	test   %eax,%eax
    55dd:	75 51                	jne    0x5630
    55df:	48 8b 1d 0e 6c 00 00 	mov    0x6c0e(%rip),%rbx        # 0xc1f4
    55e6:	48 8d 0d 13 65 00 00 	lea    0x6513(%rip),%rcx        # 0xbb00
    55ed:	ff d3                	call   *%rbx
    55ef:	48 8d 0d 32 65 00 00 	lea    0x6532(%rip),%rcx        # 0xbb28
    55f6:	ff d3                	call   *%rbx
    55f8:	48 8d 0d 61 00 00 00 	lea    0x61(%rip),%rcx        # 0x5660
    55ff:	e8 0c af ff ff       	call   0x510
    5604:	c7 05 e2 64 00 00 02 	movl   $0x2,0x64e2(%rip)        # 0xbaf0
    560b:	00 00 00 
    560e:	48 63 ce             	movslq %esi,%rcx
    5611:	48 8d 05 e8 64 00 00 	lea    0x64e8(%rip),%rax        # 0xbb00
    5618:	48 8d 14 89          	lea    (%rcx,%rcx,4),%rdx
    561c:	48 8d 0c d0          	lea    (%rax,%rdx,8),%rcx
    5620:	48 83 c4 28          	add    $0x28,%rsp
    5624:	5b                   	pop    %rbx
    5625:	5e                   	pop    %rsi
    5626:	48 ff 25 af 6b 00 00 	rex.W jmp *0x6baf(%rip)        # 0xc1dc
    562d:	0f 1f 00             	nopl   (%rax)
    5630:	83 f8 02             	cmp    $0x2,%eax
    5633:	74 1b                	je     0x5650
    5635:	8b 05 b5 64 00 00    	mov    0x64b5(%rip),%eax        # 0xbaf0
    563b:	83 f8 01             	cmp    $0x1,%eax
    563e:	0f 84 58 ff ff ff    	je     0x559c
    5644:	e9 71 ff ff ff       	jmp    0x55ba
    5649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5650:	c7 05 96 64 00 00 02 	movl   $0x2,0x6496(%rip)        # 0xbaf0
    5657:	00 00 00 
    565a:	eb b2                	jmp    0x560e
    565c:	0f 1f 40 00          	nopl   0x0(%rax)
    5660:	53                   	push   %rbx
    5661:	48 83 ec 20          	sub    $0x20,%rsp
    5665:	b8 03 00 00 00       	mov    $0x3,%eax
    566a:	87 05 80 64 00 00    	xchg   %eax,0x6480(%rip)        # 0xbaf0
    5670:	83 f8 02             	cmp    $0x2,%eax
    5673:	74 0b                	je     0x5680
    5675:	48 83 c4 20          	add    $0x20,%rsp
    5679:	5b                   	pop    %rbx
    567a:	c3                   	ret    
    567b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5680:	48 8b 1d 4d 6b 00 00 	mov    0x6b4d(%rip),%rbx        # 0xc1d4
    5687:	48 8d 0d 72 64 00 00 	lea    0x6472(%rip),%rcx        # 0xbb00
    568e:	ff d3                	call   *%rbx
    5690:	48 8d 0d 91 64 00 00 	lea    0x6491(%rip),%rcx        # 0xbb28
    5697:	48 89 d8             	mov    %rbx,%rax
    569a:	48 83 c4 20          	add    $0x20,%rsp
    569e:	5b                   	pop    %rbx
    569f:	48 ff e0             	rex.W jmp *%rax
    56a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    56a9:	00 00 00 00 
    56ad:	0f 1f 00             	nopl   (%rax)
    56b0:	56                   	push   %rsi
    56b1:	53                   	push   %rbx
    56b2:	48 83 ec 38          	sub    $0x38,%rsp
    56b6:	89 cb                	mov    %ecx,%ebx
    56b8:	31 c9                	xor    %ecx,%ecx
    56ba:	e8 c1 fe ff ff       	call   0x5580
    56bf:	83 fb 09             	cmp    $0x9,%ebx
    56c2:	7e 4c                	jle    0x5710
    56c4:	89 d9                	mov    %ebx,%ecx
    56c6:	be 01 00 00 00       	mov    $0x1,%esi
    56cb:	d3 e6                	shl    %cl,%esi
    56cd:	8d 46 ff             	lea    -0x1(%rsi),%eax
    56d0:	48 98                	cltq   
    56d2:	48 8d 0c 85 27 00 00 	lea    0x27(,%rax,4),%rcx
    56d9:	00 
    56da:	48 b8 f8 ff ff ff 07 	movabs $0x7fffffff8,%rax
    56e1:	00 00 00 
    56e4:	48 21 c1             	and    %rax,%rcx
    56e7:	e8 2c 0b 00 00       	call   0x6218
    56ec:	48 85 c0             	test   %rax,%rax
    56ef:	74 17                	je     0x5708
    56f1:	83 3d f8 63 00 00 02 	cmpl   $0x2,0x63f8(%rip)        # 0xbaf0
    56f8:	89 58 08             	mov    %ebx,0x8(%rax)
    56fb:	89 70 0c             	mov    %esi,0xc(%rax)
    56fe:	74 33                	je     0x5733
    5700:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    5707:	00 
    5708:	48 83 c4 38          	add    $0x38,%rsp
    570c:	5b                   	pop    %rbx
    570d:	5e                   	pop    %rsi
    570e:	c3                   	ret    
    570f:	90                   	nop
    5710:	48 8d 15 89 63 00 00 	lea    0x6389(%rip),%rdx        # 0xbaa0
    5717:	48 63 cb             	movslq %ebx,%rcx
    571a:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
    571e:	48 85 c0             	test   %rax,%rax
    5721:	74 2d                	je     0x5750
    5723:	4c 8b 00             	mov    (%rax),%r8
    5726:	83 3d c3 63 00 00 02 	cmpl   $0x2,0x63c3(%rip)        # 0xbaf0
    572d:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
    5731:	75 cd                	jne    0x5700
    5733:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    5738:	48 8d 0d c1 63 00 00 	lea    0x63c1(%rip),%rcx        # 0xbb00
    573f:	ff 15 bf 6a 00 00    	call   *0x6abf(%rip)        # 0xc204
    5745:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    574a:	eb b4                	jmp    0x5700
    574c:	0f 1f 40 00          	nopl   0x0(%rax)
    5750:	89 d9                	mov    %ebx,%ecx
    5752:	be 01 00 00 00       	mov    $0x1,%esi
    5757:	48 8b 05 22 19 00 00 	mov    0x1922(%rip),%rax        # 0x7080
    575e:	d3 e6                	shl    %cl,%esi
    5760:	48 8d 0d 39 5a 00 00 	lea    0x5a39(%rip),%rcx        # 0xb1a0
    5767:	8d 56 ff             	lea    -0x1(%rsi),%edx
    576a:	49 89 c1             	mov    %rax,%r9
    576d:	48 63 d2             	movslq %edx,%rdx
    5770:	49 29 c9             	sub    %rcx,%r9
    5773:	48 8d 14 95 27 00 00 	lea    0x27(,%rdx,4),%rdx
    577a:	00 
    577b:	4c 89 c9             	mov    %r9,%rcx
    577e:	48 c1 ea 03          	shr    $0x3,%rdx
    5782:	48 c1 f9 03          	sar    $0x3,%rcx
    5786:	89 d2                	mov    %edx,%edx
    5788:	48 01 d1             	add    %rdx,%rcx
    578b:	48 81 f9 20 01 00 00 	cmp    $0x120,%rcx
    5792:	0f 87 2c ff ff ff    	ja     0x56c4
    5798:	48 8d 14 d0          	lea    (%rax,%rdx,8),%rdx
    579c:	48 89 15 dd 18 00 00 	mov    %rdx,0x18dd(%rip)        # 0x7080
    57a3:	e9 49 ff ff ff       	jmp    0x56f1
    57a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    57af:	00 
    57b0:	41 54                	push   %r12
    57b2:	48 83 ec 20          	sub    $0x20,%rsp
    57b6:	49 89 cc             	mov    %rcx,%r12
    57b9:	48 85 c9             	test   %rcx,%rcx
    57bc:	74 3a                	je     0x57f8
    57be:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
    57c2:	7e 0c                	jle    0x57d0
    57c4:	48 83 c4 20          	add    $0x20,%rsp
    57c8:	41 5c                	pop    %r12
    57ca:	e9 61 0a 00 00       	jmp    0x6230
    57cf:	90                   	nop
    57d0:	31 c9                	xor    %ecx,%ecx
    57d2:	e8 a9 fd ff ff       	call   0x5580
    57d7:	49 63 54 24 08       	movslq 0x8(%r12),%rdx
    57dc:	48 8d 05 bd 62 00 00 	lea    0x62bd(%rip),%rax        # 0xbaa0
    57e3:	83 3d 06 63 00 00 02 	cmpl   $0x2,0x6306(%rip)        # 0xbaf0
    57ea:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
    57ee:	4c 89 24 d0          	mov    %r12,(%rax,%rdx,8)
    57f2:	49 89 0c 24          	mov    %rcx,(%r12)
    57f6:	74 08                	je     0x5800
    57f8:	48 83 c4 20          	add    $0x20,%rsp
    57fc:	41 5c                	pop    %r12
    57fe:	c3                   	ret    
    57ff:	90                   	nop
    5800:	48 8d 0d f9 62 00 00 	lea    0x62f9(%rip),%rcx        # 0xbb00
    5807:	48 83 c4 20          	add    $0x20,%rsp
    580b:	41 5c                	pop    %r12
    580d:	48 ff 25 f0 69 00 00 	rex.W jmp *0x69f0(%rip)        # 0xc204
    5814:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    581b:	00 00 00 00 
    581f:	90                   	nop
    5820:	41 55                	push   %r13
    5822:	41 54                	push   %r12
    5824:	56                   	push   %rsi
    5825:	53                   	push   %rbx
    5826:	48 83 ec 28          	sub    $0x28,%rsp
    582a:	8b 71 14             	mov    0x14(%rcx),%esi
    582d:	49 89 cc             	mov    %rcx,%r12
    5830:	49 63 d8             	movslq %r8d,%rbx
    5833:	48 63 d2             	movslq %edx,%rdx
    5836:	31 c9                	xor    %ecx,%ecx
    5838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    583f:	00 
    5840:	41 8b 44 8c 18       	mov    0x18(%r12,%rcx,4),%eax
    5845:	48 0f af c2          	imul   %rdx,%rax
    5849:	48 01 d8             	add    %rbx,%rax
    584c:	41 89 44 8c 18       	mov    %eax,0x18(%r12,%rcx,4)
    5851:	48 89 c3             	mov    %rax,%rbx
    5854:	48 83 c1 01          	add    $0x1,%rcx
    5858:	48 c1 eb 20          	shr    $0x20,%rbx
    585c:	39 ce                	cmp    %ecx,%esi
    585e:	7f e0                	jg     0x5840
    5860:	4d 89 e5             	mov    %r12,%r13
    5863:	48 85 db             	test   %rbx,%rbx
    5866:	74 1a                	je     0x5882
    5868:	41 39 74 24 0c       	cmp    %esi,0xc(%r12)
    586d:	7e 21                	jle    0x5890
    586f:	48 63 c6             	movslq %esi,%rax
    5872:	83 c6 01             	add    $0x1,%esi
    5875:	4d 89 e5             	mov    %r12,%r13
    5878:	41 89 5c 84 18       	mov    %ebx,0x18(%r12,%rax,4)
    587d:	41 89 74 24 14       	mov    %esi,0x14(%r12)
    5882:	4c 89 e8             	mov    %r13,%rax
    5885:	48 83 c4 28          	add    $0x28,%rsp
    5889:	5b                   	pop    %rbx
    588a:	5e                   	pop    %rsi
    588b:	41 5c                	pop    %r12
    588d:	41 5d                	pop    %r13
    588f:	c3                   	ret    
    5890:	41 8b 44 24 08       	mov    0x8(%r12),%eax
    5895:	8d 48 01             	lea    0x1(%rax),%ecx
    5898:	e8 13 fe ff ff       	call   0x56b0
    589d:	49 89 c5             	mov    %rax,%r13
    58a0:	48 85 c0             	test   %rax,%rax
    58a3:	74 dd                	je     0x5882
    58a5:	48 8d 48 10          	lea    0x10(%rax),%rcx
    58a9:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    58ae:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
    58b3:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
    58ba:	00 
    58bb:	e8 50 09 00 00       	call   0x6210
    58c0:	4c 89 e1             	mov    %r12,%rcx
    58c3:	4d 89 ec             	mov    %r13,%r12
    58c6:	e8 e5 fe ff ff       	call   0x57b0
    58cb:	eb a2                	jmp    0x586f
    58cd:	0f 1f 00             	nopl   (%rax)
    58d0:	53                   	push   %rbx
    58d1:	48 83 ec 20          	sub    $0x20,%rsp
    58d5:	89 cb                	mov    %ecx,%ebx
    58d7:	b9 01 00 00 00       	mov    $0x1,%ecx
    58dc:	e8 cf fd ff ff       	call   0x56b0
    58e1:	48 85 c0             	test   %rax,%rax
    58e4:	74 0a                	je     0x58f0
    58e6:	89 58 18             	mov    %ebx,0x18(%rax)
    58e9:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    58f0:	48 83 c4 20          	add    $0x20,%rsp
    58f4:	5b                   	pop    %rbx
    58f5:	c3                   	ret    
    58f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    58fd:	00 00 00 
    5900:	41 57                	push   %r15
    5902:	41 56                	push   %r14
    5904:	41 55                	push   %r13
    5906:	41 54                	push   %r12
    5908:	55                   	push   %rbp
    5909:	57                   	push   %rdi
    590a:	56                   	push   %rsi
    590b:	53                   	push   %rbx
    590c:	48 83 ec 28          	sub    $0x28,%rsp
    5910:	48 63 69 14          	movslq 0x14(%rcx),%rbp
    5914:	48 63 7a 14          	movslq 0x14(%rdx),%rdi
    5918:	49 89 cd             	mov    %rcx,%r13
    591b:	49 89 d7             	mov    %rdx,%r15
    591e:	39 fd                	cmp    %edi,%ebp
    5920:	7c 0e                	jl     0x5930
    5922:	89 f8                	mov    %edi,%eax
    5924:	49 89 cf             	mov    %rcx,%r15
    5927:	48 63 fd             	movslq %ebp,%rdi
    592a:	49 89 d5             	mov    %rdx,%r13
    592d:	48 63 e8             	movslq %eax,%rbp
    5930:	31 c9                	xor    %ecx,%ecx
    5932:	8d 1c 2f             	lea    (%rdi,%rbp,1),%ebx
    5935:	41 39 5f 0c          	cmp    %ebx,0xc(%r15)
    5939:	0f 9c c1             	setl   %cl
    593c:	41 03 4f 08          	add    0x8(%r15),%ecx
    5940:	e8 6b fd ff ff       	call   0x56b0
    5945:	49 89 c4             	mov    %rax,%r12
    5948:	48 85 c0             	test   %rax,%rax
    594b:	0f 84 e4 00 00 00    	je     0x5a35
    5951:	48 8d 70 18          	lea    0x18(%rax),%rsi
    5955:	48 63 c3             	movslq %ebx,%rax
    5958:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
    595c:	48 89 f1             	mov    %rsi,%rcx
    595f:	48 39 c6             	cmp    %rax,%rsi
    5962:	73 13                	jae    0x5977
    5964:	0f 1f 40 00          	nopl   0x0(%rax)
    5968:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
    596e:	48 83 c1 04          	add    $0x4,%rcx
    5972:	48 39 c8             	cmp    %rcx,%rax
    5975:	77 f1                	ja     0x5968
    5977:	4d 8d 55 18          	lea    0x18(%r13),%r10
    597b:	4d 8d 77 18          	lea    0x18(%r15),%r14
    597f:	49 8d 2c aa          	lea    (%r10,%rbp,4),%rbp
    5983:	49 8d 3c be          	lea    (%r14,%rdi,4),%rdi
    5987:	49 39 ea             	cmp    %rbp,%r10
    598a:	0f 83 84 00 00 00    	jae    0x5a14
    5990:	48 89 fa             	mov    %rdi,%rdx
    5993:	4c 29 fa             	sub    %r15,%rdx
    5996:	49 83 c7 19          	add    $0x19,%r15
    599a:	48 83 ea 19          	sub    $0x19,%rdx
    599e:	48 c1 ea 02          	shr    $0x2,%rdx
    59a2:	4c 39 ff             	cmp    %r15,%rdi
    59a5:	4c 8d 2c 95 04 00 00 	lea    0x4(,%rdx,4),%r13
    59ac:	00 
    59ad:	ba 04 00 00 00       	mov    $0x4,%edx
    59b2:	4c 0f 42 ea          	cmovb  %rdx,%r13
    59b6:	eb 11                	jmp    0x59c9
    59b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    59bf:	00 
    59c0:	48 83 c6 04          	add    $0x4,%rsi
    59c4:	4c 39 d5             	cmp    %r10,%rbp
    59c7:	76 4b                	jbe    0x5a14
    59c9:	45 8b 1a             	mov    (%r10),%r11d
    59cc:	49 83 c2 04          	add    $0x4,%r10
    59d0:	45 85 db             	test   %r11d,%r11d
    59d3:	74 eb                	je     0x59c0
    59d5:	49 89 f0             	mov    %rsi,%r8
    59d8:	4c 89 f1             	mov    %r14,%rcx
    59db:	45 31 c9             	xor    %r9d,%r9d
    59de:	66 90                	xchg   %ax,%ax
    59e0:	8b 11                	mov    (%rcx),%edx
    59e2:	45 8b 38             	mov    (%r8),%r15d
    59e5:	48 83 c1 04          	add    $0x4,%rcx
    59e9:	49 83 c0 04          	add    $0x4,%r8
    59ed:	49 0f af d3          	imul   %r11,%rdx
    59f1:	4c 01 fa             	add    %r15,%rdx
    59f4:	4c 01 ca             	add    %r9,%rdx
    59f7:	49 89 d1             	mov    %rdx,%r9
    59fa:	41 89 50 fc          	mov    %edx,-0x4(%r8)
    59fe:	49 c1 e9 20          	shr    $0x20,%r9
    5a02:	48 39 cf             	cmp    %rcx,%rdi
    5a05:	77 d9                	ja     0x59e0
    5a07:	46 89 0c 2e          	mov    %r9d,(%rsi,%r13,1)
    5a0b:	48 83 c6 04          	add    $0x4,%rsi
    5a0f:	4c 39 d5             	cmp    %r10,%rbp
    5a12:	77 b5                	ja     0x59c9
    5a14:	85 db                	test   %ebx,%ebx
    5a16:	7f 0d                	jg     0x5a25
    5a18:	eb 16                	jmp    0x5a30
    5a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5a20:	83 eb 01             	sub    $0x1,%ebx
    5a23:	74 0b                	je     0x5a30
    5a25:	8b 50 fc             	mov    -0x4(%rax),%edx
    5a28:	48 83 e8 04          	sub    $0x4,%rax
    5a2c:	85 d2                	test   %edx,%edx
    5a2e:	74 f0                	je     0x5a20
    5a30:	41 89 5c 24 14       	mov    %ebx,0x14(%r12)
    5a35:	4c 89 e0             	mov    %r12,%rax
    5a38:	48 83 c4 28          	add    $0x28,%rsp
    5a3c:	5b                   	pop    %rbx
    5a3d:	5e                   	pop    %rsi
    5a3e:	5f                   	pop    %rdi
    5a3f:	5d                   	pop    %rbp
    5a40:	41 5c                	pop    %r12
    5a42:	41 5d                	pop    %r13
    5a44:	41 5e                	pop    %r14
    5a46:	41 5f                	pop    %r15
    5a48:	c3                   	ret    
    5a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5a50:	41 55                	push   %r13
    5a52:	41 54                	push   %r12
    5a54:	57                   	push   %rdi
    5a55:	56                   	push   %rsi
    5a56:	53                   	push   %rbx
    5a57:	48 83 ec 20          	sub    $0x20,%rsp
    5a5b:	89 d0                	mov    %edx,%eax
    5a5d:	49 89 cd             	mov    %rcx,%r13
    5a60:	89 d3                	mov    %edx,%ebx
    5a62:	83 e0 03             	and    $0x3,%eax
    5a65:	0f 85 c5 00 00 00    	jne    0x5b30
    5a6b:	c1 fb 02             	sar    $0x2,%ebx
    5a6e:	4d 89 ec             	mov    %r13,%r12
    5a71:	74 57                	je     0x5aca
    5a73:	48 8b 3d 06 57 00 00 	mov    0x5706(%rip),%rdi        # 0xb180
    5a7a:	48 85 ff             	test   %rdi,%rdi
    5a7d:	0f 84 e2 00 00 00    	je     0x5b65
    5a83:	4d 89 ec             	mov    %r13,%r12
    5a86:	4c 8d 2d 9b 60 00 00 	lea    0x609b(%rip),%r13        # 0xbb28
    5a8d:	eb 10                	jmp    0x5a9f
    5a8f:	90                   	nop
    5a90:	d1 fb                	sar    %ebx
    5a92:	74 36                	je     0x5aca
    5a94:	48 8b 37             	mov    (%rdi),%rsi
    5a97:	48 85 f6             	test   %rsi,%rsi
    5a9a:	74 44                	je     0x5ae0
    5a9c:	48 89 f7             	mov    %rsi,%rdi
    5a9f:	f6 c3 01             	test   $0x1,%bl
    5aa2:	74 ec                	je     0x5a90
    5aa4:	48 89 fa             	mov    %rdi,%rdx
    5aa7:	4c 89 e1             	mov    %r12,%rcx
    5aaa:	e8 51 fe ff ff       	call   0x5900
    5aaf:	48 89 c6             	mov    %rax,%rsi
    5ab2:	48 85 c0             	test   %rax,%rax
    5ab5:	0f 84 98 00 00 00    	je     0x5b53
    5abb:	4c 89 e1             	mov    %r12,%rcx
    5abe:	49 89 f4             	mov    %rsi,%r12
    5ac1:	e8 ea fc ff ff       	call   0x57b0
    5ac6:	d1 fb                	sar    %ebx
    5ac8:	75 ca                	jne    0x5a94
    5aca:	4c 89 e0             	mov    %r12,%rax
    5acd:	48 83 c4 20          	add    $0x20,%rsp
    5ad1:	5b                   	pop    %rbx
    5ad2:	5e                   	pop    %rsi
    5ad3:	5f                   	pop    %rdi
    5ad4:	41 5c                	pop    %r12
    5ad6:	41 5d                	pop    %r13
    5ad8:	c3                   	ret    
    5ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5ae0:	b9 01 00 00 00       	mov    $0x1,%ecx
    5ae5:	e8 96 fa ff ff       	call   0x5580
    5aea:	48 8b 37             	mov    (%rdi),%rsi
    5aed:	48 85 f6             	test   %rsi,%rsi
    5af0:	74 1e                	je     0x5b10
    5af2:	83 3d f7 5f 00 00 02 	cmpl   $0x2,0x5ff7(%rip)        # 0xbaf0
    5af9:	75 a1                	jne    0x5a9c
    5afb:	4c 89 e9             	mov    %r13,%rcx
    5afe:	ff 15 00 67 00 00    	call   *0x6700(%rip)        # 0xc204
    5b04:	eb 96                	jmp    0x5a9c
    5b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5b0d:	00 00 00 
    5b10:	48 89 fa             	mov    %rdi,%rdx
    5b13:	48 89 f9             	mov    %rdi,%rcx
    5b16:	e8 e5 fd ff ff       	call   0x5900
    5b1b:	48 89 07             	mov    %rax,(%rdi)
    5b1e:	48 89 c6             	mov    %rax,%rsi
    5b21:	48 85 c0             	test   %rax,%rax
    5b24:	74 2d                	je     0x5b53
    5b26:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    5b2d:	eb c3                	jmp    0x5af2
    5b2f:	90                   	nop
    5b30:	83 e8 01             	sub    $0x1,%eax
    5b33:	48 8d 15 e6 29 00 00 	lea    0x29e6(%rip),%rdx        # 0x8520
    5b3a:	45 31 c0             	xor    %r8d,%r8d
    5b3d:	48 98                	cltq   
    5b3f:	8b 14 82             	mov    (%rdx,%rax,4),%edx
    5b42:	e8 d9 fc ff ff       	call   0x5820
    5b47:	49 89 c5             	mov    %rax,%r13
    5b4a:	48 85 c0             	test   %rax,%rax
    5b4d:	0f 85 18 ff ff ff    	jne    0x5a6b
    5b53:	45 31 e4             	xor    %r12d,%r12d
    5b56:	4c 89 e0             	mov    %r12,%rax
    5b59:	48 83 c4 20          	add    $0x20,%rsp
    5b5d:	5b                   	pop    %rbx
    5b5e:	5e                   	pop    %rsi
    5b5f:	5f                   	pop    %rdi
    5b60:	41 5c                	pop    %r12
    5b62:	41 5d                	pop    %r13
    5b64:	c3                   	ret    
    5b65:	b9 01 00 00 00       	mov    $0x1,%ecx
    5b6a:	e8 11 fa ff ff       	call   0x5580
    5b6f:	48 8b 3d 0a 56 00 00 	mov    0x560a(%rip),%rdi        # 0xb180
    5b76:	48 85 ff             	test   %rdi,%rdi
    5b79:	74 1f                	je     0x5b9a
    5b7b:	83 3d 6e 5f 00 00 02 	cmpl   $0x2,0x5f6e(%rip)        # 0xbaf0
    5b82:	0f 85 fb fe ff ff    	jne    0x5a83
    5b88:	48 8d 0d 99 5f 00 00 	lea    0x5f99(%rip),%rcx        # 0xbb28
    5b8f:	ff 15 6f 66 00 00    	call   *0x666f(%rip)        # 0xc204
    5b95:	e9 e9 fe ff ff       	jmp    0x5a83
    5b9a:	b9 01 00 00 00       	mov    $0x1,%ecx
    5b9f:	e8 0c fb ff ff       	call   0x56b0
    5ba4:	48 89 c7             	mov    %rax,%rdi
    5ba7:	48 85 c0             	test   %rax,%rax
    5baa:	74 1e                	je     0x5bca
    5bac:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
    5bb3:	02 00 00 
    5bb6:	48 89 3d c3 55 00 00 	mov    %rdi,0x55c3(%rip)        # 0xb180
    5bbd:	48 89 47 14          	mov    %rax,0x14(%rdi)
    5bc1:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    5bc8:	eb b1                	jmp    0x5b7b
    5bca:	48 c7 05 ab 55 00 00 	movq   $0x0,0x55ab(%rip)        # 0xb180
    5bd1:	00 00 00 00 
    5bd5:	45 31 e4             	xor    %r12d,%r12d
    5bd8:	e9 ed fe ff ff       	jmp    0x5aca
    5bdd:	0f 1f 00             	nopl   (%rax)
    5be0:	41 56                	push   %r14
    5be2:	41 55                	push   %r13
    5be4:	41 54                	push   %r12
    5be6:	55                   	push   %rbp
    5be7:	57                   	push   %rdi
    5be8:	56                   	push   %rsi
    5be9:	53                   	push   %rbx
    5bea:	48 83 ec 20          	sub    $0x20,%rsp
    5bee:	49 89 cc             	mov    %rcx,%r12
    5bf1:	89 d6                	mov    %edx,%esi
    5bf3:	8b 49 08             	mov    0x8(%rcx),%ecx
    5bf6:	41 89 d6             	mov    %edx,%r14d
    5bf9:	41 8b 5c 24 14       	mov    0x14(%r12),%ebx
    5bfe:	c1 fe 05             	sar    $0x5,%esi
    5c01:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    5c06:	01 f3                	add    %esi,%ebx
    5c08:	8d 6b 01             	lea    0x1(%rbx),%ebp
    5c0b:	39 c5                	cmp    %eax,%ebp
    5c0d:	7e 0a                	jle    0x5c19
    5c0f:	90                   	nop
    5c10:	01 c0                	add    %eax,%eax
    5c12:	83 c1 01             	add    $0x1,%ecx
    5c15:	39 c5                	cmp    %eax,%ebp
    5c17:	7f f7                	jg     0x5c10
    5c19:	e8 92 fa ff ff       	call   0x56b0
    5c1e:	49 89 c5             	mov    %rax,%r13
    5c21:	48 85 c0             	test   %rax,%rax
    5c24:	0f 84 ba 00 00 00    	je     0x5ce4
    5c2a:	48 8d 78 18          	lea    0x18(%rax),%rdi
    5c2e:	85 f6                	test   %esi,%esi
    5c30:	7e 24                	jle    0x5c56
    5c32:	8d 56 ff             	lea    -0x1(%rsi),%edx
    5c35:	49 89 f8             	mov    %rdi,%r8
    5c38:	48 8d 44 90 1c       	lea    0x1c(%rax,%rdx,4),%rax
    5c3d:	0f 1f 00             	nopl   (%rax)
    5c40:	49 83 c0 04          	add    $0x4,%r8
    5c44:	41 c7 40 fc 00 00 00 	movl   $0x0,-0x4(%r8)
    5c4b:	00 
    5c4c:	49 39 c0             	cmp    %rax,%r8
    5c4f:	75 ef                	jne    0x5c40
    5c51:	48 8d 7c 97 04       	lea    0x4(%rdi,%rdx,4),%rdi
    5c56:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    5c5b:	49 8d 74 24 18       	lea    0x18(%r12),%rsi
    5c60:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
    5c64:	41 83 e6 1f          	and    $0x1f,%r14d
    5c68:	0f 84 92 00 00 00    	je     0x5d00
    5c6e:	41 ba 20 00 00 00    	mov    $0x20,%r10d
    5c74:	49 89 f9             	mov    %rdi,%r9
    5c77:	45 31 c0             	xor    %r8d,%r8d
    5c7a:	45 29 f2             	sub    %r14d,%r10d
    5c7d:	0f 1f 00             	nopl   (%rax)
    5c80:	8b 16                	mov    (%rsi),%edx
    5c82:	44 89 f1             	mov    %r14d,%ecx
    5c85:	49 83 c1 04          	add    $0x4,%r9
    5c89:	48 83 c6 04          	add    $0x4,%rsi
    5c8d:	d3 e2                	shl    %cl,%edx
    5c8f:	89 d1                	mov    %edx,%ecx
    5c91:	44 09 c1             	or     %r8d,%ecx
    5c94:	41 89 49 fc          	mov    %ecx,-0x4(%r9)
    5c98:	44 8b 46 fc          	mov    -0x4(%rsi),%r8d
    5c9c:	44 89 d1             	mov    %r10d,%ecx
    5c9f:	41 d3 e8             	shr    %cl,%r8d
    5ca2:	48 39 f0             	cmp    %rsi,%rax
    5ca5:	77 d9                	ja     0x5c80
    5ca7:	48 89 c2             	mov    %rax,%rdx
    5caa:	49 8d 4c 24 19       	lea    0x19(%r12),%rcx
    5caf:	4c 29 e2             	sub    %r12,%rdx
    5cb2:	48 83 ea 19          	sub    $0x19,%rdx
    5cb6:	48 c1 ea 02          	shr    $0x2,%rdx
    5cba:	48 39 c8             	cmp    %rcx,%rax
    5cbd:	b8 04 00 00 00       	mov    $0x4,%eax
    5cc2:	48 8d 14 95 04 00 00 	lea    0x4(,%rdx,4),%rdx
    5cc9:	00 
    5cca:	48 0f 42 d0          	cmovb  %rax,%rdx
    5cce:	45 85 c0             	test   %r8d,%r8d
    5cd1:	0f 45 dd             	cmovne %ebp,%ebx
    5cd4:	44 89 04 17          	mov    %r8d,(%rdi,%rdx,1)
    5cd8:	41 89 5d 14          	mov    %ebx,0x14(%r13)
    5cdc:	4c 89 e1             	mov    %r12,%rcx
    5cdf:	e8 cc fa ff ff       	call   0x57b0
    5ce4:	4c 89 e8             	mov    %r13,%rax
    5ce7:	48 83 c4 20          	add    $0x20,%rsp
    5ceb:	5b                   	pop    %rbx
    5cec:	5e                   	pop    %rsi
    5ced:	5f                   	pop    %rdi
    5cee:	5d                   	pop    %rbp
    5cef:	41 5c                	pop    %r12
    5cf1:	41 5d                	pop    %r13
    5cf3:	41 5e                	pop    %r14
    5cf5:	c3                   	ret    
    5cf6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5cfd:	00 00 00 
    5d00:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    5d01:	48 39 f0             	cmp    %rsi,%rax
    5d04:	76 d2                	jbe    0x5cd8
    5d06:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    5d07:	48 39 f0             	cmp    %rsi,%rax
    5d0a:	77 f4                	ja     0x5d00
    5d0c:	eb ca                	jmp    0x5cd8
    5d0e:	66 90                	xchg   %ax,%ax
    5d10:	48 63 42 14          	movslq 0x14(%rdx),%rax
    5d14:	44 8b 49 14          	mov    0x14(%rcx),%r9d
    5d18:	41 29 c1             	sub    %eax,%r9d
    5d1b:	75 37                	jne    0x5d54
    5d1d:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
    5d24:	00 
    5d25:	48 83 c1 18          	add    $0x18,%rcx
    5d29:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
    5d2d:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
    5d32:	eb 09                	jmp    0x5d3d
    5d34:	0f 1f 40 00          	nopl   0x0(%rax)
    5d38:	48 39 c1             	cmp    %rax,%rcx
    5d3b:	73 17                	jae    0x5d54
    5d3d:	48 83 e8 04          	sub    $0x4,%rax
    5d41:	48 83 ea 04          	sub    $0x4,%rdx
    5d45:	44 8b 12             	mov    (%rdx),%r10d
    5d48:	44 39 10             	cmp    %r10d,(%rax)
    5d4b:	74 eb                	je     0x5d38
    5d4d:	45 19 c9             	sbb    %r9d,%r9d
    5d50:	41 83 c9 01          	or     $0x1,%r9d
    5d54:	44 89 c8             	mov    %r9d,%eax
    5d57:	c3                   	ret    
    5d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5d5f:	00 
    5d60:	41 55                	push   %r13
    5d62:	41 54                	push   %r12
    5d64:	55                   	push   %rbp
    5d65:	57                   	push   %rdi
    5d66:	56                   	push   %rsi
    5d67:	53                   	push   %rbx
    5d68:	48 83 ec 28          	sub    $0x28,%rsp
    5d6c:	48 63 42 14          	movslq 0x14(%rdx),%rax
    5d70:	8b 79 14             	mov    0x14(%rcx),%edi
    5d73:	48 89 ce             	mov    %rcx,%rsi
    5d76:	48 89 d3             	mov    %rdx,%rbx
    5d79:	29 c7                	sub    %eax,%edi
    5d7b:	0f 85 5f 01 00 00    	jne    0x5ee0
    5d81:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5d88:	00 
    5d89:	48 8d 49 18          	lea    0x18(%rcx),%rcx
    5d8d:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
    5d91:	48 8d 54 13 18       	lea    0x18(%rbx,%rdx,1),%rdx
    5d96:	eb 11                	jmp    0x5da9
    5d98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5d9f:	00 
    5da0:	48 39 c1             	cmp    %rax,%rcx
    5da3:	0f 83 57 01 00 00    	jae    0x5f00
    5da9:	48 83 e8 04          	sub    $0x4,%rax
    5dad:	48 83 ea 04          	sub    $0x4,%rdx
    5db1:	44 8b 12             	mov    (%rdx),%r10d
    5db4:	44 39 10             	cmp    %r10d,(%rax)
    5db7:	74 e7                	je     0x5da0
    5db9:	0f 82 2c 01 00 00    	jb     0x5eeb
    5dbf:	8b 4e 08             	mov    0x8(%rsi),%ecx
    5dc2:	e8 e9 f8 ff ff       	call   0x56b0
    5dc7:	48 85 c0             	test   %rax,%rax
    5dca:	0f 84 03 01 00 00    	je     0x5ed3
    5dd0:	48 63 56 14          	movslq 0x14(%rsi),%rdx
    5dd4:	4c 8d 66 18          	lea    0x18(%rsi),%r12
    5dd8:	89 78 10             	mov    %edi,0x10(%rax)
    5ddb:	4c 8d 68 18          	lea    0x18(%rax),%r13
    5ddf:	41 b9 18 00 00 00    	mov    $0x18,%r9d
    5de5:	45 31 c0             	xor    %r8d,%r8d
    5de8:	49 89 d2             	mov    %rdx,%r10
    5deb:	49 8d 3c 94          	lea    (%r12,%rdx,4),%rdi
    5def:	48 63 53 14          	movslq 0x14(%rbx),%rdx
    5df3:	48 8d 6c 93 18       	lea    0x18(%rbx,%rdx,4),%rbp
    5df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5dff:	00 
    5e00:	42 8b 0c 0e          	mov    (%rsi,%r9,1),%ecx
    5e04:	42 8b 14 0b          	mov    (%rbx,%r9,1),%edx
    5e08:	4c 29 c1             	sub    %r8,%rcx
    5e0b:	48 29 d1             	sub    %rdx,%rcx
    5e0e:	42 89 0c 08          	mov    %ecx,(%rax,%r9,1)
    5e12:	49 89 c8             	mov    %rcx,%r8
    5e15:	49 83 c1 04          	add    $0x4,%r9
    5e19:	41 89 cb             	mov    %ecx,%r11d
    5e1c:	49 c1 e8 20          	shr    $0x20,%r8
    5e20:	49 8d 14 19          	lea    (%r9,%rbx,1),%rdx
    5e24:	41 83 e0 01          	and    $0x1,%r8d
    5e28:	48 39 d5             	cmp    %rdx,%rbp
    5e2b:	77 d3                	ja     0x5e00
    5e2d:	48 89 ea             	mov    %rbp,%rdx
    5e30:	4c 8d 4b 19          	lea    0x19(%rbx),%r9
    5e34:	48 29 da             	sub    %rbx,%rdx
    5e37:	bb 00 00 00 00       	mov    $0x0,%ebx
    5e3c:	48 83 ea 19          	sub    $0x19,%rdx
    5e40:	48 89 d1             	mov    %rdx,%rcx
    5e43:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    5e47:	48 c1 e9 02          	shr    $0x2,%rcx
    5e4b:	4c 39 cd             	cmp    %r9,%rbp
    5e4e:	48 0f 42 d3          	cmovb  %rbx,%rdx
    5e52:	48 8d 0c 8d 04 00 00 	lea    0x4(,%rcx,4),%rcx
    5e59:	00 
    5e5a:	4c 01 ea             	add    %r13,%rdx
    5e5d:	4c 39 cd             	cmp    %r9,%rbp
    5e60:	41 b9 04 00 00 00    	mov    $0x4,%r9d
    5e66:	49 0f 42 c9          	cmovb  %r9,%rcx
    5e6a:	49 01 cc             	add    %rcx,%r12
    5e6d:	49 01 cd             	add    %rcx,%r13
    5e70:	4c 39 e7             	cmp    %r12,%rdi
    5e73:	76 3d                	jbe    0x5eb2
    5e75:	4d 89 e9             	mov    %r13,%r9
    5e78:	4c 89 e1             	mov    %r12,%rcx
    5e7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5e80:	8b 11                	mov    (%rcx),%edx
    5e82:	48 83 c1 04          	add    $0x4,%rcx
    5e86:	49 83 c1 04          	add    $0x4,%r9
    5e8a:	4c 29 c2             	sub    %r8,%rdx
    5e8d:	49 89 d0             	mov    %rdx,%r8
    5e90:	41 89 51 fc          	mov    %edx,-0x4(%r9)
    5e94:	41 89 d3             	mov    %edx,%r11d
    5e97:	49 c1 e8 20          	shr    $0x20,%r8
    5e9b:	41 83 e0 01          	and    $0x1,%r8d
    5e9f:	48 39 cf             	cmp    %rcx,%rdi
    5ea2:	77 dc                	ja     0x5e80
    5ea4:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
    5ea8:	4c 29 e2             	sub    %r12,%rdx
    5eab:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    5eaf:	4c 01 ea             	add    %r13,%rdx
    5eb2:	45 85 db             	test   %r11d,%r11d
    5eb5:	75 18                	jne    0x5ecf
    5eb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    5ebe:	00 00 
    5ec0:	8b 4a fc             	mov    -0x4(%rdx),%ecx
    5ec3:	48 83 ea 04          	sub    $0x4,%rdx
    5ec7:	41 83 ea 01          	sub    $0x1,%r10d
    5ecb:	85 c9                	test   %ecx,%ecx
    5ecd:	74 f1                	je     0x5ec0
    5ecf:	44 89 50 14          	mov    %r10d,0x14(%rax)
    5ed3:	48 83 c4 28          	add    $0x28,%rsp
    5ed7:	5b                   	pop    %rbx
    5ed8:	5e                   	pop    %rsi
    5ed9:	5f                   	pop    %rdi
    5eda:	5d                   	pop    %rbp
    5edb:	41 5c                	pop    %r12
    5edd:	41 5d                	pop    %r13
    5edf:	c3                   	ret    
    5ee0:	bf 00 00 00 00       	mov    $0x0,%edi
    5ee5:	0f 89 d4 fe ff ff    	jns    0x5dbf
    5eeb:	48 89 f0             	mov    %rsi,%rax
    5eee:	bf 01 00 00 00       	mov    $0x1,%edi
    5ef3:	48 89 de             	mov    %rbx,%rsi
    5ef6:	48 89 c3             	mov    %rax,%rbx
    5ef9:	e9 c1 fe ff ff       	jmp    0x5dbf
    5efe:	66 90                	xchg   %ax,%ax
    5f00:	31 c9                	xor    %ecx,%ecx
    5f02:	e8 a9 f7 ff ff       	call   0x56b0
    5f07:	48 85 c0             	test   %rax,%rax
    5f0a:	74 c7                	je     0x5ed3
    5f0c:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
    5f13:	00 
    5f14:	48 83 c4 28          	add    $0x28,%rsp
    5f18:	5b                   	pop    %rbx
    5f19:	5e                   	pop    %rsi
    5f1a:	5f                   	pop    %rdi
    5f1b:	5d                   	pop    %rbp
    5f1c:	41 5c                	pop    %r12
    5f1e:	41 5d                	pop    %r13
    5f20:	c3                   	ret    
    5f21:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    5f28:	00 00 00 00 
    5f2c:	0f 1f 40 00          	nopl   0x0(%rax)
    5f30:	41 54                	push   %r12
    5f32:	53                   	push   %rbx
    5f33:	48 63 41 14          	movslq 0x14(%rcx),%rax
    5f37:	4c 8d 59 18          	lea    0x18(%rcx),%r11
    5f3b:	49 89 d4             	mov    %rdx,%r12
    5f3e:	b9 20 00 00 00       	mov    $0x20,%ecx
    5f43:	4d 8d 0c 83          	lea    (%r11,%rax,4),%r9
    5f47:	89 c8                	mov    %ecx,%eax
    5f49:	45 8b 41 fc          	mov    -0x4(%r9),%r8d
    5f4d:	4d 8d 51 fc          	lea    -0x4(%r9),%r10
    5f51:	41 0f bd d0          	bsr    %r8d,%edx
    5f55:	83 f2 1f             	xor    $0x1f,%edx
    5f58:	29 d0                	sub    %edx,%eax
    5f5a:	41 89 04 24          	mov    %eax,(%r12)
    5f5e:	83 fa 0a             	cmp    $0xa,%edx
    5f61:	0f 8e 89 00 00 00    	jle    0x5ff0
    5f67:	83 ea 0b             	sub    $0xb,%edx
    5f6a:	4d 39 d3             	cmp    %r10,%r11
    5f6d:	73 61                	jae    0x5fd0
    5f6f:	45 8b 51 f8          	mov    -0x8(%r9),%r10d
    5f73:	85 d2                	test   %edx,%edx
    5f75:	74 60                	je     0x5fd7
    5f77:	89 cb                	mov    %ecx,%ebx
    5f79:	44 89 c0             	mov    %r8d,%eax
    5f7c:	89 d1                	mov    %edx,%ecx
    5f7e:	45 89 d0             	mov    %r10d,%r8d
    5f81:	29 d3                	sub    %edx,%ebx
    5f83:	d3 e0                	shl    %cl,%eax
    5f85:	89 d9                	mov    %ebx,%ecx
    5f87:	41 d3 e8             	shr    %cl,%r8d
    5f8a:	89 d1                	mov    %edx,%ecx
    5f8c:	49 8d 51 f8          	lea    -0x8(%r9),%rdx
    5f90:	44 09 c0             	or     %r8d,%eax
    5f93:	41 d3 e2             	shl    %cl,%r10d
    5f96:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    5f9b:	48 c1 e0 20          	shl    $0x20,%rax
    5f9f:	49 39 d3             	cmp    %rdx,%r11
    5fa2:	73 0b                	jae    0x5faf
    5fa4:	41 8b 51 f4          	mov    -0xc(%r9),%edx
    5fa8:	89 d9                	mov    %ebx,%ecx
    5faa:	d3 ea                	shr    %cl,%edx
    5fac:	41 09 d2             	or     %edx,%r10d
    5faf:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    5fb6:	ff ff ff 
    5fb9:	48 21 d0             	and    %rdx,%rax
    5fbc:	4c 09 d0             	or     %r10,%rax
    5fbf:	66 48 0f 6e c0       	movq   %rax,%xmm0
    5fc4:	5b                   	pop    %rbx
    5fc5:	41 5c                	pop    %r12
    5fc7:	c3                   	ret    
    5fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5fcf:	00 
    5fd0:	45 31 d2             	xor    %r10d,%r10d
    5fd3:	85 d2                	test   %edx,%edx
    5fd5:	75 59                	jne    0x6030
    5fd7:	44 89 c0             	mov    %r8d,%eax
    5fda:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    5fdf:	48 c1 e0 20          	shl    $0x20,%rax
    5fe3:	4c 09 d0             	or     %r10,%rax
    5fe6:	66 48 0f 6e c0       	movq   %rax,%xmm0
    5feb:	5b                   	pop    %rbx
    5fec:	41 5c                	pop    %r12
    5fee:	c3                   	ret    
    5fef:	90                   	nop
    5ff0:	b9 0b 00 00 00       	mov    $0xb,%ecx
    5ff5:	44 89 c0             	mov    %r8d,%eax
    5ff8:	31 db                	xor    %ebx,%ebx
    5ffa:	29 d1                	sub    %edx,%ecx
    5ffc:	d3 e8                	shr    %cl,%eax
    5ffe:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    6003:	48 c1 e0 20          	shl    $0x20,%rax
    6007:	4d 39 d3             	cmp    %r10,%r11
    600a:	73 06                	jae    0x6012
    600c:	41 8b 59 f8          	mov    -0x8(%r9),%ebx
    6010:	d3 eb                	shr    %cl,%ebx
    6012:	8d 4a 15             	lea    0x15(%rdx),%ecx
    6015:	41 d3 e0             	shl    %cl,%r8d
    6018:	41 09 d8             	or     %ebx,%r8d
    601b:	4c 09 c0             	or     %r8,%rax
    601e:	66 48 0f 6e c0       	movq   %rax,%xmm0
    6023:	5b                   	pop    %rbx
    6024:	41 5c                	pop    %r12
    6026:	c3                   	ret    
    6027:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    602e:	00 00 
    6030:	44 89 c0             	mov    %r8d,%eax
    6033:	89 d1                	mov    %edx,%ecx
    6035:	45 31 d2             	xor    %r10d,%r10d
    6038:	d3 e0                	shl    %cl,%eax
    603a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    603f:	48 c1 e0 20          	shl    $0x20,%rax
    6043:	e9 67 ff ff ff       	jmp    0x5faf
    6048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    604f:	00 
    6050:	57                   	push   %rdi
    6051:	56                   	push   %rsi
    6052:	53                   	push   %rbx
    6053:	48 83 ec 20          	sub    $0x20,%rsp
    6057:	b9 01 00 00 00       	mov    $0x1,%ecx
    605c:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    6061:	48 89 d7             	mov    %rdx,%rdi
    6064:	4c 89 c6             	mov    %r8,%rsi
    6067:	e8 44 f6 ff ff       	call   0x56b0
    606c:	48 85 c0             	test   %rax,%rax
    606f:	0f 84 8f 00 00 00    	je     0x6104
    6075:	48 89 d9             	mov    %rbx,%rcx
    6078:	48 89 da             	mov    %rbx,%rdx
    607b:	48 c1 e9 20          	shr    $0x20,%rcx
    607f:	41 89 ca             	mov    %ecx,%r10d
    6082:	c1 e9 14             	shr    $0x14,%ecx
    6085:	41 81 e2 ff ff 0f 00 	and    $0xfffff,%r10d
    608c:	45 89 d1             	mov    %r10d,%r9d
    608f:	41 81 c9 00 00 10 00 	or     $0x100000,%r9d
    6096:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
    609c:	45 0f 45 d1          	cmovne %r9d,%r10d
    60a0:	41 89 c8             	mov    %ecx,%r8d
    60a3:	85 db                	test   %ebx,%ebx
    60a5:	74 69                	je     0x6110
    60a7:	45 31 c9             	xor    %r9d,%r9d
    60aa:	f3 44 0f bc cb       	tzcnt  %ebx,%r9d
    60af:	44 89 c9             	mov    %r9d,%ecx
    60b2:	d3 ea                	shr    %cl,%edx
    60b4:	45 85 c9             	test   %r9d,%r9d
    60b7:	74 15                	je     0x60ce
    60b9:	b9 20 00 00 00       	mov    $0x20,%ecx
    60be:	44 89 d3             	mov    %r10d,%ebx
    60c1:	44 29 c9             	sub    %r9d,%ecx
    60c4:	d3 e3                	shl    %cl,%ebx
    60c6:	44 89 c9             	mov    %r9d,%ecx
    60c9:	09 da                	or     %ebx,%edx
    60cb:	41 d3 ea             	shr    %cl,%r10d
    60ce:	89 50 18             	mov    %edx,0x18(%rax)
    60d1:	31 d2                	xor    %edx,%edx
    60d3:	45 85 d2             	test   %r10d,%r10d
    60d6:	0f 95 c2             	setne  %dl
    60d9:	44 89 50 1c          	mov    %r10d,0x1c(%rax)
    60dd:	83 c2 01             	add    $0x1,%edx
    60e0:	89 50 14             	mov    %edx,0x14(%rax)
    60e3:	45 85 c0             	test   %r8d,%r8d
    60e6:	75 4c                	jne    0x6134
    60e8:	48 63 ca             	movslq %edx,%rcx
    60eb:	c1 e2 05             	shl    $0x5,%edx
    60ee:	41 81 e9 32 04 00 00 	sub    $0x432,%r9d
    60f5:	0f bd 4c 88 14       	bsr    0x14(%rax,%rcx,4),%ecx
    60fa:	44 89 0f             	mov    %r9d,(%rdi)
    60fd:	83 f1 1f             	xor    $0x1f,%ecx
    6100:	29 ca                	sub    %ecx,%edx
    6102:	89 16                	mov    %edx,(%rsi)
    6104:	48 83 c4 20          	add    $0x20,%rsp
    6108:	5b                   	pop    %rbx
    6109:	5e                   	pop    %rsi
    610a:	5f                   	pop    %rdi
    610b:	c3                   	ret    
    610c:	0f 1f 40 00          	nopl   0x0(%rax)
    6110:	31 c9                	xor    %ecx,%ecx
    6112:	44 89 d2             	mov    %r10d,%edx
    6115:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    611c:	f3 41 0f bc ca       	tzcnt  %r10d,%ecx
    6121:	d3 ea                	shr    %cl,%edx
    6123:	44 8d 49 20          	lea    0x20(%rcx),%r9d
    6127:	89 50 18             	mov    %edx,0x18(%rax)
    612a:	ba 01 00 00 00       	mov    $0x1,%edx
    612f:	45 85 c0             	test   %r8d,%r8d
    6132:	74 b4                	je     0x60e8
    6134:	43 8d 94 08 cd fb ff 	lea    -0x433(%r8,%r9,1),%edx
    613b:	ff 
    613c:	89 17                	mov    %edx,(%rdi)
    613e:	ba 35 00 00 00       	mov    $0x35,%edx
    6143:	44 29 ca             	sub    %r9d,%edx
    6146:	89 16                	mov    %edx,(%rsi)
    6148:	48 83 c4 20          	add    $0x20,%rsp
    614c:	5b                   	pop    %rbx
    614d:	5e                   	pop    %rsi
    614e:	5f                   	pop    %rdi
    614f:	c3                   	ret    
    6150:	48 89 c8             	mov    %rcx,%rax
    6153:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    6157:	0f b6 12             	movzbl (%rdx),%edx
    615a:	88 10                	mov    %dl,(%rax)
    615c:	84 d2                	test   %dl,%dl
    615e:	74 11                	je     0x6171
    6160:	0f b6 11             	movzbl (%rcx),%edx
    6163:	48 83 c0 01          	add    $0x1,%rax
    6167:	48 83 c1 01          	add    $0x1,%rcx
    616b:	88 10                	mov    %dl,(%rax)
    616d:	84 d2                	test   %dl,%dl
    616f:	75 ef                	jne    0x6160
    6171:	c3                   	ret    
    6172:	90                   	nop
    6173:	90                   	nop
    6174:	90                   	nop
    6175:	90                   	nop
    6176:	90                   	nop
    6177:	90                   	nop
    6178:	90                   	nop
    6179:	90                   	nop
    617a:	90                   	nop
    617b:	90                   	nop
    617c:	90                   	nop
    617d:	90                   	nop
    617e:	90                   	nop
    617f:	90                   	nop
    6180:	45 31 c0             	xor    %r8d,%r8d
    6183:	48 89 c8             	mov    %rcx,%rax
    6186:	48 85 d2             	test   %rdx,%rdx
    6189:	75 14                	jne    0x619f
    618b:	eb 17                	jmp    0x61a4
    618d:	0f 1f 00             	nopl   (%rax)
    6190:	48 83 c0 01          	add    $0x1,%rax
    6194:	49 89 c0             	mov    %rax,%r8
    6197:	49 29 c8             	sub    %rcx,%r8
    619a:	49 39 d0             	cmp    %rdx,%r8
    619d:	73 05                	jae    0x61a4
    619f:	80 38 00             	cmpb   $0x0,(%rax)
    61a2:	75 ec                	jne    0x6190
    61a4:	4c 89 c0             	mov    %r8,%rax
    61a7:	c3                   	ret    
    61a8:	90                   	nop
    61a9:	90                   	nop
    61aa:	90                   	nop
    61ab:	90                   	nop
    61ac:	90                   	nop
    61ad:	90                   	nop
    61ae:	90                   	nop
    61af:	90                   	nop
    61b0:	31 c0                	xor    %eax,%eax
    61b2:	48 85 d2             	test   %rdx,%rdx
    61b5:	75 12                	jne    0x61c9
    61b7:	eb 17                	jmp    0x61d0
    61b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    61c0:	48 83 c0 01          	add    $0x1,%rax
    61c4:	48 39 c2             	cmp    %rax,%rdx
    61c7:	74 07                	je     0x61d0
    61c9:	66 83 3c 41 00       	cmpw   $0x0,(%rcx,%rax,2)
    61ce:	75 f0                	jne    0x61c0
    61d0:	c3                   	ret    
    61d1:	90                   	nop
    61d2:	90                   	nop
    61d3:	90                   	nop
    61d4:	90                   	nop
    61d5:	90                   	nop
    61d6:	90                   	nop
    61d7:	90                   	nop
    61d8:	90                   	nop
    61d9:	90                   	nop
    61da:	90                   	nop
    61db:	90                   	nop
    61dc:	90                   	nop
    61dd:	90                   	nop
    61de:	90                   	nop
    61df:	90                   	nop
    61e0:	ff 25 76 61 00 00    	jmp    *0x6176(%rip)        # 0xc35c
    61e6:	90                   	nop
    61e7:	90                   	nop
    61e8:	ff 25 66 61 00 00    	jmp    *0x6166(%rip)        # 0xc354
    61ee:	90                   	nop
    61ef:	90                   	nop
    61f0:	ff 25 56 61 00 00    	jmp    *0x6156(%rip)        # 0xc34c
    61f6:	90                   	nop
    61f7:	90                   	nop
    61f8:	ff 25 46 61 00 00    	jmp    *0x6146(%rip)        # 0xc344
    61fe:	90                   	nop
    61ff:	90                   	nop
    6200:	ff 25 36 61 00 00    	jmp    *0x6136(%rip)        # 0xc33c
    6206:	90                   	nop
    6207:	90                   	nop
    6208:	ff 25 26 61 00 00    	jmp    *0x6126(%rip)        # 0xc334
    620e:	90                   	nop
    620f:	90                   	nop
    6210:	ff 25 16 61 00 00    	jmp    *0x6116(%rip)        # 0xc32c
    6216:	90                   	nop
    6217:	90                   	nop
    6218:	ff 25 06 61 00 00    	jmp    *0x6106(%rip)        # 0xc324
    621e:	90                   	nop
    621f:	90                   	nop
    6220:	ff 25 f6 60 00 00    	jmp    *0x60f6(%rip)        # 0xc31c
    6226:	90                   	nop
    6227:	90                   	nop
    6228:	ff 25 e6 60 00 00    	jmp    *0x60e6(%rip)        # 0xc314
    622e:	90                   	nop
    622f:	90                   	nop
    6230:	ff 25 d6 60 00 00    	jmp    *0x60d6(%rip)        # 0xc30c
    6236:	90                   	nop
    6237:	90                   	nop
    6238:	ff 25 c6 60 00 00    	jmp    *0x60c6(%rip)        # 0xc304
    623e:	90                   	nop
    623f:	90                   	nop
    6240:	ff 25 b6 60 00 00    	jmp    *0x60b6(%rip)        # 0xc2fc
    6246:	90                   	nop
    6247:	90                   	nop
    6248:	ff 25 a6 60 00 00    	jmp    *0x60a6(%rip)        # 0xc2f4
    624e:	90                   	nop
    624f:	90                   	nop
    6250:	ff 25 96 60 00 00    	jmp    *0x6096(%rip)        # 0xc2ec
    6256:	90                   	nop
    6257:	90                   	nop
    6258:	ff 25 86 60 00 00    	jmp    *0x6086(%rip)        # 0xc2e4
    625e:	90                   	nop
    625f:	90                   	nop
    6260:	ff 25 6e 60 00 00    	jmp    *0x606e(%rip)        # 0xc2d4
    6266:	90                   	nop
    6267:	90                   	nop
    6268:	ff 25 56 60 00 00    	jmp    *0x6056(%rip)        # 0xc2c4
    626e:	90                   	nop
    626f:	90                   	nop
    6270:	ff 25 3e 60 00 00    	jmp    *0x603e(%rip)        # 0xc2b4
    6276:	90                   	nop
    6277:	90                   	nop
    6278:	ff 25 26 60 00 00    	jmp    *0x6026(%rip)        # 0xc2a4
    627e:	90                   	nop
    627f:	90                   	nop
    6280:	ff 25 16 60 00 00    	jmp    *0x6016(%rip)        # 0xc29c
    6286:	90                   	nop
    6287:	90                   	nop
    6288:	ff 25 fe 5f 00 00    	jmp    *0x5ffe(%rip)        # 0xc28c
    628e:	90                   	nop
    628f:	90                   	nop
    6290:	ff 25 ee 5f 00 00    	jmp    *0x5fee(%rip)        # 0xc284
    6296:	90                   	nop
    6297:	90                   	nop
    6298:	ff 25 de 5f 00 00    	jmp    *0x5fde(%rip)        # 0xc27c
    629e:	90                   	nop
    629f:	90                   	nop
    62a0:	ff 25 be 5f 00 00    	jmp    *0x5fbe(%rip)        # 0xc264
    62a6:	90                   	nop
    62a7:	90                   	nop
    62a8:	ff 25 9e 5f 00 00    	jmp    *0x5f9e(%rip)        # 0xc24c
    62ae:	90                   	nop
    62af:	90                   	nop
    62b0:	57                   	push   %rdi
    62b1:	53                   	push   %rbx
    62b2:	48 83 ec 48          	sub    $0x48,%rsp
    62b6:	48 89 cf             	mov    %rcx,%rdi
    62b9:	48 89 d3             	mov    %rdx,%rbx
    62bc:	48 85 d2             	test   %rdx,%rdx
    62bf:	0f 84 33 01 00 00    	je     0x63f8
    62c5:	4d 85 c0             	test   %r8,%r8
    62c8:	0f 84 33 01 00 00    	je     0x6401
    62ce:	41 8b 01             	mov    (%r9),%eax
    62d1:	0f b6 12             	movzbl (%rdx),%edx
    62d4:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
    62db:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
    62df:	84 d2                	test   %dl,%dl
    62e1:	0f 84 a1 00 00 00    	je     0x6388
    62e7:	83 bc 24 88 00 00 00 	cmpl   $0x1,0x88(%rsp)
    62ee:	01 
    62ef:	76 77                	jbe    0x6368
    62f1:	84 c0                	test   %al,%al
    62f3:	0f 85 a7 00 00 00    	jne    0x63a0
    62f9:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
    62fe:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    6305:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
    630a:	ff 15 ec 5e 00 00    	call   *0x5eec(%rip)        # 0xc1fc
    6310:	85 c0                	test   %eax,%eax
    6312:	74 54                	je     0x6368
    6314:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
    6319:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
    631e:	49 83 f8 01          	cmp    $0x1,%r8
    6322:	0f 86 f5 00 00 00    	jbe    0x641d
    6328:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
    632d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    6333:	49 89 d8             	mov    %rbx,%r8
    6336:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
    633d:	00 
    633e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    6345:	ba 08 00 00 00       	mov    $0x8,%edx
    634a:	ff 15 bc 5e 00 00    	call   *0x5ebc(%rip)        # 0xc20c
    6350:	85 c0                	test   %eax,%eax
    6352:	0f 84 b0 00 00 00    	je     0x6408
    6358:	b8 02 00 00 00       	mov    $0x2,%eax
    635d:	48 83 c4 48          	add    $0x48,%rsp
    6361:	5b                   	pop    %rbx
    6362:	5f                   	pop    %rdi
    6363:	c3                   	ret    
    6364:	0f 1f 40 00          	nopl   0x0(%rax)
    6368:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
    636f:	85 c0                	test   %eax,%eax
    6371:	75 4d                	jne    0x63c0
    6373:	0f b6 03             	movzbl (%rbx),%eax
    6376:	66 89 07             	mov    %ax,(%rdi)
    6379:	b8 01 00 00 00       	mov    $0x1,%eax
    637e:	48 83 c4 48          	add    $0x48,%rsp
    6382:	5b                   	pop    %rbx
    6383:	5f                   	pop    %rdi
    6384:	c3                   	ret    
    6385:	0f 1f 00             	nopl   (%rax)
    6388:	31 d2                	xor    %edx,%edx
    638a:	31 c0                	xor    %eax,%eax
    638c:	66 89 11             	mov    %dx,(%rcx)
    638f:	48 83 c4 48          	add    $0x48,%rsp
    6393:	5b                   	pop    %rbx
    6394:	5f                   	pop    %rdi
    6395:	c3                   	ret    
    6396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    639d:	00 00 00 
    63a0:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
    63a4:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    63aa:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
    63af:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
    63b6:	00 
    63b7:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
    63bc:	eb 80                	jmp    0x633e
    63be:	66 90                	xchg   %ax,%ax
    63c0:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
    63c7:	00 
    63c8:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    63cf:	49 89 d8             	mov    %rbx,%r8
    63d2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    63d8:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
    63dd:	ba 08 00 00 00       	mov    $0x8,%edx
    63e2:	ff 15 24 5e 00 00    	call   *0x5e24(%rip)        # 0xc20c
    63e8:	85 c0                	test   %eax,%eax
    63ea:	74 1c                	je     0x6408
    63ec:	b8 01 00 00 00       	mov    $0x1,%eax
    63f1:	eb 9c                	jmp    0x638f
    63f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    63f8:	31 c0                	xor    %eax,%eax
    63fa:	48 83 c4 48          	add    $0x48,%rsp
    63fe:	5b                   	pop    %rbx
    63ff:	5f                   	pop    %rdi
    6400:	c3                   	ret    
    6401:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    6406:	eb 87                	jmp    0x638f
    6408:	e8 63 fe ff ff       	call   0x6270
    640d:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
    6413:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    6418:	e9 72 ff ff ff       	jmp    0x638f
    641d:	0f b6 03             	movzbl (%rbx),%eax
    6420:	41 88 01             	mov    %al,(%r9)
    6423:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    6428:	e9 62 ff ff ff       	jmp    0x638f
    642d:	0f 1f 00             	nopl   (%rax)
    6430:	41 55                	push   %r13
    6432:	41 54                	push   %r12
    6434:	57                   	push   %rdi
    6435:	56                   	push   %rsi
    6436:	53                   	push   %rbx
    6437:	48 83 ec 40          	sub    $0x40,%rsp
    643b:	31 c0                	xor    %eax,%eax
    643d:	49 89 cc             	mov    %rcx,%r12
    6440:	48 85 c9             	test   %rcx,%rcx
    6443:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
    6448:	48 8d 44 24 3e       	lea    0x3e(%rsp),%rax
    644d:	4c 89 cb             	mov    %r9,%rbx
    6450:	4c 0f 44 e0          	cmove  %rax,%r12
    6454:	49 89 d5             	mov    %rdx,%r13
    6457:	4c 89 c6             	mov    %r8,%rsi
    645a:	e8 e9 04 00 00       	call   0x6948
    645f:	89 c7                	mov    %eax,%edi
    6461:	e8 ea 04 00 00       	call   0x6950
    6466:	48 85 db             	test   %rbx,%rbx
    6469:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    646d:	49 89 f0             	mov    %rsi,%r8
    6470:	89 44 24 20          	mov    %eax,0x20(%rsp)
    6474:	4c 8d 0d ed 56 00 00 	lea    0x56ed(%rip),%r9        # 0xbb68
    647b:	4c 89 ea             	mov    %r13,%rdx
    647e:	4c 89 e1             	mov    %r12,%rcx
    6481:	4c 0f 45 cb          	cmovne %rbx,%r9
    6485:	e8 26 fe ff ff       	call   0x62b0
    648a:	48 98                	cltq   
    648c:	48 83 c4 40          	add    $0x40,%rsp
    6490:	5b                   	pop    %rbx
    6491:	5e                   	pop    %rsi
    6492:	5f                   	pop    %rdi
    6493:	41 5c                	pop    %r12
    6495:	41 5d                	pop    %r13
    6497:	c3                   	ret    
    6498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    649f:	00 
    64a0:	41 56                	push   %r14
    64a2:	41 55                	push   %r13
    64a4:	41 54                	push   %r12
    64a6:	55                   	push   %rbp
    64a7:	57                   	push   %rdi
    64a8:	56                   	push   %rsi
    64a9:	53                   	push   %rbx
    64aa:	48 83 ec 40          	sub    $0x40,%rsp
    64ae:	48 8d 05 af 56 00 00 	lea    0x56af(%rip),%rax        # 0xbb64
    64b5:	4d 89 cd             	mov    %r9,%r13
    64b8:	4d 85 c9             	test   %r9,%r9
    64bb:	49 89 ce             	mov    %rcx,%r14
    64be:	48 89 d3             	mov    %rdx,%rbx
    64c1:	4c 0f 44 e8          	cmove  %rax,%r13
    64c5:	4c 89 c6             	mov    %r8,%rsi
    64c8:	e8 83 04 00 00       	call   0x6950
    64cd:	89 c5                	mov    %eax,%ebp
    64cf:	e8 74 04 00 00       	call   0x6948
    64d4:	89 c7                	mov    %eax,%edi
    64d6:	48 85 db             	test   %rbx,%rbx
    64d9:	0f 84 c1 00 00 00    	je     0x65a0
    64df:	48 8b 13             	mov    (%rbx),%rdx
    64e2:	48 85 d2             	test   %rdx,%rdx
    64e5:	0f 84 b5 00 00 00    	je     0x65a0
    64eb:	4d 85 f6             	test   %r14,%r14
    64ee:	74 70                	je     0x6560
    64f0:	45 31 e4             	xor    %r12d,%r12d
    64f3:	48 85 f6             	test   %rsi,%rsi
    64f6:	75 1f                	jne    0x6517
    64f8:	eb 4a                	jmp    0x6544
    64fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6500:	48 8b 13             	mov    (%rbx),%rdx
    6503:	48 98                	cltq   
    6505:	49 83 c6 02          	add    $0x2,%r14
    6509:	49 01 c4             	add    %rax,%r12
    650c:	48 01 c2             	add    %rax,%rdx
    650f:	48 89 13             	mov    %rdx,(%rbx)
    6512:	4c 39 e6             	cmp    %r12,%rsi
    6515:	76 2d                	jbe    0x6544
    6517:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    651b:	49 89 f0             	mov    %rsi,%r8
    651e:	4d 89 e9             	mov    %r13,%r9
    6521:	4c 89 f1             	mov    %r14,%rcx
    6524:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
    6528:	4d 29 e0             	sub    %r12,%r8
    652b:	e8 80 fd ff ff       	call   0x62b0
    6530:	85 c0                	test   %eax,%eax
    6532:	7f cc                	jg     0x6500
    6534:	49 39 f4             	cmp    %rsi,%r12
    6537:	73 0b                	jae    0x6544
    6539:	85 c0                	test   %eax,%eax
    653b:	75 07                	jne    0x6544
    653d:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    6544:	4c 89 e0             	mov    %r12,%rax
    6547:	48 83 c4 40          	add    $0x40,%rsp
    654b:	5b                   	pop    %rbx
    654c:	5e                   	pop    %rsi
    654d:	5f                   	pop    %rdi
    654e:	5d                   	pop    %rbp
    654f:	41 5c                	pop    %r12
    6551:	41 5d                	pop    %r13
    6553:	41 5e                	pop    %r14
    6555:	c3                   	ret    
    6556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    655d:	00 00 00 
    6560:	31 c0                	xor    %eax,%eax
    6562:	41 89 fe             	mov    %edi,%r14d
    6565:	48 8d 74 24 3e       	lea    0x3e(%rsp),%rsi
    656a:	45 31 e4             	xor    %r12d,%r12d
    656d:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
    6572:	eb 0c                	jmp    0x6580
    6574:	0f 1f 40 00          	nopl   0x0(%rax)
    6578:	48 98                	cltq   
    657a:	48 8b 13             	mov    (%rbx),%rdx
    657d:	49 01 c4             	add    %rax,%r12
    6580:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    6584:	4c 01 e2             	add    %r12,%rdx
    6587:	4d 89 e9             	mov    %r13,%r9
    658a:	4d 89 f0             	mov    %r14,%r8
    658d:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
    6591:	48 89 f1             	mov    %rsi,%rcx
    6594:	e8 17 fd ff ff       	call   0x62b0
    6599:	85 c0                	test   %eax,%eax
    659b:	7f db                	jg     0x6578
    659d:	eb a5                	jmp    0x6544
    659f:	90                   	nop
    65a0:	45 31 e4             	xor    %r12d,%r12d
    65a3:	eb 9f                	jmp    0x6544
    65a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    65ac:	00 00 00 00 
    65b0:	41 54                	push   %r12
    65b2:	57                   	push   %rdi
    65b3:	56                   	push   %rsi
    65b4:	53                   	push   %rbx
    65b5:	48 83 ec 48          	sub    $0x48,%rsp
    65b9:	31 c0                	xor    %eax,%eax
    65bb:	49 89 cc             	mov    %rcx,%r12
    65be:	48 89 d6             	mov    %rdx,%rsi
    65c1:	4c 89 c3             	mov    %r8,%rbx
    65c4:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
    65c9:	e8 7a 03 00 00       	call   0x6948
    65ce:	89 c7                	mov    %eax,%edi
    65d0:	e8 7b 03 00 00       	call   0x6950
    65d5:	48 85 db             	test   %rbx,%rbx
    65d8:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    65dc:	49 89 f0             	mov    %rsi,%r8
    65df:	48 8d 15 7a 55 00 00 	lea    0x557a(%rip),%rdx        # 0xbb60
    65e6:	89 44 24 20          	mov    %eax,0x20(%rsp)
    65ea:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
    65ef:	48 0f 44 da          	cmove  %rdx,%rbx
    65f3:	4c 89 e2             	mov    %r12,%rdx
    65f6:	49 89 d9             	mov    %rbx,%r9
    65f9:	e8 b2 fc ff ff       	call   0x62b0
    65fe:	48 98                	cltq   
    6600:	48 83 c4 48          	add    $0x48,%rsp
    6604:	5b                   	pop    %rbx
    6605:	5e                   	pop    %rsi
    6606:	5f                   	pop    %rdi
    6607:	41 5c                	pop    %r12
    6609:	c3                   	ret    
    660a:	90                   	nop
    660b:	90                   	nop
    660c:	90                   	nop
    660d:	90                   	nop
    660e:	90                   	nop
    660f:	90                   	nop
    6610:	48 83 ec 58          	sub    $0x58,%rsp
    6614:	48 89 c8             	mov    %rcx,%rax
    6617:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
    661c:	44 89 c1             	mov    %r8d,%ecx
    661f:	45 85 c0             	test   %r8d,%r8d
    6622:	75 1c                	jne    0x6640
    6624:	66 81 fa ff 00       	cmp    $0xff,%dx
    6629:	77 59                	ja     0x6684
    662b:	88 10                	mov    %dl,(%rax)
    662d:	b8 01 00 00 00       	mov    $0x1,%eax
    6632:	48 83 c4 58          	add    $0x58,%rsp
    6636:	c3                   	ret    
    6637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    663e:	00 00 
    6640:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
    6645:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
    664a:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
    664f:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    6655:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    665a:	31 d2                	xor    %edx,%edx
    665c:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
    6663:	00 
    6664:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    666b:	00 00 
    666d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6672:	ff 15 c4 5b 00 00    	call   *0x5bc4(%rip)        # 0xc23c
    6678:	85 c0                	test   %eax,%eax
    667a:	74 08                	je     0x6684
    667c:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
    6680:	85 d2                	test   %edx,%edx
    6682:	74 ae                	je     0x6632
    6684:	e8 e7 fb ff ff       	call   0x6270
    6689:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
    668f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    6694:	48 83 c4 58          	add    $0x58,%rsp
    6698:	c3                   	ret    
    6699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    66a0:	41 54                	push   %r12
    66a2:	56                   	push   %rsi
    66a3:	53                   	push   %rbx
    66a4:	48 83 ec 30          	sub    $0x30,%rsp
    66a8:	48 85 c9             	test   %rcx,%rcx
    66ab:	49 89 cc             	mov    %rcx,%r12
    66ae:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
    66b3:	89 d3                	mov    %edx,%ebx
    66b5:	4c 0f 44 e0          	cmove  %rax,%r12
    66b9:	e8 8a 02 00 00       	call   0x6948
    66be:	89 c6                	mov    %eax,%esi
    66c0:	e8 8b 02 00 00       	call   0x6950
    66c5:	0f b7 d3             	movzwl %bx,%edx
    66c8:	41 89 f1             	mov    %esi,%r9d
    66cb:	4c 89 e1             	mov    %r12,%rcx
    66ce:	41 89 c0             	mov    %eax,%r8d
    66d1:	e8 3a ff ff ff       	call   0x6610
    66d6:	48 98                	cltq   
    66d8:	48 83 c4 30          	add    $0x30,%rsp
    66dc:	5b                   	pop    %rbx
    66dd:	5e                   	pop    %rsi
    66de:	41 5c                	pop    %r12
    66e0:	c3                   	ret    
    66e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    66e8:	00 00 00 00 
    66ec:	0f 1f 40 00          	nopl   0x0(%rax)
    66f0:	41 56                	push   %r14
    66f2:	41 55                	push   %r13
    66f4:	41 54                	push   %r12
    66f6:	55                   	push   %rbp
    66f7:	57                   	push   %rdi
    66f8:	56                   	push   %rsi
    66f9:	53                   	push   %rbx
    66fa:	48 83 ec 30          	sub    $0x30,%rsp
    66fe:	45 31 f6             	xor    %r14d,%r14d
    6701:	49 89 d4             	mov    %rdx,%r12
    6704:	48 89 cb             	mov    %rcx,%rbx
    6707:	4c 89 c5             	mov    %r8,%rbp
    670a:	e8 41 02 00 00       	call   0x6950
    670f:	89 c7                	mov    %eax,%edi
    6711:	e8 32 02 00 00       	call   0x6948
    6716:	49 8b 34 24          	mov    (%r12),%rsi
    671a:	41 89 c5             	mov    %eax,%r13d
    671d:	48 85 f6             	test   %rsi,%rsi
    6720:	74 4d                	je     0x676f
    6722:	48 85 db             	test   %rbx,%rbx
    6725:	74 61                	je     0x6788
    6727:	48 85 ed             	test   %rbp,%rbp
    672a:	75 27                	jne    0x6753
    672c:	e9 8f 00 00 00       	jmp    0x67c0
    6731:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6738:	48 98                	cltq   
    673a:	48 01 c3             	add    %rax,%rbx
    673d:	49 01 c6             	add    %rax,%r14
    6740:	80 7b ff 00          	cmpb   $0x0,-0x1(%rbx)
    6744:	0f 84 86 00 00 00    	je     0x67d0
    674a:	48 83 c6 02          	add    $0x2,%rsi
    674e:	4c 39 f5             	cmp    %r14,%rbp
    6751:	76 6d                	jbe    0x67c0
    6753:	0f b7 16             	movzwl (%rsi),%edx
    6756:	45 89 e9             	mov    %r13d,%r9d
    6759:	41 89 f8             	mov    %edi,%r8d
    675c:	48 89 d9             	mov    %rbx,%rcx
    675f:	e8 ac fe ff ff       	call   0x6610
    6764:	85 c0                	test   %eax,%eax
    6766:	7f d0                	jg     0x6738
    6768:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
    676f:	4c 89 f0             	mov    %r14,%rax
    6772:	48 83 c4 30          	add    $0x30,%rsp
    6776:	5b                   	pop    %rbx
    6777:	5e                   	pop    %rsi
    6778:	5f                   	pop    %rdi
    6779:	5d                   	pop    %rbp
    677a:	41 5c                	pop    %r12
    677c:	41 5d                	pop    %r13
    677e:	41 5e                	pop    %r14
    6780:	c3                   	ret    
    6781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6788:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
    678d:	eb 17                	jmp    0x67a6
    678f:	90                   	nop
    6790:	48 63 d0             	movslq %eax,%rdx
    6793:	83 e8 01             	sub    $0x1,%eax
    6796:	48 98                	cltq   
    6798:	49 01 d6             	add    %rdx,%r14
    679b:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
    67a0:	74 3e                	je     0x67e0
    67a2:	48 83 c6 02          	add    $0x2,%rsi
    67a6:	0f b7 16             	movzwl (%rsi),%edx
    67a9:	45 89 e9             	mov    %r13d,%r9d
    67ac:	41 89 f8             	mov    %edi,%r8d
    67af:	48 89 e9             	mov    %rbp,%rcx
    67b2:	e8 59 fe ff ff       	call   0x6610
    67b7:	85 c0                	test   %eax,%eax
    67b9:	7f d5                	jg     0x6790
    67bb:	eb ab                	jmp    0x6768
    67bd:	0f 1f 00             	nopl   (%rax)
    67c0:	49 89 34 24          	mov    %rsi,(%r12)
    67c4:	eb a9                	jmp    0x676f
    67c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    67cd:	00 00 00 
    67d0:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
    67d7:	00 
    67d8:	49 83 ee 01          	sub    $0x1,%r14
    67dc:	eb 91                	jmp    0x676f
    67de:	66 90                	xchg   %ax,%ax
    67e0:	49 83 ee 01          	sub    $0x1,%r14
    67e4:	eb 89                	jmp    0x676f
    67e6:	90                   	nop
    67e7:	90                   	nop
    67e8:	90                   	nop
    67e9:	90                   	nop
    67ea:	90                   	nop
    67eb:	90                   	nop
    67ec:	90                   	nop
    67ed:	90                   	nop
    67ee:	90                   	nop
    67ef:	90                   	nop
    67f0:	53                   	push   %rbx
    67f1:	48 83 ec 20          	sub    $0x20,%rsp
    67f5:	89 cb                	mov    %ecx,%ebx
    67f7:	e8 44 01 00 00       	call   0x6940
    67fc:	89 d9                	mov    %ebx,%ecx
    67fe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
    6802:	48 c1 e2 04          	shl    $0x4,%rdx
    6806:	48 01 d0             	add    %rdx,%rax
    6809:	48 83 c4 20          	add    $0x20,%rsp
    680d:	5b                   	pop    %rbx
    680e:	c3                   	ret    
    680f:	90                   	nop
    6810:	48 8b 05 59 53 00 00 	mov    0x5359(%rip),%rax        # 0xbb70
    6817:	c3                   	ret    
    6818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    681f:	00 
    6820:	48 89 c8             	mov    %rcx,%rax
    6823:	48 87 05 46 53 00 00 	xchg   %rax,0x5346(%rip)        # 0xbb70
    682a:	c3                   	ret    
    682b:	90                   	nop
    682c:	90                   	nop
    682d:	90                   	nop
    682e:	90                   	nop
    682f:	90                   	nop
    6830:	53                   	push   %rbx
    6831:	48 83 ec 20          	sub    $0x20,%rsp
    6835:	48 89 cb             	mov    %rcx,%rbx
    6838:	31 c9                	xor    %ecx,%ecx
    683a:	e8 b1 ff ff ff       	call   0x67f0
    683f:	48 39 c3             	cmp    %rax,%rbx
    6842:	72 0f                	jb     0x6853
    6844:	b9 13 00 00 00       	mov    $0x13,%ecx
    6849:	e8 a2 ff ff ff       	call   0x67f0
    684e:	48 39 c3             	cmp    %rax,%rbx
    6851:	76 15                	jbe    0x6868
    6853:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
    6857:	48 83 c4 20          	add    $0x20,%rsp
    685b:	5b                   	pop    %rbx
    685c:	48 ff 25 79 59 00 00 	rex.W jmp *0x5979(%rip)        # 0xc1dc
    6863:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6868:	31 c9                	xor    %ecx,%ecx
    686a:	e8 81 ff ff ff       	call   0x67f0
    686f:	48 89 da             	mov    %rbx,%rdx
    6872:	48 29 c2             	sub    %rax,%rdx
    6875:	48 89 d0             	mov    %rdx,%rax
    6878:	48 c1 f8 04          	sar    $0x4,%rax
    687c:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
    6882:	8d 48 10             	lea    0x10(%rax),%ecx
    6885:	e8 ae 00 00 00       	call   0x6938
    688a:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
    6891:	48 83 c4 20          	add    $0x20,%rsp
    6895:	5b                   	pop    %rbx
    6896:	c3                   	ret    
    6897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    689e:	00 00 
    68a0:	53                   	push   %rbx
    68a1:	48 83 ec 20          	sub    $0x20,%rsp
    68a5:	48 89 cb             	mov    %rcx,%rbx
    68a8:	31 c9                	xor    %ecx,%ecx
    68aa:	e8 41 ff ff ff       	call   0x67f0
    68af:	48 39 c3             	cmp    %rax,%rbx
    68b2:	72 0f                	jb     0x68c3
    68b4:	b9 13 00 00 00       	mov    $0x13,%ecx
    68b9:	e8 32 ff ff ff       	call   0x67f0
    68be:	48 39 c3             	cmp    %rax,%rbx
    68c1:	76 15                	jbe    0x68d8
    68c3:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
    68c7:	48 83 c4 20          	add    $0x20,%rsp
    68cb:	5b                   	pop    %rbx
    68cc:	48 ff 25 31 59 00 00 	rex.W jmp *0x5931(%rip)        # 0xc204
    68d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    68d8:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
    68df:	31 c9                	xor    %ecx,%ecx
    68e1:	e8 0a ff ff ff       	call   0x67f0
    68e6:	48 29 c3             	sub    %rax,%rbx
    68e9:	48 c1 fb 04          	sar    $0x4,%rbx
    68ed:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
    68f3:	8d 4b 10             	lea    0x10(%rbx),%ecx
    68f6:	48 83 c4 20          	add    $0x20,%rsp
    68fa:	5b                   	pop    %rbx
    68fb:	e9 30 00 00 00       	jmp    0x6930
    6900:	48 8b 05 f9 1d 00 00 	mov    0x1df9(%rip),%rax        # 0x8700
    6907:	48 8b 00             	mov    (%rax),%rax
    690a:	c3                   	ret    
    690b:	90                   	nop
    690c:	90                   	nop
    690d:	90                   	nop
    690e:	90                   	nop
    690f:	90                   	nop
    6910:	48 8b 05 f9 1d 00 00 	mov    0x1df9(%rip),%rax        # 0x8710
    6917:	48 8b 00             	mov    (%rax),%rax
    691a:	c3                   	ret    
    691b:	90                   	nop
    691c:	90                   	nop
    691d:	90                   	nop
    691e:	90                   	nop
    691f:	90                   	nop
    6920:	48 8b 05 f9 1d 00 00 	mov    0x1df9(%rip),%rax        # 0x8720
    6927:	48 8b 00             	mov    (%rax),%rax
    692a:	c3                   	ret    
    692b:	90                   	nop
    692c:	90                   	nop
    692d:	90                   	nop
    692e:	90                   	nop
    692f:	90                   	nop
    6930:	ff 25 a6 59 00 00    	jmp    *0x59a6(%rip)        # 0xc2dc
    6936:	90                   	nop
    6937:	90                   	nop
    6938:	ff 25 8e 59 00 00    	jmp    *0x598e(%rip)        # 0xc2cc
    693e:	90                   	nop
    693f:	90                   	nop
    6940:	ff 25 2e 59 00 00    	jmp    *0x592e(%rip)        # 0xc274
    6946:	90                   	nop
    6947:	90                   	nop
    6948:	ff 25 0e 59 00 00    	jmp    *0x590e(%rip)        # 0xc25c
    694e:	90                   	nop
    694f:	90                   	nop
    6950:	ff 25 fe 58 00 00    	jmp    *0x58fe(%rip)        # 0xc254
    6956:	90                   	nop
    6957:	90                   	nop
    6958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    695f:	00 
    6960:	ff 25 d6 58 00 00    	jmp    *0x58d6(%rip)        # 0xc23c
    6966:	90                   	nop
    6967:	90                   	nop
    6968:	ff 25 c6 58 00 00    	jmp    *0x58c6(%rip)        # 0xc234
    696e:	90                   	nop
    696f:	90                   	nop
    6970:	ff 25 b6 58 00 00    	jmp    *0x58b6(%rip)        # 0xc22c
    6976:	90                   	nop
    6977:	90                   	nop
    6978:	ff 25 a6 58 00 00    	jmp    *0x58a6(%rip)        # 0xc224
    697e:	90                   	nop
    697f:	90                   	nop
    6980:	ff 25 96 58 00 00    	jmp    *0x5896(%rip)        # 0xc21c
    6986:	90                   	nop
    6987:	90                   	nop
    6988:	ff 25 86 58 00 00    	jmp    *0x5886(%rip)        # 0xc214
    698e:	90                   	nop
    698f:	90                   	nop
    6990:	ff 25 76 58 00 00    	jmp    *0x5876(%rip)        # 0xc20c
    6996:	90                   	nop
    6997:	90                   	nop
    6998:	ff 25 66 58 00 00    	jmp    *0x5866(%rip)        # 0xc204
    699e:	90                   	nop
    699f:	90                   	nop
    69a0:	ff 25 56 58 00 00    	jmp    *0x5856(%rip)        # 0xc1fc
    69a6:	90                   	nop
    69a7:	90                   	nop
    69a8:	ff 25 46 58 00 00    	jmp    *0x5846(%rip)        # 0xc1f4
    69ae:	90                   	nop
    69af:	90                   	nop
    69b0:	ff 25 36 58 00 00    	jmp    *0x5836(%rip)        # 0xc1ec
    69b6:	90                   	nop
    69b7:	90                   	nop
    69b8:	ff 25 26 58 00 00    	jmp    *0x5826(%rip)        # 0xc1e4
    69be:	90                   	nop
    69bf:	90                   	nop
    69c0:	ff 25 16 58 00 00    	jmp    *0x5816(%rip)        # 0xc1dc
    69c6:	90                   	nop
    69c7:	90                   	nop
    69c8:	ff 25 06 58 00 00    	jmp    *0x5806(%rip)        # 0xc1d4
    69ce:	90                   	nop
    69cf:	90                   	nop
    69d0:	48 83 ec 28          	sub    $0x28,%rsp
    69d4:	e8 77 9c ff ff       	call   0x650
    69d9:	48 8d 0d 20 16 00 00 	lea    0x1620(%rip),%rcx        # 0x8000
    69e0:	e8 6b 9b ff ff       	call   0x550
    69e5:	31 c0                	xor    %eax,%eax
    69e7:	48 83 c4 28          	add    $0x28,%rsp
    69eb:	c3                   	ret    
    69ec:	90                   	nop
    69ed:	90                   	nop
    69ee:	90                   	nop
    69ef:	90                   	nop
    69f0:	e9 3b 9b ff ff       	jmp    0x530
    69f5:	90                   	nop
    69f6:	90                   	nop
    69f7:	90                   	nop
    69f8:	90                   	nop
    69f9:	90                   	nop
    69fa:	90                   	nop
    69fb:	90                   	nop
    69fc:	90                   	nop
    69fd:	90                   	nop
    69fe:	90                   	nop
    69ff:	90                   	nop
    6a00:	ff                   	(bad)  
    6a01:	ff                   	(bad)  
    6a02:	ff                   	(bad)  
    6a03:	ff                   	(bad)  
    6a04:	ff                   	(bad)  
    6a05:	ff                   	(bad)  
    6a06:	ff                   	(bad)  
    6a07:	ff f0                	push   %rax
    6a09:	79 00                	jns    0x6a0b
    6a0b:	40 01 00             	rex add %eax,(%rax)
	...
    6a16:	00 00                	add    %al,(%rax)
    6a18:	ff                   	(bad)  
    6a19:	ff                   	(bad)  
    6a1a:	ff                   	(bad)  
    6a1b:	ff                   	(bad)  
    6a1c:	ff                   	(bad)  
    6a1d:	ff                   	(bad)  
    6a1e:	ff                   	(bad)  
    6a1f:	ff 00                	incl   (%rax)
	...
