
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
     30d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
     312:	0f 85 e8 00 00 00    	jne    0x400
     318:	89 05 e2 6c 00 00    	mov    %eax,0x6ce2(%rip)        # 0x7000
     31e:	8b 1d 04 ad 00 00    	mov    0xad04(%rip),%ebx        # 0xb028
     324:	44 8d 63 01          	lea    0x1(%rbx),%r12d
     328:	4d 63 e4             	movslq %r12d,%r12
     32b:	49 c1 e4 03          	shl    $0x3,%r12
     32f:	4c 89 e1             	mov    %r12,%rcx
     332:	e8 11 5f 00 00       	call   0x6248
     337:	4c 8b 2d e2 ac 00 00 	mov    0xace2(%rip),%r13        # 0xb020
     33e:	48 89 c7             	mov    %rax,%rdi
     341:	85 db                	test   %ebx,%ebx
     343:	7e 46                	jle    0x38b
     345:	8d 6b ff             	lea    -0x1(%rbx),%ebp
     348:	31 db                	xor    %ebx,%ebx
     34a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
     355:	e8 ce 5e 00 00       	call   0x6228
     35a:	48 8d 70 01          	lea    0x1(%rax),%rsi
     35e:	48 89 f1             	mov    %rsi,%rcx
     361:	e8 e2 5e 00 00       	call   0x6248
     366:	49 89 f0             	mov    %rsi,%r8
     369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
     36d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
     372:	48 89 c1             	mov    %rax,%rcx
     375:	e8 c6 5e 00 00       	call   0x6240
     37a:	48 89 d8             	mov    %rbx,%rax
     37d:	48 83 c3 01          	add    $0x1,%rbx
     381:	48 39 c5             	cmp    %rax,%rbp
     384:	75 ca                	jne    0x350
     386:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
     38b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     392:	48 89 3d 87 ac 00 00 	mov    %rdi,0xac87(%rip)        # 0xb020
     399:	e8 e2 02 00 00       	call   0x680
     39e:	48 8b 05 4b 83 00 00 	mov    0x834b(%rip),%rax        # 0x86f0
     3a5:	4c 8b 05 6c ac 00 00 	mov    0xac6c(%rip),%r8        # 0xb018
     3ac:	8b 0d 76 ac 00 00    	mov    0xac76(%rip),%ecx        # 0xb028
     3b2:	48 8b 00             	mov    (%rax),%rax
     3b5:	4c 89 00             	mov    %r8,(%rax)
     3b8:	48 8b 15 61 ac 00 00 	mov    0xac61(%rip),%rdx        # 0xb020
     3bf:	e8 dd 01 00 00       	call   0x5a1
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
     42c:	e8 7f 5e 00 00       	call   0x62b0
     431:	8b 06                	mov    (%rsi),%eax
     433:	83 f8 01             	cmp    $0x1,%eax
     436:	0f 85 fd fd ff ff    	jne    0x239
     43c:	48 8b 15 3d 83 00 00 	mov    0x833d(%rip),%rdx        # 0x8780
     443:	48 8b 0d 26 83 00 00 	mov    0x8326(%rip),%rcx        # 0x8770
     44a:	e8 49 5e 00 00       	call   0x6298
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
     480:	e8 23 5e 00 00       	call   0x62a8
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
     4b4:	e8 df 5d 00 00       	call   0x6298
     4b9:	e9 70 fd ff ff       	jmp    0x22e
     4be:	89 c1                	mov    %eax,%ecx
     4c0:	e8 b3 5d 00 00       	call   0x6278
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
     514:	e8 77 5d 00 00       	call   0x6290
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
     550:	55                   	push   %rbp
     551:	53                   	push   %rbx
     552:	48 83 ec 38          	sub    $0x38,%rsp
     556:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
     55b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
     55f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
     563:	4c 89 45 30          	mov    %r8,0x30(%rbp)
     567:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
     56b:	48 8d 45 28          	lea    0x28(%rbp),%rax
     56f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     573:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
     577:	b9 01 00 00 00       	mov    $0x1,%ecx
     57c:	48 8b 05 0d 6b 00 00 	mov    0x6b0d(%rip),%rax        # 0x7090
     583:	ff d0                	call   *%rax
     585:	49 89 d8             	mov    %rbx,%r8
     588:	48 8b 55 20          	mov    0x20(%rbp),%rdx
     58c:	48 89 c1             	mov    %rax,%rcx
     58f:	e8 1c 11 00 00       	call   0x16b0
     594:	89 45 fc             	mov    %eax,-0x4(%rbp)
     597:	8b 45 fc             	mov    -0x4(%rbp),%eax
     59a:	48 83 c4 38          	add    $0x38,%rsp
     59e:	5b                   	pop    %rbx
     59f:	5d                   	pop    %rbp
     5a0:	c3                   	ret    
     5a1:	55                   	push   %rbp
     5a2:	48 89 e5             	mov    %rsp,%rbp
     5a5:	48 83 ec 20          	sub    $0x20,%rsp
     5a9:	e8 d2 00 00 00       	call   0x680
     5ae:	48 8d 0d 4b 7a 00 00 	lea    0x7a4b(%rip),%rcx        # 0x8000
     5b5:	e8 96 ff ff ff       	call   0x550
     5ba:	b8 00 00 00 00       	mov    $0x0,%eax
     5bf:	48 83 c4 20          	add    $0x20,%rsp
     5c3:	5d                   	pop    %rbp
     5c4:	c3                   	ret    
     5c5:	90                   	nop
     5c6:	90                   	nop
     5c7:	90                   	nop
     5c8:	90                   	nop
     5c9:	90                   	nop
     5ca:	90                   	nop
     5cb:	90                   	nop
     5cc:	90                   	nop
     5cd:	90                   	nop
     5ce:	90                   	nop
     5cf:	90                   	nop
     5d0:	48 83 ec 28          	sub    $0x28,%rsp
     5d4:	48 8b 05 35 6a 00 00 	mov    0x6a35(%rip),%rax        # 0x7010
     5db:	48 8b 00             	mov    (%rax),%rax
     5de:	48 85 c0             	test   %rax,%rax
     5e1:	74 22                	je     0x605
     5e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     5e8:	ff d0                	call   *%rax
     5ea:	48 8b 05 1f 6a 00 00 	mov    0x6a1f(%rip),%rax        # 0x7010
     5f1:	48 8d 50 08          	lea    0x8(%rax),%rdx
     5f5:	48 8b 40 08          	mov    0x8(%rax),%rax
     5f9:	48 89 15 10 6a 00 00 	mov    %rdx,0x6a10(%rip)        # 0x7010
     600:	48 85 c0             	test   %rax,%rax
     603:	75 e3                	jne    0x5e8
     605:	48 83 c4 28          	add    $0x28,%rsp
     609:	c3                   	ret    
     60a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     610:	56                   	push   %rsi
     611:	53                   	push   %rbx
     612:	48 83 ec 28          	sub    $0x28,%rsp
     616:	48 8b 15 83 80 00 00 	mov    0x8083(%rip),%rdx        # 0x86a0
     61d:	48 8b 02             	mov    (%rdx),%rax
     620:	89 c1                	mov    %eax,%ecx
     622:	83 f8 ff             	cmp    $0xffffffff,%eax
     625:	74 39                	je     0x660
     627:	85 c9                	test   %ecx,%ecx
     629:	74 20                	je     0x64b
     62b:	89 c8                	mov    %ecx,%eax
     62d:	83 e9 01             	sub    $0x1,%ecx
     630:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
     634:	48 29 c8             	sub    %rcx,%rax
     637:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
     63c:	0f 1f 40 00          	nopl   0x0(%rax)
     640:	ff 13                	call   *(%rbx)
     642:	48 83 eb 08          	sub    $0x8,%rbx
     646:	48 39 f3             	cmp    %rsi,%rbx
     649:	75 f5                	jne    0x640
     64b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 0x5d0
     652:	48 83 c4 28          	add    $0x28,%rsp
     656:	5b                   	pop    %rbx
     657:	5e                   	pop    %rsi
     658:	e9 b3 fe ff ff       	jmp    0x510
     65d:	0f 1f 00             	nopl   (%rax)
     660:	31 c0                	xor    %eax,%eax
     662:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     668:	44 8d 40 01          	lea    0x1(%rax),%r8d
     66c:	89 c1                	mov    %eax,%ecx
     66e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
     673:	4c 89 c0             	mov    %r8,%rax
     676:	75 f0                	jne    0x668
     678:	eb ad                	jmp    0x627
     67a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     680:	8b 05 aa a9 00 00    	mov    0xa9aa(%rip),%eax        # 0xb030
     686:	85 c0                	test   %eax,%eax
     688:	74 06                	je     0x690
     68a:	c3                   	ret    
     68b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     690:	c7 05 96 a9 00 00 01 	movl   $0x1,0xa996(%rip)        # 0xb030
     697:	00 00 00 
     69a:	e9 71 ff ff ff       	jmp    0x610
     69f:	90                   	nop
     6a0:	48 ff 25 d5 bb 00 00 	rex.W jmp *0xbbd5(%rip)        # 0xc27c
     6a7:	90                   	nop
     6a8:	90                   	nop
     6a9:	90                   	nop
     6aa:	90                   	nop
     6ab:	90                   	nop
     6ac:	90                   	nop
     6ad:	90                   	nop
     6ae:	90                   	nop
     6af:	90                   	nop
     6b0:	31 c0                	xor    %eax,%eax
     6b2:	c3                   	ret    
     6b3:	90                   	nop
     6b4:	90                   	nop
     6b5:	90                   	nop
     6b6:	90                   	nop
     6b7:	90                   	nop
     6b8:	90                   	nop
     6b9:	90                   	nop
     6ba:	90                   	nop
     6bb:	90                   	nop
     6bc:	90                   	nop
     6bd:	90                   	nop
     6be:	90                   	nop
     6bf:	90                   	nop
     6c0:	48 83 ec 28          	sub    $0x28,%rsp
     6c4:	83 fa 03             	cmp    $0x3,%edx
     6c7:	74 17                	je     0x6e0
     6c9:	85 d2                	test   %edx,%edx
     6cb:	74 13                	je     0x6e0
     6cd:	b8 01 00 00 00       	mov    $0x1,%eax
     6d2:	48 83 c4 28          	add    $0x28,%rsp
     6d6:	c3                   	ret    
     6d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     6de:	00 00 
     6e0:	e8 cb 0a 00 00       	call   0x11b0
     6e5:	b8 01 00 00 00       	mov    $0x1,%eax
     6ea:	48 83 c4 28          	add    $0x28,%rsp
     6ee:	c3                   	ret    
     6ef:	90                   	nop
     6f0:	56                   	push   %rsi
     6f1:	53                   	push   %rbx
     6f2:	48 83 ec 28          	sub    $0x28,%rsp
     6f6:	48 8b 05 83 7f 00 00 	mov    0x7f83(%rip),%rax        # 0x8680
     6fd:	83 38 02             	cmpl   $0x2,(%rax)
     700:	74 06                	je     0x708
     702:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
     708:	83 fa 02             	cmp    $0x2,%edx
     70b:	74 13                	je     0x720
     70d:	83 fa 01             	cmp    $0x1,%edx
     710:	74 4e                	je     0x760
     712:	b8 01 00 00 00       	mov    $0x1,%eax
     717:	48 83 c4 28          	add    $0x28,%rsp
     71b:	5b                   	pop    %rbx
     71c:	5e                   	pop    %rsi
     71d:	c3                   	ret    
     71e:	66 90                	xchg   %ax,%ax
     720:	48 8d 1d 39 c9 00 00 	lea    0xc939(%rip),%rbx        # 0xd060
     727:	48 8d 35 32 c9 00 00 	lea    0xc932(%rip),%rsi        # 0xd060
     72e:	48 39 de             	cmp    %rbx,%rsi
     731:	74 df                	je     0x712
     733:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     738:	48 8b 03             	mov    (%rbx),%rax
     73b:	48 85 c0             	test   %rax,%rax
     73e:	74 02                	je     0x742
     740:	ff d0                	call   *%rax
     742:	48 83 c3 08          	add    $0x8,%rbx
     746:	48 39 de             	cmp    %rbx,%rsi
     749:	75 ed                	jne    0x738
     74b:	b8 01 00 00 00       	mov    $0x1,%eax
     750:	48 83 c4 28          	add    $0x28,%rsp
     754:	5b                   	pop    %rbx
     755:	5e                   	pop    %rsi
     756:	c3                   	ret    
     757:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     75e:	00 00 
     760:	e8 4b 0a 00 00       	call   0x11b0
     765:	b8 01 00 00 00       	mov    $0x1,%eax
     76a:	48 83 c4 28          	add    $0x28,%rsp
     76e:	5b                   	pop    %rbx
     76f:	5e                   	pop    %rsi
     770:	c3                   	ret    
     771:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     778:	00 00 00 00 
     77c:	0f 1f 40 00          	nopl   0x0(%rax)
     780:	31 c0                	xor    %eax,%eax
     782:	c3                   	ret    
     783:	90                   	nop
     784:	90                   	nop
     785:	90                   	nop
     786:	90                   	nop
     787:	90                   	nop
     788:	90                   	nop
     789:	90                   	nop
     78a:	90                   	nop
     78b:	90                   	nop
     78c:	90                   	nop
     78d:	90                   	nop
     78e:	90                   	nop
     78f:	90                   	nop
     790:	56                   	push   %rsi
     791:	53                   	push   %rbx
     792:	48 83 ec 78          	sub    $0x78,%rsp
     796:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
     79b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
     7a0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
     7a6:	83 39 06             	cmpl   $0x6,(%rcx)
     7a9:	0f 87 cd 00 00 00    	ja     0x87c
     7af:	8b 01                	mov    (%rcx),%eax
     7b1:	48 8d 15 ec 79 00 00 	lea    0x79ec(%rip),%rdx        # 0x81a4
     7b8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     7bc:	48 01 d0             	add    %rdx,%rax
     7bf:	ff e0                	jmp    *%rax
     7c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     7c8:	48 8d 1d 87 79 00 00 	lea    0x7987(%rip),%rbx        # 0x8156
     7cf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
     7d5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
     7da:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
     7df:	48 8b 71 08          	mov    0x8(%rcx),%rsi
     7e3:	b9 02 00 00 00       	mov    $0x2,%ecx
     7e8:	e8 33 60 00 00       	call   0x6820
     7ed:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
     7f4:	49 89 d8             	mov    %rbx,%r8
     7f7:	48 8d 15 7a 79 00 00 	lea    0x797a(%rip),%rdx        # 0x8178
     7fe:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
     804:	48 89 c1             	mov    %rax,%rcx
     807:	49 89 f1             	mov    %rsi,%r9
     80a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
     810:	e8 5b 5a 00 00       	call   0x6270
     815:	90                   	nop
     816:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
     81b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
     820:	31 c0                	xor    %eax,%eax
     822:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
     828:	48 83 c4 78          	add    $0x78,%rsp
     82c:	5b                   	pop    %rbx
     82d:	5e                   	pop    %rsi
     82e:	c3                   	ret    
     82f:	90                   	nop
     830:	48 8d 1d 59 78 00 00 	lea    0x7859(%rip),%rbx        # 0x8090
     837:	eb 96                	jmp    0x7cf
     839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     840:	48 8d 1d 89 78 00 00 	lea    0x7889(%rip),%rbx        # 0x80d0
     847:	eb 86                	jmp    0x7cf
     849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     850:	48 8d 1d 59 78 00 00 	lea    0x7859(%rip),%rbx        # 0x80b0
     857:	e9 73 ff ff ff       	jmp    0x7cf
     85c:	0f 1f 40 00          	nopl   0x0(%rax)
     860:	48 8d 1d b9 78 00 00 	lea    0x78b9(%rip),%rbx        # 0x8120
     867:	e9 63 ff ff ff       	jmp    0x7cf
     86c:	0f 1f 40 00          	nopl   0x0(%rax)
     870:	48 8d 1d 81 78 00 00 	lea    0x7881(%rip),%rbx        # 0x80f8
     877:	e9 53 ff ff ff       	jmp    0x7cf
     87c:	48 8d 1d fd 77 00 00 	lea    0x77fd(%rip),%rbx        # 0x8080
     883:	e9 47 ff ff ff       	jmp    0x7cf
     888:	90                   	nop
     889:	90                   	nop
     88a:	90                   	nop
     88b:	90                   	nop
     88c:	90                   	nop
     88d:	90                   	nop
     88e:	90                   	nop
     88f:	90                   	nop
     890:	db e3                	fninit 
     892:	c3                   	ret    
     893:	90                   	nop
     894:	90                   	nop
     895:	90                   	nop
     896:	90                   	nop
     897:	90                   	nop
     898:	90                   	nop
     899:	90                   	nop
     89a:	90                   	nop
     89b:	90                   	nop
     89c:	90                   	nop
     89d:	90                   	nop
     89e:	90                   	nop
     89f:	90                   	nop
     8a0:	41 54                	push   %r12
     8a2:	53                   	push   %rbx
     8a3:	48 83 ec 38          	sub    $0x38,%rsp
     8a7:	49 89 cc             	mov    %rcx,%r12
     8aa:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
     8af:	b9 02 00 00 00       	mov    $0x2,%ecx
     8b4:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
     8b9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
     8be:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
     8c3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
     8c8:	e8 53 5f 00 00       	call   0x6820
     8cd:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
     8d3:	ba 01 00 00 00       	mov    $0x1,%edx
     8d8:	48 8d 0d e1 78 00 00 	lea    0x78e1(%rip),%rcx        # 0x81c0
     8df:	49 89 c1             	mov    %rax,%r9
     8e2:	e8 71 59 00 00       	call   0x6258
     8e7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
     8ec:	b9 02 00 00 00       	mov    $0x2,%ecx
     8f1:	e8 2a 5f 00 00       	call   0x6820
     8f6:	4c 89 e2             	mov    %r12,%rdx
     8f9:	48 89 c1             	mov    %rax,%rcx
     8fc:	49 89 d8             	mov    %rbx,%r8
     8ff:	e8 14 59 00 00       	call   0x6218
     904:	e8 7f 59 00 00       	call   0x6288
     909:	90                   	nop
     90a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     910:	41 54                	push   %r12
     912:	55                   	push   %rbp
     913:	57                   	push   %rdi
     914:	56                   	push   %rsi
     915:	53                   	push   %rbx
     916:	48 83 ec 50          	sub    $0x50,%rsp
     91a:	48 63 3d 83 a7 00 00 	movslq 0xa783(%rip),%rdi        # 0xb0a4
     921:	49 89 cc             	mov    %rcx,%r12
     924:	48 89 d6             	mov    %rdx,%rsi
     927:	4c 89 c3             	mov    %r8,%rbx
     92a:	85 ff                	test   %edi,%edi
     92c:	0f 8e 8e 01 00 00    	jle    0xac0
     932:	48 8b 05 6f a7 00 00 	mov    0xa76f(%rip),%rax        # 0xb0a8
     939:	31 c9                	xor    %ecx,%ecx
     93b:	48 83 c0 18          	add    $0x18,%rax
     93f:	90                   	nop
     940:	48 8b 10             	mov    (%rax),%rdx
     943:	49 39 d4             	cmp    %rdx,%r12
     946:	72 14                	jb     0x95c
     948:	4c 8b 40 08          	mov    0x8(%rax),%r8
     94c:	45 8b 40 08          	mov    0x8(%r8),%r8d
     950:	4c 01 c2             	add    %r8,%rdx
     953:	49 39 d4             	cmp    %rdx,%r12
     956:	0f 82 8b 00 00 00    	jb     0x9e7
     95c:	83 c1 01             	add    $0x1,%ecx
     95f:	48 83 c0 28          	add    $0x28,%rax
     963:	39 f9                	cmp    %edi,%ecx
     965:	75 d9                	jne    0x940
     967:	4c 89 e1             	mov    %r12,%rcx
     96a:	e8 51 0a 00 00       	call   0x13c0
     96f:	48 89 c5             	mov    %rax,%rbp
     972:	48 85 c0             	test   %rax,%rax
     975:	0f 84 a2 01 00 00    	je     0xb1d
     97b:	48 8b 05 26 a7 00 00 	mov    0xa726(%rip),%rax        # 0xb0a8
     982:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
     986:	48 c1 e7 03          	shl    $0x3,%rdi
     98a:	48 01 f8             	add    %rdi,%rax
     98d:	48 89 68 20          	mov    %rbp,0x20(%rax)
     991:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     997:	e8 54 0b 00 00       	call   0x14f0
     99c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
     99f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
     9a4:	41 b8 30 00 00 00    	mov    $0x30,%r8d
     9aa:	48 01 c1             	add    %rax,%rcx
     9ad:	48 8b 05 f4 a6 00 00 	mov    0xa6f4(%rip),%rax        # 0xb0a8
     9b4:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
     9b9:	ff 15 75 b8 00 00    	call   *0xb875(%rip)        # 0xc234
     9bf:	48 85 c0             	test   %rax,%rax
     9c2:	0f 84 3a 01 00 00    	je     0xb02
     9c8:	8b 44 24 44          	mov    0x44(%rsp),%eax
     9cc:	8d 50 c0             	lea    -0x40(%rax),%edx
     9cf:	83 e2 bf             	and    $0xffffffbf,%edx
     9d2:	74 0c                	je     0x9e0
     9d4:	8d 50 fc             	lea    -0x4(%rax),%edx
     9d7:	83 e2 fb             	and    $0xfffffffb,%edx
     9da:	0f 85 90 00 00 00    	jne    0xa70
     9e0:	83 05 bd a6 00 00 01 	addl   $0x1,0xa6bd(%rip)        # 0xb0a4
     9e7:	83 fb 08             	cmp    $0x8,%ebx
     9ea:	73 2c                	jae    0xa18
     9ec:	f6 c3 04             	test   $0x4,%bl
     9ef:	0f 85 db 00 00 00    	jne    0xad0
     9f5:	85 db                	test   %ebx,%ebx
     9f7:	74 10                	je     0xa09
     9f9:	0f b6 06             	movzbl (%rsi),%eax
     9fc:	41 88 04 24          	mov    %al,(%r12)
     a00:	f6 c3 02             	test   $0x2,%bl
     a03:	0f 85 e7 00 00 00    	jne    0xaf0
     a09:	48 83 c4 50          	add    $0x50,%rsp
     a0d:	5b                   	pop    %rbx
     a0e:	5e                   	pop    %rsi
     a0f:	5f                   	pop    %rdi
     a10:	5d                   	pop    %rbp
     a11:	41 5c                	pop    %r12
     a13:	c3                   	ret    
     a14:	0f 1f 40 00          	nopl   0x0(%rax)
     a18:	48 8b 06             	mov    (%rsi),%rax
     a1b:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
     a20:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
     a24:	49 89 04 24          	mov    %rax,(%r12)
     a28:	89 d8                	mov    %ebx,%eax
     a2a:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
     a2f:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
     a34:	49 29 cc             	sub    %rcx,%r12
     a37:	44 01 e3             	add    %r12d,%ebx
     a3a:	4c 29 e6             	sub    %r12,%rsi
     a3d:	83 e3 f8             	and    $0xfffffff8,%ebx
     a40:	83 fb 08             	cmp    $0x8,%ebx
     a43:	72 c4                	jb     0xa09
     a45:	83 e3 f8             	and    $0xfffffff8,%ebx
     a48:	31 c0                	xor    %eax,%eax
     a4a:	89 c2                	mov    %eax,%edx
     a4c:	83 c0 08             	add    $0x8,%eax
     a4f:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
     a53:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
     a57:	39 d8                	cmp    %ebx,%eax
     a59:	72 ef                	jb     0xa4a
     a5b:	48 83 c4 50          	add    $0x50,%rsp
     a5f:	5b                   	pop    %rbx
     a60:	5e                   	pop    %rsi
     a61:	5f                   	pop    %rdi
     a62:	5d                   	pop    %rbp
     a63:	41 5c                	pop    %r12
     a65:	c3                   	ret    
     a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a6d:	00 00 00 
     a70:	83 f8 02             	cmp    $0x2,%eax
     a73:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     a78:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
     a7d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     a83:	b8 40 00 00 00       	mov    $0x40,%eax
     a88:	44 0f 45 c0          	cmovne %eax,%r8d
     a8c:	48 03 3d 15 a6 00 00 	add    0xa615(%rip),%rdi        # 0xb0a8
     a93:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
     a97:	49 89 f9             	mov    %rdi,%r9
     a9a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
     a9e:	ff 15 88 b7 00 00    	call   *0xb788(%rip)        # 0xc22c
     aa4:	85 c0                	test   %eax,%eax
     aa6:	0f 85 34 ff ff ff    	jne    0x9e0
     aac:	ff 15 32 b7 00 00    	call   *0xb732(%rip)        # 0xc1e4
     ab2:	48 8d 0d 7f 77 00 00 	lea    0x777f(%rip),%rcx        # 0x8238
     ab9:	89 c2                	mov    %eax,%edx
     abb:	e8 e0 fd ff ff       	call   0x8a0
     ac0:	31 ff                	xor    %edi,%edi
     ac2:	e9 a0 fe ff ff       	jmp    0x967
     ac7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     ace:	00 00 
     ad0:	8b 06                	mov    (%rsi),%eax
     ad2:	89 db                	mov    %ebx,%ebx
     ad4:	41 89 04 24          	mov    %eax,(%r12)
     ad8:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
     adc:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
     ae1:	e9 23 ff ff ff       	jmp    0xa09
     ae6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     aed:	00 00 00 
     af0:	89 db                	mov    %ebx,%ebx
     af2:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
     af7:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
     afd:	e9 07 ff ff ff       	jmp    0xa09
     b02:	48 8b 05 9f a5 00 00 	mov    0xa59f(%rip),%rax        # 0xb0a8
     b09:	8b 55 08             	mov    0x8(%rbp),%edx
     b0c:	48 8d 0d ed 76 00 00 	lea    0x76ed(%rip),%rcx        # 0x8200
     b13:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
     b18:	e8 83 fd ff ff       	call   0x8a0
     b1d:	4c 89 e2             	mov    %r12,%rdx
     b20:	48 8d 0d b9 76 00 00 	lea    0x76b9(%rip),%rcx        # 0x81e0
     b27:	e8 74 fd ff ff       	call   0x8a0
     b2c:	90                   	nop
     b2d:	0f 1f 00             	nopl   (%rax)
     b30:	55                   	push   %rbp
     b31:	41 57                	push   %r15
     b33:	41 56                	push   %r14
     b35:	41 55                	push   %r13
     b37:	41 54                	push   %r12
     b39:	57                   	push   %rdi
     b3a:	56                   	push   %rsi
     b3b:	53                   	push   %rbx
     b3c:	48 83 ec 38          	sub    $0x38,%rsp
     b40:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
     b47:	00 
     b48:	8b 35 52 a5 00 00    	mov    0xa552(%rip),%esi        # 0xb0a0
     b4e:	85 f6                	test   %esi,%esi
     b50:	74 16                	je     0xb68
     b52:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
     b56:	5b                   	pop    %rbx
     b57:	5e                   	pop    %rsi
     b58:	5f                   	pop    %rdi
     b59:	41 5c                	pop    %r12
     b5b:	41 5d                	pop    %r13
     b5d:	41 5e                	pop    %r14
     b5f:	41 5f                	pop    %r15
     b61:	5d                   	pop    %rbp
     b62:	c3                   	ret    
     b63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     b68:	c7 05 2e a5 00 00 01 	movl   $0x1,0xa52e(%rip)        # 0xb0a0
     b6f:	00 00 00 
     b72:	e8 d9 08 00 00       	call   0x1450
     b77:	48 98                	cltq   
     b79:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     b7d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
     b84:	00 
     b85:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
     b89:	e8 e2 0a 00 00       	call   0x1670
     b8e:	4c 8b 25 1b 7b 00 00 	mov    0x7b1b(%rip),%r12        # 0x86b0
     b95:	48 8b 1d 24 7b 00 00 	mov    0x7b24(%rip),%rbx        # 0x86c0
     b9c:	c7 05 fe a4 00 00 00 	movl   $0x0,0xa4fe(%rip)        # 0xb0a4
     ba3:	00 00 00 
     ba6:	48 29 c4             	sub    %rax,%rsp
     ba9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
     bae:	48 89 05 f3 a4 00 00 	mov    %rax,0xa4f3(%rip)        # 0xb0a8
     bb5:	4c 89 e0             	mov    %r12,%rax
     bb8:	48 29 d8             	sub    %rbx,%rax
     bbb:	48 83 f8 07          	cmp    $0x7,%rax
     bbf:	7e 91                	jle    0xb52
     bc1:	8b 13                	mov    (%rbx),%edx
     bc3:	48 83 f8 0b          	cmp    $0xb,%rax
     bc7:	0f 8f 4b 01 00 00    	jg     0xd18
     bcd:	85 d2                	test   %edx,%edx
     bcf:	0f 85 cb 01 00 00    	jne    0xda0
     bd5:	8b 43 04             	mov    0x4(%rbx),%eax
     bd8:	85 c0                	test   %eax,%eax
     bda:	0f 85 c0 01 00 00    	jne    0xda0
     be0:	8b 53 08             	mov    0x8(%rbx),%edx
     be3:	83 fa 01             	cmp    $0x1,%edx
     be6:	0f 85 1c 02 00 00    	jne    0xe08
     bec:	48 83 c3 0c          	add    $0xc,%rbx
     bf0:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
     bf4:	4c 8b 2d e5 7a 00 00 	mov    0x7ae5(%rip),%r13        # 0x86e0
     bfb:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
     c02:	ff ff ff 
     c05:	4c 39 e3             	cmp    %r12,%rbx
     c08:	72 3f                	jb     0xc49
     c0a:	e9 43 ff ff ff       	jmp    0xb52
     c0f:	90                   	nop
     c10:	44 0f b6 01          	movzbl (%rcx),%r8d
     c14:	4c 89 ff             	mov    %r15,%rdi
     c17:	4d 89 c2             	mov    %r8,%r10
     c1a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
     c21:	45 84 c0             	test   %r8b,%r8b
     c24:	4d 0f 48 c2          	cmovs  %r10,%r8
     c28:	49 29 d0             	sub    %rdx,%r8
     c2b:	4c 89 fa             	mov    %r15,%rdx
     c2e:	4d 01 c8             	add    %r9,%r8
     c31:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
     c35:	41 b8 01 00 00 00    	mov    $0x1,%r8d
     c3b:	e8 d0 fc ff ff       	call   0x910
     c40:	48 83 c3 0c          	add    $0xc,%rbx
     c44:	4c 39 e3             	cmp    %r12,%rbx
     c47:	73 77                	jae    0xcc0
     c49:	8b 13                	mov    (%rbx),%edx
     c4b:	8b 4b 04             	mov    0x4(%rbx),%ecx
     c4e:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
     c53:	4c 01 ea             	add    %r13,%rdx
     c56:	4c 01 e9             	add    %r13,%rcx
     c59:	4c 8b 0a             	mov    (%rdx),%r9
     c5c:	41 83 f8 20          	cmp    $0x20,%r8d
     c60:	0f 84 0a 01 00 00    	je     0xd70
     c66:	0f 87 d4 00 00 00    	ja     0xd40
     c6c:	41 83 f8 08          	cmp    $0x8,%r8d
     c70:	74 9e                	je     0xc10
     c72:	41 83 f8 10          	cmp    $0x10,%r8d
     c76:	0f 85 75 01 00 00    	jne    0xdf1
     c7c:	44 0f b7 01          	movzwl (%rcx),%r8d
     c80:	4c 89 ff             	mov    %r15,%rdi
     c83:	4d 89 c2             	mov    %r8,%r10
     c86:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
     c8d:	66 45 85 c0          	test   %r8w,%r8w
     c91:	4d 0f 48 c2          	cmovs  %r10,%r8
     c95:	48 83 c3 0c          	add    $0xc,%rbx
     c99:	49 29 d0             	sub    %rdx,%r8
     c9c:	4c 89 fa             	mov    %r15,%rdx
     c9f:	4d 01 c8             	add    %r9,%r8
     ca2:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
     ca6:	41 b8 02 00 00 00    	mov    $0x2,%r8d
     cac:	e8 5f fc ff ff       	call   0x910
     cb1:	4c 39 e3             	cmp    %r12,%rbx
     cb4:	72 93                	jb     0xc49
     cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     cbd:	00 00 00 
     cc0:	8b 05 de a3 00 00    	mov    0xa3de(%rip),%eax        # 0xb0a4
     cc6:	85 c0                	test   %eax,%eax
     cc8:	0f 8e 84 fe ff ff    	jle    0xb52
     cce:	4c 8b 25 57 b5 00 00 	mov    0xb557(%rip),%r12        # 0xc22c
     cd5:	31 db                	xor    %ebx,%ebx
     cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     cde:	00 00 
     ce0:	48 8b 05 c1 a3 00 00 	mov    0xa3c1(%rip),%rax        # 0xb0a8
     ce7:	48 01 d8             	add    %rbx,%rax
     cea:	44 8b 00             	mov    (%rax),%r8d
     ced:	45 85 c0             	test   %r8d,%r8d
     cf0:	74 0e                	je     0xd00
     cf2:	48 8b 50 10          	mov    0x10(%rax),%rdx
     cf6:	48 8b 48 08          	mov    0x8(%rax),%rcx
     cfa:	49 89 f9             	mov    %rdi,%r9
     cfd:	41 ff d4             	call   *%r12
     d00:	83 c6 01             	add    $0x1,%esi
     d03:	48 83 c3 28          	add    $0x28,%rbx
     d07:	3b 35 97 a3 00 00    	cmp    0xa397(%rip),%esi        # 0xb0a4
     d0d:	7c d1                	jl     0xce0
     d0f:	e9 3e fe ff ff       	jmp    0xb52
     d14:	0f 1f 40 00          	nopl   0x0(%rax)
     d18:	85 d2                	test   %edx,%edx
     d1a:	0f 85 80 00 00 00    	jne    0xda0
     d20:	8b 43 04             	mov    0x4(%rbx),%eax
     d23:	89 c7                	mov    %eax,%edi
     d25:	0b 7b 08             	or     0x8(%rbx),%edi
     d28:	0f 85 aa fe ff ff    	jne    0xbd8
     d2e:	8b 53 0c             	mov    0xc(%rbx),%edx
     d31:	48 83 c3 0c          	add    $0xc,%rbx
     d35:	e9 93 fe ff ff       	jmp    0xbcd
     d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d40:	41 83 f8 40          	cmp    $0x40,%r8d
     d44:	0f 85 a7 00 00 00    	jne    0xdf1
     d4a:	48 8b 01             	mov    (%rcx),%rax
     d4d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
     d53:	4c 89 ff             	mov    %r15,%rdi
     d56:	48 29 d0             	sub    %rdx,%rax
     d59:	4c 89 fa             	mov    %r15,%rdx
     d5c:	4c 01 c8             	add    %r9,%rax
     d5f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     d63:	e8 a8 fb ff ff       	call   0x910
     d68:	e9 d3 fe ff ff       	jmp    0xc40
     d6d:	0f 1f 00             	nopl   (%rax)
     d70:	8b 01                	mov    (%rcx),%eax
     d72:	4c 89 ff             	mov    %r15,%rdi
     d75:	49 89 c0             	mov    %rax,%r8
     d78:	4c 09 f0             	or     %r14,%rax
     d7b:	45 85 c0             	test   %r8d,%r8d
     d7e:	49 0f 49 c0          	cmovns %r8,%rax
     d82:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     d88:	48 29 d0             	sub    %rdx,%rax
     d8b:	4c 89 fa             	mov    %r15,%rdx
     d8e:	4c 01 c8             	add    %r9,%rax
     d91:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     d95:	e8 76 fb ff ff       	call   0x910
     d9a:	e9 a1 fe ff ff       	jmp    0xc40
     d9f:	90                   	nop
     da0:	4c 39 e3             	cmp    %r12,%rbx
     da3:	0f 83 a9 fd ff ff    	jae    0xb52
     da9:	49 83 ec 01          	sub    $0x1,%r12
     dad:	4c 8b 2d 2c 79 00 00 	mov    0x792c(%rip),%r13        # 0x86e0
     db4:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
     db8:	49 29 dc             	sub    %rbx,%r12
     dbb:	49 c1 ec 03          	shr    $0x3,%r12
     dbf:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
     dc4:	0f 1f 40 00          	nopl   0x0(%rax)
     dc8:	8b 4b 04             	mov    0x4(%rbx),%ecx
     dcb:	8b 03                	mov    (%rbx),%eax
     dcd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     dd3:	48 89 fa             	mov    %rdi,%rdx
     dd6:	48 83 c3 08          	add    $0x8,%rbx
     dda:	4c 01 e9             	add    %r13,%rcx
     ddd:	03 01                	add    (%rcx),%eax
     ddf:	89 45 a8             	mov    %eax,-0x58(%rbp)
     de2:	e8 29 fb ff ff       	call   0x910
     de7:	4c 39 e3             	cmp    %r12,%rbx
     dea:	75 dc                	jne    0xdc8
     dec:	e9 cf fe ff ff       	jmp    0xcc0
     df1:	44 89 c2             	mov    %r8d,%edx
     df4:	48 8d 0d 9d 74 00 00 	lea    0x749d(%rip),%rcx        # 0x8298
     dfb:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
     e02:	00 
     e03:	e8 98 fa ff ff       	call   0x8a0
     e08:	48 8d 0d 51 74 00 00 	lea    0x7451(%rip),%rcx        # 0x8260
     e0f:	e8 8c fa ff ff       	call   0x8a0
     e14:	90                   	nop
     e15:	90                   	nop
     e16:	90                   	nop
     e17:	90                   	nop
     e18:	90                   	nop
     e19:	90                   	nop
     e1a:	90                   	nop
     e1b:	90                   	nop
     e1c:	90                   	nop
     e1d:	90                   	nop
     e1e:	90                   	nop
     e1f:	90                   	nop
     e20:	48 83 ec 58          	sub    $0x58,%rsp
     e24:	48 8b 05 85 a2 00 00 	mov    0xa285(%rip),%rax        # 0xb0b0
     e2b:	48 85 c0             	test   %rax,%rax
     e2e:	74 2c                	je     0xe5c
     e30:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
     e37:	00 00 
     e39:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
     e3d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
     e42:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
     e47:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
     e4d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
     e53:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
     e59:	ff d0                	call   *%rax
     e5b:	90                   	nop
     e5c:	48 83 c4 58          	add    $0x58,%rsp
     e60:	c3                   	ret    
     e61:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     e68:	00 00 00 00 
     e6c:	0f 1f 40 00          	nopl   0x0(%rax)
     e70:	48 89 0d 39 a2 00 00 	mov    %rcx,0xa239(%rip)        # 0xb0b0
     e77:	e9 3c 54 00 00       	jmp    0x62b8
     e7c:	90                   	nop
     e7d:	90                   	nop
     e7e:	90                   	nop
     e7f:	90                   	nop
     e80:	41 54                	push   %r12
     e82:	48 83 ec 20          	sub    $0x20,%rsp
     e86:	48 8b 11             	mov    (%rcx),%rdx
     e89:	8b 02                	mov    (%rdx),%eax
     e8b:	49 89 cc             	mov    %rcx,%r12
     e8e:	89 c1                	mov    %eax,%ecx
     e90:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
     e96:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
     e9c:	0f 84 ce 00 00 00    	je     0xf70
     ea2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
     ea7:	0f 87 aa 00 00 00    	ja     0xf57
     ead:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
     eb2:	76 54                	jbe    0xf08
     eb4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
     eb9:	83 f8 09             	cmp    $0x9,%eax
     ebc:	77 3a                	ja     0xef8
     ebe:	48 8d 15 0b 74 00 00 	lea    0x740b(%rip),%rdx        # 0x82d0
     ec5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     ec9:	48 01 d0             	add    %rdx,%rax
     ecc:	ff e0                	jmp    *%rax
     ece:	31 d2                	xor    %edx,%edx
     ed0:	b9 08 00 00 00       	mov    $0x8,%ecx
     ed5:	e8 5e 53 00 00       	call   0x6238
     eda:	48 83 f8 01          	cmp    $0x1,%rax
     ede:	0f 85 b7 00 00 00    	jne    0xf9b
     ee4:	ba 01 00 00 00       	mov    $0x1,%edx
     ee9:	b9 08 00 00 00       	mov    $0x8,%ecx
     eee:	e8 45 53 00 00       	call   0x6238
     ef3:	e8 98 f9 ff ff       	call   0x890
     ef8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     efd:	48 83 c4 20          	add    $0x20,%rsp
     f01:	41 5c                	pop    %r12
     f03:	c3                   	ret    
     f04:	0f 1f 40 00          	nopl   0x0(%rax)
     f08:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
     f0d:	0f 84 a5 00 00 00    	je     0xfb8
     f13:	76 3b                	jbe    0xf50
     f15:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
     f1a:	74 dc                	je     0xef8
     f1c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
     f21:	75 34                	jne    0xf57
     f23:	31 d2                	xor    %edx,%edx
     f25:	b9 04 00 00 00       	mov    $0x4,%ecx
     f2a:	e8 09 53 00 00       	call   0x6238
     f2f:	48 83 f8 01          	cmp    $0x1,%rax
     f33:	0f 84 a7 00 00 00    	je     0xfe0
     f39:	48 85 c0             	test   %rax,%rax
     f3c:	74 19                	je     0xf57
     f3e:	b9 04 00 00 00       	mov    $0x4,%ecx
     f43:	ff d0                	call   *%rax
     f45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f4a:	eb b1                	jmp    0xefd
     f4c:	0f 1f 40 00          	nopl   0x0(%rax)
     f50:	3d 02 00 00 80       	cmp    $0x80000002,%eax
     f55:	74 a1                	je     0xef8
     f57:	48 8b 05 72 a1 00 00 	mov    0xa172(%rip),%rax        # 0xb0d0
     f5e:	48 85 c0             	test   %rax,%rax
     f61:	74 1d                	je     0xf80
     f63:	4c 89 e1             	mov    %r12,%rcx
     f66:	48 83 c4 20          	add    $0x20,%rsp
     f6a:	41 5c                	pop    %r12
     f6c:	48 ff e0             	rex.W jmp *%rax
     f6f:	90                   	nop
     f70:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
     f74:	0f 85 28 ff ff ff    	jne    0xea2
     f7a:	e9 79 ff ff ff       	jmp    0xef8
     f7f:	90                   	nop
     f80:	31 c0                	xor    %eax,%eax
     f82:	48 83 c4 20          	add    $0x20,%rsp
     f86:	41 5c                	pop    %r12
     f88:	c3                   	ret    
     f89:	31 d2                	xor    %edx,%edx
     f8b:	b9 08 00 00 00       	mov    $0x8,%ecx
     f90:	e8 a3 52 00 00       	call   0x6238
     f95:	48 83 f8 01          	cmp    $0x1,%rax
     f99:	74 65                	je     0x1000
     f9b:	48 85 c0             	test   %rax,%rax
     f9e:	74 b7                	je     0xf57
     fa0:	b9 08 00 00 00       	mov    $0x8,%ecx
     fa5:	ff d0                	call   *%rax
     fa7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     fac:	e9 4c ff ff ff       	jmp    0xefd
     fb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     fb8:	31 d2                	xor    %edx,%edx
     fba:	b9 0b 00 00 00       	mov    $0xb,%ecx
     fbf:	e8 74 52 00 00       	call   0x6238
     fc4:	48 83 f8 01          	cmp    $0x1,%rax
     fc8:	74 4f                	je     0x1019
     fca:	48 85 c0             	test   %rax,%rax
     fcd:	74 88                	je     0xf57
     fcf:	b9 0b 00 00 00       	mov    $0xb,%ecx
     fd4:	ff d0                	call   *%rax
     fd6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     fdb:	e9 1d ff ff ff       	jmp    0xefd
     fe0:	ba 01 00 00 00       	mov    $0x1,%edx
     fe5:	b9 04 00 00 00       	mov    $0x4,%ecx
     fea:	e8 49 52 00 00       	call   0x6238
     fef:	83 c8 ff             	or     $0xffffffff,%eax
     ff2:	e9 06 ff ff ff       	jmp    0xefd
     ff7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     ffe:	00 00 
    1000:	ba 01 00 00 00       	mov    $0x1,%edx
    1005:	b9 08 00 00 00       	mov    $0x8,%ecx
    100a:	e8 29 52 00 00       	call   0x6238
    100f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1014:	e9 e4 fe ff ff       	jmp    0xefd
    1019:	ba 01 00 00 00       	mov    $0x1,%edx
    101e:	b9 0b 00 00 00       	mov    $0xb,%ecx
    1023:	e8 10 52 00 00       	call   0x6238
    1028:	83 c8 ff             	or     $0xffffffff,%eax
    102b:	e9 cd fe ff ff       	jmp    0xefd
    1030:	41 54                	push   %r12
    1032:	57                   	push   %rdi
    1033:	56                   	push   %rsi
    1034:	53                   	push   %rbx
    1035:	48 83 ec 28          	sub    $0x28,%rsp
    1039:	48 8d 0d c0 a0 00 00 	lea    0xa0c0(%rip),%rcx        # 0xb100
    1040:	ff 15 96 b1 00 00    	call   *0xb196(%rip)        # 0xc1dc
    1046:	48 8b 1d 93 a0 00 00 	mov    0xa093(%rip),%rbx        # 0xb0e0
    104d:	48 85 db             	test   %rbx,%rbx
    1050:	74 32                	je     0x1084
    1052:	48 8b 3d cb b1 00 00 	mov    0xb1cb(%rip),%rdi        # 0xc224
    1059:	48 8b 35 84 b1 00 00 	mov    0xb184(%rip),%rsi        # 0xc1e4
    1060:	8b 0b                	mov    (%rbx),%ecx
    1062:	ff d7                	call   *%rdi
    1064:	49 89 c4             	mov    %rax,%r12
    1067:	ff d6                	call   *%rsi
    1069:	85 c0                	test   %eax,%eax
    106b:	75 0e                	jne    0x107b
    106d:	4d 85 e4             	test   %r12,%r12
    1070:	74 09                	je     0x107b
    1072:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1076:	4c 89 e1             	mov    %r12,%rcx
    1079:	ff d0                	call   *%rax
    107b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
    107f:	48 85 db             	test   %rbx,%rbx
    1082:	75 dc                	jne    0x1060
    1084:	48 8d 0d 75 a0 00 00 	lea    0xa075(%rip),%rcx        # 0xb100
    108b:	48 83 c4 28          	add    $0x28,%rsp
    108f:	5b                   	pop    %rbx
    1090:	5e                   	pop    %rsi
    1091:	5f                   	pop    %rdi
    1092:	41 5c                	pop    %r12
    1094:	48 ff 25 69 b1 00 00 	rex.W jmp *0xb169(%rip)        # 0xc204
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    10a0:	57                   	push   %rdi
    10a1:	56                   	push   %rsi
    10a2:	53                   	push   %rbx
    10a3:	48 83 ec 20          	sub    $0x20,%rsp
    10a7:	8b 05 3b a0 00 00    	mov    0xa03b(%rip),%eax        # 0xb0e8
    10ad:	89 cf                	mov    %ecx,%edi
    10af:	48 89 d6             	mov    %rdx,%rsi
    10b2:	85 c0                	test   %eax,%eax
    10b4:	75 0a                	jne    0x10c0
    10b6:	48 83 c4 20          	add    $0x20,%rsp
    10ba:	5b                   	pop    %rbx
    10bb:	5e                   	pop    %rsi
    10bc:	5f                   	pop    %rdi
    10bd:	c3                   	ret    
    10be:	66 90                	xchg   %ax,%ax
    10c0:	ba 18 00 00 00       	mov    $0x18,%edx
    10c5:	b9 01 00 00 00       	mov    $0x1,%ecx
    10ca:	e8 b1 51 00 00       	call   0x6280
    10cf:	48 89 c3             	mov    %rax,%rbx
    10d2:	48 85 c0             	test   %rax,%rax
    10d5:	74 3c                	je     0x1113
    10d7:	89 38                	mov    %edi,(%rax)
    10d9:	48 8d 0d 20 a0 00 00 	lea    0xa020(%rip),%rcx        # 0xb100
    10e0:	48 89 70 08          	mov    %rsi,0x8(%rax)
    10e4:	ff 15 f2 b0 00 00    	call   *0xb0f2(%rip)        # 0xc1dc
    10ea:	48 8b 05 ef 9f 00 00 	mov    0x9fef(%rip),%rax        # 0xb0e0
    10f1:	48 8d 0d 08 a0 00 00 	lea    0xa008(%rip),%rcx        # 0xb100
    10f8:	48 89 1d e1 9f 00 00 	mov    %rbx,0x9fe1(%rip)        # 0xb0e0
    10ff:	48 89 43 10          	mov    %rax,0x10(%rbx)
    1103:	ff 15 fb b0 00 00    	call   *0xb0fb(%rip)        # 0xc204
    1109:	31 c0                	xor    %eax,%eax
    110b:	48 83 c4 20          	add    $0x20,%rsp
    110f:	5b                   	pop    %rbx
    1110:	5e                   	pop    %rsi
    1111:	5f                   	pop    %rdi
    1112:	c3                   	ret    
    1113:	83 c8 ff             	or     $0xffffffff,%eax
    1116:	eb 9e                	jmp    0x10b6
    1118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    111f:	00 
    1120:	53                   	push   %rbx
    1121:	48 83 ec 20          	sub    $0x20,%rsp
    1125:	8b 05 bd 9f 00 00    	mov    0x9fbd(%rip),%eax        # 0xb0e8
    112b:	89 cb                	mov    %ecx,%ebx
    112d:	85 c0                	test   %eax,%eax
    112f:	75 0f                	jne    0x1140
    1131:	31 c0                	xor    %eax,%eax
    1133:	48 83 c4 20          	add    $0x20,%rsp
    1137:	5b                   	pop    %rbx
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	48 8d 0d b9 9f 00 00 	lea    0x9fb9(%rip),%rcx        # 0xb100
    1147:	ff 15 8f b0 00 00    	call   *0xb08f(%rip)        # 0xc1dc
    114d:	48 8b 0d 8c 9f 00 00 	mov    0x9f8c(%rip),%rcx        # 0xb0e0
    1154:	48 85 c9             	test   %rcx,%rcx
    1157:	74 2a                	je     0x1183
    1159:	31 d2                	xor    %edx,%edx
    115b:	eb 0e                	jmp    0x116b
    115d:	0f 1f 00             	nopl   (%rax)
    1160:	48 89 ca             	mov    %rcx,%rdx
    1163:	48 85 c0             	test   %rax,%rax
    1166:	74 1b                	je     0x1183
    1168:	48 89 c1             	mov    %rax,%rcx
    116b:	8b 01                	mov    (%rcx),%eax
    116d:	39 d8                	cmp    %ebx,%eax
    116f:	48 8b 41 10          	mov    0x10(%rcx),%rax
    1173:	75 eb                	jne    0x1160
    1175:	48 85 d2             	test   %rdx,%rdx
    1178:	74 26                	je     0x11a0
    117a:	48 89 42 10          	mov    %rax,0x10(%rdx)
    117e:	e8 dd 50 00 00       	call   0x6260
    1183:	48 8d 0d 76 9f 00 00 	lea    0x9f76(%rip),%rcx        # 0xb100
    118a:	ff 15 74 b0 00 00    	call   *0xb074(%rip)        # 0xc204
    1190:	31 c0                	xor    %eax,%eax
    1192:	48 83 c4 20          	add    $0x20,%rsp
    1196:	5b                   	pop    %rbx
    1197:	c3                   	ret    
    1198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    119f:	00 
    11a0:	48 89 05 39 9f 00 00 	mov    %rax,0x9f39(%rip)        # 0xb0e0
    11a7:	eb d5                	jmp    0x117e
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11b0:	53                   	push   %rbx
    11b1:	48 83 ec 20          	sub    $0x20,%rsp
    11b5:	83 fa 02             	cmp    $0x2,%edx
    11b8:	0f 84 c2 00 00 00    	je     0x1280
    11be:	77 28                	ja     0x11e8
    11c0:	85 d2                	test   %edx,%edx
    11c2:	74 4c                	je     0x1210
    11c4:	8b 05 1e 9f 00 00    	mov    0x9f1e(%rip),%eax        # 0xb0e8
    11ca:	85 c0                	test   %eax,%eax
    11cc:	74 32                	je     0x1200
    11ce:	c7 05 10 9f 00 00 01 	movl   $0x1,0x9f10(%rip)        # 0xb0e8
    11d5:	00 00 00 
    11d8:	b8 01 00 00 00       	mov    $0x1,%eax
    11dd:	48 83 c4 20          	add    $0x20,%rsp
    11e1:	5b                   	pop    %rbx
    11e2:	c3                   	ret    
    11e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    11e8:	83 fa 03             	cmp    $0x3,%edx
    11eb:	75 eb                	jne    0x11d8
    11ed:	8b 05 f5 9e 00 00    	mov    0x9ef5(%rip),%eax        # 0xb0e8
    11f3:	85 c0                	test   %eax,%eax
    11f5:	74 e1                	je     0x11d8
    11f7:	e8 34 fe ff ff       	call   0x1030
    11fc:	eb da                	jmp    0x11d8
    11fe:	66 90                	xchg   %ax,%ax
    1200:	48 8d 0d f9 9e 00 00 	lea    0x9ef9(%rip),%rcx        # 0xb100
    1207:	ff 15 e7 af 00 00    	call   *0xafe7(%rip)        # 0xc1f4
    120d:	eb bf                	jmp    0x11ce
    120f:	90                   	nop
    1210:	8b 05 d2 9e 00 00    	mov    0x9ed2(%rip),%eax        # 0xb0e8
    1216:	85 c0                	test   %eax,%eax
    1218:	74 05                	je     0x121f
    121a:	e8 11 fe ff ff       	call   0x1030
    121f:	8b 05 c3 9e 00 00    	mov    0x9ec3(%rip),%eax        # 0xb0e8
    1225:	83 f8 01             	cmp    $0x1,%eax
    1228:	75 ae                	jne    0x11d8
    122a:	48 8b 1d af 9e 00 00 	mov    0x9eaf(%rip),%rbx        # 0xb0e0
    1231:	48 85 db             	test   %rbx,%rbx
    1234:	74 1b                	je     0x1251
    1236:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    123d:	00 00 00 
    1240:	48 89 d9             	mov    %rbx,%rcx
    1243:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
    1247:	e8 14 50 00 00       	call   0x6260
    124c:	48 85 db             	test   %rbx,%rbx
    124f:	75 ef                	jne    0x1240
    1251:	48 8d 0d a8 9e 00 00 	lea    0x9ea8(%rip),%rcx        # 0xb100
    1258:	48 c7 05 7d 9e 00 00 	movq   $0x0,0x9e7d(%rip)        # 0xb0e0
    125f:	00 00 00 00 
    1263:	c7 05 7b 9e 00 00 00 	movl   $0x0,0x9e7b(%rip)        # 0xb0e8
    126a:	00 00 00 
    126d:	ff 15 61 af 00 00    	call   *0xaf61(%rip)        # 0xc1d4
    1273:	e9 60 ff ff ff       	jmp    0x11d8
    1278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    127f:	00 
    1280:	e8 0b f6 ff ff       	call   0x890
    1285:	b8 01 00 00 00       	mov    $0x1,%eax
    128a:	48 83 c4 20          	add    $0x20,%rsp
    128e:	5b                   	pop    %rbx
    128f:	c3                   	ret    
    1290:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1294:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1298:	31 c0                	xor    %eax,%eax
    129a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
    12a0:	75 0b                	jne    0x12ad
    12a2:	31 c0                	xor    %eax,%eax
    12a4:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
    12aa:	0f 94 c0             	sete   %al
    12ad:	c3                   	ret    
    12ae:	66 90                	xchg   %ax,%ax
    12b0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    12b5:	75 09                	jne    0x12c0
    12b7:	eb d7                	jmp    0x1290
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c0:	31 c0                	xor    %eax,%eax
    12c2:	c3                   	ret    
    12c3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12ca:	00 00 00 00 
    12ce:	66 90                	xchg   %ax,%ax
    12d0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    12d4:	48 01 c1             	add    %rax,%rcx
    12d7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    12db:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
    12e0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
    12e4:	85 c9                	test   %ecx,%ecx
    12e6:	74 2d                	je     0x1315
    12e8:	83 e9 01             	sub    $0x1,%ecx
    12eb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    12ef:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
    12f4:	0f 1f 40 00          	nopl   0x0(%rax)
    12f8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    12fc:	4c 89 c1             	mov    %r8,%rcx
    12ff:	49 39 d0             	cmp    %rdx,%r8
    1302:	77 08                	ja     0x130c
    1304:	03 48 08             	add    0x8(%rax),%ecx
    1307:	48 39 d1             	cmp    %rdx,%rcx
    130a:	77 0b                	ja     0x1317
    130c:	48 83 c0 28          	add    $0x28,%rax
    1310:	4c 39 c8             	cmp    %r9,%rax
    1313:	75 e3                	jne    0x12f8
    1315:	31 c0                	xor    %eax,%eax
    1317:	c3                   	ret    
    1318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    131f:	00 
    1320:	41 54                	push   %r12
    1322:	56                   	push   %rsi
    1323:	53                   	push   %rbx
    1324:	48 83 ec 20          	sub    $0x20,%rsp
    1328:	48 89 cb             	mov    %rcx,%rbx
    132b:	e8 f8 4e 00 00       	call   0x6228
    1330:	48 83 f8 08          	cmp    $0x8,%rax
    1334:	77 7a                	ja     0x13b0
    1336:	48 8b 0d a3 73 00 00 	mov    0x73a3(%rip),%rcx        # 0x86e0
    133d:	45 31 e4             	xor    %r12d,%r12d
    1340:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1345:	75 57                	jne    0x139e
    1347:	e8 44 ff ff ff       	call   0x1290
    134c:	85 c0                	test   %eax,%eax
    134e:	74 4e                	je     0x139e
    1350:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1354:	48 01 c1             	add    %rax,%rcx
    1357:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    135b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
    1360:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
    1364:	85 c0                	test   %eax,%eax
    1366:	74 48                	je     0x13b0
    1368:	83 e8 01             	sub    $0x1,%eax
    136b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    136f:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
    1374:	eb 13                	jmp    0x1389
    1376:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    137d:	00 00 00 
    1380:	49 83 c4 28          	add    $0x28,%r12
    1384:	49 39 f4             	cmp    %rsi,%r12
    1387:	74 27                	je     0x13b0
    1389:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    138f:	48 89 da             	mov    %rbx,%rdx
    1392:	4c 89 e1             	mov    %r12,%rcx
    1395:	e8 86 4e 00 00       	call   0x6220
    139a:	85 c0                	test   %eax,%eax
    139c:	75 e2                	jne    0x1380
    139e:	4c 89 e0             	mov    %r12,%rax
    13a1:	48 83 c4 20          	add    $0x20,%rsp
    13a5:	5b                   	pop    %rbx
    13a6:	5e                   	pop    %rsi
    13a7:	41 5c                	pop    %r12
    13a9:	c3                   	ret    
    13aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13b0:	45 31 e4             	xor    %r12d,%r12d
    13b3:	4c 89 e0             	mov    %r12,%rax
    13b6:	48 83 c4 20          	add    $0x20,%rsp
    13ba:	5b                   	pop    %rbx
    13bb:	5e                   	pop    %rsi
    13bc:	41 5c                	pop    %r12
    13be:	c3                   	ret    
    13bf:	90                   	nop
    13c0:	48 83 ec 28          	sub    $0x28,%rsp
    13c4:	4c 8b 15 15 73 00 00 	mov    0x7315(%rip),%r10        # 0x86e0
    13cb:	45 31 c0             	xor    %r8d,%r8d
    13ce:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
    13d4:	49 89 c9             	mov    %rcx,%r9
    13d7:	75 60                	jne    0x1439
    13d9:	4c 89 d1             	mov    %r10,%rcx
    13dc:	e8 af fe ff ff       	call   0x1290
    13e1:	85 c0                	test   %eax,%eax
    13e3:	74 54                	je     0x1439
    13e5:	49 63 42 3c          	movslq 0x3c(%r10),%rax
    13e9:	4c 89 c9             	mov    %r9,%rcx
    13ec:	4c 29 d1             	sub    %r10,%rcx
    13ef:	49 01 c2             	add    %rax,%r10
    13f2:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
    13f7:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
    13fc:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
    1401:	85 c0                	test   %eax,%eax
    1403:	74 31                	je     0x1436
    1405:	83 e8 01             	sub    $0x1,%eax
    1408:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    140c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
    1411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1418:	41 8b 50 0c          	mov    0xc(%r8),%edx
    141c:	48 89 d0             	mov    %rdx,%rax
    141f:	48 39 d1             	cmp    %rdx,%rcx
    1422:	72 09                	jb     0x142d
    1424:	41 03 40 08          	add    0x8(%r8),%eax
    1428:	48 39 c1             	cmp    %rax,%rcx
    142b:	72 0c                	jb     0x1439
    142d:	49 83 c0 28          	add    $0x28,%r8
    1431:	4d 39 c8             	cmp    %r9,%r8
    1434:	75 e2                	jne    0x1418
    1436:	45 31 c0             	xor    %r8d,%r8d
    1439:	4c 89 c0             	mov    %r8,%rax
    143c:	48 83 c4 28          	add    $0x28,%rsp
    1440:	c3                   	ret    
    1441:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1448:	00 00 00 00 
    144c:	0f 1f 40 00          	nopl   0x0(%rax)
    1450:	48 83 ec 28          	sub    $0x28,%rsp
    1454:	48 8b 0d 85 72 00 00 	mov    0x7285(%rip),%rcx        # 0x86e0
    145b:	31 c0                	xor    %eax,%eax
    145d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1462:	75 12                	jne    0x1476
    1464:	e8 27 fe ff ff       	call   0x1290
    1469:	85 c0                	test   %eax,%eax
    146b:	74 09                	je     0x1476
    146d:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1471:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
    1476:	48 83 c4 28          	add    $0x28,%rsp
    147a:	c3                   	ret    
    147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1480:	48 83 ec 28          	sub    $0x28,%rsp
    1484:	45 31 c0             	xor    %r8d,%r8d
    1487:	49 89 c9             	mov    %rcx,%r9
    148a:	48 8b 0d 4f 72 00 00 	mov    0x724f(%rip),%rcx        # 0x86e0
    1491:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1496:	75 4c                	jne    0x14e4
    1498:	e8 f3 fd ff ff       	call   0x1290
    149d:	85 c0                	test   %eax,%eax
    149f:	74 43                	je     0x14e4
    14a1:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    14a5:	48 01 c1             	add    %rax,%rcx
    14a8:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    14ac:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
    14b1:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
    14b5:	85 c0                	test   %eax,%eax
    14b7:	74 28                	je     0x14e1
    14b9:	83 e8 01             	sub    $0x1,%eax
    14bc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    14c0:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
    14c5:	0f 1f 00             	nopl   (%rax)
    14c8:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
    14cd:	74 09                	je     0x14d8
    14cf:	4d 85 c9             	test   %r9,%r9
    14d2:	74 10                	je     0x14e4
    14d4:	49 83 e9 01          	sub    $0x1,%r9
    14d8:	49 83 c0 28          	add    $0x28,%r8
    14dc:	49 39 c0             	cmp    %rax,%r8
    14df:	75 e7                	jne    0x14c8
    14e1:	45 31 c0             	xor    %r8d,%r8d
    14e4:	4c 89 c0             	mov    %r8,%rax
    14e7:	48 83 c4 28          	add    $0x28,%rsp
    14eb:	c3                   	ret    
    14ec:	0f 1f 40 00          	nopl   0x0(%rax)
    14f0:	48 83 ec 28          	sub    $0x28,%rsp
    14f4:	48 8b 0d e5 71 00 00 	mov    0x71e5(%rip),%rcx        # 0x86e0
    14fb:	45 31 c0             	xor    %r8d,%r8d
    14fe:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1503:	75 0b                	jne    0x1510
    1505:	e8 86 fd ff ff       	call   0x1290
    150a:	85 c0                	test   %eax,%eax
    150c:	4c 0f 45 c1          	cmovne %rcx,%r8
    1510:	4c 89 c0             	mov    %r8,%rax
    1513:	48 83 c4 28          	add    $0x28,%rsp
    1517:	c3                   	ret    
    1518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    151f:	00 
    1520:	48 83 ec 28          	sub    $0x28,%rsp
    1524:	4c 8b 0d b5 71 00 00 	mov    0x71b5(%rip),%r9        # 0x86e0
    152b:	31 c0                	xor    %eax,%eax
    152d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
    1533:	49 89 c8             	mov    %rcx,%r8
    1536:	75 57                	jne    0x158f
    1538:	4c 89 c9             	mov    %r9,%rcx
    153b:	e8 50 fd ff ff       	call   0x1290
    1540:	85 c0                	test   %eax,%eax
    1542:	74 4b                	je     0x158f
    1544:	49 63 41 3c          	movslq 0x3c(%r9),%rax
    1548:	4c 89 c1             	mov    %r8,%rcx
    154b:	4c 29 c9             	sub    %r9,%rcx
    154e:	49 01 c1             	add    %rax,%r9
    1551:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
    1556:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
    155b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
    1560:	85 d2                	test   %edx,%edx
    1562:	74 29                	je     0x158d
    1564:	83 ea 01             	sub    $0x1,%edx
    1567:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
    156b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
    1570:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    1574:	4c 89 c2             	mov    %r8,%rdx
    1577:	4c 39 c1             	cmp    %r8,%rcx
    157a:	72 08                	jb     0x1584
    157c:	03 50 08             	add    0x8(%rax),%edx
    157f:	48 39 d1             	cmp    %rdx,%rcx
    1582:	72 14                	jb     0x1598
    1584:	48 83 c0 28          	add    $0x28,%rax
    1588:	4c 39 c8             	cmp    %r9,%rax
    158b:	75 e3                	jne    0x1570
    158d:	31 c0                	xor    %eax,%eax
    158f:	48 83 c4 28          	add    $0x28,%rsp
    1593:	c3                   	ret    
    1594:	0f 1f 40 00          	nopl   0x0(%rax)
    1598:	8b 40 24             	mov    0x24(%rax),%eax
    159b:	f7 d0                	not    %eax
    159d:	c1 e8 1f             	shr    $0x1f,%eax
    15a0:	48 83 c4 28          	add    $0x28,%rsp
    15a4:	c3                   	ret    
    15a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    15ac:	00 00 00 00 
    15b0:	48 83 ec 28          	sub    $0x28,%rsp
    15b4:	4c 8b 1d 25 71 00 00 	mov    0x7125(%rip),%r11        # 0x86e0
    15bb:	45 31 c9             	xor    %r9d,%r9d
    15be:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
    15c4:	41 89 c8             	mov    %ecx,%r8d
    15c7:	75 5f                	jne    0x1628
    15c9:	4c 89 d9             	mov    %r11,%rcx
    15cc:	e8 bf fc ff ff       	call   0x1290
    15d1:	85 c0                	test   %eax,%eax
    15d3:	74 53                	je     0x1628
    15d5:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
    15d9:	4c 01 d9             	add    %r11,%rcx
    15dc:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
    15e2:	85 c0                	test   %eax,%eax
    15e4:	74 42                	je     0x1628
    15e6:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
    15ea:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
    15ef:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
    15f3:	85 c9                	test   %ecx,%ecx
    15f5:	74 31                	je     0x1628
    15f7:	83 e9 01             	sub    $0x1,%ecx
    15fa:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    15fe:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
    1603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1608:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
    160c:	4c 89 c9             	mov    %r9,%rcx
    160f:	4c 39 c8             	cmp    %r9,%rax
    1612:	72 08                	jb     0x161c
    1614:	03 4a 08             	add    0x8(%rdx),%ecx
    1617:	48 39 c8             	cmp    %rcx,%rax
    161a:	72 14                	jb     0x1630
    161c:	48 83 c2 28          	add    $0x28,%rdx
    1620:	4c 39 d2             	cmp    %r10,%rdx
    1623:	75 e3                	jne    0x1608
    1625:	45 31 c9             	xor    %r9d,%r9d
    1628:	4c 89 c8             	mov    %r9,%rax
    162b:	48 83 c4 28          	add    $0x28,%rsp
    162f:	c3                   	ret    
    1630:	4c 01 d8             	add    %r11,%rax
    1633:	eb 0b                	jmp    0x1640
    1635:	0f 1f 00             	nopl   (%rax)
    1638:	41 83 e8 01          	sub    $0x1,%r8d
    163c:	48 83 c0 14          	add    $0x14,%rax
    1640:	8b 48 04             	mov    0x4(%rax),%ecx
    1643:	85 c9                	test   %ecx,%ecx
    1645:	75 07                	jne    0x164e
    1647:	8b 50 0c             	mov    0xc(%rax),%edx
    164a:	85 d2                	test   %edx,%edx
    164c:	74 d7                	je     0x1625
    164e:	45 85 c0             	test   %r8d,%r8d
    1651:	7f e5                	jg     0x1638
    1653:	44 8b 48 0c          	mov    0xc(%rax),%r9d
    1657:	4d 01 d9             	add    %r11,%r9
    165a:	4c 89 c8             	mov    %r9,%rax
    165d:	48 83 c4 28          	add    $0x28,%rsp
    1661:	c3                   	ret    
    1662:	90                   	nop
    1663:	90                   	nop
    1664:	90                   	nop
    1665:	90                   	nop
    1666:	90                   	nop
    1667:	90                   	nop
    1668:	90                   	nop
    1669:	90                   	nop
    166a:	90                   	nop
    166b:	90                   	nop
    166c:	90                   	nop
    166d:	90                   	nop
    166e:	90                   	nop
    166f:	90                   	nop
    1670:	51                   	push   %rcx
    1671:	50                   	push   %rax
    1672:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1678:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    167d:	72 19                	jb     0x1698
    167f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
    1686:	48 83 09 00          	orq    $0x0,(%rcx)
    168a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
    1690:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1696:	77 e7                	ja     0x167f
    1698:	48 29 c1             	sub    %rax,%rcx
    169b:	48 83 09 00          	orq    $0x0,(%rcx)
    169f:	58                   	pop    %rax
    16a0:	59                   	pop    %rcx
    16a1:	c3                   	ret    
    16a2:	90                   	nop
    16a3:	90                   	nop
    16a4:	90                   	nop
    16a5:	90                   	nop
    16a6:	90                   	nop
    16a7:	90                   	nop
    16a8:	90                   	nop
    16a9:	90                   	nop
    16aa:	90                   	nop
    16ab:	90                   	nop
    16ac:	90                   	nop
    16ad:	90                   	nop
    16ae:	90                   	nop
    16af:	90                   	nop
    16b0:	41 55                	push   %r13
    16b2:	41 54                	push   %r12
    16b4:	53                   	push   %rbx
    16b5:	48 83 ec 30          	sub    $0x30,%rsp
    16b9:	4c 89 c3             	mov    %r8,%rbx
    16bc:	49 89 cc             	mov    %rcx,%r12
    16bf:	49 89 d5             	mov    %rdx,%r13
    16c2:	e8 99 51 00 00       	call   0x6860
    16c7:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    16cc:	4d 89 e9             	mov    %r13,%r9
    16cf:	45 31 c0             	xor    %r8d,%r8d
    16d2:	4c 89 e2             	mov    %r12,%rdx
    16d5:	b9 00 60 00 00       	mov    $0x6000,%ecx
    16da:	e8 f1 1a 00 00       	call   0x31d0
    16df:	4c 89 e1             	mov    %r12,%rcx
    16e2:	41 89 c5             	mov    %eax,%r13d
    16e5:	e8 e6 51 00 00       	call   0x68d0
    16ea:	44 89 e8             	mov    %r13d,%eax
    16ed:	48 83 c4 30          	add    $0x30,%rsp
    16f1:	5b                   	pop    %rbx
    16f2:	41 5c                	pop    %r12
    16f4:	41 5d                	pop    %r13
    16f6:	c3                   	ret    
    16f7:	90                   	nop
    16f8:	90                   	nop
    16f9:	90                   	nop
    16fa:	90                   	nop
    16fb:	90                   	nop
    16fc:	90                   	nop
    16fd:	90                   	nop
    16fe:	90                   	nop
    16ff:	90                   	nop
    1700:	48 83 ec 58          	sub    $0x58,%rsp
    1704:	44 8b 5a 08          	mov    0x8(%rdx),%r11d
    1708:	4c 8b 12             	mov    (%rdx),%r10
    170b:	4c 89 d8             	mov    %r11,%rax
    170e:	66 25 ff 7f          	and    $0x7fff,%ax
    1712:	0f 85 80 00 00 00    	jne    0x1798
    1718:	4d 89 d3             	mov    %r10,%r11
    171b:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
    171f:	49 c1 eb 20          	shr    $0x20,%r11
    1723:	45 09 da             	or     %r11d,%r10d
    1726:	0f 84 7c 00 00 00    	je     0x17a8
    172c:	45 85 db             	test   %r11d,%r11d
    172f:	0f 89 c3 00 00 00    	jns    0x17f8
    1735:	41 89 c3             	mov    %eax,%r11d
    1738:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
    173f:	00 
    1740:	41 81 e3 ff 7f 00 00 	and    $0x7fff,%r11d
    1747:	41 81 eb 3e 40 00 00 	sub    $0x403e,%r11d
    174e:	66 90                	xchg   %ax,%ax
    1750:	25 00 80 00 00       	and    $0x8000,%eax
    1755:	4c 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10
    175c:	00 
    175d:	41 89 02             	mov    %eax,(%r10)
    1760:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    1765:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
    176a:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
    176f:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
    1774:	49 89 d0             	mov    %rdx,%r8
    1777:	44 89 da             	mov    %r11d,%edx
    177a:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
    177e:	48 8d 0d db 58 00 00 	lea    0x58db(%rip),%rcx        # 0x7060
    1785:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    178a:	e8 f1 25 00 00       	call   0x3d80
    178f:	48 83 c4 58          	add    $0x58,%rsp
    1793:	c3                   	ret    
    1794:	0f 1f 40 00          	nopl   0x0(%rax)
    1798:	66 3d ff 7f          	cmp    $0x7fff,%ax
    179c:	74 1a                	je     0x17b8
    179e:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
    17a2:	eb 91                	jmp    0x1735
    17a4:	0f 1f 40 00          	nopl   0x0(%rax)
    17a8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    17af:	00 
    17b0:	45 31 db             	xor    %r11d,%r11d
    17b3:	eb 9b                	jmp    0x1750
    17b5:	0f 1f 00             	nopl   (%rax)
    17b8:	4c 89 d0             	mov    %r10,%rax
    17bb:	48 c1 e8 20          	shr    $0x20,%rax
    17bf:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    17c4:	44 09 d0             	or     %r10d,%eax
    17c7:	74 17                	je     0x17e0
    17c9:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
    17d0:	00 
    17d1:	45 31 db             	xor    %r11d,%r11d
    17d4:	31 c0                	xor    %eax,%eax
    17d6:	e9 7a ff ff ff       	jmp    0x1755
    17db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    17e0:	c7 44 24 44 03 00 00 	movl   $0x3,0x44(%rsp)
    17e7:	00 
    17e8:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
    17ec:	45 31 db             	xor    %r11d,%r11d
    17ef:	e9 5c ff ff ff       	jmp    0x1750
    17f4:	0f 1f 40 00          	nopl   0x0(%rax)
    17f8:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
    17ff:	00 
    1800:	41 bb c3 bf ff ff    	mov    $0xffffbfc3,%r11d
    1806:	e9 45 ff ff ff       	jmp    0x1750
    180b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1810:	53                   	push   %rbx
    1811:	48 83 ec 20          	sub    $0x20,%rsp
    1815:	48 89 d3             	mov    %rdx,%rbx
    1818:	8b 52 08             	mov    0x8(%rdx),%edx
    181b:	f6 c6 40             	test   $0x40,%dh
    181e:	75 08                	jne    0x1828
    1820:	8b 43 24             	mov    0x24(%rbx),%eax
    1823:	39 43 28             	cmp    %eax,0x28(%rbx)
    1826:	7e 13                	jle    0x183b
    1828:	4c 8b 03             	mov    (%rbx),%r8
    182b:	80 e6 20             	and    $0x20,%dh
    182e:	75 20                	jne    0x1850
    1830:	48 63 43 24          	movslq 0x24(%rbx),%rax
    1834:	41 88 0c 00          	mov    %cl,(%r8,%rax,1)
    1838:	8b 43 24             	mov    0x24(%rbx),%eax
    183b:	83 c0 01             	add    $0x1,%eax
    183e:	89 43 24             	mov    %eax,0x24(%rbx)
    1841:	48 83 c4 20          	add    $0x20,%rsp
    1845:	5b                   	pop    %rbx
    1846:	c3                   	ret    
    1847:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    184e:	00 00 
    1850:	4c 89 c2             	mov    %r8,%rdx
    1853:	e8 10 4a 00 00       	call   0x6268
    1858:	8b 43 24             	mov    0x24(%rbx),%eax
    185b:	83 c0 01             	add    $0x1,%eax
    185e:	89 43 24             	mov    %eax,0x24(%rbx)
    1861:	48 83 c4 20          	add    $0x20,%rsp
    1865:	5b                   	pop    %rbx
    1866:	c3                   	ret    
    1867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    186e:	00 00 
    1870:	41 56                	push   %r14
    1872:	41 55                	push   %r13
    1874:	41 54                	push   %r12
    1876:	55                   	push   %rbp
    1877:	57                   	push   %rdi
    1878:	56                   	push   %rsi
    1879:	53                   	push   %rbx
    187a:	48 83 ec 40          	sub    $0x40,%rsp
    187e:	4c 8d 74 24 28       	lea    0x28(%rsp),%r14
    1883:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    1888:	4c 89 c6             	mov    %r8,%rsi
    188b:	49 89 cc             	mov    %rcx,%r12
    188e:	89 d5                	mov    %edx,%ebp
    1890:	4d 89 f0             	mov    %r14,%r8
    1893:	31 d2                	xor    %edx,%edx
    1895:	4c 89 e9             	mov    %r13,%rcx
    1898:	e8 33 4e 00 00       	call   0x66d0
    189d:	8b 46 10             	mov    0x10(%rsi),%eax
    18a0:	85 c0                	test   %eax,%eax
    18a2:	78 05                	js     0x18a9
    18a4:	39 c5                	cmp    %eax,%ebp
    18a6:	0f 4f e8             	cmovg  %eax,%ebp
    18a9:	8b 46 0c             	mov    0xc(%rsi),%eax
    18ac:	39 e8                	cmp    %ebp,%eax
    18ae:	0f 8f 95 00 00 00    	jg     0x1949
    18b4:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
    18bb:	85 ed                	test   %ebp,%ebp
    18bd:	0f 8e cc 00 00 00    	jle    0x198f
    18c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18c8:	41 0f b7 14 24       	movzwl (%r12),%edx
    18cd:	4d 89 f0             	mov    %r14,%r8
    18d0:	4c 89 e9             	mov    %r13,%rcx
    18d3:	49 83 c4 02          	add    $0x2,%r12
    18d7:	e8 f4 4d 00 00       	call   0x66d0
    18dc:	85 c0                	test   %eax,%eax
    18de:	7e 4d                	jle    0x192d
    18e0:	83 e8 01             	sub    $0x1,%eax
    18e3:	4c 89 eb             	mov    %r13,%rbx
    18e6:	49 8d 7c 05 01       	lea    0x1(%r13,%rax,1),%rdi
    18eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18f0:	0f be 0b             	movsbl (%rbx),%ecx
    18f3:	48 83 c3 01          	add    $0x1,%rbx
    18f7:	48 89 f2             	mov    %rsi,%rdx
    18fa:	e8 11 ff ff ff       	call   0x1810
    18ff:	48 39 fb             	cmp    %rdi,%rbx
    1902:	75 ec                	jne    0x18f0
    1904:	83 ed 01             	sub    $0x1,%ebp
    1907:	75 bf                	jne    0x18c8
    1909:	8b 46 0c             	mov    0xc(%rsi),%eax
    190c:	8d 50 ff             	lea    -0x1(%rax),%edx
    190f:	89 56 0c             	mov    %edx,0xc(%rsi)
    1912:	85 c0                	test   %eax,%eax
    1914:	7e 24                	jle    0x193a
    1916:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    191d:	00 00 00 
    1920:	48 89 f2             	mov    %rsi,%rdx
    1923:	b9 20 00 00 00       	mov    $0x20,%ecx
    1928:	e8 e3 fe ff ff       	call   0x1810
    192d:	8b 46 0c             	mov    0xc(%rsi),%eax
    1930:	8d 50 ff             	lea    -0x1(%rax),%edx
    1933:	89 56 0c             	mov    %edx,0xc(%rsi)
    1936:	85 c0                	test   %eax,%eax
    1938:	7f e6                	jg     0x1920
    193a:	48 83 c4 40          	add    $0x40,%rsp
    193e:	5b                   	pop    %rbx
    193f:	5e                   	pop    %rsi
    1940:	5f                   	pop    %rdi
    1941:	5d                   	pop    %rbp
    1942:	41 5c                	pop    %r12
    1944:	41 5d                	pop    %r13
    1946:	41 5e                	pop    %r14
    1948:	c3                   	ret    
    1949:	29 e8                	sub    %ebp,%eax
    194b:	89 46 0c             	mov    %eax,0xc(%rsi)
    194e:	f6 46 09 04          	testb  $0x4,0x9(%rsi)
    1952:	75 2b                	jne    0x197f
    1954:	83 e8 01             	sub    $0x1,%eax
    1957:	89 46 0c             	mov    %eax,0xc(%rsi)
    195a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1960:	48 89 f2             	mov    %rsi,%rdx
    1963:	b9 20 00 00 00       	mov    $0x20,%ecx
    1968:	e8 a3 fe ff ff       	call   0x1810
    196d:	8b 46 0c             	mov    0xc(%rsi),%eax
    1970:	8d 50 ff             	lea    -0x1(%rax),%edx
    1973:	89 56 0c             	mov    %edx,0xc(%rsi)
    1976:	85 c0                	test   %eax,%eax
    1978:	75 e6                	jne    0x1960
    197a:	e9 3c ff ff ff       	jmp    0x18bb
    197f:	85 ed                	test   %ebp,%ebp
    1981:	0f 8f 41 ff ff ff    	jg     0x18c8
    1987:	83 e8 01             	sub    $0x1,%eax
    198a:	89 46 0c             	mov    %eax,0xc(%rsi)
    198d:	eb 91                	jmp    0x1920
    198f:	c7 46 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rsi)
    1996:	eb a2                	jmp    0x193a
    1998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    199f:	00 
    19a0:	57                   	push   %rdi
    19a1:	56                   	push   %rsi
    19a2:	53                   	push   %rbx
    19a3:	48 83 ec 20          	sub    $0x20,%rsp
    19a7:	41 8b 40 10          	mov    0x10(%r8),%eax
    19ab:	48 89 ce             	mov    %rcx,%rsi
    19ae:	89 d7                	mov    %edx,%edi
    19b0:	4c 89 c3             	mov    %r8,%rbx
    19b3:	85 c0                	test   %eax,%eax
    19b5:	78 05                	js     0x19bc
    19b7:	39 c2                	cmp    %eax,%edx
    19b9:	0f 4f f8             	cmovg  %eax,%edi
    19bc:	8b 43 0c             	mov    0xc(%rbx),%eax
    19bf:	39 f8                	cmp    %edi,%eax
    19c1:	7f 6d                	jg     0x1a30
    19c3:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    19ca:	85 ff                	test   %edi,%edi
    19cc:	0f 84 ae 00 00 00    	je     0x1a80
    19d2:	8d 47 ff             	lea    -0x1(%rdi),%eax
    19d5:	48 8d 7c 06 01       	lea    0x1(%rsi,%rax,1),%rdi
    19da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    19e0:	0f be 0e             	movsbl (%rsi),%ecx
    19e3:	48 83 c6 01          	add    $0x1,%rsi
    19e7:	48 89 da             	mov    %rbx,%rdx
    19ea:	e8 21 fe ff ff       	call   0x1810
    19ef:	48 39 f7             	cmp    %rsi,%rdi
    19f2:	75 ec                	jne    0x19e0
    19f4:	8b 43 0c             	mov    0xc(%rbx),%eax
    19f7:	8d 50 ff             	lea    -0x1(%rax),%edx
    19fa:	89 53 0c             	mov    %edx,0xc(%rbx)
    19fd:	85 c0                	test   %eax,%eax
    19ff:	7e 21                	jle    0x1a22
    1a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a08:	48 89 da             	mov    %rbx,%rdx
    1a0b:	b9 20 00 00 00       	mov    $0x20,%ecx
    1a10:	e8 fb fd ff ff       	call   0x1810
    1a15:	8b 43 0c             	mov    0xc(%rbx),%eax
    1a18:	8d 50 ff             	lea    -0x1(%rax),%edx
    1a1b:	89 53 0c             	mov    %edx,0xc(%rbx)
    1a1e:	85 c0                	test   %eax,%eax
    1a20:	7f e6                	jg     0x1a08
    1a22:	48 83 c4 20          	add    $0x20,%rsp
    1a26:	5b                   	pop    %rbx
    1a27:	5e                   	pop    %rsi
    1a28:	5f                   	pop    %rdi
    1a29:	c3                   	ret    
    1a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a30:	29 f8                	sub    %edi,%eax
    1a32:	89 43 0c             	mov    %eax,0xc(%rbx)
    1a35:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
    1a39:	75 35                	jne    0x1a70
    1a3b:	83 e8 01             	sub    $0x1,%eax
    1a3e:	89 43 0c             	mov    %eax,0xc(%rbx)
    1a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a48:	48 89 da             	mov    %rbx,%rdx
    1a4b:	b9 20 00 00 00       	mov    $0x20,%ecx
    1a50:	e8 bb fd ff ff       	call   0x1810
    1a55:	8b 43 0c             	mov    0xc(%rbx),%eax
    1a58:	8d 50 ff             	lea    -0x1(%rax),%edx
    1a5b:	89 53 0c             	mov    %edx,0xc(%rbx)
    1a5e:	85 c0                	test   %eax,%eax
    1a60:	75 e6                	jne    0x1a48
    1a62:	e9 63 ff ff ff       	jmp    0x19ca
    1a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a6e:	00 00 
    1a70:	85 ff                	test   %edi,%edi
    1a72:	0f 85 5a ff ff ff    	jne    0x19d2
    1a78:	83 e8 01             	sub    $0x1,%eax
    1a7b:	89 43 0c             	mov    %eax,0xc(%rbx)
    1a7e:	eb 88                	jmp    0x1a08
    1a80:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
    1a87:	eb 99                	jmp    0x1a22
    1a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a90:	41 54                	push   %r12
    1a92:	53                   	push   %rbx
    1a93:	48 83 ec 28          	sub    $0x28,%rsp
    1a97:	48 8d 05 62 68 00 00 	lea    0x6862(%rip),%rax        # 0x8300
    1a9e:	49 89 cc             	mov    %rcx,%r12
    1aa1:	48 85 c9             	test   %rcx,%rcx
    1aa4:	48 89 d3             	mov    %rdx,%rbx
    1aa7:	48 63 52 10          	movslq 0x10(%rdx),%rdx
    1aab:	4c 0f 44 e0          	cmove  %rax,%r12
    1aaf:	4c 89 e1             	mov    %r12,%rcx
    1ab2:	85 d2                	test   %edx,%edx
    1ab4:	78 1a                	js     0x1ad0
    1ab6:	e8 f5 46 00 00       	call   0x61b0
    1abb:	48 89 c2             	mov    %rax,%rdx
    1abe:	49 89 d8             	mov    %rbx,%r8
    1ac1:	4c 89 e1             	mov    %r12,%rcx
    1ac4:	48 83 c4 28          	add    $0x28,%rsp
    1ac8:	5b                   	pop    %rbx
    1ac9:	41 5c                	pop    %r12
    1acb:	e9 d0 fe ff ff       	jmp    0x19a0
    1ad0:	e8 53 47 00 00       	call   0x6228
    1ad5:	eb e4                	jmp    0x1abb
    1ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1ade:	00 00 
    1ae0:	48 83 ec 38          	sub    $0x38,%rsp
    1ae4:	45 8b 50 08          	mov    0x8(%r8),%r10d
    1ae8:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
    1aef:	ff 
    1af0:	85 c9                	test   %ecx,%ecx
    1af2:	74 4c                	je     0x1b40
    1af4:	c6 44 24 2c 2d       	movb   $0x2d,0x2c(%rsp)
    1af9:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
    1afe:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b03:	41 83 e2 20          	and    $0x20,%r10d
    1b07:	31 c9                	xor    %ecx,%ecx
    1b09:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
    1b0d:	83 e0 df             	and    $0xffffffdf,%eax
    1b10:	44 09 d0             	or     %r10d,%eax
    1b13:	41 88 04 09          	mov    %al,(%r9,%rcx,1)
    1b17:	48 83 c1 01          	add    $0x1,%rcx
    1b1b:	48 83 f9 03          	cmp    $0x3,%rcx
    1b1f:	75 e8                	jne    0x1b09
    1b21:	49 8d 51 03          	lea    0x3(%r9),%rdx
    1b25:	4c 89 d9             	mov    %r11,%rcx
    1b28:	4c 29 da             	sub    %r11,%rdx
    1b2b:	e8 70 fe ff ff       	call   0x19a0
    1b30:	90                   	nop
    1b31:	48 83 c4 38          	add    $0x38,%rsp
    1b35:	c3                   	ret    
    1b36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b3d:	00 00 00 
    1b40:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
    1b47:	74 17                	je     0x1b60
    1b49:	c6 44 24 2c 2b       	movb   $0x2b,0x2c(%rsp)
    1b4e:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
    1b53:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b58:	eb a9                	jmp    0x1b03
    1b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1b60:	41 f6 c2 40          	test   $0x40,%r10b
    1b64:	74 1a                	je     0x1b80
    1b66:	c6 44 24 2c 20       	movb   $0x20,0x2c(%rsp)
    1b6b:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
    1b70:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b75:	eb 8c                	jmp    0x1b03
    1b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b7e:	00 00 
    1b80:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
    1b85:	4d 89 d9             	mov    %r11,%r9
    1b88:	e9 76 ff ff ff       	jmp    0x1b03
    1b8d:	0f 1f 00             	nopl   (%rax)
    1b90:	55                   	push   %rbp
    1b91:	41 54                	push   %r12
    1b93:	57                   	push   %rdi
    1b94:	56                   	push   %rsi
    1b95:	53                   	push   %rbx
    1b96:	48 89 e5             	mov    %rsp,%rbp
    1b99:	48 83 ec 30          	sub    $0x30,%rsp
    1b9d:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
    1ba1:	49 89 cc             	mov    %rcx,%r12
    1ba4:	0f 84 96 00 00 00    	je     0x1c40
    1baa:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
    1bae:	66 85 d2             	test   %dx,%dx
    1bb1:	74 6d                	je     0x1c20
    1bb3:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    1bb8:	48 89 e6             	mov    %rsp,%rsi
    1bbb:	48 83 c0 0f          	add    $0xf,%rax
    1bbf:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    1bc3:	e8 a8 fa ff ff       	call   0x1670
    1bc8:	48 29 c4             	sub    %rax,%rsp
    1bcb:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
    1bcf:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1bd6:	00 
    1bd7:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
    1bdc:	48 89 d9             	mov    %rbx,%rcx
    1bdf:	e8 ec 4a 00 00       	call   0x66d0
    1be4:	85 c0                	test   %eax,%eax
    1be6:	0f 8e 94 00 00 00    	jle    0x1c80
    1bec:	83 e8 01             	sub    $0x1,%eax
    1bef:	48 8d 7c 03 01       	lea    0x1(%rbx,%rax,1),%rdi
    1bf4:	0f 1f 40 00          	nopl   0x0(%rax)
    1bf8:	0f be 0b             	movsbl (%rbx),%ecx
    1bfb:	48 83 c3 01          	add    $0x1,%rbx
    1bff:	4c 89 e2             	mov    %r12,%rdx
    1c02:	e8 09 fc ff ff       	call   0x1810
    1c07:	48 39 fb             	cmp    %rdi,%rbx
    1c0a:	75 ec                	jne    0x1bf8
    1c0c:	48 89 f4             	mov    %rsi,%rsp
    1c0f:	48 89 ec             	mov    %rbp,%rsp
    1c12:	5b                   	pop    %rbx
    1c13:	5e                   	pop    %rsi
    1c14:	5f                   	pop    %rdi
    1c15:	41 5c                	pop    %r12
    1c17:	5d                   	pop    %rbp
    1c18:	c3                   	ret    
    1c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c20:	4c 89 e2             	mov    %r12,%rdx
    1c23:	b9 2e 00 00 00       	mov    $0x2e,%ecx
    1c28:	e8 e3 fb ff ff       	call   0x1810
    1c2d:	90                   	nop
    1c2e:	48 89 ec             	mov    %rbp,%rsp
    1c31:	5b                   	pop    %rbx
    1c32:	5e                   	pop    %rsi
    1c33:	5f                   	pop    %rdi
    1c34:	41 5c                	pop    %r12
    1c36:	5d                   	pop    %rbp
    1c37:	c3                   	ret    
    1c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c3f:	00 
    1c40:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1c47:	00 
    1c48:	48 8d 5d f8          	lea    -0x8(%rbp),%rbx
    1c4c:	e8 ff 45 00 00       	call   0x6250
    1c51:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
    1c55:	49 89 d9             	mov    %rbx,%r9
    1c58:	41 b8 10 00 00 00    	mov    $0x10,%r8d
    1c5e:	48 8b 10             	mov    (%rax),%rdx
    1c61:	e8 fa 47 00 00       	call   0x6460
    1c66:	85 c0                	test   %eax,%eax
    1c68:	7e 2e                	jle    0x1c98
    1c6a:	0f b7 55 f6          	movzwl -0xa(%rbp),%edx
    1c6e:	66 41 89 54 24 18    	mov    %dx,0x18(%r12)
    1c74:	41 89 44 24 14       	mov    %eax,0x14(%r12)
    1c79:	e9 30 ff ff ff       	jmp    0x1bae
    1c7e:	66 90                	xchg   %ax,%ax
    1c80:	4c 89 e2             	mov    %r12,%rdx
    1c83:	b9 2e 00 00 00       	mov    $0x2e,%ecx
    1c88:	e8 83 fb ff ff       	call   0x1810
    1c8d:	e9 7a ff ff ff       	jmp    0x1c0c
    1c92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1c98:	41 0f b7 54 24 18    	movzwl 0x18(%r12),%edx
    1c9e:	eb d4                	jmp    0x1c74
    1ca0:	55                   	push   %rbp
    1ca1:	57                   	push   %rdi
    1ca2:	56                   	push   %rsi
    1ca3:	53                   	push   %rbx
    1ca4:	48 83 ec 28          	sub    $0x28,%rsp
    1ca8:	41 8b 41 0c          	mov    0xc(%r9),%eax
    1cac:	89 cd                	mov    %ecx,%ebp
    1cae:	48 89 d7             	mov    %rdx,%rdi
    1cb1:	44 89 c6             	mov    %r8d,%esi
    1cb4:	4c 89 cb             	mov    %r9,%rbx
    1cb7:	45 85 c0             	test   %r8d,%r8d
    1cba:	0f 8e 10 02 00 00    	jle    0x1ed0
    1cc0:	41 39 c0             	cmp    %eax,%r8d
    1cc3:	0f 8e f7 00 00 00    	jle    0x1dc0
    1cc9:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    1cd0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1cd5:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
    1cd9:	74 4d                	je     0x1d28
    1cdb:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    1ce0:	0f 84 0a 01 00 00    	je     0x1df0
    1ce6:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
    1ceb:	44 8d 46 02          	lea    0x2(%rsi),%r8d
    1cef:	4c 0f af c2          	imul   %rdx,%r8
    1cf3:	89 c2                	mov    %eax,%edx
    1cf5:	49 c1 e8 21          	shr    $0x21,%r8
    1cf9:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
    1cfd:	29 c1                	sub    %eax,%ecx
    1cff:	41 83 f8 01          	cmp    $0x1,%r8d
    1d03:	75 1b                	jne    0x1d20
    1d05:	e9 e6 00 00 00       	jmp    0x1df0
    1d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1d10:	83 ea 01             	sub    $0x1,%edx
    1d13:	89 c8                	mov    %ecx,%eax
    1d15:	01 d0                	add    %edx,%eax
    1d17:	89 53 0c             	mov    %edx,0xc(%rbx)
    1d1a:	0f 84 2a 03 00 00    	je     0x204a
    1d20:	85 d2                	test   %edx,%edx
    1d22:	7f ec                	jg     0x1d10
    1d24:	0f 1f 40 00          	nopl   0x0(%rax)
    1d28:	85 ed                	test   %ebp,%ebp
    1d2a:	0f 85 22 01 00 00    	jne    0x1e52
    1d30:	8b 53 08             	mov    0x8(%rbx),%edx
    1d33:	f6 c6 01             	test   $0x1,%dh
    1d36:	0f 85 84 02 00 00    	jne    0x1fc0
    1d3c:	83 e2 40             	and    $0x40,%edx
    1d3f:	0f 85 f3 02 00 00    	jne    0x2038
    1d45:	8b 43 0c             	mov    0xc(%rbx),%eax
    1d48:	85 c0                	test   %eax,%eax
    1d4a:	7e 15                	jle    0x1d61
    1d4c:	8b 53 08             	mov    0x8(%rbx),%edx
    1d4f:	81 e2 00 06 00 00    	and    $0x600,%edx
    1d55:	81 fa 00 02 00 00    	cmp    $0x200,%edx
    1d5b:	0f 84 77 02 00 00    	je     0x1fd8
    1d61:	48 8d 6b 20          	lea    0x20(%rbx),%rbp
    1d65:	85 f6                	test   %esi,%esi
    1d67:	0f 8e bb 01 00 00    	jle    0x1f28
    1d6d:	0f 1f 00             	nopl   (%rax)
    1d70:	0f b6 07             	movzbl (%rdi),%eax
    1d73:	b9 30 00 00 00       	mov    $0x30,%ecx
    1d78:	84 c0                	test   %al,%al
    1d7a:	74 07                	je     0x1d83
    1d7c:	48 83 c7 01          	add    $0x1,%rdi
    1d80:	0f be c8             	movsbl %al,%ecx
    1d83:	48 89 da             	mov    %rbx,%rdx
    1d86:	e8 85 fa ff ff       	call   0x1810
    1d8b:	83 ee 01             	sub    $0x1,%esi
    1d8e:	0f 84 d4 00 00 00    	je     0x1e68
    1d94:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
    1d98:	74 d6                	je     0x1d70
    1d9a:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    1d9f:	74 cf                	je     0x1d70
    1da1:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    1da7:	3d 55 55 55 55       	cmp    $0x55555555,%eax
    1dac:	77 c2                	ja     0x1d70
    1dae:	49 89 d8             	mov    %rbx,%r8
    1db1:	ba 01 00 00 00       	mov    $0x1,%edx
    1db6:	48 89 e9             	mov    %rbp,%rcx
    1db9:	e8 b2 fa ff ff       	call   0x1870
    1dbe:	eb b0                	jmp    0x1d70
    1dc0:	41 8b 51 10          	mov    0x10(%r9),%edx
    1dc4:	44 29 c0             	sub    %r8d,%eax
    1dc7:	39 d0                	cmp    %edx,%eax
    1dc9:	0f 8e fa fe ff ff    	jle    0x1cc9
    1dcf:	29 d0                	sub    %edx,%eax
    1dd1:	89 43 0c             	mov    %eax,0xc(%rbx)
    1dd4:	85 d2                	test   %edx,%edx
    1dd6:	0f 8e b4 01 00 00    	jle    0x1f90
    1ddc:	83 e8 01             	sub    $0x1,%eax
    1ddf:	89 43 0c             	mov    %eax,0xc(%rbx)
    1de2:	85 f6                	test   %esi,%esi
    1de4:	7e 0a                	jle    0x1df0
    1de6:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
    1dea:	0f 85 eb fe ff ff    	jne    0x1cdb
    1df0:	85 c0                	test   %eax,%eax
    1df2:	0f 8e 30 ff ff ff    	jle    0x1d28
    1df8:	85 ed                	test   %ebp,%ebp
    1dfa:	0f 85 f8 00 00 00    	jne    0x1ef8
    1e00:	8b 53 08             	mov    0x8(%rbx),%edx
    1e03:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
    1e09:	0f 84 f1 01 00 00    	je     0x2000
    1e0f:	83 e8 01             	sub    $0x1,%eax
    1e12:	89 43 0c             	mov    %eax,0xc(%rbx)
    1e15:	0f 84 18 ff ff ff    	je     0x1d33
    1e1b:	f6 c6 06             	test   $0x6,%dh
    1e1e:	0f 85 0f ff ff ff    	jne    0x1d33
    1e24:	83 e8 01             	sub    $0x1,%eax
    1e27:	89 43 0c             	mov    %eax,0xc(%rbx)
    1e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e30:	48 89 da             	mov    %rbx,%rdx
    1e33:	b9 20 00 00 00       	mov    $0x20,%ecx
    1e38:	e8 d3 f9 ff ff       	call   0x1810
    1e3d:	8b 43 0c             	mov    0xc(%rbx),%eax
    1e40:	8d 50 ff             	lea    -0x1(%rax),%edx
    1e43:	89 53 0c             	mov    %edx,0xc(%rbx)
    1e46:	85 c0                	test   %eax,%eax
    1e48:	7f e6                	jg     0x1e30
    1e4a:	85 ed                	test   %ebp,%ebp
    1e4c:	0f 84 de fe ff ff    	je     0x1d30
    1e52:	48 89 da             	mov    %rbx,%rdx
    1e55:	b9 2d 00 00 00       	mov    $0x2d,%ecx
    1e5a:	e8 b1 f9 ff ff       	call   0x1810
    1e5f:	e9 e1 fe ff ff       	jmp    0x1d45
    1e64:	0f 1f 40 00          	nopl   0x0(%rax)
    1e68:	8b 43 10             	mov    0x10(%rbx),%eax
    1e6b:	85 c0                	test   %eax,%eax
    1e6d:	7f 19                	jg     0x1e88
    1e6f:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
    1e73:	75 13                	jne    0x1e88
    1e75:	83 e8 01             	sub    $0x1,%eax
    1e78:	89 43 10             	mov    %eax,0x10(%rbx)
    1e7b:	48 83 c4 28          	add    $0x28,%rsp
    1e7f:	5b                   	pop    %rbx
    1e80:	5e                   	pop    %rsi
    1e81:	5f                   	pop    %rdi
    1e82:	5d                   	pop    %rbp
    1e83:	c3                   	ret    
    1e84:	0f 1f 40 00          	nopl   0x0(%rax)
    1e88:	48 89 d9             	mov    %rbx,%rcx
    1e8b:	e8 00 fd ff ff       	call   0x1b90
    1e90:	eb 21                	jmp    0x1eb3
    1e92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e98:	0f b6 07             	movzbl (%rdi),%eax
    1e9b:	b9 30 00 00 00       	mov    $0x30,%ecx
    1ea0:	84 c0                	test   %al,%al
    1ea2:	74 07                	je     0x1eab
    1ea4:	48 83 c7 01          	add    $0x1,%rdi
    1ea8:	0f be c8             	movsbl %al,%ecx
    1eab:	48 89 da             	mov    %rbx,%rdx
    1eae:	e8 5d f9 ff ff       	call   0x1810
    1eb3:	8b 43 10             	mov    0x10(%rbx),%eax
    1eb6:	8d 50 ff             	lea    -0x1(%rax),%edx
    1eb9:	89 53 10             	mov    %edx,0x10(%rbx)
    1ebc:	85 c0                	test   %eax,%eax
    1ebe:	7f d8                	jg     0x1e98
    1ec0:	48 83 c4 28          	add    $0x28,%rsp
    1ec4:	5b                   	pop    %rbx
    1ec5:	5e                   	pop    %rsi
    1ec6:	5f                   	pop    %rdi
    1ec7:	5d                   	pop    %rbp
    1ec8:	c3                   	ret    
    1ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ed0:	85 c0                	test   %eax,%eax
    1ed2:	0f 8e 48 01 00 00    	jle    0x2020
    1ed8:	83 e8 01             	sub    $0x1,%eax
    1edb:	8b 53 10             	mov    0x10(%rbx),%edx
    1ede:	39 d0                	cmp    %edx,%eax
    1ee0:	0f 8f e9 fe ff ff    	jg     0x1dcf
    1ee6:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    1eed:	e9 36 fe ff ff       	jmp    0x1d28
    1ef2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ef8:	83 e8 01             	sub    $0x1,%eax
    1efb:	89 43 0c             	mov    %eax,0xc(%rbx)
    1efe:	0f 84 4e ff ff ff    	je     0x1e52
    1f04:	f7 43 08 00 06 00 00 	testl  $0x600,0x8(%rbx)
    1f0b:	0f 84 13 ff ff ff    	je     0x1e24
    1f11:	48 89 da             	mov    %rbx,%rdx
    1f14:	b9 2d 00 00 00       	mov    $0x2d,%ecx
    1f19:	e8 f2 f8 ff ff       	call   0x1810
    1f1e:	e9 22 fe ff ff       	jmp    0x1d45
    1f23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1f28:	48 89 da             	mov    %rbx,%rdx
    1f2b:	b9 30 00 00 00       	mov    $0x30,%ecx
    1f30:	e8 db f8 ff ff       	call   0x1810
    1f35:	8b 43 10             	mov    0x10(%rbx),%eax
    1f38:	85 c0                	test   %eax,%eax
    1f3a:	7f 14                	jg     0x1f50
    1f3c:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
    1f40:	75 0e                	jne    0x1f50
    1f42:	85 f6                	test   %esi,%esi
    1f44:	75 1d                	jne    0x1f63
    1f46:	e9 2a ff ff ff       	jmp    0x1e75
    1f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1f50:	48 89 d9             	mov    %rbx,%rcx
    1f53:	e8 38 fc ff ff       	call   0x1b90
    1f58:	85 f6                	test   %esi,%esi
    1f5a:	0f 84 53 ff ff ff    	je     0x1eb3
    1f60:	8b 43 10             	mov    0x10(%rbx),%eax
    1f63:	01 f0                	add    %esi,%eax
    1f65:	89 43 10             	mov    %eax,0x10(%rbx)
    1f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1f6f:	00 
    1f70:	48 89 da             	mov    %rbx,%rdx
    1f73:	b9 30 00 00 00       	mov    $0x30,%ecx
    1f78:	e8 93 f8 ff ff       	call   0x1810
    1f7d:	83 c6 01             	add    $0x1,%esi
    1f80:	75 ee                	jne    0x1f70
    1f82:	e9 2c ff ff ff       	jmp    0x1eb3
    1f87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1f8e:	00 00 
    1f90:	8b 53 08             	mov    0x8(%rbx),%edx
    1f93:	f6 c6 08             	test   $0x8,%dh
    1f96:	0f 85 40 fe ff ff    	jne    0x1ddc
    1f9c:	85 f6                	test   %esi,%esi
    1f9e:	0f 8e 54 fe ff ff    	jle    0x1df8
    1fa4:	80 e6 10             	and    $0x10,%dh
    1fa7:	0f 84 4b fe ff ff    	je     0x1df8
    1fad:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    1fb2:	0f 84 40 fe ff ff    	je     0x1df8
    1fb8:	e9 29 fd ff ff       	jmp    0x1ce6
    1fbd:	0f 1f 00             	nopl   (%rax)
    1fc0:	48 89 da             	mov    %rbx,%rdx
    1fc3:	b9 2b 00 00 00       	mov    $0x2b,%ecx
    1fc8:	e8 43 f8 ff ff       	call   0x1810
    1fcd:	e9 73 fd ff ff       	jmp    0x1d45
    1fd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1fd8:	83 e8 01             	sub    $0x1,%eax
    1fdb:	89 43 0c             	mov    %eax,0xc(%rbx)
    1fde:	66 90                	xchg   %ax,%ax
    1fe0:	48 89 da             	mov    %rbx,%rdx
    1fe3:	b9 30 00 00 00       	mov    $0x30,%ecx
    1fe8:	e8 23 f8 ff ff       	call   0x1810
    1fed:	8b 43 0c             	mov    0xc(%rbx),%eax
    1ff0:	8d 50 ff             	lea    -0x1(%rax),%edx
    1ff3:	89 53 0c             	mov    %edx,0xc(%rbx)
    1ff6:	85 c0                	test   %eax,%eax
    1ff8:	7f e6                	jg     0x1fe0
    1ffa:	e9 62 fd ff ff       	jmp    0x1d61
    1fff:	90                   	nop
    2000:	f6 c6 06             	test   $0x6,%dh
    2003:	0f 85 2a fd ff ff    	jne    0x1d33
    2009:	8b 43 0c             	mov    0xc(%rbx),%eax
    200c:	8d 48 ff             	lea    -0x1(%rax),%ecx
    200f:	89 4b 0c             	mov    %ecx,0xc(%rbx)
    2012:	85 c0                	test   %eax,%eax
    2014:	0f 8e 19 fd ff ff    	jle    0x1d33
    201a:	e9 11 fe ff ff       	jmp    0x1e30
    201f:	90                   	nop
    2020:	0f 84 b5 fe ff ff    	je     0x1edb
    2026:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    202d:	e9 f6 fc ff ff       	jmp    0x1d28
    2032:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2038:	48 89 da             	mov    %rbx,%rdx
    203b:	b9 20 00 00 00       	mov    $0x20,%ecx
    2040:	e8 cb f7 ff ff       	call   0x1810
    2045:	e9 fb fc ff ff       	jmp    0x1d45
    204a:	89 d0                	mov    %edx,%eax
    204c:	e9 9f fd ff ff       	jmp    0x1df0
    2051:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2058:	00 00 00 00 
    205c:	0f 1f 40 00          	nopl   0x0(%rax)
    2060:	41 54                	push   %r12
    2062:	53                   	push   %rbx
    2063:	48 83 ec 68          	sub    $0x68,%rsp
    2067:	44 8b 42 10          	mov    0x10(%rdx),%r8d
    206b:	db 29                	fldt   (%rcx)
    206d:	48 89 d3             	mov    %rdx,%rbx
    2070:	45 85 c0             	test   %r8d,%r8d
    2073:	79 0d                	jns    0x2082
    2075:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
    207c:	41 b8 06 00 00 00    	mov    $0x6,%r8d
    2082:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    2087:	db 7c 24 50          	fstpt  0x50(%rsp)
    208b:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
    2091:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    2096:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
    209b:	b9 03 00 00 00       	mov    $0x3,%ecx
    20a0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    20a5:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    20aa:	e8 51 f6 ff ff       	call   0x1700
    20af:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
    20b4:	49 89 c4             	mov    %rax,%r12
    20b7:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
    20be:	74 48                	je     0x2108
    20c0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    20c4:	49 89 d9             	mov    %rbx,%r9
    20c7:	48 89 c2             	mov    %rax,%rdx
    20ca:	e8 d1 fb ff ff       	call   0x1ca0
    20cf:	eb 14                	jmp    0x20e5
    20d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    20d8:	48 89 da             	mov    %rbx,%rdx
    20db:	b9 20 00 00 00       	mov    $0x20,%ecx
    20e0:	e8 2b f7 ff ff       	call   0x1810
    20e5:	8b 43 0c             	mov    0xc(%rbx),%eax
    20e8:	8d 50 ff             	lea    -0x1(%rax),%edx
    20eb:	89 53 0c             	mov    %edx,0xc(%rbx)
    20ee:	85 c0                	test   %eax,%eax
    20f0:	7f e6                	jg     0x20d8
    20f2:	4c 89 e1             	mov    %r12,%rcx
    20f5:	e8 f6 1a 00 00       	call   0x3bf0
    20fa:	90                   	nop
    20fb:	48 83 c4 68          	add    $0x68,%rsp
    20ff:	5b                   	pop    %rbx
    2100:	41 5c                	pop    %r12
    2102:	c3                   	ret    
    2103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2108:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    210c:	49 89 d8             	mov    %rbx,%r8
    210f:	48 89 c2             	mov    %rax,%rdx
    2112:	e8 c9 f9 ff ff       	call   0x1ae0
    2117:	4c 89 e1             	mov    %r12,%rcx
    211a:	e8 d1 1a 00 00       	call   0x3bf0
    211f:	90                   	nop
    2120:	48 83 c4 68          	add    $0x68,%rsp
    2124:	5b                   	pop    %rbx
    2125:	41 5c                	pop    %r12
    2127:	c3                   	ret    
    2128:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    212f:	00 
    2130:	55                   	push   %rbp
    2131:	41 57                	push   %r15
    2133:	41 56                	push   %r14
    2135:	41 55                	push   %r13
    2137:	41 54                	push   %r12
    2139:	57                   	push   %rdi
    213a:	56                   	push   %rsi
    213b:	53                   	push   %rbx
    213c:	48 83 ec 28          	sub    $0x28,%rsp
    2140:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
    2147:	00 
    2148:	b8 00 00 00 00       	mov    $0x0,%eax
    214d:	44 8b 6a 10          	mov    0x10(%rdx),%r13d
    2151:	44 8b 52 08          	mov    0x8(%rdx),%r10d
    2155:	45 85 ed             	test   %r13d,%r13d
    2158:	41 0f 49 c5          	cmovns %r13d,%eax
    215c:	48 89 d3             	mov    %rdx,%rbx
    215f:	83 c0 17             	add    $0x17,%eax
    2162:	41 f7 c2 00 10 00 00 	test   $0x1000,%r10d
    2169:	74 0b                	je     0x2176
    216b:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
    2170:	0f 85 f2 01 00 00    	jne    0x2368
    2176:	44 8b 5b 0c          	mov    0xc(%rbx),%r11d
    217a:	41 39 c3             	cmp    %eax,%r11d
    217d:	41 0f 4d c3          	cmovge %r11d,%eax
    2181:	48 98                	cltq   
    2183:	48 83 c0 0f          	add    $0xf,%rax
    2187:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    218b:	e8 e0 f4 ff ff       	call   0x1670
    2190:	48 29 c4             	sub    %rax,%rsp
    2193:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2198:	41 f6 c2 80          	test   $0x80,%r10b
    219c:	74 11                	je     0x21af
    219e:	48 85 c9             	test   %rcx,%rcx
    21a1:	0f 88 f9 01 00 00    	js     0x23a0
    21a7:	41 80 e2 7f          	and    $0x7f,%r10b
    21ab:	44 89 53 08          	mov    %r10d,0x8(%rbx)
    21af:	48 85 c9             	test   %rcx,%rcx
    21b2:	0f 84 c8 02 00 00    	je     0x2480
    21b8:	49 be 03 00 00 00 00 	movabs $0x8000000000000003,%r14
    21bf:	00 00 80 
    21c2:	44 89 d6             	mov    %r10d,%esi
    21c5:	49 89 f8             	mov    %rdi,%r8
    21c8:	49 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r9
    21cf:	cc cc cc 
    21d2:	81 e6 00 10 00 00    	and    $0x1000,%esi
    21d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    21df:	00 
    21e0:	4d 8d 60 01          	lea    0x1(%r8),%r12
    21e4:	4c 39 c7             	cmp    %r8,%rdi
    21e7:	74 2f                	je     0x2218
    21e9:	85 f6                	test   %esi,%esi
    21eb:	74 2b                	je     0x2218
    21ed:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
    21f2:	74 24                	je     0x2218
    21f4:	4c 89 c0             	mov    %r8,%rax
    21f7:	48 29 f8             	sub    %rdi,%rax
    21fa:	4c 21 f0             	and    %r14,%rax
    21fd:	48 83 f8 03          	cmp    $0x3,%rax
    2201:	75 15                	jne    0x2218
    2203:	49 8d 40 02          	lea    0x2(%r8),%rax
    2207:	41 c6 00 2c          	movb   $0x2c,(%r8)
    220b:	4d 89 e0             	mov    %r12,%r8
    220e:	49 89 c4             	mov    %rax,%r12
    2211:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2218:	48 89 c8             	mov    %rcx,%rax
    221b:	49 89 cf             	mov    %rcx,%r15
    221e:	49 f7 e1             	mul    %r9
    2221:	48 c1 ea 03          	shr    $0x3,%rdx
    2225:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    2229:	48 01 c0             	add    %rax,%rax
    222c:	49 29 c7             	sub    %rax,%r15
    222f:	4c 89 f8             	mov    %r15,%rax
    2232:	83 c0 30             	add    $0x30,%eax
    2235:	41 88 00             	mov    %al,(%r8)
    2238:	48 83 f9 09          	cmp    $0x9,%rcx
    223c:	76 12                	jbe    0x2250
    223e:	48 89 d1             	mov    %rdx,%rcx
    2241:	4d 89 e0             	mov    %r12,%r8
    2244:	eb 9a                	jmp    0x21e0
    2246:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    224d:	00 00 00 
    2250:	45 85 ed             	test   %r13d,%r13d
    2253:	0f 8e 57 01 00 00    	jle    0x23b0
    2259:	4c 89 e0             	mov    %r12,%rax
    225c:	44 89 ea             	mov    %r13d,%edx
    225f:	48 29 f8             	sub    %rdi,%rax
    2262:	29 c2                	sub    %eax,%edx
    2264:	89 d0                	mov    %edx,%eax
    2266:	85 d2                	test   %edx,%edx
    2268:	7e 2b                	jle    0x2295
    226a:	8d 48 ff             	lea    -0x1(%rax),%ecx
    226d:	8d 42 ff             	lea    -0x1(%rdx),%eax
    2270:	49 8d 54 04 01       	lea    0x1(%r12,%rax,1),%rdx
    2275:	4c 89 e0             	mov    %r12,%rax
    2278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    227f:	00 
    2280:	48 83 c0 01          	add    $0x1,%rax
    2284:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    2288:	48 39 d0             	cmp    %rdx,%rax
    228b:	75 f3                	jne    0x2280
    228d:	48 63 c1             	movslq %ecx,%rax
    2290:	4d 8d 64 04 01       	lea    0x1(%r12,%rax,1),%r12
    2295:	4c 39 e7             	cmp    %r12,%rdi
    2298:	0f 84 2a 01 00 00    	je     0x23c8
    229e:	45 85 db             	test   %r11d,%r11d
    22a1:	7e 3d                	jle    0x22e0
    22a3:	4c 89 e0             	mov    %r12,%rax
    22a6:	48 29 f8             	sub    %rdi,%rax
    22a9:	41 29 c3             	sub    %eax,%r11d
    22ac:	44 89 5b 0c          	mov    %r11d,0xc(%rbx)
    22b0:	45 85 db             	test   %r11d,%r11d
    22b3:	7e 2b                	jle    0x22e0
    22b5:	41 f7 c2 c0 01 00 00 	test   $0x1c0,%r10d
    22bc:	0f 85 1e 01 00 00    	jne    0x23e0
    22c2:	45 85 ed             	test   %r13d,%r13d
    22c5:	0f 88 26 01 00 00    	js     0x23f1
    22cb:	41 f7 c2 00 04 00 00 	test   $0x400,%r10d
    22d2:	0f 84 68 01 00 00    	je     0x2440
    22d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    22df:	00 
    22e0:	41 f6 c2 80          	test   $0x80,%r10b
    22e4:	74 6a                	je     0x2350
    22e6:	41 c6 04 24 2d       	movb   $0x2d,(%r12)
    22eb:	49 8d 74 24 01       	lea    0x1(%r12),%rsi
    22f0:	48 39 f7             	cmp    %rsi,%rdi
    22f3:	73 38                	jae    0x232d
    22f5:	0f 1f 00             	nopl   (%rax)
    22f8:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
    22fc:	48 83 ee 01          	sub    $0x1,%rsi
    2300:	48 89 da             	mov    %rbx,%rdx
    2303:	e8 08 f5 ff ff       	call   0x1810
    2308:	48 39 f7             	cmp    %rsi,%rdi
    230b:	75 eb                	jne    0x22f8
    230d:	8b 43 0c             	mov    0xc(%rbx),%eax
    2310:	8d 50 ff             	lea    -0x1(%rax),%edx
    2313:	89 53 0c             	mov    %edx,0xc(%rbx)
    2316:	85 c0                	test   %eax,%eax
    2318:	7e 20                	jle    0x233a
    231a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2320:	48 89 da             	mov    %rbx,%rdx
    2323:	b9 20 00 00 00       	mov    $0x20,%ecx
    2328:	e8 e3 f4 ff ff       	call   0x1810
    232d:	8b 43 0c             	mov    0xc(%rbx),%eax
    2330:	8d 50 ff             	lea    -0x1(%rax),%edx
    2333:	89 53 0c             	mov    %edx,0xc(%rbx)
    2336:	85 c0                	test   %eax,%eax
    2338:	7f e6                	jg     0x2320
    233a:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
    233e:	5b                   	pop    %rbx
    233f:	5e                   	pop    %rsi
    2340:	5f                   	pop    %rdi
    2341:	41 5c                	pop    %r12
    2343:	41 5d                	pop    %r13
    2345:	41 5e                	pop    %r14
    2347:	41 5f                	pop    %r15
    2349:	5d                   	pop    %rbp
    234a:	c3                   	ret    
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2350:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
    2357:	74 27                	je     0x2380
    2359:	41 c6 04 24 2b       	movb   $0x2b,(%r12)
    235e:	49 8d 74 24 01       	lea    0x1(%r12),%rsi
    2363:	eb 8b                	jmp    0x22f0
    2365:	0f 1f 00             	nopl   (%rax)
    2368:	89 c2                	mov    %eax,%edx
    236a:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
    2370:	49 0f af d0          	imul   %r8,%rdx
    2374:	48 c1 ea 21          	shr    $0x21,%rdx
    2378:	01 d0                	add    %edx,%eax
    237a:	e9 f7 fd ff ff       	jmp    0x2176
    237f:	90                   	nop
    2380:	41 83 e2 40          	and    $0x40,%r10d
    2384:	4c 89 e6             	mov    %r12,%rsi
    2387:	0f 84 63 ff ff ff    	je     0x22f0
    238d:	41 c6 04 24 20       	movb   $0x20,(%r12)
    2392:	48 83 c6 01          	add    $0x1,%rsi
    2396:	e9 55 ff ff ff       	jmp    0x22f0
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    23a0:	48 f7 d9             	neg    %rcx
    23a3:	e9 10 fe ff ff       	jmp    0x21b8
    23a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    23af:	00 
    23b0:	4c 39 e7             	cmp    %r12,%rdi
    23b3:	0f 85 e5 fe ff ff    	jne    0x229e
    23b9:	45 85 ed             	test   %r13d,%r13d
    23bc:	0f 84 dc fe ff ff    	je     0x229e
    23c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    23c8:	41 c6 04 24 30       	movb   $0x30,(%r12)
    23cd:	49 83 c4 01          	add    $0x1,%r12
    23d1:	e9 c8 fe ff ff       	jmp    0x229e
    23d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    23dd:	00 00 00 
    23e0:	41 83 eb 01          	sub    $0x1,%r11d
    23e4:	44 89 5b 0c          	mov    %r11d,0xc(%rbx)
    23e8:	45 85 ed             	test   %r13d,%r13d
    23eb:	0f 89 da fe ff ff    	jns    0x22cb
    23f1:	44 89 d0             	mov    %r10d,%eax
    23f4:	25 00 06 00 00       	and    $0x600,%eax
    23f9:	3d 00 02 00 00       	cmp    $0x200,%eax
    23fe:	0f 85 c7 fe ff ff    	jne    0x22cb
    2404:	8b 53 0c             	mov    0xc(%rbx),%edx
    2407:	8d 42 ff             	lea    -0x1(%rdx),%eax
    240a:	89 43 0c             	mov    %eax,0xc(%rbx)
    240d:	85 d2                	test   %edx,%edx
    240f:	0f 8e cb fe ff ff    	jle    0x22e0
    2415:	89 c1                	mov    %eax,%ecx
    2417:	4c 89 e0             	mov    %r12,%rax
    241a:	49 8d 54 0c 01       	lea    0x1(%r12,%rcx,1),%rdx
    241f:	90                   	nop
    2420:	48 83 c0 01          	add    $0x1,%rax
    2424:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    2428:	48 39 d0             	cmp    %rdx,%rax
    242b:	75 f3                	jne    0x2420
    242d:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
    2434:	4d 8d 64 0c 01       	lea    0x1(%r12,%rcx,1),%r12
    2439:	e9 a2 fe ff ff       	jmp    0x22e0
    243e:	66 90                	xchg   %ax,%ax
    2440:	8b 43 0c             	mov    0xc(%rbx),%eax
    2443:	8d 50 ff             	lea    -0x1(%rax),%edx
    2446:	89 53 0c             	mov    %edx,0xc(%rbx)
    2449:	85 c0                	test   %eax,%eax
    244b:	0f 8e 8f fe ff ff    	jle    0x22e0
    2451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2458:	48 89 da             	mov    %rbx,%rdx
    245b:	b9 20 00 00 00       	mov    $0x20,%ecx
    2460:	e8 ab f3 ff ff       	call   0x1810
    2465:	8b 43 0c             	mov    0xc(%rbx),%eax
    2468:	8d 50 ff             	lea    -0x1(%rax),%edx
    246b:	89 53 0c             	mov    %edx,0xc(%rbx)
    246e:	85 c0                	test   %eax,%eax
    2470:	7f e6                	jg     0x2458
    2472:	44 8b 53 08          	mov    0x8(%rbx),%r10d
    2476:	e9 65 fe ff ff       	jmp    0x22e0
    247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2480:	45 85 ed             	test   %r13d,%r13d
    2483:	7e 0e                	jle    0x2493
    2485:	44 89 ea             	mov    %r13d,%edx
    2488:	49 89 fc             	mov    %rdi,%r12
    248b:	44 89 e8             	mov    %r13d,%eax
    248e:	e9 d7 fd ff ff       	jmp    0x226a
    2493:	49 89 fc             	mov    %rdi,%r12
    2496:	e9 1e ff ff ff       	jmp    0x23b9
    249b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    24a0:	41 55                	push   %r13
    24a2:	41 54                	push   %r12
    24a4:	53                   	push   %rbx
    24a5:	48 83 ec 20          	sub    $0x20,%rsp
    24a9:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    24af:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    24b3:	4d 89 cc             	mov    %r9,%r12
    24b6:	4c 63 e8             	movslq %eax,%r13
    24b9:	c1 f8 1f             	sar    $0x1f,%eax
    24bc:	4d 69 c5 67 66 66 66 	imul   $0x66666667,%r13,%r8
    24c3:	49 c1 f8 22          	sar    $0x22,%r8
    24c7:	41 29 c0             	sub    %eax,%r8d
    24ca:	74 22                	je     0x24ee
    24cc:	0f 1f 40 00          	nopl   0x0(%rax)
    24d0:	49 63 c0             	movslq %r8d,%rax
    24d3:	41 c1 f8 1f          	sar    $0x1f,%r8d
    24d7:	41 83 c2 01          	add    $0x1,%r10d
    24db:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    24e2:	48 c1 f8 22          	sar    $0x22,%rax
    24e6:	44 29 c0             	sub    %r8d,%eax
    24e9:	41 89 c0             	mov    %eax,%r8d
    24ec:	75 e2                	jne    0x24d0
    24ee:	41 8b 5c 24 2c       	mov    0x2c(%r12),%ebx
    24f3:	83 fb ff             	cmp    $0xffffffff,%ebx
    24f6:	75 0e                	jne    0x2506
    24f8:	41 c7 44 24 2c 02 00 	movl   $0x2,0x2c(%r12)
    24ff:	00 00 
    2501:	bb 02 00 00 00       	mov    $0x2,%ebx
    2506:	41 39 da             	cmp    %ebx,%r10d
    2509:	45 8b 4c 24 0c       	mov    0xc(%r12),%r9d
    250e:	41 0f 4d da          	cmovge %r10d,%ebx
    2512:	44 89 c8             	mov    %r9d,%eax
    2515:	44 8d 43 02          	lea    0x2(%rbx),%r8d
    2519:	44 29 c0             	sub    %r8d,%eax
    251c:	45 39 c1             	cmp    %r8d,%r9d
    251f:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    2525:	4d 89 e1             	mov    %r12,%r9
    2528:	41 0f 4e c0          	cmovle %r8d,%eax
    252c:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    2532:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
    2537:	e8 64 f7 ff ff       	call   0x1ca0
    253c:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    2541:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
    2546:	4c 89 e2             	mov    %r12,%rdx
    2549:	41 89 44 24 10       	mov    %eax,0x10(%r12)
    254e:	89 c8                	mov    %ecx,%eax
    2550:	83 e1 20             	and    $0x20,%ecx
    2553:	0d c0 01 00 00       	or     $0x1c0,%eax
    2558:	83 c9 45             	or     $0x45,%ecx
    255b:	41 89 44 24 08       	mov    %eax,0x8(%r12)
    2560:	e8 ab f2 ff ff       	call   0x1810
    2565:	44 8d 53 01          	lea    0x1(%rbx),%r10d
    2569:	4c 89 e2             	mov    %r12,%rdx
    256c:	4c 89 e9             	mov    %r13,%rcx
    256f:	45 01 54 24 0c       	add    %r10d,0xc(%r12)
    2574:	48 83 c4 20          	add    $0x20,%rsp
    2578:	5b                   	pop    %rbx
    2579:	41 5c                	pop    %r12
    257b:	41 5d                	pop    %r13
    257d:	e9 ae fb ff ff       	jmp    0x2130
    2582:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2589:	00 00 00 00 
    258d:	0f 1f 00             	nopl   (%rax)
    2590:	41 54                	push   %r12
    2592:	53                   	push   %rbx
    2593:	48 83 ec 68          	sub    $0x68,%rsp
    2597:	44 8b 42 10          	mov    0x10(%rdx),%r8d
    259b:	db 29                	fldt   (%rcx)
    259d:	48 89 d3             	mov    %rdx,%rbx
    25a0:	45 85 c0             	test   %r8d,%r8d
    25a3:	78 6b                	js     0x2610
    25a5:	41 83 c0 01          	add    $0x1,%r8d
    25a9:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    25ae:	db 7c 24 50          	fstpt  0x50(%rsp)
    25b2:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
    25b8:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    25bd:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
    25c2:	b9 02 00 00 00       	mov    $0x2,%ecx
    25c7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    25cc:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    25d1:	e8 2a f1 ff ff       	call   0x1700
    25d6:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
    25db:	49 89 c4             	mov    %rax,%r12
    25de:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
    25e5:	74 39                	je     0x2620
    25e7:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    25eb:	49 89 d9             	mov    %rbx,%r9
    25ee:	48 89 c2             	mov    %rax,%rdx
    25f1:	e8 aa fe ff ff       	call   0x24a0
    25f6:	4c 89 e1             	mov    %r12,%rcx
    25f9:	e8 f2 15 00 00       	call   0x3bf0
    25fe:	90                   	nop
    25ff:	48 83 c4 68          	add    $0x68,%rsp
    2603:	5b                   	pop    %rbx
    2604:	41 5c                	pop    %r12
    2606:	c3                   	ret    
    2607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    260e:	00 00 
    2610:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
    2617:	41 b8 07 00 00 00    	mov    $0x7,%r8d
    261d:	eb 8a                	jmp    0x25a9
    261f:	90                   	nop
    2620:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    2624:	49 89 d8             	mov    %rbx,%r8
    2627:	48 89 c2             	mov    %rax,%rdx
    262a:	e8 b1 f4 ff ff       	call   0x1ae0
    262f:	4c 89 e1             	mov    %r12,%rcx
    2632:	e8 b9 15 00 00       	call   0x3bf0
    2637:	90                   	nop
    2638:	48 83 c4 68          	add    $0x68,%rsp
    263c:	5b                   	pop    %rbx
    263d:	41 5c                	pop    %r12
    263f:	c3                   	ret    
    2640:	41 54                	push   %r12
    2642:	56                   	push   %rsi
    2643:	53                   	push   %rbx
    2644:	48 83 ec 60          	sub    $0x60,%rsp
    2648:	44 8b 42 10          	mov    0x10(%rdx),%r8d
    264c:	db 29                	fldt   (%rcx)
    264e:	48 89 d3             	mov    %rdx,%rbx
    2651:	45 85 c0             	test   %r8d,%r8d
    2654:	0f 88 fe 00 00 00    	js     0x2758
    265a:	0f 84 e0 00 00 00    	je     0x2740
    2660:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    2665:	db 7c 24 50          	fstpt  0x50(%rsp)
    2669:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
    266f:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    2674:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
    2679:	b9 02 00 00 00       	mov    $0x2,%ecx
    267e:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    2683:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    2688:	e8 73 f0 ff ff       	call   0x1700
    268d:	8b 74 24 4c          	mov    0x4c(%rsp),%esi
    2691:	49 89 c4             	mov    %rax,%r12
    2694:	81 fe 00 80 ff ff    	cmp    $0xffff8000,%esi
    269a:	0f 84 d0 00 00 00    	je     0x2770
    26a0:	8b 43 08             	mov    0x8(%rbx),%eax
    26a3:	25 00 08 00 00       	and    $0x800,%eax
    26a8:	83 fe fd             	cmp    $0xfffffffd,%esi
    26ab:	7c 4b                	jl     0x26f8
    26ad:	8b 53 10             	mov    0x10(%rbx),%edx
    26b0:	39 d6                	cmp    %edx,%esi
    26b2:	7f 44                	jg     0x26f8
    26b4:	85 c0                	test   %eax,%eax
    26b6:	0f 84 cc 00 00 00    	je     0x2788
    26bc:	29 f2                	sub    %esi,%edx
    26be:	89 53 10             	mov    %edx,0x10(%rbx)
    26c1:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    26c5:	49 89 d9             	mov    %rbx,%r9
    26c8:	41 89 f0             	mov    %esi,%r8d
    26cb:	4c 89 e2             	mov    %r12,%rdx
    26ce:	e8 cd f5 ff ff       	call   0x1ca0
    26d3:	eb 10                	jmp    0x26e5
    26d5:	0f 1f 00             	nopl   (%rax)
    26d8:	48 89 da             	mov    %rbx,%rdx
    26db:	b9 20 00 00 00       	mov    $0x20,%ecx
    26e0:	e8 2b f1 ff ff       	call   0x1810
    26e5:	8b 43 0c             	mov    0xc(%rbx),%eax
    26e8:	8d 50 ff             	lea    -0x1(%rax),%edx
    26eb:	89 53 0c             	mov    %edx,0xc(%rbx)
    26ee:	85 c0                	test   %eax,%eax
    26f0:	7f e6                	jg     0x26d8
    26f2:	eb 28                	jmp    0x271c
    26f4:	0f 1f 40 00          	nopl   0x0(%rax)
    26f8:	85 c0                	test   %eax,%eax
    26fa:	75 34                	jne    0x2730
    26fc:	4c 89 e1             	mov    %r12,%rcx
    26ff:	e8 24 3b 00 00       	call   0x6228
    2704:	83 e8 01             	sub    $0x1,%eax
    2707:	89 43 10             	mov    %eax,0x10(%rbx)
    270a:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    270e:	49 89 d9             	mov    %rbx,%r9
    2711:	41 89 f0             	mov    %esi,%r8d
    2714:	4c 89 e2             	mov    %r12,%rdx
    2717:	e8 84 fd ff ff       	call   0x24a0
    271c:	4c 89 e1             	mov    %r12,%rcx
    271f:	e8 cc 14 00 00       	call   0x3bf0
    2724:	90                   	nop
    2725:	48 83 c4 60          	add    $0x60,%rsp
    2729:	5b                   	pop    %rbx
    272a:	5e                   	pop    %rsi
    272b:	41 5c                	pop    %r12
    272d:	c3                   	ret    
    272e:	66 90                	xchg   %ax,%ax
    2730:	8b 43 10             	mov    0x10(%rbx),%eax
    2733:	83 e8 01             	sub    $0x1,%eax
    2736:	eb cf                	jmp    0x2707
    2738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    273f:	00 
    2740:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
    2747:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    274d:	e9 0e ff ff ff       	jmp    0x2660
    2752:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2758:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
    275f:	41 b8 06 00 00 00    	mov    $0x6,%r8d
    2765:	e9 f6 fe ff ff       	jmp    0x2660
    276a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2770:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    2774:	49 89 d8             	mov    %rbx,%r8
    2777:	48 89 c2             	mov    %rax,%rdx
    277a:	e8 61 f3 ff ff       	call   0x1ae0
    277f:	eb 9b                	jmp    0x271c
    2781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2788:	4c 89 e1             	mov    %r12,%rcx
    278b:	e8 98 3a 00 00       	call   0x6228
    2790:	29 f0                	sub    %esi,%eax
    2792:	89 43 10             	mov    %eax,0x10(%rbx)
    2795:	0f 89 26 ff ff ff    	jns    0x26c1
    279b:	8b 53 0c             	mov    0xc(%rbx),%edx
    279e:	85 d2                	test   %edx,%edx
    27a0:	0f 8e 1b ff ff ff    	jle    0x26c1
    27a6:	01 d0                	add    %edx,%eax
    27a8:	89 43 0c             	mov    %eax,0xc(%rbx)
    27ab:	e9 11 ff ff ff       	jmp    0x26c1
    27b0:	55                   	push   %rbp
    27b1:	41 57                	push   %r15
    27b3:	41 56                	push   %r14
    27b5:	41 55                	push   %r13
    27b7:	41 54                	push   %r12
    27b9:	57                   	push   %rdi
    27ba:	56                   	push   %rsi
    27bb:	53                   	push   %rbx
    27bc:	48 83 ec 28          	sub    $0x28,%rsp
    27c0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
    27c7:	00 
    27c8:	41 89 ca             	mov    %ecx,%r10d
    27cb:	4c 89 c6             	mov    %r8,%rsi
    27ce:	83 f9 6f             	cmp    $0x6f,%ecx
    27d1:	0f 84 81 02 00 00    	je     0x2a58
    27d7:	45 8b 58 10          	mov    0x10(%r8),%r11d
    27db:	b8 00 00 00 00       	mov    $0x0,%eax
    27e0:	45 8b 60 08          	mov    0x8(%r8),%r12d
    27e4:	45 85 db             	test   %r11d,%r11d
    27e7:	41 0f 49 c3          	cmovns %r11d,%eax
    27eb:	83 c0 12             	add    $0x12,%eax
    27ee:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
    27f5:	0f 85 55 01 00 00    	jne    0x2950
    27fb:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    27ff:	41 39 c1             	cmp    %eax,%r9d
    2802:	41 0f 4d c1          	cmovge %r9d,%eax
    2806:	48 98                	cltq   
    2808:	48 83 c0 0f          	add    $0xf,%rax
    280c:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2810:	e8 5b ee ff ff       	call   0x1670
    2815:	b9 04 00 00 00       	mov    $0x4,%ecx
    281a:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
    2820:	48 29 c4             	sub    %rax,%rsp
    2823:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2828:	48 89 fb             	mov    %rdi,%rbx
    282b:	48 85 d2             	test   %rdx,%rdx
    282e:	0f 84 ac 02 00 00    	je     0x2ae0
    2834:	45 89 d5             	mov    %r10d,%r13d
    2837:	41 83 e5 20          	and    $0x20,%r13d
    283b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2840:	44 89 c0             	mov    %r8d,%eax
    2843:	48 83 c3 01          	add    $0x1,%rbx
    2847:	21 d0                	and    %edx,%eax
    2849:	44 8d 70 30          	lea    0x30(%rax),%r14d
    284d:	83 c0 37             	add    $0x37,%eax
    2850:	44 09 e8             	or     %r13d,%eax
    2853:	45 89 f7             	mov    %r14d,%r15d
    2856:	41 80 fe 3a          	cmp    $0x3a,%r14b
    285a:	41 0f 42 c7          	cmovb  %r15d,%eax
    285e:	48 d3 ea             	shr    %cl,%rdx
    2861:	88 43 ff             	mov    %al,-0x1(%rbx)
    2864:	48 85 d2             	test   %rdx,%rdx
    2867:	75 d7                	jne    0x2840
    2869:	48 39 fb             	cmp    %rdi,%rbx
    286c:	0f 84 6e 02 00 00    	je     0x2ae0
    2872:	45 85 db             	test   %r11d,%r11d
    2875:	0f 8e 15 01 00 00    	jle    0x2990
    287b:	48 89 d8             	mov    %rbx,%rax
    287e:	44 89 d9             	mov    %r11d,%ecx
    2881:	48 29 f8             	sub    %rdi,%rax
    2884:	29 c1                	sub    %eax,%ecx
    2886:	89 c8                	mov    %ecx,%eax
    2888:	85 c9                	test   %ecx,%ecx
    288a:	0f 8e 00 01 00 00    	jle    0x2990
    2890:	83 e8 01             	sub    $0x1,%eax
    2893:	48 89 c2             	mov    %rax,%rdx
    2896:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
    289b:	48 89 d8             	mov    %rbx,%rax
    289e:	66 90                	xchg   %ax,%ax
    28a0:	48 83 c0 01          	add    $0x1,%rax
    28a4:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    28a8:	48 39 c8             	cmp    %rcx,%rax
    28ab:	75 f3                	jne    0x28a0
    28ad:	48 63 c2             	movslq %edx,%rax
    28b0:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
    28b5:	48 39 fb             	cmp    %rdi,%rbx
    28b8:	0f 84 ee 00 00 00    	je     0x29ac
    28be:	48 89 d8             	mov    %rbx,%rax
    28c1:	48 29 f8             	sub    %rdi,%rax
    28c4:	44 39 c8             	cmp    %r9d,%eax
    28c7:	0f 8c fb 00 00 00    	jl     0x29c8
    28cd:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
    28d4:	41 83 fa 6f          	cmp    $0x6f,%r10d
    28d8:	0f 84 5a 01 00 00    	je     0x2a38
    28de:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
    28e4:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
    28e8:	0f 85 ba 02 00 00    	jne    0x2ba8
    28ee:	48 39 df             	cmp    %rbx,%rdi
    28f1:	73 45                	jae    0x2938
    28f3:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    28f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    28fe:	00 00 
    2900:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
    2904:	48 83 eb 01          	sub    $0x1,%rbx
    2908:	48 89 f2             	mov    %rsi,%rdx
    290b:	e8 00 ef ff ff       	call   0x1810
    2910:	48 39 fb             	cmp    %rdi,%rbx
    2913:	77 eb                	ja     0x2900
    2915:	45 85 ed             	test   %r13d,%r13d
    2918:	7e 1e                	jle    0x2938
    291a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2920:	48 89 f2             	mov    %rsi,%rdx
    2923:	b9 20 00 00 00       	mov    $0x20,%ecx
    2928:	e8 e3 ee ff ff       	call   0x1810
    292d:	44 89 e0             	mov    %r12d,%eax
    2930:	41 83 ec 01          	sub    $0x1,%r12d
    2934:	85 c0                	test   %eax,%eax
    2936:	7f e8                	jg     0x2920
    2938:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
    293c:	5b                   	pop    %rbx
    293d:	5e                   	pop    %rsi
    293e:	5f                   	pop    %rdi
    293f:	41 5c                	pop    %r12
    2941:	41 5d                	pop    %r13
    2943:	41 5e                	pop    %r14
    2945:	41 5f                	pop    %r15
    2947:	5d                   	pop    %rbp
    2948:	c3                   	ret    
    2949:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2950:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
    2956:	0f 85 3c 02 00 00    	jne    0x2b98
    295c:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2960:	44 39 c8             	cmp    %r9d,%eax
    2963:	41 0f 4c c1          	cmovl  %r9d,%eax
    2967:	48 98                	cltq   
    2969:	48 83 c0 0f          	add    $0xf,%rax
    296d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2971:	e8 fa ec ff ff       	call   0x1670
    2976:	b9 04 00 00 00       	mov    $0x4,%ecx
    297b:	48 29 c4             	sub    %rax,%rsp
    297e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2983:	e9 45 01 00 00       	jmp    0x2acd
    2988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    298f:	00 
    2990:	41 83 fa 6f          	cmp    $0x6f,%r10d
    2994:	0f 84 56 01 00 00    	je     0x2af0
    299a:	48 39 fb             	cmp    %rdi,%rbx
    299d:	0f 85 1b ff ff ff    	jne    0x28be
    29a3:	45 85 db             	test   %r11d,%r11d
    29a6:	0f 84 12 ff ff ff    	je     0x28be
    29ac:	c6 03 30             	movb   $0x30,(%rbx)
    29af:	48 83 c3 01          	add    $0x1,%rbx
    29b3:	48 89 d8             	mov    %rbx,%rax
    29b6:	48 29 f8             	sub    %rdi,%rax
    29b9:	44 39 c8             	cmp    %r9d,%eax
    29bc:	0f 8d 0b ff ff ff    	jge    0x28cd
    29c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    29c8:	41 29 c1             	sub    %eax,%r9d
    29cb:	8b 56 08             	mov    0x8(%rsi),%edx
    29ce:	44 89 4e 0c          	mov    %r9d,0xc(%rsi)
    29d2:	45 89 cd             	mov    %r9d,%r13d
    29d5:	41 83 fa 6f          	cmp    $0x6f,%r10d
    29d9:	0f 84 31 01 00 00    	je     0x2b10
    29df:	f6 c6 08             	test   $0x8,%dh
    29e2:	0f 84 50 01 00 00    	je     0x2b38
    29e8:	41 83 ed 02          	sub    $0x2,%r13d
    29ec:	45 85 ed             	test   %r13d,%r13d
    29ef:	7e 09                	jle    0x29fa
    29f1:	45 85 db             	test   %r11d,%r11d
    29f4:	0f 88 1e 02 00 00    	js     0x2c18
    29fa:	44 88 13             	mov    %r10b,(%rbx)
    29fd:	48 83 c3 02          	add    $0x2,%rbx
    2a01:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
    2a05:	45 85 ed             	test   %r13d,%r13d
    2a08:	0f 8e e0 fe ff ff    	jle    0x28ee
    2a0e:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    2a12:	80 e6 04             	and    $0x4,%dh
    2a15:	0f 85 33 01 00 00    	jne    0x2b4e
    2a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2a20:	48 89 f2             	mov    %rsi,%rdx
    2a23:	b9 20 00 00 00       	mov    $0x20,%ecx
    2a28:	e8 e3 ed ff ff       	call   0x1810
    2a2d:	44 89 e0             	mov    %r12d,%eax
    2a30:	41 83 ec 01          	sub    $0x1,%r12d
    2a34:	85 c0                	test   %eax,%eax
    2a36:	7f e8                	jg     0x2a20
    2a38:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
    2a3e:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
    2a44:	48 39 fb             	cmp    %rdi,%rbx
    2a47:	0f 87 b3 fe ff ff    	ja     0x2900
    2a4d:	e9 e6 fe ff ff       	jmp    0x2938
    2a52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2a58:	45 8b 58 10          	mov    0x10(%r8),%r11d
    2a5c:	b8 00 00 00 00       	mov    $0x0,%eax
    2a61:	45 8b 60 08          	mov    0x8(%r8),%r12d
    2a65:	45 85 db             	test   %r11d,%r11d
    2a68:	41 0f 49 c3          	cmovns %r11d,%eax
    2a6c:	83 c0 18             	add    $0x18,%eax
    2a6f:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
    2a76:	0f 84 e4 00 00 00    	je     0x2b60
    2a7c:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
    2a82:	0f 84 ac 01 00 00    	je     0x2c34
    2a88:	b9 03 00 00 00       	mov    $0x3,%ecx
    2a8d:	41 89 c0             	mov    %eax,%r8d
    2a90:	41 b9 ab aa aa aa    	mov    $0xaaaaaaab,%r9d
    2a96:	4d 0f af c1          	imul   %r9,%r8
    2a9a:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2a9e:	49 c1 e8 21          	shr    $0x21,%r8
    2aa2:	44 01 c0             	add    %r8d,%eax
    2aa5:	44 39 c8             	cmp    %r9d,%eax
    2aa8:	41 0f 4c c1          	cmovl  %r9d,%eax
    2aac:	48 98                	cltq   
    2aae:	48 83 c0 0f          	add    $0xf,%rax
    2ab2:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2ab6:	e8 b5 eb ff ff       	call   0x1670
    2abb:	48 29 c4             	sub    %rax,%rsp
    2abe:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2ac3:	41 83 fa 6f          	cmp    $0x6f,%r10d
    2ac7:	0f 84 ba 00 00 00    	je     0x2b87
    2acd:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
    2ad3:	48 89 fb             	mov    %rdi,%rbx
    2ad6:	48 85 d2             	test   %rdx,%rdx
    2ad9:	0f 85 55 fd ff ff    	jne    0x2834
    2adf:	90                   	nop
    2ae0:	41 81 e4 ff f7 ff ff 	and    $0xfffff7ff,%r12d
    2ae7:	44 89 66 08          	mov    %r12d,0x8(%rsi)
    2aeb:	e9 82 fd ff ff       	jmp    0x2872
    2af0:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
    2af4:	0f 84 a0 fe ff ff    	je     0x299a
    2afa:	c6 03 30             	movb   $0x30,(%rbx)
    2afd:	48 83 c3 01          	add    $0x1,%rbx
    2b01:	e9 94 fe ff ff       	jmp    0x299a
    2b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b0d:	00 00 00 
    2b10:	45 85 db             	test   %r11d,%r11d
    2b13:	0f 88 9f 00 00 00    	js     0x2bb8
    2b19:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    2b1d:	80 e6 04             	and    $0x4,%dh
    2b20:	0f 84 fa fe ff ff    	je     0x2a20
    2b26:	48 39 fb             	cmp    %rdi,%rbx
    2b29:	0f 87 d1 fd ff ff    	ja     0x2900
    2b2f:	e9 ec fd ff ff       	jmp    0x2920
    2b34:	0f 1f 40 00          	nopl   0x0(%rax)
    2b38:	45 85 db             	test   %r11d,%r11d
    2b3b:	0f 88 d7 00 00 00    	js     0x2c18
    2b41:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
    2b45:	80 e6 04             	and    $0x4,%dh
    2b48:	0f 84 d2 fe ff ff    	je     0x2a20
    2b4e:	48 39 df             	cmp    %rbx,%rdi
    2b51:	0f 82 a9 fd ff ff    	jb     0x2900
    2b57:	e9 c4 fd ff ff       	jmp    0x2920
    2b5c:	0f 1f 40 00          	nopl   0x0(%rax)
    2b60:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2b64:	41 39 c1             	cmp    %eax,%r9d
    2b67:	41 0f 4d c1          	cmovge %r9d,%eax
    2b6b:	48 98                	cltq   
    2b6d:	48 83 c0 0f          	add    $0xf,%rax
    2b71:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2b75:	e8 f6 ea ff ff       	call   0x1670
    2b7a:	b9 03 00 00 00       	mov    $0x3,%ecx
    2b7f:	48 29 c4             	sub    %rax,%rsp
    2b82:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    2b87:	41 b8 07 00 00 00    	mov    $0x7,%r8d
    2b8d:	e9 96 fc ff ff       	jmp    0x2828
    2b92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2b98:	b9 04 00 00 00       	mov    $0x4,%ecx
    2b9d:	e9 eb fe ff ff       	jmp    0x2a8d
    2ba2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2ba8:	44 88 13             	mov    %r10b,(%rbx)
    2bab:	48 83 c3 02          	add    $0x2,%rbx
    2baf:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
    2bb3:	e9 36 fd ff ff       	jmp    0x28ee
    2bb8:	89 d0                	mov    %edx,%eax
    2bba:	25 00 06 00 00       	and    $0x600,%eax
    2bbf:	3d 00 02 00 00       	cmp    $0x200,%eax
    2bc4:	0f 85 4f ff ff ff    	jne    0x2b19
    2bca:	45 8d 45 ff          	lea    -0x1(%r13),%r8d
    2bce:	44 89 c0             	mov    %r8d,%eax
    2bd1:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
    2bd6:	48 89 d8             	mov    %rbx,%rax
    2bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2be0:	48 83 c0 01          	add    $0x1,%rax
    2be4:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
    2be8:	48 39 c8             	cmp    %rcx,%rax
    2beb:	75 f3                	jne    0x2be0
    2bed:	49 63 c0             	movslq %r8d,%rax
    2bf0:	45 29 e8             	sub    %r13d,%r8d
    2bf3:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
    2bf8:	45 89 c5             	mov    %r8d,%r13d
    2bfb:	41 83 fa 6f          	cmp    $0x6f,%r10d
    2bff:	0f 84 00 fe ff ff    	je     0x2a05
    2c05:	f6 c6 08             	test   $0x8,%dh
    2c08:	0f 84 f7 fd ff ff    	je     0x2a05
    2c0e:	e9 e7 fd ff ff       	jmp    0x29fa
    2c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2c18:	89 d0                	mov    %edx,%eax
    2c1a:	25 00 06 00 00       	and    $0x600,%eax
    2c1f:	3d 00 02 00 00       	cmp    $0x200,%eax
    2c24:	74 a4                	je     0x2bca
    2c26:	f6 c6 08             	test   $0x8,%dh
    2c29:	0f 85 cb fd ff ff    	jne    0x29fa
    2c2f:	e9 0d ff ff ff       	jmp    0x2b41
    2c34:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
    2c38:	44 39 c8             	cmp    %r9d,%eax
    2c3b:	41 0f 4c c1          	cmovl  %r9d,%eax
    2c3f:	e9 27 ff ff ff       	jmp    0x2b6b
    2c44:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2c4b:	00 00 00 00 
    2c4f:	90                   	nop
    2c50:	41 55                	push   %r13
    2c52:	41 54                	push   %r12
    2c54:	55                   	push   %rbp
    2c55:	57                   	push   %rdi
    2c56:	56                   	push   %rsi
    2c57:	53                   	push   %rbx
    2c58:	48 83 ec 68          	sub    $0x68,%rsp
    2c5c:	4c 8b 11             	mov    (%rcx),%r10
    2c5f:	44 8b 59 08          	mov    0x8(%rcx),%r11d
    2c63:	41 0f bf cb          	movswl %r11w,%ecx
    2c67:	4c 89 de             	mov    %r11,%rsi
    2c6a:	44 8d 04 09          	lea    (%rcx,%rcx,1),%r8d
    2c6e:	49 89 d4             	mov    %rdx,%r12
    2c71:	4c 89 d2             	mov    %r10,%rdx
    2c74:	45 0f b7 c0          	movzwl %r8w,%r8d
    2c78:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
    2c7d:	48 c1 ea 20          	shr    $0x20,%rdx
    2c81:	44 89 5c 24 38       	mov    %r11d,0x38(%rsp)
    2c86:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
    2c8c:	44 09 d2             	or     %r10d,%edx
    2c8f:	89 d0                	mov    %edx,%eax
    2c91:	f7 d8                	neg    %eax
    2c93:	09 d0                	or     %edx,%eax
    2c95:	c1 e8 1f             	shr    $0x1f,%eax
    2c98:	44 09 c0             	or     %r8d,%eax
    2c9b:	41 b8 fe ff 00 00    	mov    $0xfffe,%r8d
    2ca1:	41 29 c0             	sub    %eax,%r8d
    2ca4:	44 89 c0             	mov    %r8d,%eax
    2ca7:	c1 e8 10             	shr    $0x10,%eax
    2caa:	0f 85 d8 02 00 00    	jne    0x2f88
    2cb0:	66 45 85 db          	test   %r11w,%r11w
    2cb4:	0f 88 d6 01 00 00    	js     0x2e90
    2cba:	66 81 e6 ff 7f       	and    $0x7fff,%si
    2cbf:	0f 85 a3 01 00 00    	jne    0x2e68
    2cc5:	4d 85 d2             	test   %r10,%r10
    2cc8:	0f 85 42 03 00 00    	jne    0x3010
    2cce:	41 8b 54 24 10       	mov    0x10(%r12),%edx
    2cd3:	83 fa 0e             	cmp    $0xe,%edx
    2cd6:	0f 86 f4 01 00 00    	jbe    0x2ed0
    2cdc:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    2ce1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2ce6:	41 8b 44 24 10       	mov    0x10(%r12),%eax
    2ceb:	85 c0                	test   %eax,%eax
    2ced:	0f 8e ad 04 00 00    	jle    0x31a0
    2cf3:	c6 44 24 40 2e       	movb   $0x2e,0x40(%rsp)
    2cf8:	48 8d 44 24 41       	lea    0x41(%rsp),%rax
    2cfd:	c6 00 30             	movb   $0x30,(%rax)
    2d00:	48 8d 58 01          	lea    0x1(%rax),%rbx
    2d04:	45 8b 44 24 0c       	mov    0xc(%r12),%r8d
    2d09:	bd 02 00 00 00       	mov    $0x2,%ebp
    2d0e:	45 85 c0             	test   %r8d,%r8d
    2d11:	0f 8e 89 00 00 00    	jle    0x2da0
    2d17:	45 8b 4c 24 10       	mov    0x10(%r12),%r9d
    2d1c:	48 89 d8             	mov    %rbx,%rax
    2d1f:	0f bf ce             	movswl %si,%ecx
    2d22:	48 29 f8             	sub    %rdi,%rax
    2d25:	45 8d 14 01          	lea    (%r9,%rax,1),%r10d
    2d29:	45 85 c9             	test   %r9d,%r9d
    2d2c:	41 0f 4f c2          	cmovg  %r10d,%eax
    2d30:	45 31 c9             	xor    %r9d,%r9d
    2d33:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
    2d39:	41 0f 95 c1          	setne  %r9b
    2d3d:	c1 f9 1f             	sar    $0x1f,%ecx
    2d40:	46 8d 4c 08 05       	lea    0x5(%rax,%r9,1),%r9d
    2d45:	48 0f bf c6          	movswq %si,%rax
    2d49:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    2d50:	45 89 ca             	mov    %r9d,%r10d
    2d53:	48 c1 f8 22          	sar    $0x22,%rax
    2d57:	29 c8                	sub    %ecx,%eax
    2d59:	74 2a                	je     0x2d85
    2d5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2d60:	48 63 c8             	movslq %eax,%rcx
    2d63:	41 83 c2 01          	add    $0x1,%r10d
    2d67:	c1 f8 1f             	sar    $0x1f,%eax
    2d6a:	48 69 c9 67 66 66 66 	imul   $0x66666667,%rcx,%rcx
    2d71:	41 8d 6a 02          	lea    0x2(%r10),%ebp
    2d75:	44 29 cd             	sub    %r9d,%ebp
    2d78:	48 c1 f9 22          	sar    $0x22,%rcx
    2d7c:	29 c1                	sub    %eax,%ecx
    2d7e:	89 c8                	mov    %ecx,%eax
    2d80:	75 de                	jne    0x2d60
    2d82:	0f bf ed             	movswl %bp,%ebp
    2d85:	45 39 d0             	cmp    %r10d,%r8d
    2d88:	0f 8e 7a 03 00 00    	jle    0x3108
    2d8e:	45 29 d0             	sub    %r10d,%r8d
    2d91:	f6 c6 06             	test   $0x6,%dh
    2d94:	0f 84 be 03 00 00    	je     0x3158
    2d9a:	45 89 44 24 0c       	mov    %r8d,0xc(%r12)
    2d9f:	90                   	nop
    2da0:	f6 c2 80             	test   $0x80,%dl
    2da3:	0f 85 47 03 00 00    	jne    0x30f0
    2da9:	f6 c6 01             	test   $0x1,%dh
    2dac:	0f 85 6e 03 00 00    	jne    0x3120
    2db2:	83 e2 40             	and    $0x40,%edx
    2db5:	0f 85 85 03 00 00    	jne    0x3140
    2dbb:	4c 89 e2             	mov    %r12,%rdx
    2dbe:	b9 30 00 00 00       	mov    $0x30,%ecx
    2dc3:	e8 48 ea ff ff       	call   0x1810
    2dc8:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    2dcd:	4c 89 e2             	mov    %r12,%rdx
    2dd0:	83 e1 20             	and    $0x20,%ecx
    2dd3:	83 c9 58             	or     $0x58,%ecx
    2dd6:	e8 35 ea ff ff       	call   0x1810
    2ddb:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    2de0:	85 c0                	test   %eax,%eax
    2de2:	7e 32                	jle    0x2e16
    2de4:	41 f6 44 24 09 02    	testb  $0x2,0x9(%r12)
    2dea:	74 2a                	je     0x2e16
    2dec:	83 e8 01             	sub    $0x1,%eax
    2def:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
    2df4:	0f 1f 40 00          	nopl   0x0(%rax)
    2df8:	4c 89 e2             	mov    %r12,%rdx
    2dfb:	b9 30 00 00 00       	mov    $0x30,%ecx
    2e00:	e8 0b ea ff ff       	call   0x1810
    2e05:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    2e0a:	8d 50 ff             	lea    -0x1(%rax),%edx
    2e0d:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
    2e12:	85 c0                	test   %eax,%eax
    2e14:	7f e2                	jg     0x2df8
    2e16:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
    2e1b:	48 39 fb             	cmp    %rdi,%rbx
    2e1e:	77 25                	ja     0x2e45
    2e20:	e9 98 01 00 00       	jmp    0x2fbd
    2e25:	0f 1f 00             	nopl   (%rax)
    2e28:	41 0f b7 44 24 20    	movzwl 0x20(%r12),%eax
    2e2e:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
    2e33:	66 85 c0             	test   %ax,%ax
    2e36:	0f 85 84 02 00 00    	jne    0x30c0
    2e3c:	48 39 fb             	cmp    %rdi,%rbx
    2e3f:	0f 84 78 01 00 00    	je     0x2fbd
    2e45:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
    2e49:	48 83 eb 01          	sub    $0x1,%rbx
    2e4d:	83 f9 2e             	cmp    $0x2e,%ecx
    2e50:	0f 84 0a 02 00 00    	je     0x3060
    2e56:	83 f9 2c             	cmp    $0x2c,%ecx
    2e59:	74 cd                	je     0x2e28
    2e5b:	4c 89 e2             	mov    %r12,%rdx
    2e5e:	e8 ad e9 ff ff       	call   0x1810
    2e63:	eb d7                	jmp    0x2e3c
    2e65:	0f 1f 00             	nopl   (%rax)
    2e68:	85 d2                	test   %edx,%edx
    2e6a:	75 44                	jne    0x2eb0
    2e6c:	66 81 fe ff 7f       	cmp    $0x7fff,%si
    2e71:	75 3d                	jne    0x2eb0
    2e73:	81 e1 00 80 00 00    	and    $0x8000,%ecx
    2e79:	4d 89 e0             	mov    %r12,%r8
    2e7c:	48 8d 15 88 54 00 00 	lea    0x5488(%rip),%rdx        # 0x830b
    2e83:	e8 58 ec ff ff       	call   0x1ae0
    2e88:	e9 0d 01 00 00       	jmp    0x2f9a
    2e8d:	0f 1f 00             	nopl   (%rax)
    2e90:	41 81 4c 24 08 80 00 	orl    $0x80,0x8(%r12)
    2e97:	00 00 
    2e99:	66 81 e6 ff 7f       	and    $0x7fff,%si
    2e9e:	0f 84 21 fe ff ff    	je     0x2cc5
    2ea4:	eb c2                	jmp    0x2e68
    2ea6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2ead:	00 00 00 
    2eb0:	41 8b 54 24 10       	mov    0x10(%r12),%edx
    2eb5:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
    2eba:	66 81 ee ff 3f       	sub    $0x3fff,%si
    2ebf:	83 fa 0e             	cmp    $0xe,%edx
    2ec2:	0f 87 80 01 00 00    	ja     0x3048
    2ec8:	4d 85 d2             	test   %r10,%r10
    2ecb:	78 08                	js     0x2ed5
    2ecd:	0f 1f 00             	nopl   (%rax)
    2ed0:	4d 01 d2             	add    %r10,%r10
    2ed3:	79 fb                	jns    0x2ed0
    2ed5:	b9 0e 00 00 00       	mov    $0xe,%ecx
    2eda:	b8 04 00 00 00       	mov    $0x4,%eax
    2edf:	49 d1 ea             	shr    %r10
    2ee2:	29 d1                	sub    %edx,%ecx
    2ee4:	c1 e1 02             	shl    $0x2,%ecx
    2ee7:	48 d3 e0             	shl    %cl,%rax
    2eea:	49 01 c2             	add    %rax,%r10
    2eed:	0f 88 45 02 00 00    	js     0x3138
    2ef3:	4d 01 d2             	add    %r10,%r10
    2ef6:	b9 0f 00 00 00       	mov    $0xf,%ecx
    2efb:	29 d1                	sub    %edx,%ecx
    2efd:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    2f02:	c1 e1 02             	shl    $0x2,%ecx
    2f05:	49 d3 ea             	shr    %cl,%r10
    2f08:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2f0d:	41 89 d1             	mov    %edx,%r9d
    2f10:	41 89 d0             	mov    %edx,%r8d
    2f13:	48 89 fb             	mov    %rdi,%rbx
    2f16:	41 81 e1 00 08 00 00 	and    $0x800,%r9d
    2f1d:	41 83 e0 20          	and    $0x20,%r8d
    2f21:	eb 27                	jmp    0x2f4a
    2f23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2f28:	31 c0                	xor    %eax,%eax
    2f2a:	48 39 fb             	cmp    %rdi,%rbx
    2f2d:	77 09                	ja     0x2f38
    2f2f:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
    2f34:	85 c9                	test   %ecx,%ecx
    2f36:	78 09                	js     0x2f41
    2f38:	83 c0 30             	add    $0x30,%eax
    2f3b:	88 03                	mov    %al,(%rbx)
    2f3d:	48 83 c3 01          	add    $0x1,%rbx
    2f41:	4d 85 d2             	test   %r10,%r10
    2f44:	0f 84 8e 01 00 00    	je     0x30d8
    2f4a:	44 89 d1             	mov    %r10d,%ecx
    2f4d:	83 e1 0f             	and    $0xf,%ecx
    2f50:	49 f7 c2 f0 ff ff ff 	test   $0xfffffffffffffff0,%r10
    2f57:	0f 84 13 01 00 00    	je     0x3070
    2f5d:	41 8b 44 24 10       	mov    0x10(%r12),%eax
    2f62:	49 c1 ea 04          	shr    $0x4,%r10
    2f66:	85 c0                	test   %eax,%eax
    2f68:	7e 08                	jle    0x2f72
    2f6a:	83 e8 01             	sub    $0x1,%eax
    2f6d:	41 89 44 24 10       	mov    %eax,0x10(%r12)
    2f72:	85 c9                	test   %ecx,%ecx
    2f74:	74 b2                	je     0x2f28
    2f76:	89 c8                	mov    %ecx,%eax
    2f78:	83 f9 09             	cmp    $0x9,%ecx
    2f7b:	76 bb                	jbe    0x2f38
    2f7d:	8d 41 37             	lea    0x37(%rcx),%eax
    2f80:	44 09 c0             	or     %r8d,%eax
    2f83:	eb b6                	jmp    0x2f3b
    2f85:	0f 1f 00             	nopl   (%rax)
    2f88:	4d 89 e0             	mov    %r12,%r8
    2f8b:	48 8d 15 75 53 00 00 	lea    0x5375(%rip),%rdx        # 0x8307
    2f92:	31 c9                	xor    %ecx,%ecx
    2f94:	e8 47 eb ff ff       	call   0x1ae0
    2f99:	90                   	nop
    2f9a:	48 83 c4 68          	add    $0x68,%rsp
    2f9e:	5b                   	pop    %rbx
    2f9f:	5e                   	pop    %rsi
    2fa0:	5f                   	pop    %rdi
    2fa1:	5d                   	pop    %rbp
    2fa2:	41 5c                	pop    %r12
    2fa4:	41 5d                	pop    %r13
    2fa6:	c3                   	ret    
    2fa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2fae:	00 00 
    2fb0:	4c 89 e2             	mov    %r12,%rdx
    2fb3:	b9 30 00 00 00       	mov    $0x30,%ecx
    2fb8:	e8 53 e8 ff ff       	call   0x1810
    2fbd:	41 8b 44 24 10       	mov    0x10(%r12),%eax
    2fc2:	8d 50 ff             	lea    -0x1(%rax),%edx
    2fc5:	41 89 54 24 10       	mov    %edx,0x10(%r12)
    2fca:	85 c0                	test   %eax,%eax
    2fcc:	7f e2                	jg     0x2fb0
    2fce:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    2fd3:	4c 89 e2             	mov    %r12,%rdx
    2fd6:	83 e1 20             	and    $0x20,%ecx
    2fd9:	83 c9 50             	or     $0x50,%ecx
    2fdc:	e8 2f e8 ff ff       	call   0x1810
    2fe1:	41 01 6c 24 0c       	add    %ebp,0xc(%r12)
    2fe6:	48 0f bf ce          	movswq %si,%rcx
    2fea:	4c 89 e2             	mov    %r12,%rdx
    2fed:	41 81 4c 24 08 c0 01 	orl    $0x1c0,0x8(%r12)
    2ff4:	00 00 
    2ff6:	e8 35 f1 ff ff       	call   0x2130
    2ffb:	90                   	nop
    2ffc:	48 83 c4 68          	add    $0x68,%rsp
    3000:	5b                   	pop    %rbx
    3001:	5e                   	pop    %rsi
    3002:	5f                   	pop    %rdi
    3003:	5d                   	pop    %rbp
    3004:	41 5c                	pop    %r12
    3006:	41 5d                	pop    %r13
    3008:	c3                   	ret    
    3009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3010:	0f 88 a2 01 00 00    	js     0x31b8
    3016:	b8 01 c0 ff ff       	mov    $0xffffc001,%eax
    301b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3020:	89 c6                	mov    %eax,%esi
    3022:	83 e8 01             	sub    $0x1,%eax
    3025:	4d 01 d2             	add    %r10,%r10
    3028:	79 f6                	jns    0x3020
    302a:	41 8b 54 24 10       	mov    0x10(%r12),%edx
    302f:	83 fa 0e             	cmp    $0xe,%edx
    3032:	0f 86 9d fe ff ff    	jbe    0x2ed5
    3038:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    303d:	e9 c6 fe ff ff       	jmp    0x2f08
    3042:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3048:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    304d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3052:	4d 85 d2             	test   %r10,%r10
    3055:	0f 85 ad fe ff ff    	jne    0x2f08
    305b:	e9 86 fc ff ff       	jmp    0x2ce6
    3060:	4c 89 e1             	mov    %r12,%rcx
    3063:	e8 28 eb ff ff       	call   0x1b90
    3068:	e9 cf fd ff ff       	jmp    0x2e3c
    306d:	0f 1f 00             	nopl   (%rax)
    3070:	48 39 fb             	cmp    %rdi,%rbx
    3073:	77 13                	ja     0x3088
    3075:	45 85 c9             	test   %r9d,%r9d
    3078:	75 0e                	jne    0x3088
    307a:	45 8b 5c 24 10       	mov    0x10(%r12),%r11d
    307f:	45 85 db             	test   %r11d,%r11d
    3082:	7e 0b                	jle    0x308f
    3084:	0f 1f 40 00          	nopl   0x0(%rax)
    3088:	c6 03 2e             	movb   $0x2e,(%rbx)
    308b:	48 83 c3 01          	add    $0x1,%rbx
    308f:	8d 46 ff             	lea    -0x1(%rsi),%eax
    3092:	49 83 fa 01          	cmp    $0x1,%r10
    3096:	74 16                	je     0x30ae
    3098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    309f:	00 
    30a0:	89 c6                	mov    %eax,%esi
    30a2:	49 d1 ea             	shr    %r10
    30a5:	8d 46 ff             	lea    -0x1(%rsi),%eax
    30a8:	49 83 fa 01          	cmp    $0x1,%r10
    30ac:	75 f2                	jne    0x30a0
    30ae:	45 31 d2             	xor    %r10d,%r10d
    30b1:	e9 bc fe ff ff       	jmp    0x2f72
    30b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    30bd:	00 00 00 
    30c0:	4d 89 e0             	mov    %r12,%r8
    30c3:	ba 01 00 00 00       	mov    $0x1,%edx
    30c8:	4c 89 e9             	mov    %r13,%rcx
    30cb:	e8 a0 e7 ff ff       	call   0x1870
    30d0:	e9 67 fd ff ff       	jmp    0x2e3c
    30d5:	0f 1f 00             	nopl   (%rax)
    30d8:	48 39 fb             	cmp    %rdi,%rbx
    30db:	0f 85 23 fc ff ff    	jne    0x2d04
    30e1:	e9 00 fc ff ff       	jmp    0x2ce6
    30e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    30ed:	00 00 00 
    30f0:	4c 89 e2             	mov    %r12,%rdx
    30f3:	b9 2d 00 00 00       	mov    $0x2d,%ecx
    30f8:	e8 13 e7 ff ff       	call   0x1810
    30fd:	e9 b9 fc ff ff       	jmp    0x2dbb
    3102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3108:	41 c7 44 24 0c ff ff 	movl   $0xffffffff,0xc(%r12)
    310f:	ff ff 
    3111:	e9 8a fc ff ff       	jmp    0x2da0
    3116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    311d:	00 00 00 
    3120:	4c 89 e2             	mov    %r12,%rdx
    3123:	b9 2b 00 00 00       	mov    $0x2b,%ecx
    3128:	e8 e3 e6 ff ff       	call   0x1810
    312d:	e9 89 fc ff ff       	jmp    0x2dbb
    3132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3138:	83 c6 01             	add    $0x1,%esi
    313b:	e9 b6 fd ff ff       	jmp    0x2ef6
    3140:	4c 89 e2             	mov    %r12,%rdx
    3143:	b9 20 00 00 00       	mov    $0x20,%ecx
    3148:	e8 c3 e6 ff ff       	call   0x1810
    314d:	e9 69 fc ff ff       	jmp    0x2dbb
    3152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3158:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    315c:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
    3161:	45 85 c0             	test   %r8d,%r8d
    3164:	0f 8e 36 fc ff ff    	jle    0x2da0
    316a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3170:	4c 89 e2             	mov    %r12,%rdx
    3173:	b9 20 00 00 00       	mov    $0x20,%ecx
    3178:	e8 93 e6 ff ff       	call   0x1810
    317d:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    3182:	8d 50 ff             	lea    -0x1(%rax),%edx
    3185:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
    318a:	85 c0                	test   %eax,%eax
    318c:	7f e2                	jg     0x3170
    318e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
    3193:	e9 08 fc ff ff       	jmp    0x2da0
    3198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    319f:	00 
    31a0:	48 89 f8             	mov    %rdi,%rax
    31a3:	f6 c6 08             	test   $0x8,%dh
    31a6:	0f 84 51 fb ff ff    	je     0x2cfd
    31ac:	e9 42 fb ff ff       	jmp    0x2cf3
    31b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    31b8:	be 02 c0 ff ff       	mov    $0xffffc002,%esi
    31bd:	e9 68 fe ff ff       	jmp    0x302a
    31c2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    31c9:	00 00 00 00 
    31cd:	0f 1f 00             	nopl   (%rax)
    31d0:	41 57                	push   %r15
    31d2:	41 56                	push   %r14
    31d4:	41 55                	push   %r13
    31d6:	41 54                	push   %r12
    31d8:	55                   	push   %rbp
    31d9:	57                   	push   %rdi
    31da:	56                   	push   %rsi
    31db:	53                   	push   %rbx
    31dc:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    31e3:	4c 8b a4 24 10 01 00 	mov    0x110(%rsp),%r12
    31ea:	00 
    31eb:	89 cf                	mov    %ecx,%edi
    31ed:	48 89 d5             	mov    %rdx,%rbp
    31f0:	44 89 c3             	mov    %r8d,%ebx
    31f3:	4c 89 ce             	mov    %r9,%rsi
    31f6:	e8 a5 30 00 00       	call   0x62a0
    31fb:	0f be 0e             	movsbl (%rsi),%ecx
    31fe:	81 e7 00 60 00 00    	and    $0x6000,%edi
    3204:	31 d2                	xor    %edx,%edx
    3206:	8b 00                	mov    (%rax),%eax
    3208:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
    320f:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
    3213:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
    3218:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    321c:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
    3223:	ff ff ff 
    3226:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
    322d:	00 
    322e:	31 c0                	xor    %eax,%eax
    3230:	89 7c 24 78          	mov    %edi,0x78(%rsp)
    3234:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
    323b:	ff 
    323c:	66 89 84 24 88 00 00 	mov    %ax,0x88(%rsp)
    3243:	00 
    3244:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
    324b:	00 00 00 00 
    324f:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
    3256:	00 
    3257:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
    325e:	00 00 00 00 
    3262:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
    3269:	ff ff ff ff 
    326d:	85 c9                	test   %ecx,%ecx
    326f:	0f 84 da 00 00 00    	je     0x334f
    3275:	4c 8d 2d a4 50 00 00 	lea    0x50a4(%rip),%r13        # 0x8320
    327c:	eb 1b                	jmp    0x3299
    327e:	66 90                	xchg   %ax,%ax
    3280:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3285:	e8 86 e5 ff ff       	call   0x1810
    328a:	0f be 0b             	movsbl (%rbx),%ecx
    328d:	48 83 c3 01          	add    $0x1,%rbx
    3291:	85 c9                	test   %ecx,%ecx
    3293:	0f 84 af 00 00 00    	je     0x3348
    3299:	83 f9 25             	cmp    $0x25,%ecx
    329c:	75 e2                	jne    0x3280
    329e:	0f b6 03             	movzbl (%rbx),%eax
    32a1:	89 7c 24 78          	mov    %edi,0x78(%rsp)
    32a5:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
    32ac:	ff ff 
    32ae:	84 c0                	test   %al,%al
    32b0:	0f 84 92 00 00 00    	je     0x3348
    32b6:	48 89 de             	mov    %rbx,%rsi
    32b9:	4c 8d 54 24 7c       	lea    0x7c(%rsp),%r10
    32be:	45 31 ff             	xor    %r15d,%r15d
    32c1:	45 31 f6             	xor    %r14d,%r14d
    32c4:	41 bb 03 00 00 00    	mov    $0x3,%r11d
    32ca:	8d 50 e0             	lea    -0x20(%rax),%edx
    32cd:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
    32d1:	0f be c8             	movsbl %al,%ecx
    32d4:	80 fa 5a             	cmp    $0x5a,%dl
    32d7:	77 17                	ja     0x32f0
    32d9:	0f b6 d2             	movzbl %dl,%edx
    32dc:	49 63 54 95 00       	movslq 0x0(%r13,%rdx,4),%rdx
    32e1:	4c 01 ea             	add    %r13,%rdx
    32e4:	ff e2                	jmp    *%rdx
    32e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    32ed:	00 00 00 
    32f0:	83 e8 30             	sub    $0x30,%eax
    32f3:	3c 09                	cmp    $0x9,%al
    32f5:	0f 87 ad 06 00 00    	ja     0x39a8
    32fb:	41 83 fe 03          	cmp    $0x3,%r14d
    32ff:	0f 87 a3 06 00 00    	ja     0x39a8
    3305:	45 85 f6             	test   %r14d,%r14d
    3308:	0f 85 63 06 00 00    	jne    0x3971
    330e:	41 be 01 00 00 00    	mov    $0x1,%r14d
    3314:	4d 85 d2             	test   %r10,%r10
    3317:	0f 84 ab 04 00 00    	je     0x37c8
    331d:	41 8b 02             	mov    (%r10),%eax
    3320:	85 c0                	test   %eax,%eax
    3322:	0f 88 56 06 00 00    	js     0x397e
    3328:	8d 04 80             	lea    (%rax,%rax,4),%eax
    332b:	8d 44 41 d0          	lea    -0x30(%rcx,%rax,2),%eax
    332f:	41 89 02             	mov    %eax,(%r10)
    3332:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3336:	48 89 ee             	mov    %rbp,%rsi
    3339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3340:	84 c0                	test   %al,%al
    3342:	75 86                	jne    0x32ca
    3344:	0f 1f 40 00          	nopl   0x0(%rax)
    3348:	8b 8c 24 94 00 00 00 	mov    0x94(%rsp),%ecx
    334f:	89 c8                	mov    %ecx,%eax
    3351:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    3358:	5b                   	pop    %rbx
    3359:	5e                   	pop    %rsi
    335a:	5f                   	pop    %rdi
    335b:	5d                   	pop    %rbp
    335c:	41 5c                	pop    %r12
    335e:	41 5d                	pop    %r13
    3360:	41 5e                	pop    %r14
    3362:	41 5f                	pop    %r15
    3364:	c3                   	ret    
    3365:	0f 1f 00             	nopl   (%rax)
    3368:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    336d:	41 83 ff 03          	cmp    $0x3,%r15d
    3371:	0f 84 0c 07 00 00    	je     0x3a83
    3377:	45 8b 0c 24          	mov    (%r12),%r9d
    337b:	41 83 ff 02          	cmp    $0x2,%r15d
    337f:	74 14                	je     0x3395
    3381:	41 83 ff 01          	cmp    $0x1,%r15d
    3385:	0f 84 4a 06 00 00    	je     0x39d5
    338b:	41 83 ff 05          	cmp    $0x5,%r15d
    338f:	75 04                	jne    0x3395
    3391:	45 0f b6 c9          	movzbl %r9b,%r9d
    3395:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    339a:	83 f9 75             	cmp    $0x75,%ecx
    339d:	0f 84 ee 06 00 00    	je     0x3a91
    33a3:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    33a8:	4c 89 ca             	mov    %r9,%rdx
    33ab:	49 89 dc             	mov    %rbx,%r12
    33ae:	48 89 eb             	mov    %rbp,%rbx
    33b1:	e8 fa f3 ff ff       	call   0x27b0
    33b6:	e9 cf fe ff ff       	jmp    0x328a
    33bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    33c0:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    33c4:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    33ca:	48 89 ee             	mov    %rbp,%rsi
    33cd:	41 be 04 00 00 00    	mov    $0x4,%r14d
    33d3:	e9 68 ff ff ff       	jmp    0x3340
    33d8:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
    33df:	00 
    33e0:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    33e5:	41 83 ff 03          	cmp    $0x3,%r15d
    33e9:	0f 84 86 06 00 00    	je     0x3a75
    33ef:	49 63 0c 24          	movslq (%r12),%rcx
    33f3:	41 83 ff 02          	cmp    $0x2,%r15d
    33f7:	74 14                	je     0x340d
    33f9:	41 83 ff 01          	cmp    $0x1,%r15d
    33fd:	0f 84 e0 05 00 00    	je     0x39e3
    3403:	41 83 ff 05          	cmp    $0x5,%r15d
    3407:	75 04                	jne    0x340d
    3409:	48 0f be c9          	movsbq %cl,%rcx
    340d:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    3412:	48 89 c8             	mov    %rcx,%rax
    3415:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    341a:	49 89 dc             	mov    %rbx,%r12
    341d:	48 89 eb             	mov    %rbp,%rbx
    3420:	48 c1 f8 3f          	sar    $0x3f,%rax
    3424:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    3429:	e8 02 ed ff ff       	call   0x2130
    342e:	e9 57 fe ff ff       	jmp    0x328a
    3433:	41 83 ef 02          	sub    $0x2,%r15d
    3437:	49 8b 0c 24          	mov    (%r12),%rcx
    343b:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    3440:	41 83 ff 01          	cmp    $0x1,%r15d
    3444:	0f 86 d5 04 00 00    	jbe    0x391f
    344a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    344f:	49 89 dc             	mov    %rbx,%r12
    3452:	48 89 eb             	mov    %rbp,%rbx
    3455:	e8 36 e6 ff ff       	call   0x1a90
    345a:	e9 2b fe ff ff       	jmp    0x328a
    345f:	41 83 ef 02          	sub    $0x2,%r15d
    3463:	41 8b 04 24          	mov    (%r12),%eax
    3467:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    346c:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
    3473:	ff ff ff ff 
    3477:	41 83 ff 01          	cmp    $0x1,%r15d
    347b:	0f 86 62 02 00 00    	jbe    0x36e3
    3481:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
    3486:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    348b:	88 44 24 60          	mov    %al,0x60(%rsp)
    348f:	49 89 dc             	mov    %rbx,%r12
    3492:	ba 01 00 00 00       	mov    $0x1,%edx
    3497:	48 89 eb             	mov    %rbp,%rbx
    349a:	e8 01 e5 ff ff       	call   0x19a0
    349f:	e9 e6 fd ff ff       	jmp    0x328a
    34a4:	45 85 f6             	test   %r14d,%r14d
    34a7:	0f 85 1b 03 00 00    	jne    0x37c8
    34ad:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    34b1:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
    34b8:	00 
    34b9:	48 89 ee             	mov    %rbp,%rsi
    34bc:	e9 7f fe ff ff       	jmp    0x3340
    34c1:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    34c5:	3c 36                	cmp    $0x36,%al
    34c7:	0f 84 85 05 00 00    	je     0x3a52
    34cd:	3c 33                	cmp    $0x33,%al
    34cf:	0f 84 c9 04 00 00    	je     0x399e
    34d5:	48 89 ee             	mov    %rbp,%rsi
    34d8:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    34de:	41 be 04 00 00 00    	mov    $0x4,%r14d
    34e4:	e9 57 fe ff ff       	jmp    0x3340
    34e9:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    34ed:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
    34f2:	48 89 ee             	mov    %rbp,%rsi
    34f5:	41 be 04 00 00 00    	mov    $0x4,%r14d
    34fb:	e9 40 fe ff ff       	jmp    0x3340
    3500:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3504:	49 8b 14 24          	mov    (%r12),%rdx
    3508:	49 83 c4 08          	add    $0x8,%r12
    350c:	83 c8 20             	or     $0x20,%eax
    350f:	89 44 24 78          	mov    %eax,0x78(%rsp)
    3513:	a8 04                	test   $0x4,%al
    3515:	0f 84 3c 02 00 00    	je     0x3757
    351b:	db 2a                	fldt   (%rdx)
    351d:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3522:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3527:	48 89 eb             	mov    %rbp,%rbx
    352a:	db 7c 24 40          	fstpt  0x40(%rsp)
    352e:	e8 2d eb ff ff       	call   0x2060
    3533:	e9 52 fd ff ff       	jmp    0x328a
    3538:	8b 44 24 78          	mov    0x78(%rsp),%eax
    353c:	49 8b 14 24          	mov    (%r12),%rdx
    3540:	49 83 c4 08          	add    $0x8,%r12
    3544:	83 c8 20             	or     $0x20,%eax
    3547:	89 44 24 78          	mov    %eax,0x78(%rsp)
    354b:	a8 04                	test   $0x4,%al
    354d:	0f 84 3c 02 00 00    	je     0x378f
    3553:	db 2a                	fldt   (%rdx)
    3555:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    355a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    355f:	48 89 eb             	mov    %rbp,%rbx
    3562:	db 7c 24 40          	fstpt  0x40(%rsp)
    3566:	e8 d5 f0 ff ff       	call   0x2640
    356b:	e9 1a fd ff ff       	jmp    0x328a
    3570:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3574:	49 8b 14 24          	mov    (%r12),%rdx
    3578:	49 83 c4 08          	add    $0x8,%r12
    357c:	83 c8 20             	or     $0x20,%eax
    357f:	89 44 24 78          	mov    %eax,0x78(%rsp)
    3583:	a8 04                	test   $0x4,%al
    3585:	0f 84 94 01 00 00    	je     0x371f
    358b:	db 2a                	fldt   (%rdx)
    358d:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3592:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3597:	48 89 eb             	mov    %rbp,%rbx
    359a:	db 7c 24 40          	fstpt  0x40(%rsp)
    359e:	e8 ed ef ff ff       	call   0x2590
    35a3:	e9 e2 fc ff ff       	jmp    0x328a
    35a8:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    35ac:	3c 6c                	cmp    $0x6c,%al
    35ae:	0f 84 85 04 00 00    	je     0x3a39
    35b4:	48 89 ee             	mov    %rbp,%rsi
    35b7:	41 bf 02 00 00 00    	mov    $0x2,%r15d
    35bd:	41 be 04 00 00 00    	mov    $0x4,%r14d
    35c3:	e9 78 fd ff ff       	jmp    0x3340
    35c8:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    35cc:	3c 68                	cmp    $0x68,%al
    35ce:	0f 84 4c 04 00 00    	je     0x3a20
    35d4:	48 89 ee             	mov    %rbp,%rsi
    35d7:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    35dd:	41 be 04 00 00 00    	mov    $0x4,%r14d
    35e3:	e9 58 fd ff ff       	jmp    0x3340
    35e8:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
    35ec:	48 89 eb             	mov    %rbp,%rbx
    35ef:	e8 3c 2c 00 00       	call   0x6230
    35f4:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    35f9:	48 89 c1             	mov    %rax,%rcx
    35fc:	e8 8f e4 ff ff       	call   0x1a90
    3601:	e9 84 fc ff ff       	jmp    0x328a
    3606:	49 8b 14 24          	mov    (%r12),%rdx
    360a:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
    3611:	00 
    3612:	49 83 c4 08          	add    $0x8,%r12
    3616:	41 83 ff 05          	cmp    $0x5,%r15d
    361a:	0f 84 f6 03 00 00    	je     0x3a16
    3620:	41 83 ff 01          	cmp    $0x1,%r15d
    3624:	0f 84 8c 04 00 00    	je     0x3ab6
    362a:	41 83 ff 02          	cmp    $0x2,%r15d
    362e:	74 0a                	je     0x363a
    3630:	41 83 ff 03          	cmp    $0x3,%r15d
    3634:	0f 84 c3 04 00 00    	je     0x3afd
    363a:	89 02                	mov    %eax,(%rdx)
    363c:	48 89 eb             	mov    %rbp,%rbx
    363f:	e9 46 fc ff ff       	jmp    0x328a
    3644:	45 85 f6             	test   %r14d,%r14d
    3647:	75 0a                	jne    0x3653
    3649:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
    364d:	0f 84 69 03 00 00    	je     0x39bc
    3653:	49 8b 14 24          	mov    (%r12),%rdx
    3657:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    365c:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    3661:	b9 78 00 00 00       	mov    $0x78,%ecx
    3666:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    366d:	00 00 
    366f:	49 89 dc             	mov    %rbx,%r12
    3672:	48 89 eb             	mov    %rbp,%rbx
    3675:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
    367a:	e8 31 f1 ff ff       	call   0x27b0
    367f:	e9 06 fc ff ff       	jmp    0x328a
    3684:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3688:	49 8b 14 24          	mov    (%r12),%rdx
    368c:	49 83 c4 08          	add    $0x8,%r12
    3690:	83 c8 20             	or     $0x20,%eax
    3693:	89 44 24 78          	mov    %eax,0x78(%rsp)
    3697:	a8 04                	test   $0x4,%al
    3699:	0f 84 65 01 00 00    	je     0x3804
    369f:	db 2a                	fldt   (%rdx)
    36a1:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    36a6:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    36ab:	48 89 eb             	mov    %rbp,%rbx
    36ae:	db 7c 24 40          	fstpt  0x40(%rsp)
    36b2:	e8 99 f5 ff ff       	call   0x2c50
    36b7:	e9 ce fb ff ff       	jmp    0x328a
    36bc:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    36c1:	b9 25 00 00 00       	mov    $0x25,%ecx
    36c6:	48 89 eb             	mov    %rbp,%rbx
    36c9:	e8 42 e1 ff ff       	call   0x1810
    36ce:	e9 b7 fb ff ff       	jmp    0x328a
    36d3:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
    36da:	ff ff ff ff 
    36de:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    36e3:	41 8b 04 24          	mov    (%r12),%eax
    36e7:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
    36ec:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    36f1:	49 89 dc             	mov    %rbx,%r12
    36f4:	ba 01 00 00 00       	mov    $0x1,%edx
    36f9:	48 89 eb             	mov    %rbp,%rbx
    36fc:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
    3701:	e8 6a e1 ff ff       	call   0x1870
    3706:	e9 7f fb ff ff       	jmp    0x328a
    370b:	8b 44 24 78          	mov    0x78(%rsp),%eax
    370f:	49 8b 14 24          	mov    (%r12),%rdx
    3713:	49 83 c4 08          	add    $0x8,%r12
    3717:	a8 04                	test   $0x4,%al
    3719:	0f 85 6c fe ff ff    	jne    0x358b
    371f:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    3724:	dd 44 24 30          	fldl   0x30(%rsp)
    3728:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    372d:	48 89 eb             	mov    %rbp,%rbx
    3730:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    3735:	db 7c 24 40          	fstpt  0x40(%rsp)
    3739:	e8 52 ee ff ff       	call   0x2590
    373e:	e9 47 fb ff ff       	jmp    0x328a
    3743:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3747:	49 8b 14 24          	mov    (%r12),%rdx
    374b:	49 83 c4 08          	add    $0x8,%r12
    374f:	a8 04                	test   $0x4,%al
    3751:	0f 85 c4 fd ff ff    	jne    0x351b
    3757:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    375c:	dd 44 24 30          	fldl   0x30(%rsp)
    3760:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3765:	48 89 eb             	mov    %rbp,%rbx
    3768:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    376d:	db 7c 24 40          	fstpt  0x40(%rsp)
    3771:	e8 ea e8 ff ff       	call   0x2060
    3776:	e9 0f fb ff ff       	jmp    0x328a
    377b:	8b 44 24 78          	mov    0x78(%rsp),%eax
    377f:	49 8b 14 24          	mov    (%r12),%rdx
    3783:	49 83 c4 08          	add    $0x8,%r12
    3787:	a8 04                	test   $0x4,%al
    3789:	0f 85 c4 fd ff ff    	jne    0x3553
    378f:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    3794:	dd 44 24 30          	fldl   0x30(%rsp)
    3798:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    379d:	48 89 eb             	mov    %rbp,%rbx
    37a0:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    37a5:	db 7c 24 40          	fstpt  0x40(%rsp)
    37a9:	e8 92 ee ff ff       	call   0x2640
    37ae:	e9 d7 fa ff ff       	jmp    0x328a
    37b3:	45 85 f6             	test   %r14d,%r14d
    37b6:	0f 85 aa 01 00 00    	jne    0x3966
    37bc:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
    37c3:	00 
    37c4:	0f 1f 40 00          	nopl   0x0(%rax)
    37c8:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    37cc:	48 89 ee             	mov    %rbp,%rsi
    37cf:	e9 6c fb ff ff       	jmp    0x3340
    37d4:	41 83 fe 01          	cmp    $0x1,%r14d
    37d8:	0f 86 13 02 00 00    	jbe    0x39f1
    37de:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    37e2:	41 be 04 00 00 00    	mov    $0x4,%r14d
    37e8:	48 89 ee             	mov    %rbp,%rsi
    37eb:	e9 50 fb ff ff       	jmp    0x3340
    37f0:	8b 44 24 78          	mov    0x78(%rsp),%eax
    37f4:	49 8b 14 24          	mov    (%r12),%rdx
    37f8:	49 83 c4 08          	add    $0x8,%r12
    37fc:	a8 04                	test   $0x4,%al
    37fe:	0f 85 9b fe ff ff    	jne    0x369f
    3804:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    3809:	dd 44 24 30          	fldl   0x30(%rsp)
    380d:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3812:	48 89 eb             	mov    %rbp,%rbx
    3815:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    381a:	db 7c 24 40          	fstpt  0x40(%rsp)
    381e:	e8 2d f4 ff ff       	call   0x2c50
    3823:	e9 62 fa ff ff       	jmp    0x328a
    3828:	45 85 f6             	test   %r14d,%r14d
    382b:	75 9b                	jne    0x37c8
    382d:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3831:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
    3836:	48 89 ee             	mov    %rbp,%rsi
    3839:	e9 02 fb ff ff       	jmp    0x3340
    383e:	45 85 f6             	test   %r14d,%r14d
    3841:	75 85                	jne    0x37c8
    3843:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3847:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
    384e:	00 
    384f:	48 89 ee             	mov    %rbp,%rsi
    3852:	e9 e9 fa ff ff       	jmp    0x3340
    3857:	4d 85 d2             	test   %r10,%r10
    385a:	74 82                	je     0x37de
    385c:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
    3863:	0f 85 20 01 00 00    	jne    0x3989
    3869:	41 8b 04 24          	mov    (%r12),%eax
    386d:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
    3872:	41 89 02             	mov    %eax,(%r10)
    3875:	85 c0                	test   %eax,%eax
    3877:	0f 88 44 02 00 00    	js     0x3ac1
    387d:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3881:	49 89 d4             	mov    %rdx,%r12
    3884:	48 89 ee             	mov    %rbp,%rsi
    3887:	45 31 d2             	xor    %r10d,%r10d
    388a:	e9 b1 fa ff ff       	jmp    0x3340
    388f:	45 85 f6             	test   %r14d,%r14d
    3892:	0f 85 30 ff ff ff    	jne    0x37c8
    3898:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
    389f:	00 
    38a0:	e9 23 ff ff ff       	jmp    0x37c8
    38a5:	45 85 f6             	test   %r14d,%r14d
    38a8:	0f 85 1a ff ff ff    	jne    0x37c8
    38ae:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
    38b3:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
    38b8:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
    38bf:	00 
    38c0:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
    38c5:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
    38cc:	00 
    38cd:	e8 7e 29 00 00       	call   0x6250
    38d2:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    38d7:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
    38dc:	41 b8 10 00 00 00    	mov    $0x10,%r8d
    38e2:	48 8b 50 08          	mov    0x8(%rax),%rdx
    38e6:	e8 75 2b 00 00       	call   0x6460
    38eb:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
    38f0:	41 bb 03 00 00 00    	mov    $0x3,%r11d
    38f6:	85 c0                	test   %eax,%eax
    38f8:	7e 0d                	jle    0x3907
    38fa:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
    38ff:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
    3906:	00 
    3907:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
    390e:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3912:	48 89 ee             	mov    %rbp,%rsi
    3915:	e9 26 fa ff ff       	jmp    0x3340
    391a:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
    391f:	4d 8b 24 24          	mov    (%r12),%r12
    3923:	48 8d 05 e6 49 00 00 	lea    0x49e6(%rip),%rax        # 0x8310
    392a:	4d 85 e4             	test   %r12,%r12
    392d:	4c 0f 44 e0          	cmove  %rax,%r12
    3931:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
    3938:	85 c0                	test   %eax,%eax
    393a:	0f 88 69 01 00 00    	js     0x3aa9
    3940:	48 63 d0             	movslq %eax,%rdx
    3943:	4c 89 e1             	mov    %r12,%rcx
    3946:	e8 95 28 00 00       	call   0x61e0
    394b:	4c 89 e1             	mov    %r12,%rcx
    394e:	48 89 c2             	mov    %rax,%rdx
    3951:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
    3956:	49 89 dc             	mov    %rbx,%r12
    3959:	e8 12 df ff ff       	call   0x1870
    395e:	48 89 eb             	mov    %rbp,%rbx
    3961:	e9 24 f9 ff ff       	jmp    0x328a
    3966:	41 83 fe 03          	cmp    $0x3,%r14d
    396a:	77 3c                	ja     0x39a8
    396c:	b9 30 00 00 00       	mov    $0x30,%ecx
    3971:	41 83 fe 02          	cmp    $0x2,%r14d
    3975:	45 0f 44 f3          	cmove  %r11d,%r14d
    3979:	e9 96 f9 ff ff       	jmp    0x3314
    397e:	83 e9 30             	sub    $0x30,%ecx
    3981:	41 89 0a             	mov    %ecx,(%r10)
    3984:	e9 3f fe ff ff       	jmp    0x37c8
    3989:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    398d:	45 31 d2             	xor    %r10d,%r10d
    3990:	48 89 ee             	mov    %rbp,%rsi
    3993:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3999:	e9 a2 f9 ff ff       	jmp    0x3340
    399e:	80 7e 02 32          	cmpb   $0x32,0x2(%rsi)
    39a2:	0f 84 3c 01 00 00    	je     0x3ae4
    39a8:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    39ad:	b9 25 00 00 00       	mov    $0x25,%ecx
    39b2:	e8 59 de ff ff       	call   0x1810
    39b7:	e9 ce f8 ff ff       	jmp    0x328a
    39bc:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
    39c3:	10 00 00 00 
    39c7:	89 f8                	mov    %edi,%eax
    39c9:	80 cc 02             	or     $0x2,%ah
    39cc:	89 44 24 78          	mov    %eax,0x78(%rsp)
    39d0:	e9 7e fc ff ff       	jmp    0x3653
    39d5:	45 0f b7 c9          	movzwl %r9w,%r9d
    39d9:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    39de:	e9 b7 f9 ff ff       	jmp    0x339a
    39e3:	48 0f bf c9          	movswq %cx,%rcx
    39e7:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    39ec:	e9 21 fa ff ff       	jmp    0x3412
    39f1:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    39f5:	41 be 02 00 00 00    	mov    $0x2,%r14d
    39fb:	48 89 ee             	mov    %rbp,%rsi
    39fe:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    3a05:	00 00 00 00 
    3a09:	4c 8d 94 24 80 00 00 	lea    0x80(%rsp),%r10
    3a10:	00 
    3a11:	e9 2a f9 ff ff       	jmp    0x3340
    3a16:	88 02                	mov    %al,(%rdx)
    3a18:	48 89 eb             	mov    %rbp,%rbx
    3a1b:	e9 6a f8 ff ff       	jmp    0x328a
    3a20:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
    3a24:	41 bf 05 00 00 00    	mov    $0x5,%r15d
    3a2a:	48 83 c6 02          	add    $0x2,%rsi
    3a2e:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3a34:	e9 07 f9 ff ff       	jmp    0x3340
    3a39:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
    3a3d:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    3a43:	48 83 c6 02          	add    $0x2,%rsi
    3a47:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3a4d:	e9 ee f8 ff ff       	jmp    0x3340
    3a52:	80 7e 02 34          	cmpb   $0x34,0x2(%rsi)
    3a56:	0f 85 4c ff ff ff    	jne    0x39a8
    3a5c:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
    3a60:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    3a66:	48 83 c6 03          	add    $0x3,%rsi
    3a6a:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3a70:	e9 cb f8 ff ff       	jmp    0x3340
    3a75:	49 8b 0c 24          	mov    (%r12),%rcx
    3a79:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    3a7e:	e9 8f f9 ff ff       	jmp    0x3412
    3a83:	4d 8b 0c 24          	mov    (%r12),%r9
    3a87:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    3a8c:	e9 09 f9 ff ff       	jmp    0x339a
    3a91:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    3a96:	4c 89 c9             	mov    %r9,%rcx
    3a99:	49 89 dc             	mov    %rbx,%r12
    3a9c:	48 89 eb             	mov    %rbp,%rbx
    3a9f:	e8 8c e6 ff ff       	call   0x2130
    3aa4:	e9 e1 f7 ff ff       	jmp    0x328a
    3aa9:	4c 89 e1             	mov    %r12,%rcx
    3aac:	e8 5f 27 00 00       	call   0x6210
    3ab1:	e9 95 fe ff ff       	jmp    0x394b
    3ab6:	66 89 02             	mov    %ax,(%rdx)
    3ab9:	48 89 eb             	mov    %rbp,%rbx
    3abc:	e9 c9 f7 ff ff       	jmp    0x328a
    3ac1:	45 85 f6             	test   %r14d,%r14d
    3ac4:	75 42                	jne    0x3b08
    3ac6:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
    3aca:	f7 5c 24 7c          	negl   0x7c(%rsp)
    3ace:	49 89 d4             	mov    %rdx,%r12
    3ad1:	48 89 ee             	mov    %rbp,%rsi
    3ad4:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
    3adb:	00 
    3adc:	45 31 d2             	xor    %r10d,%r10d
    3adf:	e9 5c f8 ff ff       	jmp    0x3340
    3ae4:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
    3ae8:	41 bf 02 00 00 00    	mov    $0x2,%r15d
    3aee:	48 83 c6 03          	add    $0x3,%rsi
    3af2:	41 be 04 00 00 00    	mov    $0x4,%r14d
    3af8:	e9 43 f8 ff ff       	jmp    0x3340
    3afd:	48 89 02             	mov    %rax,(%rdx)
    3b00:	48 89 eb             	mov    %rbp,%rbx
    3b03:	e9 82 f7 ff ff       	jmp    0x328a
    3b08:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
    3b0f:	ff ff ff ff 
    3b13:	e9 65 fd ff ff       	jmp    0x387d
    3b18:	90                   	nop
    3b19:	90                   	nop
    3b1a:	90                   	nop
    3b1b:	90                   	nop
    3b1c:	90                   	nop
    3b1d:	90                   	nop
    3b1e:	90                   	nop
    3b1f:	90                   	nop
    3b20:	53                   	push   %rbx
    3b21:	48 83 ec 20          	sub    $0x20,%rsp
    3b25:	31 db                	xor    %ebx,%ebx
    3b27:	83 f9 1b             	cmp    $0x1b,%ecx
    3b2a:	7e 18                	jle    0x3b44
    3b2c:	b8 04 00 00 00       	mov    $0x4,%eax
    3b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3b38:	01 c0                	add    %eax,%eax
    3b3a:	83 c3 01             	add    $0x1,%ebx
    3b3d:	8d 50 17             	lea    0x17(%rax),%edx
    3b40:	39 ca                	cmp    %ecx,%edx
    3b42:	7c f4                	jl     0x3b38
    3b44:	89 d9                	mov    %ebx,%ecx
    3b46:	e8 95 1b 00 00       	call   0x56e0
    3b4b:	89 18                	mov    %ebx,(%rax)
    3b4d:	48 83 c0 04          	add    $0x4,%rax
    3b51:	48 83 c4 20          	add    $0x20,%rsp
    3b55:	5b                   	pop    %rbx
    3b56:	c3                   	ret    
    3b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3b5e:	00 00 
    3b60:	57                   	push   %rdi
    3b61:	56                   	push   %rsi
    3b62:	53                   	push   %rbx
    3b63:	48 83 ec 20          	sub    $0x20,%rsp
    3b67:	48 89 ce             	mov    %rcx,%rsi
    3b6a:	48 89 d7             	mov    %rdx,%rdi
    3b6d:	41 83 f8 1b          	cmp    $0x1b,%r8d
    3b71:	7e 6d                	jle    0x3be0
    3b73:	b8 04 00 00 00       	mov    $0x4,%eax
    3b78:	31 db                	xor    %ebx,%ebx
    3b7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3b80:	01 c0                	add    %eax,%eax
    3b82:	83 c3 01             	add    $0x1,%ebx
    3b85:	8d 48 17             	lea    0x17(%rax),%ecx
    3b88:	41 39 c8             	cmp    %ecx,%r8d
    3b8b:	7f f3                	jg     0x3b80
    3b8d:	89 d9                	mov    %ebx,%ecx
    3b8f:	e8 4c 1b 00 00       	call   0x56e0
    3b94:	48 8d 4e 01          	lea    0x1(%rsi),%rcx
    3b98:	89 18                	mov    %ebx,(%rax)
    3b9a:	0f b6 16             	movzbl (%rsi),%edx
    3b9d:	4c 8d 48 04          	lea    0x4(%rax),%r9
    3ba1:	88 50 04             	mov    %dl,0x4(%rax)
    3ba4:	4c 89 c8             	mov    %r9,%rax
    3ba7:	84 d2                	test   %dl,%dl
    3ba9:	74 19                	je     0x3bc4
    3bab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3bb0:	44 0f b6 01          	movzbl (%rcx),%r8d
    3bb4:	48 83 c0 01          	add    $0x1,%rax
    3bb8:	48 83 c1 01          	add    $0x1,%rcx
    3bbc:	44 88 00             	mov    %r8b,(%rax)
    3bbf:	45 84 c0             	test   %r8b,%r8b
    3bc2:	75 ec                	jne    0x3bb0
    3bc4:	48 85 ff             	test   %rdi,%rdi
    3bc7:	74 03                	je     0x3bcc
    3bc9:	48 89 07             	mov    %rax,(%rdi)
    3bcc:	4c 89 c8             	mov    %r9,%rax
    3bcf:	48 83 c4 20          	add    $0x20,%rsp
    3bd3:	5b                   	pop    %rbx
    3bd4:	5e                   	pop    %rsi
    3bd5:	5f                   	pop    %rdi
    3bd6:	c3                   	ret    
    3bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3bde:	00 00 
    3be0:	31 db                	xor    %ebx,%ebx
    3be2:	eb a9                	jmp    0x3b8d
    3be4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3beb:	00 00 00 00 
    3bef:	90                   	nop
    3bf0:	ba 01 00 00 00       	mov    $0x1,%edx
    3bf5:	48 89 c8             	mov    %rcx,%rax
    3bf8:	8b 49 fc             	mov    -0x4(%rcx),%ecx
    3bfb:	d3 e2                	shl    %cl,%edx
    3bfd:	89 48 04             	mov    %ecx,0x4(%rax)
    3c00:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
    3c04:	89 50 08             	mov    %edx,0x8(%rax)
    3c07:	e9 d4 1b 00 00       	jmp    0x57e0
    3c0c:	0f 1f 40 00          	nopl   0x0(%rax)
    3c10:	41 57                	push   %r15
    3c12:	41 56                	push   %r14
    3c14:	41 55                	push   %r13
    3c16:	41 54                	push   %r12
    3c18:	55                   	push   %rbp
    3c19:	57                   	push   %rdi
    3c1a:	56                   	push   %rsi
    3c1b:	53                   	push   %rbx
    3c1c:	48 83 ec 38          	sub    $0x38,%rsp
    3c20:	31 c0                	xor    %eax,%eax
    3c22:	8b 72 14             	mov    0x14(%rdx),%esi
    3c25:	49 89 cc             	mov    %rcx,%r12
    3c28:	49 89 d6             	mov    %rdx,%r14
    3c2b:	39 71 14             	cmp    %esi,0x14(%rcx)
    3c2e:	0f 8c e4 00 00 00    	jl     0x3d18
    3c34:	83 ee 01             	sub    $0x1,%esi
    3c37:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
    3c3b:	48 8d 69 18          	lea    0x18(%rcx),%rbp
    3c3f:	31 d2                	xor    %edx,%edx
    3c41:	4c 63 de             	movslq %esi,%r11
    3c44:	49 c1 e3 02          	shl    $0x2,%r11
    3c48:	4a 8d 3c 1b          	lea    (%rbx,%r11,1),%rdi
    3c4c:	49 01 eb             	add    %rbp,%r11
    3c4f:	8b 07                	mov    (%rdi),%eax
    3c51:	45 8b 03             	mov    (%r11),%r8d
    3c54:	8d 48 01             	lea    0x1(%rax),%ecx
    3c57:	44 89 c0             	mov    %r8d,%eax
    3c5a:	f7 f1                	div    %ecx
    3c5c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    3c60:	41 89 c5             	mov    %eax,%r13d
    3c63:	41 39 c8             	cmp    %ecx,%r8d
    3c66:	72 56                	jb     0x3cbe
    3c68:	41 89 c7             	mov    %eax,%r15d
    3c6b:	49 89 da             	mov    %rbx,%r10
    3c6e:	49 89 e9             	mov    %rbp,%r9
    3c71:	31 c9                	xor    %ecx,%ecx
    3c73:	31 d2                	xor    %edx,%edx
    3c75:	0f 1f 00             	nopl   (%rax)
    3c78:	41 8b 02             	mov    (%r10),%eax
    3c7b:	45 8b 01             	mov    (%r9),%r8d
    3c7e:	49 83 c2 04          	add    $0x4,%r10
    3c82:	49 83 c1 04          	add    $0x4,%r9
    3c86:	49 0f af c7          	imul   %r15,%rax
    3c8a:	48 01 c8             	add    %rcx,%rax
    3c8d:	48 89 c1             	mov    %rax,%rcx
    3c90:	89 c0                	mov    %eax,%eax
    3c92:	48 01 d0             	add    %rdx,%rax
    3c95:	48 c1 e9 20          	shr    $0x20,%rcx
    3c99:	49 29 c0             	sub    %rax,%r8
    3c9c:	4c 89 c0             	mov    %r8,%rax
    3c9f:	45 89 41 fc          	mov    %r8d,-0x4(%r9)
    3ca3:	48 c1 e8 20          	shr    $0x20,%rax
    3ca7:	83 e0 01             	and    $0x1,%eax
    3caa:	48 89 c2             	mov    %rax,%rdx
    3cad:	4c 39 d7             	cmp    %r10,%rdi
    3cb0:	73 c6                	jae    0x3c78
    3cb2:	45 8b 0b             	mov    (%r11),%r9d
    3cb5:	45 85 c9             	test   %r9d,%r9d
    3cb8:	0f 84 9d 00 00 00    	je     0x3d5b
    3cbe:	4c 89 f2             	mov    %r14,%rdx
    3cc1:	4c 89 e1             	mov    %r12,%rcx
    3cc4:	e8 77 20 00 00       	call   0x5d40
    3cc9:	85 c0                	test   %eax,%eax
    3ccb:	78 47                	js     0x3d14
    3ccd:	41 8d 45 01          	lea    0x1(%r13),%eax
    3cd1:	49 89 e8             	mov    %rbp,%r8
    3cd4:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    3cd8:	31 c0                	xor    %eax,%eax
    3cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3ce0:	8b 0b                	mov    (%rbx),%ecx
    3ce2:	41 8b 10             	mov    (%r8),%edx
    3ce5:	48 83 c3 04          	add    $0x4,%rbx
    3ce9:	49 83 c0 04          	add    $0x4,%r8
    3ced:	48 01 c8             	add    %rcx,%rax
    3cf0:	48 29 c2             	sub    %rax,%rdx
    3cf3:	48 89 d0             	mov    %rdx,%rax
    3cf6:	41 89 50 fc          	mov    %edx,-0x4(%r8)
    3cfa:	48 c1 e8 20          	shr    $0x20,%rax
    3cfe:	83 e0 01             	and    $0x1,%eax
    3d01:	48 39 df             	cmp    %rbx,%rdi
    3d04:	73 da                	jae    0x3ce0
    3d06:	48 63 c6             	movslq %esi,%rax
    3d09:	48 8d 44 85 00       	lea    0x0(%rbp,%rax,4),%rax
    3d0e:	8b 08                	mov    (%rax),%ecx
    3d10:	85 c9                	test   %ecx,%ecx
    3d12:	74 25                	je     0x3d39
    3d14:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
    3d18:	48 83 c4 38          	add    $0x38,%rsp
    3d1c:	5b                   	pop    %rbx
    3d1d:	5e                   	pop    %rsi
    3d1e:	5f                   	pop    %rdi
    3d1f:	5d                   	pop    %rbp
    3d20:	41 5c                	pop    %r12
    3d22:	41 5d                	pop    %r13
    3d24:	41 5e                	pop    %r14
    3d26:	41 5f                	pop    %r15
    3d28:	c3                   	ret    
    3d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3d30:	8b 10                	mov    (%rax),%edx
    3d32:	85 d2                	test   %edx,%edx
    3d34:	75 0c                	jne    0x3d42
    3d36:	83 ee 01             	sub    $0x1,%esi
    3d39:	48 83 e8 04          	sub    $0x4,%rax
    3d3d:	48 39 c5             	cmp    %rax,%rbp
    3d40:	72 ee                	jb     0x3d30
    3d42:	41 89 74 24 14       	mov    %esi,0x14(%r12)
    3d47:	eb cb                	jmp    0x3d14
    3d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3d50:	45 8b 03             	mov    (%r11),%r8d
    3d53:	45 85 c0             	test   %r8d,%r8d
    3d56:	75 0c                	jne    0x3d64
    3d58:	83 ee 01             	sub    $0x1,%esi
    3d5b:	49 83 eb 04          	sub    $0x4,%r11
    3d5f:	4c 39 dd             	cmp    %r11,%rbp
    3d62:	72 ec                	jb     0x3d50
    3d64:	41 89 74 24 14       	mov    %esi,0x14(%r12)
    3d69:	4c 89 f2             	mov    %r14,%rdx
    3d6c:	4c 89 e1             	mov    %r12,%rcx
    3d6f:	e8 cc 1f 00 00       	call   0x5d40
    3d74:	85 c0                	test   %eax,%eax
    3d76:	0f 89 51 ff ff ff    	jns    0x3ccd
    3d7c:	eb 96                	jmp    0x3d14
    3d7e:	90                   	nop
    3d7f:	90                   	nop
    3d80:	41 57                	push   %r15
    3d82:	41 56                	push   %r14
    3d84:	41 55                	push   %r13
    3d86:	41 54                	push   %r12
    3d88:	55                   	push   %rbp
    3d89:	57                   	push   %rdi
    3d8a:	56                   	push   %rsi
    3d8b:	53                   	push   %rbx
    3d8c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    3d93:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
    3d9a:	00 
    3d9b:	45 8b 21             	mov    (%r9),%r12d
    3d9e:	44 89 e0             	mov    %r12d,%eax
    3da1:	83 e0 cf             	and    $0xffffffcf,%eax
    3da4:	41 89 01             	mov    %eax,(%r9)
    3da7:	44 89 e0             	mov    %r12d,%eax
    3daa:	48 89 cd             	mov    %rcx,%rbp
    3dad:	89 d6                	mov    %edx,%esi
    3daf:	83 e0 07             	and    $0x7,%eax
    3db2:	4c 89 84 24 f0 00 00 	mov    %r8,0xf0(%rsp)
    3db9:	00 
    3dba:	4c 89 cf             	mov    %r9,%rdi
    3dbd:	83 f8 03             	cmp    $0x3,%eax
    3dc0:	0f 84 ba 02 00 00    	je     0x4080
    3dc6:	44 89 e3             	mov    %r12d,%ebx
    3dc9:	83 e3 04             	and    $0x4,%ebx
    3dcc:	89 5c 24 24          	mov    %ebx,0x24(%rsp)
    3dd0:	0f 85 1a 02 00 00    	jne    0x3ff0
    3dd6:	85 c0                	test   %eax,%eax
    3dd8:	0f 84 72 02 00 00    	je     0x4050
    3dde:	8d 50 ff             	lea    -0x1(%rax),%edx
    3de1:	31 c0                	xor    %eax,%eax
    3de3:	83 fa 01             	cmp    $0x1,%edx
    3de6:	0f 87 32 02 00 00    	ja     0x401e
    3dec:	44 8b 29             	mov    (%rcx),%r13d
    3def:	b8 20 00 00 00       	mov    $0x20,%eax
    3df4:	31 c9                	xor    %ecx,%ecx
    3df6:	41 83 fd 20          	cmp    $0x20,%r13d
    3dfa:	0f 8e b0 02 00 00    	jle    0x40b0
    3e00:	01 c0                	add    %eax,%eax
    3e02:	83 c1 01             	add    $0x1,%ecx
    3e05:	41 39 c5             	cmp    %eax,%r13d
    3e08:	7f f6                	jg     0x3e00
    3e0a:	e8 d1 18 00 00       	call   0x56e0
    3e0f:	45 8d 55 ff          	lea    -0x1(%r13),%r10d
    3e13:	4c 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%r8
    3e1a:	00 
    3e1b:	41 c1 fa 05          	sar    $0x5,%r10d
    3e1f:	49 89 c7             	mov    %rax,%r15
    3e22:	48 8d 50 18          	lea    0x18(%rax),%rdx
    3e26:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
    3e2d:	00 
    3e2e:	4d 63 d2             	movslq %r10d,%r10
    3e31:	49 c1 e2 02          	shl    $0x2,%r10
    3e35:	4d 01 d0             	add    %r10,%r8
    3e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3e3f:	00 
    3e40:	8b 08                	mov    (%rax),%ecx
    3e42:	48 83 c0 04          	add    $0x4,%rax
    3e46:	48 83 c2 04          	add    $0x4,%rdx
    3e4a:	89 4a fc             	mov    %ecx,-0x4(%rdx)
    3e4d:	49 39 c0             	cmp    %rax,%r8
    3e50:	73 ee                	jae    0x3e40
    3e52:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
    3e59:	00 
    3e5a:	49 83 c0 01          	add    $0x1,%r8
    3e5e:	49 8d 42 04          	lea    0x4(%r10),%rax
    3e62:	48 8d 53 01          	lea    0x1(%rbx),%rdx
    3e66:	49 39 d0             	cmp    %rdx,%r8
    3e69:	ba 04 00 00 00       	mov    $0x4,%edx
    3e6e:	48 0f 42 c2          	cmovb  %rdx,%rax
    3e72:	48 c1 f8 02          	sar    $0x2,%rax
    3e76:	89 c3                	mov    %eax,%ebx
    3e78:	49 8d 04 87          	lea    (%r15,%rax,4),%rax
    3e7c:	eb 0e                	jmp    0x3e8c
    3e7e:	66 90                	xchg   %ax,%ax
    3e80:	48 83 e8 04          	sub    $0x4,%rax
    3e84:	85 db                	test   %ebx,%ebx
    3e86:	0f 84 34 02 00 00    	je     0x40c0
    3e8c:	44 8b 58 14          	mov    0x14(%rax),%r11d
    3e90:	89 da                	mov    %ebx,%edx
    3e92:	83 eb 01             	sub    $0x1,%ebx
    3e95:	45 85 db             	test   %r11d,%r11d
    3e98:	74 e6                	je     0x3e80
    3e9a:	48 63 db             	movslq %ebx,%rbx
    3e9d:	41 89 57 14          	mov    %edx,0x14(%r15)
    3ea1:	41 0f bd 44 9f 18    	bsr    0x18(%r15,%rbx,4),%eax
    3ea7:	89 d3                	mov    %edx,%ebx
    3ea9:	c1 e3 05             	shl    $0x5,%ebx
    3eac:	83 f0 1f             	xor    $0x1f,%eax
    3eaf:	29 c3                	sub    %eax,%ebx
    3eb1:	4c 89 f9             	mov    %r15,%rcx
    3eb4:	e8 a7 16 00 00       	call   0x5560
    3eb9:	89 74 24 38          	mov    %esi,0x38(%rsp)
    3ebd:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    3ec1:	85 c0                	test   %eax,%eax
    3ec3:	0f 85 07 02 00 00    	jne    0x40d0
    3ec9:	45 8b 57 14          	mov    0x14(%r15),%r10d
    3ecd:	45 85 d2             	test   %r10d,%r10d
    3ed0:	0f 84 72 01 00 00    	je     0x4048
    3ed6:	48 8d 54 24 7c       	lea    0x7c(%rsp),%rdx
    3edb:	4c 89 f9             	mov    %r15,%rcx
    3ede:	e8 7d 20 00 00       	call   0x5f60
    3ee3:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    3ee7:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3eeb:	66 49 0f 7e c0       	movq   %xmm0,%r8
    3ef0:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3ef5:	49 c1 e8 20          	shr    $0x20,%r8
    3ef9:	01 d9                	add    %ebx,%ecx
    3efb:	89 c0                	mov    %eax,%eax
    3efd:	41 81 e0 ff ff 0f 00 	and    $0xfffff,%r8d
    3f04:	8d 51 ff             	lea    -0x1(%rcx),%edx
    3f07:	41 81 c8 00 00 f0 3f 	or     $0x3ff00000,%r8d
    3f0e:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
    3f12:	41 89 d1             	mov    %edx,%r9d
    3f15:	f2 0f 59 0d 9b 45 00 	mulsd  0x459b(%rip),%xmm1        # 0x84b8
    3f1c:	00 
    3f1d:	4d 89 c2             	mov    %r8,%r10
    3f20:	41 c1 f9 1f          	sar    $0x1f,%r9d
    3f24:	49 c1 e2 20          	shl    $0x20,%r10
    3f28:	45 89 cb             	mov    %r9d,%r11d
    3f2b:	4c 09 d0             	or     %r10,%rax
    3f2e:	41 31 d3             	xor    %edx,%r11d
    3f31:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3f36:	f2 0f 5c 05 62 45 00 	subsd  0x4562(%rip),%xmm0        # 0x84a0
    3f3d:	00 
    3f3e:	45 29 cb             	sub    %r9d,%r11d
    3f41:	f2 0f 59 05 5f 45 00 	mulsd  0x455f(%rip),%xmm0        # 0x84a8
    3f48:	00 
    3f49:	41 81 eb 35 04 00 00 	sub    $0x435,%r11d
    3f50:	f2 0f 58 05 58 45 00 	addsd  0x4558(%rip),%xmm0        # 0x84b0
    3f57:	00 
    3f58:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3f5c:	45 85 db             	test   %r11d,%r11d
    3f5f:	7e 15                	jle    0x3f76
    3f61:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3f65:	f2 41 0f 2a cb       	cvtsi2sd %r11d,%xmm1
    3f6a:	f2 0f 59 0d 4e 45 00 	mulsd  0x454e(%rip),%xmm1        # 0x84c0
    3f71:	00 
    3f72:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3f76:	66 0f ef f6          	pxor   %xmm6,%xmm6
    3f7a:	f2 44 0f 2c f0       	cvttsd2si %xmm0,%r14d
    3f7f:	66 0f 2f f0          	comisd %xmm0,%xmm6
    3f83:	0f 87 8f 07 00 00    	ja     0x4718
    3f89:	41 89 d3             	mov    %edx,%r11d
    3f8c:	89 c0                	mov    %eax,%eax
    3f8e:	41 c1 e3 14          	shl    $0x14,%r11d
    3f92:	45 01 d8             	add    %r11d,%r8d
    3f95:	49 c1 e0 20          	shl    $0x20,%r8
    3f99:	4c 09 c0             	or     %r8,%rax
    3f9c:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    3fa1:	49 89 c2             	mov    %rax,%r10
    3fa4:	89 d8                	mov    %ebx,%eax
    3fa6:	29 d0                	sub    %edx,%eax
    3fa8:	44 8d 58 ff          	lea    -0x1(%rax),%r11d
    3fac:	41 83 fe 16          	cmp    $0x16,%r14d
    3fb0:	0f 87 3a 01 00 00    	ja     0x40f0
    3fb6:	4c 8b 05 a3 47 00 00 	mov    0x47a3(%rip),%r8        # 0x8760
    3fbd:	49 63 d6             	movslq %r14d,%rdx
    3fc0:	66 49 0f 6e ea       	movq   %r10,%xmm5
    3fc5:	f2 41 0f 10 04 d0    	movsd  (%r8,%rdx,8),%xmm0
    3fcb:	66 0f 2f c5          	comisd %xmm5,%xmm0
    3fcf:	0f 86 cb 03 00 00    	jbe    0x43a0
    3fd5:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
    3fdc:	00 
    3fdd:	41 83 ee 01          	sub    $0x1,%r14d
    3fe1:	e9 12 01 00 00       	jmp    0x40f8
    3fe6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    3fed:	00 00 00 
    3ff0:	83 f8 04             	cmp    $0x4,%eax
    3ff3:	75 4b                	jne    0x4040
    3ff5:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    3ffc:	00 
    3ffd:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    4004:	00 
    4005:	41 b8 03 00 00 00    	mov    $0x3,%r8d
    400b:	48 8d 0d 87 44 00 00 	lea    0x4487(%rip),%rcx        # 0x8499
    4012:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
    4018:	e8 43 fb ff ff       	call   0x3b60
    401d:	90                   	nop
    401e:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
    4025:	00 
    4026:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    402d:	5b                   	pop    %rbx
    402e:	5e                   	pop    %rsi
    402f:	5f                   	pop    %rdi
    4030:	5d                   	pop    %rbp
    4031:	41 5c                	pop    %r12
    4033:	41 5d                	pop    %r13
    4035:	41 5e                	pop    %r14
    4037:	41 5f                	pop    %r15
    4039:	c3                   	ret    
    403a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4040:	31 c0                	xor    %eax,%eax
    4042:	eb da                	jmp    0x401e
    4044:	0f 1f 40 00          	nopl   0x0(%rax)
    4048:	4c 89 f9             	mov    %r15,%rcx
    404b:	e8 90 17 00 00       	call   0x57e0
    4050:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    4057:	00 
    4058:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    405f:	00 
    4060:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4066:	48 8d 0d 30 44 00 00 	lea    0x4430(%rip),%rcx        # 0x849d
    406d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    4073:	e8 e8 fa ff ff       	call   0x3b60
    4078:	eb a4                	jmp    0x401e
    407a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4080:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    4087:	00 
    4088:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    408f:	00 
    4090:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    4096:	48 8d 0d f3 43 00 00 	lea    0x43f3(%rip),%rcx        # 0x8490
    409d:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
    40a3:	e8 b8 fa ff ff       	call   0x3b60
    40a8:	e9 71 ff ff ff       	jmp    0x401e
    40ad:	0f 1f 00             	nopl   (%rax)
    40b0:	89 d9                	mov    %ebx,%ecx
    40b2:	e9 53 fd ff ff       	jmp    0x3e0a
    40b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    40be:	00 00 
    40c0:	41 c7 47 14 00 00 00 	movl   $0x0,0x14(%r15)
    40c7:	00 
    40c8:	e9 e4 fd ff ff       	jmp    0x3eb1
    40cd:	0f 1f 00             	nopl   (%rax)
    40d0:	89 c2                	mov    %eax,%edx
    40d2:	4c 89 f9             	mov    %r15,%rcx
    40d5:	e8 86 13 00 00       	call   0x5460
    40da:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    40de:	8d 14 30             	lea    (%rax,%rsi,1),%edx
    40e1:	29 c3                	sub    %eax,%ebx
    40e3:	89 54 24 38          	mov    %edx,0x38(%rsp)
    40e7:	e9 dd fd ff ff       	jmp    0x3ec9
    40ec:	0f 1f 40 00          	nopl   0x0(%rax)
    40f0:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
    40f7:	00 
    40f8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    40ff:	00 
    4100:	45 85 db             	test   %r11d,%r11d
    4103:	0f 88 f7 05 00 00    	js     0x4700
    4109:	45 85 f6             	test   %r14d,%r14d
    410c:	0f 89 a7 02 00 00    	jns    0x43b9
    4112:	44 89 f0             	mov    %r14d,%eax
    4115:	44 29 74 24 44       	sub    %r14d,0x44(%rsp)
    411a:	f7 d8                	neg    %eax
    411c:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    4121:	45 31 f6             	xor    %r14d,%r14d
    4124:	89 44 24 54          	mov    %eax,0x54(%rsp)
    4128:	83 bc 24 00 01 00 00 	cmpl   $0x9,0x100(%rsp)
    412f:	09 
    4130:	0f 87 9a 02 00 00    	ja     0x43d0
    4136:	83 bc 24 00 01 00 00 	cmpl   $0x5,0x100(%rsp)
    413d:	05 
    413e:	0f 8f fc 05 00 00    	jg     0x4740
    4144:	81 c1 fd 03 00 00    	add    $0x3fd,%ecx
    414a:	31 c0                	xor    %eax,%eax
    414c:	81 f9 f7 07 00 00    	cmp    $0x7f7,%ecx
    4152:	0f 96 c0             	setbe  %al
    4155:	89 44 24 40          	mov    %eax,0x40(%rsp)
    4159:	83 bc 24 00 01 00 00 	cmpl   $0x4,0x100(%rsp)
    4160:	04 
    4161:	0f 84 81 0b 00 00    	je     0x4ce8
    4167:	83 bc 24 00 01 00 00 	cmpl   $0x5,0x100(%rsp)
    416e:	05 
    416f:	0f 84 eb 09 00 00    	je     0x4b60
    4175:	83 bc 24 00 01 00 00 	cmpl   $0x2,0x100(%rsp)
    417c:	02 
    417d:	0f 85 e5 06 00 00    	jne    0x4868
    4183:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    418a:	00 
    418b:	44 8b 8c 24 08 01 00 	mov    0x108(%rsp),%r9d
    4192:	00 
    4193:	b9 01 00 00 00       	mov    $0x1,%ecx
    4198:	45 85 c9             	test   %r9d,%r9d
    419b:	0f 4f 8c 24 08 01 00 	cmovg  0x108(%rsp),%ecx
    41a2:	00 
    41a3:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    41a7:	89 4c 24 6c          	mov    %ecx,0x6c(%rsp)
    41ab:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
    41af:	89 8c 24 08 01 00 00 	mov    %ecx,0x108(%rsp)
    41b6:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
    41bb:	e8 60 f9 ff ff       	call   0x3b20
    41c0:	83 7c 24 28 0e       	cmpl   $0xe,0x28(%rsp)
    41c5:	44 0f b6 4c 24 40    	movzbl 0x40(%rsp),%r9d
    41cb:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    41d0:	0f 96 c0             	setbe  %al
    41d3:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
    41d8:	41 21 c1             	and    %eax,%r9d
    41db:	8b 45 0c             	mov    0xc(%rbp),%eax
    41de:	83 e8 01             	sub    $0x1,%eax
    41e1:	89 44 24 40          	mov    %eax,0x40(%rsp)
    41e5:	74 29                	je     0x4210
    41e7:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    41eb:	b8 02 00 00 00       	mov    $0x2,%eax
    41f0:	85 c9                	test   %ecx,%ecx
    41f2:	0f 49 c1             	cmovns %ecx,%eax
    41f5:	41 83 e4 08          	and    $0x8,%r12d
    41f9:	89 44 24 40          	mov    %eax,0x40(%rsp)
    41fd:	89 c1                	mov    %eax,%ecx
    41ff:	0f 84 e3 05 00 00    	je     0x47e8
    4205:	b8 03 00 00 00       	mov    $0x3,%eax
    420a:	29 c8                	sub    %ecx,%eax
    420c:	89 44 24 40          	mov    %eax,0x40(%rsp)
    4210:	45 84 c9             	test   %r9b,%r9b
    4213:	0f 84 cf 05 00 00    	je     0x47e8
    4219:	8b 44 24 40          	mov    0x40(%rsp),%eax
    421d:	0b 44 24 50          	or     0x50(%rsp),%eax
    4221:	0f 85 c1 05 00 00    	jne    0x47e8
    4227:	44 8b 44 24 68       	mov    0x68(%rsp),%r8d
    422c:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    4233:	00 
    4234:	f2 0f 10 44 24 60    	movsd  0x60(%rsp),%xmm0
    423a:	45 85 c0             	test   %r8d,%r8d
    423d:	74 12                	je     0x4251
    423f:	f2 0f 10 25 89 42 00 	movsd  0x4289(%rip),%xmm4        # 0x84d0
    4246:	00 
    4247:	66 0f 2f e0          	comisd %xmm0,%xmm4
    424b:	0f 87 54 0e 00 00    	ja     0x50a5
    4251:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4255:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    4259:	f2 0f 58 0d 87 42 00 	addsd  0x4287(%rip),%xmm1        # 0x84e8
    4260:	00 
    4261:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    4266:	66 48 0f 7e c8       	movq   %xmm1,%rax
    426b:	48 c1 ea 20          	shr    $0x20,%rdx
    426f:	89 c0                	mov    %eax,%eax
    4271:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
    4277:	48 c1 e2 20          	shl    $0x20,%rdx
    427b:	48 09 d0             	or     %rdx,%rax
    427e:	8b 54 24 28          	mov    0x28(%rsp),%edx
    4282:	85 d2                	test   %edx,%edx
    4284:	0f 84 26 05 00 00    	je     0x47b0
    428a:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
    428f:	45 31 e4             	xor    %r12d,%r12d
    4292:	48 8b 15 c7 44 00 00 	mov    0x44c7(%rip),%rdx        # 0x8760
    4299:	66 48 0f 6e d0       	movq   %rax,%xmm2
    429e:	41 8d 42 ff          	lea    -0x1(%r10),%eax
    42a2:	48 98                	cltq   
    42a4:	f2 0f 10 24 c2       	movsd  (%rdx,%rax,8),%xmm4
    42a9:	8b 44 24 48          	mov    0x48(%rsp),%eax
    42ad:	85 c0                	test   %eax,%eax
    42af:	0f 84 ff 0c 00 00    	je     0x4fb4
    42b5:	f2 0f 10 0d 53 42 00 	movsd  0x4253(%rip),%xmm1        # 0x8510
    42bc:	00 
    42bd:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    42c1:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    42c6:	f2 0f 5e cc          	divsd  %xmm4,%xmm1
    42ca:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    42ce:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    42d2:	66 0f ef d2          	pxor   %xmm2,%xmm2
    42d6:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
    42da:	83 c0 30             	add    $0x30,%eax
    42dd:	88 01                	mov    %al,(%rcx)
    42df:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    42e3:	66 0f 2f c8          	comisd %xmm0,%xmm1
    42e7:	0f 87 c9 0f 00 00    	ja     0x52b6
    42ed:	f2 0f 10 25 db 41 00 	movsd  0x41db(%rip),%xmm4        # 0x84d0
    42f4:	00 
    42f5:	f2 0f 10 1d db 41 00 	movsd  0x41db(%rip),%xmm3        # 0x84d8
    42fc:	00 
    42fd:	eb 41                	jmp    0x4340
    42ff:	90                   	nop
    4300:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4304:	83 c0 01             	add    $0x1,%eax
    4307:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    430b:	44 39 d0             	cmp    %r10d,%eax
    430e:	0f 8d c5 04 00 00    	jge    0x47d9
    4314:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    4318:	66 0f ef d2          	pxor   %xmm2,%xmm2
    431c:	48 83 c2 01          	add    $0x1,%rdx
    4320:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    4324:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    4328:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
    432c:	83 c0 30             	add    $0x30,%eax
    432f:	88 42 ff             	mov    %al,-0x1(%rdx)
    4332:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    4336:	66 0f 2f c8          	comisd %xmm0,%xmm1
    433a:	0f 87 76 0f 00 00    	ja     0x52b6
    4340:	66 0f 10 d4          	movupd %xmm4,%xmm2
    4344:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
    4348:	66 0f 2f ca          	comisd %xmm2,%xmm1
    434c:	76 b2                	jbe    0x4300
    434e:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    4353:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    4357:	49 89 d0             	mov    %rdx,%r8
    435a:	89 44 24 44          	mov    %eax,0x44(%rsp)
    435e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4363:	eb 13                	jmp    0x4378
    4365:	0f 1f 00             	nopl   (%rax)
    4368:	48 39 c2             	cmp    %rax,%rdx
    436b:	0f 84 95 0e 00 00    	je     0x5206
    4371:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    4375:	49 89 d0             	mov    %rdx,%r8
    4378:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
    437c:	80 f9 39             	cmp    $0x39,%cl
    437f:	74 e7                	je     0x4368
    4381:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
    4386:	83 c1 01             	add    $0x1,%ecx
    4389:	88 0a                	mov    %cl,(%rdx)
    438b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4392:	00 
    4393:	e9 15 03 00 00       	jmp    0x46ad
    4398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    439f:	00 
    43a0:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
    43a7:	00 
    43a8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    43af:	00 
    43b0:	45 85 db             	test   %r11d,%r11d
    43b3:	0f 88 47 03 00 00    	js     0x4700
    43b9:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    43be:	45 01 f3             	add    %r14d,%r11d
    43c1:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    43c8:	00 
    43c9:	e9 5a fd ff ff       	jmp    0x4128
    43ce:	66 90                	xchg   %ax,%ax
    43d0:	c7 84 24 00 01 00 00 	movl   $0x0,0x100(%rsp)
    43d7:	00 00 00 00 
    43db:	66 0f ef c0          	pxor   %xmm0,%xmm0
    43df:	44 89 5c 24 28       	mov    %r11d,0x28(%rsp)
    43e4:	f2 41 0f 2a c5       	cvtsi2sd %r13d,%xmm0
    43e9:	f2 0f 59 05 d7 40 00 	mulsd  0x40d7(%rip),%xmm0        # 0x84c8
    43f0:	00 
    43f1:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    43f5:	83 c1 03             	add    $0x3,%ecx
    43f8:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    43fc:	e8 1f f7 ff ff       	call   0x3b20
    4401:	44 8b 5c 24 28       	mov    0x28(%rsp),%r11d
    4406:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    440b:	8b 45 0c             	mov    0xc(%rbp),%eax
    440e:	83 e8 01             	sub    $0x1,%eax
    4411:	89 44 24 40          	mov    %eax,0x40(%rsp)
    4415:	0f 85 3d 03 00 00    	jne    0x4758
    441b:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    441f:	85 c9                	test   %ecx,%ecx
    4421:	0f 88 a6 0d 00 00    	js     0x51cd
    4427:	8b 44 24 50          	mov    0x50(%rsp),%eax
    442b:	3b 45 14             	cmp    0x14(%rbp),%eax
    442e:	0f 8e d6 08 00 00    	jle    0x4d0a
    4434:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
    443b:	00 00 00 00 
    443f:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
    4446:	ff 
    4447:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    444e:	ff 
    444f:	90                   	nop
    4450:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    4454:	41 29 dd             	sub    %ebx,%r13d
    4457:	8b 55 04             	mov    0x4(%rbp),%edx
    445a:	41 8d 45 01          	lea    0x1(%r13),%eax
    445e:	44 29 e9             	sub    %r13d,%ecx
    4461:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4465:	39 d1                	cmp    %edx,%ecx
    4467:	0f 8d 03 07 00 00    	jge    0x4b70
    446d:	8b 8c 24 00 01 00 00 	mov    0x100(%rsp),%ecx
    4474:	83 e9 03             	sub    $0x3,%ecx
    4477:	83 e1 fd             	and    $0xfffffffd,%ecx
    447a:	0f 84 f0 06 00 00    	je     0x4b70
    4480:	8b 44 24 38          	mov    0x38(%rsp),%eax
    4484:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
    4489:	29 d0                	sub    %edx,%eax
    448b:	83 c0 01             	add    $0x1,%eax
    448e:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
    4495:	01 
    4496:	0f 9f c1             	setg   %cl
    4499:	45 85 d2             	test   %r10d,%r10d
    449c:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    44a0:	0f 9f c2             	setg   %dl
    44a3:	84 d1                	test   %dl,%cl
    44a5:	74 09                	je     0x44b0
    44a7:	44 39 d0             	cmp    %r10d,%eax
    44aa:	0f 8f ce 06 00 00    	jg     0x4b7e
    44b0:	8b 54 24 44          	mov    0x44(%rsp),%edx
    44b4:	41 01 c3             	add    %eax,%r11d
    44b7:	44 8b 6c 24 54       	mov    0x54(%rsp),%r13d
    44bc:	01 d0                	add    %edx,%eax
    44be:	89 54 24 38          	mov    %edx,0x38(%rsp)
    44c2:	89 44 24 44          	mov    %eax,0x44(%rsp)
    44c6:	b9 01 00 00 00       	mov    $0x1,%ecx
    44cb:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
    44d0:	e8 2b 14 00 00       	call   0x5900
    44d5:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    44dc:	00 
    44dd:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
    44e2:	49 89 c4             	mov    %rax,%r12
    44e5:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    44e9:	85 c9                	test   %ecx,%ecx
    44eb:	7e 1f                	jle    0x450c
    44ed:	45 85 db             	test   %r11d,%r11d
    44f0:	7e 1a                	jle    0x450c
    44f2:	44 39 d9             	cmp    %r11d,%ecx
    44f5:	89 c8                	mov    %ecx,%eax
    44f7:	41 0f 4f c3          	cmovg  %r11d,%eax
    44fb:	29 44 24 44          	sub    %eax,0x44(%rsp)
    44ff:	29 c1                	sub    %eax,%ecx
    4501:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4505:	41 29 c3             	sub    %eax,%r11d
    4508:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
    450c:	8b 54 24 54          	mov    0x54(%rsp),%edx
    4510:	85 d2                	test   %edx,%edx
    4512:	74 53                	je     0x4567
    4514:	8b 44 24 48          	mov    0x48(%rsp),%eax
    4518:	85 c0                	test   %eax,%eax
    451a:	0f 84 c0 08 00 00    	je     0x4de0
    4520:	45 85 ed             	test   %r13d,%r13d
    4523:	7e 35                	jle    0x455a
    4525:	4c 89 e1             	mov    %r12,%rcx
    4528:	44 89 ea             	mov    %r13d,%edx
    452b:	44 89 5c 24 60       	mov    %r11d,0x60(%rsp)
    4530:	e8 4b 15 00 00       	call   0x5a80
    4535:	4c 89 fa             	mov    %r15,%rdx
    4538:	48 89 c1             	mov    %rax,%rcx
    453b:	49 89 c4             	mov    %rax,%r12
    453e:	e8 ed 13 00 00       	call   0x5930
    4543:	4c 89 f9             	mov    %r15,%rcx
    4546:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    454b:	e8 90 12 00 00       	call   0x57e0
    4550:	4c 8b 7c 24 58       	mov    0x58(%rsp),%r15
    4555:	44 8b 5c 24 60       	mov    0x60(%rsp),%r11d
    455a:	8b 54 24 54          	mov    0x54(%rsp),%edx
    455e:	44 29 ea             	sub    %r13d,%edx
    4561:	0f 85 a9 08 00 00    	jne    0x4e10
    4567:	b9 01 00 00 00       	mov    $0x1,%ecx
    456c:	44 89 5c 24 54       	mov    %r11d,0x54(%rsp)
    4571:	e8 8a 13 00 00       	call   0x5900
    4576:	83 fb 01             	cmp    $0x1,%ebx
    4579:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
    457e:	0f 94 c3             	sete   %bl
    4581:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
    4588:	01 
    4589:	49 89 c5             	mov    %rax,%r13
    458c:	0f 9e c0             	setle  %al
    458f:	21 c3                	and    %eax,%ebx
    4591:	45 85 f6             	test   %r14d,%r14d
    4594:	0f 8f 66 03 00 00    	jg     0x4900
    459a:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    45a1:	00 
    45a2:	84 db                	test   %bl,%bl
    45a4:	0f 85 96 0b 00 00    	jne    0x5140
    45aa:	be 1f 00 00 00       	mov    $0x1f,%esi
    45af:	45 85 f6             	test   %r14d,%r14d
    45b2:	0f 85 6b 03 00 00    	jne    0x4923
    45b8:	44 29 de             	sub    %r11d,%esi
    45bb:	44 8b 44 24 44       	mov    0x44(%rsp),%r8d
    45c0:	83 ee 04             	sub    $0x4,%esi
    45c3:	83 e6 1f             	and    $0x1f,%esi
    45c6:	41 01 f0             	add    %esi,%r8d
    45c9:	89 74 24 7c          	mov    %esi,0x7c(%rsp)
    45cd:	89 f2                	mov    %esi,%edx
    45cf:	45 85 c0             	test   %r8d,%r8d
    45d2:	7e 1c                	jle    0x45f0
    45d4:	44 89 c2             	mov    %r8d,%edx
    45d7:	4c 89 f9             	mov    %r15,%rcx
    45da:	44 89 5c 24 44       	mov    %r11d,0x44(%rsp)
    45df:	e8 2c 16 00 00       	call   0x5c10
    45e4:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
    45e8:	44 8b 5c 24 44       	mov    0x44(%rsp),%r11d
    45ed:	49 89 c7             	mov    %rax,%r15
    45f0:	44 01 da             	add    %r11d,%edx
    45f3:	85 d2                	test   %edx,%edx
    45f5:	7e 0b                	jle    0x4602
    45f7:	4c 89 e9             	mov    %r13,%rcx
    45fa:	e8 11 16 00 00       	call   0x5c10
    45ff:	49 89 c5             	mov    %rax,%r13
    4602:	8b 44 24 68          	mov    0x68(%rsp),%eax
    4606:	83 bc 24 00 01 00 00 	cmpl   $0x2,0x100(%rsp)
    460d:	02 
    460e:	40 0f 9f c5          	setg   %bpl
    4612:	85 c0                	test   %eax,%eax
    4614:	0f 85 a6 05 00 00    	jne    0x4bc0
    461a:	8b 44 24 28          	mov    0x28(%rsp),%eax
    461e:	85 c0                	test   %eax,%eax
    4620:	0f 8f 1a 03 00 00    	jg     0x4940
    4626:	40 84 ed             	test   %bpl,%bpl
    4629:	0f 84 11 03 00 00    	je     0x4940
    462f:	44 8b 74 24 28       	mov    0x28(%rsp),%r14d
    4634:	45 85 f6             	test   %r14d,%r14d
    4637:	0f 85 a1 02 00 00    	jne    0x48de
    463d:	4c 89 e9             	mov    %r13,%rcx
    4640:	45 31 c0             	xor    %r8d,%r8d
    4643:	ba 05 00 00 00       	mov    $0x5,%edx
    4648:	e8 03 12 00 00       	call   0x5850
    464d:	4c 89 f9             	mov    %r15,%rcx
    4650:	48 89 c2             	mov    %rax,%rdx
    4653:	49 89 c5             	mov    %rax,%r13
    4656:	e8 e5 16 00 00       	call   0x5d40
    465b:	85 c0                	test   %eax,%eax
    465d:	0f 8e 7b 02 00 00    	jle    0x48de
    4663:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4667:	83 c0 02             	add    $0x2,%eax
    466a:	89 44 24 44          	mov    %eax,0x44(%rsp)
    466e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4673:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
    4679:	c6 00 31             	movb   $0x31,(%rax)
    467c:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4683:	00 
    4684:	4c 89 e9             	mov    %r13,%rcx
    4687:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    468c:	e8 4f 11 00 00       	call   0x57e0
    4691:	4d 85 e4             	test   %r12,%r12
    4694:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4699:	74 12                	je     0x46ad
    469b:	4c 89 e1             	mov    %r12,%rcx
    469e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    46a3:	e8 38 11 00 00       	call   0x57e0
    46a8:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    46ad:	4c 89 f9             	mov    %r15,%rcx
    46b0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    46b5:	e8 26 11 00 00       	call   0x57e0
    46ba:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    46bf:	8b 5c 24 44          	mov    0x44(%rsp),%ebx
    46c3:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    46ca:	00 
    46cb:	48 83 bc 24 18 01 00 	cmpq   $0x0,0x118(%rsp)
    46d2:	00 00 
    46d4:	c6 06 00             	movb   $0x0,(%rsi)
    46d7:	89 18                	mov    %ebx,(%rax)
    46d9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    46de:	74 0b                	je     0x46eb
    46e0:	48 8b 9c 24 18 01 00 	mov    0x118(%rsp),%rbx
    46e7:	00 
    46e8:	48 89 33             	mov    %rsi,(%rbx)
    46eb:	8b 74 24 24          	mov    0x24(%rsp),%esi
    46ef:	09 37                	or     %esi,(%rdi)
    46f1:	e9 28 f9 ff ff       	jmp    0x401e
    46f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    46fd:	00 00 00 
    4700:	ba 01 00 00 00       	mov    $0x1,%edx
    4705:	45 31 db             	xor    %r11d,%r11d
    4708:	29 c2                	sub    %eax,%edx
    470a:	89 54 24 44          	mov    %edx,0x44(%rsp)
    470e:	e9 f6 f9 ff ff       	jmp    0x4109
    4713:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4718:	66 0f ef c9          	pxor   %xmm1,%xmm1
    471c:	f2 41 0f 2a ce       	cvtsi2sd %r14d,%xmm1
    4721:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    4725:	7a 06                	jp     0x472d
    4727:	0f 84 5c f8 ff ff    	je     0x3f89
    472d:	41 83 ee 01          	sub    $0x1,%r14d
    4731:	e9 53 f8 ff ff       	jmp    0x3f89
    4736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    473d:	00 00 00 
    4740:	83 ac 24 00 01 00 00 	subl   $0x4,0x100(%rsp)
    4747:	04 
    4748:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
    474f:	00 
    4750:	e9 04 fa ff ff       	jmp    0x4159
    4755:	0f 1f 00             	nopl   (%rax)
    4758:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
    475f:	00 00 00 00 
    4763:	45 31 c9             	xor    %r9d,%r9d
    4766:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    476d:	00 
    476e:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
    4775:	ff 
    4776:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    477d:	ff 
    477e:	e9 64 fa ff ff       	jmp    0x41e7
    4783:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4787:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    478b:	f2 0f 58 0d 55 3d 00 	addsd  0x3d55(%rip),%xmm1        # 0x84e8
    4792:	00 
    4793:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    4798:	66 48 0f 7e c8       	movq   %xmm1,%rax
    479d:	48 c1 ea 20          	shr    $0x20,%rdx
    47a1:	89 c0                	mov    %eax,%eax
    47a3:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
    47a9:	48 c1 e2 20          	shl    $0x20,%rdx
    47ad:	48 09 d0             	or     %rdx,%rax
    47b0:	f2 0f 5c 05 38 3d 00 	subsd  0x3d38(%rip),%xmm0        # 0x84f0
    47b7:	00 
    47b8:	66 48 0f 6e c8       	movq   %rax,%xmm1
    47bd:	66 0f 2f c1          	comisd %xmm1,%xmm0
    47c1:	0f 87 9d 09 00 00    	ja     0x5164
    47c7:	66 0f 57 0d 31 3d 00 	xorpd  0x3d31(%rip),%xmm1        # 0x8500
    47ce:	00 
    47cf:	66 0f 2f c8          	comisd %xmm0,%xmm1
    47d3:	0f 87 ff 00 00 00    	ja     0x48d8
    47d9:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
    47e0:	00 
    47e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    47e8:	44 8b 4c 24 38       	mov    0x38(%rsp),%r9d
    47ed:	45 85 c9             	test   %r9d,%r9d
    47f0:	0f 88 ba 00 00 00    	js     0x48b0
    47f6:	8b 44 24 50          	mov    0x50(%rsp),%eax
    47fa:	39 45 14             	cmp    %eax,0x14(%rbp)
    47fd:	0f 8c ad 00 00 00    	jl     0x48b0
    4803:	48 8b 15 56 3f 00 00 	mov    0x3f56(%rip),%rdx        # 0x8760
    480a:	44 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8d
    4811:	00 
    4812:	48 98                	cltq   
    4814:	48 89 c6             	mov    %rax,%rsi
    4817:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    481c:	45 85 c0             	test   %r8d,%r8d
    481f:	0f 89 03 05 00 00    	jns    0x4d28
    4825:	8b 44 24 28          	mov    0x28(%rsp),%eax
    4829:	85 c0                	test   %eax,%eax
    482b:	0f 8f f7 04 00 00    	jg     0x4d28
    4831:	0f 85 a1 00 00 00    	jne    0x48d8
    4837:	f2 0f 59 15 b1 3c 00 	mulsd  0x3cb1(%rip),%xmm2        # 0x84f0
    483e:	00 
    483f:	66 0f 2f 54 24 60    	comisd 0x60(%rsp),%xmm2
    4845:	0f 83 8d 00 00 00    	jae    0x48d8
    484b:	83 c6 02             	add    $0x2,%esi
    484e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4853:	45 31 ed             	xor    %r13d,%r13d
    4856:	45 31 e4             	xor    %r12d,%r12d
    4859:	89 74 24 44          	mov    %esi,0x44(%rsp)
    485d:	e9 11 fe ff ff       	jmp    0x4673
    4862:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4868:	83 bc 24 00 01 00 00 	cmpl   $0x3,0x100(%rsp)
    486f:	03 
    4870:	0f 85 65 fb ff ff    	jne    0x43db
    4876:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    487d:	00 
    487e:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4882:	03 84 24 08 01 00 00 	add    0x108(%rsp),%eax
    4889:	89 44 24 6c          	mov    %eax,0x6c(%rsp)
    488d:	83 c0 01             	add    $0x1,%eax
    4890:	89 44 24 28          	mov    %eax,0x28(%rsp)
    4894:	85 c0                	test   %eax,%eax
    4896:	0f 8e 5c 04 00 00    	jle    0x4cf8
    489c:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    48a0:	89 c1                	mov    %eax,%ecx
    48a2:	e9 0f f9 ff ff       	jmp    0x41b6
    48a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    48ae:	00 00 
    48b0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    48b4:	85 c9                	test   %ecx,%ecx
    48b6:	0f 85 94 fb ff ff    	jne    0x4450
    48bc:	8b 44 24 44          	mov    0x44(%rsp),%eax
    48c0:	44 8b 6c 24 54       	mov    0x54(%rsp),%r13d
    48c5:	45 31 e4             	xor    %r12d,%r12d
    48c8:	89 44 24 38          	mov    %eax,0x38(%rsp)
    48cc:	e9 14 fc ff ff       	jmp    0x44e5
    48d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    48d8:	45 31 ed             	xor    %r13d,%r13d
    48db:	45 31 e4             	xor    %r12d,%r12d
    48de:	8b 84 24 08 01 00 00 	mov    0x108(%rsp),%eax
    48e5:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    48ec:	00 
    48ed:	f7 d8                	neg    %eax
    48ef:	89 44 24 44          	mov    %eax,0x44(%rsp)
    48f3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    48f8:	e9 87 fd ff ff       	jmp    0x4684
    48fd:	0f 1f 00             	nopl   (%rax)
    4900:	4c 89 e9             	mov    %r13,%rcx
    4903:	44 89 f2             	mov    %r14d,%edx
    4906:	e8 75 11 00 00       	call   0x5a80
    490b:	84 db                	test   %bl,%bl
    490d:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
    4912:	49 89 c5             	mov    %rax,%r13
    4915:	0f 85 a2 08 00 00    	jne    0x51bd
    491b:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    4922:	00 
    4923:	41 8b 45 14          	mov    0x14(%r13),%eax
    4927:	83 e8 01             	sub    $0x1,%eax
    492a:	48 98                	cltq   
    492c:	41 0f bd 74 85 18    	bsr    0x18(%r13,%rax,4),%esi
    4932:	83 f6 1f             	xor    $0x1f,%esi
    4935:	e9 7e fc ff ff       	jmp    0x45b8
    493a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4940:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4944:	8b 6c 24 48          	mov    0x48(%rsp),%ebp
    4948:	83 c0 01             	add    $0x1,%eax
    494b:	89 44 24 44          	mov    %eax,0x44(%rsp)
    494f:	85 ed                	test   %ebp,%ebp
    4951:	0f 84 c9 02 00 00    	je     0x4c20
    4957:	8b 54 24 38          	mov    0x38(%rsp),%edx
    495b:	01 f2                	add    %esi,%edx
    495d:	85 d2                	test   %edx,%edx
    495f:	7e 0b                	jle    0x496c
    4961:	4c 89 e1             	mov    %r12,%rcx
    4964:	e8 a7 12 00 00       	call   0x5c10
    4969:	49 89 c4             	mov    %rax,%r12
    496c:	8b 5c 24 54          	mov    0x54(%rsp),%ebx
    4970:	4d 89 e6             	mov    %r12,%r14
    4973:	85 db                	test   %ebx,%ebx
    4975:	0f 85 88 07 00 00    	jne    0x5103
    497b:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4980:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4987:	00 
    4988:	48 89 bc 24 f8 00 00 	mov    %rdi,0xf8(%rsp)
    498f:	00 
    4990:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    4995:	e9 aa 00 00 00       	jmp    0x4a44
    499a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    49a0:	48 89 c1             	mov    %rax,%rcx
    49a3:	e8 38 0e 00 00       	call   0x57e0
    49a8:	b8 01 00 00 00       	mov    $0x1,%eax
    49ad:	85 f6                	test   %esi,%esi
    49af:	0f 88 f0 04 00 00    	js     0x4ea5
    49b5:	0b b4 24 00 01 00 00 	or     0x100(%rsp),%esi
    49bc:	75 11                	jne    0x49cf
    49be:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
    49c5:	00 
    49c6:	f6 06 01             	testb  $0x1,(%rsi)
    49c9:	0f 84 d6 04 00 00    	je     0x4ea5
    49cf:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    49d4:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
    49d8:	85 c0                	test   %eax,%eax
    49da:	7e 0b                	jle    0x49e7
    49dc:	83 7c 24 40 02       	cmpl   $0x2,0x40(%rsp)
    49e1:	0f 85 95 07 00 00    	jne    0x517c
    49e7:	88 5d ff             	mov    %bl,-0x1(%rbp)
    49ea:	8b 44 24 28          	mov    0x28(%rsp),%eax
    49ee:	39 44 24 7c          	cmp    %eax,0x7c(%rsp)
    49f2:	0f 84 b2 07 00 00    	je     0x51aa
    49f8:	4c 89 f9             	mov    %r15,%rcx
    49fb:	45 31 c0             	xor    %r8d,%r8d
    49fe:	ba 0a 00 00 00       	mov    $0xa,%edx
    4a03:	e8 48 0e 00 00       	call   0x5850
    4a08:	45 31 c0             	xor    %r8d,%r8d
    4a0b:	ba 0a 00 00 00       	mov    $0xa,%edx
    4a10:	4c 89 e1             	mov    %r12,%rcx
    4a13:	49 89 c7             	mov    %rax,%r15
    4a16:	4d 39 f4             	cmp    %r14,%r12
    4a19:	0f 84 29 01 00 00    	je     0x4b48
    4a1f:	e8 2c 0e 00 00       	call   0x5850
    4a24:	4c 89 f1             	mov    %r14,%rcx
    4a27:	45 31 c0             	xor    %r8d,%r8d
    4a2a:	ba 0a 00 00 00       	mov    $0xa,%edx
    4a2f:	49 89 c4             	mov    %rax,%r12
    4a32:	e8 19 0e 00 00       	call   0x5850
    4a37:	49 89 c6             	mov    %rax,%r14
    4a3a:	83 44 24 7c 01       	addl   $0x1,0x7c(%rsp)
    4a3f:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
    4a44:	4c 89 ea             	mov    %r13,%rdx
    4a47:	4c 89 f9             	mov    %r15,%rcx
    4a4a:	e8 c1 f1 ff ff       	call   0x3c10
    4a4f:	4c 89 e2             	mov    %r12,%rdx
    4a52:	4c 89 f9             	mov    %r15,%rcx
    4a55:	89 c7                	mov    %eax,%edi
    4a57:	8d 58 30             	lea    0x30(%rax),%ebx
    4a5a:	e8 e1 12 00 00       	call   0x5d40
    4a5f:	4c 89 f2             	mov    %r14,%rdx
    4a62:	4c 89 e9             	mov    %r13,%rcx
    4a65:	89 c6                	mov    %eax,%esi
    4a67:	e8 24 13 00 00       	call   0x5d90
    4a6c:	44 8b 58 10          	mov    0x10(%rax),%r11d
    4a70:	45 85 db             	test   %r11d,%r11d
    4a73:	0f 85 27 ff ff ff    	jne    0x49a0
    4a79:	48 89 c2             	mov    %rax,%rdx
    4a7c:	4c 89 f9             	mov    %r15,%rcx
    4a7f:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    4a84:	e8 b7 12 00 00       	call   0x5d40
    4a89:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
    4a8e:	89 c5                	mov    %eax,%ebp
    4a90:	4c 89 c1             	mov    %r8,%rcx
    4a93:	e8 48 0d 00 00       	call   0x57e0
    4a98:	89 e8                	mov    %ebp,%eax
    4a9a:	0b 84 24 00 01 00 00 	or     0x100(%rsp),%eax
    4aa1:	0f 85 ac 09 00 00    	jne    0x5453
    4aa7:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
    4aae:	00 
    4aaf:	8b 12                	mov    (%rdx),%edx
    4ab1:	89 54 24 48          	mov    %edx,0x48(%rsp)
    4ab5:	83 e2 01             	and    $0x1,%edx
    4ab8:	0b 54 24 40          	or     0x40(%rsp),%edx
    4abc:	0f 85 eb fe ff ff    	jne    0x49ad
    4ac2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    4ac7:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    4acb:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    4ad2:	00 
    4ad3:	48 8d 6a 01          	lea    0x1(%rdx),%rbp
    4ad7:	83 fb 39             	cmp    $0x39,%ebx
    4ada:	0f 84 99 07 00 00    	je     0x5279
    4ae0:	85 f6                	test   %esi,%esi
    4ae2:	0f 8e 48 09 00 00    	jle    0x5430
    4ae8:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
    4aec:	b8 20 00 00 00       	mov    $0x20,%eax
    4af1:	83 c3 31             	add    $0x31,%ebx
    4af4:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    4af9:	89 44 24 24          	mov    %eax,0x24(%rsp)
    4afd:	88 1e                	mov    %bl,(%rsi)
    4aff:	4c 89 e6             	mov    %r12,%rsi
    4b02:	4d 89 f4             	mov    %r14,%r12
    4b05:	0f 1f 00             	nopl   (%rax)
    4b08:	4c 89 e9             	mov    %r13,%rcx
    4b0b:	e8 d0 0c 00 00       	call   0x57e0
    4b10:	4d 85 e4             	test   %r12,%r12
    4b13:	0f 84 e7 02 00 00    	je     0x4e00
    4b19:	48 85 f6             	test   %rsi,%rsi
    4b1c:	0f 84 85 07 00 00    	je     0x52a7
    4b22:	4c 39 e6             	cmp    %r12,%rsi
    4b25:	0f 84 7c 07 00 00    	je     0x52a7
    4b2b:	48 89 f1             	mov    %rsi,%rcx
    4b2e:	e8 ad 0c 00 00       	call   0x57e0
    4b33:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4b38:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    4b3d:	e9 59 fb ff ff       	jmp    0x469b
    4b42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4b48:	e8 03 0d 00 00       	call   0x5850
    4b4d:	49 89 c4             	mov    %rax,%r12
    4b50:	49 89 c6             	mov    %rax,%r14
    4b53:	e9 e2 fe ff ff       	jmp    0x4a3a
    4b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4b5f:	00 
    4b60:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    4b67:	00 
    4b68:	e9 11 fd ff ff       	jmp    0x487e
    4b6d:	0f 1f 00             	nopl   (%rax)
    4b70:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
    4b77:	01 
    4b78:	0f 8e 32 f9 ff ff    	jle    0x44b0
    4b7e:	8b 44 24 28          	mov    0x28(%rsp),%eax
    4b82:	8b 4c 24 54          	mov    0x54(%rsp),%ecx
    4b86:	83 e8 01             	sub    $0x1,%eax
    4b89:	39 c1                	cmp    %eax,%ecx
    4b8b:	0f 8c 99 02 00 00    	jl     0x4e2a
    4b91:	29 c1                	sub    %eax,%ecx
    4b93:	41 89 cd             	mov    %ecx,%r13d
    4b96:	8b 44 24 28          	mov    0x28(%rsp),%eax
    4b9a:	85 c0                	test   %eax,%eax
    4b9c:	0f 88 ea 04 00 00    	js     0x508c
    4ba2:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    4ba6:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    4baa:	41 01 c3             	add    %eax,%r11d
    4bad:	01 c8                	add    %ecx,%eax
    4baf:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
    4bb3:	89 44 24 44          	mov    %eax,0x44(%rsp)
    4bb7:	e9 0a f9 ff ff       	jmp    0x44c6
    4bbc:	0f 1f 40 00          	nopl   0x0(%rax)
    4bc0:	4c 89 ea             	mov    %r13,%rdx
    4bc3:	4c 89 f9             	mov    %r15,%rcx
    4bc6:	e8 75 11 00 00       	call   0x5d40
    4bcb:	85 c0                	test   %eax,%eax
    4bcd:	0f 89 47 fa ff ff    	jns    0x461a
    4bd3:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4bd7:	45 31 c0             	xor    %r8d,%r8d
    4bda:	4c 89 f9             	mov    %r15,%rcx
    4bdd:	ba 0a 00 00 00       	mov    $0xa,%edx
    4be2:	8d 58 ff             	lea    -0x1(%rax),%ebx
    4be5:	e8 66 0c 00 00       	call   0x5850
    4bea:	49 89 c7             	mov    %rax,%r15
    4bed:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    4bf1:	85 c0                	test   %eax,%eax
    4bf3:	0f 9e c0             	setle  %al
    4bf6:	21 c5                	and    %eax,%ebp
    4bf8:	8b 44 24 48          	mov    0x48(%rsp),%eax
    4bfc:	85 c0                	test   %eax,%eax
    4bfe:	0f 85 34 07 00 00    	jne    0x5338
    4c04:	40 84 ed             	test   %bpl,%bpl
    4c07:	0f 85 89 06 00 00    	jne    0x5296
    4c0d:	8b 44 24 50          	mov    0x50(%rsp),%eax
    4c11:	89 44 24 44          	mov    %eax,0x44(%rsp)
    4c15:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    4c19:	89 44 24 28          	mov    %eax,0x28(%rsp)
    4c1d:	0f 1f 00             	nopl   (%rax)
    4c20:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4c27:	00 
    4c28:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
    4c2d:	8b 74 24 28          	mov    0x28(%rsp),%esi
    4c31:	eb 1d                	jmp    0x4c50
    4c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4c38:	4c 89 f9             	mov    %r15,%rcx
    4c3b:	45 31 c0             	xor    %r8d,%r8d
    4c3e:	ba 0a 00 00 00       	mov    $0xa,%edx
    4c43:	e8 08 0c 00 00       	call   0x5850
    4c48:	83 44 24 7c 01       	addl   $0x1,0x7c(%rsp)
    4c4d:	49 89 c7             	mov    %rax,%r15
    4c50:	4c 89 ea             	mov    %r13,%rdx
    4c53:	4c 89 f9             	mov    %r15,%rcx
    4c56:	48 83 c5 01          	add    $0x1,%rbp
    4c5a:	e8 b1 ef ff ff       	call   0x3c10
    4c5f:	8d 58 30             	lea    0x30(%rax),%ebx
    4c62:	88 5d ff             	mov    %bl,-0x1(%rbp)
    4c65:	39 74 24 7c          	cmp    %esi,0x7c(%rsp)
    4c69:	7c cd                	jl     0x4c38
    4c6b:	31 f6                	xor    %esi,%esi
    4c6d:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    4c71:	85 c9                	test   %ecx,%ecx
    4c73:	0f 84 e0 01 00 00    	je     0x4e59
    4c79:	41 8b 47 14          	mov    0x14(%r15),%eax
    4c7d:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    4c81:	83 f9 02             	cmp    $0x2,%ecx
    4c84:	0f 84 05 02 00 00    	je     0x4e8f
    4c8a:	83 f8 01             	cmp    $0x1,%eax
    4c8d:	7f 08                	jg     0x4c97
    4c8f:	41 8b 4f 18          	mov    0x18(%r15),%ecx
    4c93:	85 c9                	test   %ecx,%ecx
    4c95:	74 40                	je     0x4cd7
    4c97:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    4c9c:	eb 12                	jmp    0x4cb0
    4c9e:	66 90                	xchg   %ax,%ax
    4ca0:	48 39 c8             	cmp    %rcx,%rax
    4ca3:	0f 84 96 01 00 00    	je     0x4e3f
    4ca9:	0f b6 50 ff          	movzbl -0x1(%rax),%edx
    4cad:	48 89 c5             	mov    %rax,%rbp
    4cb0:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
    4cb4:	80 fa 39             	cmp    $0x39,%dl
    4cb7:	74 e7                	je     0x4ca0
    4cb9:	83 c2 01             	add    $0x1,%edx
    4cbc:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4cc3:	00 
    4cc4:	88 10                	mov    %dl,(%rax)
    4cc6:	e9 3d fe ff ff       	jmp    0x4b08
    4ccb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4cd0:	0f b6 55 fe          	movzbl -0x2(%rbp),%edx
    4cd4:	48 89 c5             	mov    %rax,%rbp
    4cd7:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
    4cdb:	80 fa 30             	cmp    $0x30,%dl
    4cde:	74 f0                	je     0x4cd0
    4ce0:	e9 23 fe ff ff       	jmp    0x4b08
    4ce5:	0f 1f 00             	nopl   (%rax)
    4ce8:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
    4cef:	00 
    4cf0:	e9 96 f4 ff ff       	jmp    0x418b
    4cf5:	0f 1f 00             	nopl   (%rax)
    4cf8:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4cff:	00 
    4d00:	b9 01 00 00 00       	mov    $0x1,%ecx
    4d05:	e9 ac f4 ff ff       	jmp    0x41b6
    4d0a:	48 63 44 24 50       	movslq 0x50(%rsp),%rax
    4d0f:	48 8b 15 4a 3a 00 00 	mov    0x3a4a(%rip),%rdx        # 0x8760
    4d16:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    4d1d:	ff 
    4d1e:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    4d23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4d28:	f2 0f 10 44 24 60    	movsd  0x60(%rsp),%xmm0
    4d2e:	44 8b 44 24 50       	mov    0x50(%rsp),%r8d
    4d33:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4d3a:	00 
    4d3b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    4d40:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4d44:	41 83 c0 01          	add    $0x1,%r8d
    4d48:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    4d4c:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
    4d51:	48 8d 56 01          	lea    0x1(%rsi),%rdx
    4d55:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    4d59:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4d5d:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    4d61:	8d 48 30             	lea    0x30(%rax),%ecx
    4d64:	88 0e                	mov    %cl,(%rsi)
    4d66:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4d6a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    4d6e:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    4d72:	0f 8b 64 06 00 00    	jnp    0x53dc
    4d78:	f2 0f 10 1d 58 37 00 	movsd  0x3758(%rip),%xmm3        # 0x84d8
    4d7f:	00 
    4d80:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
    4d84:	3b 4c 24 28          	cmp    0x28(%rsp),%ecx
    4d88:	0f 84 fa 01 00 00    	je     0x4f88
    4d8e:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    4d92:	83 c1 01             	add    $0x1,%ecx
    4d95:	48 83 c2 01          	add    $0x1,%rdx
    4d99:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    4d9d:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4da1:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    4da5:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    4da9:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4dad:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    4db1:	8d 48 30             	lea    0x30(%rax),%ecx
    4db4:	88 4a ff             	mov    %cl,-0x1(%rdx)
    4db7:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4dbb:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    4dbf:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    4dc3:	7a bb                	jp     0x4d80
    4dc5:	75 b9                	jne    0x4d80
    4dc7:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4dcc:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    4dd1:	e9 d7 f8 ff ff       	jmp    0x46ad
    4dd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4ddd:	00 00 00 
    4de0:	8b 54 24 54          	mov    0x54(%rsp),%edx
    4de4:	4c 89 f9             	mov    %r15,%rcx
    4de7:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
    4dec:	e8 8f 0c 00 00       	call   0x5a80
    4df1:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
    4df6:	49 89 c7             	mov    %rax,%r15
    4df9:	e9 69 f7 ff ff       	jmp    0x4567
    4dfe:	66 90                	xchg   %ax,%ax
    4e00:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4e05:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    4e0a:	e9 9e f8 ff ff       	jmp    0x46ad
    4e0f:	90                   	nop
    4e10:	4c 89 f9             	mov    %r15,%rcx
    4e13:	44 89 5c 24 54       	mov    %r11d,0x54(%rsp)
    4e18:	e8 63 0c 00 00       	call   0x5a80
    4e1d:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
    4e22:	49 89 c7             	mov    %rax,%r15
    4e25:	e9 3d f7 ff ff       	jmp    0x4567
    4e2a:	89 c2                	mov    %eax,%edx
    4e2c:	2b 54 24 54          	sub    0x54(%rsp),%edx
    4e30:	45 31 ed             	xor    %r13d,%r13d
    4e33:	89 44 24 54          	mov    %eax,0x54(%rsp)
    4e37:	41 01 d6             	add    %edx,%r14d
    4e3a:	e9 57 fd ff ff       	jmp    0x4b96
    4e3f:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4e44:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
    4e49:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4e50:	00 
    4e51:	c6 00 31             	movb   $0x31,(%rax)
    4e54:	e9 af fc ff ff       	jmp    0x4b08
    4e59:	4c 89 f9             	mov    %r15,%rcx
    4e5c:	ba 01 00 00 00       	mov    $0x1,%edx
    4e61:	e8 aa 0d 00 00       	call   0x5c10
    4e66:	4c 89 ea             	mov    %r13,%rdx
    4e69:	48 89 c1             	mov    %rax,%rcx
    4e6c:	49 89 c7             	mov    %rax,%r15
    4e6f:	e8 cc 0e 00 00       	call   0x5d40
    4e74:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    4e78:	85 c0                	test   %eax,%eax
    4e7a:	0f 8f 17 fe ff ff    	jg     0x4c97
    4e80:	75 09                	jne    0x4e8b
    4e82:	83 e3 01             	and    $0x1,%ebx
    4e85:	0f 85 0c fe ff ff    	jne    0x4c97
    4e8b:	41 8b 47 14          	mov    0x14(%r15),%eax
    4e8f:	83 f8 01             	cmp    $0x1,%eax
    4e92:	0f 8e d1 04 00 00    	jle    0x5369
    4e98:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    4e9f:	00 
    4ea0:	e9 32 fe ff ff       	jmp    0x4cd7
    4ea5:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    4eaa:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
    4eaf:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    4eb3:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    4eba:	00 
    4ebb:	48 83 c6 01          	add    $0x1,%rsi
    4ebf:	48 89 f5             	mov    %rsi,%rbp
    4ec2:	45 85 d2             	test   %r10d,%r10d
    4ec5:	0f 84 55 03 00 00    	je     0x5220
    4ecb:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
    4ed0:	0f 8e bd 04 00 00    	jle    0x5393
    4ed6:	83 7c 24 40 02       	cmpl   $0x2,0x40(%rsp)
    4edb:	0f 84 85 03 00 00    	je     0x5266
    4ee1:	48 89 bc 24 f8 00 00 	mov    %rdi,0xf8(%rsp)
    4ee8:	00 
    4ee9:	4c 89 f7             	mov    %r14,%rdi
    4eec:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
    4ef1:	eb 4d                	jmp    0x4f40
    4ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4ef8:	88 5e ff             	mov    %bl,-0x1(%rsi)
    4efb:	45 31 c0             	xor    %r8d,%r8d
    4efe:	48 89 f9             	mov    %rdi,%rcx
    4f01:	ba 0a 00 00 00       	mov    $0xa,%edx
    4f06:	49 89 f6             	mov    %rsi,%r14
    4f09:	e8 42 09 00 00       	call   0x5850
    4f0e:	49 39 fc             	cmp    %rdi,%r12
    4f11:	4c 89 f9             	mov    %r15,%rcx
    4f14:	ba 0a 00 00 00       	mov    $0xa,%edx
    4f19:	4c 0f 44 e0          	cmove  %rax,%r12
    4f1d:	45 31 c0             	xor    %r8d,%r8d
    4f20:	48 89 c5             	mov    %rax,%rbp
    4f23:	48 83 c6 01          	add    $0x1,%rsi
    4f27:	e8 24 09 00 00       	call   0x5850
    4f2c:	4c 89 ea             	mov    %r13,%rdx
    4f2f:	48 89 ef             	mov    %rbp,%rdi
    4f32:	48 89 c1             	mov    %rax,%rcx
    4f35:	49 89 c7             	mov    %rax,%r15
    4f38:	e8 d3 ec ff ff       	call   0x3c10
    4f3d:	8d 58 30             	lea    0x30(%rax),%ebx
    4f40:	48 89 fa             	mov    %rdi,%rdx
    4f43:	4c 89 e9             	mov    %r13,%rcx
    4f46:	48 89 f5             	mov    %rsi,%rbp
    4f49:	e8 f2 0d 00 00       	call   0x5d40
    4f4e:	85 c0                	test   %eax,%eax
    4f50:	7f a6                	jg     0x4ef8
    4f52:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
    4f57:	49 89 fe             	mov    %rdi,%r14
    4f5a:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    4f61:	00 
    4f62:	83 fb 39             	cmp    $0x39,%ebx
    4f65:	0f 84 0e 03 00 00    	je     0x5279
    4f6b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    4f72:	00 
    4f73:	4c 89 e6             	mov    %r12,%rsi
    4f76:	83 c3 01             	add    $0x1,%ebx
    4f79:	4d 89 f4             	mov    %r14,%r12
    4f7c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    4f81:	88 18                	mov    %bl,(%rax)
    4f83:	e9 80 fb ff ff       	jmp    0x4b08
    4f88:	8b 74 24 40          	mov    0x40(%rsp),%esi
    4f8c:	85 f6                	test   %esi,%esi
    4f8e:	0f 84 68 03 00 00    	je     0x52fc
    4f94:	83 fe 01             	cmp    $0x1,%esi
    4f97:	0f 84 e5 03 00 00    	je     0x5382
    4f9d:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    4fa2:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    4fa7:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    4fae:	00 
    4faf:	e9 f9 f6 ff ff       	jmp    0x46ad
    4fb4:	f2 0f 59 e2          	mulsd  %xmm2,%xmm4
    4fb8:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    4fbd:	66 0f 10 c8          	movupd %xmm0,%xmm1
    4fc1:	45 31 c0             	xor    %r8d,%r8d
    4fc4:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
    4fcb:	00 
    4fcc:	f2 0f 10 15 04 35 00 	movsd  0x3504(%rip),%xmm2        # 0x84d8
    4fd3:	00 
    4fd4:	eb 18                	jmp    0x4fee
    4fd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4fdd:	00 00 00 
    4fe0:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4fe4:	83 c1 01             	add    $0x1,%ecx
    4fe7:	45 89 c8             	mov    %r9d,%r8d
    4fea:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
    4fee:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    4ff2:	85 c0                	test   %eax,%eax
    4ff4:	74 0f                	je     0x5005
    4ff6:	66 0f ef db          	pxor   %xmm3,%xmm3
    4ffa:	45 89 c8             	mov    %r9d,%r8d
    4ffd:	f2 0f 2a d8          	cvtsi2sd %eax,%xmm3
    5001:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
    5005:	48 83 c2 01          	add    $0x1,%rdx
    5009:	83 c0 30             	add    $0x30,%eax
    500c:	88 42 ff             	mov    %al,-0x1(%rdx)
    500f:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
    5013:	44 39 d1             	cmp    %r10d,%ecx
    5016:	75 c8                	jne    0x4fe0
    5018:	89 c1                	mov    %eax,%ecx
    501a:	45 84 c0             	test   %r8b,%r8b
    501d:	75 04                	jne    0x5023
    501f:	66 0f 10 c8          	movupd %xmm0,%xmm1
    5023:	f2 0f 10 05 e5 34 00 	movsd  0x34e5(%rip),%xmm0        # 0x8510
    502a:	00 
    502b:	66 0f 10 d4          	movupd %xmm4,%xmm2
    502f:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    5033:	66 0f 2f ca          	comisd %xmm2,%xmm1
    5037:	0f 87 a9 02 00 00    	ja     0x52e6
    503d:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
    5041:	66 0f 2f c1          	comisd %xmm1,%xmm0
    5045:	0f 86 8e f7 ff ff    	jbe    0x47d9
    504b:	66 0f 2e ce          	ucomisd %xmm6,%xmm1
    504f:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5054:	7a 06                	jp     0x505c
    5056:	0f 84 a3 03 00 00    	je     0x53ff
    505c:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5063:	00 
    5064:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
    5069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5070:	48 89 d1             	mov    %rdx,%rcx
    5073:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    5077:	80 79 ff 30          	cmpb   $0x30,-0x1(%rcx)
    507b:	74 f3                	je     0x5070
    507d:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    5082:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
    5087:	e9 21 f6 ff ff       	jmp    0x46ad
    508c:	8b 44 24 44          	mov    0x44(%rsp),%eax
    5090:	2b 44 24 28          	sub    0x28(%rsp),%eax
    5094:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    509b:	00 
    509c:	89 44 24 38          	mov    %eax,0x38(%rsp)
    50a0:	e9 21 f4 ff ff       	jmp    0x44c6
    50a5:	8b 4c 24 28          	mov    0x28(%rsp),%ecx
    50a9:	85 c9                	test   %ecx,%ecx
    50ab:	0f 84 d2 f6 ff ff    	je     0x4783
    50b1:	44 8b 54 24 6c       	mov    0x6c(%rsp),%r10d
    50b6:	45 85 d2             	test   %r10d,%r10d
    50b9:	0f 8e 1a f7 ff ff    	jle    0x47d9
    50bf:	f2 0f 59 05 11 34 00 	mulsd  0x3411(%rip),%xmm0        # 0x84d8
    50c6:	00 
    50c7:	f2 0f 10 0d 11 34 00 	movsd  0x3411(%rip),%xmm1        # 0x84e0
    50ce:	00 
    50cf:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
    50d5:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    50d9:	f2 0f 58 0d 07 34 00 	addsd  0x3407(%rip),%xmm1        # 0x84e8
    50e0:	00 
    50e1:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    50e6:	66 48 0f 7e c8       	movq   %xmm1,%rax
    50eb:	48 c1 ea 20          	shr    $0x20,%rdx
    50ef:	89 c0                	mov    %eax,%eax
    50f1:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
    50f7:	48 c1 e2 20          	shl    $0x20,%rdx
    50fb:	48 09 d0             	or     %rdx,%rax
    50fe:	e9 8f f1 ff ff       	jmp    0x4292
    5103:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
    5108:	e8 d3 05 00 00       	call   0x56e0
    510d:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
    5112:	49 89 c6             	mov    %rax,%r14
    5115:	48 8d 48 10          	lea    0x10(%rax),%rcx
    5119:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    511e:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
    5125:	00 
    5126:	e8 15 11 00 00       	call   0x6240
    512b:	4c 89 f1             	mov    %r14,%rcx
    512e:	ba 01 00 00 00       	mov    $0x1,%edx
    5133:	e8 d8 0a 00 00       	call   0x5c10
    5138:	49 89 c6             	mov    %rax,%r14
    513b:	e9 3b f8 ff ff       	jmp    0x497b
    5140:	8b 45 04             	mov    0x4(%rbp),%eax
    5143:	83 c0 01             	add    $0x1,%eax
    5146:	39 f0                	cmp    %esi,%eax
    5148:	0f 8d 5c f4 ff ff    	jge    0x45aa
    514e:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
    5153:	41 83 c3 01          	add    $0x1,%r11d
    5157:	c7 44 24 54 01 00 00 	movl   $0x1,0x54(%rsp)
    515e:	00 
    515f:	e9 46 f4 ff ff       	jmp    0x45aa
    5164:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
    516b:	00 
    516c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5171:	45 31 ed             	xor    %r13d,%r13d
    5174:	45 31 e4             	xor    %r12d,%r12d
    5177:	e9 f7 f4 ff ff       	jmp    0x4673
    517c:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    5183:	00 
    5184:	83 fb 39             	cmp    $0x39,%ebx
    5187:	0f 84 ec 00 00 00    	je     0x5279
    518d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    5192:	83 c3 01             	add    $0x1,%ebx
    5195:	4c 89 e6             	mov    %r12,%rsi
    5198:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
    519f:	00 
    51a0:	4d 89 f4             	mov    %r14,%r12
    51a3:	88 18                	mov    %bl,(%rax)
    51a5:	e9 5e f9 ff ff       	jmp    0x4b08
    51aa:	4c 89 e6             	mov    %r12,%rsi
    51ad:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
    51b4:	00 
    51b5:	4d 89 f4             	mov    %r14,%r12
    51b8:	e9 b0 fa ff ff       	jmp    0x4c6d
    51bd:	8b 45 04             	mov    0x4(%rbp),%eax
    51c0:	83 c0 01             	add    $0x1,%eax
    51c3:	39 c6                	cmp    %eax,%esi
    51c5:	0f 8e 50 f7 ff ff    	jle    0x491b
    51cb:	eb 81                	jmp    0x514e
    51cd:	41 29 dd             	sub    %ebx,%r13d
    51d0:	8b 55 04             	mov    0x4(%rbp),%edx
    51d3:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
    51da:	00 00 00 00 
    51de:	41 8d 45 01          	lea    0x1(%r13),%eax
    51e2:	44 29 e9             	sub    %r13d,%ecx
    51e5:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
    51ec:	ff 
    51ed:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    51f1:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
    51f8:	ff 
    51f9:	39 d1                	cmp    %edx,%ecx
    51fb:	0f 8c 6c f2 ff ff    	jl     0x446d
    5201:	e9 aa f2 ff ff       	jmp    0x44b0
    5206:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
    520b:	48 89 c2             	mov    %rax,%rdx
    520e:	b9 31 00 00 00       	mov    $0x31,%ecx
    5213:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
    5218:	c6 00 30             	movb   $0x30,(%rax)
    521b:	e9 69 f1 ff ff       	jmp    0x4389
    5220:	85 c0                	test   %eax,%eax
    5222:	7e 37                	jle    0x525b
    5224:	4c 89 f9             	mov    %r15,%rcx
    5227:	ba 01 00 00 00       	mov    $0x1,%edx
    522c:	e8 df 09 00 00       	call   0x5c10
    5231:	4c 89 ea             	mov    %r13,%rdx
    5234:	48 89 c1             	mov    %rax,%rcx
    5237:	49 89 c7             	mov    %rax,%r15
    523a:	e8 01 0b 00 00       	call   0x5d40
    523f:	85 c0                	test   %eax,%eax
    5241:	0f 8e a0 01 00 00    	jle    0x53e7
    5247:	83 fb 39             	cmp    $0x39,%ebx
    524a:	74 2d                	je     0x5279
    524c:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
    5250:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
    5257:	00 
    5258:	83 c3 31             	add    $0x31,%ebx
    525b:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
    5260:	0f 8e 5a 01 00 00    	jle    0x53c0
    5266:	4c 89 e6             	mov    %r12,%rsi
    5269:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5270:	00 
    5271:	4d 89 f4             	mov    %r14,%r12
    5274:	e9 03 fd ff ff       	jmp    0x4f7c
    5279:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    527e:	4c 89 e6             	mov    %r12,%rsi
    5281:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    5286:	4d 89 f4             	mov    %r14,%r12
    5289:	ba 39 00 00 00       	mov    $0x39,%edx
    528e:	c6 00 39             	movb   $0x39,(%rax)
    5291:	e9 1a fa ff ff       	jmp    0x4cb0
    5296:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    529a:	89 5c 24 50          	mov    %ebx,0x50(%rsp)
    529e:	89 44 24 28          	mov    %eax,0x28(%rsp)
    52a2:	e9 88 f3 ff ff       	jmp    0x462f
    52a7:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    52ac:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    52b1:	e9 e5 f3 ff ff       	jmp    0x469b
    52b6:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    52ba:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    52bf:	89 44 24 44          	mov    %eax,0x44(%rsp)
    52c3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    52c8:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    52cd:	0f 8a d4 fc ff ff    	jp     0x4fa7
    52d3:	0f 85 ce fc ff ff    	jne    0x4fa7
    52d9:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
    52e0:	00 
    52e1:	e9 c7 f3 ff ff       	jmp    0x46ad
    52e6:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    52eb:	49 89 d0             	mov    %rdx,%r8
    52ee:	89 44 24 44          	mov    %eax,0x44(%rsp)
    52f2:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    52f7:	e9 7c f0 ff ff       	jmp    0x4378
    52fc:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    5300:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    5304:	66 0f 2f c2          	comisd %xmm2,%xmm0
    5308:	0f 87 a5 00 00 00    	ja     0x53b3
    530e:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    5312:	0f 8a f9 00 00 00    	jp     0x5411
    5318:	0f 85 f3 00 00 00    	jne    0x5411
    531e:	a8 01                	test   $0x1,%al
    5320:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    5325:	0f 85 4a f0 ff ff    	jne    0x4375
    532b:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5332:	00 
    5333:	e9 38 fd ff ff       	jmp    0x5070
    5338:	4c 89 e1             	mov    %r12,%rcx
    533b:	45 31 c0             	xor    %r8d,%r8d
    533e:	ba 0a 00 00 00       	mov    $0xa,%edx
    5343:	e8 08 05 00 00       	call   0x5850
    5348:	49 89 c4             	mov    %rax,%r12
    534b:	40 84 ed             	test   %bpl,%bpl
    534e:	0f 85 42 ff ff ff    	jne    0x5296
    5354:	8b 44 24 50          	mov    0x50(%rsp),%eax
    5358:	89 44 24 44          	mov    %eax,0x44(%rsp)
    535c:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    5360:	89 44 24 28          	mov    %eax,0x28(%rsp)
    5364:	e9 ee f5 ff ff       	jmp    0x4957
    5369:	41 8b 47 18          	mov    0x18(%r15),%eax
    536d:	85 c0                	test   %eax,%eax
    536f:	b8 10 00 00 00       	mov    $0x10,%eax
    5374:	0f 44 44 24 24       	cmove  0x24(%rsp),%eax
    5379:	89 44 24 24          	mov    %eax,0x24(%rsp)
    537d:	e9 55 f9 ff ff       	jmp    0x4cd7
    5382:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
    5386:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    538b:	49 89 d0             	mov    %rdx,%r8
    538e:	e9 e5 ef ff ff       	jmp    0x4378
    5393:	45 8b 4f 18          	mov    0x18(%r15),%r9d
    5397:	45 85 c9             	test   %r9d,%r9d
    539a:	0f 85 36 fb ff ff    	jne    0x4ed6
    53a0:	85 c0                	test   %eax,%eax
    53a2:	0f 8f 7c fe ff ff    	jg     0x5224
    53a8:	4c 89 e6             	mov    %r12,%rsi
    53ab:	4d 89 f4             	mov    %r14,%r12
    53ae:	e9 c9 fb ff ff       	jmp    0x4f7c
    53b3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    53b8:	49 89 d0             	mov    %rdx,%r8
    53bb:	e9 b8 ef ff ff       	jmp    0x4378
    53c0:	45 8b 47 18          	mov    0x18(%r15),%r8d
    53c4:	4c 89 e6             	mov    %r12,%rsi
    53c7:	4d 89 f4             	mov    %r14,%r12
    53ca:	45 85 c0             	test   %r8d,%r8d
    53cd:	74 54                	je     0x5423
    53cf:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    53d6:	00 
    53d7:	e9 a0 fb ff ff       	jmp    0x4f7c
    53dc:	0f 84 e5 f9 ff ff    	je     0x4dc7
    53e2:	e9 91 f9 ff ff       	jmp    0x4d78
    53e7:	75 09                	jne    0x53f2
    53e9:	f6 c3 01             	test   $0x1,%bl
    53ec:	0f 85 55 fe ff ff    	jne    0x5247
    53f2:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
    53f9:	00 
    53fa:	e9 5c fe ff ff       	jmp    0x525b
    53ff:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
    5406:	00 
    5407:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
    540c:	e9 5f fc ff ff       	jmp    0x5070
    5411:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
    5418:	00 
    5419:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    541e:	e9 4d fc ff ff       	jmp    0x5070
    5423:	8b 44 24 40          	mov    0x40(%rsp),%eax
    5427:	89 44 24 24          	mov    %eax,0x24(%rsp)
    542b:	e9 4c fb ff ff       	jmp    0x4f7c
    5430:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
    5435:	7e 0a                	jle    0x5441
    5437:	b8 10 00 00 00       	mov    $0x10,%eax
    543c:	e9 b3 f6 ff ff       	jmp    0x4af4
    5441:	41 83 7f 18 00       	cmpl   $0x0,0x18(%r15)
    5446:	ba 10 00 00 00       	mov    $0x10,%edx
    544b:	0f 45 c2             	cmovne %edx,%eax
    544e:	e9 a1 f6 ff ff       	jmp    0x4af4
    5453:	89 e8                	mov    %ebp,%eax
    5455:	e9 53 f5 ff ff       	jmp    0x49ad
    545a:	90                   	nop
    545b:	90                   	nop
    545c:	90                   	nop
    545d:	90                   	nop
    545e:	90                   	nop
    545f:	90                   	nop
    5460:	41 54                	push   %r12
    5462:	55                   	push   %rbp
    5463:	57                   	push   %rdi
    5464:	56                   	push   %rsi
    5465:	53                   	push   %rbx
    5466:	48 63 59 14          	movslq 0x14(%rcx),%rbx
    546a:	89 d5                	mov    %edx,%ebp
    546c:	49 89 ca             	mov    %rcx,%r10
    546f:	c1 fd 05             	sar    $0x5,%ebp
    5472:	39 eb                	cmp    %ebp,%ebx
    5474:	7e 7a                	jle    0x54f0
    5476:	4c 8d 61 18          	lea    0x18(%rcx),%r12
    547a:	48 63 ed             	movslq %ebp,%rbp
    547d:	4d 8d 1c 9c          	lea    (%r12,%rbx,4),%r11
    5481:	49 8d 34 ac          	lea    (%r12,%rbp,4),%rsi
    5485:	83 e2 1f             	and    $0x1f,%edx
    5488:	0f 84 82 00 00 00    	je     0x5510
    548e:	8b 06                	mov    (%rsi),%eax
    5490:	89 d1                	mov    %edx,%ecx
    5492:	bf 20 00 00 00       	mov    $0x20,%edi
    5497:	4c 8d 46 04          	lea    0x4(%rsi),%r8
    549b:	29 d7                	sub    %edx,%edi
    549d:	d3 e8                	shr    %cl,%eax
    549f:	41 89 c1             	mov    %eax,%r9d
    54a2:	4d 39 c3             	cmp    %r8,%r11
    54a5:	0f 86 9d 00 00 00    	jbe    0x5548
    54ab:	4c 89 e6             	mov    %r12,%rsi
    54ae:	66 90                	xchg   %ax,%ax
    54b0:	41 8b 00             	mov    (%r8),%eax
    54b3:	89 f9                	mov    %edi,%ecx
    54b5:	48 83 c6 04          	add    $0x4,%rsi
    54b9:	49 83 c0 04          	add    $0x4,%r8
    54bd:	d3 e0                	shl    %cl,%eax
    54bf:	89 d1                	mov    %edx,%ecx
    54c1:	44 09 c8             	or     %r9d,%eax
    54c4:	89 46 fc             	mov    %eax,-0x4(%rsi)
    54c7:	45 8b 48 fc          	mov    -0x4(%r8),%r9d
    54cb:	41 d3 e9             	shr    %cl,%r9d
    54ce:	4d 39 c3             	cmp    %r8,%r11
    54d1:	77 dd                	ja     0x54b0
    54d3:	48 29 eb             	sub    %rbp,%rbx
    54d6:	49 8d 44 9c fc       	lea    -0x4(%r12,%rbx,4),%rax
    54db:	44 89 08             	mov    %r9d,(%rax)
    54de:	45 85 c9             	test   %r9d,%r9d
    54e1:	74 4a                	je     0x552d
    54e3:	48 83 c0 04          	add    $0x4,%rax
    54e7:	eb 44                	jmp    0x552d
    54e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    54f0:	41 c7 42 14 00 00 00 	movl   $0x0,0x14(%r10)
    54f7:	00 
    54f8:	41 c7 42 18 00 00 00 	movl   $0x0,0x18(%r10)
    54ff:	00 
    5500:	5b                   	pop    %rbx
    5501:	5e                   	pop    %rsi
    5502:	5f                   	pop    %rdi
    5503:	5d                   	pop    %rbp
    5504:	41 5c                	pop    %r12
    5506:	c3                   	ret    
    5507:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    550e:	00 00 
    5510:	4c 89 e7             	mov    %r12,%rdi
    5513:	49 39 f3             	cmp    %rsi,%r11
    5516:	76 d8                	jbe    0x54f0
    5518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    551f:	00 
    5520:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    5521:	49 39 f3             	cmp    %rsi,%r11
    5524:	77 fa                	ja     0x5520
    5526:	48 29 eb             	sub    %rbp,%rbx
    5529:	49 8d 04 9c          	lea    (%r12,%rbx,4),%rax
    552d:	4c 29 e0             	sub    %r12,%rax
    5530:	48 c1 f8 02          	sar    $0x2,%rax
    5534:	41 89 42 14          	mov    %eax,0x14(%r10)
    5538:	85 c0                	test   %eax,%eax
    553a:	74 bc                	je     0x54f8
    553c:	5b                   	pop    %rbx
    553d:	5e                   	pop    %rsi
    553e:	5f                   	pop    %rdi
    553f:	5d                   	pop    %rbp
    5540:	41 5c                	pop    %r12
    5542:	c3                   	ret    
    5543:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5548:	41 89 42 18          	mov    %eax,0x18(%r10)
    554c:	85 c0                	test   %eax,%eax
    554e:	74 a0                	je     0x54f0
    5550:	4c 89 e0             	mov    %r12,%rax
    5553:	eb 8e                	jmp    0x54e3
    5555:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    555c:	00 00 00 00 
    5560:	45 31 c0             	xor    %r8d,%r8d
    5563:	48 63 51 14          	movslq 0x14(%rcx),%rdx
    5567:	48 8d 41 18          	lea    0x18(%rcx),%rax
    556b:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
    556f:	48 39 c8             	cmp    %rcx,%rax
    5572:	72 19                	jb     0x558d
    5574:	eb 29                	jmp    0x559f
    5576:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    557d:	00 00 00 
    5580:	48 83 c0 04          	add    $0x4,%rax
    5584:	41 83 c0 20          	add    $0x20,%r8d
    5588:	48 39 c1             	cmp    %rax,%rcx
    558b:	76 12                	jbe    0x559f
    558d:	8b 10                	mov    (%rax),%edx
    558f:	85 d2                	test   %edx,%edx
    5591:	74 ed                	je     0x5580
    5593:	48 39 c1             	cmp    %rax,%rcx
    5596:	76 07                	jbe    0x559f
    5598:	f3 0f bc d2          	tzcnt  %edx,%edx
    559c:	41 01 d0             	add    %edx,%r8d
    559f:	44 89 c0             	mov    %r8d,%eax
    55a2:	c3                   	ret    
    55a3:	90                   	nop
    55a4:	90                   	nop
    55a5:	90                   	nop
    55a6:	90                   	nop
    55a7:	90                   	nop
    55a8:	90                   	nop
    55a9:	90                   	nop
    55aa:	90                   	nop
    55ab:	90                   	nop
    55ac:	90                   	nop
    55ad:	90                   	nop
    55ae:	90                   	nop
    55af:	90                   	nop
    55b0:	56                   	push   %rsi
    55b1:	53                   	push   %rbx
    55b2:	48 83 ec 28          	sub    $0x28,%rsp
    55b6:	8b 05 34 65 00 00    	mov    0x6534(%rip),%eax        # 0xbaf0
    55bc:	89 ce                	mov    %ecx,%esi
    55be:	83 f8 02             	cmp    $0x2,%eax
    55c1:	74 7b                	je     0x563e
    55c3:	85 c0                	test   %eax,%eax
    55c5:	74 39                	je     0x5600
    55c7:	83 f8 01             	cmp    $0x1,%eax
    55ca:	75 23                	jne    0x55ef
    55cc:	48 8b 1d 49 6c 00 00 	mov    0x6c49(%rip),%rbx        # 0xc21c
    55d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    55d8:	b9 01 00 00 00       	mov    $0x1,%ecx
    55dd:	ff d3                	call   *%rbx
    55df:	8b 05 0b 65 00 00    	mov    0x650b(%rip),%eax        # 0xbaf0
    55e5:	83 f8 01             	cmp    $0x1,%eax
    55e8:	74 ee                	je     0x55d8
    55ea:	83 f8 02             	cmp    $0x2,%eax
    55ed:	74 4f                	je     0x563e
    55ef:	48 83 c4 28          	add    $0x28,%rsp
    55f3:	5b                   	pop    %rbx
    55f4:	5e                   	pop    %rsi
    55f5:	c3                   	ret    
    55f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    55fd:	00 00 00 
    5600:	b8 01 00 00 00       	mov    $0x1,%eax
    5605:	87 05 e5 64 00 00    	xchg   %eax,0x64e5(%rip)        # 0xbaf0
    560b:	85 c0                	test   %eax,%eax
    560d:	75 51                	jne    0x5660
    560f:	48 8b 1d de 6b 00 00 	mov    0x6bde(%rip),%rbx        # 0xc1f4
    5616:	48 8d 0d e3 64 00 00 	lea    0x64e3(%rip),%rcx        # 0xbb00
    561d:	ff d3                	call   *%rbx
    561f:	48 8d 0d 02 65 00 00 	lea    0x6502(%rip),%rcx        # 0xbb28
    5626:	ff d3                	call   *%rbx
    5628:	48 8d 0d 61 00 00 00 	lea    0x61(%rip),%rcx        # 0x5690
    562f:	e8 dc ae ff ff       	call   0x510
    5634:	c7 05 b2 64 00 00 02 	movl   $0x2,0x64b2(%rip)        # 0xbaf0
    563b:	00 00 00 
    563e:	48 63 ce             	movslq %esi,%rcx
    5641:	48 8d 05 b8 64 00 00 	lea    0x64b8(%rip),%rax        # 0xbb00
    5648:	48 8d 14 89          	lea    (%rcx,%rcx,4),%rdx
    564c:	48 8d 0c d0          	lea    (%rax,%rdx,8),%rcx
    5650:	48 83 c4 28          	add    $0x28,%rsp
    5654:	5b                   	pop    %rbx
    5655:	5e                   	pop    %rsi
    5656:	48 ff 25 7f 6b 00 00 	rex.W jmp *0x6b7f(%rip)        # 0xc1dc
    565d:	0f 1f 00             	nopl   (%rax)
    5660:	83 f8 02             	cmp    $0x2,%eax
    5663:	74 1b                	je     0x5680
    5665:	8b 05 85 64 00 00    	mov    0x6485(%rip),%eax        # 0xbaf0
    566b:	83 f8 01             	cmp    $0x1,%eax
    566e:	0f 84 58 ff ff ff    	je     0x55cc
    5674:	e9 71 ff ff ff       	jmp    0x55ea
    5679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5680:	c7 05 66 64 00 00 02 	movl   $0x2,0x6466(%rip)        # 0xbaf0
    5687:	00 00 00 
    568a:	eb b2                	jmp    0x563e
    568c:	0f 1f 40 00          	nopl   0x0(%rax)
    5690:	53                   	push   %rbx
    5691:	48 83 ec 20          	sub    $0x20,%rsp
    5695:	b8 03 00 00 00       	mov    $0x3,%eax
    569a:	87 05 50 64 00 00    	xchg   %eax,0x6450(%rip)        # 0xbaf0
    56a0:	83 f8 02             	cmp    $0x2,%eax
    56a3:	74 0b                	je     0x56b0
    56a5:	48 83 c4 20          	add    $0x20,%rsp
    56a9:	5b                   	pop    %rbx
    56aa:	c3                   	ret    
    56ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    56b0:	48 8b 1d 1d 6b 00 00 	mov    0x6b1d(%rip),%rbx        # 0xc1d4
    56b7:	48 8d 0d 42 64 00 00 	lea    0x6442(%rip),%rcx        # 0xbb00
    56be:	ff d3                	call   *%rbx
    56c0:	48 8d 0d 61 64 00 00 	lea    0x6461(%rip),%rcx        # 0xbb28
    56c7:	48 89 d8             	mov    %rbx,%rax
    56ca:	48 83 c4 20          	add    $0x20,%rsp
    56ce:	5b                   	pop    %rbx
    56cf:	48 ff e0             	rex.W jmp *%rax
    56d2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    56d9:	00 00 00 00 
    56dd:	0f 1f 00             	nopl   (%rax)
    56e0:	56                   	push   %rsi
    56e1:	53                   	push   %rbx
    56e2:	48 83 ec 38          	sub    $0x38,%rsp
    56e6:	89 cb                	mov    %ecx,%ebx
    56e8:	31 c9                	xor    %ecx,%ecx
    56ea:	e8 c1 fe ff ff       	call   0x55b0
    56ef:	83 fb 09             	cmp    $0x9,%ebx
    56f2:	7e 4c                	jle    0x5740
    56f4:	89 d9                	mov    %ebx,%ecx
    56f6:	be 01 00 00 00       	mov    $0x1,%esi
    56fb:	d3 e6                	shl    %cl,%esi
    56fd:	8d 46 ff             	lea    -0x1(%rsi),%eax
    5700:	48 98                	cltq   
    5702:	48 8d 0c 85 27 00 00 	lea    0x27(,%rax,4),%rcx
    5709:	00 
    570a:	48 b8 f8 ff ff ff 07 	movabs $0x7fffffff8,%rax
    5711:	00 00 00 
    5714:	48 21 c1             	and    %rax,%rcx
    5717:	e8 2c 0b 00 00       	call   0x6248
    571c:	48 85 c0             	test   %rax,%rax
    571f:	74 17                	je     0x5738
    5721:	83 3d c8 63 00 00 02 	cmpl   $0x2,0x63c8(%rip)        # 0xbaf0
    5728:	89 58 08             	mov    %ebx,0x8(%rax)
    572b:	89 70 0c             	mov    %esi,0xc(%rax)
    572e:	74 33                	je     0x5763
    5730:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    5737:	00 
    5738:	48 83 c4 38          	add    $0x38,%rsp
    573c:	5b                   	pop    %rbx
    573d:	5e                   	pop    %rsi
    573e:	c3                   	ret    
    573f:	90                   	nop
    5740:	48 8d 15 59 63 00 00 	lea    0x6359(%rip),%rdx        # 0xbaa0
    5747:	48 63 cb             	movslq %ebx,%rcx
    574a:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
    574e:	48 85 c0             	test   %rax,%rax
    5751:	74 2d                	je     0x5780
    5753:	4c 8b 00             	mov    (%rax),%r8
    5756:	83 3d 93 63 00 00 02 	cmpl   $0x2,0x6393(%rip)        # 0xbaf0
    575d:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
    5761:	75 cd                	jne    0x5730
    5763:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    5768:	48 8d 0d 91 63 00 00 	lea    0x6391(%rip),%rcx        # 0xbb00
    576f:	ff 15 8f 6a 00 00    	call   *0x6a8f(%rip)        # 0xc204
    5775:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    577a:	eb b4                	jmp    0x5730
    577c:	0f 1f 40 00          	nopl   0x0(%rax)
    5780:	89 d9                	mov    %ebx,%ecx
    5782:	be 01 00 00 00       	mov    $0x1,%esi
    5787:	48 8b 05 f2 18 00 00 	mov    0x18f2(%rip),%rax        # 0x7080
    578e:	d3 e6                	shl    %cl,%esi
    5790:	48 8d 0d 09 5a 00 00 	lea    0x5a09(%rip),%rcx        # 0xb1a0
    5797:	8d 56 ff             	lea    -0x1(%rsi),%edx
    579a:	49 89 c1             	mov    %rax,%r9
    579d:	48 63 d2             	movslq %edx,%rdx
    57a0:	49 29 c9             	sub    %rcx,%r9
    57a3:	48 8d 14 95 27 00 00 	lea    0x27(,%rdx,4),%rdx
    57aa:	00 
    57ab:	4c 89 c9             	mov    %r9,%rcx
    57ae:	48 c1 ea 03          	shr    $0x3,%rdx
    57b2:	48 c1 f9 03          	sar    $0x3,%rcx
    57b6:	89 d2                	mov    %edx,%edx
    57b8:	48 01 d1             	add    %rdx,%rcx
    57bb:	48 81 f9 20 01 00 00 	cmp    $0x120,%rcx
    57c2:	0f 87 2c ff ff ff    	ja     0x56f4
    57c8:	48 8d 14 d0          	lea    (%rax,%rdx,8),%rdx
    57cc:	48 89 15 ad 18 00 00 	mov    %rdx,0x18ad(%rip)        # 0x7080
    57d3:	e9 49 ff ff ff       	jmp    0x5721
    57d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    57df:	00 
    57e0:	41 54                	push   %r12
    57e2:	48 83 ec 20          	sub    $0x20,%rsp
    57e6:	49 89 cc             	mov    %rcx,%r12
    57e9:	48 85 c9             	test   %rcx,%rcx
    57ec:	74 3a                	je     0x5828
    57ee:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
    57f2:	7e 0c                	jle    0x5800
    57f4:	48 83 c4 20          	add    $0x20,%rsp
    57f8:	41 5c                	pop    %r12
    57fa:	e9 61 0a 00 00       	jmp    0x6260
    57ff:	90                   	nop
    5800:	31 c9                	xor    %ecx,%ecx
    5802:	e8 a9 fd ff ff       	call   0x55b0
    5807:	49 63 54 24 08       	movslq 0x8(%r12),%rdx
    580c:	48 8d 05 8d 62 00 00 	lea    0x628d(%rip),%rax        # 0xbaa0
    5813:	83 3d d6 62 00 00 02 	cmpl   $0x2,0x62d6(%rip)        # 0xbaf0
    581a:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
    581e:	4c 89 24 d0          	mov    %r12,(%rax,%rdx,8)
    5822:	49 89 0c 24          	mov    %rcx,(%r12)
    5826:	74 08                	je     0x5830
    5828:	48 83 c4 20          	add    $0x20,%rsp
    582c:	41 5c                	pop    %r12
    582e:	c3                   	ret    
    582f:	90                   	nop
    5830:	48 8d 0d c9 62 00 00 	lea    0x62c9(%rip),%rcx        # 0xbb00
    5837:	48 83 c4 20          	add    $0x20,%rsp
    583b:	41 5c                	pop    %r12
    583d:	48 ff 25 c0 69 00 00 	rex.W jmp *0x69c0(%rip)        # 0xc204
    5844:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    584b:	00 00 00 00 
    584f:	90                   	nop
    5850:	41 55                	push   %r13
    5852:	41 54                	push   %r12
    5854:	56                   	push   %rsi
    5855:	53                   	push   %rbx
    5856:	48 83 ec 28          	sub    $0x28,%rsp
    585a:	8b 71 14             	mov    0x14(%rcx),%esi
    585d:	49 89 cc             	mov    %rcx,%r12
    5860:	49 63 d8             	movslq %r8d,%rbx
    5863:	48 63 d2             	movslq %edx,%rdx
    5866:	31 c9                	xor    %ecx,%ecx
    5868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    586f:	00 
    5870:	41 8b 44 8c 18       	mov    0x18(%r12,%rcx,4),%eax
    5875:	48 0f af c2          	imul   %rdx,%rax
    5879:	48 01 d8             	add    %rbx,%rax
    587c:	41 89 44 8c 18       	mov    %eax,0x18(%r12,%rcx,4)
    5881:	48 89 c3             	mov    %rax,%rbx
    5884:	48 83 c1 01          	add    $0x1,%rcx
    5888:	48 c1 eb 20          	shr    $0x20,%rbx
    588c:	39 ce                	cmp    %ecx,%esi
    588e:	7f e0                	jg     0x5870
    5890:	4d 89 e5             	mov    %r12,%r13
    5893:	48 85 db             	test   %rbx,%rbx
    5896:	74 1a                	je     0x58b2
    5898:	41 39 74 24 0c       	cmp    %esi,0xc(%r12)
    589d:	7e 21                	jle    0x58c0
    589f:	48 63 c6             	movslq %esi,%rax
    58a2:	83 c6 01             	add    $0x1,%esi
    58a5:	4d 89 e5             	mov    %r12,%r13
    58a8:	41 89 5c 84 18       	mov    %ebx,0x18(%r12,%rax,4)
    58ad:	41 89 74 24 14       	mov    %esi,0x14(%r12)
    58b2:	4c 89 e8             	mov    %r13,%rax
    58b5:	48 83 c4 28          	add    $0x28,%rsp
    58b9:	5b                   	pop    %rbx
    58ba:	5e                   	pop    %rsi
    58bb:	41 5c                	pop    %r12
    58bd:	41 5d                	pop    %r13
    58bf:	c3                   	ret    
    58c0:	41 8b 44 24 08       	mov    0x8(%r12),%eax
    58c5:	8d 48 01             	lea    0x1(%rax),%ecx
    58c8:	e8 13 fe ff ff       	call   0x56e0
    58cd:	49 89 c5             	mov    %rax,%r13
    58d0:	48 85 c0             	test   %rax,%rax
    58d3:	74 dd                	je     0x58b2
    58d5:	48 8d 48 10          	lea    0x10(%rax),%rcx
    58d9:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    58de:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
    58e3:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
    58ea:	00 
    58eb:	e8 50 09 00 00       	call   0x6240
    58f0:	4c 89 e1             	mov    %r12,%rcx
    58f3:	4d 89 ec             	mov    %r13,%r12
    58f6:	e8 e5 fe ff ff       	call   0x57e0
    58fb:	eb a2                	jmp    0x589f
    58fd:	0f 1f 00             	nopl   (%rax)
    5900:	53                   	push   %rbx
    5901:	48 83 ec 20          	sub    $0x20,%rsp
    5905:	89 cb                	mov    %ecx,%ebx
    5907:	b9 01 00 00 00       	mov    $0x1,%ecx
    590c:	e8 cf fd ff ff       	call   0x56e0
    5911:	48 85 c0             	test   %rax,%rax
    5914:	74 0a                	je     0x5920
    5916:	89 58 18             	mov    %ebx,0x18(%rax)
    5919:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    5920:	48 83 c4 20          	add    $0x20,%rsp
    5924:	5b                   	pop    %rbx
    5925:	c3                   	ret    
    5926:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    592d:	00 00 00 
    5930:	41 57                	push   %r15
    5932:	41 56                	push   %r14
    5934:	41 55                	push   %r13
    5936:	41 54                	push   %r12
    5938:	55                   	push   %rbp
    5939:	57                   	push   %rdi
    593a:	56                   	push   %rsi
    593b:	53                   	push   %rbx
    593c:	48 83 ec 28          	sub    $0x28,%rsp
    5940:	48 63 69 14          	movslq 0x14(%rcx),%rbp
    5944:	48 63 7a 14          	movslq 0x14(%rdx),%rdi
    5948:	49 89 cd             	mov    %rcx,%r13
    594b:	49 89 d7             	mov    %rdx,%r15
    594e:	39 fd                	cmp    %edi,%ebp
    5950:	7c 0e                	jl     0x5960
    5952:	89 f8                	mov    %edi,%eax
    5954:	49 89 cf             	mov    %rcx,%r15
    5957:	48 63 fd             	movslq %ebp,%rdi
    595a:	49 89 d5             	mov    %rdx,%r13
    595d:	48 63 e8             	movslq %eax,%rbp
    5960:	31 c9                	xor    %ecx,%ecx
    5962:	8d 1c 2f             	lea    (%rdi,%rbp,1),%ebx
    5965:	41 39 5f 0c          	cmp    %ebx,0xc(%r15)
    5969:	0f 9c c1             	setl   %cl
    596c:	41 03 4f 08          	add    0x8(%r15),%ecx
    5970:	e8 6b fd ff ff       	call   0x56e0
    5975:	49 89 c4             	mov    %rax,%r12
    5978:	48 85 c0             	test   %rax,%rax
    597b:	0f 84 e4 00 00 00    	je     0x5a65
    5981:	48 8d 70 18          	lea    0x18(%rax),%rsi
    5985:	48 63 c3             	movslq %ebx,%rax
    5988:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
    598c:	48 89 f1             	mov    %rsi,%rcx
    598f:	48 39 c6             	cmp    %rax,%rsi
    5992:	73 13                	jae    0x59a7
    5994:	0f 1f 40 00          	nopl   0x0(%rax)
    5998:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
    599e:	48 83 c1 04          	add    $0x4,%rcx
    59a2:	48 39 c8             	cmp    %rcx,%rax
    59a5:	77 f1                	ja     0x5998
    59a7:	4d 8d 55 18          	lea    0x18(%r13),%r10
    59ab:	4d 8d 77 18          	lea    0x18(%r15),%r14
    59af:	49 8d 2c aa          	lea    (%r10,%rbp,4),%rbp
    59b3:	49 8d 3c be          	lea    (%r14,%rdi,4),%rdi
    59b7:	49 39 ea             	cmp    %rbp,%r10
    59ba:	0f 83 84 00 00 00    	jae    0x5a44
    59c0:	48 89 fa             	mov    %rdi,%rdx
    59c3:	4c 29 fa             	sub    %r15,%rdx
    59c6:	49 83 c7 19          	add    $0x19,%r15
    59ca:	48 83 ea 19          	sub    $0x19,%rdx
    59ce:	48 c1 ea 02          	shr    $0x2,%rdx
    59d2:	4c 39 ff             	cmp    %r15,%rdi
    59d5:	4c 8d 2c 95 04 00 00 	lea    0x4(,%rdx,4),%r13
    59dc:	00 
    59dd:	ba 04 00 00 00       	mov    $0x4,%edx
    59e2:	4c 0f 42 ea          	cmovb  %rdx,%r13
    59e6:	eb 11                	jmp    0x59f9
    59e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    59ef:	00 
    59f0:	48 83 c6 04          	add    $0x4,%rsi
    59f4:	4c 39 d5             	cmp    %r10,%rbp
    59f7:	76 4b                	jbe    0x5a44
    59f9:	45 8b 1a             	mov    (%r10),%r11d
    59fc:	49 83 c2 04          	add    $0x4,%r10
    5a00:	45 85 db             	test   %r11d,%r11d
    5a03:	74 eb                	je     0x59f0
    5a05:	49 89 f0             	mov    %rsi,%r8
    5a08:	4c 89 f1             	mov    %r14,%rcx
    5a0b:	45 31 c9             	xor    %r9d,%r9d
    5a0e:	66 90                	xchg   %ax,%ax
    5a10:	8b 11                	mov    (%rcx),%edx
    5a12:	45 8b 38             	mov    (%r8),%r15d
    5a15:	48 83 c1 04          	add    $0x4,%rcx
    5a19:	49 83 c0 04          	add    $0x4,%r8
    5a1d:	49 0f af d3          	imul   %r11,%rdx
    5a21:	4c 01 fa             	add    %r15,%rdx
    5a24:	4c 01 ca             	add    %r9,%rdx
    5a27:	49 89 d1             	mov    %rdx,%r9
    5a2a:	41 89 50 fc          	mov    %edx,-0x4(%r8)
    5a2e:	49 c1 e9 20          	shr    $0x20,%r9
    5a32:	48 39 cf             	cmp    %rcx,%rdi
    5a35:	77 d9                	ja     0x5a10
    5a37:	46 89 0c 2e          	mov    %r9d,(%rsi,%r13,1)
    5a3b:	48 83 c6 04          	add    $0x4,%rsi
    5a3f:	4c 39 d5             	cmp    %r10,%rbp
    5a42:	77 b5                	ja     0x59f9
    5a44:	85 db                	test   %ebx,%ebx
    5a46:	7f 0d                	jg     0x5a55
    5a48:	eb 16                	jmp    0x5a60
    5a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5a50:	83 eb 01             	sub    $0x1,%ebx
    5a53:	74 0b                	je     0x5a60
    5a55:	8b 50 fc             	mov    -0x4(%rax),%edx
    5a58:	48 83 e8 04          	sub    $0x4,%rax
    5a5c:	85 d2                	test   %edx,%edx
    5a5e:	74 f0                	je     0x5a50
    5a60:	41 89 5c 24 14       	mov    %ebx,0x14(%r12)
    5a65:	4c 89 e0             	mov    %r12,%rax
    5a68:	48 83 c4 28          	add    $0x28,%rsp
    5a6c:	5b                   	pop    %rbx
    5a6d:	5e                   	pop    %rsi
    5a6e:	5f                   	pop    %rdi
    5a6f:	5d                   	pop    %rbp
    5a70:	41 5c                	pop    %r12
    5a72:	41 5d                	pop    %r13
    5a74:	41 5e                	pop    %r14
    5a76:	41 5f                	pop    %r15
    5a78:	c3                   	ret    
    5a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5a80:	41 55                	push   %r13
    5a82:	41 54                	push   %r12
    5a84:	57                   	push   %rdi
    5a85:	56                   	push   %rsi
    5a86:	53                   	push   %rbx
    5a87:	48 83 ec 20          	sub    $0x20,%rsp
    5a8b:	89 d0                	mov    %edx,%eax
    5a8d:	49 89 cd             	mov    %rcx,%r13
    5a90:	89 d3                	mov    %edx,%ebx
    5a92:	83 e0 03             	and    $0x3,%eax
    5a95:	0f 85 c5 00 00 00    	jne    0x5b60
    5a9b:	c1 fb 02             	sar    $0x2,%ebx
    5a9e:	4d 89 ec             	mov    %r13,%r12
    5aa1:	74 57                	je     0x5afa
    5aa3:	48 8b 3d d6 56 00 00 	mov    0x56d6(%rip),%rdi        # 0xb180
    5aaa:	48 85 ff             	test   %rdi,%rdi
    5aad:	0f 84 e2 00 00 00    	je     0x5b95
    5ab3:	4d 89 ec             	mov    %r13,%r12
    5ab6:	4c 8d 2d 6b 60 00 00 	lea    0x606b(%rip),%r13        # 0xbb28
    5abd:	eb 10                	jmp    0x5acf
    5abf:	90                   	nop
    5ac0:	d1 fb                	sar    %ebx
    5ac2:	74 36                	je     0x5afa
    5ac4:	48 8b 37             	mov    (%rdi),%rsi
    5ac7:	48 85 f6             	test   %rsi,%rsi
    5aca:	74 44                	je     0x5b10
    5acc:	48 89 f7             	mov    %rsi,%rdi
    5acf:	f6 c3 01             	test   $0x1,%bl
    5ad2:	74 ec                	je     0x5ac0
    5ad4:	48 89 fa             	mov    %rdi,%rdx
    5ad7:	4c 89 e1             	mov    %r12,%rcx
    5ada:	e8 51 fe ff ff       	call   0x5930
    5adf:	48 89 c6             	mov    %rax,%rsi
    5ae2:	48 85 c0             	test   %rax,%rax
    5ae5:	0f 84 98 00 00 00    	je     0x5b83
    5aeb:	4c 89 e1             	mov    %r12,%rcx
    5aee:	49 89 f4             	mov    %rsi,%r12
    5af1:	e8 ea fc ff ff       	call   0x57e0
    5af6:	d1 fb                	sar    %ebx
    5af8:	75 ca                	jne    0x5ac4
    5afa:	4c 89 e0             	mov    %r12,%rax
    5afd:	48 83 c4 20          	add    $0x20,%rsp
    5b01:	5b                   	pop    %rbx
    5b02:	5e                   	pop    %rsi
    5b03:	5f                   	pop    %rdi
    5b04:	41 5c                	pop    %r12
    5b06:	41 5d                	pop    %r13
    5b08:	c3                   	ret    
    5b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5b10:	b9 01 00 00 00       	mov    $0x1,%ecx
    5b15:	e8 96 fa ff ff       	call   0x55b0
    5b1a:	48 8b 37             	mov    (%rdi),%rsi
    5b1d:	48 85 f6             	test   %rsi,%rsi
    5b20:	74 1e                	je     0x5b40
    5b22:	83 3d c7 5f 00 00 02 	cmpl   $0x2,0x5fc7(%rip)        # 0xbaf0
    5b29:	75 a1                	jne    0x5acc
    5b2b:	4c 89 e9             	mov    %r13,%rcx
    5b2e:	ff 15 d0 66 00 00    	call   *0x66d0(%rip)        # 0xc204
    5b34:	eb 96                	jmp    0x5acc
    5b36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5b3d:	00 00 00 
    5b40:	48 89 fa             	mov    %rdi,%rdx
    5b43:	48 89 f9             	mov    %rdi,%rcx
    5b46:	e8 e5 fd ff ff       	call   0x5930
    5b4b:	48 89 07             	mov    %rax,(%rdi)
    5b4e:	48 89 c6             	mov    %rax,%rsi
    5b51:	48 85 c0             	test   %rax,%rax
    5b54:	74 2d                	je     0x5b83
    5b56:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    5b5d:	eb c3                	jmp    0x5b22
    5b5f:	90                   	nop
    5b60:	83 e8 01             	sub    $0x1,%eax
    5b63:	48 8d 15 b6 29 00 00 	lea    0x29b6(%rip),%rdx        # 0x8520
    5b6a:	45 31 c0             	xor    %r8d,%r8d
    5b6d:	48 98                	cltq   
    5b6f:	8b 14 82             	mov    (%rdx,%rax,4),%edx
    5b72:	e8 d9 fc ff ff       	call   0x5850
    5b77:	49 89 c5             	mov    %rax,%r13
    5b7a:	48 85 c0             	test   %rax,%rax
    5b7d:	0f 85 18 ff ff ff    	jne    0x5a9b
    5b83:	45 31 e4             	xor    %r12d,%r12d
    5b86:	4c 89 e0             	mov    %r12,%rax
    5b89:	48 83 c4 20          	add    $0x20,%rsp
    5b8d:	5b                   	pop    %rbx
    5b8e:	5e                   	pop    %rsi
    5b8f:	5f                   	pop    %rdi
    5b90:	41 5c                	pop    %r12
    5b92:	41 5d                	pop    %r13
    5b94:	c3                   	ret    
    5b95:	b9 01 00 00 00       	mov    $0x1,%ecx
    5b9a:	e8 11 fa ff ff       	call   0x55b0
    5b9f:	48 8b 3d da 55 00 00 	mov    0x55da(%rip),%rdi        # 0xb180
    5ba6:	48 85 ff             	test   %rdi,%rdi
    5ba9:	74 1f                	je     0x5bca
    5bab:	83 3d 3e 5f 00 00 02 	cmpl   $0x2,0x5f3e(%rip)        # 0xbaf0
    5bb2:	0f 85 fb fe ff ff    	jne    0x5ab3
    5bb8:	48 8d 0d 69 5f 00 00 	lea    0x5f69(%rip),%rcx        # 0xbb28
    5bbf:	ff 15 3f 66 00 00    	call   *0x663f(%rip)        # 0xc204
    5bc5:	e9 e9 fe ff ff       	jmp    0x5ab3
    5bca:	b9 01 00 00 00       	mov    $0x1,%ecx
    5bcf:	e8 0c fb ff ff       	call   0x56e0
    5bd4:	48 89 c7             	mov    %rax,%rdi
    5bd7:	48 85 c0             	test   %rax,%rax
    5bda:	74 1e                	je     0x5bfa
    5bdc:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
    5be3:	02 00 00 
    5be6:	48 89 3d 93 55 00 00 	mov    %rdi,0x5593(%rip)        # 0xb180
    5bed:	48 89 47 14          	mov    %rax,0x14(%rdi)
    5bf1:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    5bf8:	eb b1                	jmp    0x5bab
    5bfa:	48 c7 05 7b 55 00 00 	movq   $0x0,0x557b(%rip)        # 0xb180
    5c01:	00 00 00 00 
    5c05:	45 31 e4             	xor    %r12d,%r12d
    5c08:	e9 ed fe ff ff       	jmp    0x5afa
    5c0d:	0f 1f 00             	nopl   (%rax)
    5c10:	41 56                	push   %r14
    5c12:	41 55                	push   %r13
    5c14:	41 54                	push   %r12
    5c16:	55                   	push   %rbp
    5c17:	57                   	push   %rdi
    5c18:	56                   	push   %rsi
    5c19:	53                   	push   %rbx
    5c1a:	48 83 ec 20          	sub    $0x20,%rsp
    5c1e:	49 89 cc             	mov    %rcx,%r12
    5c21:	89 d6                	mov    %edx,%esi
    5c23:	8b 49 08             	mov    0x8(%rcx),%ecx
    5c26:	41 89 d6             	mov    %edx,%r14d
    5c29:	41 8b 5c 24 14       	mov    0x14(%r12),%ebx
    5c2e:	c1 fe 05             	sar    $0x5,%esi
    5c31:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
    5c36:	01 f3                	add    %esi,%ebx
    5c38:	8d 6b 01             	lea    0x1(%rbx),%ebp
    5c3b:	39 c5                	cmp    %eax,%ebp
    5c3d:	7e 0a                	jle    0x5c49
    5c3f:	90                   	nop
    5c40:	01 c0                	add    %eax,%eax
    5c42:	83 c1 01             	add    $0x1,%ecx
    5c45:	39 c5                	cmp    %eax,%ebp
    5c47:	7f f7                	jg     0x5c40
    5c49:	e8 92 fa ff ff       	call   0x56e0
    5c4e:	49 89 c5             	mov    %rax,%r13
    5c51:	48 85 c0             	test   %rax,%rax
    5c54:	0f 84 ba 00 00 00    	je     0x5d14
    5c5a:	48 8d 78 18          	lea    0x18(%rax),%rdi
    5c5e:	85 f6                	test   %esi,%esi
    5c60:	7e 24                	jle    0x5c86
    5c62:	8d 56 ff             	lea    -0x1(%rsi),%edx
    5c65:	49 89 f8             	mov    %rdi,%r8
    5c68:	48 8d 44 90 1c       	lea    0x1c(%rax,%rdx,4),%rax
    5c6d:	0f 1f 00             	nopl   (%rax)
    5c70:	49 83 c0 04          	add    $0x4,%r8
    5c74:	41 c7 40 fc 00 00 00 	movl   $0x0,-0x4(%r8)
    5c7b:	00 
    5c7c:	49 39 c0             	cmp    %rax,%r8
    5c7f:	75 ef                	jne    0x5c70
    5c81:	48 8d 7c 97 04       	lea    0x4(%rdi,%rdx,4),%rdi
    5c86:	49 63 44 24 14       	movslq 0x14(%r12),%rax
    5c8b:	49 8d 74 24 18       	lea    0x18(%r12),%rsi
    5c90:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
    5c94:	41 83 e6 1f          	and    $0x1f,%r14d
    5c98:	0f 84 92 00 00 00    	je     0x5d30
    5c9e:	41 ba 20 00 00 00    	mov    $0x20,%r10d
    5ca4:	49 89 f9             	mov    %rdi,%r9
    5ca7:	45 31 c0             	xor    %r8d,%r8d
    5caa:	45 29 f2             	sub    %r14d,%r10d
    5cad:	0f 1f 00             	nopl   (%rax)
    5cb0:	8b 16                	mov    (%rsi),%edx
    5cb2:	44 89 f1             	mov    %r14d,%ecx
    5cb5:	49 83 c1 04          	add    $0x4,%r9
    5cb9:	48 83 c6 04          	add    $0x4,%rsi
    5cbd:	d3 e2                	shl    %cl,%edx
    5cbf:	89 d1                	mov    %edx,%ecx
    5cc1:	44 09 c1             	or     %r8d,%ecx
    5cc4:	41 89 49 fc          	mov    %ecx,-0x4(%r9)
    5cc8:	44 8b 46 fc          	mov    -0x4(%rsi),%r8d
    5ccc:	44 89 d1             	mov    %r10d,%ecx
    5ccf:	41 d3 e8             	shr    %cl,%r8d
    5cd2:	48 39 f0             	cmp    %rsi,%rax
    5cd5:	77 d9                	ja     0x5cb0
    5cd7:	48 89 c2             	mov    %rax,%rdx
    5cda:	49 8d 4c 24 19       	lea    0x19(%r12),%rcx
    5cdf:	4c 29 e2             	sub    %r12,%rdx
    5ce2:	48 83 ea 19          	sub    $0x19,%rdx
    5ce6:	48 c1 ea 02          	shr    $0x2,%rdx
    5cea:	48 39 c8             	cmp    %rcx,%rax
    5ced:	b8 04 00 00 00       	mov    $0x4,%eax
    5cf2:	48 8d 14 95 04 00 00 	lea    0x4(,%rdx,4),%rdx
    5cf9:	00 
    5cfa:	48 0f 42 d0          	cmovb  %rax,%rdx
    5cfe:	45 85 c0             	test   %r8d,%r8d
    5d01:	0f 45 dd             	cmovne %ebp,%ebx
    5d04:	44 89 04 17          	mov    %r8d,(%rdi,%rdx,1)
    5d08:	41 89 5d 14          	mov    %ebx,0x14(%r13)
    5d0c:	4c 89 e1             	mov    %r12,%rcx
    5d0f:	e8 cc fa ff ff       	call   0x57e0
    5d14:	4c 89 e8             	mov    %r13,%rax
    5d17:	48 83 c4 20          	add    $0x20,%rsp
    5d1b:	5b                   	pop    %rbx
    5d1c:	5e                   	pop    %rsi
    5d1d:	5f                   	pop    %rdi
    5d1e:	5d                   	pop    %rbp
    5d1f:	41 5c                	pop    %r12
    5d21:	41 5d                	pop    %r13
    5d23:	41 5e                	pop    %r14
    5d25:	c3                   	ret    
    5d26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5d2d:	00 00 00 
    5d30:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    5d31:	48 39 f0             	cmp    %rsi,%rax
    5d34:	76 d2                	jbe    0x5d08
    5d36:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    5d37:	48 39 f0             	cmp    %rsi,%rax
    5d3a:	77 f4                	ja     0x5d30
    5d3c:	eb ca                	jmp    0x5d08
    5d3e:	66 90                	xchg   %ax,%ax
    5d40:	48 63 42 14          	movslq 0x14(%rdx),%rax
    5d44:	44 8b 49 14          	mov    0x14(%rcx),%r9d
    5d48:	41 29 c1             	sub    %eax,%r9d
    5d4b:	75 37                	jne    0x5d84
    5d4d:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
    5d54:	00 
    5d55:	48 83 c1 18          	add    $0x18,%rcx
    5d59:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
    5d5d:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
    5d62:	eb 09                	jmp    0x5d6d
    5d64:	0f 1f 40 00          	nopl   0x0(%rax)
    5d68:	48 39 c1             	cmp    %rax,%rcx
    5d6b:	73 17                	jae    0x5d84
    5d6d:	48 83 e8 04          	sub    $0x4,%rax
    5d71:	48 83 ea 04          	sub    $0x4,%rdx
    5d75:	44 8b 12             	mov    (%rdx),%r10d
    5d78:	44 39 10             	cmp    %r10d,(%rax)
    5d7b:	74 eb                	je     0x5d68
    5d7d:	45 19 c9             	sbb    %r9d,%r9d
    5d80:	41 83 c9 01          	or     $0x1,%r9d
    5d84:	44 89 c8             	mov    %r9d,%eax
    5d87:	c3                   	ret    
    5d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5d8f:	00 
    5d90:	41 55                	push   %r13
    5d92:	41 54                	push   %r12
    5d94:	55                   	push   %rbp
    5d95:	57                   	push   %rdi
    5d96:	56                   	push   %rsi
    5d97:	53                   	push   %rbx
    5d98:	48 83 ec 28          	sub    $0x28,%rsp
    5d9c:	48 63 42 14          	movslq 0x14(%rdx),%rax
    5da0:	8b 79 14             	mov    0x14(%rcx),%edi
    5da3:	48 89 ce             	mov    %rcx,%rsi
    5da6:	48 89 d3             	mov    %rdx,%rbx
    5da9:	29 c7                	sub    %eax,%edi
    5dab:	0f 85 5f 01 00 00    	jne    0x5f10
    5db1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5db8:	00 
    5db9:	48 8d 49 18          	lea    0x18(%rcx),%rcx
    5dbd:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
    5dc1:	48 8d 54 13 18       	lea    0x18(%rbx,%rdx,1),%rdx
    5dc6:	eb 11                	jmp    0x5dd9
    5dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5dcf:	00 
    5dd0:	48 39 c1             	cmp    %rax,%rcx
    5dd3:	0f 83 57 01 00 00    	jae    0x5f30
    5dd9:	48 83 e8 04          	sub    $0x4,%rax
    5ddd:	48 83 ea 04          	sub    $0x4,%rdx
    5de1:	44 8b 12             	mov    (%rdx),%r10d
    5de4:	44 39 10             	cmp    %r10d,(%rax)
    5de7:	74 e7                	je     0x5dd0
    5de9:	0f 82 2c 01 00 00    	jb     0x5f1b
    5def:	8b 4e 08             	mov    0x8(%rsi),%ecx
    5df2:	e8 e9 f8 ff ff       	call   0x56e0
    5df7:	48 85 c0             	test   %rax,%rax
    5dfa:	0f 84 03 01 00 00    	je     0x5f03
    5e00:	48 63 56 14          	movslq 0x14(%rsi),%rdx
    5e04:	4c 8d 66 18          	lea    0x18(%rsi),%r12
    5e08:	89 78 10             	mov    %edi,0x10(%rax)
    5e0b:	4c 8d 68 18          	lea    0x18(%rax),%r13
    5e0f:	41 b9 18 00 00 00    	mov    $0x18,%r9d
    5e15:	45 31 c0             	xor    %r8d,%r8d
    5e18:	49 89 d2             	mov    %rdx,%r10
    5e1b:	49 8d 3c 94          	lea    (%r12,%rdx,4),%rdi
    5e1f:	48 63 53 14          	movslq 0x14(%rbx),%rdx
    5e23:	48 8d 6c 93 18       	lea    0x18(%rbx,%rdx,4),%rbp
    5e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5e2f:	00 
    5e30:	42 8b 0c 0e          	mov    (%rsi,%r9,1),%ecx
    5e34:	42 8b 14 0b          	mov    (%rbx,%r9,1),%edx
    5e38:	4c 29 c1             	sub    %r8,%rcx
    5e3b:	48 29 d1             	sub    %rdx,%rcx
    5e3e:	42 89 0c 08          	mov    %ecx,(%rax,%r9,1)
    5e42:	49 89 c8             	mov    %rcx,%r8
    5e45:	49 83 c1 04          	add    $0x4,%r9
    5e49:	41 89 cb             	mov    %ecx,%r11d
    5e4c:	49 c1 e8 20          	shr    $0x20,%r8
    5e50:	49 8d 14 19          	lea    (%r9,%rbx,1),%rdx
    5e54:	41 83 e0 01          	and    $0x1,%r8d
    5e58:	48 39 d5             	cmp    %rdx,%rbp
    5e5b:	77 d3                	ja     0x5e30
    5e5d:	48 89 ea             	mov    %rbp,%rdx
    5e60:	4c 8d 4b 19          	lea    0x19(%rbx),%r9
    5e64:	48 29 da             	sub    %rbx,%rdx
    5e67:	bb 00 00 00 00       	mov    $0x0,%ebx
    5e6c:	48 83 ea 19          	sub    $0x19,%rdx
    5e70:	48 89 d1             	mov    %rdx,%rcx
    5e73:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    5e77:	48 c1 e9 02          	shr    $0x2,%rcx
    5e7b:	4c 39 cd             	cmp    %r9,%rbp
    5e7e:	48 0f 42 d3          	cmovb  %rbx,%rdx
    5e82:	48 8d 0c 8d 04 00 00 	lea    0x4(,%rcx,4),%rcx
    5e89:	00 
    5e8a:	4c 01 ea             	add    %r13,%rdx
    5e8d:	4c 39 cd             	cmp    %r9,%rbp
    5e90:	41 b9 04 00 00 00    	mov    $0x4,%r9d
    5e96:	49 0f 42 c9          	cmovb  %r9,%rcx
    5e9a:	49 01 cc             	add    %rcx,%r12
    5e9d:	49 01 cd             	add    %rcx,%r13
    5ea0:	4c 39 e7             	cmp    %r12,%rdi
    5ea3:	76 3d                	jbe    0x5ee2
    5ea5:	4d 89 e9             	mov    %r13,%r9
    5ea8:	4c 89 e1             	mov    %r12,%rcx
    5eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5eb0:	8b 11                	mov    (%rcx),%edx
    5eb2:	48 83 c1 04          	add    $0x4,%rcx
    5eb6:	49 83 c1 04          	add    $0x4,%r9
    5eba:	4c 29 c2             	sub    %r8,%rdx
    5ebd:	49 89 d0             	mov    %rdx,%r8
    5ec0:	41 89 51 fc          	mov    %edx,-0x4(%r9)
    5ec4:	41 89 d3             	mov    %edx,%r11d
    5ec7:	49 c1 e8 20          	shr    $0x20,%r8
    5ecb:	41 83 e0 01          	and    $0x1,%r8d
    5ecf:	48 39 cf             	cmp    %rcx,%rdi
    5ed2:	77 dc                	ja     0x5eb0
    5ed4:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
    5ed8:	4c 29 e2             	sub    %r12,%rdx
    5edb:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    5edf:	4c 01 ea             	add    %r13,%rdx
    5ee2:	45 85 db             	test   %r11d,%r11d
    5ee5:	75 18                	jne    0x5eff
    5ee7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    5eee:	00 00 
    5ef0:	8b 4a fc             	mov    -0x4(%rdx),%ecx
    5ef3:	48 83 ea 04          	sub    $0x4,%rdx
    5ef7:	41 83 ea 01          	sub    $0x1,%r10d
    5efb:	85 c9                	test   %ecx,%ecx
    5efd:	74 f1                	je     0x5ef0
    5eff:	44 89 50 14          	mov    %r10d,0x14(%rax)
    5f03:	48 83 c4 28          	add    $0x28,%rsp
    5f07:	5b                   	pop    %rbx
    5f08:	5e                   	pop    %rsi
    5f09:	5f                   	pop    %rdi
    5f0a:	5d                   	pop    %rbp
    5f0b:	41 5c                	pop    %r12
    5f0d:	41 5d                	pop    %r13
    5f0f:	c3                   	ret    
    5f10:	bf 00 00 00 00       	mov    $0x0,%edi
    5f15:	0f 89 d4 fe ff ff    	jns    0x5def
    5f1b:	48 89 f0             	mov    %rsi,%rax
    5f1e:	bf 01 00 00 00       	mov    $0x1,%edi
    5f23:	48 89 de             	mov    %rbx,%rsi
    5f26:	48 89 c3             	mov    %rax,%rbx
    5f29:	e9 c1 fe ff ff       	jmp    0x5def
    5f2e:	66 90                	xchg   %ax,%ax
    5f30:	31 c9                	xor    %ecx,%ecx
    5f32:	e8 a9 f7 ff ff       	call   0x56e0
    5f37:	48 85 c0             	test   %rax,%rax
    5f3a:	74 c7                	je     0x5f03
    5f3c:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
    5f43:	00 
    5f44:	48 83 c4 28          	add    $0x28,%rsp
    5f48:	5b                   	pop    %rbx
    5f49:	5e                   	pop    %rsi
    5f4a:	5f                   	pop    %rdi
    5f4b:	5d                   	pop    %rbp
    5f4c:	41 5c                	pop    %r12
    5f4e:	41 5d                	pop    %r13
    5f50:	c3                   	ret    
    5f51:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    5f58:	00 00 00 00 
    5f5c:	0f 1f 40 00          	nopl   0x0(%rax)
    5f60:	41 54                	push   %r12
    5f62:	53                   	push   %rbx
    5f63:	48 63 41 14          	movslq 0x14(%rcx),%rax
    5f67:	4c 8d 59 18          	lea    0x18(%rcx),%r11
    5f6b:	49 89 d4             	mov    %rdx,%r12
    5f6e:	b9 20 00 00 00       	mov    $0x20,%ecx
    5f73:	4d 8d 0c 83          	lea    (%r11,%rax,4),%r9
    5f77:	89 c8                	mov    %ecx,%eax
    5f79:	45 8b 41 fc          	mov    -0x4(%r9),%r8d
    5f7d:	4d 8d 51 fc          	lea    -0x4(%r9),%r10
    5f81:	41 0f bd d0          	bsr    %r8d,%edx
    5f85:	83 f2 1f             	xor    $0x1f,%edx
    5f88:	29 d0                	sub    %edx,%eax
    5f8a:	41 89 04 24          	mov    %eax,(%r12)
    5f8e:	83 fa 0a             	cmp    $0xa,%edx
    5f91:	0f 8e 89 00 00 00    	jle    0x6020
    5f97:	83 ea 0b             	sub    $0xb,%edx
    5f9a:	4d 39 d3             	cmp    %r10,%r11
    5f9d:	73 61                	jae    0x6000
    5f9f:	45 8b 51 f8          	mov    -0x8(%r9),%r10d
    5fa3:	85 d2                	test   %edx,%edx
    5fa5:	74 60                	je     0x6007
    5fa7:	89 cb                	mov    %ecx,%ebx
    5fa9:	44 89 c0             	mov    %r8d,%eax
    5fac:	89 d1                	mov    %edx,%ecx
    5fae:	45 89 d0             	mov    %r10d,%r8d
    5fb1:	29 d3                	sub    %edx,%ebx
    5fb3:	d3 e0                	shl    %cl,%eax
    5fb5:	89 d9                	mov    %ebx,%ecx
    5fb7:	41 d3 e8             	shr    %cl,%r8d
    5fba:	89 d1                	mov    %edx,%ecx
    5fbc:	49 8d 51 f8          	lea    -0x8(%r9),%rdx
    5fc0:	44 09 c0             	or     %r8d,%eax
    5fc3:	41 d3 e2             	shl    %cl,%r10d
    5fc6:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    5fcb:	48 c1 e0 20          	shl    $0x20,%rax
    5fcf:	49 39 d3             	cmp    %rdx,%r11
    5fd2:	73 0b                	jae    0x5fdf
    5fd4:	41 8b 51 f4          	mov    -0xc(%r9),%edx
    5fd8:	89 d9                	mov    %ebx,%ecx
    5fda:	d3 ea                	shr    %cl,%edx
    5fdc:	41 09 d2             	or     %edx,%r10d
    5fdf:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    5fe6:	ff ff ff 
    5fe9:	48 21 d0             	and    %rdx,%rax
    5fec:	4c 09 d0             	or     %r10,%rax
    5fef:	66 48 0f 6e c0       	movq   %rax,%xmm0
    5ff4:	5b                   	pop    %rbx
    5ff5:	41 5c                	pop    %r12
    5ff7:	c3                   	ret    
    5ff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5fff:	00 
    6000:	45 31 d2             	xor    %r10d,%r10d
    6003:	85 d2                	test   %edx,%edx
    6005:	75 59                	jne    0x6060
    6007:	44 89 c0             	mov    %r8d,%eax
    600a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    600f:	48 c1 e0 20          	shl    $0x20,%rax
    6013:	4c 09 d0             	or     %r10,%rax
    6016:	66 48 0f 6e c0       	movq   %rax,%xmm0
    601b:	5b                   	pop    %rbx
    601c:	41 5c                	pop    %r12
    601e:	c3                   	ret    
    601f:	90                   	nop
    6020:	b9 0b 00 00 00       	mov    $0xb,%ecx
    6025:	44 89 c0             	mov    %r8d,%eax
    6028:	31 db                	xor    %ebx,%ebx
    602a:	29 d1                	sub    %edx,%ecx
    602c:	d3 e8                	shr    %cl,%eax
    602e:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    6033:	48 c1 e0 20          	shl    $0x20,%rax
    6037:	4d 39 d3             	cmp    %r10,%r11
    603a:	73 06                	jae    0x6042
    603c:	41 8b 59 f8          	mov    -0x8(%r9),%ebx
    6040:	d3 eb                	shr    %cl,%ebx
    6042:	8d 4a 15             	lea    0x15(%rdx),%ecx
    6045:	41 d3 e0             	shl    %cl,%r8d
    6048:	41 09 d8             	or     %ebx,%r8d
    604b:	4c 09 c0             	or     %r8,%rax
    604e:	66 48 0f 6e c0       	movq   %rax,%xmm0
    6053:	5b                   	pop    %rbx
    6054:	41 5c                	pop    %r12
    6056:	c3                   	ret    
    6057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    605e:	00 00 
    6060:	44 89 c0             	mov    %r8d,%eax
    6063:	89 d1                	mov    %edx,%ecx
    6065:	45 31 d2             	xor    %r10d,%r10d
    6068:	d3 e0                	shl    %cl,%eax
    606a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
    606f:	48 c1 e0 20          	shl    $0x20,%rax
    6073:	e9 67 ff ff ff       	jmp    0x5fdf
    6078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    607f:	00 
    6080:	57                   	push   %rdi
    6081:	56                   	push   %rsi
    6082:	53                   	push   %rbx
    6083:	48 83 ec 20          	sub    $0x20,%rsp
    6087:	b9 01 00 00 00       	mov    $0x1,%ecx
    608c:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    6091:	48 89 d7             	mov    %rdx,%rdi
    6094:	4c 89 c6             	mov    %r8,%rsi
    6097:	e8 44 f6 ff ff       	call   0x56e0
    609c:	48 85 c0             	test   %rax,%rax
    609f:	0f 84 8f 00 00 00    	je     0x6134
    60a5:	48 89 d9             	mov    %rbx,%rcx
    60a8:	48 89 da             	mov    %rbx,%rdx
    60ab:	48 c1 e9 20          	shr    $0x20,%rcx
    60af:	41 89 ca             	mov    %ecx,%r10d
    60b2:	c1 e9 14             	shr    $0x14,%ecx
    60b5:	41 81 e2 ff ff 0f 00 	and    $0xfffff,%r10d
    60bc:	45 89 d1             	mov    %r10d,%r9d
    60bf:	41 81 c9 00 00 10 00 	or     $0x100000,%r9d
    60c6:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
    60cc:	45 0f 45 d1          	cmovne %r9d,%r10d
    60d0:	41 89 c8             	mov    %ecx,%r8d
    60d3:	85 db                	test   %ebx,%ebx
    60d5:	74 69                	je     0x6140
    60d7:	45 31 c9             	xor    %r9d,%r9d
    60da:	f3 44 0f bc cb       	tzcnt  %ebx,%r9d
    60df:	44 89 c9             	mov    %r9d,%ecx
    60e2:	d3 ea                	shr    %cl,%edx
    60e4:	45 85 c9             	test   %r9d,%r9d
    60e7:	74 15                	je     0x60fe
    60e9:	b9 20 00 00 00       	mov    $0x20,%ecx
    60ee:	44 89 d3             	mov    %r10d,%ebx
    60f1:	44 29 c9             	sub    %r9d,%ecx
    60f4:	d3 e3                	shl    %cl,%ebx
    60f6:	44 89 c9             	mov    %r9d,%ecx
    60f9:	09 da                	or     %ebx,%edx
    60fb:	41 d3 ea             	shr    %cl,%r10d
    60fe:	89 50 18             	mov    %edx,0x18(%rax)
    6101:	31 d2                	xor    %edx,%edx
    6103:	45 85 d2             	test   %r10d,%r10d
    6106:	0f 95 c2             	setne  %dl
    6109:	44 89 50 1c          	mov    %r10d,0x1c(%rax)
    610d:	83 c2 01             	add    $0x1,%edx
    6110:	89 50 14             	mov    %edx,0x14(%rax)
    6113:	45 85 c0             	test   %r8d,%r8d
    6116:	75 4c                	jne    0x6164
    6118:	48 63 ca             	movslq %edx,%rcx
    611b:	c1 e2 05             	shl    $0x5,%edx
    611e:	41 81 e9 32 04 00 00 	sub    $0x432,%r9d
    6125:	0f bd 4c 88 14       	bsr    0x14(%rax,%rcx,4),%ecx
    612a:	44 89 0f             	mov    %r9d,(%rdi)
    612d:	83 f1 1f             	xor    $0x1f,%ecx
    6130:	29 ca                	sub    %ecx,%edx
    6132:	89 16                	mov    %edx,(%rsi)
    6134:	48 83 c4 20          	add    $0x20,%rsp
    6138:	5b                   	pop    %rbx
    6139:	5e                   	pop    %rsi
    613a:	5f                   	pop    %rdi
    613b:	c3                   	ret    
    613c:	0f 1f 40 00          	nopl   0x0(%rax)
    6140:	31 c9                	xor    %ecx,%ecx
    6142:	44 89 d2             	mov    %r10d,%edx
    6145:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    614c:	f3 41 0f bc ca       	tzcnt  %r10d,%ecx
    6151:	d3 ea                	shr    %cl,%edx
    6153:	44 8d 49 20          	lea    0x20(%rcx),%r9d
    6157:	89 50 18             	mov    %edx,0x18(%rax)
    615a:	ba 01 00 00 00       	mov    $0x1,%edx
    615f:	45 85 c0             	test   %r8d,%r8d
    6162:	74 b4                	je     0x6118
    6164:	43 8d 94 08 cd fb ff 	lea    -0x433(%r8,%r9,1),%edx
    616b:	ff 
    616c:	89 17                	mov    %edx,(%rdi)
    616e:	ba 35 00 00 00       	mov    $0x35,%edx
    6173:	44 29 ca             	sub    %r9d,%edx
    6176:	89 16                	mov    %edx,(%rsi)
    6178:	48 83 c4 20          	add    $0x20,%rsp
    617c:	5b                   	pop    %rbx
    617d:	5e                   	pop    %rsi
    617e:	5f                   	pop    %rdi
    617f:	c3                   	ret    
    6180:	48 89 c8             	mov    %rcx,%rax
    6183:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    6187:	0f b6 12             	movzbl (%rdx),%edx
    618a:	88 10                	mov    %dl,(%rax)
    618c:	84 d2                	test   %dl,%dl
    618e:	74 11                	je     0x61a1
    6190:	0f b6 11             	movzbl (%rcx),%edx
    6193:	48 83 c0 01          	add    $0x1,%rax
    6197:	48 83 c1 01          	add    $0x1,%rcx
    619b:	88 10                	mov    %dl,(%rax)
    619d:	84 d2                	test   %dl,%dl
    619f:	75 ef                	jne    0x6190
    61a1:	c3                   	ret    
    61a2:	90                   	nop
    61a3:	90                   	nop
    61a4:	90                   	nop
    61a5:	90                   	nop
    61a6:	90                   	nop
    61a7:	90                   	nop
    61a8:	90                   	nop
    61a9:	90                   	nop
    61aa:	90                   	nop
    61ab:	90                   	nop
    61ac:	90                   	nop
    61ad:	90                   	nop
    61ae:	90                   	nop
    61af:	90                   	nop
    61b0:	45 31 c0             	xor    %r8d,%r8d
    61b3:	48 89 c8             	mov    %rcx,%rax
    61b6:	48 85 d2             	test   %rdx,%rdx
    61b9:	75 14                	jne    0x61cf
    61bb:	eb 17                	jmp    0x61d4
    61bd:	0f 1f 00             	nopl   (%rax)
    61c0:	48 83 c0 01          	add    $0x1,%rax
    61c4:	49 89 c0             	mov    %rax,%r8
    61c7:	49 29 c8             	sub    %rcx,%r8
    61ca:	49 39 d0             	cmp    %rdx,%r8
    61cd:	73 05                	jae    0x61d4
    61cf:	80 38 00             	cmpb   $0x0,(%rax)
    61d2:	75 ec                	jne    0x61c0
    61d4:	4c 89 c0             	mov    %r8,%rax
    61d7:	c3                   	ret    
    61d8:	90                   	nop
    61d9:	90                   	nop
    61da:	90                   	nop
    61db:	90                   	nop
    61dc:	90                   	nop
    61dd:	90                   	nop
    61de:	90                   	nop
    61df:	90                   	nop
    61e0:	31 c0                	xor    %eax,%eax
    61e2:	48 85 d2             	test   %rdx,%rdx
    61e5:	75 12                	jne    0x61f9
    61e7:	eb 17                	jmp    0x6200
    61e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    61f0:	48 83 c0 01          	add    $0x1,%rax
    61f4:	48 39 c2             	cmp    %rax,%rdx
    61f7:	74 07                	je     0x6200
    61f9:	66 83 3c 41 00       	cmpw   $0x0,(%rcx,%rax,2)
    61fe:	75 f0                	jne    0x61f0
    6200:	c3                   	ret    
    6201:	90                   	nop
    6202:	90                   	nop
    6203:	90                   	nop
    6204:	90                   	nop
    6205:	90                   	nop
    6206:	90                   	nop
    6207:	90                   	nop
    6208:	90                   	nop
    6209:	90                   	nop
    620a:	90                   	nop
    620b:	90                   	nop
    620c:	90                   	nop
    620d:	90                   	nop
    620e:	90                   	nop
    620f:	90                   	nop
    6210:	ff 25 46 61 00 00    	jmp    *0x6146(%rip)        # 0xc35c
    6216:	90                   	nop
    6217:	90                   	nop
    6218:	ff 25 36 61 00 00    	jmp    *0x6136(%rip)        # 0xc354
    621e:	90                   	nop
    621f:	90                   	nop
    6220:	ff 25 26 61 00 00    	jmp    *0x6126(%rip)        # 0xc34c
    6226:	90                   	nop
    6227:	90                   	nop
    6228:	ff 25 16 61 00 00    	jmp    *0x6116(%rip)        # 0xc344
    622e:	90                   	nop
    622f:	90                   	nop
    6230:	ff 25 06 61 00 00    	jmp    *0x6106(%rip)        # 0xc33c
    6236:	90                   	nop
    6237:	90                   	nop
    6238:	ff 25 f6 60 00 00    	jmp    *0x60f6(%rip)        # 0xc334
    623e:	90                   	nop
    623f:	90                   	nop
    6240:	ff 25 e6 60 00 00    	jmp    *0x60e6(%rip)        # 0xc32c
    6246:	90                   	nop
    6247:	90                   	nop
    6248:	ff 25 d6 60 00 00    	jmp    *0x60d6(%rip)        # 0xc324
    624e:	90                   	nop
    624f:	90                   	nop
    6250:	ff 25 c6 60 00 00    	jmp    *0x60c6(%rip)        # 0xc31c
    6256:	90                   	nop
    6257:	90                   	nop
    6258:	ff 25 b6 60 00 00    	jmp    *0x60b6(%rip)        # 0xc314
    625e:	90                   	nop
    625f:	90                   	nop
    6260:	ff 25 a6 60 00 00    	jmp    *0x60a6(%rip)        # 0xc30c
    6266:	90                   	nop
    6267:	90                   	nop
    6268:	ff 25 96 60 00 00    	jmp    *0x6096(%rip)        # 0xc304
    626e:	90                   	nop
    626f:	90                   	nop
    6270:	ff 25 86 60 00 00    	jmp    *0x6086(%rip)        # 0xc2fc
    6276:	90                   	nop
    6277:	90                   	nop
    6278:	ff 25 76 60 00 00    	jmp    *0x6076(%rip)        # 0xc2f4
    627e:	90                   	nop
    627f:	90                   	nop
    6280:	ff 25 66 60 00 00    	jmp    *0x6066(%rip)        # 0xc2ec
    6286:	90                   	nop
    6287:	90                   	nop
    6288:	ff 25 56 60 00 00    	jmp    *0x6056(%rip)        # 0xc2e4
    628e:	90                   	nop
    628f:	90                   	nop
    6290:	ff 25 3e 60 00 00    	jmp    *0x603e(%rip)        # 0xc2d4
    6296:	90                   	nop
    6297:	90                   	nop
    6298:	ff 25 26 60 00 00    	jmp    *0x6026(%rip)        # 0xc2c4
    629e:	90                   	nop
    629f:	90                   	nop
    62a0:	ff 25 0e 60 00 00    	jmp    *0x600e(%rip)        # 0xc2b4
    62a6:	90                   	nop
    62a7:	90                   	nop
    62a8:	ff 25 f6 5f 00 00    	jmp    *0x5ff6(%rip)        # 0xc2a4
    62ae:	90                   	nop
    62af:	90                   	nop
    62b0:	ff 25 e6 5f 00 00    	jmp    *0x5fe6(%rip)        # 0xc29c
    62b6:	90                   	nop
    62b7:	90                   	nop
    62b8:	ff 25 ce 5f 00 00    	jmp    *0x5fce(%rip)        # 0xc28c
    62be:	90                   	nop
    62bf:	90                   	nop
    62c0:	ff 25 be 5f 00 00    	jmp    *0x5fbe(%rip)        # 0xc284
    62c6:	90                   	nop
    62c7:	90                   	nop
    62c8:	ff 25 ae 5f 00 00    	jmp    *0x5fae(%rip)        # 0xc27c
    62ce:	90                   	nop
    62cf:	90                   	nop
    62d0:	ff 25 8e 5f 00 00    	jmp    *0x5f8e(%rip)        # 0xc264
    62d6:	90                   	nop
    62d7:	90                   	nop
    62d8:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 0xc24c
    62de:	90                   	nop
    62df:	90                   	nop
    62e0:	57                   	push   %rdi
    62e1:	53                   	push   %rbx
    62e2:	48 83 ec 48          	sub    $0x48,%rsp
    62e6:	48 89 cf             	mov    %rcx,%rdi
    62e9:	48 89 d3             	mov    %rdx,%rbx
    62ec:	48 85 d2             	test   %rdx,%rdx
    62ef:	0f 84 33 01 00 00    	je     0x6428
    62f5:	4d 85 c0             	test   %r8,%r8
    62f8:	0f 84 33 01 00 00    	je     0x6431
    62fe:	41 8b 01             	mov    (%r9),%eax
    6301:	0f b6 12             	movzbl (%rdx),%edx
    6304:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
    630b:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
    630f:	84 d2                	test   %dl,%dl
    6311:	0f 84 a1 00 00 00    	je     0x63b8
    6317:	83 bc 24 88 00 00 00 	cmpl   $0x1,0x88(%rsp)
    631e:	01 
    631f:	76 77                	jbe    0x6398
    6321:	84 c0                	test   %al,%al
    6323:	0f 85 a7 00 00 00    	jne    0x63d0
    6329:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
    632e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    6335:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
    633a:	ff 15 bc 5e 00 00    	call   *0x5ebc(%rip)        # 0xc1fc
    6340:	85 c0                	test   %eax,%eax
    6342:	74 54                	je     0x6398
    6344:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
    6349:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
    634e:	49 83 f8 01          	cmp    $0x1,%r8
    6352:	0f 86 f5 00 00 00    	jbe    0x644d
    6358:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
    635d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    6363:	49 89 d8             	mov    %rbx,%r8
    6366:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
    636d:	00 
    636e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    6375:	ba 08 00 00 00       	mov    $0x8,%edx
    637a:	ff 15 8c 5e 00 00    	call   *0x5e8c(%rip)        # 0xc20c
    6380:	85 c0                	test   %eax,%eax
    6382:	0f 84 b0 00 00 00    	je     0x6438
    6388:	b8 02 00 00 00       	mov    $0x2,%eax
    638d:	48 83 c4 48          	add    $0x48,%rsp
    6391:	5b                   	pop    %rbx
    6392:	5f                   	pop    %rdi
    6393:	c3                   	ret    
    6394:	0f 1f 40 00          	nopl   0x0(%rax)
    6398:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
    639f:	85 c0                	test   %eax,%eax
    63a1:	75 4d                	jne    0x63f0
    63a3:	0f b6 03             	movzbl (%rbx),%eax
    63a6:	66 89 07             	mov    %ax,(%rdi)
    63a9:	b8 01 00 00 00       	mov    $0x1,%eax
    63ae:	48 83 c4 48          	add    $0x48,%rsp
    63b2:	5b                   	pop    %rbx
    63b3:	5f                   	pop    %rdi
    63b4:	c3                   	ret    
    63b5:	0f 1f 00             	nopl   (%rax)
    63b8:	31 d2                	xor    %edx,%edx
    63ba:	31 c0                	xor    %eax,%eax
    63bc:	66 89 11             	mov    %dx,(%rcx)
    63bf:	48 83 c4 48          	add    $0x48,%rsp
    63c3:	5b                   	pop    %rbx
    63c4:	5f                   	pop    %rdi
    63c5:	c3                   	ret    
    63c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    63cd:	00 00 00 
    63d0:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
    63d4:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    63da:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
    63df:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
    63e6:	00 
    63e7:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
    63ec:	eb 80                	jmp    0x636e
    63ee:	66 90                	xchg   %ax,%ax
    63f0:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
    63f7:	00 
    63f8:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    63ff:	49 89 d8             	mov    %rbx,%r8
    6402:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    6408:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
    640d:	ba 08 00 00 00       	mov    $0x8,%edx
    6412:	ff 15 f4 5d 00 00    	call   *0x5df4(%rip)        # 0xc20c
    6418:	85 c0                	test   %eax,%eax
    641a:	74 1c                	je     0x6438
    641c:	b8 01 00 00 00       	mov    $0x1,%eax
    6421:	eb 9c                	jmp    0x63bf
    6423:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6428:	31 c0                	xor    %eax,%eax
    642a:	48 83 c4 48          	add    $0x48,%rsp
    642e:	5b                   	pop    %rbx
    642f:	5f                   	pop    %rdi
    6430:	c3                   	ret    
    6431:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    6436:	eb 87                	jmp    0x63bf
    6438:	e8 63 fe ff ff       	call   0x62a0
    643d:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
    6443:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    6448:	e9 72 ff ff ff       	jmp    0x63bf
    644d:	0f b6 03             	movzbl (%rbx),%eax
    6450:	41 88 01             	mov    %al,(%r9)
    6453:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    6458:	e9 62 ff ff ff       	jmp    0x63bf
    645d:	0f 1f 00             	nopl   (%rax)
    6460:	41 55                	push   %r13
    6462:	41 54                	push   %r12
    6464:	57                   	push   %rdi
    6465:	56                   	push   %rsi
    6466:	53                   	push   %rbx
    6467:	48 83 ec 40          	sub    $0x40,%rsp
    646b:	31 c0                	xor    %eax,%eax
    646d:	49 89 cc             	mov    %rcx,%r12
    6470:	48 85 c9             	test   %rcx,%rcx
    6473:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
    6478:	48 8d 44 24 3e       	lea    0x3e(%rsp),%rax
    647d:	4c 89 cb             	mov    %r9,%rbx
    6480:	4c 0f 44 e0          	cmove  %rax,%r12
    6484:	49 89 d5             	mov    %rdx,%r13
    6487:	4c 89 c6             	mov    %r8,%rsi
    648a:	e8 e9 04 00 00       	call   0x6978
    648f:	89 c7                	mov    %eax,%edi
    6491:	e8 ea 04 00 00       	call   0x6980
    6496:	48 85 db             	test   %rbx,%rbx
    6499:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    649d:	49 89 f0             	mov    %rsi,%r8
    64a0:	89 44 24 20          	mov    %eax,0x20(%rsp)
    64a4:	4c 8d 0d bd 56 00 00 	lea    0x56bd(%rip),%r9        # 0xbb68
    64ab:	4c 89 ea             	mov    %r13,%rdx
    64ae:	4c 89 e1             	mov    %r12,%rcx
    64b1:	4c 0f 45 cb          	cmovne %rbx,%r9
    64b5:	e8 26 fe ff ff       	call   0x62e0
    64ba:	48 98                	cltq   
    64bc:	48 83 c4 40          	add    $0x40,%rsp
    64c0:	5b                   	pop    %rbx
    64c1:	5e                   	pop    %rsi
    64c2:	5f                   	pop    %rdi
    64c3:	41 5c                	pop    %r12
    64c5:	41 5d                	pop    %r13
    64c7:	c3                   	ret    
    64c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    64cf:	00 
    64d0:	41 56                	push   %r14
    64d2:	41 55                	push   %r13
    64d4:	41 54                	push   %r12
    64d6:	55                   	push   %rbp
    64d7:	57                   	push   %rdi
    64d8:	56                   	push   %rsi
    64d9:	53                   	push   %rbx
    64da:	48 83 ec 40          	sub    $0x40,%rsp
    64de:	48 8d 05 7f 56 00 00 	lea    0x567f(%rip),%rax        # 0xbb64
    64e5:	4d 89 cd             	mov    %r9,%r13
    64e8:	4d 85 c9             	test   %r9,%r9
    64eb:	49 89 ce             	mov    %rcx,%r14
    64ee:	48 89 d3             	mov    %rdx,%rbx
    64f1:	4c 0f 44 e8          	cmove  %rax,%r13
    64f5:	4c 89 c6             	mov    %r8,%rsi
    64f8:	e8 83 04 00 00       	call   0x6980
    64fd:	89 c5                	mov    %eax,%ebp
    64ff:	e8 74 04 00 00       	call   0x6978
    6504:	89 c7                	mov    %eax,%edi
    6506:	48 85 db             	test   %rbx,%rbx
    6509:	0f 84 c1 00 00 00    	je     0x65d0
    650f:	48 8b 13             	mov    (%rbx),%rdx
    6512:	48 85 d2             	test   %rdx,%rdx
    6515:	0f 84 b5 00 00 00    	je     0x65d0
    651b:	4d 85 f6             	test   %r14,%r14
    651e:	74 70                	je     0x6590
    6520:	45 31 e4             	xor    %r12d,%r12d
    6523:	48 85 f6             	test   %rsi,%rsi
    6526:	75 1f                	jne    0x6547
    6528:	eb 4a                	jmp    0x6574
    652a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6530:	48 8b 13             	mov    (%rbx),%rdx
    6533:	48 98                	cltq   
    6535:	49 83 c6 02          	add    $0x2,%r14
    6539:	49 01 c4             	add    %rax,%r12
    653c:	48 01 c2             	add    %rax,%rdx
    653f:	48 89 13             	mov    %rdx,(%rbx)
    6542:	4c 39 e6             	cmp    %r12,%rsi
    6545:	76 2d                	jbe    0x6574
    6547:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    654b:	49 89 f0             	mov    %rsi,%r8
    654e:	4d 89 e9             	mov    %r13,%r9
    6551:	4c 89 f1             	mov    %r14,%rcx
    6554:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
    6558:	4d 29 e0             	sub    %r12,%r8
    655b:	e8 80 fd ff ff       	call   0x62e0
    6560:	85 c0                	test   %eax,%eax
    6562:	7f cc                	jg     0x6530
    6564:	49 39 f4             	cmp    %rsi,%r12
    6567:	73 0b                	jae    0x6574
    6569:	85 c0                	test   %eax,%eax
    656b:	75 07                	jne    0x6574
    656d:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    6574:	4c 89 e0             	mov    %r12,%rax
    6577:	48 83 c4 40          	add    $0x40,%rsp
    657b:	5b                   	pop    %rbx
    657c:	5e                   	pop    %rsi
    657d:	5f                   	pop    %rdi
    657e:	5d                   	pop    %rbp
    657f:	41 5c                	pop    %r12
    6581:	41 5d                	pop    %r13
    6583:	41 5e                	pop    %r14
    6585:	c3                   	ret    
    6586:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    658d:	00 00 00 
    6590:	31 c0                	xor    %eax,%eax
    6592:	41 89 fe             	mov    %edi,%r14d
    6595:	48 8d 74 24 3e       	lea    0x3e(%rsp),%rsi
    659a:	45 31 e4             	xor    %r12d,%r12d
    659d:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
    65a2:	eb 0c                	jmp    0x65b0
    65a4:	0f 1f 40 00          	nopl   0x0(%rax)
    65a8:	48 98                	cltq   
    65aa:	48 8b 13             	mov    (%rbx),%rdx
    65ad:	49 01 c4             	add    %rax,%r12
    65b0:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    65b4:	4c 01 e2             	add    %r12,%rdx
    65b7:	4d 89 e9             	mov    %r13,%r9
    65ba:	4d 89 f0             	mov    %r14,%r8
    65bd:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
    65c1:	48 89 f1             	mov    %rsi,%rcx
    65c4:	e8 17 fd ff ff       	call   0x62e0
    65c9:	85 c0                	test   %eax,%eax
    65cb:	7f db                	jg     0x65a8
    65cd:	eb a5                	jmp    0x6574
    65cf:	90                   	nop
    65d0:	45 31 e4             	xor    %r12d,%r12d
    65d3:	eb 9f                	jmp    0x6574
    65d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    65dc:	00 00 00 00 
    65e0:	41 54                	push   %r12
    65e2:	57                   	push   %rdi
    65e3:	56                   	push   %rsi
    65e4:	53                   	push   %rbx
    65e5:	48 83 ec 48          	sub    $0x48,%rsp
    65e9:	31 c0                	xor    %eax,%eax
    65eb:	49 89 cc             	mov    %rcx,%r12
    65ee:	48 89 d6             	mov    %rdx,%rsi
    65f1:	4c 89 c3             	mov    %r8,%rbx
    65f4:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
    65f9:	e8 7a 03 00 00       	call   0x6978
    65fe:	89 c7                	mov    %eax,%edi
    6600:	e8 7b 03 00 00       	call   0x6980
    6605:	48 85 db             	test   %rbx,%rbx
    6608:	89 7c 24 28          	mov    %edi,0x28(%rsp)
    660c:	49 89 f0             	mov    %rsi,%r8
    660f:	48 8d 15 4a 55 00 00 	lea    0x554a(%rip),%rdx        # 0xbb60
    6616:	89 44 24 20          	mov    %eax,0x20(%rsp)
    661a:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
    661f:	48 0f 44 da          	cmove  %rdx,%rbx
    6623:	4c 89 e2             	mov    %r12,%rdx
    6626:	49 89 d9             	mov    %rbx,%r9
    6629:	e8 b2 fc ff ff       	call   0x62e0
    662e:	48 98                	cltq   
    6630:	48 83 c4 48          	add    $0x48,%rsp
    6634:	5b                   	pop    %rbx
    6635:	5e                   	pop    %rsi
    6636:	5f                   	pop    %rdi
    6637:	41 5c                	pop    %r12
    6639:	c3                   	ret    
    663a:	90                   	nop
    663b:	90                   	nop
    663c:	90                   	nop
    663d:	90                   	nop
    663e:	90                   	nop
    663f:	90                   	nop
    6640:	48 83 ec 58          	sub    $0x58,%rsp
    6644:	48 89 c8             	mov    %rcx,%rax
    6647:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
    664c:	44 89 c1             	mov    %r8d,%ecx
    664f:	45 85 c0             	test   %r8d,%r8d
    6652:	75 1c                	jne    0x6670
    6654:	66 81 fa ff 00       	cmp    $0xff,%dx
    6659:	77 59                	ja     0x66b4
    665b:	88 10                	mov    %dl,(%rax)
    665d:	b8 01 00 00 00       	mov    $0x1,%eax
    6662:	48 83 c4 58          	add    $0x58,%rsp
    6666:	c3                   	ret    
    6667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    666e:	00 00 
    6670:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
    6675:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
    667a:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
    667f:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    6685:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    668a:	31 d2                	xor    %edx,%edx
    668c:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
    6693:	00 
    6694:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    669b:	00 00 
    669d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    66a2:	ff 15 94 5b 00 00    	call   *0x5b94(%rip)        # 0xc23c
    66a8:	85 c0                	test   %eax,%eax
    66aa:	74 08                	je     0x66b4
    66ac:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
    66b0:	85 d2                	test   %edx,%edx
    66b2:	74 ae                	je     0x6662
    66b4:	e8 e7 fb ff ff       	call   0x62a0
    66b9:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
    66bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    66c4:	48 83 c4 58          	add    $0x58,%rsp
    66c8:	c3                   	ret    
    66c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    66d0:	41 54                	push   %r12
    66d2:	56                   	push   %rsi
    66d3:	53                   	push   %rbx
    66d4:	48 83 ec 30          	sub    $0x30,%rsp
    66d8:	48 85 c9             	test   %rcx,%rcx
    66db:	49 89 cc             	mov    %rcx,%r12
    66de:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
    66e3:	89 d3                	mov    %edx,%ebx
    66e5:	4c 0f 44 e0          	cmove  %rax,%r12
    66e9:	e8 8a 02 00 00       	call   0x6978
    66ee:	89 c6                	mov    %eax,%esi
    66f0:	e8 8b 02 00 00       	call   0x6980
    66f5:	0f b7 d3             	movzwl %bx,%edx
    66f8:	41 89 f1             	mov    %esi,%r9d
    66fb:	4c 89 e1             	mov    %r12,%rcx
    66fe:	41 89 c0             	mov    %eax,%r8d
    6701:	e8 3a ff ff ff       	call   0x6640
    6706:	48 98                	cltq   
    6708:	48 83 c4 30          	add    $0x30,%rsp
    670c:	5b                   	pop    %rbx
    670d:	5e                   	pop    %rsi
    670e:	41 5c                	pop    %r12
    6710:	c3                   	ret    
    6711:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    6718:	00 00 00 00 
    671c:	0f 1f 40 00          	nopl   0x0(%rax)
    6720:	41 56                	push   %r14
    6722:	41 55                	push   %r13
    6724:	41 54                	push   %r12
    6726:	55                   	push   %rbp
    6727:	57                   	push   %rdi
    6728:	56                   	push   %rsi
    6729:	53                   	push   %rbx
    672a:	48 83 ec 30          	sub    $0x30,%rsp
    672e:	45 31 f6             	xor    %r14d,%r14d
    6731:	49 89 d4             	mov    %rdx,%r12
    6734:	48 89 cb             	mov    %rcx,%rbx
    6737:	4c 89 c5             	mov    %r8,%rbp
    673a:	e8 41 02 00 00       	call   0x6980
    673f:	89 c7                	mov    %eax,%edi
    6741:	e8 32 02 00 00       	call   0x6978
    6746:	49 8b 34 24          	mov    (%r12),%rsi
    674a:	41 89 c5             	mov    %eax,%r13d
    674d:	48 85 f6             	test   %rsi,%rsi
    6750:	74 4d                	je     0x679f
    6752:	48 85 db             	test   %rbx,%rbx
    6755:	74 61                	je     0x67b8
    6757:	48 85 ed             	test   %rbp,%rbp
    675a:	75 27                	jne    0x6783
    675c:	e9 8f 00 00 00       	jmp    0x67f0
    6761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6768:	48 98                	cltq   
    676a:	48 01 c3             	add    %rax,%rbx
    676d:	49 01 c6             	add    %rax,%r14
    6770:	80 7b ff 00          	cmpb   $0x0,-0x1(%rbx)
    6774:	0f 84 86 00 00 00    	je     0x6800
    677a:	48 83 c6 02          	add    $0x2,%rsi
    677e:	4c 39 f5             	cmp    %r14,%rbp
    6781:	76 6d                	jbe    0x67f0
    6783:	0f b7 16             	movzwl (%rsi),%edx
    6786:	45 89 e9             	mov    %r13d,%r9d
    6789:	41 89 f8             	mov    %edi,%r8d
    678c:	48 89 d9             	mov    %rbx,%rcx
    678f:	e8 ac fe ff ff       	call   0x6640
    6794:	85 c0                	test   %eax,%eax
    6796:	7f d0                	jg     0x6768
    6798:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
    679f:	4c 89 f0             	mov    %r14,%rax
    67a2:	48 83 c4 30          	add    $0x30,%rsp
    67a6:	5b                   	pop    %rbx
    67a7:	5e                   	pop    %rsi
    67a8:	5f                   	pop    %rdi
    67a9:	5d                   	pop    %rbp
    67aa:	41 5c                	pop    %r12
    67ac:	41 5d                	pop    %r13
    67ae:	41 5e                	pop    %r14
    67b0:	c3                   	ret    
    67b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    67b8:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
    67bd:	eb 17                	jmp    0x67d6
    67bf:	90                   	nop
    67c0:	48 63 d0             	movslq %eax,%rdx
    67c3:	83 e8 01             	sub    $0x1,%eax
    67c6:	48 98                	cltq   
    67c8:	49 01 d6             	add    %rdx,%r14
    67cb:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
    67d0:	74 3e                	je     0x6810
    67d2:	48 83 c6 02          	add    $0x2,%rsi
    67d6:	0f b7 16             	movzwl (%rsi),%edx
    67d9:	45 89 e9             	mov    %r13d,%r9d
    67dc:	41 89 f8             	mov    %edi,%r8d
    67df:	48 89 e9             	mov    %rbp,%rcx
    67e2:	e8 59 fe ff ff       	call   0x6640
    67e7:	85 c0                	test   %eax,%eax
    67e9:	7f d5                	jg     0x67c0
    67eb:	eb ab                	jmp    0x6798
    67ed:	0f 1f 00             	nopl   (%rax)
    67f0:	49 89 34 24          	mov    %rsi,(%r12)
    67f4:	eb a9                	jmp    0x679f
    67f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    67fd:	00 00 00 
    6800:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
    6807:	00 
    6808:	49 83 ee 01          	sub    $0x1,%r14
    680c:	eb 91                	jmp    0x679f
    680e:	66 90                	xchg   %ax,%ax
    6810:	49 83 ee 01          	sub    $0x1,%r14
    6814:	eb 89                	jmp    0x679f
    6816:	90                   	nop
    6817:	90                   	nop
    6818:	90                   	nop
    6819:	90                   	nop
    681a:	90                   	nop
    681b:	90                   	nop
    681c:	90                   	nop
    681d:	90                   	nop
    681e:	90                   	nop
    681f:	90                   	nop
    6820:	53                   	push   %rbx
    6821:	48 83 ec 20          	sub    $0x20,%rsp
    6825:	89 cb                	mov    %ecx,%ebx
    6827:	e8 44 01 00 00       	call   0x6970
    682c:	89 d9                	mov    %ebx,%ecx
    682e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
    6832:	48 c1 e2 04          	shl    $0x4,%rdx
    6836:	48 01 d0             	add    %rdx,%rax
    6839:	48 83 c4 20          	add    $0x20,%rsp
    683d:	5b                   	pop    %rbx
    683e:	c3                   	ret    
    683f:	90                   	nop
    6840:	48 8b 05 29 53 00 00 	mov    0x5329(%rip),%rax        # 0xbb70
    6847:	c3                   	ret    
    6848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    684f:	00 
    6850:	48 89 c8             	mov    %rcx,%rax
    6853:	48 87 05 16 53 00 00 	xchg   %rax,0x5316(%rip)        # 0xbb70
    685a:	c3                   	ret    
    685b:	90                   	nop
    685c:	90                   	nop
    685d:	90                   	nop
    685e:	90                   	nop
    685f:	90                   	nop
    6860:	53                   	push   %rbx
    6861:	48 83 ec 20          	sub    $0x20,%rsp
    6865:	48 89 cb             	mov    %rcx,%rbx
    6868:	31 c9                	xor    %ecx,%ecx
    686a:	e8 b1 ff ff ff       	call   0x6820
    686f:	48 39 c3             	cmp    %rax,%rbx
    6872:	72 0f                	jb     0x6883
    6874:	b9 13 00 00 00       	mov    $0x13,%ecx
    6879:	e8 a2 ff ff ff       	call   0x6820
    687e:	48 39 c3             	cmp    %rax,%rbx
    6881:	76 15                	jbe    0x6898
    6883:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
    6887:	48 83 c4 20          	add    $0x20,%rsp
    688b:	5b                   	pop    %rbx
    688c:	48 ff 25 49 59 00 00 	rex.W jmp *0x5949(%rip)        # 0xc1dc
    6893:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6898:	31 c9                	xor    %ecx,%ecx
    689a:	e8 81 ff ff ff       	call   0x6820
    689f:	48 89 da             	mov    %rbx,%rdx
    68a2:	48 29 c2             	sub    %rax,%rdx
    68a5:	48 89 d0             	mov    %rdx,%rax
    68a8:	48 c1 f8 04          	sar    $0x4,%rax
    68ac:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
    68b2:	8d 48 10             	lea    0x10(%rax),%ecx
    68b5:	e8 ae 00 00 00       	call   0x6968
    68ba:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
    68c1:	48 83 c4 20          	add    $0x20,%rsp
    68c5:	5b                   	pop    %rbx
    68c6:	c3                   	ret    
    68c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    68ce:	00 00 
    68d0:	53                   	push   %rbx
    68d1:	48 83 ec 20          	sub    $0x20,%rsp
    68d5:	48 89 cb             	mov    %rcx,%rbx
    68d8:	31 c9                	xor    %ecx,%ecx
    68da:	e8 41 ff ff ff       	call   0x6820
    68df:	48 39 c3             	cmp    %rax,%rbx
    68e2:	72 0f                	jb     0x68f3
    68e4:	b9 13 00 00 00       	mov    $0x13,%ecx
    68e9:	e8 32 ff ff ff       	call   0x6820
    68ee:	48 39 c3             	cmp    %rax,%rbx
    68f1:	76 15                	jbe    0x6908
    68f3:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
    68f7:	48 83 c4 20          	add    $0x20,%rsp
    68fb:	5b                   	pop    %rbx
    68fc:	48 ff 25 01 59 00 00 	rex.W jmp *0x5901(%rip)        # 0xc204
    6903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6908:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
    690f:	31 c9                	xor    %ecx,%ecx
    6911:	e8 0a ff ff ff       	call   0x6820
    6916:	48 29 c3             	sub    %rax,%rbx
    6919:	48 c1 fb 04          	sar    $0x4,%rbx
    691d:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
    6923:	8d 4b 10             	lea    0x10(%rbx),%ecx
    6926:	48 83 c4 20          	add    $0x20,%rsp
    692a:	5b                   	pop    %rbx
    692b:	e9 30 00 00 00       	jmp    0x6960
    6930:	48 8b 05 c9 1d 00 00 	mov    0x1dc9(%rip),%rax        # 0x8700
    6937:	48 8b 00             	mov    (%rax),%rax
    693a:	c3                   	ret    
    693b:	90                   	nop
    693c:	90                   	nop
    693d:	90                   	nop
    693e:	90                   	nop
    693f:	90                   	nop
    6940:	48 8b 05 c9 1d 00 00 	mov    0x1dc9(%rip),%rax        # 0x8710
    6947:	48 8b 00             	mov    (%rax),%rax
    694a:	c3                   	ret    
    694b:	90                   	nop
    694c:	90                   	nop
    694d:	90                   	nop
    694e:	90                   	nop
    694f:	90                   	nop
    6950:	48 8b 05 c9 1d 00 00 	mov    0x1dc9(%rip),%rax        # 0x8720
    6957:	48 8b 00             	mov    (%rax),%rax
    695a:	c3                   	ret    
    695b:	90                   	nop
    695c:	90                   	nop
    695d:	90                   	nop
    695e:	90                   	nop
    695f:	90                   	nop
    6960:	ff 25 76 59 00 00    	jmp    *0x5976(%rip)        # 0xc2dc
    6966:	90                   	nop
    6967:	90                   	nop
    6968:	ff 25 5e 59 00 00    	jmp    *0x595e(%rip)        # 0xc2cc
    696e:	90                   	nop
    696f:	90                   	nop
    6970:	ff 25 fe 58 00 00    	jmp    *0x58fe(%rip)        # 0xc274
    6976:	90                   	nop
    6977:	90                   	nop
    6978:	ff 25 de 58 00 00    	jmp    *0x58de(%rip)        # 0xc25c
    697e:	90                   	nop
    697f:	90                   	nop
    6980:	ff 25 ce 58 00 00    	jmp    *0x58ce(%rip)        # 0xc254
    6986:	90                   	nop
    6987:	90                   	nop
    6988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    698f:	00 
    6990:	ff 25 a6 58 00 00    	jmp    *0x58a6(%rip)        # 0xc23c
    6996:	90                   	nop
    6997:	90                   	nop
    6998:	ff 25 96 58 00 00    	jmp    *0x5896(%rip)        # 0xc234
    699e:	90                   	nop
    699f:	90                   	nop
    69a0:	ff 25 86 58 00 00    	jmp    *0x5886(%rip)        # 0xc22c
    69a6:	90                   	nop
    69a7:	90                   	nop
    69a8:	ff 25 76 58 00 00    	jmp    *0x5876(%rip)        # 0xc224
    69ae:	90                   	nop
    69af:	90                   	nop
    69b0:	ff 25 66 58 00 00    	jmp    *0x5866(%rip)        # 0xc21c
    69b6:	90                   	nop
    69b7:	90                   	nop
    69b8:	ff 25 56 58 00 00    	jmp    *0x5856(%rip)        # 0xc214
    69be:	90                   	nop
    69bf:	90                   	nop
    69c0:	ff 25 46 58 00 00    	jmp    *0x5846(%rip)        # 0xc20c
    69c6:	90                   	nop
    69c7:	90                   	nop
    69c8:	ff 25 36 58 00 00    	jmp    *0x5836(%rip)        # 0xc204
    69ce:	90                   	nop
    69cf:	90                   	nop
    69d0:	ff 25 26 58 00 00    	jmp    *0x5826(%rip)        # 0xc1fc
    69d6:	90                   	nop
    69d7:	90                   	nop
    69d8:	ff 25 16 58 00 00    	jmp    *0x5816(%rip)        # 0xc1f4
    69de:	90                   	nop
    69df:	90                   	nop
    69e0:	ff 25 06 58 00 00    	jmp    *0x5806(%rip)        # 0xc1ec
    69e6:	90                   	nop
    69e7:	90                   	nop
    69e8:	ff 25 f6 57 00 00    	jmp    *0x57f6(%rip)        # 0xc1e4
    69ee:	90                   	nop
    69ef:	90                   	nop
    69f0:	ff 25 e6 57 00 00    	jmp    *0x57e6(%rip)        # 0xc1dc
    69f6:	90                   	nop
    69f7:	90                   	nop
    69f8:	ff 25 d6 57 00 00    	jmp    *0x57d6(%rip)        # 0xc1d4
    69fe:	90                   	nop
    69ff:	90                   	nop
    6a00:	e9 2b 9b ff ff       	jmp    0x530
    6a05:	90                   	nop
    6a06:	90                   	nop
    6a07:	90                   	nop
    6a08:	90                   	nop
    6a09:	90                   	nop
    6a0a:	90                   	nop
    6a0b:	90                   	nop
    6a0c:	90                   	nop
    6a0d:	90                   	nop
    6a0e:	90                   	nop
    6a0f:	90                   	nop
    6a10:	ff                   	(bad)  
    6a11:	ff                   	(bad)  
    6a12:	ff                   	(bad)  
    6a13:	ff                   	(bad)  
    6a14:	ff                   	(bad)  
    6a15:	ff                   	(bad)  
    6a16:	ff                   	(bad)  
    6a17:	ff 00                	incl   (%rax)
    6a19:	7a 00                	jp     0x6a1b
    6a1b:	40 01 00             	rex add %eax,(%rax)
	...
    6a26:	00 00                	add    %al,(%rax)
    6a28:	ff                   	(bad)  
    6a29:	ff                   	(bad)  
    6a2a:	ff                   	(bad)  
    6a2b:	ff                   	(bad)  
    6a2c:	ff                   	(bad)  
    6a2d:	ff                   	(bad)  
    6a2e:	ff                   	(bad)  
    6a2f:	ff 00                	incl   (%rax)
	...
