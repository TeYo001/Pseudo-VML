
test/stripped64.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <.text>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 85 34 00 00 	mov    0x3485(%rip),%rax        # 0x1400044a0
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 86 34 00 00 	mov    0x3486(%rip),%rax        # 0x1400044b0
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 89 34 00 00 	mov    0x3489(%rip),%rax        # 0x1400044c0
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 4c 34 00 00 	mov    0x344c(%rip),%rax        # 0x140004490
   140001044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000104a:	48 8b 05 0f 33 00 00 	mov    0x330f(%rip),%rax        # 0x140004360
   140001051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001056:	75 0f                	jne    0x140001067
   140001058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000105c:	48 01 d0             	add    %rdx,%rax
   14000105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001065:	74 69                	je     0x1400010d0
   140001067:	48 8b 05 12 34 00 00 	mov    0x3412(%rip),%rax        # 0x140004480
   14000106e:	89 0d 98 5f 00 00    	mov    %ecx,0x5f98(%rip)        # 0x14000700c
   140001074:	8b 00                	mov    (%rax),%eax
   140001076:	85 c0                	test   %eax,%eax
   140001078:	75 46                	jne    0x1400010c0
   14000107a:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000107f:	e8 74 16 00 00       	call   0x1400026f8
   140001084:	e8 f7 16 00 00       	call   0x140002780
   140001089:	48 8b 15 b0 33 00 00 	mov    0x33b0(%rip),%rdx        # 0x140004440
   140001090:	8b 12                	mov    (%rdx),%edx
   140001092:	89 10                	mov    %edx,(%rax)
   140001094:	e8 d7 16 00 00       	call   0x140002770
   140001099:	48 8b 15 80 33 00 00 	mov    0x3380(%rip),%rdx        # 0x140004420
   1400010a0:	8b 12                	mov    (%rdx),%edx
   1400010a2:	89 10                	mov    %edx,(%rax)
   1400010a4:	e8 c7 05 00 00       	call   0x140001670
   1400010a9:	48 8b 05 60 32 00 00 	mov    0x3260(%rip),%rax        # 0x140004310
   1400010b0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010b3:	74 53                	je     0x140001108
   1400010b5:	31 c0                	xor    %eax,%eax
   1400010b7:	48 83 c4 28          	add    $0x28,%rsp
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400010c5:	e8 2e 16 00 00       	call   0x1400026f8
   1400010ca:	eb b8                	jmp    0x140001084
   1400010cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010d9:	74 45                	je     0x140001120
   1400010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010e0:	75 85                	jne    0x140001067
   1400010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010e9:	0f 86 78 ff ff ff    	jbe    0x140001067
   1400010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010f5:	31 c9                	xor    %ecx,%ecx
   1400010f7:	85 d2                	test   %edx,%edx
   1400010f9:	0f 95 c1             	setne  %cl
   1400010fc:	e9 66 ff ff ff       	jmp    0x140001067
   140001101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001108:	48 8d 0d 41 06 00 00 	lea    0x641(%rip),%rcx        # 0x140001750
   14000110f:	e8 1c 0d 00 00       	call   0x140001e30
   140001114:	31 c0                	xor    %eax,%eax
   140001116:	48 83 c4 28          	add    $0x28,%rsp
   14000111a:	c3                   	ret    
   14000111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001124:	0f 86 3d ff ff ff    	jbe    0x140001067
   14000112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001131:	31 c9                	xor    %ecx,%ecx
   140001133:	45 85 c0             	test   %r8d,%r8d
   140001136:	0f 95 c1             	setne  %cl
   140001139:	e9 29 ff ff ff       	jmp    0x140001067
   14000113e:	66 90                	xchg   %ax,%ax
   140001140:	48 83 ec 38          	sub    $0x38,%rsp
   140001144:	48 8b 05 25 33 00 00 	mov    0x3325(%rip),%rax        # 0x140004470
   14000114b:	4c 8d 05 c6 5e 00 00 	lea    0x5ec6(%rip),%r8        # 0x140007018
   140001152:	48 8d 15 c7 5e 00 00 	lea    0x5ec7(%rip),%rdx        # 0x140007020
   140001159:	48 8d 0d c8 5e 00 00 	lea    0x5ec8(%rip),%rcx        # 0x140007028
   140001160:	8b 00                	mov    (%rax),%eax
   140001162:	89 05 9c 5e 00 00    	mov    %eax,0x5e9c(%rip)        # 0x140007004
   140001168:	48 8d 05 95 5e 00 00 	lea    0x5e95(%rip),%rax        # 0x140007004
   14000116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001174:	48 8b 05 b5 32 00 00 	mov    0x32b5(%rip),%rax        # 0x140004430
   14000117b:	44 8b 08             	mov    (%rax),%r9d
   14000117e:	e8 85 15 00 00       	call   0x140002708
   140001183:	90                   	nop
   140001184:	48 83 c4 38          	add    $0x38,%rsp
   140001188:	c3                   	ret    
   140001189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001190:	41 55                	push   %r13
   140001192:	41 54                	push   %r12
   140001194:	55                   	push   %rbp
   140001195:	57                   	push   %rdi
   140001196:	56                   	push   %rsi
   140001197:	53                   	push   %rbx
   140001198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   1400011a4:	31 c0                	xor    %eax,%eax
   1400011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   1400011ab:	4c 89 c7             	mov    %r8,%rdi
   1400011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011b1:	48 8b 3d c8 32 00 00 	mov    0x32c8(%rip),%rdi        # 0x140004480
   1400011b8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011bb:	45 85 c9             	test   %r9d,%r9d
   1400011be:	0f 85 ac 02 00 00    	jne    0x140001470
   1400011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011cb:	00 00 
   1400011cd:	48 8b 1d ec 31 00 00 	mov    0x31ec(%rip),%rbx        # 0x1400043c0
   1400011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011d8:	31 ed                	xor    %ebp,%ebp
   1400011da:	4c 8b 25 cb 6f 00 00 	mov    0x6fcb(%rip),%r12        # 0x1400081ac
   1400011e1:	eb 16                	jmp    0x1400011f9
   1400011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011e8:	48 39 c6             	cmp    %rax,%rsi
   1400011eb:	0f 84 1f 02 00 00    	je     0x140001410
   1400011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011f6:	41 ff d4             	call   *%r12
   1400011f9:	48 89 e8             	mov    %rbp,%rax
   1400011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001201:	48 85 c0             	test   %rax,%rax
   140001204:	75 e2                	jne    0x1400011e8
   140001206:	48 8b 35 c3 31 00 00 	mov    0x31c3(%rip),%rsi        # 0x1400043d0
   14000120d:	31 ed                	xor    %ebp,%ebp
   14000120f:	8b 06                	mov    (%rsi),%eax
   140001211:	83 f8 01             	cmp    $0x1,%eax
   140001214:	0f 84 0d 02 00 00    	je     0x140001427
   14000121a:	8b 06                	mov    (%rsi),%eax
   14000121c:	85 c0                	test   %eax,%eax
   14000121e:	0f 84 7c 02 00 00    	je     0x1400014a0
   140001224:	c7 05 da 5d 00 00 01 	movl   $0x1,0x5dda(%rip)        # 0x140007008
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    (%rsi),%eax
   140001230:	83 f8 01             	cmp    $0x1,%eax
   140001233:	0f 84 03 02 00 00    	je     0x14000143c
   140001239:	85 ed                	test   %ebp,%ebp
   14000123b:	0f 84 1c 02 00 00    	je     0x14000145d
   140001241:	48 8b 05 08 31 00 00 	mov    0x3108(%rip),%rax        # 0x140004350
   140001248:	48 8b 00             	mov    (%rax),%rax
   14000124b:	48 85 c0             	test   %rax,%rax
   14000124e:	74 0c                	je     0x14000125c
   140001250:	45 31 c0             	xor    %r8d,%r8d
   140001253:	ba 02 00 00 00       	mov    $0x2,%edx
   140001258:	31 c9                	xor    %ecx,%ecx
   14000125a:	ff d0                	call   *%rax
   14000125c:	e8 8f 08 00 00       	call   0x140001af0
   140001261:	48 8d 0d d8 0b 00 00 	lea    0xbd8(%rip),%rcx        # 0x140001e40
   140001268:	ff 15 36 6f 00 00    	call   *0x6f36(%rip)        # 0x1400081a4
   14000126e:	48 8b 15 3b 31 00 00 	mov    0x313b(%rip),%rdx        # 0x1400043b0
   140001275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 0x140001000
   14000127c:	48 89 02             	mov    %rax,(%rdx)
   14000127f:	e8 cc 14 00 00       	call   0x140002750
   140001284:	e8 c7 05 00 00       	call   0x140001850
   140001289:	48 8b 05 d0 30 00 00 	mov    0x30d0(%rip),%rax        # 0x140004360
   140001290:	48 89 05 f1 5e 00 00 	mov    %rax,0x5ef1(%rip)        # 0x140007188
   140001297:	e8 c4 14 00 00       	call   0x140002760
   14000129c:	31 c9                	xor    %ecx,%ecx
   14000129e:	48 8b 00             	mov    (%rax),%rax
   1400012a1:	48 85 c0             	test   %rax,%rax
   1400012a4:	75 1c                	jne    0x1400012c2
   1400012a6:	eb 58                	jmp    0x140001300
   1400012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400012af:	00 
   1400012b0:	84 d2                	test   %dl,%dl
   1400012b2:	74 45                	je     0x1400012f9
   1400012b4:	83 e1 01             	and    $0x1,%ecx
   1400012b7:	74 27                	je     0x1400012e0
   1400012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012be:	48 83 c0 01          	add    $0x1,%rax
   1400012c2:	0f b6 10             	movzbl (%rax),%edx
   1400012c5:	80 fa 20             	cmp    $0x20,%dl
   1400012c8:	7e e6                	jle    0x1400012b0
   1400012ca:	41 89 c8             	mov    %ecx,%r8d
   1400012cd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012d1:	80 fa 22             	cmp    $0x22,%dl
   1400012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012d8:	eb e4                	jmp    0x1400012be
   1400012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 15                	je     0x1400012f9
   1400012e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012ec:	48 83 c0 01          	add    $0x1,%rax
   1400012f0:	84 d2                	test   %dl,%dl
   1400012f2:	74 05                	je     0x1400012f9
   1400012f4:	80 fa 20             	cmp    $0x20,%dl
   1400012f7:	7e ef                	jle    0x1400012e8
   1400012f9:	48 89 05 80 5e 00 00 	mov    %rax,0x5e80(%rip)        # 0x140007180
   140001300:	44 8b 07             	mov    (%rdi),%r8d
   140001303:	45 85 c0             	test   %r8d,%r8d
   140001306:	74 16                	je     0x14000131e
   140001308:	b8 0a 00 00 00       	mov    $0xa,%eax
   14000130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001312:	0f 85 e8 00 00 00    	jne    0x140001400
   140001318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 0x140003000
   14000131e:	8b 1d 04 5d 00 00    	mov    0x5d04(%rip),%ebx        # 0x140007028
   140001324:	44 8d 63 01          	lea    0x1(%rbx),%r12d
   140001328:	4d 63 e4             	movslq %r12d,%r12
   14000132b:	49 c1 e4 03          	shl    $0x3,%r12
   14000132f:	4c 89 e1             	mov    %r12,%rcx
   140001332:	e8 61 13 00 00       	call   0x140002698
   140001337:	4c 8b 2d e2 5c 00 00 	mov    0x5ce2(%rip),%r13        # 0x140007020
   14000133e:	48 89 c7             	mov    %rax,%rdi
   140001341:	85 db                	test   %ebx,%ebx
   140001343:	7e 46                	jle    0x14000138b
   140001345:	8d 6b ff             	lea    -0x1(%rbx),%ebp
   140001348:	31 db                	xor    %ebx,%ebx
   14000134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001355:	e8 26 13 00 00       	call   0x140002680
   14000135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000135e:	48 89 f1             	mov    %rsi,%rcx
   140001361:	e8 32 13 00 00       	call   0x140002698
   140001366:	49 89 f0             	mov    %rsi,%r8
   140001369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001372:	48 89 c1             	mov    %rax,%rcx
   140001375:	e8 16 13 00 00       	call   0x140002690
   14000137a:	48 89 d8             	mov    %rbx,%rax
   14000137d:	48 83 c3 01          	add    $0x1,%rbx
   140001381:	48 39 c5             	cmp    %rax,%rbp
   140001384:	75 ca                	jne    0x140001350
   140001386:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   14000138b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140001392:	48 89 3d 87 5c 00 00 	mov    %rdi,0x5c87(%rip)        # 0x140007020
   140001399:	e8 a2 02 00 00       	call   0x140001640
   14000139e:	48 8b 05 cb 2f 00 00 	mov    0x2fcb(%rip),%rax        # 0x140004370
   1400013a5:	4c 8b 05 6c 5c 00 00 	mov    0x5c6c(%rip),%r8        # 0x140007018
   1400013ac:	8b 0d 76 5c 00 00    	mov    0x5c76(%rip),%ecx        # 0x140007028
   1400013b2:	48 8b 00             	mov    (%rax),%rax
   1400013b5:	4c 89 00             	mov    %r8,(%rax)
   1400013b8:	48 8b 15 61 5c 00 00 	mov    0x5c61(%rip),%rdx        # 0x140007020
   1400013bf:	e8 8c 01 00 00       	call   0x140001550
   1400013c4:	8b 0d 42 5c 00 00    	mov    0x5c42(%rip),%ecx        # 0x14000700c
   1400013ca:	89 05 40 5c 00 00    	mov    %eax,0x5c40(%rip)        # 0x140007010
   1400013d0:	85 c9                	test   %ecx,%ecx
   1400013d2:	0f 84 e6 00 00 00    	je     0x1400014be
   1400013d8:	8b 15 2a 5c 00 00    	mov    0x5c2a(%rip),%edx        # 0x140007008
   1400013de:	85 d2                	test   %edx,%edx
   1400013e0:	0f 84 9a 00 00 00    	je     0x140001480
   1400013e6:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013ed:	5b                   	pop    %rbx
   1400013ee:	5e                   	pop    %rsi
   1400013ef:	5f                   	pop    %rdi
   1400013f0:	5d                   	pop    %rbp
   1400013f1:	41 5c                	pop    %r12
   1400013f3:	41 5d                	pop    %r13
   1400013f5:	c3                   	ret    
   1400013f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400013fd:	00 00 00 
   140001400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   140001405:	e9 0e ff ff ff       	jmp    0x140001318
   14000140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001410:	48 8b 35 b9 2f 00 00 	mov    0x2fb9(%rip),%rsi        # 0x1400043d0
   140001417:	bd 01 00 00 00       	mov    $0x1,%ebp
   14000141c:	8b 06                	mov    (%rsi),%eax
   14000141e:	83 f8 01             	cmp    $0x1,%eax
   140001421:	0f 85 f3 fd ff ff    	jne    0x14000121a
   140001427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000142c:	e8 b7 12 00 00       	call   0x1400026e8
   140001431:	8b 06                	mov    (%rsi),%eax
   140001433:	83 f8 01             	cmp    $0x1,%eax
   140001436:	0f 85 fd fd ff ff    	jne    0x140001239
   14000143c:	48 8b 15 ad 2f 00 00 	mov    0x2fad(%rip),%rdx        # 0x1400043f0
   140001443:	48 8b 0d 96 2f 00 00 	mov    0x2f96(%rip),%rcx        # 0x1400043e0
   14000144a:	e8 89 12 00 00       	call   0x1400026d8
   14000144f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001455:	85 ed                	test   %ebp,%ebp
   140001457:	0f 85 e4 fd ff ff    	jne    0x140001241
   14000145d:	31 c0                	xor    %eax,%eax
   14000145f:	48 87 03             	xchg   %rax,(%rbx)
   140001462:	e9 da fd ff ff       	jmp    0x140001241
   140001467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000146e:	00 00 
   140001470:	4c 89 c1             	mov    %r8,%rcx
   140001473:	ff 15 13 6d 00 00    	call   *0x6d13(%rip)        # 0x14000818c
   140001479:	e9 46 fd ff ff       	jmp    0x1400011c4
   14000147e:	66 90                	xchg   %ax,%ax
   140001480:	e8 5b 12 00 00       	call   0x1400026e0
   140001485:	8b 05 85 5b 00 00    	mov    0x5b85(%rip),%eax        # 0x140007010
   14000148b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001492:	5b                   	pop    %rbx
   140001493:	5e                   	pop    %rsi
   140001494:	5f                   	pop    %rdi
   140001495:	5d                   	pop    %rbp
   140001496:	41 5c                	pop    %r12
   140001498:	41 5d                	pop    %r13
   14000149a:	c3                   	ret    
   14000149b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014a0:	48 8b 15 69 2f 00 00 	mov    0x2f69(%rip),%rdx        # 0x140004410
   1400014a7:	48 8b 0d 52 2f 00 00 	mov    0x2f52(%rip),%rcx        # 0x140004400
   1400014ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400014b4:	e8 1f 12 00 00       	call   0x1400026d8
   1400014b9:	e9 70 fd ff ff       	jmp    0x14000122e
   1400014be:	89 c1                	mov    %eax,%ecx
   1400014c0:	e8 f3 11 00 00       	call   0x1400026b8
   1400014c5:	90                   	nop
   1400014c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014cd:	00 00 00 
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014d4:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 0x140004480
   1400014db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014e1:	e8 aa fc ff ff       	call   0x140001190
   1400014e6:	90                   	nop
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 0x140004480
   1400014fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001501:	e8 8a fc ff ff       	call   0x140001190
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	48 83 c4 28          	add    $0x28,%rsp
   14000150c:	c3                   	ret    
   14000150d:	0f 1f 00             	nopl   (%rax)
   140001510:	48 83 ec 28          	sub    $0x28,%rsp
   140001514:	e8 b7 11 00 00       	call   0x1400026d0
   140001519:	48 85 c0             	test   %rax,%rax
   14000151c:	0f 94 c0             	sete   %al
   14000151f:	0f b6 c0             	movzbl %al,%eax
   140001522:	f7 d8                	neg    %eax
   140001524:	48 83 c4 28          	add    $0x28,%rsp
   140001528:	c3                   	ret    
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
   14000152f:	90                   	nop
   140001530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 0x140001540
   140001537:	e9 d4 ff ff ff       	jmp    0x140001510
   14000153c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001540:	c3                   	ret    
   140001541:	90                   	nop
   140001542:	90                   	nop
   140001543:	90                   	nop
   140001544:	90                   	nop
   140001545:	90                   	nop
   140001546:	90                   	nop
   140001547:	90                   	nop
   140001548:	90                   	nop
   140001549:	90                   	nop
   14000154a:	90                   	nop
   14000154b:	90                   	nop
   14000154c:	90                   	nop
   14000154d:	90                   	nop
   14000154e:	90                   	nop
   14000154f:	90                   	nop
   140001550:	55                   	push   %rbp
   140001551:	48 89 e5             	mov    %rsp,%rbp
   140001554:	48 83 ec 20          	sub    $0x20,%rsp
   140001558:	e8 e3 00 00 00       	call   0x140001640
   14000155d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001562:	48 8b 05 f7 1a 00 00 	mov    0x1af7(%rip),%rax        # 0x140003060
   140001569:	ff d0                	call   *%rax
   14000156b:	49 89 c1             	mov    %rax,%r9
   14000156e:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
   140001574:	ba 01 00 00 00       	mov    $0x1,%edx
   140001579:	48 8d 0d 80 2a 00 00 	lea    0x2a80(%rip),%rcx        # 0x140004000
   140001580:	e8 1b 11 00 00       	call   0x1400026a0
   140001585:	b8 00 00 00 00       	mov    $0x0,%eax
   14000158a:	48 83 c4 20          	add    $0x20,%rsp
   14000158e:	5d                   	pop    %rbp
   14000158f:	c3                   	ret    
   140001590:	48 83 ec 28          	sub    $0x28,%rsp
   140001594:	48 8b 05 75 1a 00 00 	mov    0x1a75(%rip),%rax        # 0x140003010
   14000159b:	48 8b 00             	mov    (%rax),%rax
   14000159e:	48 85 c0             	test   %rax,%rax
   1400015a1:	74 22                	je     0x1400015c5
   1400015a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400015a8:	ff d0                	call   *%rax
   1400015aa:	48 8b 05 5f 1a 00 00 	mov    0x1a5f(%rip),%rax        # 0x140003010
   1400015b1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400015b5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400015b9:	48 89 15 50 1a 00 00 	mov    %rdx,0x1a50(%rip)        # 0x140003010
   1400015c0:	48 85 c0             	test   %rax,%rax
   1400015c3:	75 e3                	jne    0x1400015a8
   1400015c5:	48 83 c4 28          	add    $0x28,%rsp
   1400015c9:	c3                   	ret    
   1400015ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400015d0:	56                   	push   %rsi
   1400015d1:	53                   	push   %rbx
   1400015d2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015d6:	48 8b 15 43 2d 00 00 	mov    0x2d43(%rip),%rdx        # 0x140004320
   1400015dd:	48 8b 02             	mov    (%rdx),%rax
   1400015e0:	89 c1                	mov    %eax,%ecx
   1400015e2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015e5:	74 39                	je     0x140001620
   1400015e7:	85 c9                	test   %ecx,%ecx
   1400015e9:	74 20                	je     0x14000160b
   1400015eb:	89 c8                	mov    %ecx,%eax
   1400015ed:	83 e9 01             	sub    $0x1,%ecx
   1400015f0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015f4:	48 29 c8             	sub    %rcx,%rax
   1400015f7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001600:	ff 13                	call   *(%rbx)
   140001602:	48 83 eb 08          	sub    $0x8,%rbx
   140001606:	48 39 f3             	cmp    %rsi,%rbx
   140001609:	75 f5                	jne    0x140001600
   14000160b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 0x140001590
   140001612:	48 83 c4 28          	add    $0x28,%rsp
   140001616:	5b                   	pop    %rbx
   140001617:	5e                   	pop    %rsi
   140001618:	e9 f3 fe ff ff       	jmp    0x140001510
   14000161d:	0f 1f 00             	nopl   (%rax)
   140001620:	31 c0                	xor    %eax,%eax
   140001622:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001628:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000162c:	89 c1                	mov    %eax,%ecx
   14000162e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001633:	4c 89 c0             	mov    %r8,%rax
   140001636:	75 f0                	jne    0x140001628
   140001638:	eb ad                	jmp    0x1400015e7
   14000163a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001640:	8b 05 ea 59 00 00    	mov    0x59ea(%rip),%eax        # 0x140007030
   140001646:	85 c0                	test   %eax,%eax
   140001648:	74 06                	je     0x140001650
   14000164a:	c3                   	ret    
   14000164b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001650:	c7 05 d6 59 00 00 01 	movl   $0x1,0x59d6(%rip)        # 0x140007030
   140001657:	00 00 00 
   14000165a:	e9 71 ff ff ff       	jmp    0x1400015d0
   14000165f:	90                   	nop
   140001660:	48 ff 25 8d 6b 00 00 	rex.W jmp *0x6b8d(%rip)        # 0x1400081f4
   140001667:	90                   	nop
   140001668:	90                   	nop
   140001669:	90                   	nop
   14000166a:	90                   	nop
   14000166b:	90                   	nop
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop
   140001670:	31 c0                	xor    %eax,%eax
   140001672:	c3                   	ret    
   140001673:	90                   	nop
   140001674:	90                   	nop
   140001675:	90                   	nop
   140001676:	90                   	nop
   140001677:	90                   	nop
   140001678:	90                   	nop
   140001679:	90                   	nop
   14000167a:	90                   	nop
   14000167b:	90                   	nop
   14000167c:	90                   	nop
   14000167d:	90                   	nop
   14000167e:	90                   	nop
   14000167f:	90                   	nop
   140001680:	48 83 ec 28          	sub    $0x28,%rsp
   140001684:	83 fa 03             	cmp    $0x3,%edx
   140001687:	74 17                	je     0x1400016a0
   140001689:	85 d2                	test   %edx,%edx
   14000168b:	74 13                	je     0x1400016a0
   14000168d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001692:	48 83 c4 28          	add    $0x28,%rsp
   140001696:	c3                   	ret    
   140001697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000169e:	00 00 
   1400016a0:	e8 cb 0a 00 00       	call   0x140002170
   1400016a5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016aa:	48 83 c4 28          	add    $0x28,%rsp
   1400016ae:	c3                   	ret    
   1400016af:	90                   	nop
   1400016b0:	56                   	push   %rsi
   1400016b1:	53                   	push   %rbx
   1400016b2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016b6:	48 8b 05 43 2c 00 00 	mov    0x2c43(%rip),%rax        # 0x140004300
   1400016bd:	83 38 02             	cmpl   $0x2,(%rax)
   1400016c0:	74 06                	je     0x1400016c8
   1400016c2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400016c8:	83 fa 02             	cmp    $0x2,%edx
   1400016cb:	74 13                	je     0x1400016e0
   1400016cd:	83 fa 01             	cmp    $0x1,%edx
   1400016d0:	74 4e                	je     0x140001720
   1400016d2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016d7:	48 83 c4 28          	add    $0x28,%rsp
   1400016db:	5b                   	pop    %rbx
   1400016dc:	5e                   	pop    %rsi
   1400016dd:	c3                   	ret    
   1400016de:	66 90                	xchg   %ax,%ax
   1400016e0:	48 8d 1d 79 79 00 00 	lea    0x7979(%rip),%rbx        # 0x140009060
   1400016e7:	48 8d 35 72 79 00 00 	lea    0x7972(%rip),%rsi        # 0x140009060
   1400016ee:	48 39 de             	cmp    %rbx,%rsi
   1400016f1:	74 df                	je     0x1400016d2
   1400016f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016f8:	48 8b 03             	mov    (%rbx),%rax
   1400016fb:	48 85 c0             	test   %rax,%rax
   1400016fe:	74 02                	je     0x140001702
   140001700:	ff d0                	call   *%rax
   140001702:	48 83 c3 08          	add    $0x8,%rbx
   140001706:	48 39 de             	cmp    %rbx,%rsi
   140001709:	75 ed                	jne    0x1400016f8
   14000170b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001710:	48 83 c4 28          	add    $0x28,%rsp
   140001714:	5b                   	pop    %rbx
   140001715:	5e                   	pop    %rsi
   140001716:	c3                   	ret    
   140001717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000171e:	00 00 
   140001720:	e8 4b 0a 00 00       	call   0x140002170
   140001725:	b8 01 00 00 00       	mov    $0x1,%eax
   14000172a:	48 83 c4 28          	add    $0x28,%rsp
   14000172e:	5b                   	pop    %rbx
   14000172f:	5e                   	pop    %rsi
   140001730:	c3                   	ret    
   140001731:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001738:	00 00 00 00 
   14000173c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001740:	31 c0                	xor    %eax,%eax
   140001742:	c3                   	ret    
   140001743:	90                   	nop
   140001744:	90                   	nop
   140001745:	90                   	nop
   140001746:	90                   	nop
   140001747:	90                   	nop
   140001748:	90                   	nop
   140001749:	90                   	nop
   14000174a:	90                   	nop
   14000174b:	90                   	nop
   14000174c:	90                   	nop
   14000174d:	90                   	nop
   14000174e:	90                   	nop
   14000174f:	90                   	nop
   140001750:	56                   	push   %rsi
   140001751:	53                   	push   %rbx
   140001752:	48 83 ec 78          	sub    $0x78,%rsp
   140001756:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000175b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001760:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001766:	83 39 06             	cmpl   $0x6,(%rcx)
   140001769:	0f 87 cd 00 00 00    	ja     0x14000183c
   14000176f:	8b 01                	mov    (%rcx),%eax
   140001771:	48 8d 15 2c 2a 00 00 	lea    0x2a2c(%rip),%rdx        # 0x1400041a4
   140001778:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000177c:	48 01 d0             	add    %rdx,%rax
   14000177f:	ff e0                	jmp    *%rax
   140001781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001788:	48 8d 1d c7 29 00 00 	lea    0x29c7(%rip),%rbx        # 0x140004156
   14000178f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001795:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000179a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000179f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400017a3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017a8:	e8 73 0f 00 00       	call   0x140002720
   1400017ad:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400017b4:	49 89 d8             	mov    %rbx,%r8
   1400017b7:	48 8d 15 ba 29 00 00 	lea    0x29ba(%rip),%rdx        # 0x140004178
   1400017be:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400017c4:	48 89 c1             	mov    %rax,%rcx
   1400017c7:	49 89 f1             	mov    %rsi,%r9
   1400017ca:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017d0:	e8 db 0e 00 00       	call   0x1400026b0
   1400017d5:	90                   	nop
   1400017d6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400017db:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017e0:	31 c0                	xor    %eax,%eax
   1400017e2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017e8:	48 83 c4 78          	add    $0x78,%rsp
   1400017ec:	5b                   	pop    %rbx
   1400017ed:	5e                   	pop    %rsi
   1400017ee:	c3                   	ret    
   1400017ef:	90                   	nop
   1400017f0:	48 8d 1d 99 28 00 00 	lea    0x2899(%rip),%rbx        # 0x140004090
   1400017f7:	eb 96                	jmp    0x14000178f
   1400017f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001800:	48 8d 1d c9 28 00 00 	lea    0x28c9(%rip),%rbx        # 0x1400040d0
   140001807:	eb 86                	jmp    0x14000178f
   140001809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001810:	48 8d 1d 99 28 00 00 	lea    0x2899(%rip),%rbx        # 0x1400040b0
   140001817:	e9 73 ff ff ff       	jmp    0x14000178f
   14000181c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001820:	48 8d 1d f9 28 00 00 	lea    0x28f9(%rip),%rbx        # 0x140004120
   140001827:	e9 63 ff ff ff       	jmp    0x14000178f
   14000182c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001830:	48 8d 1d c1 28 00 00 	lea    0x28c1(%rip),%rbx        # 0x1400040f8
   140001837:	e9 53 ff ff ff       	jmp    0x14000178f
   14000183c:	48 8d 1d 3d 28 00 00 	lea    0x283d(%rip),%rbx        # 0x140004080
   140001843:	e9 47 ff ff ff       	jmp    0x14000178f
   140001848:	90                   	nop
   140001849:	90                   	nop
   14000184a:	90                   	nop
   14000184b:	90                   	nop
   14000184c:	90                   	nop
   14000184d:	90                   	nop
   14000184e:	90                   	nop
   14000184f:	90                   	nop
   140001850:	db e3                	fninit 
   140001852:	c3                   	ret    
   140001853:	90                   	nop
   140001854:	90                   	nop
   140001855:	90                   	nop
   140001856:	90                   	nop
   140001857:	90                   	nop
   140001858:	90                   	nop
   140001859:	90                   	nop
   14000185a:	90                   	nop
   14000185b:	90                   	nop
   14000185c:	90                   	nop
   14000185d:	90                   	nop
   14000185e:	90                   	nop
   14000185f:	90                   	nop
   140001860:	41 54                	push   %r12
   140001862:	53                   	push   %rbx
   140001863:	48 83 ec 38          	sub    $0x38,%rsp
   140001867:	49 89 cc             	mov    %rcx,%r12
   14000186a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000186f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001874:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001879:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000187e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001883:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001888:	e8 93 0e 00 00       	call   0x140002720
   14000188d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001893:	ba 01 00 00 00       	mov    $0x1,%edx
   140001898:	48 8d 0d 21 29 00 00 	lea    0x2921(%rip),%rcx        # 0x1400041c0
   14000189f:	49 89 c1             	mov    %rax,%r9
   1400018a2:	e8 f9 0d 00 00       	call   0x1400026a0
   1400018a7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   1400018ac:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400018b1:	e8 6a 0e 00 00       	call   0x140002720
   1400018b6:	4c 89 e2             	mov    %r12,%rdx
   1400018b9:	48 89 c1             	mov    %rax,%rcx
   1400018bc:	49 89 d8             	mov    %rbx,%r8
   1400018bf:	e8 ac 0d 00 00       	call   0x140002670
   1400018c4:	e8 ff 0d 00 00       	call   0x1400026c8
   1400018c9:	90                   	nop
   1400018ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400018d0:	41 54                	push   %r12
   1400018d2:	55                   	push   %rbp
   1400018d3:	57                   	push   %rdi
   1400018d4:	56                   	push   %rsi
   1400018d5:	53                   	push   %rbx
   1400018d6:	48 83 ec 50          	sub    $0x50,%rsp
   1400018da:	48 63 3d c3 57 00 00 	movslq 0x57c3(%rip),%rdi        # 0x1400070a4
   1400018e1:	49 89 cc             	mov    %rcx,%r12
   1400018e4:	48 89 d6             	mov    %rdx,%rsi
   1400018e7:	4c 89 c3             	mov    %r8,%rbx
   1400018ea:	85 ff                	test   %edi,%edi
   1400018ec:	0f 8e 8e 01 00 00    	jle    0x140001a80
   1400018f2:	48 8b 05 af 57 00 00 	mov    0x57af(%rip),%rax        # 0x1400070a8
   1400018f9:	31 c9                	xor    %ecx,%ecx
   1400018fb:	48 83 c0 18          	add    $0x18,%rax
   1400018ff:	90                   	nop
   140001900:	48 8b 10             	mov    (%rax),%rdx
   140001903:	49 39 d4             	cmp    %rdx,%r12
   140001906:	72 14                	jb     0x14000191c
   140001908:	4c 8b 40 08          	mov    0x8(%rax),%r8
   14000190c:	45 8b 40 08          	mov    0x8(%r8),%r8d
   140001910:	4c 01 c2             	add    %r8,%rdx
   140001913:	49 39 d4             	cmp    %rdx,%r12
   140001916:	0f 82 8b 00 00 00    	jb     0x1400019a7
   14000191c:	83 c1 01             	add    $0x1,%ecx
   14000191f:	48 83 c0 28          	add    $0x28,%rax
   140001923:	39 f9                	cmp    %edi,%ecx
   140001925:	75 d9                	jne    0x140001900
   140001927:	4c 89 e1             	mov    %r12,%rcx
   14000192a:	e8 51 0a 00 00       	call   0x140002380
   14000192f:	48 89 c5             	mov    %rax,%rbp
   140001932:	48 85 c0             	test   %rax,%rax
   140001935:	0f 84 a2 01 00 00    	je     0x140001add
   14000193b:	48 8b 05 66 57 00 00 	mov    0x5766(%rip),%rax        # 0x1400070a8
   140001942:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
   140001946:	48 c1 e7 03          	shl    $0x3,%rdi
   14000194a:	48 01 f8             	add    %rdi,%rax
   14000194d:	48 89 68 20          	mov    %rbp,0x20(%rax)
   140001951:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001957:	e8 54 0b 00 00       	call   0x1400024b0
   14000195c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
   14000195f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001964:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   14000196a:	48 01 c1             	add    %rax,%rcx
   14000196d:	48 8b 05 34 57 00 00 	mov    0x5734(%rip),%rax        # 0x1400070a8
   140001974:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
   140001979:	ff 15 45 68 00 00    	call   *0x6845(%rip)        # 0x1400081c4
   14000197f:	48 85 c0             	test   %rax,%rax
   140001982:	0f 84 3a 01 00 00    	je     0x140001ac2
   140001988:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000198c:	8d 50 c0             	lea    -0x40(%rax),%edx
   14000198f:	83 e2 bf             	and    $0xffffffbf,%edx
   140001992:	74 0c                	je     0x1400019a0
   140001994:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001997:	83 e2 fb             	and    $0xfffffffb,%edx
   14000199a:	0f 85 90 00 00 00    	jne    0x140001a30
   1400019a0:	83 05 fd 56 00 00 01 	addl   $0x1,0x56fd(%rip)        # 0x1400070a4
   1400019a7:	83 fb 08             	cmp    $0x8,%ebx
   1400019aa:	73 2c                	jae    0x1400019d8
   1400019ac:	f6 c3 04             	test   $0x4,%bl
   1400019af:	0f 85 db 00 00 00    	jne    0x140001a90
   1400019b5:	85 db                	test   %ebx,%ebx
   1400019b7:	74 10                	je     0x1400019c9
   1400019b9:	0f b6 06             	movzbl (%rsi),%eax
   1400019bc:	41 88 04 24          	mov    %al,(%r12)
   1400019c0:	f6 c3 02             	test   $0x2,%bl
   1400019c3:	0f 85 e7 00 00 00    	jne    0x140001ab0
   1400019c9:	48 83 c4 50          	add    $0x50,%rsp
   1400019cd:	5b                   	pop    %rbx
   1400019ce:	5e                   	pop    %rsi
   1400019cf:	5f                   	pop    %rdi
   1400019d0:	5d                   	pop    %rbp
   1400019d1:	41 5c                	pop    %r12
   1400019d3:	c3                   	ret    
   1400019d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019d8:	48 8b 06             	mov    (%rsi),%rax
   1400019db:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
   1400019e0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
   1400019e4:	49 89 04 24          	mov    %rax,(%r12)
   1400019e8:	89 d8                	mov    %ebx,%eax
   1400019ea:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
   1400019ef:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
   1400019f4:	49 29 cc             	sub    %rcx,%r12
   1400019f7:	44 01 e3             	add    %r12d,%ebx
   1400019fa:	4c 29 e6             	sub    %r12,%rsi
   1400019fd:	83 e3 f8             	and    $0xfffffff8,%ebx
   140001a00:	83 fb 08             	cmp    $0x8,%ebx
   140001a03:	72 c4                	jb     0x1400019c9
   140001a05:	83 e3 f8             	and    $0xfffffff8,%ebx
   140001a08:	31 c0                	xor    %eax,%eax
   140001a0a:	89 c2                	mov    %eax,%edx
   140001a0c:	83 c0 08             	add    $0x8,%eax
   140001a0f:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
   140001a13:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
   140001a17:	39 d8                	cmp    %ebx,%eax
   140001a19:	72 ef                	jb     0x140001a0a
   140001a1b:	48 83 c4 50          	add    $0x50,%rsp
   140001a1f:	5b                   	pop    %rbx
   140001a20:	5e                   	pop    %rsi
   140001a21:	5f                   	pop    %rdi
   140001a22:	5d                   	pop    %rbp
   140001a23:	41 5c                	pop    %r12
   140001a25:	c3                   	ret    
   140001a26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001a2d:	00 00 00 
   140001a30:	83 f8 02             	cmp    $0x2,%eax
   140001a33:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001a38:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001a3d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001a43:	b8 40 00 00 00       	mov    $0x40,%eax
   140001a48:	44 0f 45 c0          	cmovne %eax,%r8d
   140001a4c:	48 03 3d 55 56 00 00 	add    0x5655(%rip),%rdi        # 0x1400070a8
   140001a53:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
   140001a57:	49 89 f9             	mov    %rdi,%r9
   140001a5a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
   140001a5e:	ff 15 58 67 00 00    	call   *0x6758(%rip)        # 0x1400081bc
   140001a64:	85 c0                	test   %eax,%eax
   140001a66:	0f 85 34 ff ff ff    	jne    0x1400019a0
   140001a6c:	ff 15 12 67 00 00    	call   *0x6712(%rip)        # 0x140008184
   140001a72:	48 8d 0d bf 27 00 00 	lea    0x27bf(%rip),%rcx        # 0x140004238
   140001a79:	89 c2                	mov    %eax,%edx
   140001a7b:	e8 e0 fd ff ff       	call   0x140001860
   140001a80:	31 ff                	xor    %edi,%edi
   140001a82:	e9 a0 fe ff ff       	jmp    0x140001927
   140001a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001a8e:	00 00 
   140001a90:	8b 06                	mov    (%rsi),%eax
   140001a92:	89 db                	mov    %ebx,%ebx
   140001a94:	41 89 04 24          	mov    %eax,(%r12)
   140001a98:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
   140001a9c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
   140001aa1:	e9 23 ff ff ff       	jmp    0x1400019c9
   140001aa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001aad:	00 00 00 
   140001ab0:	89 db                	mov    %ebx,%ebx
   140001ab2:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
   140001ab7:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
   140001abd:	e9 07 ff ff ff       	jmp    0x1400019c9
   140001ac2:	48 8b 05 df 55 00 00 	mov    0x55df(%rip),%rax        # 0x1400070a8
   140001ac9:	8b 55 08             	mov    0x8(%rbp),%edx
   140001acc:	48 8d 0d 2d 27 00 00 	lea    0x272d(%rip),%rcx        # 0x140004200
   140001ad3:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
   140001ad8:	e8 83 fd ff ff       	call   0x140001860
   140001add:	4c 89 e2             	mov    %r12,%rdx
   140001ae0:	48 8d 0d f9 26 00 00 	lea    0x26f9(%rip),%rcx        # 0x1400041e0
   140001ae7:	e8 74 fd ff ff       	call   0x140001860
   140001aec:	90                   	nop
   140001aed:	0f 1f 00             	nopl   (%rax)
   140001af0:	55                   	push   %rbp
   140001af1:	41 57                	push   %r15
   140001af3:	41 56                	push   %r14
   140001af5:	41 55                	push   %r13
   140001af7:	41 54                	push   %r12
   140001af9:	57                   	push   %rdi
   140001afa:	56                   	push   %rsi
   140001afb:	53                   	push   %rbx
   140001afc:	48 83 ec 38          	sub    $0x38,%rsp
   140001b00:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001b07:	00 
   140001b08:	8b 35 92 55 00 00    	mov    0x5592(%rip),%esi        # 0x1400070a0
   140001b0e:	85 f6                	test   %esi,%esi
   140001b10:	74 16                	je     0x140001b28
   140001b12:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
   140001b16:	5b                   	pop    %rbx
   140001b17:	5e                   	pop    %rsi
   140001b18:	5f                   	pop    %rdi
   140001b19:	41 5c                	pop    %r12
   140001b1b:	41 5d                	pop    %r13
   140001b1d:	41 5e                	pop    %r14
   140001b1f:	41 5f                	pop    %r15
   140001b21:	5d                   	pop    %rbp
   140001b22:	c3                   	ret    
   140001b23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b28:	c7 05 6e 55 00 00 01 	movl   $0x1,0x556e(%rip)        # 0x1400070a0
   140001b2f:	00 00 00 
   140001b32:	e8 d9 08 00 00       	call   0x140002410
   140001b37:	48 98                	cltq   
   140001b39:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001b3d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001b44:	00 
   140001b45:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001b49:	e8 e2 0a 00 00       	call   0x140002630
   140001b4e:	4c 8b 25 db 27 00 00 	mov    0x27db(%rip),%r12        # 0x140004330
   140001b55:	48 8b 1d e4 27 00 00 	mov    0x27e4(%rip),%rbx        # 0x140004340
   140001b5c:	c7 05 3e 55 00 00 00 	movl   $0x0,0x553e(%rip)        # 0x1400070a4
   140001b63:	00 00 00 
   140001b66:	48 29 c4             	sub    %rax,%rsp
   140001b69:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001b6e:	48 89 05 33 55 00 00 	mov    %rax,0x5533(%rip)        # 0x1400070a8
   140001b75:	4c 89 e0             	mov    %r12,%rax
   140001b78:	48 29 d8             	sub    %rbx,%rax
   140001b7b:	48 83 f8 07          	cmp    $0x7,%rax
   140001b7f:	7e 91                	jle    0x140001b12
   140001b81:	8b 13                	mov    (%rbx),%edx
   140001b83:	48 83 f8 0b          	cmp    $0xb,%rax
   140001b87:	0f 8f 4b 01 00 00    	jg     0x140001cd8
   140001b8d:	85 d2                	test   %edx,%edx
   140001b8f:	0f 85 cb 01 00 00    	jne    0x140001d60
   140001b95:	8b 43 04             	mov    0x4(%rbx),%eax
   140001b98:	85 c0                	test   %eax,%eax
   140001b9a:	0f 85 c0 01 00 00    	jne    0x140001d60
   140001ba0:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ba3:	83 fa 01             	cmp    $0x1,%edx
   140001ba6:	0f 85 1c 02 00 00    	jne    0x140001dc8
   140001bac:	48 83 c3 0c          	add    $0xc,%rbx
   140001bb0:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
   140001bb4:	4c 8b 2d a5 27 00 00 	mov    0x27a5(%rip),%r13        # 0x140004360
   140001bbb:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   140001bc2:	ff ff ff 
   140001bc5:	4c 39 e3             	cmp    %r12,%rbx
   140001bc8:	72 3f                	jb     0x140001c09
   140001bca:	e9 43 ff ff ff       	jmp    0x140001b12
   140001bcf:	90                   	nop
   140001bd0:	44 0f b6 01          	movzbl (%rcx),%r8d
   140001bd4:	4c 89 ff             	mov    %r15,%rdi
   140001bd7:	4d 89 c2             	mov    %r8,%r10
   140001bda:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
   140001be1:	45 84 c0             	test   %r8b,%r8b
   140001be4:	4d 0f 48 c2          	cmovs  %r10,%r8
   140001be8:	49 29 d0             	sub    %rdx,%r8
   140001beb:	4c 89 fa             	mov    %r15,%rdx
   140001bee:	4d 01 c8             	add    %r9,%r8
   140001bf1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   140001bf5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001bfb:	e8 d0 fc ff ff       	call   0x1400018d0
   140001c00:	48 83 c3 0c          	add    $0xc,%rbx
   140001c04:	4c 39 e3             	cmp    %r12,%rbx
   140001c07:	73 77                	jae    0x140001c80
   140001c09:	8b 13                	mov    (%rbx),%edx
   140001c0b:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001c0e:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
   140001c13:	4c 01 ea             	add    %r13,%rdx
   140001c16:	4c 01 e9             	add    %r13,%rcx
   140001c19:	4c 8b 0a             	mov    (%rdx),%r9
   140001c1c:	41 83 f8 20          	cmp    $0x20,%r8d
   140001c20:	0f 84 0a 01 00 00    	je     0x140001d30
   140001c26:	0f 87 d4 00 00 00    	ja     0x140001d00
   140001c2c:	41 83 f8 08          	cmp    $0x8,%r8d
   140001c30:	74 9e                	je     0x140001bd0
   140001c32:	41 83 f8 10          	cmp    $0x10,%r8d
   140001c36:	0f 85 75 01 00 00    	jne    0x140001db1
   140001c3c:	44 0f b7 01          	movzwl (%rcx),%r8d
   140001c40:	4c 89 ff             	mov    %r15,%rdi
   140001c43:	4d 89 c2             	mov    %r8,%r10
   140001c46:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
   140001c4d:	66 45 85 c0          	test   %r8w,%r8w
   140001c51:	4d 0f 48 c2          	cmovs  %r10,%r8
   140001c55:	48 83 c3 0c          	add    $0xc,%rbx
   140001c59:	49 29 d0             	sub    %rdx,%r8
   140001c5c:	4c 89 fa             	mov    %r15,%rdx
   140001c5f:	4d 01 c8             	add    %r9,%r8
   140001c62:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   140001c66:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140001c6c:	e8 5f fc ff ff       	call   0x1400018d0
   140001c71:	4c 39 e3             	cmp    %r12,%rbx
   140001c74:	72 93                	jb     0x140001c09
   140001c76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c7d:	00 00 00 
   140001c80:	8b 05 1e 54 00 00    	mov    0x541e(%rip),%eax        # 0x1400070a4
   140001c86:	85 c0                	test   %eax,%eax
   140001c88:	0f 8e 84 fe ff ff    	jle    0x140001b12
   140001c8e:	4c 8b 25 27 65 00 00 	mov    0x6527(%rip),%r12        # 0x1400081bc
   140001c95:	31 db                	xor    %ebx,%ebx
   140001c97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001c9e:	00 00 
   140001ca0:	48 8b 05 01 54 00 00 	mov    0x5401(%rip),%rax        # 0x1400070a8
   140001ca7:	48 01 d8             	add    %rbx,%rax
   140001caa:	44 8b 00             	mov    (%rax),%r8d
   140001cad:	45 85 c0             	test   %r8d,%r8d
   140001cb0:	74 0e                	je     0x140001cc0
   140001cb2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001cb6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001cba:	49 89 f9             	mov    %rdi,%r9
   140001cbd:	41 ff d4             	call   *%r12
   140001cc0:	83 c6 01             	add    $0x1,%esi
   140001cc3:	48 83 c3 28          	add    $0x28,%rbx
   140001cc7:	3b 35 d7 53 00 00    	cmp    0x53d7(%rip),%esi        # 0x1400070a4
   140001ccd:	7c d1                	jl     0x140001ca0
   140001ccf:	e9 3e fe ff ff       	jmp    0x140001b12
   140001cd4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001cd8:	85 d2                	test   %edx,%edx
   140001cda:	0f 85 80 00 00 00    	jne    0x140001d60
   140001ce0:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ce3:	89 c7                	mov    %eax,%edi
   140001ce5:	0b 7b 08             	or     0x8(%rbx),%edi
   140001ce8:	0f 85 aa fe ff ff    	jne    0x140001b98
   140001cee:	8b 53 0c             	mov    0xc(%rbx),%edx
   140001cf1:	48 83 c3 0c          	add    $0xc,%rbx
   140001cf5:	e9 93 fe ff ff       	jmp    0x140001b8d
   140001cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001d00:	41 83 f8 40          	cmp    $0x40,%r8d
   140001d04:	0f 85 a7 00 00 00    	jne    0x140001db1
   140001d0a:	48 8b 01             	mov    (%rcx),%rax
   140001d0d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140001d13:	4c 89 ff             	mov    %r15,%rdi
   140001d16:	48 29 d0             	sub    %rdx,%rax
   140001d19:	4c 89 fa             	mov    %r15,%rdx
   140001d1c:	4c 01 c8             	add    %r9,%rax
   140001d1f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140001d23:	e8 a8 fb ff ff       	call   0x1400018d0
   140001d28:	e9 d3 fe ff ff       	jmp    0x140001c00
   140001d2d:	0f 1f 00             	nopl   (%rax)
   140001d30:	8b 01                	mov    (%rcx),%eax
   140001d32:	4c 89 ff             	mov    %r15,%rdi
   140001d35:	49 89 c0             	mov    %rax,%r8
   140001d38:	4c 09 f0             	or     %r14,%rax
   140001d3b:	45 85 c0             	test   %r8d,%r8d
   140001d3e:	49 0f 49 c0          	cmovns %r8,%rax
   140001d42:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001d48:	48 29 d0             	sub    %rdx,%rax
   140001d4b:	4c 89 fa             	mov    %r15,%rdx
   140001d4e:	4c 01 c8             	add    %r9,%rax
   140001d51:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140001d55:	e8 76 fb ff ff       	call   0x1400018d0
   140001d5a:	e9 a1 fe ff ff       	jmp    0x140001c00
   140001d5f:	90                   	nop
   140001d60:	4c 39 e3             	cmp    %r12,%rbx
   140001d63:	0f 83 a9 fd ff ff    	jae    0x140001b12
   140001d69:	49 83 ec 01          	sub    $0x1,%r12
   140001d6d:	4c 8b 2d ec 25 00 00 	mov    0x25ec(%rip),%r13        # 0x140004360
   140001d74:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   140001d78:	49 29 dc             	sub    %rbx,%r12
   140001d7b:	49 c1 ec 03          	shr    $0x3,%r12
   140001d7f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
   140001d84:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d88:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001d8b:	8b 03                	mov    (%rbx),%eax
   140001d8d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001d93:	48 89 fa             	mov    %rdi,%rdx
   140001d96:	48 83 c3 08          	add    $0x8,%rbx
   140001d9a:	4c 01 e9             	add    %r13,%rcx
   140001d9d:	03 01                	add    (%rcx),%eax
   140001d9f:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140001da2:	e8 29 fb ff ff       	call   0x1400018d0
   140001da7:	4c 39 e3             	cmp    %r12,%rbx
   140001daa:	75 dc                	jne    0x140001d88
   140001dac:	e9 cf fe ff ff       	jmp    0x140001c80
   140001db1:	44 89 c2             	mov    %r8d,%edx
   140001db4:	48 8d 0d dd 24 00 00 	lea    0x24dd(%rip),%rcx        # 0x140004298
   140001dbb:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   140001dc2:	00 
   140001dc3:	e8 98 fa ff ff       	call   0x140001860
   140001dc8:	48 8d 0d 91 24 00 00 	lea    0x2491(%rip),%rcx        # 0x140004260
   140001dcf:	e8 8c fa ff ff       	call   0x140001860
   140001dd4:	90                   	nop
   140001dd5:	90                   	nop
   140001dd6:	90                   	nop
   140001dd7:	90                   	nop
   140001dd8:	90                   	nop
   140001dd9:	90                   	nop
   140001dda:	90                   	nop
   140001ddb:	90                   	nop
   140001ddc:	90                   	nop
   140001ddd:	90                   	nop
   140001dde:	90                   	nop
   140001ddf:	90                   	nop
   140001de0:	48 83 ec 58          	sub    $0x58,%rsp
   140001de4:	48 8b 05 c5 52 00 00 	mov    0x52c5(%rip),%rax        # 0x1400070b0
   140001deb:	48 85 c0             	test   %rax,%rax
   140001dee:	74 2c                	je     0x140001e1c
   140001df0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001df7:	00 00 
   140001df9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001dfd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001e02:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001e07:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001e0d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001e13:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001e19:	ff d0                	call   *%rax
   140001e1b:	90                   	nop
   140001e1c:	48 83 c4 58          	add    $0x58,%rsp
   140001e20:	c3                   	ret    
   140001e21:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001e28:	00 00 00 00 
   140001e2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e30:	48 89 0d 79 52 00 00 	mov    %rcx,0x5279(%rip)        # 0x1400070b0
   140001e37:	e9 b4 08 00 00       	jmp    0x1400026f0
   140001e3c:	90                   	nop
   140001e3d:	90                   	nop
   140001e3e:	90                   	nop
   140001e3f:	90                   	nop
   140001e40:	41 54                	push   %r12
   140001e42:	48 83 ec 20          	sub    $0x20,%rsp
   140001e46:	48 8b 11             	mov    (%rcx),%rdx
   140001e49:	8b 02                	mov    (%rdx),%eax
   140001e4b:	49 89 cc             	mov    %rcx,%r12
   140001e4e:	89 c1                	mov    %eax,%ecx
   140001e50:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001e56:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001e5c:	0f 84 ce 00 00 00    	je     0x140001f30
   140001e62:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001e67:	0f 87 aa 00 00 00    	ja     0x140001f17
   140001e6d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001e72:	76 54                	jbe    0x140001ec8
   140001e74:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001e79:	83 f8 09             	cmp    $0x9,%eax
   140001e7c:	77 3a                	ja     0x140001eb8
   140001e7e:	48 8d 15 4b 24 00 00 	lea    0x244b(%rip),%rdx        # 0x1400042d0
   140001e85:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001e89:	48 01 d0             	add    %rdx,%rax
   140001e8c:	ff e0                	jmp    *%rax
   140001e8e:	31 d2                	xor    %edx,%edx
   140001e90:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e95:	e8 ee 07 00 00       	call   0x140002688
   140001e9a:	48 83 f8 01          	cmp    $0x1,%rax
   140001e9e:	0f 85 b7 00 00 00    	jne    0x140001f5b
   140001ea4:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ea9:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001eae:	e8 d5 07 00 00       	call   0x140002688
   140001eb3:	e8 98 f9 ff ff       	call   0x140001850
   140001eb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001ebd:	48 83 c4 20          	add    $0x20,%rsp
   140001ec1:	41 5c                	pop    %r12
   140001ec3:	c3                   	ret    
   140001ec4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ec8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001ecd:	0f 84 a5 00 00 00    	je     0x140001f78
   140001ed3:	76 3b                	jbe    0x140001f10
   140001ed5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001eda:	74 dc                	je     0x140001eb8
   140001edc:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001ee1:	75 34                	jne    0x140001f17
   140001ee3:	31 d2                	xor    %edx,%edx
   140001ee5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001eea:	e8 99 07 00 00       	call   0x140002688
   140001eef:	48 83 f8 01          	cmp    $0x1,%rax
   140001ef3:	0f 84 a7 00 00 00    	je     0x140001fa0
   140001ef9:	48 85 c0             	test   %rax,%rax
   140001efc:	74 19                	je     0x140001f17
   140001efe:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f03:	ff d0                	call   *%rax
   140001f05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f0a:	eb b1                	jmp    0x140001ebd
   140001f0c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f10:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001f15:	74 a1                	je     0x140001eb8
   140001f17:	48 8b 05 b2 51 00 00 	mov    0x51b2(%rip),%rax        # 0x1400070d0
   140001f1e:	48 85 c0             	test   %rax,%rax
   140001f21:	74 1d                	je     0x140001f40
   140001f23:	4c 89 e1             	mov    %r12,%rcx
   140001f26:	48 83 c4 20          	add    $0x20,%rsp
   140001f2a:	41 5c                	pop    %r12
   140001f2c:	48 ff e0             	rex.W jmp *%rax
   140001f2f:	90                   	nop
   140001f30:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001f34:	0f 85 28 ff ff ff    	jne    0x140001e62
   140001f3a:	e9 79 ff ff ff       	jmp    0x140001eb8
   140001f3f:	90                   	nop
   140001f40:	31 c0                	xor    %eax,%eax
   140001f42:	48 83 c4 20          	add    $0x20,%rsp
   140001f46:	41 5c                	pop    %r12
   140001f48:	c3                   	ret    
   140001f49:	31 d2                	xor    %edx,%edx
   140001f4b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f50:	e8 33 07 00 00       	call   0x140002688
   140001f55:	48 83 f8 01          	cmp    $0x1,%rax
   140001f59:	74 65                	je     0x140001fc0
   140001f5b:	48 85 c0             	test   %rax,%rax
   140001f5e:	74 b7                	je     0x140001f17
   140001f60:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f65:	ff d0                	call   *%rax
   140001f67:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f6c:	e9 4c ff ff ff       	jmp    0x140001ebd
   140001f71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001f78:	31 d2                	xor    %edx,%edx
   140001f7a:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f7f:	e8 04 07 00 00       	call   0x140002688
   140001f84:	48 83 f8 01          	cmp    $0x1,%rax
   140001f88:	74 4f                	je     0x140001fd9
   140001f8a:	48 85 c0             	test   %rax,%rax
   140001f8d:	74 88                	je     0x140001f17
   140001f8f:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f94:	ff d0                	call   *%rax
   140001f96:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f9b:	e9 1d ff ff ff       	jmp    0x140001ebd
   140001fa0:	ba 01 00 00 00       	mov    $0x1,%edx
   140001fa5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001faa:	e8 d9 06 00 00       	call   0x140002688
   140001faf:	83 c8 ff             	or     $0xffffffff,%eax
   140001fb2:	e9 06 ff ff ff       	jmp    0x140001ebd
   140001fb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001fbe:	00 00 
   140001fc0:	ba 01 00 00 00       	mov    $0x1,%edx
   140001fc5:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001fca:	e8 b9 06 00 00       	call   0x140002688
   140001fcf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001fd4:	e9 e4 fe ff ff       	jmp    0x140001ebd
   140001fd9:	ba 01 00 00 00       	mov    $0x1,%edx
   140001fde:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001fe3:	e8 a0 06 00 00       	call   0x140002688
   140001fe8:	83 c8 ff             	or     $0xffffffff,%eax
   140001feb:	e9 cd fe ff ff       	jmp    0x140001ebd
   140001ff0:	41 54                	push   %r12
   140001ff2:	57                   	push   %rdi
   140001ff3:	56                   	push   %rsi
   140001ff4:	53                   	push   %rbx
   140001ff5:	48 83 ec 28          	sub    $0x28,%rsp
   140001ff9:	48 8d 0d 00 51 00 00 	lea    0x5100(%rip),%rcx        # 0x140007100
   140002000:	ff 15 76 61 00 00    	call   *0x6176(%rip)        # 0x14000817c
   140002006:	48 8b 1d d3 50 00 00 	mov    0x50d3(%rip),%rbx        # 0x1400070e0
   14000200d:	48 85 db             	test   %rbx,%rbx
   140002010:	74 32                	je     0x140002044
   140002012:	48 8b 3d 9b 61 00 00 	mov    0x619b(%rip),%rdi        # 0x1400081b4
   140002019:	48 8b 35 64 61 00 00 	mov    0x6164(%rip),%rsi        # 0x140008184
   140002020:	8b 0b                	mov    (%rbx),%ecx
   140002022:	ff d7                	call   *%rdi
   140002024:	49 89 c4             	mov    %rax,%r12
   140002027:	ff d6                	call   *%rsi
   140002029:	85 c0                	test   %eax,%eax
   14000202b:	75 0e                	jne    0x14000203b
   14000202d:	4d 85 e4             	test   %r12,%r12
   140002030:	74 09                	je     0x14000203b
   140002032:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002036:	4c 89 e1             	mov    %r12,%rcx
   140002039:	ff d0                	call   *%rax
   14000203b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000203f:	48 85 db             	test   %rbx,%rbx
   140002042:	75 dc                	jne    0x140002020
   140002044:	48 8d 0d b5 50 00 00 	lea    0x50b5(%rip),%rcx        # 0x140007100
   14000204b:	48 83 c4 28          	add    $0x28,%rsp
   14000204f:	5b                   	pop    %rbx
   140002050:	5e                   	pop    %rsi
   140002051:	5f                   	pop    %rdi
   140002052:	41 5c                	pop    %r12
   140002054:	48 ff 25 41 61 00 00 	rex.W jmp *0x6141(%rip)        # 0x14000819c
   14000205b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002060:	57                   	push   %rdi
   140002061:	56                   	push   %rsi
   140002062:	53                   	push   %rbx
   140002063:	48 83 ec 20          	sub    $0x20,%rsp
   140002067:	8b 05 7b 50 00 00    	mov    0x507b(%rip),%eax        # 0x1400070e8
   14000206d:	89 cf                	mov    %ecx,%edi
   14000206f:	48 89 d6             	mov    %rdx,%rsi
   140002072:	85 c0                	test   %eax,%eax
   140002074:	75 0a                	jne    0x140002080
   140002076:	48 83 c4 20          	add    $0x20,%rsp
   14000207a:	5b                   	pop    %rbx
   14000207b:	5e                   	pop    %rsi
   14000207c:	5f                   	pop    %rdi
   14000207d:	c3                   	ret    
   14000207e:	66 90                	xchg   %ax,%ax
   140002080:	ba 18 00 00 00       	mov    $0x18,%edx
   140002085:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000208a:	e8 31 06 00 00       	call   0x1400026c0
   14000208f:	48 89 c3             	mov    %rax,%rbx
   140002092:	48 85 c0             	test   %rax,%rax
   140002095:	74 3c                	je     0x1400020d3
   140002097:	89 38                	mov    %edi,(%rax)
   140002099:	48 8d 0d 60 50 00 00 	lea    0x5060(%rip),%rcx        # 0x140007100
   1400020a0:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400020a4:	ff 15 d2 60 00 00    	call   *0x60d2(%rip)        # 0x14000817c
   1400020aa:	48 8b 05 2f 50 00 00 	mov    0x502f(%rip),%rax        # 0x1400070e0
   1400020b1:	48 8d 0d 48 50 00 00 	lea    0x5048(%rip),%rcx        # 0x140007100
   1400020b8:	48 89 1d 21 50 00 00 	mov    %rbx,0x5021(%rip)        # 0x1400070e0
   1400020bf:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400020c3:	ff 15 d3 60 00 00    	call   *0x60d3(%rip)        # 0x14000819c
   1400020c9:	31 c0                	xor    %eax,%eax
   1400020cb:	48 83 c4 20          	add    $0x20,%rsp
   1400020cf:	5b                   	pop    %rbx
   1400020d0:	5e                   	pop    %rsi
   1400020d1:	5f                   	pop    %rdi
   1400020d2:	c3                   	ret    
   1400020d3:	83 c8 ff             	or     $0xffffffff,%eax
   1400020d6:	eb 9e                	jmp    0x140002076
   1400020d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400020df:	00 
   1400020e0:	53                   	push   %rbx
   1400020e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400020e5:	8b 05 fd 4f 00 00    	mov    0x4ffd(%rip),%eax        # 0x1400070e8
   1400020eb:	89 cb                	mov    %ecx,%ebx
   1400020ed:	85 c0                	test   %eax,%eax
   1400020ef:	75 0f                	jne    0x140002100
   1400020f1:	31 c0                	xor    %eax,%eax
   1400020f3:	48 83 c4 20          	add    $0x20,%rsp
   1400020f7:	5b                   	pop    %rbx
   1400020f8:	c3                   	ret    
   1400020f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002100:	48 8d 0d f9 4f 00 00 	lea    0x4ff9(%rip),%rcx        # 0x140007100
   140002107:	ff 15 6f 60 00 00    	call   *0x606f(%rip)        # 0x14000817c
   14000210d:	48 8b 0d cc 4f 00 00 	mov    0x4fcc(%rip),%rcx        # 0x1400070e0
   140002114:	48 85 c9             	test   %rcx,%rcx
   140002117:	74 2a                	je     0x140002143
   140002119:	31 d2                	xor    %edx,%edx
   14000211b:	eb 0e                	jmp    0x14000212b
   14000211d:	0f 1f 00             	nopl   (%rax)
   140002120:	48 89 ca             	mov    %rcx,%rdx
   140002123:	48 85 c0             	test   %rax,%rax
   140002126:	74 1b                	je     0x140002143
   140002128:	48 89 c1             	mov    %rax,%rcx
   14000212b:	8b 01                	mov    (%rcx),%eax
   14000212d:	39 d8                	cmp    %ebx,%eax
   14000212f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002133:	75 eb                	jne    0x140002120
   140002135:	48 85 d2             	test   %rdx,%rdx
   140002138:	74 26                	je     0x140002160
   14000213a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000213e:	e8 65 05 00 00       	call   0x1400026a8
   140002143:	48 8d 0d b6 4f 00 00 	lea    0x4fb6(%rip),%rcx        # 0x140007100
   14000214a:	ff 15 4c 60 00 00    	call   *0x604c(%rip)        # 0x14000819c
   140002150:	31 c0                	xor    %eax,%eax
   140002152:	48 83 c4 20          	add    $0x20,%rsp
   140002156:	5b                   	pop    %rbx
   140002157:	c3                   	ret    
   140002158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000215f:	00 
   140002160:	48 89 05 79 4f 00 00 	mov    %rax,0x4f79(%rip)        # 0x1400070e0
   140002167:	eb d5                	jmp    0x14000213e
   140002169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002170:	53                   	push   %rbx
   140002171:	48 83 ec 20          	sub    $0x20,%rsp
   140002175:	83 fa 02             	cmp    $0x2,%edx
   140002178:	0f 84 c2 00 00 00    	je     0x140002240
   14000217e:	77 28                	ja     0x1400021a8
   140002180:	85 d2                	test   %edx,%edx
   140002182:	74 4c                	je     0x1400021d0
   140002184:	8b 05 5e 4f 00 00    	mov    0x4f5e(%rip),%eax        # 0x1400070e8
   14000218a:	85 c0                	test   %eax,%eax
   14000218c:	74 32                	je     0x1400021c0
   14000218e:	c7 05 50 4f 00 00 01 	movl   $0x1,0x4f50(%rip)        # 0x1400070e8
   140002195:	00 00 00 
   140002198:	b8 01 00 00 00       	mov    $0x1,%eax
   14000219d:	48 83 c4 20          	add    $0x20,%rsp
   1400021a1:	5b                   	pop    %rbx
   1400021a2:	c3                   	ret    
   1400021a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021a8:	83 fa 03             	cmp    $0x3,%edx
   1400021ab:	75 eb                	jne    0x140002198
   1400021ad:	8b 05 35 4f 00 00    	mov    0x4f35(%rip),%eax        # 0x1400070e8
   1400021b3:	85 c0                	test   %eax,%eax
   1400021b5:	74 e1                	je     0x140002198
   1400021b7:	e8 34 fe ff ff       	call   0x140001ff0
   1400021bc:	eb da                	jmp    0x140002198
   1400021be:	66 90                	xchg   %ax,%ax
   1400021c0:	48 8d 0d 39 4f 00 00 	lea    0x4f39(%rip),%rcx        # 0x140007100
   1400021c7:	ff 15 c7 5f 00 00    	call   *0x5fc7(%rip)        # 0x140008194
   1400021cd:	eb bf                	jmp    0x14000218e
   1400021cf:	90                   	nop
   1400021d0:	8b 05 12 4f 00 00    	mov    0x4f12(%rip),%eax        # 0x1400070e8
   1400021d6:	85 c0                	test   %eax,%eax
   1400021d8:	74 05                	je     0x1400021df
   1400021da:	e8 11 fe ff ff       	call   0x140001ff0
   1400021df:	8b 05 03 4f 00 00    	mov    0x4f03(%rip),%eax        # 0x1400070e8
   1400021e5:	83 f8 01             	cmp    $0x1,%eax
   1400021e8:	75 ae                	jne    0x140002198
   1400021ea:	48 8b 1d ef 4e 00 00 	mov    0x4eef(%rip),%rbx        # 0x1400070e0
   1400021f1:	48 85 db             	test   %rbx,%rbx
   1400021f4:	74 1b                	je     0x140002211
   1400021f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400021fd:	00 00 00 
   140002200:	48 89 d9             	mov    %rbx,%rcx
   140002203:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002207:	e8 9c 04 00 00       	call   0x1400026a8
   14000220c:	48 85 db             	test   %rbx,%rbx
   14000220f:	75 ef                	jne    0x140002200
   140002211:	48 8d 0d e8 4e 00 00 	lea    0x4ee8(%rip),%rcx        # 0x140007100
   140002218:	48 c7 05 bd 4e 00 00 	movq   $0x0,0x4ebd(%rip)        # 0x1400070e0
   14000221f:	00 00 00 00 
   140002223:	c7 05 bb 4e 00 00 00 	movl   $0x0,0x4ebb(%rip)        # 0x1400070e8
   14000222a:	00 00 00 
   14000222d:	ff 15 41 5f 00 00    	call   *0x5f41(%rip)        # 0x140008174
   140002233:	e9 60 ff ff ff       	jmp    0x140002198
   140002238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000223f:	00 
   140002240:	e8 0b f6 ff ff       	call   0x140001850
   140002245:	b8 01 00 00 00       	mov    $0x1,%eax
   14000224a:	48 83 c4 20          	add    $0x20,%rsp
   14000224e:	5b                   	pop    %rbx
   14000224f:	c3                   	ret    
   140002250:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002254:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
   140002258:	31 c0                	xor    %eax,%eax
   14000225a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002260:	75 0b                	jne    0x14000226d
   140002262:	31 c0                	xor    %eax,%eax
   140002264:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000226a:	0f 94 c0             	sete   %al
   14000226d:	c3                   	ret    
   14000226e:	66 90                	xchg   %ax,%ax
   140002270:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002275:	75 09                	jne    0x140002280
   140002277:	eb d7                	jmp    0x140002250
   140002279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002280:	31 c0                	xor    %eax,%eax
   140002282:	c3                   	ret    
   140002283:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000228a:	00 00 00 00 
   14000228e:	66 90                	xchg   %ax,%ax
   140002290:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002294:	48 01 c1             	add    %rax,%rcx
   140002297:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000229b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400022a0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   1400022a4:	85 c9                	test   %ecx,%ecx
   1400022a6:	74 2d                	je     0x1400022d5
   1400022a8:	83 e9 01             	sub    $0x1,%ecx
   1400022ab:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400022af:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400022b4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022b8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022bc:	4c 89 c1             	mov    %r8,%rcx
   1400022bf:	49 39 d0             	cmp    %rdx,%r8
   1400022c2:	77 08                	ja     0x1400022cc
   1400022c4:	03 48 08             	add    0x8(%rax),%ecx
   1400022c7:	48 39 d1             	cmp    %rdx,%rcx
   1400022ca:	77 0b                	ja     0x1400022d7
   1400022cc:	48 83 c0 28          	add    $0x28,%rax
   1400022d0:	4c 39 c8             	cmp    %r9,%rax
   1400022d3:	75 e3                	jne    0x1400022b8
   1400022d5:	31 c0                	xor    %eax,%eax
   1400022d7:	c3                   	ret    
   1400022d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400022df:	00 
   1400022e0:	41 54                	push   %r12
   1400022e2:	56                   	push   %rsi
   1400022e3:	53                   	push   %rbx
   1400022e4:	48 83 ec 20          	sub    $0x20,%rsp
   1400022e8:	48 89 cb             	mov    %rcx,%rbx
   1400022eb:	e8 90 03 00 00       	call   0x140002680
   1400022f0:	48 83 f8 08          	cmp    $0x8,%rax
   1400022f4:	77 7a                	ja     0x140002370
   1400022f6:	48 8b 0d 63 20 00 00 	mov    0x2063(%rip),%rcx        # 0x140004360
   1400022fd:	45 31 e4             	xor    %r12d,%r12d
   140002300:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002305:	75 57                	jne    0x14000235e
   140002307:	e8 44 ff ff ff       	call   0x140002250
   14000230c:	85 c0                	test   %eax,%eax
   14000230e:	74 4e                	je     0x14000235e
   140002310:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002314:	48 01 c1             	add    %rax,%rcx
   140002317:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000231b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
   140002320:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   140002324:	85 c0                	test   %eax,%eax
   140002326:	74 48                	je     0x140002370
   140002328:	83 e8 01             	sub    $0x1,%eax
   14000232b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000232f:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002334:	eb 13                	jmp    0x140002349
   140002336:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000233d:	00 00 00 
   140002340:	49 83 c4 28          	add    $0x28,%r12
   140002344:	49 39 f4             	cmp    %rsi,%r12
   140002347:	74 27                	je     0x140002370
   140002349:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000234f:	48 89 da             	mov    %rbx,%rdx
   140002352:	4c 89 e1             	mov    %r12,%rcx
   140002355:	e8 1e 03 00 00       	call   0x140002678
   14000235a:	85 c0                	test   %eax,%eax
   14000235c:	75 e2                	jne    0x140002340
   14000235e:	4c 89 e0             	mov    %r12,%rax
   140002361:	48 83 c4 20          	add    $0x20,%rsp
   140002365:	5b                   	pop    %rbx
   140002366:	5e                   	pop    %rsi
   140002367:	41 5c                	pop    %r12
   140002369:	c3                   	ret    
   14000236a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002370:	45 31 e4             	xor    %r12d,%r12d
   140002373:	4c 89 e0             	mov    %r12,%rax
   140002376:	48 83 c4 20          	add    $0x20,%rsp
   14000237a:	5b                   	pop    %rbx
   14000237b:	5e                   	pop    %rsi
   14000237c:	41 5c                	pop    %r12
   14000237e:	c3                   	ret    
   14000237f:	90                   	nop
   140002380:	48 83 ec 28          	sub    $0x28,%rsp
   140002384:	4c 8b 15 d5 1f 00 00 	mov    0x1fd5(%rip),%r10        # 0x140004360
   14000238b:	45 31 c0             	xor    %r8d,%r8d
   14000238e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
   140002394:	49 89 c9             	mov    %rcx,%r9
   140002397:	75 60                	jne    0x1400023f9
   140002399:	4c 89 d1             	mov    %r10,%rcx
   14000239c:	e8 af fe ff ff       	call   0x140002250
   1400023a1:	85 c0                	test   %eax,%eax
   1400023a3:	74 54                	je     0x1400023f9
   1400023a5:	49 63 42 3c          	movslq 0x3c(%r10),%rax
   1400023a9:	4c 89 c9             	mov    %r9,%rcx
   1400023ac:	4c 29 d1             	sub    %r10,%rcx
   1400023af:	49 01 c2             	add    %rax,%r10
   1400023b2:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
   1400023b7:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
   1400023bc:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
   1400023c1:	85 c0                	test   %eax,%eax
   1400023c3:	74 31                	je     0x1400023f6
   1400023c5:	83 e8 01             	sub    $0x1,%eax
   1400023c8:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400023cc:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
   1400023d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023d8:	41 8b 50 0c          	mov    0xc(%r8),%edx
   1400023dc:	48 89 d0             	mov    %rdx,%rax
   1400023df:	48 39 d1             	cmp    %rdx,%rcx
   1400023e2:	72 09                	jb     0x1400023ed
   1400023e4:	41 03 40 08          	add    0x8(%r8),%eax
   1400023e8:	48 39 c1             	cmp    %rax,%rcx
   1400023eb:	72 0c                	jb     0x1400023f9
   1400023ed:	49 83 c0 28          	add    $0x28,%r8
   1400023f1:	4d 39 c8             	cmp    %r9,%r8
   1400023f4:	75 e2                	jne    0x1400023d8
   1400023f6:	45 31 c0             	xor    %r8d,%r8d
   1400023f9:	4c 89 c0             	mov    %r8,%rax
   1400023fc:	48 83 c4 28          	add    $0x28,%rsp
   140002400:	c3                   	ret    
   140002401:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002408:	00 00 00 00 
   14000240c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002410:	48 83 ec 28          	sub    $0x28,%rsp
   140002414:	48 8b 0d 45 1f 00 00 	mov    0x1f45(%rip),%rcx        # 0x140004360
   14000241b:	31 c0                	xor    %eax,%eax
   14000241d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002422:	75 12                	jne    0x140002436
   140002424:	e8 27 fe ff ff       	call   0x140002250
   140002429:	85 c0                	test   %eax,%eax
   14000242b:	74 09                	je     0x140002436
   14000242d:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002431:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
   140002436:	48 83 c4 28          	add    $0x28,%rsp
   14000243a:	c3                   	ret    
   14000243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002440:	48 83 ec 28          	sub    $0x28,%rsp
   140002444:	45 31 c0             	xor    %r8d,%r8d
   140002447:	49 89 c9             	mov    %rcx,%r9
   14000244a:	48 8b 0d 0f 1f 00 00 	mov    0x1f0f(%rip),%rcx        # 0x140004360
   140002451:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002456:	75 4c                	jne    0x1400024a4
   140002458:	e8 f3 fd ff ff       	call   0x140002250
   14000245d:	85 c0                	test   %eax,%eax
   14000245f:	74 43                	je     0x1400024a4
   140002461:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002465:	48 01 c1             	add    %rax,%rcx
   140002468:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000246c:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
   140002471:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   140002475:	85 c0                	test   %eax,%eax
   140002477:	74 28                	je     0x1400024a1
   140002479:	83 e8 01             	sub    $0x1,%eax
   14000247c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002480:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
   140002485:	0f 1f 00             	nopl   (%rax)
   140002488:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
   14000248d:	74 09                	je     0x140002498
   14000248f:	4d 85 c9             	test   %r9,%r9
   140002492:	74 10                	je     0x1400024a4
   140002494:	49 83 e9 01          	sub    $0x1,%r9
   140002498:	49 83 c0 28          	add    $0x28,%r8
   14000249c:	49 39 c0             	cmp    %rax,%r8
   14000249f:	75 e7                	jne    0x140002488
   1400024a1:	45 31 c0             	xor    %r8d,%r8d
   1400024a4:	4c 89 c0             	mov    %r8,%rax
   1400024a7:	48 83 c4 28          	add    $0x28,%rsp
   1400024ab:	c3                   	ret    
   1400024ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400024b0:	48 83 ec 28          	sub    $0x28,%rsp
   1400024b4:	48 8b 0d a5 1e 00 00 	mov    0x1ea5(%rip),%rcx        # 0x140004360
   1400024bb:	45 31 c0             	xor    %r8d,%r8d
   1400024be:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400024c3:	75 0b                	jne    0x1400024d0
   1400024c5:	e8 86 fd ff ff       	call   0x140002250
   1400024ca:	85 c0                	test   %eax,%eax
   1400024cc:	4c 0f 45 c1          	cmovne %rcx,%r8
   1400024d0:	4c 89 c0             	mov    %r8,%rax
   1400024d3:	48 83 c4 28          	add    $0x28,%rsp
   1400024d7:	c3                   	ret    
   1400024d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400024df:	00 
   1400024e0:	48 83 ec 28          	sub    $0x28,%rsp
   1400024e4:	4c 8b 0d 75 1e 00 00 	mov    0x1e75(%rip),%r9        # 0x140004360
   1400024eb:	31 c0                	xor    %eax,%eax
   1400024ed:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
   1400024f3:	49 89 c8             	mov    %rcx,%r8
   1400024f6:	75 57                	jne    0x14000254f
   1400024f8:	4c 89 c9             	mov    %r9,%rcx
   1400024fb:	e8 50 fd ff ff       	call   0x140002250
   140002500:	85 c0                	test   %eax,%eax
   140002502:	74 4b                	je     0x14000254f
   140002504:	49 63 41 3c          	movslq 0x3c(%r9),%rax
   140002508:	4c 89 c1             	mov    %r8,%rcx
   14000250b:	4c 29 c9             	sub    %r9,%rcx
   14000250e:	49 01 c1             	add    %rax,%r9
   140002511:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
   140002516:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
   14000251b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
   140002520:	85 d2                	test   %edx,%edx
   140002522:	74 29                	je     0x14000254d
   140002524:	83 ea 01             	sub    $0x1,%edx
   140002527:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000252b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002530:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002534:	4c 89 c2             	mov    %r8,%rdx
   140002537:	4c 39 c1             	cmp    %r8,%rcx
   14000253a:	72 08                	jb     0x140002544
   14000253c:	03 50 08             	add    0x8(%rax),%edx
   14000253f:	48 39 d1             	cmp    %rdx,%rcx
   140002542:	72 14                	jb     0x140002558
   140002544:	48 83 c0 28          	add    $0x28,%rax
   140002548:	4c 39 c8             	cmp    %r9,%rax
   14000254b:	75 e3                	jne    0x140002530
   14000254d:	31 c0                	xor    %eax,%eax
   14000254f:	48 83 c4 28          	add    $0x28,%rsp
   140002553:	c3                   	ret    
   140002554:	0f 1f 40 00          	nopl   0x0(%rax)
   140002558:	8b 40 24             	mov    0x24(%rax),%eax
   14000255b:	f7 d0                	not    %eax
   14000255d:	c1 e8 1f             	shr    $0x1f,%eax
   140002560:	48 83 c4 28          	add    $0x28,%rsp
   140002564:	c3                   	ret    
   140002565:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000256c:	00 00 00 00 
   140002570:	48 83 ec 28          	sub    $0x28,%rsp
   140002574:	4c 8b 1d e5 1d 00 00 	mov    0x1de5(%rip),%r11        # 0x140004360
   14000257b:	45 31 c9             	xor    %r9d,%r9d
   14000257e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002584:	41 89 c8             	mov    %ecx,%r8d
   140002587:	75 5f                	jne    0x1400025e8
   140002589:	4c 89 d9             	mov    %r11,%rcx
   14000258c:	e8 bf fc ff ff       	call   0x140002250
   140002591:	85 c0                	test   %eax,%eax
   140002593:	74 53                	je     0x1400025e8
   140002595:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
   140002599:	4c 01 d9             	add    %r11,%rcx
   14000259c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
   1400025a2:	85 c0                	test   %eax,%eax
   1400025a4:	74 42                	je     0x1400025e8
   1400025a6:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
   1400025aa:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
   1400025af:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   1400025b3:	85 c9                	test   %ecx,%ecx
   1400025b5:	74 31                	je     0x1400025e8
   1400025b7:	83 e9 01             	sub    $0x1,%ecx
   1400025ba:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400025be:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
   1400025c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400025c8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400025cc:	4c 89 c9             	mov    %r9,%rcx
   1400025cf:	4c 39 c8             	cmp    %r9,%rax
   1400025d2:	72 08                	jb     0x1400025dc
   1400025d4:	03 4a 08             	add    0x8(%rdx),%ecx
   1400025d7:	48 39 c8             	cmp    %rcx,%rax
   1400025da:	72 14                	jb     0x1400025f0
   1400025dc:	48 83 c2 28          	add    $0x28,%rdx
   1400025e0:	4c 39 d2             	cmp    %r10,%rdx
   1400025e3:	75 e3                	jne    0x1400025c8
   1400025e5:	45 31 c9             	xor    %r9d,%r9d
   1400025e8:	4c 89 c8             	mov    %r9,%rax
   1400025eb:	48 83 c4 28          	add    $0x28,%rsp
   1400025ef:	c3                   	ret    
   1400025f0:	4c 01 d8             	add    %r11,%rax
   1400025f3:	eb 0b                	jmp    0x140002600
   1400025f5:	0f 1f 00             	nopl   (%rax)
   1400025f8:	41 83 e8 01          	sub    $0x1,%r8d
   1400025fc:	48 83 c0 14          	add    $0x14,%rax
   140002600:	8b 48 04             	mov    0x4(%rax),%ecx
   140002603:	85 c9                	test   %ecx,%ecx
   140002605:	75 07                	jne    0x14000260e
   140002607:	8b 50 0c             	mov    0xc(%rax),%edx
   14000260a:	85 d2                	test   %edx,%edx
   14000260c:	74 d7                	je     0x1400025e5
   14000260e:	45 85 c0             	test   %r8d,%r8d
   140002611:	7f e5                	jg     0x1400025f8
   140002613:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002617:	4d 01 d9             	add    %r11,%r9
   14000261a:	4c 89 c8             	mov    %r9,%rax
   14000261d:	48 83 c4 28          	add    $0x28,%rsp
   140002621:	c3                   	ret    
   140002622:	90                   	nop
   140002623:	90                   	nop
   140002624:	90                   	nop
   140002625:	90                   	nop
   140002626:	90                   	nop
   140002627:	90                   	nop
   140002628:	90                   	nop
   140002629:	90                   	nop
   14000262a:	90                   	nop
   14000262b:	90                   	nop
   14000262c:	90                   	nop
   14000262d:	90                   	nop
   14000262e:	90                   	nop
   14000262f:	90                   	nop
   140002630:	51                   	push   %rcx
   140002631:	50                   	push   %rax
   140002632:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002638:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000263d:	72 19                	jb     0x140002658
   14000263f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002646:	48 83 09 00          	orq    $0x0,(%rcx)
   14000264a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002650:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002656:	77 e7                	ja     0x14000263f
   140002658:	48 29 c1             	sub    %rax,%rcx
   14000265b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000265f:	58                   	pop    %rax
   140002660:	59                   	pop    %rcx
   140002661:	c3                   	ret    
   140002662:	90                   	nop
   140002663:	90                   	nop
   140002664:	90                   	nop
   140002665:	90                   	nop
   140002666:	90                   	nop
   140002667:	90                   	nop
   140002668:	90                   	nop
   140002669:	90                   	nop
   14000266a:	90                   	nop
   14000266b:	90                   	nop
   14000266c:	90                   	nop
   14000266d:	90                   	nop
   14000266e:	90                   	nop
   14000266f:	90                   	nop
   140002670:	ff 25 26 5c 00 00    	jmp    *0x5c26(%rip)        # 0x14000829c
   140002676:	90                   	nop
   140002677:	90                   	nop
   140002678:	ff 25 16 5c 00 00    	jmp    *0x5c16(%rip)        # 0x140008294
   14000267e:	90                   	nop
   14000267f:	90                   	nop
   140002680:	ff 25 06 5c 00 00    	jmp    *0x5c06(%rip)        # 0x14000828c
   140002686:	90                   	nop
   140002687:	90                   	nop
   140002688:	ff 25 f6 5b 00 00    	jmp    *0x5bf6(%rip)        # 0x140008284
   14000268e:	90                   	nop
   14000268f:	90                   	nop
   140002690:	ff 25 e6 5b 00 00    	jmp    *0x5be6(%rip)        # 0x14000827c
   140002696:	90                   	nop
   140002697:	90                   	nop
   140002698:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 0x140008274
   14000269e:	90                   	nop
   14000269f:	90                   	nop
   1400026a0:	ff 25 c6 5b 00 00    	jmp    *0x5bc6(%rip)        # 0x14000826c
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop
   1400026a8:	ff 25 b6 5b 00 00    	jmp    *0x5bb6(%rip)        # 0x140008264
   1400026ae:	90                   	nop
   1400026af:	90                   	nop
   1400026b0:	ff 25 a6 5b 00 00    	jmp    *0x5ba6(%rip)        # 0x14000825c
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop
   1400026b8:	ff 25 96 5b 00 00    	jmp    *0x5b96(%rip)        # 0x140008254
   1400026be:	90                   	nop
   1400026bf:	90                   	nop
   1400026c0:	ff 25 86 5b 00 00    	jmp    *0x5b86(%rip)        # 0x14000824c
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop
   1400026c8:	ff 25 76 5b 00 00    	jmp    *0x5b76(%rip)        # 0x140008244
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop
   1400026d0:	ff 25 66 5b 00 00    	jmp    *0x5b66(%rip)        # 0x14000823c
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop
   1400026d8:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 0x140008234
   1400026de:	90                   	nop
   1400026df:	90                   	nop
   1400026e0:	ff 25 36 5b 00 00    	jmp    *0x5b36(%rip)        # 0x14000821c
   1400026e6:	90                   	nop
   1400026e7:	90                   	nop
   1400026e8:	ff 25 26 5b 00 00    	jmp    *0x5b26(%rip)        # 0x140008214
   1400026ee:	90                   	nop
   1400026ef:	90                   	nop
   1400026f0:	ff 25 0e 5b 00 00    	jmp    *0x5b0e(%rip)        # 0x140008204
   1400026f6:	90                   	nop
   1400026f7:	90                   	nop
   1400026f8:	ff 25 fe 5a 00 00    	jmp    *0x5afe(%rip)        # 0x1400081fc
   1400026fe:	90                   	nop
   1400026ff:	90                   	nop
   140002700:	ff 25 ee 5a 00 00    	jmp    *0x5aee(%rip)        # 0x1400081f4
   140002706:	90                   	nop
   140002707:	90                   	nop
   140002708:	ff 25 ce 5a 00 00    	jmp    *0x5ace(%rip)        # 0x1400081dc
   14000270e:	90                   	nop
   14000270f:	90                   	nop
   140002710:	ff 25 be 5a 00 00    	jmp    *0x5abe(%rip)        # 0x1400081d4
   140002716:	90                   	nop
   140002717:	90                   	nop
   140002718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000271f:	00 
   140002720:	53                   	push   %rbx
   140002721:	48 83 ec 20          	sub    $0x20,%rsp
   140002725:	89 cb                	mov    %ecx,%ebx
   140002727:	e8 64 00 00 00       	call   0x140002790
   14000272c:	89 d9                	mov    %ebx,%ecx
   14000272e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002732:	48 c1 e2 04          	shl    $0x4,%rdx
   140002736:	48 01 d0             	add    %rdx,%rax
   140002739:	48 83 c4 20          	add    $0x20,%rsp
   14000273d:	5b                   	pop    %rbx
   14000273e:	c3                   	ret    
   14000273f:	90                   	nop
   140002740:	48 8b 05 29 4a 00 00 	mov    0x4a29(%rip),%rax        # 0x140007170
   140002747:	c3                   	ret    
   140002748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000274f:	00 
   140002750:	48 89 c8             	mov    %rcx,%rax
   140002753:	48 87 05 16 4a 00 00 	xchg   %rax,0x4a16(%rip)        # 0x140007170
   14000275a:	c3                   	ret    
   14000275b:	90                   	nop
   14000275c:	90                   	nop
   14000275d:	90                   	nop
   14000275e:	90                   	nop
   14000275f:	90                   	nop
   140002760:	48 8b 05 19 1c 00 00 	mov    0x1c19(%rip),%rax        # 0x140004380
   140002767:	48 8b 00             	mov    (%rax),%rax
   14000276a:	c3                   	ret    
   14000276b:	90                   	nop
   14000276c:	90                   	nop
   14000276d:	90                   	nop
   14000276e:	90                   	nop
   14000276f:	90                   	nop
   140002770:	48 8b 05 19 1c 00 00 	mov    0x1c19(%rip),%rax        # 0x140004390
   140002777:	48 8b 00             	mov    (%rax),%rax
   14000277a:	c3                   	ret    
   14000277b:	90                   	nop
   14000277c:	90                   	nop
   14000277d:	90                   	nop
   14000277e:	90                   	nop
   14000277f:	90                   	nop
   140002780:	48 8b 05 19 1c 00 00 	mov    0x1c19(%rip),%rax        # 0x1400043a0
   140002787:	48 8b 00             	mov    (%rax),%rax
   14000278a:	c3                   	ret    
   14000278b:	90                   	nop
   14000278c:	90                   	nop
   14000278d:	90                   	nop
   14000278e:	90                   	nop
   14000278f:	90                   	nop
   140002790:	ff 25 56 5a 00 00    	jmp    *0x5a56(%rip)        # 0x1400081ec
   140002796:	90                   	nop
   140002797:	90                   	nop
   140002798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000279f:	00 
   1400027a0:	ff 25 1e 5a 00 00    	jmp    *0x5a1e(%rip)        # 0x1400081c4
   1400027a6:	90                   	nop
   1400027a7:	90                   	nop
   1400027a8:	ff 25 0e 5a 00 00    	jmp    *0x5a0e(%rip)        # 0x1400081bc
   1400027ae:	90                   	nop
   1400027af:	90                   	nop
   1400027b0:	ff 25 fe 59 00 00    	jmp    *0x59fe(%rip)        # 0x1400081b4
   1400027b6:	90                   	nop
   1400027b7:	90                   	nop
   1400027b8:	ff 25 ee 59 00 00    	jmp    *0x59ee(%rip)        # 0x1400081ac
   1400027be:	90                   	nop
   1400027bf:	90                   	nop
   1400027c0:	ff 25 de 59 00 00    	jmp    *0x59de(%rip)        # 0x1400081a4
   1400027c6:	90                   	nop
   1400027c7:	90                   	nop
   1400027c8:	ff 25 ce 59 00 00    	jmp    *0x59ce(%rip)        # 0x14000819c
   1400027ce:	90                   	nop
   1400027cf:	90                   	nop
   1400027d0:	ff 25 be 59 00 00    	jmp    *0x59be(%rip)        # 0x140008194
   1400027d6:	90                   	nop
   1400027d7:	90                   	nop
   1400027d8:	ff 25 ae 59 00 00    	jmp    *0x59ae(%rip)        # 0x14000818c
   1400027de:	90                   	nop
   1400027df:	90                   	nop
   1400027e0:	ff 25 9e 59 00 00    	jmp    *0x599e(%rip)        # 0x140008184
   1400027e6:	90                   	nop
   1400027e7:	90                   	nop
   1400027e8:	ff 25 8e 59 00 00    	jmp    *0x598e(%rip)        # 0x14000817c
   1400027ee:	90                   	nop
   1400027ef:	90                   	nop
   1400027f0:	ff 25 7e 59 00 00    	jmp    *0x597e(%rip)        # 0x140008174
   1400027f6:	90                   	nop
   1400027f7:	90                   	nop
   1400027f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400027ff:	00 
   140002800:	e9 2b ed ff ff       	jmp    0x140001530
   140002805:	90                   	nop
   140002806:	90                   	nop
   140002807:	90                   	nop
   140002808:	90                   	nop
   140002809:	90                   	nop
   14000280a:	90                   	nop
   14000280b:	90                   	nop
   14000280c:	90                   	nop
   14000280d:	90                   	nop
   14000280e:	90                   	nop
   14000280f:	90                   	nop
   140002810:	ff                   	(bad)  
   140002811:	ff                   	(bad)  
   140002812:	ff                   	(bad)  
   140002813:	ff                   	(bad)  
   140002814:	ff                   	(bad)  
   140002815:	ff                   	(bad)  
   140002816:	ff                   	(bad)  
   140002817:	ff 00                	incl   (%rax)
   140002819:	28 00                	sub    %al,(%rax)
   14000281b:	40 01 00             	rex add %eax,(%rax)
	...
   140002826:	00 00                	add    %al,(%rax)
   140002828:	ff                   	(bad)  
   140002829:	ff                   	(bad)  
   14000282a:	ff                   	(bad)  
   14000282b:	ff                   	(bad)  
   14000282c:	ff                   	(bad)  
   14000282d:	ff                   	(bad)  
   14000282e:	ff                   	(bad)  
   14000282f:	ff 00                	incl   (%rax)
   140002831:	00 00                	add    %al,(%rax)
   140002833:	00 00                	add    %al,(%rax)
   140002835:	00 00                	add    %al,(%rax)
	...
