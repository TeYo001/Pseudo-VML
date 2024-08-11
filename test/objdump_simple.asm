
test/temp_simple.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
       0:	c3                   	ret    
       1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
       8:	00 00 00 00 
       c:	0f 1f 40 00          	nopl   0x0(%rax)
      10:	48 83 ec 28          	sub    $0x28,%rsp
      14:	48 8b 05 85 34 00 00 	mov    0x3485(%rip),%rax        # 0x34a0
      1b:	31 c9                	xor    %ecx,%ecx
      1d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      23:	48 8b 05 86 34 00 00 	mov    0x3486(%rip),%rax        # 0x34b0
      2a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      30:	48 8b 05 89 34 00 00 	mov    0x3489(%rip),%rax        # 0x34c0
      37:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      3d:	48 8b 05 4c 34 00 00 	mov    0x344c(%rip),%rax        # 0x3490
      44:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
      4a:	48 8b 05 0f 33 00 00 	mov    0x330f(%rip),%rax        # 0x3360
      51:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
      56:	75 0f                	jne    0x67
      58:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
      5c:	48 01 d0             	add    %rdx,%rax
      5f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
      65:	74 69                	je     0xd0
      67:	48 8b 05 12 34 00 00 	mov    0x3412(%rip),%rax        # 0x3480
      6e:	89 0d 98 5f 00 00    	mov    %ecx,0x5f98(%rip)        # 0x600c
      74:	8b 00                	mov    (%rax),%eax
      76:	85 c0                	test   %eax,%eax
      78:	75 46                	jne    0xc0
      7a:	b9 01 00 00 00       	mov    $0x1,%ecx
      7f:	e8 3c 16 00 00       	call   0x16c0
      84:	e8 b7 16 00 00       	call   0x1740
      89:	48 8b 15 b0 33 00 00 	mov    0x33b0(%rip),%rdx        # 0x3440
      90:	8b 12                	mov    (%rdx),%edx
      92:	89 10                	mov    %edx,(%rax)
      94:	e8 97 16 00 00       	call   0x1730
      99:	48 8b 15 80 33 00 00 	mov    0x3380(%rip),%rdx        # 0x3420
      a0:	8b 12                	mov    (%rdx),%edx
      a2:	89 10                	mov    %edx,(%rax)
      a4:	e8 87 05 00 00       	call   0x630
      a9:	48 8b 05 60 32 00 00 	mov    0x3260(%rip),%rax        # 0x3310
      b0:	83 38 01             	cmpl   $0x1,(%rax)
      b3:	74 53                	je     0x108
      b5:	31 c0                	xor    %eax,%eax
      b7:	48 83 c4 28          	add    $0x28,%rsp
      bb:	c3                   	ret    
      bc:	0f 1f 40 00          	nopl   0x0(%rax)
      c0:	b9 02 00 00 00       	mov    $0x2,%ecx
      c5:	e8 f6 15 00 00       	call   0x16c0
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
     108:	48 8d 0d 01 06 00 00 	lea    0x601(%rip),%rcx        # 0x710
     10f:	e8 dc 0c 00 00       	call   0xdf0
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
     144:	48 8b 05 25 33 00 00 	mov    0x3325(%rip),%rax        # 0x3470
     14b:	4c 8d 05 c6 5e 00 00 	lea    0x5ec6(%rip),%r8        # 0x6018
     152:	48 8d 15 c7 5e 00 00 	lea    0x5ec7(%rip),%rdx        # 0x6020
     159:	48 8d 0d c8 5e 00 00 	lea    0x5ec8(%rip),%rcx        # 0x6028
     160:	8b 00                	mov    (%rax),%eax
     162:	89 05 9c 5e 00 00    	mov    %eax,0x5e9c(%rip)        # 0x6004
     168:	48 8d 05 95 5e 00 00 	lea    0x5e95(%rip),%rax        # 0x6004
     16f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
     174:	48 8b 05 b5 32 00 00 	mov    0x32b5(%rip),%rax        # 0x3430
     17b:	44 8b 08             	mov    (%rax),%r9d
     17e:	e8 4d 15 00 00       	call   0x16d0
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
     1b1:	48 8b 3d c8 32 00 00 	mov    0x32c8(%rip),%rdi        # 0x3480
     1b8:	44 8b 0f             	mov    (%rdi),%r9d
     1bb:	45 85 c9             	test   %r9d,%r9d
     1be:	0f 85 ac 02 00 00    	jne    0x470
     1c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
     1cb:	00 00 
     1cd:	48 8b 1d ec 31 00 00 	mov    0x31ec(%rip),%rbx        # 0x33c0
     1d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
     1d8:	31 ed                	xor    %ebp,%ebp
     1da:	4c 8b 25 d3 6f 00 00 	mov    0x6fd3(%rip),%r12        # 0x71b4
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
     206:	48 8b 35 c3 31 00 00 	mov    0x31c3(%rip),%rsi        # 0x33d0
     20d:	31 ed                	xor    %ebp,%ebp
     20f:	8b 06                	mov    (%rsi),%eax
     211:	83 f8 01             	cmp    $0x1,%eax
     214:	0f 84 0d 02 00 00    	je     0x427
     21a:	8b 06                	mov    (%rsi),%eax
     21c:	85 c0                	test   %eax,%eax
     21e:	0f 84 7c 02 00 00    	je     0x4a0
     224:	c7 05 da 5d 00 00 01 	movl   $0x1,0x5dda(%rip)        # 0x6008
     22b:	00 00 00 
     22e:	8b 06                	mov    (%rsi),%eax
     230:	83 f8 01             	cmp    $0x1,%eax
     233:	0f 84 03 02 00 00    	je     0x43c
     239:	85 ed                	test   %ebp,%ebp
     23b:	0f 84 1c 02 00 00    	je     0x45d
     241:	48 8b 05 08 31 00 00 	mov    0x3108(%rip),%rax        # 0x3350
     248:	48 8b 00             	mov    (%rax),%rax
     24b:	48 85 c0             	test   %rax,%rax
     24e:	74 0c                	je     0x25c
     250:	45 31 c0             	xor    %r8d,%r8d
     253:	ba 02 00 00 00       	mov    $0x2,%edx
     258:	31 c9                	xor    %ecx,%ecx
     25a:	ff d0                	call   *%rax
     25c:	e8 4f 08 00 00       	call   0xab0
     261:	48 8d 0d 98 0b 00 00 	lea    0xb98(%rip),%rcx        # 0xe00
     268:	ff 15 3e 6f 00 00    	call   *0x6f3e(%rip)        # 0x71ac
     26e:	48 8b 15 3b 31 00 00 	mov    0x313b(%rip),%rdx        # 0x33b0
     275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 0x0
     27c:	48 89 02             	mov    %rax,(%rdx)
     27f:	e8 8c 14 00 00       	call   0x1710
     284:	e8 87 05 00 00       	call   0x810
     289:	48 8b 05 d0 30 00 00 	mov    0x30d0(%rip),%rax        # 0x3360
     290:	48 89 05 f1 5e 00 00 	mov    %rax,0x5ef1(%rip)        # 0x6188
     297:	e8 84 14 00 00       	call   0x1720
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
     2f9:	48 89 05 80 5e 00 00 	mov    %rax,0x5e80(%rip)        # 0x6180
     300:	44 8b 07             	mov    (%rdi),%r8d
     303:	45 85 c0             	test   %r8d,%r8d
     306:	74 16                	je     0x31e
     308:	b8 0a 00 00 00       	mov    $0xa,%eax
     30d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
     312:	0f 85 e8 00 00 00    	jne    0x400
     318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 0x2000
     31e:	8b 1d 04 5d 00 00    	mov    0x5d04(%rip),%ebx        # 0x6028
     324:	44 8d 63 01          	lea    0x1(%rbx),%r12d
     328:	4d 63 e4             	movslq %r12d,%r12
     32b:	49 c1 e4 03          	shl    $0x3,%r12
     32f:	4c 89 e1             	mov    %r12,%rcx
     332:	e8 21 13 00 00       	call   0x1658
     337:	4c 8b 2d e2 5c 00 00 	mov    0x5ce2(%rip),%r13        # 0x6020
     33e:	48 89 c7             	mov    %rax,%rdi
     341:	85 db                	test   %ebx,%ebx
     343:	7e 46                	jle    0x38b
     345:	8d 6b ff             	lea    -0x1(%rbx),%ebp
     348:	31 db                	xor    %ebx,%ebx
     34a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
     355:	e8 e6 12 00 00       	call   0x1640
     35a:	48 8d 70 01          	lea    0x1(%rax),%rsi
     35e:	48 89 f1             	mov    %rsi,%rcx
     361:	e8 f2 12 00 00       	call   0x1658
     366:	49 89 f0             	mov    %rsi,%r8
     369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
     36d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
     372:	48 89 c1             	mov    %rax,%rcx
     375:	e8 d6 12 00 00       	call   0x1650
     37a:	48 89 d8             	mov    %rbx,%rax
     37d:	48 83 c3 01          	add    $0x1,%rbx
     381:	48 39 c5             	cmp    %rax,%rbp
     384:	75 ca                	jne    0x350
     386:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
     38b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     392:	48 89 3d 87 5c 00 00 	mov    %rdi,0x5c87(%rip)        # 0x6020
     399:	e8 62 02 00 00       	call   0x600
     39e:	48 8b 05 cb 2f 00 00 	mov    0x2fcb(%rip),%rax        # 0x3370
     3a5:	4c 8b 05 6c 5c 00 00 	mov    0x5c6c(%rip),%r8        # 0x6018
     3ac:	8b 0d 76 5c 00 00    	mov    0x5c76(%rip),%ecx        # 0x6028
     3b2:	48 8b 00             	mov    (%rax),%rax
     3b5:	4c 89 00             	mov    %r8,(%rax)
     3b8:	48 8b 15 61 5c 00 00 	mov    0x5c61(%rip),%rdx        # 0x6020
     3bf:	e8 fc 13 00 00       	call   0x17c0
     3c4:	8b 0d 42 5c 00 00    	mov    0x5c42(%rip),%ecx        # 0x600c
     3ca:	89 05 40 5c 00 00    	mov    %eax,0x5c40(%rip)        # 0x6010
     3d0:	85 c9                	test   %ecx,%ecx
     3d2:	0f 84 e6 00 00 00    	je     0x4be
     3d8:	8b 15 2a 5c 00 00    	mov    0x5c2a(%rip),%edx        # 0x6008
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
     410:	48 8b 35 b9 2f 00 00 	mov    0x2fb9(%rip),%rsi        # 0x33d0
     417:	bd 01 00 00 00       	mov    $0x1,%ebp
     41c:	8b 06                	mov    (%rsi),%eax
     41e:	83 f8 01             	cmp    $0x1,%eax
     421:	0f 85 f3 fd ff ff    	jne    0x21a
     427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
     42c:	e8 7f 12 00 00       	call   0x16b0
     431:	8b 06                	mov    (%rsi),%eax
     433:	83 f8 01             	cmp    $0x1,%eax
     436:	0f 85 fd fd ff ff    	jne    0x239
     43c:	48 8b 15 ad 2f 00 00 	mov    0x2fad(%rip),%rdx        # 0x33f0
     443:	48 8b 0d 96 2f 00 00 	mov    0x2f96(%rip),%rcx        # 0x33e0
     44a:	e8 51 12 00 00       	call   0x16a0
     44f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
     455:	85 ed                	test   %ebp,%ebp
     457:	0f 85 e4 fd ff ff    	jne    0x241
     45d:	31 c0                	xor    %eax,%eax
     45f:	48 87 03             	xchg   %rax,(%rbx)
     462:	e9 da fd ff ff       	jmp    0x241
     467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     46e:	00 00 
     470:	4c 89 c1             	mov    %r8,%rcx
     473:	ff 15 1b 6d 00 00    	call   *0x6d1b(%rip)        # 0x7194
     479:	e9 46 fd ff ff       	jmp    0x1c4
     47e:	66 90                	xchg   %ax,%ax
     480:	e8 23 12 00 00       	call   0x16a8
     485:	8b 05 85 5b 00 00    	mov    0x5b85(%rip),%eax        # 0x6010
     48b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
     492:	5b                   	pop    %rbx
     493:	5e                   	pop    %rsi
     494:	5f                   	pop    %rdi
     495:	5d                   	pop    %rbp
     496:	41 5c                	pop    %r12
     498:	41 5d                	pop    %r13
     49a:	c3                   	ret    
     49b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     4a0:	48 8b 15 69 2f 00 00 	mov    0x2f69(%rip),%rdx        # 0x3410
     4a7:	48 8b 0d 52 2f 00 00 	mov    0x2f52(%rip),%rcx        # 0x3400
     4ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
     4b4:	e8 e7 11 00 00       	call   0x16a0
     4b9:	e9 70 fd ff ff       	jmp    0x22e
     4be:	89 c1                	mov    %eax,%ecx
     4c0:	e8 bb 11 00 00       	call   0x1680
     4c5:	90                   	nop
     4c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     4cd:	00 00 00 
     4d0:	48 83 ec 28          	sub    $0x28,%rsp
     4d4:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 0x3480
     4db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
     4e1:	e8 aa fc ff ff       	call   0x190
     4e6:	90                   	nop
     4e7:	90                   	nop
     4e8:	48 83 c4 28          	add    $0x28,%rsp
     4ec:	c3                   	ret    
     4ed:	0f 1f 00             	nopl   (%rax)
     4f0:	48 83 ec 28          	sub    $0x28,%rsp
     4f4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 0x3480
     4fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     501:	e8 8a fc ff ff       	call   0x190
     506:	90                   	nop
     507:	90                   	nop
     508:	48 83 c4 28          	add    $0x28,%rsp
     50c:	c3                   	ret    
     50d:	0f 1f 00             	nopl   (%rax)
     510:	48 83 ec 28          	sub    $0x28,%rsp
     514:	e8 7f 11 00 00       	call   0x1698
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
     550:	48 83 ec 28          	sub    $0x28,%rsp
     554:	48 8b 05 b5 1a 00 00 	mov    0x1ab5(%rip),%rax        # 0x2010
     55b:	48 8b 00             	mov    (%rax),%rax
     55e:	48 85 c0             	test   %rax,%rax
     561:	74 22                	je     0x585
     563:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     568:	ff d0                	call   *%rax
     56a:	48 8b 05 9f 1a 00 00 	mov    0x1a9f(%rip),%rax        # 0x2010
     571:	48 8d 50 08          	lea    0x8(%rax),%rdx
     575:	48 8b 40 08          	mov    0x8(%rax),%rax
     579:	48 89 15 90 1a 00 00 	mov    %rdx,0x1a90(%rip)        # 0x2010
     580:	48 85 c0             	test   %rax,%rax
     583:	75 e3                	jne    0x568
     585:	48 83 c4 28          	add    $0x28,%rsp
     589:	c3                   	ret    
     58a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     590:	56                   	push   %rsi
     591:	53                   	push   %rbx
     592:	48 83 ec 28          	sub    $0x28,%rsp
     596:	48 8b 15 83 2d 00 00 	mov    0x2d83(%rip),%rdx        # 0x3320
     59d:	48 8b 02             	mov    (%rdx),%rax
     5a0:	89 c1                	mov    %eax,%ecx
     5a2:	83 f8 ff             	cmp    $0xffffffff,%eax
     5a5:	74 39                	je     0x5e0
     5a7:	85 c9                	test   %ecx,%ecx
     5a9:	74 20                	je     0x5cb
     5ab:	89 c8                	mov    %ecx,%eax
     5ad:	83 e9 01             	sub    $0x1,%ecx
     5b0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
     5b4:	48 29 c8             	sub    %rcx,%rax
     5b7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
     5bc:	0f 1f 40 00          	nopl   0x0(%rax)
     5c0:	ff 13                	call   *(%rbx)
     5c2:	48 83 eb 08          	sub    $0x8,%rbx
     5c6:	48 39 f3             	cmp    %rsi,%rbx
     5c9:	75 f5                	jne    0x5c0
     5cb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 0x550
     5d2:	48 83 c4 28          	add    $0x28,%rsp
     5d6:	5b                   	pop    %rbx
     5d7:	5e                   	pop    %rsi
     5d8:	e9 33 ff ff ff       	jmp    0x510
     5dd:	0f 1f 00             	nopl   (%rax)
     5e0:	31 c0                	xor    %eax,%eax
     5e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     5e8:	44 8d 40 01          	lea    0x1(%rax),%r8d
     5ec:	89 c1                	mov    %eax,%ecx
     5ee:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
     5f3:	4c 89 c0             	mov    %r8,%rax
     5f6:	75 f0                	jne    0x5e8
     5f8:	eb ad                	jmp    0x5a7
     5fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     600:	8b 05 2a 5a 00 00    	mov    0x5a2a(%rip),%eax        # 0x6030
     606:	85 c0                	test   %eax,%eax
     608:	74 06                	je     0x610
     60a:	c3                   	ret    
     60b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     610:	c7 05 16 5a 00 00 01 	movl   $0x1,0x5a16(%rip)        # 0x6030
     617:	00 00 00 
     61a:	e9 71 ff ff ff       	jmp    0x590
     61f:	90                   	nop
     620:	48 ff 25 d5 6b 00 00 	rex.W jmp *0x6bd5(%rip)        # 0x71fc
     627:	90                   	nop
     628:	90                   	nop
     629:	90                   	nop
     62a:	90                   	nop
     62b:	90                   	nop
     62c:	90                   	nop
     62d:	90                   	nop
     62e:	90                   	nop
     62f:	90                   	nop
     630:	31 c0                	xor    %eax,%eax
     632:	c3                   	ret    
     633:	90                   	nop
     634:	90                   	nop
     635:	90                   	nop
     636:	90                   	nop
     637:	90                   	nop
     638:	90                   	nop
     639:	90                   	nop
     63a:	90                   	nop
     63b:	90                   	nop
     63c:	90                   	nop
     63d:	90                   	nop
     63e:	90                   	nop
     63f:	90                   	nop
     640:	48 83 ec 28          	sub    $0x28,%rsp
     644:	83 fa 03             	cmp    $0x3,%edx
     647:	74 17                	je     0x660
     649:	85 d2                	test   %edx,%edx
     64b:	74 13                	je     0x660
     64d:	b8 01 00 00 00       	mov    $0x1,%eax
     652:	48 83 c4 28          	add    $0x28,%rsp
     656:	c3                   	ret    
     657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     65e:	00 00 
     660:	e8 cb 0a 00 00       	call   0x1130
     665:	b8 01 00 00 00       	mov    $0x1,%eax
     66a:	48 83 c4 28          	add    $0x28,%rsp
     66e:	c3                   	ret    
     66f:	90                   	nop
     670:	56                   	push   %rsi
     671:	53                   	push   %rbx
     672:	48 83 ec 28          	sub    $0x28,%rsp
     676:	48 8b 05 83 2c 00 00 	mov    0x2c83(%rip),%rax        # 0x3300
     67d:	83 38 02             	cmpl   $0x2,(%rax)
     680:	74 06                	je     0x688
     682:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
     688:	83 fa 02             	cmp    $0x2,%edx
     68b:	74 13                	je     0x6a0
     68d:	83 fa 01             	cmp    $0x1,%edx
     690:	74 4e                	je     0x6e0
     692:	b8 01 00 00 00       	mov    $0x1,%eax
     697:	48 83 c4 28          	add    $0x28,%rsp
     69b:	5b                   	pop    %rbx
     69c:	5e                   	pop    %rsi
     69d:	c3                   	ret    
     69e:	66 90                	xchg   %ax,%ax
     6a0:	48 8d 1d b9 79 00 00 	lea    0x79b9(%rip),%rbx        # 0x8060
     6a7:	48 8d 35 b2 79 00 00 	lea    0x79b2(%rip),%rsi        # 0x8060
     6ae:	48 39 de             	cmp    %rbx,%rsi
     6b1:	74 df                	je     0x692
     6b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     6b8:	48 8b 03             	mov    (%rbx),%rax
     6bb:	48 85 c0             	test   %rax,%rax
     6be:	74 02                	je     0x6c2
     6c0:	ff d0                	call   *%rax
     6c2:	48 83 c3 08          	add    $0x8,%rbx
     6c6:	48 39 de             	cmp    %rbx,%rsi
     6c9:	75 ed                	jne    0x6b8
     6cb:	b8 01 00 00 00       	mov    $0x1,%eax
     6d0:	48 83 c4 28          	add    $0x28,%rsp
     6d4:	5b                   	pop    %rbx
     6d5:	5e                   	pop    %rsi
     6d6:	c3                   	ret    
     6d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     6de:	00 00 
     6e0:	e8 4b 0a 00 00       	call   0x1130
     6e5:	b8 01 00 00 00       	mov    $0x1,%eax
     6ea:	48 83 c4 28          	add    $0x28,%rsp
     6ee:	5b                   	pop    %rbx
     6ef:	5e                   	pop    %rsi
     6f0:	c3                   	ret    
     6f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     6f8:	00 00 00 00 
     6fc:	0f 1f 40 00          	nopl   0x0(%rax)
     700:	31 c0                	xor    %eax,%eax
     702:	c3                   	ret    
     703:	90                   	nop
     704:	90                   	nop
     705:	90                   	nop
     706:	90                   	nop
     707:	90                   	nop
     708:	90                   	nop
     709:	90                   	nop
     70a:	90                   	nop
     70b:	90                   	nop
     70c:	90                   	nop
     70d:	90                   	nop
     70e:	90                   	nop
     70f:	90                   	nop
     710:	56                   	push   %rsi
     711:	53                   	push   %rbx
     712:	48 83 ec 78          	sub    $0x78,%rsp
     716:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
     71b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
     720:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
     726:	83 39 06             	cmpl   $0x6,(%rcx)
     729:	0f 87 cd 00 00 00    	ja     0x7fc
     72f:	8b 01                	mov    (%rcx),%eax
     731:	48 8d 15 6c 2a 00 00 	lea    0x2a6c(%rip),%rdx        # 0x31a4
     738:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     73c:	48 01 d0             	add    %rdx,%rax
     73f:	ff e0                	jmp    *%rax
     741:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     748:	48 8d 1d 07 2a 00 00 	lea    0x2a07(%rip),%rbx        # 0x3156
     74f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
     755:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
     75a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
     75f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
     763:	b9 02 00 00 00       	mov    $0x2,%ecx
     768:	e8 73 0f 00 00       	call   0x16e0
     76d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
     774:	49 89 d8             	mov    %rbx,%r8
     777:	48 8d 15 fa 29 00 00 	lea    0x29fa(%rip),%rdx        # 0x3178
     77e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
     784:	48 89 c1             	mov    %rax,%rcx
     787:	49 89 f1             	mov    %rsi,%r9
     78a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
     790:	e8 e3 0e 00 00       	call   0x1678
     795:	90                   	nop
     796:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
     79b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
     7a0:	31 c0                	xor    %eax,%eax
     7a2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
     7a8:	48 83 c4 78          	add    $0x78,%rsp
     7ac:	5b                   	pop    %rbx
     7ad:	5e                   	pop    %rsi
     7ae:	c3                   	ret    
     7af:	90                   	nop
     7b0:	48 8d 1d d9 28 00 00 	lea    0x28d9(%rip),%rbx        # 0x3090
     7b7:	eb 96                	jmp    0x74f
     7b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     7c0:	48 8d 1d 09 29 00 00 	lea    0x2909(%rip),%rbx        # 0x30d0
     7c7:	eb 86                	jmp    0x74f
     7c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     7d0:	48 8d 1d d9 28 00 00 	lea    0x28d9(%rip),%rbx        # 0x30b0
     7d7:	e9 73 ff ff ff       	jmp    0x74f
     7dc:	0f 1f 40 00          	nopl   0x0(%rax)
     7e0:	48 8d 1d 39 29 00 00 	lea    0x2939(%rip),%rbx        # 0x3120
     7e7:	e9 63 ff ff ff       	jmp    0x74f
     7ec:	0f 1f 40 00          	nopl   0x0(%rax)
     7f0:	48 8d 1d 01 29 00 00 	lea    0x2901(%rip),%rbx        # 0x30f8
     7f7:	e9 53 ff ff ff       	jmp    0x74f
     7fc:	48 8d 1d 7d 28 00 00 	lea    0x287d(%rip),%rbx        # 0x3080
     803:	e9 47 ff ff ff       	jmp    0x74f
     808:	90                   	nop
     809:	90                   	nop
     80a:	90                   	nop
     80b:	90                   	nop
     80c:	90                   	nop
     80d:	90                   	nop
     80e:	90                   	nop
     80f:	90                   	nop
     810:	db e3                	fninit 
     812:	c3                   	ret    
     813:	90                   	nop
     814:	90                   	nop
     815:	90                   	nop
     816:	90                   	nop
     817:	90                   	nop
     818:	90                   	nop
     819:	90                   	nop
     81a:	90                   	nop
     81b:	90                   	nop
     81c:	90                   	nop
     81d:	90                   	nop
     81e:	90                   	nop
     81f:	90                   	nop
     820:	41 54                	push   %r12
     822:	53                   	push   %rbx
     823:	48 83 ec 38          	sub    $0x38,%rsp
     827:	49 89 cc             	mov    %rcx,%r12
     82a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
     82f:	b9 02 00 00 00       	mov    $0x2,%ecx
     834:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
     839:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
     83e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
     843:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
     848:	e8 93 0e 00 00       	call   0x16e0
     84d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
     853:	ba 01 00 00 00       	mov    $0x1,%edx
     858:	48 8d 0d 61 29 00 00 	lea    0x2961(%rip),%rcx        # 0x31c0
     85f:	49 89 c1             	mov    %rax,%r9
     862:	e8 f9 0d 00 00       	call   0x1660
     867:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
     86c:	b9 02 00 00 00       	mov    $0x2,%ecx
     871:	e8 6a 0e 00 00       	call   0x16e0
     876:	4c 89 e2             	mov    %r12,%rdx
     879:	48 89 c1             	mov    %rax,%rcx
     87c:	49 89 d8             	mov    %rbx,%r8
     87f:	e8 ac 0d 00 00       	call   0x1630
     884:	e8 07 0e 00 00       	call   0x1690
     889:	90                   	nop
     88a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     890:	41 54                	push   %r12
     892:	55                   	push   %rbp
     893:	57                   	push   %rdi
     894:	56                   	push   %rsi
     895:	53                   	push   %rbx
     896:	48 83 ec 50          	sub    $0x50,%rsp
     89a:	48 63 3d 03 58 00 00 	movslq 0x5803(%rip),%rdi        # 0x60a4
     8a1:	49 89 cc             	mov    %rcx,%r12
     8a4:	48 89 d6             	mov    %rdx,%rsi
     8a7:	4c 89 c3             	mov    %r8,%rbx
     8aa:	85 ff                	test   %edi,%edi
     8ac:	0f 8e 8e 01 00 00    	jle    0xa40
     8b2:	48 8b 05 ef 57 00 00 	mov    0x57ef(%rip),%rax        # 0x60a8
     8b9:	31 c9                	xor    %ecx,%ecx
     8bb:	48 83 c0 18          	add    $0x18,%rax
     8bf:	90                   	nop
     8c0:	48 8b 10             	mov    (%rax),%rdx
     8c3:	49 39 d4             	cmp    %rdx,%r12
     8c6:	72 14                	jb     0x8dc
     8c8:	4c 8b 40 08          	mov    0x8(%rax),%r8
     8cc:	45 8b 40 08          	mov    0x8(%r8),%r8d
     8d0:	4c 01 c2             	add    %r8,%rdx
     8d3:	49 39 d4             	cmp    %rdx,%r12
     8d6:	0f 82 8b 00 00 00    	jb     0x967
     8dc:	83 c1 01             	add    $0x1,%ecx
     8df:	48 83 c0 28          	add    $0x28,%rax
     8e3:	39 f9                	cmp    %edi,%ecx
     8e5:	75 d9                	jne    0x8c0
     8e7:	4c 89 e1             	mov    %r12,%rcx
     8ea:	e8 51 0a 00 00       	call   0x1340
     8ef:	48 89 c5             	mov    %rax,%rbp
     8f2:	48 85 c0             	test   %rax,%rax
     8f5:	0f 84 a2 01 00 00    	je     0xa9d
     8fb:	48 8b 05 a6 57 00 00 	mov    0x57a6(%rip),%rax        # 0x60a8
     902:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
     906:	48 c1 e7 03          	shl    $0x3,%rdi
     90a:	48 01 f8             	add    %rdi,%rax
     90d:	48 89 68 20          	mov    %rbp,0x20(%rax)
     911:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     917:	e8 54 0b 00 00       	call   0x1470
     91c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
     91f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
     924:	41 b8 30 00 00 00    	mov    $0x30,%r8d
     92a:	48 01 c1             	add    %rax,%rcx
     92d:	48 8b 05 74 57 00 00 	mov    0x5774(%rip),%rax        # 0x60a8
     934:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
     939:	ff 15 8d 68 00 00    	call   *0x688d(%rip)        # 0x71cc
     93f:	48 85 c0             	test   %rax,%rax
     942:	0f 84 3a 01 00 00    	je     0xa82
     948:	8b 44 24 44          	mov    0x44(%rsp),%eax
     94c:	8d 50 c0             	lea    -0x40(%rax),%edx
     94f:	83 e2 bf             	and    $0xffffffbf,%edx
     952:	74 0c                	je     0x960
     954:	8d 50 fc             	lea    -0x4(%rax),%edx
     957:	83 e2 fb             	and    $0xfffffffb,%edx
     95a:	0f 85 90 00 00 00    	jne    0x9f0
     960:	83 05 3d 57 00 00 01 	addl   $0x1,0x573d(%rip)        # 0x60a4
     967:	83 fb 08             	cmp    $0x8,%ebx
     96a:	73 2c                	jae    0x998
     96c:	f6 c3 04             	test   $0x4,%bl
     96f:	0f 85 db 00 00 00    	jne    0xa50
     975:	85 db                	test   %ebx,%ebx
     977:	74 10                	je     0x989
     979:	0f b6 06             	movzbl (%rsi),%eax
     97c:	41 88 04 24          	mov    %al,(%r12)
     980:	f6 c3 02             	test   $0x2,%bl
     983:	0f 85 e7 00 00 00    	jne    0xa70
     989:	48 83 c4 50          	add    $0x50,%rsp
     98d:	5b                   	pop    %rbx
     98e:	5e                   	pop    %rsi
     98f:	5f                   	pop    %rdi
     990:	5d                   	pop    %rbp
     991:	41 5c                	pop    %r12
     993:	c3                   	ret    
     994:	0f 1f 40 00          	nopl   0x0(%rax)
     998:	48 8b 06             	mov    (%rsi),%rax
     99b:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
     9a0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
     9a4:	49 89 04 24          	mov    %rax,(%r12)
     9a8:	89 d8                	mov    %ebx,%eax
     9aa:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
     9af:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
     9b4:	49 29 cc             	sub    %rcx,%r12
     9b7:	44 01 e3             	add    %r12d,%ebx
     9ba:	4c 29 e6             	sub    %r12,%rsi
     9bd:	83 e3 f8             	and    $0xfffffff8,%ebx
     9c0:	83 fb 08             	cmp    $0x8,%ebx
     9c3:	72 c4                	jb     0x989
     9c5:	83 e3 f8             	and    $0xfffffff8,%ebx
     9c8:	31 c0                	xor    %eax,%eax
     9ca:	89 c2                	mov    %eax,%edx
     9cc:	83 c0 08             	add    $0x8,%eax
     9cf:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
     9d3:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
     9d7:	39 d8                	cmp    %ebx,%eax
     9d9:	72 ef                	jb     0x9ca
     9db:	48 83 c4 50          	add    $0x50,%rsp
     9df:	5b                   	pop    %rbx
     9e0:	5e                   	pop    %rsi
     9e1:	5f                   	pop    %rdi
     9e2:	5d                   	pop    %rbp
     9e3:	41 5c                	pop    %r12
     9e5:	c3                   	ret    
     9e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     9ed:	00 00 00 
     9f0:	83 f8 02             	cmp    $0x2,%eax
     9f3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     9f8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
     9fd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     a03:	b8 40 00 00 00       	mov    $0x40,%eax
     a08:	44 0f 45 c0          	cmovne %eax,%r8d
     a0c:	48 03 3d 95 56 00 00 	add    0x5695(%rip),%rdi        # 0x60a8
     a13:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
     a17:	49 89 f9             	mov    %rdi,%r9
     a1a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
     a1e:	ff 15 a0 67 00 00    	call   *0x67a0(%rip)        # 0x71c4
     a24:	85 c0                	test   %eax,%eax
     a26:	0f 85 34 ff ff ff    	jne    0x960
     a2c:	ff 15 5a 67 00 00    	call   *0x675a(%rip)        # 0x718c
     a32:	48 8d 0d ff 27 00 00 	lea    0x27ff(%rip),%rcx        # 0x3238
     a39:	89 c2                	mov    %eax,%edx
     a3b:	e8 e0 fd ff ff       	call   0x820
     a40:	31 ff                	xor    %edi,%edi
     a42:	e9 a0 fe ff ff       	jmp    0x8e7
     a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     a4e:	00 00 
     a50:	8b 06                	mov    (%rsi),%eax
     a52:	89 db                	mov    %ebx,%ebx
     a54:	41 89 04 24          	mov    %eax,(%r12)
     a58:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
     a5c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
     a61:	e9 23 ff ff ff       	jmp    0x989
     a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a6d:	00 00 00 
     a70:	89 db                	mov    %ebx,%ebx
     a72:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
     a77:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
     a7d:	e9 07 ff ff ff       	jmp    0x989
     a82:	48 8b 05 1f 56 00 00 	mov    0x561f(%rip),%rax        # 0x60a8
     a89:	8b 55 08             	mov    0x8(%rbp),%edx
     a8c:	48 8d 0d 6d 27 00 00 	lea    0x276d(%rip),%rcx        # 0x3200
     a93:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
     a98:	e8 83 fd ff ff       	call   0x820
     a9d:	4c 89 e2             	mov    %r12,%rdx
     aa0:	48 8d 0d 39 27 00 00 	lea    0x2739(%rip),%rcx        # 0x31e0
     aa7:	e8 74 fd ff ff       	call   0x820
     aac:	90                   	nop
     aad:	0f 1f 00             	nopl   (%rax)
     ab0:	55                   	push   %rbp
     ab1:	41 57                	push   %r15
     ab3:	41 56                	push   %r14
     ab5:	41 55                	push   %r13
     ab7:	41 54                	push   %r12
     ab9:	57                   	push   %rdi
     aba:	56                   	push   %rsi
     abb:	53                   	push   %rbx
     abc:	48 83 ec 38          	sub    $0x38,%rsp
     ac0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
     ac7:	00 
     ac8:	8b 35 d2 55 00 00    	mov    0x55d2(%rip),%esi        # 0x60a0
     ace:	85 f6                	test   %esi,%esi
     ad0:	74 16                	je     0xae8
     ad2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
     ad6:	5b                   	pop    %rbx
     ad7:	5e                   	pop    %rsi
     ad8:	5f                   	pop    %rdi
     ad9:	41 5c                	pop    %r12
     adb:	41 5d                	pop    %r13
     add:	41 5e                	pop    %r14
     adf:	41 5f                	pop    %r15
     ae1:	5d                   	pop    %rbp
     ae2:	c3                   	ret    
     ae3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     ae8:	c7 05 ae 55 00 00 01 	movl   $0x1,0x55ae(%rip)        # 0x60a0
     aef:	00 00 00 
     af2:	e8 d9 08 00 00       	call   0x13d0
     af7:	48 98                	cltq   
     af9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     afd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
     b04:	00 
     b05:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
     b09:	e8 e2 0a 00 00       	call   0x15f0
     b0e:	4c 8b 25 1b 28 00 00 	mov    0x281b(%rip),%r12        # 0x3330
     b15:	48 8b 1d 24 28 00 00 	mov    0x2824(%rip),%rbx        # 0x3340
     b1c:	c7 05 7e 55 00 00 00 	movl   $0x0,0x557e(%rip)        # 0x60a4
     b23:	00 00 00 
     b26:	48 29 c4             	sub    %rax,%rsp
     b29:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
     b2e:	48 89 05 73 55 00 00 	mov    %rax,0x5573(%rip)        # 0x60a8
     b35:	4c 89 e0             	mov    %r12,%rax
     b38:	48 29 d8             	sub    %rbx,%rax
     b3b:	48 83 f8 07          	cmp    $0x7,%rax
     b3f:	7e 91                	jle    0xad2
     b41:	8b 13                	mov    (%rbx),%edx
     b43:	48 83 f8 0b          	cmp    $0xb,%rax
     b47:	0f 8f 4b 01 00 00    	jg     0xc98
     b4d:	85 d2                	test   %edx,%edx
     b4f:	0f 85 cb 01 00 00    	jne    0xd20
     b55:	8b 43 04             	mov    0x4(%rbx),%eax
     b58:	85 c0                	test   %eax,%eax
     b5a:	0f 85 c0 01 00 00    	jne    0xd20
     b60:	8b 53 08             	mov    0x8(%rbx),%edx
     b63:	83 fa 01             	cmp    $0x1,%edx
     b66:	0f 85 1c 02 00 00    	jne    0xd88
     b6c:	48 83 c3 0c          	add    $0xc,%rbx
     b70:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
     b74:	4c 8b 2d e5 27 00 00 	mov    0x27e5(%rip),%r13        # 0x3360
     b7b:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
     b82:	ff ff ff 
     b85:	4c 39 e3             	cmp    %r12,%rbx
     b88:	72 3f                	jb     0xbc9
     b8a:	e9 43 ff ff ff       	jmp    0xad2
     b8f:	90                   	nop
     b90:	44 0f b6 01          	movzbl (%rcx),%r8d
     b94:	4c 89 ff             	mov    %r15,%rdi
     b97:	4d 89 c2             	mov    %r8,%r10
     b9a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
     ba1:	45 84 c0             	test   %r8b,%r8b
     ba4:	4d 0f 48 c2          	cmovs  %r10,%r8
     ba8:	49 29 d0             	sub    %rdx,%r8
     bab:	4c 89 fa             	mov    %r15,%rdx
     bae:	4d 01 c8             	add    %r9,%r8
     bb1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
     bb5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
     bbb:	e8 d0 fc ff ff       	call   0x890
     bc0:	48 83 c3 0c          	add    $0xc,%rbx
     bc4:	4c 39 e3             	cmp    %r12,%rbx
     bc7:	73 77                	jae    0xc40
     bc9:	8b 13                	mov    (%rbx),%edx
     bcb:	8b 4b 04             	mov    0x4(%rbx),%ecx
     bce:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
     bd3:	4c 01 ea             	add    %r13,%rdx
     bd6:	4c 01 e9             	add    %r13,%rcx
     bd9:	4c 8b 0a             	mov    (%rdx),%r9
     bdc:	41 83 f8 20          	cmp    $0x20,%r8d
     be0:	0f 84 0a 01 00 00    	je     0xcf0
     be6:	0f 87 d4 00 00 00    	ja     0xcc0
     bec:	41 83 f8 08          	cmp    $0x8,%r8d
     bf0:	74 9e                	je     0xb90
     bf2:	41 83 f8 10          	cmp    $0x10,%r8d
     bf6:	0f 85 75 01 00 00    	jne    0xd71
     bfc:	44 0f b7 01          	movzwl (%rcx),%r8d
     c00:	4c 89 ff             	mov    %r15,%rdi
     c03:	4d 89 c2             	mov    %r8,%r10
     c06:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
     c0d:	66 45 85 c0          	test   %r8w,%r8w
     c11:	4d 0f 48 c2          	cmovs  %r10,%r8
     c15:	48 83 c3 0c          	add    $0xc,%rbx
     c19:	49 29 d0             	sub    %rdx,%r8
     c1c:	4c 89 fa             	mov    %r15,%rdx
     c1f:	4d 01 c8             	add    %r9,%r8
     c22:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
     c26:	41 b8 02 00 00 00    	mov    $0x2,%r8d
     c2c:	e8 5f fc ff ff       	call   0x890
     c31:	4c 39 e3             	cmp    %r12,%rbx
     c34:	72 93                	jb     0xbc9
     c36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c3d:	00 00 00 
     c40:	8b 05 5e 54 00 00    	mov    0x545e(%rip),%eax        # 0x60a4
     c46:	85 c0                	test   %eax,%eax
     c48:	0f 8e 84 fe ff ff    	jle    0xad2
     c4e:	4c 8b 25 6f 65 00 00 	mov    0x656f(%rip),%r12        # 0x71c4
     c55:	31 db                	xor    %ebx,%ebx
     c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     c5e:	00 00 
     c60:	48 8b 05 41 54 00 00 	mov    0x5441(%rip),%rax        # 0x60a8
     c67:	48 01 d8             	add    %rbx,%rax
     c6a:	44 8b 00             	mov    (%rax),%r8d
     c6d:	45 85 c0             	test   %r8d,%r8d
     c70:	74 0e                	je     0xc80
     c72:	48 8b 50 10          	mov    0x10(%rax),%rdx
     c76:	48 8b 48 08          	mov    0x8(%rax),%rcx
     c7a:	49 89 f9             	mov    %rdi,%r9
     c7d:	41 ff d4             	call   *%r12
     c80:	83 c6 01             	add    $0x1,%esi
     c83:	48 83 c3 28          	add    $0x28,%rbx
     c87:	3b 35 17 54 00 00    	cmp    0x5417(%rip),%esi        # 0x60a4
     c8d:	7c d1                	jl     0xc60
     c8f:	e9 3e fe ff ff       	jmp    0xad2
     c94:	0f 1f 40 00          	nopl   0x0(%rax)
     c98:	85 d2                	test   %edx,%edx
     c9a:	0f 85 80 00 00 00    	jne    0xd20
     ca0:	8b 43 04             	mov    0x4(%rbx),%eax
     ca3:	89 c7                	mov    %eax,%edi
     ca5:	0b 7b 08             	or     0x8(%rbx),%edi
     ca8:	0f 85 aa fe ff ff    	jne    0xb58
     cae:	8b 53 0c             	mov    0xc(%rbx),%edx
     cb1:	48 83 c3 0c          	add    $0xc,%rbx
     cb5:	e9 93 fe ff ff       	jmp    0xb4d
     cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     cc0:	41 83 f8 40          	cmp    $0x40,%r8d
     cc4:	0f 85 a7 00 00 00    	jne    0xd71
     cca:	48 8b 01             	mov    (%rcx),%rax
     ccd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
     cd3:	4c 89 ff             	mov    %r15,%rdi
     cd6:	48 29 d0             	sub    %rdx,%rax
     cd9:	4c 89 fa             	mov    %r15,%rdx
     cdc:	4c 01 c8             	add    %r9,%rax
     cdf:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     ce3:	e8 a8 fb ff ff       	call   0x890
     ce8:	e9 d3 fe ff ff       	jmp    0xbc0
     ced:	0f 1f 00             	nopl   (%rax)
     cf0:	8b 01                	mov    (%rcx),%eax
     cf2:	4c 89 ff             	mov    %r15,%rdi
     cf5:	49 89 c0             	mov    %rax,%r8
     cf8:	4c 09 f0             	or     %r14,%rax
     cfb:	45 85 c0             	test   %r8d,%r8d
     cfe:	49 0f 49 c0          	cmovns %r8,%rax
     d02:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     d08:	48 29 d0             	sub    %rdx,%rax
     d0b:	4c 89 fa             	mov    %r15,%rdx
     d0e:	4c 01 c8             	add    %r9,%rax
     d11:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     d15:	e8 76 fb ff ff       	call   0x890
     d1a:	e9 a1 fe ff ff       	jmp    0xbc0
     d1f:	90                   	nop
     d20:	4c 39 e3             	cmp    %r12,%rbx
     d23:	0f 83 a9 fd ff ff    	jae    0xad2
     d29:	49 83 ec 01          	sub    $0x1,%r12
     d2d:	4c 8b 2d 2c 26 00 00 	mov    0x262c(%rip),%r13        # 0x3360
     d34:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
     d38:	49 29 dc             	sub    %rbx,%r12
     d3b:	49 c1 ec 03          	shr    $0x3,%r12
     d3f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
     d44:	0f 1f 40 00          	nopl   0x0(%rax)
     d48:	8b 4b 04             	mov    0x4(%rbx),%ecx
     d4b:	8b 03                	mov    (%rbx),%eax
     d4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     d53:	48 89 fa             	mov    %rdi,%rdx
     d56:	48 83 c3 08          	add    $0x8,%rbx
     d5a:	4c 01 e9             	add    %r13,%rcx
     d5d:	03 01                	add    (%rcx),%eax
     d5f:	89 45 a8             	mov    %eax,-0x58(%rbp)
     d62:	e8 29 fb ff ff       	call   0x890
     d67:	4c 39 e3             	cmp    %r12,%rbx
     d6a:	75 dc                	jne    0xd48
     d6c:	e9 cf fe ff ff       	jmp    0xc40
     d71:	44 89 c2             	mov    %r8d,%edx
     d74:	48 8d 0d 1d 25 00 00 	lea    0x251d(%rip),%rcx        # 0x3298
     d7b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
     d82:	00 
     d83:	e8 98 fa ff ff       	call   0x820
     d88:	48 8d 0d d1 24 00 00 	lea    0x24d1(%rip),%rcx        # 0x3260
     d8f:	e8 8c fa ff ff       	call   0x820
     d94:	90                   	nop
     d95:	90                   	nop
     d96:	90                   	nop
     d97:	90                   	nop
     d98:	90                   	nop
     d99:	90                   	nop
     d9a:	90                   	nop
     d9b:	90                   	nop
     d9c:	90                   	nop
     d9d:	90                   	nop
     d9e:	90                   	nop
     d9f:	90                   	nop
     da0:	48 83 ec 58          	sub    $0x58,%rsp
     da4:	48 8b 05 05 53 00 00 	mov    0x5305(%rip),%rax        # 0x60b0
     dab:	48 85 c0             	test   %rax,%rax
     dae:	74 2c                	je     0xddc
     db0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
     db7:	00 00 
     db9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
     dbd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
     dc2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
     dc7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
     dcd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
     dd3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
     dd9:	ff d0                	call   *%rax
     ddb:	90                   	nop
     ddc:	48 83 c4 58          	add    $0x58,%rsp
     de0:	c3                   	ret    
     de1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     de8:	00 00 00 00 
     dec:	0f 1f 40 00          	nopl   0x0(%rax)
     df0:	48 89 0d b9 52 00 00 	mov    %rcx,0x52b9(%rip)        # 0x60b0
     df7:	e9 bc 08 00 00       	jmp    0x16b8
     dfc:	90                   	nop
     dfd:	90                   	nop
     dfe:	90                   	nop
     dff:	90                   	nop
     e00:	41 54                	push   %r12
     e02:	48 83 ec 20          	sub    $0x20,%rsp
     e06:	48 8b 11             	mov    (%rcx),%rdx
     e09:	8b 02                	mov    (%rdx),%eax
     e0b:	49 89 cc             	mov    %rcx,%r12
     e0e:	89 c1                	mov    %eax,%ecx
     e10:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
     e16:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
     e1c:	0f 84 ce 00 00 00    	je     0xef0
     e22:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
     e27:	0f 87 aa 00 00 00    	ja     0xed7
     e2d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
     e32:	76 54                	jbe    0xe88
     e34:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
     e39:	83 f8 09             	cmp    $0x9,%eax
     e3c:	77 3a                	ja     0xe78
     e3e:	48 8d 15 8b 24 00 00 	lea    0x248b(%rip),%rdx        # 0x32d0
     e45:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     e49:	48 01 d0             	add    %rdx,%rax
     e4c:	ff e0                	jmp    *%rax
     e4e:	31 d2                	xor    %edx,%edx
     e50:	b9 08 00 00 00       	mov    $0x8,%ecx
     e55:	e8 ee 07 00 00       	call   0x1648
     e5a:	48 83 f8 01          	cmp    $0x1,%rax
     e5e:	0f 85 b7 00 00 00    	jne    0xf1b
     e64:	ba 01 00 00 00       	mov    $0x1,%edx
     e69:	b9 08 00 00 00       	mov    $0x8,%ecx
     e6e:	e8 d5 07 00 00       	call   0x1648
     e73:	e8 98 f9 ff ff       	call   0x810
     e78:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     e7d:	48 83 c4 20          	add    $0x20,%rsp
     e81:	41 5c                	pop    %r12
     e83:	c3                   	ret    
     e84:	0f 1f 40 00          	nopl   0x0(%rax)
     e88:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
     e8d:	0f 84 a5 00 00 00    	je     0xf38
     e93:	76 3b                	jbe    0xed0
     e95:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
     e9a:	74 dc                	je     0xe78
     e9c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
     ea1:	75 34                	jne    0xed7
     ea3:	31 d2                	xor    %edx,%edx
     ea5:	b9 04 00 00 00       	mov    $0x4,%ecx
     eaa:	e8 99 07 00 00       	call   0x1648
     eaf:	48 83 f8 01          	cmp    $0x1,%rax
     eb3:	0f 84 a7 00 00 00    	je     0xf60
     eb9:	48 85 c0             	test   %rax,%rax
     ebc:	74 19                	je     0xed7
     ebe:	b9 04 00 00 00       	mov    $0x4,%ecx
     ec3:	ff d0                	call   *%rax
     ec5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     eca:	eb b1                	jmp    0xe7d
     ecc:	0f 1f 40 00          	nopl   0x0(%rax)
     ed0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
     ed5:	74 a1                	je     0xe78
     ed7:	48 8b 05 f2 51 00 00 	mov    0x51f2(%rip),%rax        # 0x60d0
     ede:	48 85 c0             	test   %rax,%rax
     ee1:	74 1d                	je     0xf00
     ee3:	4c 89 e1             	mov    %r12,%rcx
     ee6:	48 83 c4 20          	add    $0x20,%rsp
     eea:	41 5c                	pop    %r12
     eec:	48 ff e0             	rex.W jmp *%rax
     eef:	90                   	nop
     ef0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
     ef4:	0f 85 28 ff ff ff    	jne    0xe22
     efa:	e9 79 ff ff ff       	jmp    0xe78
     eff:	90                   	nop
     f00:	31 c0                	xor    %eax,%eax
     f02:	48 83 c4 20          	add    $0x20,%rsp
     f06:	41 5c                	pop    %r12
     f08:	c3                   	ret    
     f09:	31 d2                	xor    %edx,%edx
     f0b:	b9 08 00 00 00       	mov    $0x8,%ecx
     f10:	e8 33 07 00 00       	call   0x1648
     f15:	48 83 f8 01          	cmp    $0x1,%rax
     f19:	74 65                	je     0xf80
     f1b:	48 85 c0             	test   %rax,%rax
     f1e:	74 b7                	je     0xed7
     f20:	b9 08 00 00 00       	mov    $0x8,%ecx
     f25:	ff d0                	call   *%rax
     f27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f2c:	e9 4c ff ff ff       	jmp    0xe7d
     f31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     f38:	31 d2                	xor    %edx,%edx
     f3a:	b9 0b 00 00 00       	mov    $0xb,%ecx
     f3f:	e8 04 07 00 00       	call   0x1648
     f44:	48 83 f8 01          	cmp    $0x1,%rax
     f48:	74 4f                	je     0xf99
     f4a:	48 85 c0             	test   %rax,%rax
     f4d:	74 88                	je     0xed7
     f4f:	b9 0b 00 00 00       	mov    $0xb,%ecx
     f54:	ff d0                	call   *%rax
     f56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f5b:	e9 1d ff ff ff       	jmp    0xe7d
     f60:	ba 01 00 00 00       	mov    $0x1,%edx
     f65:	b9 04 00 00 00       	mov    $0x4,%ecx
     f6a:	e8 d9 06 00 00       	call   0x1648
     f6f:	83 c8 ff             	or     $0xffffffff,%eax
     f72:	e9 06 ff ff ff       	jmp    0xe7d
     f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     f7e:	00 00 
     f80:	ba 01 00 00 00       	mov    $0x1,%edx
     f85:	b9 08 00 00 00       	mov    $0x8,%ecx
     f8a:	e8 b9 06 00 00       	call   0x1648
     f8f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f94:	e9 e4 fe ff ff       	jmp    0xe7d
     f99:	ba 01 00 00 00       	mov    $0x1,%edx
     f9e:	b9 0b 00 00 00       	mov    $0xb,%ecx
     fa3:	e8 a0 06 00 00       	call   0x1648
     fa8:	83 c8 ff             	or     $0xffffffff,%eax
     fab:	e9 cd fe ff ff       	jmp    0xe7d
     fb0:	41 54                	push   %r12
     fb2:	57                   	push   %rdi
     fb3:	56                   	push   %rsi
     fb4:	53                   	push   %rbx
     fb5:	48 83 ec 28          	sub    $0x28,%rsp
     fb9:	48 8d 0d 40 51 00 00 	lea    0x5140(%rip),%rcx        # 0x6100
     fc0:	ff 15 be 61 00 00    	call   *0x61be(%rip)        # 0x7184
     fc6:	48 8b 1d 13 51 00 00 	mov    0x5113(%rip),%rbx        # 0x60e0
     fcd:	48 85 db             	test   %rbx,%rbx
     fd0:	74 32                	je     0x1004
     fd2:	48 8b 3d e3 61 00 00 	mov    0x61e3(%rip),%rdi        # 0x71bc
     fd9:	48 8b 35 ac 61 00 00 	mov    0x61ac(%rip),%rsi        # 0x718c
     fe0:	8b 0b                	mov    (%rbx),%ecx
     fe2:	ff d7                	call   *%rdi
     fe4:	49 89 c4             	mov    %rax,%r12
     fe7:	ff d6                	call   *%rsi
     fe9:	85 c0                	test   %eax,%eax
     feb:	75 0e                	jne    0xffb
     fed:	4d 85 e4             	test   %r12,%r12
     ff0:	74 09                	je     0xffb
     ff2:	48 8b 43 08          	mov    0x8(%rbx),%rax
     ff6:	4c 89 e1             	mov    %r12,%rcx
     ff9:	ff d0                	call   *%rax
     ffb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
     fff:	48 85 db             	test   %rbx,%rbx
    1002:	75 dc                	jne    0xfe0
    1004:	48 8d 0d f5 50 00 00 	lea    0x50f5(%rip),%rcx        # 0x6100
    100b:	48 83 c4 28          	add    $0x28,%rsp
    100f:	5b                   	pop    %rbx
    1010:	5e                   	pop    %rsi
    1011:	5f                   	pop    %rdi
    1012:	41 5c                	pop    %r12
    1014:	48 ff 25 89 61 00 00 	rex.W jmp *0x6189(%rip)        # 0x71a4
    101b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1020:	57                   	push   %rdi
    1021:	56                   	push   %rsi
    1022:	53                   	push   %rbx
    1023:	48 83 ec 20          	sub    $0x20,%rsp
    1027:	8b 05 bb 50 00 00    	mov    0x50bb(%rip),%eax        # 0x60e8
    102d:	89 cf                	mov    %ecx,%edi
    102f:	48 89 d6             	mov    %rdx,%rsi
    1032:	85 c0                	test   %eax,%eax
    1034:	75 0a                	jne    0x1040
    1036:	48 83 c4 20          	add    $0x20,%rsp
    103a:	5b                   	pop    %rbx
    103b:	5e                   	pop    %rsi
    103c:	5f                   	pop    %rdi
    103d:	c3                   	ret    
    103e:	66 90                	xchg   %ax,%ax
    1040:	ba 18 00 00 00       	mov    $0x18,%edx
    1045:	b9 01 00 00 00       	mov    $0x1,%ecx
    104a:	e8 39 06 00 00       	call   0x1688
    104f:	48 89 c3             	mov    %rax,%rbx
    1052:	48 85 c0             	test   %rax,%rax
    1055:	74 3c                	je     0x1093
    1057:	89 38                	mov    %edi,(%rax)
    1059:	48 8d 0d a0 50 00 00 	lea    0x50a0(%rip),%rcx        # 0x6100
    1060:	48 89 70 08          	mov    %rsi,0x8(%rax)
    1064:	ff 15 1a 61 00 00    	call   *0x611a(%rip)        # 0x7184
    106a:	48 8b 05 6f 50 00 00 	mov    0x506f(%rip),%rax        # 0x60e0
    1071:	48 8d 0d 88 50 00 00 	lea    0x5088(%rip),%rcx        # 0x6100
    1078:	48 89 1d 61 50 00 00 	mov    %rbx,0x5061(%rip)        # 0x60e0
    107f:	48 89 43 10          	mov    %rax,0x10(%rbx)
    1083:	ff 15 1b 61 00 00    	call   *0x611b(%rip)        # 0x71a4
    1089:	31 c0                	xor    %eax,%eax
    108b:	48 83 c4 20          	add    $0x20,%rsp
    108f:	5b                   	pop    %rbx
    1090:	5e                   	pop    %rsi
    1091:	5f                   	pop    %rdi
    1092:	c3                   	ret    
    1093:	83 c8 ff             	or     $0xffffffff,%eax
    1096:	eb 9e                	jmp    0x1036
    1098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    109f:	00 
    10a0:	53                   	push   %rbx
    10a1:	48 83 ec 20          	sub    $0x20,%rsp
    10a5:	8b 05 3d 50 00 00    	mov    0x503d(%rip),%eax        # 0x60e8
    10ab:	89 cb                	mov    %ecx,%ebx
    10ad:	85 c0                	test   %eax,%eax
    10af:	75 0f                	jne    0x10c0
    10b1:	31 c0                	xor    %eax,%eax
    10b3:	48 83 c4 20          	add    $0x20,%rsp
    10b7:	5b                   	pop    %rbx
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10c0:	48 8d 0d 39 50 00 00 	lea    0x5039(%rip),%rcx        # 0x6100
    10c7:	ff 15 b7 60 00 00    	call   *0x60b7(%rip)        # 0x7184
    10cd:	48 8b 0d 0c 50 00 00 	mov    0x500c(%rip),%rcx        # 0x60e0
    10d4:	48 85 c9             	test   %rcx,%rcx
    10d7:	74 2a                	je     0x1103
    10d9:	31 d2                	xor    %edx,%edx
    10db:	eb 0e                	jmp    0x10eb
    10dd:	0f 1f 00             	nopl   (%rax)
    10e0:	48 89 ca             	mov    %rcx,%rdx
    10e3:	48 85 c0             	test   %rax,%rax
    10e6:	74 1b                	je     0x1103
    10e8:	48 89 c1             	mov    %rax,%rcx
    10eb:	8b 01                	mov    (%rcx),%eax
    10ed:	39 d8                	cmp    %ebx,%eax
    10ef:	48 8b 41 10          	mov    0x10(%rcx),%rax
    10f3:	75 eb                	jne    0x10e0
    10f5:	48 85 d2             	test   %rdx,%rdx
    10f8:	74 26                	je     0x1120
    10fa:	48 89 42 10          	mov    %rax,0x10(%rdx)
    10fe:	e8 65 05 00 00       	call   0x1668
    1103:	48 8d 0d f6 4f 00 00 	lea    0x4ff6(%rip),%rcx        # 0x6100
    110a:	ff 15 94 60 00 00    	call   *0x6094(%rip)        # 0x71a4
    1110:	31 c0                	xor    %eax,%eax
    1112:	48 83 c4 20          	add    $0x20,%rsp
    1116:	5b                   	pop    %rbx
    1117:	c3                   	ret    
    1118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    111f:	00 
    1120:	48 89 05 b9 4f 00 00 	mov    %rax,0x4fb9(%rip)        # 0x60e0
    1127:	eb d5                	jmp    0x10fe
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1130:	53                   	push   %rbx
    1131:	48 83 ec 20          	sub    $0x20,%rsp
    1135:	83 fa 02             	cmp    $0x2,%edx
    1138:	0f 84 c2 00 00 00    	je     0x1200
    113e:	77 28                	ja     0x1168
    1140:	85 d2                	test   %edx,%edx
    1142:	74 4c                	je     0x1190
    1144:	8b 05 9e 4f 00 00    	mov    0x4f9e(%rip),%eax        # 0x60e8
    114a:	85 c0                	test   %eax,%eax
    114c:	74 32                	je     0x1180
    114e:	c7 05 90 4f 00 00 01 	movl   $0x1,0x4f90(%rip)        # 0x60e8
    1155:	00 00 00 
    1158:	b8 01 00 00 00       	mov    $0x1,%eax
    115d:	48 83 c4 20          	add    $0x20,%rsp
    1161:	5b                   	pop    %rbx
    1162:	c3                   	ret    
    1163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1168:	83 fa 03             	cmp    $0x3,%edx
    116b:	75 eb                	jne    0x1158
    116d:	8b 05 75 4f 00 00    	mov    0x4f75(%rip),%eax        # 0x60e8
    1173:	85 c0                	test   %eax,%eax
    1175:	74 e1                	je     0x1158
    1177:	e8 34 fe ff ff       	call   0xfb0
    117c:	eb da                	jmp    0x1158
    117e:	66 90                	xchg   %ax,%ax
    1180:	48 8d 0d 79 4f 00 00 	lea    0x4f79(%rip),%rcx        # 0x6100
    1187:	ff 15 0f 60 00 00    	call   *0x600f(%rip)        # 0x719c
    118d:	eb bf                	jmp    0x114e
    118f:	90                   	nop
    1190:	8b 05 52 4f 00 00    	mov    0x4f52(%rip),%eax        # 0x60e8
    1196:	85 c0                	test   %eax,%eax
    1198:	74 05                	je     0x119f
    119a:	e8 11 fe ff ff       	call   0xfb0
    119f:	8b 05 43 4f 00 00    	mov    0x4f43(%rip),%eax        # 0x60e8
    11a5:	83 f8 01             	cmp    $0x1,%eax
    11a8:	75 ae                	jne    0x1158
    11aa:	48 8b 1d 2f 4f 00 00 	mov    0x4f2f(%rip),%rbx        # 0x60e0
    11b1:	48 85 db             	test   %rbx,%rbx
    11b4:	74 1b                	je     0x11d1
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	48 89 d9             	mov    %rbx,%rcx
    11c3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
    11c7:	e8 9c 04 00 00       	call   0x1668
    11cc:	48 85 db             	test   %rbx,%rbx
    11cf:	75 ef                	jne    0x11c0
    11d1:	48 8d 0d 28 4f 00 00 	lea    0x4f28(%rip),%rcx        # 0x6100
    11d8:	48 c7 05 fd 4e 00 00 	movq   $0x0,0x4efd(%rip)        # 0x60e0
    11df:	00 00 00 00 
    11e3:	c7 05 fb 4e 00 00 00 	movl   $0x0,0x4efb(%rip)        # 0x60e8
    11ea:	00 00 00 
    11ed:	ff 15 89 5f 00 00    	call   *0x5f89(%rip)        # 0x717c
    11f3:	e9 60 ff ff ff       	jmp    0x1158
    11f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11ff:	00 
    1200:	e8 0b f6 ff ff       	call   0x810
    1205:	b8 01 00 00 00       	mov    $0x1,%eax
    120a:	48 83 c4 20          	add    $0x20,%rsp
    120e:	5b                   	pop    %rbx
    120f:	c3                   	ret    
    1210:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1214:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1218:	31 c0                	xor    %eax,%eax
    121a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
    1220:	75 0b                	jne    0x122d
    1222:	31 c0                	xor    %eax,%eax
    1224:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
    122a:	0f 94 c0             	sete   %al
    122d:	c3                   	ret    
    122e:	66 90                	xchg   %ax,%ax
    1230:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1235:	75 09                	jne    0x1240
    1237:	eb d7                	jmp    0x1210
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1240:	31 c0                	xor    %eax,%eax
    1242:	c3                   	ret    
    1243:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    124a:	00 00 00 00 
    124e:	66 90                	xchg   %ax,%ax
    1250:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1254:	48 01 c1             	add    %rax,%rcx
    1257:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    125b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
    1260:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
    1264:	85 c9                	test   %ecx,%ecx
    1266:	74 2d                	je     0x1295
    1268:	83 e9 01             	sub    $0x1,%ecx
    126b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    126f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
    1274:	0f 1f 40 00          	nopl   0x0(%rax)
    1278:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    127c:	4c 89 c1             	mov    %r8,%rcx
    127f:	49 39 d0             	cmp    %rdx,%r8
    1282:	77 08                	ja     0x128c
    1284:	03 48 08             	add    0x8(%rax),%ecx
    1287:	48 39 d1             	cmp    %rdx,%rcx
    128a:	77 0b                	ja     0x1297
    128c:	48 83 c0 28          	add    $0x28,%rax
    1290:	4c 39 c8             	cmp    %r9,%rax
    1293:	75 e3                	jne    0x1278
    1295:	31 c0                	xor    %eax,%eax
    1297:	c3                   	ret    
    1298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    129f:	00 
    12a0:	41 54                	push   %r12
    12a2:	56                   	push   %rsi
    12a3:	53                   	push   %rbx
    12a4:	48 83 ec 20          	sub    $0x20,%rsp
    12a8:	48 89 cb             	mov    %rcx,%rbx
    12ab:	e8 90 03 00 00       	call   0x1640
    12b0:	48 83 f8 08          	cmp    $0x8,%rax
    12b4:	77 7a                	ja     0x1330
    12b6:	48 8b 0d a3 20 00 00 	mov    0x20a3(%rip),%rcx        # 0x3360
    12bd:	45 31 e4             	xor    %r12d,%r12d
    12c0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    12c5:	75 57                	jne    0x131e
    12c7:	e8 44 ff ff ff       	call   0x1210
    12cc:	85 c0                	test   %eax,%eax
    12ce:	74 4e                	je     0x131e
    12d0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    12d4:	48 01 c1             	add    %rax,%rcx
    12d7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    12db:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
    12e0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
    12e4:	85 c0                	test   %eax,%eax
    12e6:	74 48                	je     0x1330
    12e8:	83 e8 01             	sub    $0x1,%eax
    12eb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    12ef:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
    12f4:	eb 13                	jmp    0x1309
    12f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12fd:	00 00 00 
    1300:	49 83 c4 28          	add    $0x28,%r12
    1304:	49 39 f4             	cmp    %rsi,%r12
    1307:	74 27                	je     0x1330
    1309:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    130f:	48 89 da             	mov    %rbx,%rdx
    1312:	4c 89 e1             	mov    %r12,%rcx
    1315:	e8 1e 03 00 00       	call   0x1638
    131a:	85 c0                	test   %eax,%eax
    131c:	75 e2                	jne    0x1300
    131e:	4c 89 e0             	mov    %r12,%rax
    1321:	48 83 c4 20          	add    $0x20,%rsp
    1325:	5b                   	pop    %rbx
    1326:	5e                   	pop    %rsi
    1327:	41 5c                	pop    %r12
    1329:	c3                   	ret    
    132a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1330:	45 31 e4             	xor    %r12d,%r12d
    1333:	4c 89 e0             	mov    %r12,%rax
    1336:	48 83 c4 20          	add    $0x20,%rsp
    133a:	5b                   	pop    %rbx
    133b:	5e                   	pop    %rsi
    133c:	41 5c                	pop    %r12
    133e:	c3                   	ret    
    133f:	90                   	nop
    1340:	48 83 ec 28          	sub    $0x28,%rsp
    1344:	4c 8b 15 15 20 00 00 	mov    0x2015(%rip),%r10        # 0x3360
    134b:	45 31 c0             	xor    %r8d,%r8d
    134e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
    1354:	49 89 c9             	mov    %rcx,%r9
    1357:	75 60                	jne    0x13b9
    1359:	4c 89 d1             	mov    %r10,%rcx
    135c:	e8 af fe ff ff       	call   0x1210
    1361:	85 c0                	test   %eax,%eax
    1363:	74 54                	je     0x13b9
    1365:	49 63 42 3c          	movslq 0x3c(%r10),%rax
    1369:	4c 89 c9             	mov    %r9,%rcx
    136c:	4c 29 d1             	sub    %r10,%rcx
    136f:	49 01 c2             	add    %rax,%r10
    1372:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
    1377:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
    137c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
    1381:	85 c0                	test   %eax,%eax
    1383:	74 31                	je     0x13b6
    1385:	83 e8 01             	sub    $0x1,%eax
    1388:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    138c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
    1391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1398:	41 8b 50 0c          	mov    0xc(%r8),%edx
    139c:	48 89 d0             	mov    %rdx,%rax
    139f:	48 39 d1             	cmp    %rdx,%rcx
    13a2:	72 09                	jb     0x13ad
    13a4:	41 03 40 08          	add    0x8(%r8),%eax
    13a8:	48 39 c1             	cmp    %rax,%rcx
    13ab:	72 0c                	jb     0x13b9
    13ad:	49 83 c0 28          	add    $0x28,%r8
    13b1:	4d 39 c8             	cmp    %r9,%r8
    13b4:	75 e2                	jne    0x1398
    13b6:	45 31 c0             	xor    %r8d,%r8d
    13b9:	4c 89 c0             	mov    %r8,%rax
    13bc:	48 83 c4 28          	add    $0x28,%rsp
    13c0:	c3                   	ret    
    13c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13c8:	00 00 00 00 
    13cc:	0f 1f 40 00          	nopl   0x0(%rax)
    13d0:	48 83 ec 28          	sub    $0x28,%rsp
    13d4:	48 8b 0d 85 1f 00 00 	mov    0x1f85(%rip),%rcx        # 0x3360
    13db:	31 c0                	xor    %eax,%eax
    13dd:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    13e2:	75 12                	jne    0x13f6
    13e4:	e8 27 fe ff ff       	call   0x1210
    13e9:	85 c0                	test   %eax,%eax
    13eb:	74 09                	je     0x13f6
    13ed:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    13f1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
    13f6:	48 83 c4 28          	add    $0x28,%rsp
    13fa:	c3                   	ret    
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1400:	48 83 ec 28          	sub    $0x28,%rsp
    1404:	45 31 c0             	xor    %r8d,%r8d
    1407:	49 89 c9             	mov    %rcx,%r9
    140a:	48 8b 0d 4f 1f 00 00 	mov    0x1f4f(%rip),%rcx        # 0x3360
    1411:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1416:	75 4c                	jne    0x1464
    1418:	e8 f3 fd ff ff       	call   0x1210
    141d:	85 c0                	test   %eax,%eax
    141f:	74 43                	je     0x1464
    1421:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
    1425:	48 01 c1             	add    %rax,%rcx
    1428:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
    142c:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
    1431:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
    1435:	85 c0                	test   %eax,%eax
    1437:	74 28                	je     0x1461
    1439:	83 e8 01             	sub    $0x1,%eax
    143c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1440:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
    1445:	0f 1f 00             	nopl   (%rax)
    1448:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
    144d:	74 09                	je     0x1458
    144f:	4d 85 c9             	test   %r9,%r9
    1452:	74 10                	je     0x1464
    1454:	49 83 e9 01          	sub    $0x1,%r9
    1458:	49 83 c0 28          	add    $0x28,%r8
    145c:	49 39 c0             	cmp    %rax,%r8
    145f:	75 e7                	jne    0x1448
    1461:	45 31 c0             	xor    %r8d,%r8d
    1464:	4c 89 c0             	mov    %r8,%rax
    1467:	48 83 c4 28          	add    $0x28,%rsp
    146b:	c3                   	ret    
    146c:	0f 1f 40 00          	nopl   0x0(%rax)
    1470:	48 83 ec 28          	sub    $0x28,%rsp
    1474:	48 8b 0d e5 1e 00 00 	mov    0x1ee5(%rip),%rcx        # 0x3360
    147b:	45 31 c0             	xor    %r8d,%r8d
    147e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
    1483:	75 0b                	jne    0x1490
    1485:	e8 86 fd ff ff       	call   0x1210
    148a:	85 c0                	test   %eax,%eax
    148c:	4c 0f 45 c1          	cmovne %rcx,%r8
    1490:	4c 89 c0             	mov    %r8,%rax
    1493:	48 83 c4 28          	add    $0x28,%rsp
    1497:	c3                   	ret    
    1498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    149f:	00 
    14a0:	48 83 ec 28          	sub    $0x28,%rsp
    14a4:	4c 8b 0d b5 1e 00 00 	mov    0x1eb5(%rip),%r9        # 0x3360
    14ab:	31 c0                	xor    %eax,%eax
    14ad:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
    14b3:	49 89 c8             	mov    %rcx,%r8
    14b6:	75 57                	jne    0x150f
    14b8:	4c 89 c9             	mov    %r9,%rcx
    14bb:	e8 50 fd ff ff       	call   0x1210
    14c0:	85 c0                	test   %eax,%eax
    14c2:	74 4b                	je     0x150f
    14c4:	49 63 41 3c          	movslq 0x3c(%r9),%rax
    14c8:	4c 89 c1             	mov    %r8,%rcx
    14cb:	4c 29 c9             	sub    %r9,%rcx
    14ce:	49 01 c1             	add    %rax,%r9
    14d1:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
    14d6:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
    14db:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
    14e0:	85 d2                	test   %edx,%edx
    14e2:	74 29                	je     0x150d
    14e4:	83 ea 01             	sub    $0x1,%edx
    14e7:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
    14eb:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
    14f0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    14f4:	4c 89 c2             	mov    %r8,%rdx
    14f7:	4c 39 c1             	cmp    %r8,%rcx
    14fa:	72 08                	jb     0x1504
    14fc:	03 50 08             	add    0x8(%rax),%edx
    14ff:	48 39 d1             	cmp    %rdx,%rcx
    1502:	72 14                	jb     0x1518
    1504:	48 83 c0 28          	add    $0x28,%rax
    1508:	4c 39 c8             	cmp    %r9,%rax
    150b:	75 e3                	jne    0x14f0
    150d:	31 c0                	xor    %eax,%eax
    150f:	48 83 c4 28          	add    $0x28,%rsp
    1513:	c3                   	ret    
    1514:	0f 1f 40 00          	nopl   0x0(%rax)
    1518:	8b 40 24             	mov    0x24(%rax),%eax
    151b:	f7 d0                	not    %eax
    151d:	c1 e8 1f             	shr    $0x1f,%eax
    1520:	48 83 c4 28          	add    $0x28,%rsp
    1524:	c3                   	ret    
    1525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    152c:	00 00 00 00 
    1530:	48 83 ec 28          	sub    $0x28,%rsp
    1534:	4c 8b 1d 25 1e 00 00 	mov    0x1e25(%rip),%r11        # 0x3360
    153b:	45 31 c9             	xor    %r9d,%r9d
    153e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
    1544:	41 89 c8             	mov    %ecx,%r8d
    1547:	75 5f                	jne    0x15a8
    1549:	4c 89 d9             	mov    %r11,%rcx
    154c:	e8 bf fc ff ff       	call   0x1210
    1551:	85 c0                	test   %eax,%eax
    1553:	74 53                	je     0x15a8
    1555:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
    1559:	4c 01 d9             	add    %r11,%rcx
    155c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
    1562:	85 c0                	test   %eax,%eax
    1564:	74 42                	je     0x15a8
    1566:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
    156a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
    156f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
    1573:	85 c9                	test   %ecx,%ecx
    1575:	74 31                	je     0x15a8
    1577:	83 e9 01             	sub    $0x1,%ecx
    157a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    157e:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
    1583:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1588:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
    158c:	4c 89 c9             	mov    %r9,%rcx
    158f:	4c 39 c8             	cmp    %r9,%rax
    1592:	72 08                	jb     0x159c
    1594:	03 4a 08             	add    0x8(%rdx),%ecx
    1597:	48 39 c8             	cmp    %rcx,%rax
    159a:	72 14                	jb     0x15b0
    159c:	48 83 c2 28          	add    $0x28,%rdx
    15a0:	4c 39 d2             	cmp    %r10,%rdx
    15a3:	75 e3                	jne    0x1588
    15a5:	45 31 c9             	xor    %r9d,%r9d
    15a8:	4c 89 c8             	mov    %r9,%rax
    15ab:	48 83 c4 28          	add    $0x28,%rsp
    15af:	c3                   	ret    
    15b0:	4c 01 d8             	add    %r11,%rax
    15b3:	eb 0b                	jmp    0x15c0
    15b5:	0f 1f 00             	nopl   (%rax)
    15b8:	41 83 e8 01          	sub    $0x1,%r8d
    15bc:	48 83 c0 14          	add    $0x14,%rax
    15c0:	8b 48 04             	mov    0x4(%rax),%ecx
    15c3:	85 c9                	test   %ecx,%ecx
    15c5:	75 07                	jne    0x15ce
    15c7:	8b 50 0c             	mov    0xc(%rax),%edx
    15ca:	85 d2                	test   %edx,%edx
    15cc:	74 d7                	je     0x15a5
    15ce:	45 85 c0             	test   %r8d,%r8d
    15d1:	7f e5                	jg     0x15b8
    15d3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
    15d7:	4d 01 d9             	add    %r11,%r9
    15da:	4c 89 c8             	mov    %r9,%rax
    15dd:	48 83 c4 28          	add    $0x28,%rsp
    15e1:	c3                   	ret    
    15e2:	90                   	nop
    15e3:	90                   	nop
    15e4:	90                   	nop
    15e5:	90                   	nop
    15e6:	90                   	nop
    15e7:	90                   	nop
    15e8:	90                   	nop
    15e9:	90                   	nop
    15ea:	90                   	nop
    15eb:	90                   	nop
    15ec:	90                   	nop
    15ed:	90                   	nop
    15ee:	90                   	nop
    15ef:	90                   	nop
    15f0:	51                   	push   %rcx
    15f1:	50                   	push   %rax
    15f2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    15f8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    15fd:	72 19                	jb     0x1618
    15ff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
    1606:	48 83 09 00          	orq    $0x0,(%rcx)
    160a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
    1610:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1616:	77 e7                	ja     0x15ff
    1618:	48 29 c1             	sub    %rax,%rcx
    161b:	48 83 09 00          	orq    $0x0,(%rcx)
    161f:	58                   	pop    %rax
    1620:	59                   	pop    %rcx
    1621:	c3                   	ret    
    1622:	90                   	nop
    1623:	90                   	nop
    1624:	90                   	nop
    1625:	90                   	nop
    1626:	90                   	nop
    1627:	90                   	nop
    1628:	90                   	nop
    1629:	90                   	nop
    162a:	90                   	nop
    162b:	90                   	nop
    162c:	90                   	nop
    162d:	90                   	nop
    162e:	90                   	nop
    162f:	90                   	nop
    1630:	ff 25 76 5c 00 00    	jmp    *0x5c76(%rip)        # 0x72ac
    1636:	90                   	nop
    1637:	90                   	nop
    1638:	ff 25 66 5c 00 00    	jmp    *0x5c66(%rip)        # 0x72a4
    163e:	90                   	nop
    163f:	90                   	nop
    1640:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 0x729c
    1646:	90                   	nop
    1647:	90                   	nop
    1648:	ff 25 46 5c 00 00    	jmp    *0x5c46(%rip)        # 0x7294
    164e:	90                   	nop
    164f:	90                   	nop
    1650:	ff 25 36 5c 00 00    	jmp    *0x5c36(%rip)        # 0x728c
    1656:	90                   	nop
    1657:	90                   	nop
    1658:	ff 25 26 5c 00 00    	jmp    *0x5c26(%rip)        # 0x7284
    165e:	90                   	nop
    165f:	90                   	nop
    1660:	ff 25 16 5c 00 00    	jmp    *0x5c16(%rip)        # 0x727c
    1666:	90                   	nop
    1667:	90                   	nop
    1668:	ff 25 06 5c 00 00    	jmp    *0x5c06(%rip)        # 0x7274
    166e:	90                   	nop
    166f:	90                   	nop
    1670:	ff 25 f6 5b 00 00    	jmp    *0x5bf6(%rip)        # 0x726c
    1676:	90                   	nop
    1677:	90                   	nop
    1678:	ff 25 e6 5b 00 00    	jmp    *0x5be6(%rip)        # 0x7264
    167e:	90                   	nop
    167f:	90                   	nop
    1680:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 0x725c
    1686:	90                   	nop
    1687:	90                   	nop
    1688:	ff 25 c6 5b 00 00    	jmp    *0x5bc6(%rip)        # 0x7254
    168e:	90                   	nop
    168f:	90                   	nop
    1690:	ff 25 b6 5b 00 00    	jmp    *0x5bb6(%rip)        # 0x724c
    1696:	90                   	nop
    1697:	90                   	nop
    1698:	ff 25 a6 5b 00 00    	jmp    *0x5ba6(%rip)        # 0x7244
    169e:	90                   	nop
    169f:	90                   	nop
    16a0:	ff 25 96 5b 00 00    	jmp    *0x5b96(%rip)        # 0x723c
    16a6:	90                   	nop
    16a7:	90                   	nop
    16a8:	ff 25 76 5b 00 00    	jmp    *0x5b76(%rip)        # 0x7224
    16ae:	90                   	nop
    16af:	90                   	nop
    16b0:	ff 25 66 5b 00 00    	jmp    *0x5b66(%rip)        # 0x721c
    16b6:	90                   	nop
    16b7:	90                   	nop
    16b8:	ff 25 4e 5b 00 00    	jmp    *0x5b4e(%rip)        # 0x720c
    16be:	90                   	nop
    16bf:	90                   	nop
    16c0:	ff 25 3e 5b 00 00    	jmp    *0x5b3e(%rip)        # 0x7204
    16c6:	90                   	nop
    16c7:	90                   	nop
    16c8:	ff 25 2e 5b 00 00    	jmp    *0x5b2e(%rip)        # 0x71fc
    16ce:	90                   	nop
    16cf:	90                   	nop
    16d0:	ff 25 0e 5b 00 00    	jmp    *0x5b0e(%rip)        # 0x71e4
    16d6:	90                   	nop
    16d7:	90                   	nop
    16d8:	ff 25 fe 5a 00 00    	jmp    *0x5afe(%rip)        # 0x71dc
    16de:	90                   	nop
    16df:	90                   	nop
    16e0:	53                   	push   %rbx
    16e1:	48 83 ec 20          	sub    $0x20,%rsp
    16e5:	89 cb                	mov    %ecx,%ebx
    16e7:	e8 64 00 00 00       	call   0x1750
    16ec:	89 d9                	mov    %ebx,%ecx
    16ee:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
    16f2:	48 c1 e2 04          	shl    $0x4,%rdx
    16f6:	48 01 d0             	add    %rdx,%rax
    16f9:	48 83 c4 20          	add    $0x20,%rsp
    16fd:	5b                   	pop    %rbx
    16fe:	c3                   	ret    
    16ff:	90                   	nop
    1700:	48 8b 05 69 4a 00 00 	mov    0x4a69(%rip),%rax        # 0x6170
    1707:	c3                   	ret    
    1708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    170f:	00 
    1710:	48 89 c8             	mov    %rcx,%rax
    1713:	48 87 05 56 4a 00 00 	xchg   %rax,0x4a56(%rip)        # 0x6170
    171a:	c3                   	ret    
    171b:	90                   	nop
    171c:	90                   	nop
    171d:	90                   	nop
    171e:	90                   	nop
    171f:	90                   	nop
    1720:	48 8b 05 59 1c 00 00 	mov    0x1c59(%rip),%rax        # 0x3380
    1727:	48 8b 00             	mov    (%rax),%rax
    172a:	c3                   	ret    
    172b:	90                   	nop
    172c:	90                   	nop
    172d:	90                   	nop
    172e:	90                   	nop
    172f:	90                   	nop
    1730:	48 8b 05 59 1c 00 00 	mov    0x1c59(%rip),%rax        # 0x3390
    1737:	48 8b 00             	mov    (%rax),%rax
    173a:	c3                   	ret    
    173b:	90                   	nop
    173c:	90                   	nop
    173d:	90                   	nop
    173e:	90                   	nop
    173f:	90                   	nop
    1740:	48 8b 05 59 1c 00 00 	mov    0x1c59(%rip),%rax        # 0x33a0
    1747:	48 8b 00             	mov    (%rax),%rax
    174a:	c3                   	ret    
    174b:	90                   	nop
    174c:	90                   	nop
    174d:	90                   	nop
    174e:	90                   	nop
    174f:	90                   	nop
    1750:	ff 25 9e 5a 00 00    	jmp    *0x5a9e(%rip)        # 0x71f4
    1756:	90                   	nop
    1757:	90                   	nop
    1758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    175f:	00 
    1760:	ff 25 66 5a 00 00    	jmp    *0x5a66(%rip)        # 0x71cc
    1766:	90                   	nop
    1767:	90                   	nop
    1768:	ff 25 56 5a 00 00    	jmp    *0x5a56(%rip)        # 0x71c4
    176e:	90                   	nop
    176f:	90                   	nop
    1770:	ff 25 46 5a 00 00    	jmp    *0x5a46(%rip)        # 0x71bc
    1776:	90                   	nop
    1777:	90                   	nop
    1778:	ff 25 36 5a 00 00    	jmp    *0x5a36(%rip)        # 0x71b4
    177e:	90                   	nop
    177f:	90                   	nop
    1780:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 0x71ac
    1786:	90                   	nop
    1787:	90                   	nop
    1788:	ff 25 16 5a 00 00    	jmp    *0x5a16(%rip)        # 0x71a4
    178e:	90                   	nop
    178f:	90                   	nop
    1790:	ff 25 06 5a 00 00    	jmp    *0x5a06(%rip)        # 0x719c
    1796:	90                   	nop
    1797:	90                   	nop
    1798:	ff 25 f6 59 00 00    	jmp    *0x59f6(%rip)        # 0x7194
    179e:	90                   	nop
    179f:	90                   	nop
    17a0:	ff 25 e6 59 00 00    	jmp    *0x59e6(%rip)        # 0x718c
    17a6:	90                   	nop
    17a7:	90                   	nop
    17a8:	ff 25 d6 59 00 00    	jmp    *0x59d6(%rip)        # 0x7184
    17ae:	90                   	nop
    17af:	90                   	nop
    17b0:	ff 25 c6 59 00 00    	jmp    *0x59c6(%rip)        # 0x717c
    17b6:	90                   	nop
    17b7:	90                   	nop
    17b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    17bf:	00 
    17c0:	48 83 ec 28          	sub    $0x28,%rsp
    17c4:	e8 37 ee ff ff       	call   0x600
    17c9:	b9 01 00 00 00       	mov    $0x1,%ecx
    17ce:	ff 15 8c 08 00 00    	call   *0x88c(%rip)        # 0x2060
    17d4:	48 8d 0d 25 18 00 00 	lea    0x1825(%rip),%rcx        # 0x3000
    17db:	48 89 c2             	mov    %rax,%rdx
    17de:	e8 8d fe ff ff       	call   0x1670
    17e3:	31 c0                	xor    %eax,%eax
    17e5:	48 83 c4 28          	add    $0x28,%rsp
    17e9:	c3                   	ret    
    17ea:	90                   	nop
    17eb:	90                   	nop
    17ec:	90                   	nop
    17ed:	90                   	nop
    17ee:	90                   	nop
    17ef:	90                   	nop
    17f0:	e9 3b ed ff ff       	jmp    0x530
    17f5:	90                   	nop
    17f6:	90                   	nop
    17f7:	90                   	nop
    17f8:	90                   	nop
    17f9:	90                   	nop
    17fa:	90                   	nop
    17fb:	90                   	nop
    17fc:	90                   	nop
    17fd:	90                   	nop
    17fe:	90                   	nop
    17ff:	90                   	nop
    1800:	ff                   	(bad)  
    1801:	ff                   	(bad)  
    1802:	ff                   	(bad)  
    1803:	ff                   	(bad)  
    1804:	ff                   	(bad)  
    1805:	ff                   	(bad)  
    1806:	ff                   	(bad)  
    1807:	ff f0                	push   %rax
    1809:	27                   	(bad)  
    180a:	00 40 01             	add    %al,0x1(%rax)
	...
    1815:	00 00                	add    %al,(%rax)
    1817:	00 ff                	add    %bh,%bh
    1819:	ff                   	(bad)  
    181a:	ff                   	(bad)  
    181b:	ff                   	(bad)  
    181c:	ff                   	(bad)  
    181d:	ff                   	(bad)  
    181e:	ff                   	(bad)  
    181f:	ff 00                	incl   (%rax)
	...
