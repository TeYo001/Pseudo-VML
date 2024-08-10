
test/hello64_small.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 88 00 00 	mov    0x8815(%rip),%rax        # 140009830 <.refptr.mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 88 00 00 	mov    0x8816(%rip),%rax        # 140009840 <.refptr.mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 88 00 00 	mov    0x8819(%rip),%rax        # 140009850 <.refptr.mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 dc 87 00 00 	mov    0x87dc(%rip),%rax        # 140009820 <.refptr.mingw_initcharmax>
   140001044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000104a:	48 8b 05 8f 86 00 00 	mov    0x868f(%rip),%rax        # 1400096e0 <.refptr.__image_base__>
   140001051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001056:	75 0f                	jne    140001067 <pre_c_init+0x57>
   140001058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000105c:	48 01 d0             	add    %rdx,%rax
   14000105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001065:	74 69                	je     1400010d0 <pre_c_init+0xc0>
   140001067:	48 8b 05 a2 87 00 00 	mov    0x87a2(%rip),%rax        # 140009810 <.refptr.mingw_app_type>
   14000106e:	89 0d 98 af 00 00    	mov    %ecx,0xaf98(%rip)        # 14000c00c <managedapp>
   140001074:	8b 00                	mov    (%rax),%eax
   140001076:	85 c0                	test   %eax,%eax
   140001078:	75 46                	jne    1400010c0 <pre_c_init+0xb0>
   14000107a:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000107f:	e8 0c 62 00 00       	call   140007290 <__set_app_type>
   140001084:	e8 97 68 00 00       	call   140007920 <__p__fmode>
   140001089:	48 8b 15 40 87 00 00 	mov    0x8740(%rip),%rdx        # 1400097d0 <.refptr._fmode>
   140001090:	8b 12                	mov    (%rdx),%edx
   140001092:	89 10                	mov    %edx,(%rax)
   140001094:	e8 77 68 00 00       	call   140007910 <__p__commode>
   140001099:	48 8b 15 10 87 00 00 	mov    0x8710(%rip),%rdx        # 1400097b0 <.refptr._commode>
   1400010a0:	8b 12                	mov    (%rdx),%edx
   1400010a2:	89 10                	mov    %edx,(%rax)
   1400010a4:	e8 d7 05 00 00       	call   140001680 <_setargv>
   1400010a9:	48 8b 05 e0 85 00 00 	mov    0x85e0(%rip),%rax        # 140009690 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010b0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010b3:	74 53                	je     140001108 <pre_c_init+0xf8>
   1400010b5:	31 c0                	xor    %eax,%eax
   1400010b7:	48 83 c4 28          	add    $0x28,%rsp
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400010c5:	e8 c6 61 00 00       	call   140007290 <__set_app_type>
   1400010ca:	eb b8                	jmp    140001084 <pre_c_init+0x74>
   1400010cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010d9:	74 45                	je     140001120 <pre_c_init+0x110>
   1400010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010e0:	75 85                	jne    140001067 <pre_c_init+0x57>
   1400010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010e9:	0f 86 78 ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   1400010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010f5:	31 c9                	xor    %ecx,%ecx
   1400010f7:	85 d2                	test   %edx,%edx
   1400010f9:	0f 95 c1             	setne  %cl
   1400010fc:	e9 66 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   140001101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001108:	48 8d 0d 51 06 00 00 	lea    0x651(%rip),%rcx        # 140001760 <_matherr>
   14000110f:	e8 2c 0d 00 00       	call   140001e40 <__mingw_setusermatherr>
   140001114:	31 c0                	xor    %eax,%eax
   140001116:	48 83 c4 28          	add    $0x28,%rsp
   14000111a:	c3                   	ret    
   14000111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001124:	0f 86 3d ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   14000112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001131:	31 c9                	xor    %ecx,%ecx
   140001133:	45 85 c0             	test   %r8d,%r8d
   140001136:	0f 95 c1             	setne  %cl
   140001139:	e9 29 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   14000113e:	66 90                	xchg   %ax,%ax

0000000140001140 <pre_cpp_init>:
   140001140:	48 83 ec 38          	sub    $0x38,%rsp
   140001144:	48 8b 05 b5 86 00 00 	mov    0x86b5(%rip),%rax        # 140009800 <.refptr._newmode>
   14000114b:	4c 8d 05 c6 ae 00 00 	lea    0xaec6(%rip),%r8        # 14000c018 <envp>
   140001152:	48 8d 15 c7 ae 00 00 	lea    0xaec7(%rip),%rdx        # 14000c020 <argv>
   140001159:	48 8d 0d c8 ae 00 00 	lea    0xaec8(%rip),%rcx        # 14000c028 <argc>
   140001160:	8b 00                	mov    (%rax),%eax
   140001162:	89 05 9c ae 00 00    	mov    %eax,0xae9c(%rip)        # 14000c004 <startinfo>
   140001168:	48 8d 05 95 ae 00 00 	lea    0xae95(%rip),%rax        # 14000c004 <startinfo>
   14000116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001174:	48 8b 05 45 86 00 00 	mov    0x8645(%rip),%rax        # 1400097c0 <.refptr._dowildcard>
   14000117b:	44 8b 08             	mov    (%rax),%r9d
   14000117e:	e8 1d 61 00 00       	call   1400072a0 <__getmainargs>
   140001183:	90                   	nop
   140001184:	48 83 c4 38          	add    $0x38,%rsp
   140001188:	c3                   	ret    
   140001189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001190 <__tmainCRTStartup>:
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
   1400011b1:	48 8b 3d 58 86 00 00 	mov    0x8658(%rip),%rdi        # 140009810 <.refptr.mingw_app_type>
   1400011b8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011bb:	45 85 c9             	test   %r9d,%r9d
   1400011be:	0f 85 ac 02 00 00    	jne    140001470 <__tmainCRTStartup+0x2e0>
   1400011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011cb:	00 00 
   1400011cd:	48 8b 1d 6c 85 00 00 	mov    0x856c(%rip),%rbx        # 140009740 <.refptr.__native_startup_lock>
   1400011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011d8:	31 ed                	xor    %ebp,%ebp
   1400011da:	4c 8b 25 3b c0 00 00 	mov    0xc03b(%rip),%r12        # 14000d21c <__imp_Sleep>
   1400011e1:	eb 16                	jmp    1400011f9 <__tmainCRTStartup+0x69>
   1400011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011e8:	48 39 c6             	cmp    %rax,%rsi
   1400011eb:	0f 84 1f 02 00 00    	je     140001410 <__tmainCRTStartup+0x280>
   1400011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011f6:	41 ff d4             	call   *%r12
   1400011f9:	48 89 e8             	mov    %rbp,%rax
   1400011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001201:	48 85 c0             	test   %rax,%rax
   140001204:	75 e2                	jne    1400011e8 <__tmainCRTStartup+0x58>
   140001206:	48 8b 35 43 85 00 00 	mov    0x8543(%rip),%rsi        # 140009750 <.refptr.__native_startup_state>
   14000120d:	31 ed                	xor    %ebp,%ebp
   14000120f:	8b 06                	mov    (%rsi),%eax
   140001211:	83 f8 01             	cmp    $0x1,%eax
   140001214:	0f 84 0d 02 00 00    	je     140001427 <__tmainCRTStartup+0x297>
   14000121a:	8b 06                	mov    (%rsi),%eax
   14000121c:	85 c0                	test   %eax,%eax
   14000121e:	0f 84 7c 02 00 00    	je     1400014a0 <__tmainCRTStartup+0x310>
   140001224:	c7 05 da ad 00 00 01 	movl   $0x1,0xadda(%rip)        # 14000c008 <has_cctor>
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    (%rsi),%eax
   140001230:	83 f8 01             	cmp    $0x1,%eax
   140001233:	0f 84 03 02 00 00    	je     14000143c <__tmainCRTStartup+0x2ac>
   140001239:	85 ed                	test   %ebp,%ebp
   14000123b:	0f 84 1c 02 00 00    	je     14000145d <__tmainCRTStartup+0x2cd>
   140001241:	48 8b 05 88 84 00 00 	mov    0x8488(%rip),%rax        # 1400096d0 <.refptr.__dyn_tls_init_callback>
   140001248:	48 8b 00             	mov    (%rax),%rax
   14000124b:	48 85 c0             	test   %rax,%rax
   14000124e:	74 0c                	je     14000125c <__tmainCRTStartup+0xcc>
   140001250:	45 31 c0             	xor    %r8d,%r8d
   140001253:	ba 02 00 00 00       	mov    $0x2,%edx
   140001258:	31 c9                	xor    %ecx,%ecx
   14000125a:	ff d0                	call   *%rax
   14000125c:	e8 9f 08 00 00       	call   140001b00 <_pei386_runtime_relocator>
   140001261:	48 8d 0d e8 0b 00 00 	lea    0xbe8(%rip),%rcx        # 140001e50 <_gnu_exception_handler>
   140001268:	ff 15 a6 bf 00 00    	call   *0xbfa6(%rip)        # 14000d214 <__imp_SetUnhandledExceptionFilter>
   14000126e:	48 8b 15 bb 84 00 00 	mov    0x84bb(%rip),%rdx        # 140009730 <.refptr.__mingw_oldexcpt_handler>
   140001275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000127c:	48 89 02             	mov    %rax,(%rdx)
   14000127f:	e8 9c 65 00 00       	call   140007820 <_set_invalid_parameter_handler>
   140001284:	e8 d7 05 00 00       	call   140001860 <_fpreset>
   140001289:	48 8b 05 50 84 00 00 	mov    0x8450(%rip),%rax        # 1400096e0 <.refptr.__image_base__>
   140001290:	48 89 05 f1 b8 00 00 	mov    %rax,0xb8f1(%rip)        # 14000cb88 <__mingw_winmain_hInstance>
   140001297:	e8 64 66 00 00       	call   140007900 <__p__acmdln>
   14000129c:	31 c9                	xor    %ecx,%ecx
   14000129e:	48 8b 00             	mov    (%rax),%rax
   1400012a1:	48 85 c0             	test   %rax,%rax
   1400012a4:	75 1c                	jne    1400012c2 <__tmainCRTStartup+0x132>
   1400012a6:	eb 58                	jmp    140001300 <__tmainCRTStartup+0x170>
   1400012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400012af:	00 
   1400012b0:	84 d2                	test   %dl,%dl
   1400012b2:	74 45                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012b4:	83 e1 01             	and    $0x1,%ecx
   1400012b7:	74 27                	je     1400012e0 <__tmainCRTStartup+0x150>
   1400012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012be:	48 83 c0 01          	add    $0x1,%rax
   1400012c2:	0f b6 10             	movzbl (%rax),%edx
   1400012c5:	80 fa 20             	cmp    $0x20,%dl
   1400012c8:	7e e6                	jle    1400012b0 <__tmainCRTStartup+0x120>
   1400012ca:	41 89 c8             	mov    %ecx,%r8d
   1400012cd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012d1:	80 fa 22             	cmp    $0x22,%dl
   1400012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012d8:	eb e4                	jmp    1400012be <__tmainCRTStartup+0x12e>
   1400012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 15                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012ec:	48 83 c0 01          	add    $0x1,%rax
   1400012f0:	84 d2                	test   %dl,%dl
   1400012f2:	74 05                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012f4:	80 fa 20             	cmp    $0x20,%dl
   1400012f7:	7e ef                	jle    1400012e8 <__tmainCRTStartup+0x158>
   1400012f9:	48 89 05 80 b8 00 00 	mov    %rax,0xb880(%rip)        # 14000cb80 <__mingw_winmain_lpCmdLine>
   140001300:	44 8b 07             	mov    (%rdi),%r8d
   140001303:	45 85 c0             	test   %r8d,%r8d
   140001306:	74 16                	je     14000131e <__tmainCRTStartup+0x18e>
   140001308:	b8 0a 00 00 00       	mov    $0xa,%eax
   14000130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001312:	0f 85 e8 00 00 00    	jne    140001400 <__tmainCRTStartup+0x270>
   140001318:	89 05 e2 6c 00 00    	mov    %eax,0x6ce2(%rip)        # 140008000 <__data_start__>
   14000131e:	8b 1d 04 ad 00 00    	mov    0xad04(%rip),%ebx        # 14000c028 <argc>
   140001324:	44 8d 63 01          	lea    0x1(%rbx),%r12d
   140001328:	4d 63 e4             	movslq %r12d,%r12
   14000132b:	49 c1 e4 03          	shl    $0x3,%r12
   14000132f:	4c 89 e1             	mov    %r12,%rcx
   140001332:	e8 e1 5e 00 00       	call   140007218 <malloc>
   140001337:	4c 8b 2d e2 ac 00 00 	mov    0xace2(%rip),%r13        # 14000c020 <argv>
   14000133e:	48 89 c7             	mov    %rax,%rdi
   140001341:	85 db                	test   %ebx,%ebx
   140001343:	7e 46                	jle    14000138b <__tmainCRTStartup+0x1fb>
   140001345:	8d 6b ff             	lea    -0x1(%rbx),%ebp
   140001348:	31 db                	xor    %ebx,%ebx
   14000134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001355:	e8 9e 5e 00 00       	call   1400071f8 <strlen>
   14000135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000135e:	48 89 f1             	mov    %rsi,%rcx
   140001361:	e8 b2 5e 00 00       	call   140007218 <malloc>
   140001366:	49 89 f0             	mov    %rsi,%r8
   140001369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001372:	48 89 c1             	mov    %rax,%rcx
   140001375:	e8 96 5e 00 00       	call   140007210 <memcpy>
   14000137a:	48 89 d8             	mov    %rbx,%rax
   14000137d:	48 83 c3 01          	add    $0x1,%rbx
   140001381:	48 39 c5             	cmp    %rax,%rbp
   140001384:	75 ca                	jne    140001350 <__tmainCRTStartup+0x1c0>
   140001386:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   14000138b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140001392:	48 89 3d 87 ac 00 00 	mov    %rdi,0xac87(%rip)        # 14000c020 <argv>
   140001399:	e8 b2 02 00 00       	call   140001650 <__main>
   14000139e:	48 8b 05 4b 83 00 00 	mov    0x834b(%rip),%rax        # 1400096f0 <.refptr.__imp___initenv>
   1400013a5:	4c 8b 05 6c ac 00 00 	mov    0xac6c(%rip),%r8        # 14000c018 <envp>
   1400013ac:	8b 0d 76 ac 00 00    	mov    0xac76(%rip),%ecx        # 14000c028 <argc>
   1400013b2:	48 8b 00             	mov    (%rax),%rax
   1400013b5:	4c 89 00             	mov    %r8,(%rax)
   1400013b8:	48 8b 15 61 ac 00 00 	mov    0xac61(%rip),%rdx        # 14000c020 <argv>
   1400013bf:	e8 0c 66 00 00       	call   1400079d0 <main>
   1400013c4:	8b 0d 42 ac 00 00    	mov    0xac42(%rip),%ecx        # 14000c00c <managedapp>
   1400013ca:	89 05 40 ac 00 00    	mov    %eax,0xac40(%rip)        # 14000c010 <mainret>
   1400013d0:	85 c9                	test   %ecx,%ecx
   1400013d2:	0f 84 e6 00 00 00    	je     1400014be <__tmainCRTStartup+0x32e>
   1400013d8:	8b 15 2a ac 00 00    	mov    0xac2a(%rip),%edx        # 14000c008 <has_cctor>
   1400013de:	85 d2                	test   %edx,%edx
   1400013e0:	0f 84 9a 00 00 00    	je     140001480 <__tmainCRTStartup+0x2f0>
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
   140001405:	e9 0e ff ff ff       	jmp    140001318 <__tmainCRTStartup+0x188>
   14000140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001410:	48 8b 35 39 83 00 00 	mov    0x8339(%rip),%rsi        # 140009750 <.refptr.__native_startup_state>
   140001417:	bd 01 00 00 00       	mov    $0x1,%ebp
   14000141c:	8b 06                	mov    (%rsi),%eax
   14000141e:	83 f8 01             	cmp    $0x1,%eax
   140001421:	0f 85 f3 fd ff ff    	jne    14000121a <__tmainCRTStartup+0x8a>
   140001427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000142c:	e8 4f 5e 00 00       	call   140007280 <_amsg_exit>
   140001431:	8b 06                	mov    (%rsi),%eax
   140001433:	83 f8 01             	cmp    $0x1,%eax
   140001436:	0f 85 fd fd ff ff    	jne    140001239 <__tmainCRTStartup+0xa9>
   14000143c:	48 8b 15 3d 83 00 00 	mov    0x833d(%rip),%rdx        # 140009780 <.refptr.__xc_z>
   140001443:	48 8b 0d 26 83 00 00 	mov    0x8326(%rip),%rcx        # 140009770 <.refptr.__xc_a>
   14000144a:	e8 19 5e 00 00       	call   140007268 <_initterm>
   14000144f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001455:	85 ed                	test   %ebp,%ebp
   140001457:	0f 85 e4 fd ff ff    	jne    140001241 <__tmainCRTStartup+0xb1>
   14000145d:	31 c0                	xor    %eax,%eax
   14000145f:	48 87 03             	xchg   %rax,(%rbx)
   140001462:	e9 da fd ff ff       	jmp    140001241 <__tmainCRTStartup+0xb1>
   140001467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000146e:	00 00 
   140001470:	4c 89 c1             	mov    %r8,%rcx
   140001473:	ff 15 73 bd 00 00    	call   *0xbd73(%rip)        # 14000d1ec <__imp_GetStartupInfoA>
   140001479:	e9 46 fd ff ff       	jmp    1400011c4 <__tmainCRTStartup+0x34>
   14000147e:	66 90                	xchg   %ax,%ax
   140001480:	e8 f3 5d 00 00       	call   140007278 <_cexit>
   140001485:	8b 05 85 ab 00 00    	mov    0xab85(%rip),%eax        # 14000c010 <mainret>
   14000148b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001492:	5b                   	pop    %rbx
   140001493:	5e                   	pop    %rsi
   140001494:	5f                   	pop    %rdi
   140001495:	5d                   	pop    %rbp
   140001496:	41 5c                	pop    %r12
   140001498:	41 5d                	pop    %r13
   14000149a:	c3                   	ret    
   14000149b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014a0:	48 8b 15 f9 82 00 00 	mov    0x82f9(%rip),%rdx        # 1400097a0 <.refptr.__xi_z>
   1400014a7:	48 8b 0d e2 82 00 00 	mov    0x82e2(%rip),%rcx        # 140009790 <.refptr.__xi_a>
   1400014ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400014b4:	e8 af 5d 00 00       	call   140007268 <_initterm>
   1400014b9:	e9 70 fd ff ff       	jmp    14000122e <__tmainCRTStartup+0x9e>
   1400014be:	89 c1                	mov    %eax,%ecx
   1400014c0:	e8 83 5d 00 00       	call   140007248 <exit>
   1400014c5:	90                   	nop
   1400014c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014cd:	00 00 00 

00000001400014d0 <WinMainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_startw>:
   1400014d4:	48 8b 05 35 83 00 00 	mov    0x8335(%rip),%rax        # 140009810 <.refptr.mingw_app_type>
   1400014db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014e1:	e8 aa fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_endw>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <mainCRTStartup>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014f4 <.l_start>:
   1400014f4:	48 8b 05 15 83 00 00 	mov    0x8315(%rip),%rax        # 140009810 <.refptr.mingw_app_type>
   1400014fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001501:	e8 8a fc ff ff       	call   140001190 <__tmainCRTStartup>
   140001506:	90                   	nop

0000000140001507 <.l_end>:
   140001507:	90                   	nop
   140001508:	48 83 c4 28          	add    $0x28,%rsp
   14000150c:	c3                   	ret    
   14000150d:	0f 1f 00             	nopl   (%rax)

0000000140001510 <atexit>:
   140001510:	48 83 ec 28          	sub    $0x28,%rsp
   140001514:	e8 47 5d 00 00       	call   140007260 <_onexit>
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

0000000140001530 <__gcc_register_frame>:
   140001530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001540 <__gcc_deregister_frame>
   140001537:	e9 d4 ff ff ff       	jmp    140001510 <atexit>
   14000153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001540 <__gcc_deregister_frame>:
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

0000000140001550 <printf.constprop.0>:
   140001550:	48 83 ec 48          	sub    $0x48,%rsp
   140001554:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001559:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000155e:	4c 8d 44 24 58       	lea    0x58(%rsp),%r8
   140001563:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001568:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   14000156d:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
   140001572:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
   140001577:	ff 15 13 6b 00 00    	call   *0x6b13(%rip)        # 140008090 <__imp___acrt_iob_func>
   14000157d:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   140001582:	48 8d 15 77 7a 00 00 	lea    0x7a77(%rip),%rdx        # 140009000 <.rdata>
   140001589:	48 89 c1             	mov    %rax,%rcx
   14000158c:	e8 ef 10 00 00       	call   140002680 <__mingw_vfprintf>
   140001591:	48 83 c4 48          	add    $0x48,%rsp
   140001595:	c3                   	ret    
   140001596:	90                   	nop
   140001597:	90                   	nop
   140001598:	90                   	nop
   140001599:	90                   	nop
   14000159a:	90                   	nop
   14000159b:	90                   	nop
   14000159c:	90                   	nop
   14000159d:	90                   	nop
   14000159e:	90                   	nop
   14000159f:	90                   	nop

00000001400015a0 <__do_global_dtors>:
   1400015a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400015a4:	48 8b 05 65 6a 00 00 	mov    0x6a65(%rip),%rax        # 140008010 <p.92992>
   1400015ab:	48 8b 00             	mov    (%rax),%rax
   1400015ae:	48 85 c0             	test   %rax,%rax
   1400015b1:	74 22                	je     1400015d5 <__do_global_dtors+0x35>
   1400015b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400015b8:	ff d0                	call   *%rax
   1400015ba:	48 8b 05 4f 6a 00 00 	mov    0x6a4f(%rip),%rax        # 140008010 <p.92992>
   1400015c1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400015c5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400015c9:	48 89 15 40 6a 00 00 	mov    %rdx,0x6a40(%rip)        # 140008010 <p.92992>
   1400015d0:	48 85 c0             	test   %rax,%rax
   1400015d3:	75 e3                	jne    1400015b8 <__do_global_dtors+0x18>
   1400015d5:	48 83 c4 28          	add    $0x28,%rsp
   1400015d9:	c3                   	ret    
   1400015da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015e0 <__do_global_ctors>:
   1400015e0:	56                   	push   %rsi
   1400015e1:	53                   	push   %rbx
   1400015e2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015e6:	48 8b 15 b3 80 00 00 	mov    0x80b3(%rip),%rdx        # 1400096a0 <.refptr.__CTOR_LIST__>
   1400015ed:	48 8b 02             	mov    (%rdx),%rax
   1400015f0:	89 c1                	mov    %eax,%ecx
   1400015f2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015f5:	74 39                	je     140001630 <__do_global_ctors+0x50>
   1400015f7:	85 c9                	test   %ecx,%ecx
   1400015f9:	74 20                	je     14000161b <__do_global_ctors+0x3b>
   1400015fb:	89 c8                	mov    %ecx,%eax
   1400015fd:	83 e9 01             	sub    $0x1,%ecx
   140001600:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001604:	48 29 c8             	sub    %rcx,%rax
   140001607:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000160c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001610:	ff 13                	call   *(%rbx)
   140001612:	48 83 eb 08          	sub    $0x8,%rbx
   140001616:	48 39 f3             	cmp    %rsi,%rbx
   140001619:	75 f5                	jne    140001610 <__do_global_ctors+0x30>
   14000161b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400015a0 <__do_global_dtors>
   140001622:	48 83 c4 28          	add    $0x28,%rsp
   140001626:	5b                   	pop    %rbx
   140001627:	5e                   	pop    %rsi
   140001628:	e9 e3 fe ff ff       	jmp    140001510 <atexit>
   14000162d:	0f 1f 00             	nopl   (%rax)
   140001630:	31 c0                	xor    %eax,%eax
   140001632:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001638:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000163c:	89 c1                	mov    %eax,%ecx
   14000163e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001643:	4c 89 c0             	mov    %r8,%rax
   140001646:	75 f0                	jne    140001638 <__do_global_ctors+0x58>
   140001648:	eb ad                	jmp    1400015f7 <__do_global_ctors+0x17>
   14000164a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001650 <__main>:
   140001650:	8b 05 da a9 00 00    	mov    0xa9da(%rip),%eax        # 14000c030 <initialized>
   140001656:	85 c0                	test   %eax,%eax
   140001658:	74 06                	je     140001660 <__main+0x10>
   14000165a:	c3                   	ret    
   14000165b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001660:	c7 05 c6 a9 00 00 01 	movl   $0x1,0xa9c6(%rip)        # 14000c030 <initialized>
   140001667:	00 00 00 
   14000166a:	e9 71 ff ff ff       	jmp    1400015e0 <__do_global_ctors>
   14000166f:	90                   	nop

0000000140001670 <my_lconv_init>:
   140001670:	48 ff 25 05 bc 00 00 	rex.W jmp *0xbc05(%rip)        # 14000d27c <__imp___lconv_init>
   140001677:	90                   	nop
   140001678:	90                   	nop
   140001679:	90                   	nop
   14000167a:	90                   	nop
   14000167b:	90                   	nop
   14000167c:	90                   	nop
   14000167d:	90                   	nop
   14000167e:	90                   	nop
   14000167f:	90                   	nop

0000000140001680 <_setargv>:
   140001680:	31 c0                	xor    %eax,%eax
   140001682:	c3                   	ret    
   140001683:	90                   	nop
   140001684:	90                   	nop
   140001685:	90                   	nop
   140001686:	90                   	nop
   140001687:	90                   	nop
   140001688:	90                   	nop
   140001689:	90                   	nop
   14000168a:	90                   	nop
   14000168b:	90                   	nop
   14000168c:	90                   	nop
   14000168d:	90                   	nop
   14000168e:	90                   	nop
   14000168f:	90                   	nop

0000000140001690 <__dyn_tls_dtor>:
   140001690:	48 83 ec 28          	sub    $0x28,%rsp
   140001694:	83 fa 03             	cmp    $0x3,%edx
   140001697:	74 17                	je     1400016b0 <__dyn_tls_dtor+0x20>
   140001699:	85 d2                	test   %edx,%edx
   14000169b:	74 13                	je     1400016b0 <__dyn_tls_dtor+0x20>
   14000169d:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016a2:	48 83 c4 28          	add    $0x28,%rsp
   1400016a6:	c3                   	ret    
   1400016a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400016ae:	00 00 
   1400016b0:	e8 cb 0a 00 00       	call   140002180 <__mingw_TLScallback>
   1400016b5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016ba:	48 83 c4 28          	add    $0x28,%rsp
   1400016be:	c3                   	ret    
   1400016bf:	90                   	nop

00000001400016c0 <__dyn_tls_init>:
   1400016c0:	56                   	push   %rsi
   1400016c1:	53                   	push   %rbx
   1400016c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016c6:	48 8b 05 b3 7f 00 00 	mov    0x7fb3(%rip),%rax        # 140009680 <.refptr._CRT_MT>
   1400016cd:	83 38 02             	cmpl   $0x2,(%rax)
   1400016d0:	74 06                	je     1400016d8 <__dyn_tls_init+0x18>
   1400016d2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400016d8:	83 fa 02             	cmp    $0x2,%edx
   1400016db:	74 13                	je     1400016f0 <__dyn_tls_init+0x30>
   1400016dd:	83 fa 01             	cmp    $0x1,%edx
   1400016e0:	74 4e                	je     140001730 <__dyn_tls_init+0x70>
   1400016e2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016e7:	48 83 c4 28          	add    $0x28,%rsp
   1400016eb:	5b                   	pop    %rbx
   1400016ec:	5e                   	pop    %rsi
   1400016ed:	c3                   	ret    
   1400016ee:	66 90                	xchg   %ax,%ax
   1400016f0:	48 8d 1d 69 c9 00 00 	lea    0xc969(%rip),%rbx        # 14000e060 <__xd_z>
   1400016f7:	48 8d 35 62 c9 00 00 	lea    0xc962(%rip),%rsi        # 14000e060 <__xd_z>
   1400016fe:	48 39 de             	cmp    %rbx,%rsi
   140001701:	74 df                	je     1400016e2 <__dyn_tls_init+0x22>
   140001703:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001708:	48 8b 03             	mov    (%rbx),%rax
   14000170b:	48 85 c0             	test   %rax,%rax
   14000170e:	74 02                	je     140001712 <__dyn_tls_init+0x52>
   140001710:	ff d0                	call   *%rax
   140001712:	48 83 c3 08          	add    $0x8,%rbx
   140001716:	48 39 de             	cmp    %rbx,%rsi
   140001719:	75 ed                	jne    140001708 <__dyn_tls_init+0x48>
   14000171b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001720:	48 83 c4 28          	add    $0x28,%rsp
   140001724:	5b                   	pop    %rbx
   140001725:	5e                   	pop    %rsi
   140001726:	c3                   	ret    
   140001727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000172e:	00 00 
   140001730:	e8 4b 0a 00 00       	call   140002180 <__mingw_TLScallback>
   140001735:	b8 01 00 00 00       	mov    $0x1,%eax
   14000173a:	48 83 c4 28          	add    $0x28,%rsp
   14000173e:	5b                   	pop    %rbx
   14000173f:	5e                   	pop    %rsi
   140001740:	c3                   	ret    
   140001741:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001748:	00 00 00 00 
   14000174c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001750 <__tlregdtor>:
   140001750:	31 c0                	xor    %eax,%eax
   140001752:	c3                   	ret    
   140001753:	90                   	nop
   140001754:	90                   	nop
   140001755:	90                   	nop
   140001756:	90                   	nop
   140001757:	90                   	nop
   140001758:	90                   	nop
   140001759:	90                   	nop
   14000175a:	90                   	nop
   14000175b:	90                   	nop
   14000175c:	90                   	nop
   14000175d:	90                   	nop
   14000175e:	90                   	nop
   14000175f:	90                   	nop

0000000140001760 <_matherr>:
   140001760:	56                   	push   %rsi
   140001761:	53                   	push   %rbx
   140001762:	48 83 ec 78          	sub    $0x78,%rsp
   140001766:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000176b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001770:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001776:	83 39 06             	cmpl   $0x6,(%rcx)
   140001779:	0f 87 cd 00 00 00    	ja     14000184c <_matherr+0xec>
   14000177f:	8b 01                	mov    (%rcx),%eax
   140001781:	48 8d 15 1c 7a 00 00 	lea    0x7a1c(%rip),%rdx        # 1400091a4 <.rdata+0x124>
   140001788:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000178c:	48 01 d0             	add    %rdx,%rax
   14000178f:	ff e0                	jmp    *%rax
   140001791:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001798:	48 8d 1d b7 79 00 00 	lea    0x79b7(%rip),%rbx        # 140009156 <.rdata+0xd6>
   14000179f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400017a5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400017aa:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400017af:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400017b3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017b8:	e8 33 60 00 00       	call   1400077f0 <__acrt_iob_func>
   1400017bd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400017c4:	49 89 d8             	mov    %rbx,%r8
   1400017c7:	48 8d 15 aa 79 00 00 	lea    0x79aa(%rip),%rdx        # 140009178 <.rdata+0xf8>
   1400017ce:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400017d4:	48 89 c1             	mov    %rax,%rcx
   1400017d7:	49 89 f1             	mov    %rsi,%r9
   1400017da:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017e0:	e8 5b 5a 00 00       	call   140007240 <fprintf>
   1400017e5:	90                   	nop
   1400017e6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400017eb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017f0:	31 c0                	xor    %eax,%eax
   1400017f2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017f8:	48 83 c4 78          	add    $0x78,%rsp
   1400017fc:	5b                   	pop    %rbx
   1400017fd:	5e                   	pop    %rsi
   1400017fe:	c3                   	ret    
   1400017ff:	90                   	nop
   140001800:	48 8d 1d 89 78 00 00 	lea    0x7889(%rip),%rbx        # 140009090 <.rdata+0x10>
   140001807:	eb 96                	jmp    14000179f <_matherr+0x3f>
   140001809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001810:	48 8d 1d b9 78 00 00 	lea    0x78b9(%rip),%rbx        # 1400090d0 <.rdata+0x50>
   140001817:	eb 86                	jmp    14000179f <_matherr+0x3f>
   140001819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001820:	48 8d 1d 89 78 00 00 	lea    0x7889(%rip),%rbx        # 1400090b0 <.rdata+0x30>
   140001827:	e9 73 ff ff ff       	jmp    14000179f <_matherr+0x3f>
   14000182c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001830:	48 8d 1d e9 78 00 00 	lea    0x78e9(%rip),%rbx        # 140009120 <.rdata+0xa0>
   140001837:	e9 63 ff ff ff       	jmp    14000179f <_matherr+0x3f>
   14000183c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001840:	48 8d 1d b1 78 00 00 	lea    0x78b1(%rip),%rbx        # 1400090f8 <.rdata+0x78>
   140001847:	e9 53 ff ff ff       	jmp    14000179f <_matherr+0x3f>
   14000184c:	48 8d 1d 2d 78 00 00 	lea    0x782d(%rip),%rbx        # 140009080 <.rdata>
   140001853:	e9 47 ff ff ff       	jmp    14000179f <_matherr+0x3f>
   140001858:	90                   	nop
   140001859:	90                   	nop
   14000185a:	90                   	nop
   14000185b:	90                   	nop
   14000185c:	90                   	nop
   14000185d:	90                   	nop
   14000185e:	90                   	nop
   14000185f:	90                   	nop

0000000140001860 <_fpreset>:
   140001860:	db e3                	fninit 
   140001862:	c3                   	ret    
   140001863:	90                   	nop
   140001864:	90                   	nop
   140001865:	90                   	nop
   140001866:	90                   	nop
   140001867:	90                   	nop
   140001868:	90                   	nop
   140001869:	90                   	nop
   14000186a:	90                   	nop
   14000186b:	90                   	nop
   14000186c:	90                   	nop
   14000186d:	90                   	nop
   14000186e:	90                   	nop
   14000186f:	90                   	nop

0000000140001870 <__report_error>:
   140001870:	41 54                	push   %r12
   140001872:	53                   	push   %rbx
   140001873:	48 83 ec 38          	sub    $0x38,%rsp
   140001877:	49 89 cc             	mov    %rcx,%r12
   14000187a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000187f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001884:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001889:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000188e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001893:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001898:	e8 53 5f 00 00       	call   1400077f0 <__acrt_iob_func>
   14000189d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400018a3:	ba 01 00 00 00       	mov    $0x1,%edx
   1400018a8:	48 8d 0d 11 79 00 00 	lea    0x7911(%rip),%rcx        # 1400091c0 <.rdata>
   1400018af:	49 89 c1             	mov    %rax,%r9
   1400018b2:	e8 71 59 00 00       	call   140007228 <fwrite>
   1400018b7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   1400018bc:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400018c1:	e8 2a 5f 00 00       	call   1400077f0 <__acrt_iob_func>
   1400018c6:	4c 89 e2             	mov    %r12,%rdx
   1400018c9:	48 89 c1             	mov    %rax,%rcx
   1400018cc:	49 89 d8             	mov    %rbx,%r8
   1400018cf:	e8 14 59 00 00       	call   1400071e8 <vfprintf>
   1400018d4:	e8 7f 59 00 00       	call   140007258 <abort>
   1400018d9:	90                   	nop
   1400018da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400018e0 <__write_memory.part.0>:
   1400018e0:	41 54                	push   %r12
   1400018e2:	55                   	push   %rbp
   1400018e3:	57                   	push   %rdi
   1400018e4:	56                   	push   %rsi
   1400018e5:	53                   	push   %rbx
   1400018e6:	48 83 ec 50          	sub    $0x50,%rsp
   1400018ea:	48 63 3d b3 a7 00 00 	movslq 0xa7b3(%rip),%rdi        # 14000c0a4 <maxSections>
   1400018f1:	49 89 cc             	mov    %rcx,%r12
   1400018f4:	48 89 d6             	mov    %rdx,%rsi
   1400018f7:	4c 89 c3             	mov    %r8,%rbx
   1400018fa:	85 ff                	test   %edi,%edi
   1400018fc:	0f 8e 8e 01 00 00    	jle    140001a90 <__write_memory.part.0+0x1b0>
   140001902:	48 8b 05 9f a7 00 00 	mov    0xa79f(%rip),%rax        # 14000c0a8 <the_secs>
   140001909:	31 c9                	xor    %ecx,%ecx
   14000190b:	48 83 c0 18          	add    $0x18,%rax
   14000190f:	90                   	nop
   140001910:	48 8b 10             	mov    (%rax),%rdx
   140001913:	49 39 d4             	cmp    %rdx,%r12
   140001916:	72 14                	jb     14000192c <__write_memory.part.0+0x4c>
   140001918:	4c 8b 40 08          	mov    0x8(%rax),%r8
   14000191c:	45 8b 40 08          	mov    0x8(%r8),%r8d
   140001920:	4c 01 c2             	add    %r8,%rdx
   140001923:	49 39 d4             	cmp    %rdx,%r12
   140001926:	0f 82 8b 00 00 00    	jb     1400019b7 <__write_memory.part.0+0xd7>
   14000192c:	83 c1 01             	add    $0x1,%ecx
   14000192f:	48 83 c0 28          	add    $0x28,%rax
   140001933:	39 f9                	cmp    %edi,%ecx
   140001935:	75 d9                	jne    140001910 <__write_memory.part.0+0x30>
   140001937:	4c 89 e1             	mov    %r12,%rcx
   14000193a:	e8 51 0a 00 00       	call   140002390 <__mingw_GetSectionForAddress>
   14000193f:	48 89 c5             	mov    %rax,%rbp
   140001942:	48 85 c0             	test   %rax,%rax
   140001945:	0f 84 a2 01 00 00    	je     140001aed <__write_memory.part.0+0x20d>
   14000194b:	48 8b 05 56 a7 00 00 	mov    0xa756(%rip),%rax        # 14000c0a8 <the_secs>
   140001952:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
   140001956:	48 c1 e7 03          	shl    $0x3,%rdi
   14000195a:	48 01 f8             	add    %rdi,%rax
   14000195d:	48 89 68 20          	mov    %rbp,0x20(%rax)
   140001961:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001967:	e8 54 0b 00 00       	call   1400024c0 <_GetPEImageBase>
   14000196c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
   14000196f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001974:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   14000197a:	48 01 c1             	add    %rax,%rcx
   14000197d:	48 8b 05 24 a7 00 00 	mov    0xa724(%rip),%rax        # 14000c0a8 <the_secs>
   140001984:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
   140001989:	ff 15 a5 b8 00 00    	call   *0xb8a5(%rip)        # 14000d234 <__imp_VirtualQuery>
   14000198f:	48 85 c0             	test   %rax,%rax
   140001992:	0f 84 3a 01 00 00    	je     140001ad2 <__write_memory.part.0+0x1f2>
   140001998:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000199c:	8d 50 c0             	lea    -0x40(%rax),%edx
   14000199f:	83 e2 bf             	and    $0xffffffbf,%edx
   1400019a2:	74 0c                	je     1400019b0 <__write_memory.part.0+0xd0>
   1400019a4:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400019a7:	83 e2 fb             	and    $0xfffffffb,%edx
   1400019aa:	0f 85 90 00 00 00    	jne    140001a40 <__write_memory.part.0+0x160>
   1400019b0:	83 05 ed a6 00 00 01 	addl   $0x1,0xa6ed(%rip)        # 14000c0a4 <maxSections>
   1400019b7:	83 fb 08             	cmp    $0x8,%ebx
   1400019ba:	73 2c                	jae    1400019e8 <__write_memory.part.0+0x108>
   1400019bc:	f6 c3 04             	test   $0x4,%bl
   1400019bf:	0f 85 db 00 00 00    	jne    140001aa0 <__write_memory.part.0+0x1c0>
   1400019c5:	85 db                	test   %ebx,%ebx
   1400019c7:	74 10                	je     1400019d9 <__write_memory.part.0+0xf9>
   1400019c9:	0f b6 06             	movzbl (%rsi),%eax
   1400019cc:	41 88 04 24          	mov    %al,(%r12)
   1400019d0:	f6 c3 02             	test   $0x2,%bl
   1400019d3:	0f 85 e7 00 00 00    	jne    140001ac0 <__write_memory.part.0+0x1e0>
   1400019d9:	48 83 c4 50          	add    $0x50,%rsp
   1400019dd:	5b                   	pop    %rbx
   1400019de:	5e                   	pop    %rsi
   1400019df:	5f                   	pop    %rdi
   1400019e0:	5d                   	pop    %rbp
   1400019e1:	41 5c                	pop    %r12
   1400019e3:	c3                   	ret    
   1400019e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019e8:	48 8b 06             	mov    (%rsi),%rax
   1400019eb:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
   1400019f0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
   1400019f4:	49 89 04 24          	mov    %rax,(%r12)
   1400019f8:	89 d8                	mov    %ebx,%eax
   1400019fa:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
   1400019ff:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
   140001a04:	49 29 cc             	sub    %rcx,%r12
   140001a07:	44 01 e3             	add    %r12d,%ebx
   140001a0a:	4c 29 e6             	sub    %r12,%rsi
   140001a0d:	83 e3 f8             	and    $0xfffffff8,%ebx
   140001a10:	83 fb 08             	cmp    $0x8,%ebx
   140001a13:	72 c4                	jb     1400019d9 <__write_memory.part.0+0xf9>
   140001a15:	83 e3 f8             	and    $0xfffffff8,%ebx
   140001a18:	31 c0                	xor    %eax,%eax
   140001a1a:	89 c2                	mov    %eax,%edx
   140001a1c:	83 c0 08             	add    $0x8,%eax
   140001a1f:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
   140001a23:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
   140001a27:	39 d8                	cmp    %ebx,%eax
   140001a29:	72 ef                	jb     140001a1a <__write_memory.part.0+0x13a>
   140001a2b:	48 83 c4 50          	add    $0x50,%rsp
   140001a2f:	5b                   	pop    %rbx
   140001a30:	5e                   	pop    %rsi
   140001a31:	5f                   	pop    %rdi
   140001a32:	5d                   	pop    %rbp
   140001a33:	41 5c                	pop    %r12
   140001a35:	c3                   	ret    
   140001a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001a3d:	00 00 00 
   140001a40:	83 f8 02             	cmp    $0x2,%eax
   140001a43:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001a48:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001a4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001a53:	b8 40 00 00 00       	mov    $0x40,%eax
   140001a58:	44 0f 45 c0          	cmovne %eax,%r8d
   140001a5c:	48 03 3d 45 a6 00 00 	add    0xa645(%rip),%rdi        # 14000c0a8 <the_secs>
   140001a63:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
   140001a67:	49 89 f9             	mov    %rdi,%r9
   140001a6a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
   140001a6e:	ff 15 b8 b7 00 00    	call   *0xb7b8(%rip)        # 14000d22c <__imp_VirtualProtect>
   140001a74:	85 c0                	test   %eax,%eax
   140001a76:	0f 85 34 ff ff ff    	jne    1400019b0 <__write_memory.part.0+0xd0>
   140001a7c:	ff 15 62 b7 00 00    	call   *0xb762(%rip)        # 14000d1e4 <__imp_GetLastError>
   140001a82:	48 8d 0d af 77 00 00 	lea    0x77af(%rip),%rcx        # 140009238 <.rdata+0x78>
   140001a89:	89 c2                	mov    %eax,%edx
   140001a8b:	e8 e0 fd ff ff       	call   140001870 <__report_error>
   140001a90:	31 ff                	xor    %edi,%edi
   140001a92:	e9 a0 fe ff ff       	jmp    140001937 <__write_memory.part.0+0x57>
   140001a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001a9e:	00 00 
   140001aa0:	8b 06                	mov    (%rsi),%eax
   140001aa2:	89 db                	mov    %ebx,%ebx
   140001aa4:	41 89 04 24          	mov    %eax,(%r12)
   140001aa8:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
   140001aac:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
   140001ab1:	e9 23 ff ff ff       	jmp    1400019d9 <__write_memory.part.0+0xf9>
   140001ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001abd:	00 00 00 
   140001ac0:	89 db                	mov    %ebx,%ebx
   140001ac2:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
   140001ac7:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
   140001acd:	e9 07 ff ff ff       	jmp    1400019d9 <__write_memory.part.0+0xf9>
   140001ad2:	48 8b 05 cf a5 00 00 	mov    0xa5cf(%rip),%rax        # 14000c0a8 <the_secs>
   140001ad9:	8b 55 08             	mov    0x8(%rbp),%edx
   140001adc:	48 8d 0d 1d 77 00 00 	lea    0x771d(%rip),%rcx        # 140009200 <.rdata+0x40>
   140001ae3:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
   140001ae8:	e8 83 fd ff ff       	call   140001870 <__report_error>
   140001aed:	4c 89 e2             	mov    %r12,%rdx
   140001af0:	48 8d 0d e9 76 00 00 	lea    0x76e9(%rip),%rcx        # 1400091e0 <.rdata+0x20>
   140001af7:	e8 74 fd ff ff       	call   140001870 <__report_error>
   140001afc:	90                   	nop
   140001afd:	0f 1f 00             	nopl   (%rax)

0000000140001b00 <_pei386_runtime_relocator>:
   140001b00:	55                   	push   %rbp
   140001b01:	41 57                	push   %r15
   140001b03:	41 56                	push   %r14
   140001b05:	41 55                	push   %r13
   140001b07:	41 54                	push   %r12
   140001b09:	57                   	push   %rdi
   140001b0a:	56                   	push   %rsi
   140001b0b:	53                   	push   %rbx
   140001b0c:	48 83 ec 38          	sub    $0x38,%rsp
   140001b10:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001b17:	00 
   140001b18:	8b 35 82 a5 00 00    	mov    0xa582(%rip),%esi        # 14000c0a0 <was_init.94382>
   140001b1e:	85 f6                	test   %esi,%esi
   140001b20:	74 16                	je     140001b38 <_pei386_runtime_relocator+0x38>
   140001b22:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
   140001b26:	5b                   	pop    %rbx
   140001b27:	5e                   	pop    %rsi
   140001b28:	5f                   	pop    %rdi
   140001b29:	41 5c                	pop    %r12
   140001b2b:	41 5d                	pop    %r13
   140001b2d:	41 5e                	pop    %r14
   140001b2f:	41 5f                	pop    %r15
   140001b31:	5d                   	pop    %rbp
   140001b32:	c3                   	ret    
   140001b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001b38:	c7 05 5e a5 00 00 01 	movl   $0x1,0xa55e(%rip)        # 14000c0a0 <was_init.94382>
   140001b3f:	00 00 00 
   140001b42:	e8 d9 08 00 00       	call   140002420 <__mingw_GetSectionCount>
   140001b47:	48 98                	cltq   
   140001b49:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001b4d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001b54:	00 
   140001b55:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001b59:	e8 e2 0a 00 00       	call   140002640 <___chkstk_ms>
   140001b5e:	4c 8b 25 4b 7b 00 00 	mov    0x7b4b(%rip),%r12        # 1400096b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001b65:	48 8b 1d 54 7b 00 00 	mov    0x7b54(%rip),%rbx        # 1400096c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001b6c:	c7 05 2e a5 00 00 00 	movl   $0x0,0xa52e(%rip)        # 14000c0a4 <maxSections>
   140001b73:	00 00 00 
   140001b76:	48 29 c4             	sub    %rax,%rsp
   140001b79:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001b7e:	48 89 05 23 a5 00 00 	mov    %rax,0xa523(%rip)        # 14000c0a8 <the_secs>
   140001b85:	4c 89 e0             	mov    %r12,%rax
   140001b88:	48 29 d8             	sub    %rbx,%rax
   140001b8b:	48 83 f8 07          	cmp    $0x7,%rax
   140001b8f:	7e 91                	jle    140001b22 <_pei386_runtime_relocator+0x22>
   140001b91:	8b 13                	mov    (%rbx),%edx
   140001b93:	48 83 f8 0b          	cmp    $0xb,%rax
   140001b97:	0f 8f 4b 01 00 00    	jg     140001ce8 <_pei386_runtime_relocator+0x1e8>
   140001b9d:	85 d2                	test   %edx,%edx
   140001b9f:	0f 85 cb 01 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x270>
   140001ba5:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ba8:	85 c0                	test   %eax,%eax
   140001baa:	0f 85 c0 01 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x270>
   140001bb0:	8b 53 08             	mov    0x8(%rbx),%edx
   140001bb3:	83 fa 01             	cmp    $0x1,%edx
   140001bb6:	0f 85 1c 02 00 00    	jne    140001dd8 <_pei386_runtime_relocator+0x2d8>
   140001bbc:	48 83 c3 0c          	add    $0xc,%rbx
   140001bc0:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
   140001bc4:	4c 8b 2d 15 7b 00 00 	mov    0x7b15(%rip),%r13        # 1400096e0 <.refptr.__image_base__>
   140001bcb:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   140001bd2:	ff ff ff 
   140001bd5:	4c 39 e3             	cmp    %r12,%rbx
   140001bd8:	72 3f                	jb     140001c19 <_pei386_runtime_relocator+0x119>
   140001bda:	e9 43 ff ff ff       	jmp    140001b22 <_pei386_runtime_relocator+0x22>
   140001bdf:	90                   	nop
   140001be0:	44 0f b6 01          	movzbl (%rcx),%r8d
   140001be4:	4c 89 ff             	mov    %r15,%rdi
   140001be7:	4d 89 c2             	mov    %r8,%r10
   140001bea:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
   140001bf1:	45 84 c0             	test   %r8b,%r8b
   140001bf4:	4d 0f 48 c2          	cmovs  %r10,%r8
   140001bf8:	49 29 d0             	sub    %rdx,%r8
   140001bfb:	4c 89 fa             	mov    %r15,%rdx
   140001bfe:	4d 01 c8             	add    %r9,%r8
   140001c01:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   140001c05:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001c0b:	e8 d0 fc ff ff       	call   1400018e0 <__write_memory.part.0>
   140001c10:	48 83 c3 0c          	add    $0xc,%rbx
   140001c14:	4c 39 e3             	cmp    %r12,%rbx
   140001c17:	73 77                	jae    140001c90 <_pei386_runtime_relocator+0x190>
   140001c19:	8b 13                	mov    (%rbx),%edx
   140001c1b:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001c1e:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
   140001c23:	4c 01 ea             	add    %r13,%rdx
   140001c26:	4c 01 e9             	add    %r13,%rcx
   140001c29:	4c 8b 0a             	mov    (%rdx),%r9
   140001c2c:	41 83 f8 20          	cmp    $0x20,%r8d
   140001c30:	0f 84 0a 01 00 00    	je     140001d40 <_pei386_runtime_relocator+0x240>
   140001c36:	0f 87 d4 00 00 00    	ja     140001d10 <_pei386_runtime_relocator+0x210>
   140001c3c:	41 83 f8 08          	cmp    $0x8,%r8d
   140001c40:	74 9e                	je     140001be0 <_pei386_runtime_relocator+0xe0>
   140001c42:	41 83 f8 10          	cmp    $0x10,%r8d
   140001c46:	0f 85 75 01 00 00    	jne    140001dc1 <_pei386_runtime_relocator+0x2c1>
   140001c4c:	44 0f b7 01          	movzwl (%rcx),%r8d
   140001c50:	4c 89 ff             	mov    %r15,%rdi
   140001c53:	4d 89 c2             	mov    %r8,%r10
   140001c56:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
   140001c5d:	66 45 85 c0          	test   %r8w,%r8w
   140001c61:	4d 0f 48 c2          	cmovs  %r10,%r8
   140001c65:	48 83 c3 0c          	add    $0xc,%rbx
   140001c69:	49 29 d0             	sub    %rdx,%r8
   140001c6c:	4c 89 fa             	mov    %r15,%rdx
   140001c6f:	4d 01 c8             	add    %r9,%r8
   140001c72:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   140001c76:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140001c7c:	e8 5f fc ff ff       	call   1400018e0 <__write_memory.part.0>
   140001c81:	4c 39 e3             	cmp    %r12,%rbx
   140001c84:	72 93                	jb     140001c19 <_pei386_runtime_relocator+0x119>
   140001c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c8d:	00 00 00 
   140001c90:	8b 05 0e a4 00 00    	mov    0xa40e(%rip),%eax        # 14000c0a4 <maxSections>
   140001c96:	85 c0                	test   %eax,%eax
   140001c98:	0f 8e 84 fe ff ff    	jle    140001b22 <_pei386_runtime_relocator+0x22>
   140001c9e:	4c 8b 25 87 b5 00 00 	mov    0xb587(%rip),%r12        # 14000d22c <__imp_VirtualProtect>
   140001ca5:	31 db                	xor    %ebx,%ebx
   140001ca7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001cae:	00 00 
   140001cb0:	48 8b 05 f1 a3 00 00 	mov    0xa3f1(%rip),%rax        # 14000c0a8 <the_secs>
   140001cb7:	48 01 d8             	add    %rbx,%rax
   140001cba:	44 8b 00             	mov    (%rax),%r8d
   140001cbd:	45 85 c0             	test   %r8d,%r8d
   140001cc0:	74 0e                	je     140001cd0 <_pei386_runtime_relocator+0x1d0>
   140001cc2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001cc6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001cca:	49 89 f9             	mov    %rdi,%r9
   140001ccd:	41 ff d4             	call   *%r12
   140001cd0:	83 c6 01             	add    $0x1,%esi
   140001cd3:	48 83 c3 28          	add    $0x28,%rbx
   140001cd7:	3b 35 c7 a3 00 00    	cmp    0xa3c7(%rip),%esi        # 14000c0a4 <maxSections>
   140001cdd:	7c d1                	jl     140001cb0 <_pei386_runtime_relocator+0x1b0>
   140001cdf:	e9 3e fe ff ff       	jmp    140001b22 <_pei386_runtime_relocator+0x22>
   140001ce4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ce8:	85 d2                	test   %edx,%edx
   140001cea:	0f 85 80 00 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x270>
   140001cf0:	8b 43 04             	mov    0x4(%rbx),%eax
   140001cf3:	89 c7                	mov    %eax,%edi
   140001cf5:	0b 7b 08             	or     0x8(%rbx),%edi
   140001cf8:	0f 85 aa fe ff ff    	jne    140001ba8 <_pei386_runtime_relocator+0xa8>
   140001cfe:	8b 53 0c             	mov    0xc(%rbx),%edx
   140001d01:	48 83 c3 0c          	add    $0xc,%rbx
   140001d05:	e9 93 fe ff ff       	jmp    140001b9d <_pei386_runtime_relocator+0x9d>
   140001d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001d10:	41 83 f8 40          	cmp    $0x40,%r8d
   140001d14:	0f 85 a7 00 00 00    	jne    140001dc1 <_pei386_runtime_relocator+0x2c1>
   140001d1a:	48 8b 01             	mov    (%rcx),%rax
   140001d1d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140001d23:	4c 89 ff             	mov    %r15,%rdi
   140001d26:	48 29 d0             	sub    %rdx,%rax
   140001d29:	4c 89 fa             	mov    %r15,%rdx
   140001d2c:	4c 01 c8             	add    %r9,%rax
   140001d2f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140001d33:	e8 a8 fb ff ff       	call   1400018e0 <__write_memory.part.0>
   140001d38:	e9 d3 fe ff ff       	jmp    140001c10 <_pei386_runtime_relocator+0x110>
   140001d3d:	0f 1f 00             	nopl   (%rax)
   140001d40:	8b 01                	mov    (%rcx),%eax
   140001d42:	4c 89 ff             	mov    %r15,%rdi
   140001d45:	49 89 c0             	mov    %rax,%r8
   140001d48:	4c 09 f0             	or     %r14,%rax
   140001d4b:	45 85 c0             	test   %r8d,%r8d
   140001d4e:	49 0f 49 c0          	cmovns %r8,%rax
   140001d52:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001d58:	48 29 d0             	sub    %rdx,%rax
   140001d5b:	4c 89 fa             	mov    %r15,%rdx
   140001d5e:	4c 01 c8             	add    %r9,%rax
   140001d61:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140001d65:	e8 76 fb ff ff       	call   1400018e0 <__write_memory.part.0>
   140001d6a:	e9 a1 fe ff ff       	jmp    140001c10 <_pei386_runtime_relocator+0x110>
   140001d6f:	90                   	nop
   140001d70:	4c 39 e3             	cmp    %r12,%rbx
   140001d73:	0f 83 a9 fd ff ff    	jae    140001b22 <_pei386_runtime_relocator+0x22>
   140001d79:	49 83 ec 01          	sub    $0x1,%r12
   140001d7d:	4c 8b 2d 5c 79 00 00 	mov    0x795c(%rip),%r13        # 1400096e0 <.refptr.__image_base__>
   140001d84:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   140001d88:	49 29 dc             	sub    %rbx,%r12
   140001d8b:	49 c1 ec 03          	shr    $0x3,%r12
   140001d8f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
   140001d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d98:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001d9b:	8b 03                	mov    (%rbx),%eax
   140001d9d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001da3:	48 89 fa             	mov    %rdi,%rdx
   140001da6:	48 83 c3 08          	add    $0x8,%rbx
   140001daa:	4c 01 e9             	add    %r13,%rcx
   140001dad:	03 01                	add    (%rcx),%eax
   140001daf:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140001db2:	e8 29 fb ff ff       	call   1400018e0 <__write_memory.part.0>
   140001db7:	4c 39 e3             	cmp    %r12,%rbx
   140001dba:	75 dc                	jne    140001d98 <_pei386_runtime_relocator+0x298>
   140001dbc:	e9 cf fe ff ff       	jmp    140001c90 <_pei386_runtime_relocator+0x190>
   140001dc1:	44 89 c2             	mov    %r8d,%edx
   140001dc4:	48 8d 0d cd 74 00 00 	lea    0x74cd(%rip),%rcx        # 140009298 <.rdata+0xd8>
   140001dcb:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   140001dd2:	00 
   140001dd3:	e8 98 fa ff ff       	call   140001870 <__report_error>
   140001dd8:	48 8d 0d 81 74 00 00 	lea    0x7481(%rip),%rcx        # 140009260 <.rdata+0xa0>
   140001ddf:	e8 8c fa ff ff       	call   140001870 <__report_error>
   140001de4:	90                   	nop
   140001de5:	90                   	nop
   140001de6:	90                   	nop
   140001de7:	90                   	nop
   140001de8:	90                   	nop
   140001de9:	90                   	nop
   140001dea:	90                   	nop
   140001deb:	90                   	nop
   140001dec:	90                   	nop
   140001ded:	90                   	nop
   140001dee:	90                   	nop
   140001def:	90                   	nop

0000000140001df0 <__mingw_raise_matherr>:
   140001df0:	48 83 ec 58          	sub    $0x58,%rsp
   140001df4:	48 8b 05 b5 a2 00 00 	mov    0xa2b5(%rip),%rax        # 14000c0b0 <stUserMathErr>
   140001dfb:	48 85 c0             	test   %rax,%rax
   140001dfe:	74 2c                	je     140001e2c <__mingw_raise_matherr+0x3c>
   140001e00:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001e07:	00 00 
   140001e09:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001e0d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001e12:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001e17:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001e1d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001e23:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001e29:	ff d0                	call   *%rax
   140001e2b:	90                   	nop
   140001e2c:	48 83 c4 58          	add    $0x58,%rsp
   140001e30:	c3                   	ret    
   140001e31:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001e38:	00 00 00 00 
   140001e3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001e40 <__mingw_setusermatherr>:
   140001e40:	48 89 0d 69 a2 00 00 	mov    %rcx,0xa269(%rip)        # 14000c0b0 <stUserMathErr>
   140001e47:	e9 3c 54 00 00       	jmp    140007288 <__setusermatherr>
   140001e4c:	90                   	nop
   140001e4d:	90                   	nop
   140001e4e:	90                   	nop
   140001e4f:	90                   	nop

0000000140001e50 <_gnu_exception_handler>:
   140001e50:	41 54                	push   %r12
   140001e52:	48 83 ec 20          	sub    $0x20,%rsp
   140001e56:	48 8b 11             	mov    (%rcx),%rdx
   140001e59:	8b 02                	mov    (%rdx),%eax
   140001e5b:	49 89 cc             	mov    %rcx,%r12
   140001e5e:	89 c1                	mov    %eax,%ecx
   140001e60:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001e66:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001e6c:	0f 84 ce 00 00 00    	je     140001f40 <_gnu_exception_handler+0xf0>
   140001e72:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001e77:	0f 87 aa 00 00 00    	ja     140001f27 <_gnu_exception_handler+0xd7>
   140001e7d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001e82:	76 54                	jbe    140001ed8 <_gnu_exception_handler+0x88>
   140001e84:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001e89:	83 f8 09             	cmp    $0x9,%eax
   140001e8c:	77 3a                	ja     140001ec8 <_gnu_exception_handler+0x78>
   140001e8e:	48 8d 15 3b 74 00 00 	lea    0x743b(%rip),%rdx        # 1400092d0 <.rdata>
   140001e95:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001e99:	48 01 d0             	add    %rdx,%rax
   140001e9c:	ff e0                	jmp    *%rax
   140001e9e:	31 d2                	xor    %edx,%edx
   140001ea0:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ea5:	e8 5e 53 00 00       	call   140007208 <signal>
   140001eaa:	48 83 f8 01          	cmp    $0x1,%rax
   140001eae:	0f 85 b7 00 00 00    	jne    140001f6b <_gnu_exception_handler+0x11b>
   140001eb4:	ba 01 00 00 00       	mov    $0x1,%edx
   140001eb9:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ebe:	e8 45 53 00 00       	call   140007208 <signal>
   140001ec3:	e8 98 f9 ff ff       	call   140001860 <_fpreset>
   140001ec8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001ecd:	48 83 c4 20          	add    $0x20,%rsp
   140001ed1:	41 5c                	pop    %r12
   140001ed3:	c3                   	ret    
   140001ed4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ed8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001edd:	0f 84 a5 00 00 00    	je     140001f88 <_gnu_exception_handler+0x138>
   140001ee3:	76 3b                	jbe    140001f20 <_gnu_exception_handler+0xd0>
   140001ee5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001eea:	74 dc                	je     140001ec8 <_gnu_exception_handler+0x78>
   140001eec:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001ef1:	75 34                	jne    140001f27 <_gnu_exception_handler+0xd7>
   140001ef3:	31 d2                	xor    %edx,%edx
   140001ef5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001efa:	e8 09 53 00 00       	call   140007208 <signal>
   140001eff:	48 83 f8 01          	cmp    $0x1,%rax
   140001f03:	0f 84 a7 00 00 00    	je     140001fb0 <_gnu_exception_handler+0x160>
   140001f09:	48 85 c0             	test   %rax,%rax
   140001f0c:	74 19                	je     140001f27 <_gnu_exception_handler+0xd7>
   140001f0e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f13:	ff d0                	call   *%rax
   140001f15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f1a:	eb b1                	jmp    140001ecd <_gnu_exception_handler+0x7d>
   140001f1c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f20:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001f25:	74 a1                	je     140001ec8 <_gnu_exception_handler+0x78>
   140001f27:	48 8b 05 a2 a1 00 00 	mov    0xa1a2(%rip),%rax        # 14000c0d0 <__mingw_oldexcpt_handler>
   140001f2e:	48 85 c0             	test   %rax,%rax
   140001f31:	74 1d                	je     140001f50 <_gnu_exception_handler+0x100>
   140001f33:	4c 89 e1             	mov    %r12,%rcx
   140001f36:	48 83 c4 20          	add    $0x20,%rsp
   140001f3a:	41 5c                	pop    %r12
   140001f3c:	48 ff e0             	rex.W jmp *%rax
   140001f3f:	90                   	nop
   140001f40:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001f44:	0f 85 28 ff ff ff    	jne    140001e72 <_gnu_exception_handler+0x22>
   140001f4a:	e9 79 ff ff ff       	jmp    140001ec8 <_gnu_exception_handler+0x78>
   140001f4f:	90                   	nop
   140001f50:	31 c0                	xor    %eax,%eax
   140001f52:	48 83 c4 20          	add    $0x20,%rsp
   140001f56:	41 5c                	pop    %r12
   140001f58:	c3                   	ret    
   140001f59:	31 d2                	xor    %edx,%edx
   140001f5b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f60:	e8 a3 52 00 00       	call   140007208 <signal>
   140001f65:	48 83 f8 01          	cmp    $0x1,%rax
   140001f69:	74 65                	je     140001fd0 <_gnu_exception_handler+0x180>
   140001f6b:	48 85 c0             	test   %rax,%rax
   140001f6e:	74 b7                	je     140001f27 <_gnu_exception_handler+0xd7>
   140001f70:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f75:	ff d0                	call   *%rax
   140001f77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f7c:	e9 4c ff ff ff       	jmp    140001ecd <_gnu_exception_handler+0x7d>
   140001f81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001f88:	31 d2                	xor    %edx,%edx
   140001f8a:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f8f:	e8 74 52 00 00       	call   140007208 <signal>
   140001f94:	48 83 f8 01          	cmp    $0x1,%rax
   140001f98:	74 4f                	je     140001fe9 <_gnu_exception_handler+0x199>
   140001f9a:	48 85 c0             	test   %rax,%rax
   140001f9d:	74 88                	je     140001f27 <_gnu_exception_handler+0xd7>
   140001f9f:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001fa4:	ff d0                	call   *%rax
   140001fa6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001fab:	e9 1d ff ff ff       	jmp    140001ecd <_gnu_exception_handler+0x7d>
   140001fb0:	ba 01 00 00 00       	mov    $0x1,%edx
   140001fb5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001fba:	e8 49 52 00 00       	call   140007208 <signal>
   140001fbf:	83 c8 ff             	or     $0xffffffff,%eax
   140001fc2:	e9 06 ff ff ff       	jmp    140001ecd <_gnu_exception_handler+0x7d>
   140001fc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001fce:	00 00 
   140001fd0:	ba 01 00 00 00       	mov    $0x1,%edx
   140001fd5:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001fda:	e8 29 52 00 00       	call   140007208 <signal>
   140001fdf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001fe4:	e9 e4 fe ff ff       	jmp    140001ecd <_gnu_exception_handler+0x7d>
   140001fe9:	ba 01 00 00 00       	mov    $0x1,%edx
   140001fee:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ff3:	e8 10 52 00 00       	call   140007208 <signal>
   140001ff8:	83 c8 ff             	or     $0xffffffff,%eax
   140001ffb:	e9 cd fe ff ff       	jmp    140001ecd <_gnu_exception_handler+0x7d>

0000000140002000 <__mingwthr_run_key_dtors.part.0>:
   140002000:	41 54                	push   %r12
   140002002:	57                   	push   %rdi
   140002003:	56                   	push   %rsi
   140002004:	53                   	push   %rbx
   140002005:	48 83 ec 28          	sub    $0x28,%rsp
   140002009:	48 8d 0d f0 a0 00 00 	lea    0xa0f0(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   140002010:	ff 15 c6 b1 00 00    	call   *0xb1c6(%rip)        # 14000d1dc <__imp_EnterCriticalSection>
   140002016:	48 8b 1d c3 a0 00 00 	mov    0xa0c3(%rip),%rbx        # 14000c0e0 <key_dtor_list>
   14000201d:	48 85 db             	test   %rbx,%rbx
   140002020:	74 32                	je     140002054 <__mingwthr_run_key_dtors.part.0+0x54>
   140002022:	48 8b 3d fb b1 00 00 	mov    0xb1fb(%rip),%rdi        # 14000d224 <__imp_TlsGetValue>
   140002029:	48 8b 35 b4 b1 00 00 	mov    0xb1b4(%rip),%rsi        # 14000d1e4 <__imp_GetLastError>
   140002030:	8b 0b                	mov    (%rbx),%ecx
   140002032:	ff d7                	call   *%rdi
   140002034:	49 89 c4             	mov    %rax,%r12
   140002037:	ff d6                	call   *%rsi
   140002039:	85 c0                	test   %eax,%eax
   14000203b:	75 0e                	jne    14000204b <__mingwthr_run_key_dtors.part.0+0x4b>
   14000203d:	4d 85 e4             	test   %r12,%r12
   140002040:	74 09                	je     14000204b <__mingwthr_run_key_dtors.part.0+0x4b>
   140002042:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002046:	4c 89 e1             	mov    %r12,%rcx
   140002049:	ff d0                	call   *%rax
   14000204b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000204f:	48 85 db             	test   %rbx,%rbx
   140002052:	75 dc                	jne    140002030 <__mingwthr_run_key_dtors.part.0+0x30>
   140002054:	48 8d 0d a5 a0 00 00 	lea    0xa0a5(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   14000205b:	48 83 c4 28          	add    $0x28,%rsp
   14000205f:	5b                   	pop    %rbx
   140002060:	5e                   	pop    %rsi
   140002061:	5f                   	pop    %rdi
   140002062:	41 5c                	pop    %r12
   140002064:	48 ff 25 99 b1 00 00 	rex.W jmp *0xb199(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   14000206b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002070 <___w64_mingwthr_add_key_dtor>:
   140002070:	57                   	push   %rdi
   140002071:	56                   	push   %rsi
   140002072:	53                   	push   %rbx
   140002073:	48 83 ec 20          	sub    $0x20,%rsp
   140002077:	8b 05 6b a0 00 00    	mov    0xa06b(%rip),%eax        # 14000c0e8 <__mingwthr_cs_init>
   14000207d:	89 cf                	mov    %ecx,%edi
   14000207f:	48 89 d6             	mov    %rdx,%rsi
   140002082:	85 c0                	test   %eax,%eax
   140002084:	75 0a                	jne    140002090 <___w64_mingwthr_add_key_dtor+0x20>
   140002086:	48 83 c4 20          	add    $0x20,%rsp
   14000208a:	5b                   	pop    %rbx
   14000208b:	5e                   	pop    %rsi
   14000208c:	5f                   	pop    %rdi
   14000208d:	c3                   	ret    
   14000208e:	66 90                	xchg   %ax,%ax
   140002090:	ba 18 00 00 00       	mov    $0x18,%edx
   140002095:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000209a:	e8 b1 51 00 00       	call   140007250 <calloc>
   14000209f:	48 89 c3             	mov    %rax,%rbx
   1400020a2:	48 85 c0             	test   %rax,%rax
   1400020a5:	74 3c                	je     1400020e3 <___w64_mingwthr_add_key_dtor+0x73>
   1400020a7:	89 38                	mov    %edi,(%rax)
   1400020a9:	48 8d 0d 50 a0 00 00 	lea    0xa050(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   1400020b0:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400020b4:	ff 15 22 b1 00 00    	call   *0xb122(%rip)        # 14000d1dc <__imp_EnterCriticalSection>
   1400020ba:	48 8b 05 1f a0 00 00 	mov    0xa01f(%rip),%rax        # 14000c0e0 <key_dtor_list>
   1400020c1:	48 8d 0d 38 a0 00 00 	lea    0xa038(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   1400020c8:	48 89 1d 11 a0 00 00 	mov    %rbx,0xa011(%rip)        # 14000c0e0 <key_dtor_list>
   1400020cf:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400020d3:	ff 15 2b b1 00 00    	call   *0xb12b(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   1400020d9:	31 c0                	xor    %eax,%eax
   1400020db:	48 83 c4 20          	add    $0x20,%rsp
   1400020df:	5b                   	pop    %rbx
   1400020e0:	5e                   	pop    %rsi
   1400020e1:	5f                   	pop    %rdi
   1400020e2:	c3                   	ret    
   1400020e3:	83 c8 ff             	or     $0xffffffff,%eax
   1400020e6:	eb 9e                	jmp    140002086 <___w64_mingwthr_add_key_dtor+0x16>
   1400020e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400020ef:	00 

00000001400020f0 <___w64_mingwthr_remove_key_dtor>:
   1400020f0:	53                   	push   %rbx
   1400020f1:	48 83 ec 20          	sub    $0x20,%rsp
   1400020f5:	8b 05 ed 9f 00 00    	mov    0x9fed(%rip),%eax        # 14000c0e8 <__mingwthr_cs_init>
   1400020fb:	89 cb                	mov    %ecx,%ebx
   1400020fd:	85 c0                	test   %eax,%eax
   1400020ff:	75 0f                	jne    140002110 <___w64_mingwthr_remove_key_dtor+0x20>
   140002101:	31 c0                	xor    %eax,%eax
   140002103:	48 83 c4 20          	add    $0x20,%rsp
   140002107:	5b                   	pop    %rbx
   140002108:	c3                   	ret    
   140002109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002110:	48 8d 0d e9 9f 00 00 	lea    0x9fe9(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   140002117:	ff 15 bf b0 00 00    	call   *0xb0bf(%rip)        # 14000d1dc <__imp_EnterCriticalSection>
   14000211d:	48 8b 0d bc 9f 00 00 	mov    0x9fbc(%rip),%rcx        # 14000c0e0 <key_dtor_list>
   140002124:	48 85 c9             	test   %rcx,%rcx
   140002127:	74 2a                	je     140002153 <___w64_mingwthr_remove_key_dtor+0x63>
   140002129:	31 d2                	xor    %edx,%edx
   14000212b:	eb 0e                	jmp    14000213b <___w64_mingwthr_remove_key_dtor+0x4b>
   14000212d:	0f 1f 00             	nopl   (%rax)
   140002130:	48 89 ca             	mov    %rcx,%rdx
   140002133:	48 85 c0             	test   %rax,%rax
   140002136:	74 1b                	je     140002153 <___w64_mingwthr_remove_key_dtor+0x63>
   140002138:	48 89 c1             	mov    %rax,%rcx
   14000213b:	8b 01                	mov    (%rcx),%eax
   14000213d:	39 d8                	cmp    %ebx,%eax
   14000213f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002143:	75 eb                	jne    140002130 <___w64_mingwthr_remove_key_dtor+0x40>
   140002145:	48 85 d2             	test   %rdx,%rdx
   140002148:	74 26                	je     140002170 <___w64_mingwthr_remove_key_dtor+0x80>
   14000214a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000214e:	e8 dd 50 00 00       	call   140007230 <free>
   140002153:	48 8d 0d a6 9f 00 00 	lea    0x9fa6(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   14000215a:	ff 15 a4 b0 00 00    	call   *0xb0a4(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   140002160:	31 c0                	xor    %eax,%eax
   140002162:	48 83 c4 20          	add    $0x20,%rsp
   140002166:	5b                   	pop    %rbx
   140002167:	c3                   	ret    
   140002168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000216f:	00 
   140002170:	48 89 05 69 9f 00 00 	mov    %rax,0x9f69(%rip)        # 14000c0e0 <key_dtor_list>
   140002177:	eb d5                	jmp    14000214e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002180 <__mingw_TLScallback>:
   140002180:	53                   	push   %rbx
   140002181:	48 83 ec 20          	sub    $0x20,%rsp
   140002185:	83 fa 02             	cmp    $0x2,%edx
   140002188:	0f 84 c2 00 00 00    	je     140002250 <__mingw_TLScallback+0xd0>
   14000218e:	77 28                	ja     1400021b8 <__mingw_TLScallback+0x38>
   140002190:	85 d2                	test   %edx,%edx
   140002192:	74 4c                	je     1400021e0 <__mingw_TLScallback+0x60>
   140002194:	8b 05 4e 9f 00 00    	mov    0x9f4e(%rip),%eax        # 14000c0e8 <__mingwthr_cs_init>
   14000219a:	85 c0                	test   %eax,%eax
   14000219c:	74 32                	je     1400021d0 <__mingw_TLScallback+0x50>
   14000219e:	c7 05 40 9f 00 00 01 	movl   $0x1,0x9f40(%rip)        # 14000c0e8 <__mingwthr_cs_init>
   1400021a5:	00 00 00 
   1400021a8:	b8 01 00 00 00       	mov    $0x1,%eax
   1400021ad:	48 83 c4 20          	add    $0x20,%rsp
   1400021b1:	5b                   	pop    %rbx
   1400021b2:	c3                   	ret    
   1400021b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021b8:	83 fa 03             	cmp    $0x3,%edx
   1400021bb:	75 eb                	jne    1400021a8 <__mingw_TLScallback+0x28>
   1400021bd:	8b 05 25 9f 00 00    	mov    0x9f25(%rip),%eax        # 14000c0e8 <__mingwthr_cs_init>
   1400021c3:	85 c0                	test   %eax,%eax
   1400021c5:	74 e1                	je     1400021a8 <__mingw_TLScallback+0x28>
   1400021c7:	e8 34 fe ff ff       	call   140002000 <__mingwthr_run_key_dtors.part.0>
   1400021cc:	eb da                	jmp    1400021a8 <__mingw_TLScallback+0x28>
   1400021ce:	66 90                	xchg   %ax,%ax
   1400021d0:	48 8d 0d 29 9f 00 00 	lea    0x9f29(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   1400021d7:	ff 15 17 b0 00 00    	call   *0xb017(%rip)        # 14000d1f4 <__imp_InitializeCriticalSection>
   1400021dd:	eb bf                	jmp    14000219e <__mingw_TLScallback+0x1e>
   1400021df:	90                   	nop
   1400021e0:	8b 05 02 9f 00 00    	mov    0x9f02(%rip),%eax        # 14000c0e8 <__mingwthr_cs_init>
   1400021e6:	85 c0                	test   %eax,%eax
   1400021e8:	74 05                	je     1400021ef <__mingw_TLScallback+0x6f>
   1400021ea:	e8 11 fe ff ff       	call   140002000 <__mingwthr_run_key_dtors.part.0>
   1400021ef:	8b 05 f3 9e 00 00    	mov    0x9ef3(%rip),%eax        # 14000c0e8 <__mingwthr_cs_init>
   1400021f5:	83 f8 01             	cmp    $0x1,%eax
   1400021f8:	75 ae                	jne    1400021a8 <__mingw_TLScallback+0x28>
   1400021fa:	48 8b 1d df 9e 00 00 	mov    0x9edf(%rip),%rbx        # 14000c0e0 <key_dtor_list>
   140002201:	48 85 db             	test   %rbx,%rbx
   140002204:	74 1b                	je     140002221 <__mingw_TLScallback+0xa1>
   140002206:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000220d:	00 00 00 
   140002210:	48 89 d9             	mov    %rbx,%rcx
   140002213:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002217:	e8 14 50 00 00       	call   140007230 <free>
   14000221c:	48 85 db             	test   %rbx,%rbx
   14000221f:	75 ef                	jne    140002210 <__mingw_TLScallback+0x90>
   140002221:	48 8d 0d d8 9e 00 00 	lea    0x9ed8(%rip),%rcx        # 14000c100 <__mingwthr_cs>
   140002228:	48 c7 05 ad 9e 00 00 	movq   $0x0,0x9ead(%rip)        # 14000c0e0 <key_dtor_list>
   14000222f:	00 00 00 00 
   140002233:	c7 05 ab 9e 00 00 00 	movl   $0x0,0x9eab(%rip)        # 14000c0e8 <__mingwthr_cs_init>
   14000223a:	00 00 00 
   14000223d:	ff 15 91 af 00 00    	call   *0xaf91(%rip)        # 14000d1d4 <__IAT_start__>
   140002243:	e9 60 ff ff ff       	jmp    1400021a8 <__mingw_TLScallback+0x28>
   140002248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000224f:	00 
   140002250:	e8 0b f6 ff ff       	call   140001860 <_fpreset>
   140002255:	b8 01 00 00 00       	mov    $0x1,%eax
   14000225a:	48 83 c4 20          	add    $0x20,%rsp
   14000225e:	5b                   	pop    %rbx
   14000225f:	c3                   	ret    

0000000140002260 <_ValidateImageBase.part.0>:
   140002260:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002264:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
   140002268:	31 c0                	xor    %eax,%eax
   14000226a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002270:	75 0b                	jne    14000227d <_ValidateImageBase.part.0+0x1d>
   140002272:	31 c0                	xor    %eax,%eax
   140002274:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000227a:	0f 94 c0             	sete   %al
   14000227d:	c3                   	ret    
   14000227e:	66 90                	xchg   %ax,%ax

0000000140002280 <_ValidateImageBase>:
   140002280:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002285:	75 09                	jne    140002290 <_ValidateImageBase+0x10>
   140002287:	eb d7                	jmp    140002260 <_ValidateImageBase.part.0>
   140002289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002290:	31 c0                	xor    %eax,%eax
   140002292:	c3                   	ret    
   140002293:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000229a:	00 00 00 00 
   14000229e:	66 90                	xchg   %ax,%ax

00000001400022a0 <_FindPESection>:
   1400022a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400022a4:	48 01 c1             	add    %rax,%rcx
   1400022a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400022ab:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400022b0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   1400022b4:	85 c9                	test   %ecx,%ecx
   1400022b6:	74 2d                	je     1400022e5 <_FindPESection+0x45>
   1400022b8:	83 e9 01             	sub    $0x1,%ecx
   1400022bb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400022bf:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400022c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022c8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022cc:	4c 89 c1             	mov    %r8,%rcx
   1400022cf:	49 39 d0             	cmp    %rdx,%r8
   1400022d2:	77 08                	ja     1400022dc <_FindPESection+0x3c>
   1400022d4:	03 48 08             	add    0x8(%rax),%ecx
   1400022d7:	48 39 d1             	cmp    %rdx,%rcx
   1400022da:	77 0b                	ja     1400022e7 <_FindPESection+0x47>
   1400022dc:	48 83 c0 28          	add    $0x28,%rax
   1400022e0:	4c 39 c8             	cmp    %r9,%rax
   1400022e3:	75 e3                	jne    1400022c8 <_FindPESection+0x28>
   1400022e5:	31 c0                	xor    %eax,%eax
   1400022e7:	c3                   	ret    
   1400022e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400022ef:	00 

00000001400022f0 <_FindPESectionByName>:
   1400022f0:	41 54                	push   %r12
   1400022f2:	56                   	push   %rsi
   1400022f3:	53                   	push   %rbx
   1400022f4:	48 83 ec 20          	sub    $0x20,%rsp
   1400022f8:	48 89 cb             	mov    %rcx,%rbx
   1400022fb:	e8 f8 4e 00 00       	call   1400071f8 <strlen>
   140002300:	48 83 f8 08          	cmp    $0x8,%rax
   140002304:	77 7a                	ja     140002380 <_FindPESectionByName+0x90>
   140002306:	48 8b 0d d3 73 00 00 	mov    0x73d3(%rip),%rcx        # 1400096e0 <.refptr.__image_base__>
   14000230d:	45 31 e4             	xor    %r12d,%r12d
   140002310:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002315:	75 57                	jne    14000236e <_FindPESectionByName+0x7e>
   140002317:	e8 44 ff ff ff       	call   140002260 <_ValidateImageBase.part.0>
   14000231c:	85 c0                	test   %eax,%eax
   14000231e:	74 4e                	je     14000236e <_FindPESectionByName+0x7e>
   140002320:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002324:	48 01 c1             	add    %rax,%rcx
   140002327:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000232b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
   140002330:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   140002334:	85 c0                	test   %eax,%eax
   140002336:	74 48                	je     140002380 <_FindPESectionByName+0x90>
   140002338:	83 e8 01             	sub    $0x1,%eax
   14000233b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000233f:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002344:	eb 13                	jmp    140002359 <_FindPESectionByName+0x69>
   140002346:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000234d:	00 00 00 
   140002350:	49 83 c4 28          	add    $0x28,%r12
   140002354:	49 39 f4             	cmp    %rsi,%r12
   140002357:	74 27                	je     140002380 <_FindPESectionByName+0x90>
   140002359:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000235f:	48 89 da             	mov    %rbx,%rdx
   140002362:	4c 89 e1             	mov    %r12,%rcx
   140002365:	e8 86 4e 00 00       	call   1400071f0 <strncmp>
   14000236a:	85 c0                	test   %eax,%eax
   14000236c:	75 e2                	jne    140002350 <_FindPESectionByName+0x60>
   14000236e:	4c 89 e0             	mov    %r12,%rax
   140002371:	48 83 c4 20          	add    $0x20,%rsp
   140002375:	5b                   	pop    %rbx
   140002376:	5e                   	pop    %rsi
   140002377:	41 5c                	pop    %r12
   140002379:	c3                   	ret    
   14000237a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002380:	45 31 e4             	xor    %r12d,%r12d
   140002383:	4c 89 e0             	mov    %r12,%rax
   140002386:	48 83 c4 20          	add    $0x20,%rsp
   14000238a:	5b                   	pop    %rbx
   14000238b:	5e                   	pop    %rsi
   14000238c:	41 5c                	pop    %r12
   14000238e:	c3                   	ret    
   14000238f:	90                   	nop

0000000140002390 <__mingw_GetSectionForAddress>:
   140002390:	48 83 ec 28          	sub    $0x28,%rsp
   140002394:	4c 8b 15 45 73 00 00 	mov    0x7345(%rip),%r10        # 1400096e0 <.refptr.__image_base__>
   14000239b:	45 31 c0             	xor    %r8d,%r8d
   14000239e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
   1400023a4:	49 89 c9             	mov    %rcx,%r9
   1400023a7:	75 60                	jne    140002409 <__mingw_GetSectionForAddress+0x79>
   1400023a9:	4c 89 d1             	mov    %r10,%rcx
   1400023ac:	e8 af fe ff ff       	call   140002260 <_ValidateImageBase.part.0>
   1400023b1:	85 c0                	test   %eax,%eax
   1400023b3:	74 54                	je     140002409 <__mingw_GetSectionForAddress+0x79>
   1400023b5:	49 63 42 3c          	movslq 0x3c(%r10),%rax
   1400023b9:	4c 89 c9             	mov    %r9,%rcx
   1400023bc:	4c 29 d1             	sub    %r10,%rcx
   1400023bf:	49 01 c2             	add    %rax,%r10
   1400023c2:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
   1400023c7:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
   1400023cc:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
   1400023d1:	85 c0                	test   %eax,%eax
   1400023d3:	74 31                	je     140002406 <__mingw_GetSectionForAddress+0x76>
   1400023d5:	83 e8 01             	sub    $0x1,%eax
   1400023d8:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400023dc:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
   1400023e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023e8:	41 8b 50 0c          	mov    0xc(%r8),%edx
   1400023ec:	48 89 d0             	mov    %rdx,%rax
   1400023ef:	48 39 d1             	cmp    %rdx,%rcx
   1400023f2:	72 09                	jb     1400023fd <__mingw_GetSectionForAddress+0x6d>
   1400023f4:	41 03 40 08          	add    0x8(%r8),%eax
   1400023f8:	48 39 c1             	cmp    %rax,%rcx
   1400023fb:	72 0c                	jb     140002409 <__mingw_GetSectionForAddress+0x79>
   1400023fd:	49 83 c0 28          	add    $0x28,%r8
   140002401:	4d 39 c8             	cmp    %r9,%r8
   140002404:	75 e2                	jne    1400023e8 <__mingw_GetSectionForAddress+0x58>
   140002406:	45 31 c0             	xor    %r8d,%r8d
   140002409:	4c 89 c0             	mov    %r8,%rax
   14000240c:	48 83 c4 28          	add    $0x28,%rsp
   140002410:	c3                   	ret    
   140002411:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002418:	00 00 00 00 
   14000241c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002420 <__mingw_GetSectionCount>:
   140002420:	48 83 ec 28          	sub    $0x28,%rsp
   140002424:	48 8b 0d b5 72 00 00 	mov    0x72b5(%rip),%rcx        # 1400096e0 <.refptr.__image_base__>
   14000242b:	31 c0                	xor    %eax,%eax
   14000242d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002432:	75 12                	jne    140002446 <__mingw_GetSectionCount+0x26>
   140002434:	e8 27 fe ff ff       	call   140002260 <_ValidateImageBase.part.0>
   140002439:	85 c0                	test   %eax,%eax
   14000243b:	74 09                	je     140002446 <__mingw_GetSectionCount+0x26>
   14000243d:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002441:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
   140002446:	48 83 c4 28          	add    $0x28,%rsp
   14000244a:	c3                   	ret    
   14000244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002450 <_FindPESectionExec>:
   140002450:	48 83 ec 28          	sub    $0x28,%rsp
   140002454:	45 31 c0             	xor    %r8d,%r8d
   140002457:	49 89 c9             	mov    %rcx,%r9
   14000245a:	48 8b 0d 7f 72 00 00 	mov    0x727f(%rip),%rcx        # 1400096e0 <.refptr.__image_base__>
   140002461:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002466:	75 4c                	jne    1400024b4 <_FindPESectionExec+0x64>
   140002468:	e8 f3 fd ff ff       	call   140002260 <_ValidateImageBase.part.0>
   14000246d:	85 c0                	test   %eax,%eax
   14000246f:	74 43                	je     1400024b4 <_FindPESectionExec+0x64>
   140002471:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002475:	48 01 c1             	add    %rax,%rcx
   140002478:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000247c:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
   140002481:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   140002485:	85 c0                	test   %eax,%eax
   140002487:	74 28                	je     1400024b1 <_FindPESectionExec+0x61>
   140002489:	83 e8 01             	sub    $0x1,%eax
   14000248c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002490:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
   140002495:	0f 1f 00             	nopl   (%rax)
   140002498:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
   14000249d:	74 09                	je     1400024a8 <_FindPESectionExec+0x58>
   14000249f:	4d 85 c9             	test   %r9,%r9
   1400024a2:	74 10                	je     1400024b4 <_FindPESectionExec+0x64>
   1400024a4:	49 83 e9 01          	sub    $0x1,%r9
   1400024a8:	49 83 c0 28          	add    $0x28,%r8
   1400024ac:	49 39 c0             	cmp    %rax,%r8
   1400024af:	75 e7                	jne    140002498 <_FindPESectionExec+0x48>
   1400024b1:	45 31 c0             	xor    %r8d,%r8d
   1400024b4:	4c 89 c0             	mov    %r8,%rax
   1400024b7:	48 83 c4 28          	add    $0x28,%rsp
   1400024bb:	c3                   	ret    
   1400024bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400024c0 <_GetPEImageBase>:
   1400024c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400024c4:	48 8b 0d 15 72 00 00 	mov    0x7215(%rip),%rcx        # 1400096e0 <.refptr.__image_base__>
   1400024cb:	45 31 c0             	xor    %r8d,%r8d
   1400024ce:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400024d3:	75 0b                	jne    1400024e0 <_GetPEImageBase+0x20>
   1400024d5:	e8 86 fd ff ff       	call   140002260 <_ValidateImageBase.part.0>
   1400024da:	85 c0                	test   %eax,%eax
   1400024dc:	4c 0f 45 c1          	cmovne %rcx,%r8
   1400024e0:	4c 89 c0             	mov    %r8,%rax
   1400024e3:	48 83 c4 28          	add    $0x28,%rsp
   1400024e7:	c3                   	ret    
   1400024e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400024ef:	00 

00000001400024f0 <_IsNonwritableInCurrentImage>:
   1400024f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400024f4:	4c 8b 0d e5 71 00 00 	mov    0x71e5(%rip),%r9        # 1400096e0 <.refptr.__image_base__>
   1400024fb:	31 c0                	xor    %eax,%eax
   1400024fd:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
   140002503:	49 89 c8             	mov    %rcx,%r8
   140002506:	75 57                	jne    14000255f <_IsNonwritableInCurrentImage+0x6f>
   140002508:	4c 89 c9             	mov    %r9,%rcx
   14000250b:	e8 50 fd ff ff       	call   140002260 <_ValidateImageBase.part.0>
   140002510:	85 c0                	test   %eax,%eax
   140002512:	74 4b                	je     14000255f <_IsNonwritableInCurrentImage+0x6f>
   140002514:	49 63 41 3c          	movslq 0x3c(%r9),%rax
   140002518:	4c 89 c1             	mov    %r8,%rcx
   14000251b:	4c 29 c9             	sub    %r9,%rcx
   14000251e:	49 01 c1             	add    %rax,%r9
   140002521:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
   140002526:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
   14000252b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
   140002530:	85 d2                	test   %edx,%edx
   140002532:	74 29                	je     14000255d <_IsNonwritableInCurrentImage+0x6d>
   140002534:	83 ea 01             	sub    $0x1,%edx
   140002537:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000253b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002540:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002544:	4c 89 c2             	mov    %r8,%rdx
   140002547:	4c 39 c1             	cmp    %r8,%rcx
   14000254a:	72 08                	jb     140002554 <_IsNonwritableInCurrentImage+0x64>
   14000254c:	03 50 08             	add    0x8(%rax),%edx
   14000254f:	48 39 d1             	cmp    %rdx,%rcx
   140002552:	72 14                	jb     140002568 <_IsNonwritableInCurrentImage+0x78>
   140002554:	48 83 c0 28          	add    $0x28,%rax
   140002558:	4c 39 c8             	cmp    %r9,%rax
   14000255b:	75 e3                	jne    140002540 <_IsNonwritableInCurrentImage+0x50>
   14000255d:	31 c0                	xor    %eax,%eax
   14000255f:	48 83 c4 28          	add    $0x28,%rsp
   140002563:	c3                   	ret    
   140002564:	0f 1f 40 00          	nopl   0x0(%rax)
   140002568:	8b 40 24             	mov    0x24(%rax),%eax
   14000256b:	f7 d0                	not    %eax
   14000256d:	c1 e8 1f             	shr    $0x1f,%eax
   140002570:	48 83 c4 28          	add    $0x28,%rsp
   140002574:	c3                   	ret    
   140002575:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000257c:	00 00 00 00 

0000000140002580 <__mingw_enum_import_library_names>:
   140002580:	48 83 ec 28          	sub    $0x28,%rsp
   140002584:	4c 8b 1d 55 71 00 00 	mov    0x7155(%rip),%r11        # 1400096e0 <.refptr.__image_base__>
   14000258b:	45 31 c9             	xor    %r9d,%r9d
   14000258e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002594:	41 89 c8             	mov    %ecx,%r8d
   140002597:	75 5f                	jne    1400025f8 <__mingw_enum_import_library_names+0x78>
   140002599:	4c 89 d9             	mov    %r11,%rcx
   14000259c:	e8 bf fc ff ff       	call   140002260 <_ValidateImageBase.part.0>
   1400025a1:	85 c0                	test   %eax,%eax
   1400025a3:	74 53                	je     1400025f8 <__mingw_enum_import_library_names+0x78>
   1400025a5:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
   1400025a9:	4c 01 d9             	add    %r11,%rcx
   1400025ac:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
   1400025b2:	85 c0                	test   %eax,%eax
   1400025b4:	74 42                	je     1400025f8 <__mingw_enum_import_library_names+0x78>
   1400025b6:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
   1400025ba:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
   1400025bf:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   1400025c3:	85 c9                	test   %ecx,%ecx
   1400025c5:	74 31                	je     1400025f8 <__mingw_enum_import_library_names+0x78>
   1400025c7:	83 e9 01             	sub    $0x1,%ecx
   1400025ca:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400025ce:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
   1400025d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400025d8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400025dc:	4c 89 c9             	mov    %r9,%rcx
   1400025df:	4c 39 c8             	cmp    %r9,%rax
   1400025e2:	72 08                	jb     1400025ec <__mingw_enum_import_library_names+0x6c>
   1400025e4:	03 4a 08             	add    0x8(%rdx),%ecx
   1400025e7:	48 39 c8             	cmp    %rcx,%rax
   1400025ea:	72 14                	jb     140002600 <__mingw_enum_import_library_names+0x80>
   1400025ec:	48 83 c2 28          	add    $0x28,%rdx
   1400025f0:	4c 39 d2             	cmp    %r10,%rdx
   1400025f3:	75 e3                	jne    1400025d8 <__mingw_enum_import_library_names+0x58>
   1400025f5:	45 31 c9             	xor    %r9d,%r9d
   1400025f8:	4c 89 c8             	mov    %r9,%rax
   1400025fb:	48 83 c4 28          	add    $0x28,%rsp
   1400025ff:	c3                   	ret    
   140002600:	4c 01 d8             	add    %r11,%rax
   140002603:	eb 0b                	jmp    140002610 <__mingw_enum_import_library_names+0x90>
   140002605:	0f 1f 00             	nopl   (%rax)
   140002608:	41 83 e8 01          	sub    $0x1,%r8d
   14000260c:	48 83 c0 14          	add    $0x14,%rax
   140002610:	8b 48 04             	mov    0x4(%rax),%ecx
   140002613:	85 c9                	test   %ecx,%ecx
   140002615:	75 07                	jne    14000261e <__mingw_enum_import_library_names+0x9e>
   140002617:	8b 50 0c             	mov    0xc(%rax),%edx
   14000261a:	85 d2                	test   %edx,%edx
   14000261c:	74 d7                	je     1400025f5 <__mingw_enum_import_library_names+0x75>
   14000261e:	45 85 c0             	test   %r8d,%r8d
   140002621:	7f e5                	jg     140002608 <__mingw_enum_import_library_names+0x88>
   140002623:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002627:	4d 01 d9             	add    %r11,%r9
   14000262a:	4c 89 c8             	mov    %r9,%rax
   14000262d:	48 83 c4 28          	add    $0x28,%rsp
   140002631:	c3                   	ret    
   140002632:	90                   	nop
   140002633:	90                   	nop
   140002634:	90                   	nop
   140002635:	90                   	nop
   140002636:	90                   	nop
   140002637:	90                   	nop
   140002638:	90                   	nop
   140002639:	90                   	nop
   14000263a:	90                   	nop
   14000263b:	90                   	nop
   14000263c:	90                   	nop
   14000263d:	90                   	nop
   14000263e:	90                   	nop
   14000263f:	90                   	nop

0000000140002640 <___chkstk_ms>:
   140002640:	51                   	push   %rcx
   140002641:	50                   	push   %rax
   140002642:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002648:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000264d:	72 19                	jb     140002668 <___chkstk_ms+0x28>
   14000264f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002656:	48 83 09 00          	orq    $0x0,(%rcx)
   14000265a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002660:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002666:	77 e7                	ja     14000264f <___chkstk_ms+0xf>
   140002668:	48 29 c1             	sub    %rax,%rcx
   14000266b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000266f:	58                   	pop    %rax
   140002670:	59                   	pop    %rcx
   140002671:	c3                   	ret    
   140002672:	90                   	nop
   140002673:	90                   	nop
   140002674:	90                   	nop
   140002675:	90                   	nop
   140002676:	90                   	nop
   140002677:	90                   	nop
   140002678:	90                   	nop
   140002679:	90                   	nop
   14000267a:	90                   	nop
   14000267b:	90                   	nop
   14000267c:	90                   	nop
   14000267d:	90                   	nop
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <__mingw_vfprintf>:
   140002680:	41 55                	push   %r13
   140002682:	41 54                	push   %r12
   140002684:	53                   	push   %rbx
   140002685:	48 83 ec 30          	sub    $0x30,%rsp
   140002689:	4c 89 c3             	mov    %r8,%rbx
   14000268c:	49 89 cc             	mov    %rcx,%r12
   14000268f:	49 89 d5             	mov    %rdx,%r13
   140002692:	e8 99 51 00 00       	call   140007830 <_lock_file>
   140002697:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
   14000269c:	4d 89 e9             	mov    %r13,%r9
   14000269f:	45 31 c0             	xor    %r8d,%r8d
   1400026a2:	4c 89 e2             	mov    %r12,%rdx
   1400026a5:	b9 00 60 00 00       	mov    $0x6000,%ecx
   1400026aa:	e8 f1 1a 00 00       	call   1400041a0 <__mingw_pformat>
   1400026af:	4c 89 e1             	mov    %r12,%rcx
   1400026b2:	41 89 c5             	mov    %eax,%r13d
   1400026b5:	e8 e6 51 00 00       	call   1400078a0 <_unlock_file>
   1400026ba:	44 89 e8             	mov    %r13d,%eax
   1400026bd:	48 83 c4 30          	add    $0x30,%rsp
   1400026c1:	5b                   	pop    %rbx
   1400026c2:	41 5c                	pop    %r12
   1400026c4:	41 5d                	pop    %r13
   1400026c6:	c3                   	ret    
   1400026c7:	90                   	nop
   1400026c8:	90                   	nop
   1400026c9:	90                   	nop
   1400026ca:	90                   	nop
   1400026cb:	90                   	nop
   1400026cc:	90                   	nop
   1400026cd:	90                   	nop
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <__pformat_cvt>:
   1400026d0:	48 83 ec 58          	sub    $0x58,%rsp
   1400026d4:	44 8b 5a 08          	mov    0x8(%rdx),%r11d
   1400026d8:	4c 8b 12             	mov    (%rdx),%r10
   1400026db:	4c 89 d8             	mov    %r11,%rax
   1400026de:	66 25 ff 7f          	and    $0x7fff,%ax
   1400026e2:	0f 85 80 00 00 00    	jne    140002768 <__pformat_cvt+0x98>
   1400026e8:	4d 89 d3             	mov    %r10,%r11
   1400026eb:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
   1400026ef:	49 c1 eb 20          	shr    $0x20,%r11
   1400026f3:	45 09 da             	or     %r11d,%r10d
   1400026f6:	0f 84 7c 00 00 00    	je     140002778 <__pformat_cvt+0xa8>
   1400026fc:	45 85 db             	test   %r11d,%r11d
   1400026ff:	0f 89 c3 00 00 00    	jns    1400027c8 <__pformat_cvt+0xf8>
   140002705:	41 89 c3             	mov    %eax,%r11d
   140002708:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
   14000270f:	00 
   140002710:	41 81 e3 ff 7f 00 00 	and    $0x7fff,%r11d
   140002717:	41 81 eb 3e 40 00 00 	sub    $0x403e,%r11d
   14000271e:	66 90                	xchg   %ax,%ax
   140002720:	25 00 80 00 00       	and    $0x8000,%eax
   140002725:	4c 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10
   14000272c:	00 
   14000272d:	41 89 02             	mov    %eax,(%r10)
   140002730:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140002735:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   14000273a:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   14000273f:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
   140002744:	49 89 d0             	mov    %rdx,%r8
   140002747:	44 89 da             	mov    %r11d,%edx
   14000274a:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000274e:	48 8d 0d 0b 59 00 00 	lea    0x590b(%rip),%rcx        # 140008060 <fpi.6299>
   140002755:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   14000275a:	e8 f1 25 00 00       	call   140004d50 <__gdtoa>
   14000275f:	48 83 c4 58          	add    $0x58,%rsp
   140002763:	c3                   	ret    
   140002764:	0f 1f 40 00          	nopl   0x0(%rax)
   140002768:	66 3d ff 7f          	cmp    $0x7fff,%ax
   14000276c:	74 1a                	je     140002788 <__pformat_cvt+0xb8>
   14000276e:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
   140002772:	eb 91                	jmp    140002705 <__pformat_cvt+0x35>
   140002774:	0f 1f 40 00          	nopl   0x0(%rax)
   140002778:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
   14000277f:	00 
   140002780:	45 31 db             	xor    %r11d,%r11d
   140002783:	eb 9b                	jmp    140002720 <__pformat_cvt+0x50>
   140002785:	0f 1f 00             	nopl   (%rax)
   140002788:	4c 89 d0             	mov    %r10,%rax
   14000278b:	48 c1 e8 20          	shr    $0x20,%rax
   14000278f:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
   140002794:	44 09 d0             	or     %r10d,%eax
   140002797:	74 17                	je     1400027b0 <__pformat_cvt+0xe0>
   140002799:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
   1400027a0:	00 
   1400027a1:	45 31 db             	xor    %r11d,%r11d
   1400027a4:	31 c0                	xor    %eax,%eax
   1400027a6:	e9 7a ff ff ff       	jmp    140002725 <__pformat_cvt+0x55>
   1400027ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400027b0:	c7 44 24 44 03 00 00 	movl   $0x3,0x44(%rsp)
   1400027b7:	00 
   1400027b8:	0f b7 42 08          	movzwl 0x8(%rdx),%eax
   1400027bc:	45 31 db             	xor    %r11d,%r11d
   1400027bf:	e9 5c ff ff ff       	jmp    140002720 <__pformat_cvt+0x50>
   1400027c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027c8:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
   1400027cf:	00 
   1400027d0:	41 bb c3 bf ff ff    	mov    $0xffffbfc3,%r11d
   1400027d6:	e9 45 ff ff ff       	jmp    140002720 <__pformat_cvt+0x50>
   1400027db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400027e0 <__pformat_putc>:
   1400027e0:	53                   	push   %rbx
   1400027e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400027e5:	48 89 d3             	mov    %rdx,%rbx
   1400027e8:	8b 52 08             	mov    0x8(%rdx),%edx
   1400027eb:	f6 c6 40             	test   $0x40,%dh
   1400027ee:	75 08                	jne    1400027f8 <__pformat_putc+0x18>
   1400027f0:	8b 43 24             	mov    0x24(%rbx),%eax
   1400027f3:	39 43 28             	cmp    %eax,0x28(%rbx)
   1400027f6:	7e 13                	jle    14000280b <__pformat_putc+0x2b>
   1400027f8:	4c 8b 03             	mov    (%rbx),%r8
   1400027fb:	80 e6 20             	and    $0x20,%dh
   1400027fe:	75 20                	jne    140002820 <__pformat_putc+0x40>
   140002800:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002804:	41 88 0c 00          	mov    %cl,(%r8,%rax,1)
   140002808:	8b 43 24             	mov    0x24(%rbx),%eax
   14000280b:	83 c0 01             	add    $0x1,%eax
   14000280e:	89 43 24             	mov    %eax,0x24(%rbx)
   140002811:	48 83 c4 20          	add    $0x20,%rsp
   140002815:	5b                   	pop    %rbx
   140002816:	c3                   	ret    
   140002817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000281e:	00 00 
   140002820:	4c 89 c2             	mov    %r8,%rdx
   140002823:	e8 10 4a 00 00       	call   140007238 <fputc>
   140002828:	8b 43 24             	mov    0x24(%rbx),%eax
   14000282b:	83 c0 01             	add    $0x1,%eax
   14000282e:	89 43 24             	mov    %eax,0x24(%rbx)
   140002831:	48 83 c4 20          	add    $0x20,%rsp
   140002835:	5b                   	pop    %rbx
   140002836:	c3                   	ret    
   140002837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000283e:	00 00 

0000000140002840 <__pformat_wputchars>:
   140002840:	41 56                	push   %r14
   140002842:	41 55                	push   %r13
   140002844:	41 54                	push   %r12
   140002846:	55                   	push   %rbp
   140002847:	57                   	push   %rdi
   140002848:	56                   	push   %rsi
   140002849:	53                   	push   %rbx
   14000284a:	48 83 ec 40          	sub    $0x40,%rsp
   14000284e:	4c 8d 74 24 28       	lea    0x28(%rsp),%r14
   140002853:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
   140002858:	4c 89 c6             	mov    %r8,%rsi
   14000285b:	49 89 cc             	mov    %rcx,%r12
   14000285e:	89 d5                	mov    %edx,%ebp
   140002860:	4d 89 f0             	mov    %r14,%r8
   140002863:	31 d2                	xor    %edx,%edx
   140002865:	4c 89 e9             	mov    %r13,%rcx
   140002868:	e8 33 4e 00 00       	call   1400076a0 <wcrtomb>
   14000286d:	8b 46 10             	mov    0x10(%rsi),%eax
   140002870:	85 c0                	test   %eax,%eax
   140002872:	78 05                	js     140002879 <__pformat_wputchars+0x39>
   140002874:	39 c5                	cmp    %eax,%ebp
   140002876:	0f 4f e8             	cmovg  %eax,%ebp
   140002879:	8b 46 0c             	mov    0xc(%rsi),%eax
   14000287c:	39 e8                	cmp    %ebp,%eax
   14000287e:	0f 8f 95 00 00 00    	jg     140002919 <__pformat_wputchars+0xd9>
   140002884:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
   14000288b:	85 ed                	test   %ebp,%ebp
   14000288d:	0f 8e cc 00 00 00    	jle    14000295f <__pformat_wputchars+0x11f>
   140002893:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002898:	41 0f b7 14 24       	movzwl (%r12),%edx
   14000289d:	4d 89 f0             	mov    %r14,%r8
   1400028a0:	4c 89 e9             	mov    %r13,%rcx
   1400028a3:	49 83 c4 02          	add    $0x2,%r12
   1400028a7:	e8 f4 4d 00 00       	call   1400076a0 <wcrtomb>
   1400028ac:	85 c0                	test   %eax,%eax
   1400028ae:	7e 4d                	jle    1400028fd <__pformat_wputchars+0xbd>
   1400028b0:	83 e8 01             	sub    $0x1,%eax
   1400028b3:	4c 89 eb             	mov    %r13,%rbx
   1400028b6:	49 8d 7c 05 01       	lea    0x1(%r13,%rax,1),%rdi
   1400028bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400028c0:	0f be 0b             	movsbl (%rbx),%ecx
   1400028c3:	48 83 c3 01          	add    $0x1,%rbx
   1400028c7:	48 89 f2             	mov    %rsi,%rdx
   1400028ca:	e8 11 ff ff ff       	call   1400027e0 <__pformat_putc>
   1400028cf:	48 39 fb             	cmp    %rdi,%rbx
   1400028d2:	75 ec                	jne    1400028c0 <__pformat_wputchars+0x80>
   1400028d4:	83 ed 01             	sub    $0x1,%ebp
   1400028d7:	75 bf                	jne    140002898 <__pformat_wputchars+0x58>
   1400028d9:	8b 46 0c             	mov    0xc(%rsi),%eax
   1400028dc:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400028df:	89 56 0c             	mov    %edx,0xc(%rsi)
   1400028e2:	85 c0                	test   %eax,%eax
   1400028e4:	7e 24                	jle    14000290a <__pformat_wputchars+0xca>
   1400028e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400028ed:	00 00 00 
   1400028f0:	48 89 f2             	mov    %rsi,%rdx
   1400028f3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400028f8:	e8 e3 fe ff ff       	call   1400027e0 <__pformat_putc>
   1400028fd:	8b 46 0c             	mov    0xc(%rsi),%eax
   140002900:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002903:	89 56 0c             	mov    %edx,0xc(%rsi)
   140002906:	85 c0                	test   %eax,%eax
   140002908:	7f e6                	jg     1400028f0 <__pformat_wputchars+0xb0>
   14000290a:	48 83 c4 40          	add    $0x40,%rsp
   14000290e:	5b                   	pop    %rbx
   14000290f:	5e                   	pop    %rsi
   140002910:	5f                   	pop    %rdi
   140002911:	5d                   	pop    %rbp
   140002912:	41 5c                	pop    %r12
   140002914:	41 5d                	pop    %r13
   140002916:	41 5e                	pop    %r14
   140002918:	c3                   	ret    
   140002919:	29 e8                	sub    %ebp,%eax
   14000291b:	89 46 0c             	mov    %eax,0xc(%rsi)
   14000291e:	f6 46 09 04          	testb  $0x4,0x9(%rsi)
   140002922:	75 2b                	jne    14000294f <__pformat_wputchars+0x10f>
   140002924:	83 e8 01             	sub    $0x1,%eax
   140002927:	89 46 0c             	mov    %eax,0xc(%rsi)
   14000292a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002930:	48 89 f2             	mov    %rsi,%rdx
   140002933:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002938:	e8 a3 fe ff ff       	call   1400027e0 <__pformat_putc>
   14000293d:	8b 46 0c             	mov    0xc(%rsi),%eax
   140002940:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002943:	89 56 0c             	mov    %edx,0xc(%rsi)
   140002946:	85 c0                	test   %eax,%eax
   140002948:	75 e6                	jne    140002930 <__pformat_wputchars+0xf0>
   14000294a:	e9 3c ff ff ff       	jmp    14000288b <__pformat_wputchars+0x4b>
   14000294f:	85 ed                	test   %ebp,%ebp
   140002951:	0f 8f 41 ff ff ff    	jg     140002898 <__pformat_wputchars+0x58>
   140002957:	83 e8 01             	sub    $0x1,%eax
   14000295a:	89 46 0c             	mov    %eax,0xc(%rsi)
   14000295d:	eb 91                	jmp    1400028f0 <__pformat_wputchars+0xb0>
   14000295f:	c7 46 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rsi)
   140002966:	eb a2                	jmp    14000290a <__pformat_wputchars+0xca>
   140002968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000296f:	00 

0000000140002970 <__pformat_putchars>:
   140002970:	57                   	push   %rdi
   140002971:	56                   	push   %rsi
   140002972:	53                   	push   %rbx
   140002973:	48 83 ec 20          	sub    $0x20,%rsp
   140002977:	41 8b 40 10          	mov    0x10(%r8),%eax
   14000297b:	48 89 ce             	mov    %rcx,%rsi
   14000297e:	89 d7                	mov    %edx,%edi
   140002980:	4c 89 c3             	mov    %r8,%rbx
   140002983:	85 c0                	test   %eax,%eax
   140002985:	78 05                	js     14000298c <__pformat_putchars+0x1c>
   140002987:	39 c2                	cmp    %eax,%edx
   140002989:	0f 4f f8             	cmovg  %eax,%edi
   14000298c:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000298f:	39 f8                	cmp    %edi,%eax
   140002991:	7f 6d                	jg     140002a00 <__pformat_putchars+0x90>
   140002993:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   14000299a:	85 ff                	test   %edi,%edi
   14000299c:	0f 84 ae 00 00 00    	je     140002a50 <__pformat_putchars+0xe0>
   1400029a2:	8d 47 ff             	lea    -0x1(%rdi),%eax
   1400029a5:	48 8d 7c 06 01       	lea    0x1(%rsi,%rax,1),%rdi
   1400029aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400029b0:	0f be 0e             	movsbl (%rsi),%ecx
   1400029b3:	48 83 c6 01          	add    $0x1,%rsi
   1400029b7:	48 89 da             	mov    %rbx,%rdx
   1400029ba:	e8 21 fe ff ff       	call   1400027e0 <__pformat_putc>
   1400029bf:	48 39 f7             	cmp    %rsi,%rdi
   1400029c2:	75 ec                	jne    1400029b0 <__pformat_putchars+0x40>
   1400029c4:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400029c7:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400029ca:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400029cd:	85 c0                	test   %eax,%eax
   1400029cf:	7e 21                	jle    1400029f2 <__pformat_putchars+0x82>
   1400029d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400029d8:	48 89 da             	mov    %rbx,%rdx
   1400029db:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400029e0:	e8 fb fd ff ff       	call   1400027e0 <__pformat_putc>
   1400029e5:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400029e8:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400029eb:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400029ee:	85 c0                	test   %eax,%eax
   1400029f0:	7f e6                	jg     1400029d8 <__pformat_putchars+0x68>
   1400029f2:	48 83 c4 20          	add    $0x20,%rsp
   1400029f6:	5b                   	pop    %rbx
   1400029f7:	5e                   	pop    %rsi
   1400029f8:	5f                   	pop    %rdi
   1400029f9:	c3                   	ret    
   1400029fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002a00:	29 f8                	sub    %edi,%eax
   140002a02:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002a05:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
   140002a09:	75 35                	jne    140002a40 <__pformat_putchars+0xd0>
   140002a0b:	83 e8 01             	sub    $0x1,%eax
   140002a0e:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002a18:	48 89 da             	mov    %rbx,%rdx
   140002a1b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002a20:	e8 bb fd ff ff       	call   1400027e0 <__pformat_putc>
   140002a25:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002a28:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002a2b:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002a2e:	85 c0                	test   %eax,%eax
   140002a30:	75 e6                	jne    140002a18 <__pformat_putchars+0xa8>
   140002a32:	e9 63 ff ff ff       	jmp    14000299a <__pformat_putchars+0x2a>
   140002a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002a3e:	00 00 
   140002a40:	85 ff                	test   %edi,%edi
   140002a42:	0f 85 5a ff ff ff    	jne    1400029a2 <__pformat_putchars+0x32>
   140002a48:	83 e8 01             	sub    $0x1,%eax
   140002a4b:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002a4e:	eb 88                	jmp    1400029d8 <__pformat_putchars+0x68>
   140002a50:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140002a57:	eb 99                	jmp    1400029f2 <__pformat_putchars+0x82>
   140002a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002a60 <__pformat_puts>:
   140002a60:	41 54                	push   %r12
   140002a62:	53                   	push   %rbx
   140002a63:	48 83 ec 28          	sub    $0x28,%rsp
   140002a67:	48 8d 05 92 68 00 00 	lea    0x6892(%rip),%rax        # 140009300 <.rdata>
   140002a6e:	49 89 cc             	mov    %rcx,%r12
   140002a71:	48 85 c9             	test   %rcx,%rcx
   140002a74:	48 89 d3             	mov    %rdx,%rbx
   140002a77:	48 63 52 10          	movslq 0x10(%rdx),%rdx
   140002a7b:	4c 0f 44 e0          	cmove  %rax,%r12
   140002a7f:	4c 89 e1             	mov    %r12,%rcx
   140002a82:	85 d2                	test   %edx,%edx
   140002a84:	78 1a                	js     140002aa0 <__pformat_puts+0x40>
   140002a86:	e8 f5 46 00 00       	call   140007180 <strnlen>
   140002a8b:	48 89 c2             	mov    %rax,%rdx
   140002a8e:	49 89 d8             	mov    %rbx,%r8
   140002a91:	4c 89 e1             	mov    %r12,%rcx
   140002a94:	48 83 c4 28          	add    $0x28,%rsp
   140002a98:	5b                   	pop    %rbx
   140002a99:	41 5c                	pop    %r12
   140002a9b:	e9 d0 fe ff ff       	jmp    140002970 <__pformat_putchars>
   140002aa0:	e8 53 47 00 00       	call   1400071f8 <strlen>
   140002aa5:	eb e4                	jmp    140002a8b <__pformat_puts+0x2b>
   140002aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002aae:	00 00 

0000000140002ab0 <__pformat_emit_inf_or_nan>:
   140002ab0:	48 83 ec 38          	sub    $0x38,%rsp
   140002ab4:	45 8b 50 08          	mov    0x8(%r8),%r10d
   140002ab8:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
   140002abf:	ff 
   140002ac0:	85 c9                	test   %ecx,%ecx
   140002ac2:	74 4c                	je     140002b10 <__pformat_emit_inf_or_nan+0x60>
   140002ac4:	c6 44 24 2c 2d       	movb   $0x2d,0x2c(%rsp)
   140002ac9:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140002ace:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002ad3:	41 83 e2 20          	and    $0x20,%r10d
   140002ad7:	31 c9                	xor    %ecx,%ecx
   140002ad9:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
   140002add:	83 e0 df             	and    $0xffffffdf,%eax
   140002ae0:	44 09 d0             	or     %r10d,%eax
   140002ae3:	41 88 04 09          	mov    %al,(%r9,%rcx,1)
   140002ae7:	48 83 c1 01          	add    $0x1,%rcx
   140002aeb:	48 83 f9 03          	cmp    $0x3,%rcx
   140002aef:	75 e8                	jne    140002ad9 <__pformat_emit_inf_or_nan+0x29>
   140002af1:	49 8d 51 03          	lea    0x3(%r9),%rdx
   140002af5:	4c 89 d9             	mov    %r11,%rcx
   140002af8:	4c 29 da             	sub    %r11,%rdx
   140002afb:	e8 70 fe ff ff       	call   140002970 <__pformat_putchars>
   140002b00:	90                   	nop
   140002b01:	48 83 c4 38          	add    $0x38,%rsp
   140002b05:	c3                   	ret    
   140002b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002b0d:	00 00 00 
   140002b10:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
   140002b17:	74 17                	je     140002b30 <__pformat_emit_inf_or_nan+0x80>
   140002b19:	c6 44 24 2c 2b       	movb   $0x2b,0x2c(%rsp)
   140002b1e:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140002b23:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002b28:	eb a9                	jmp    140002ad3 <__pformat_emit_inf_or_nan+0x23>
   140002b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002b30:	41 f6 c2 40          	test   $0x40,%r10b
   140002b34:	74 1a                	je     140002b50 <__pformat_emit_inf_or_nan+0xa0>
   140002b36:	c6 44 24 2c 20       	movb   $0x20,0x2c(%rsp)
   140002b3b:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140002b40:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002b45:	eb 8c                	jmp    140002ad3 <__pformat_emit_inf_or_nan+0x23>
   140002b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002b4e:	00 00 
   140002b50:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002b55:	4d 89 d9             	mov    %r11,%r9
   140002b58:	e9 76 ff ff ff       	jmp    140002ad3 <__pformat_emit_inf_or_nan+0x23>
   140002b5d:	0f 1f 00             	nopl   (%rax)

0000000140002b60 <__pformat_emit_radix_point>:
   140002b60:	55                   	push   %rbp
   140002b61:	41 54                	push   %r12
   140002b63:	57                   	push   %rdi
   140002b64:	56                   	push   %rsi
   140002b65:	53                   	push   %rbx
   140002b66:	48 89 e5             	mov    %rsp,%rbp
   140002b69:	48 83 ec 30          	sub    $0x30,%rsp
   140002b6d:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
   140002b71:	49 89 cc             	mov    %rcx,%r12
   140002b74:	0f 84 96 00 00 00    	je     140002c10 <__pformat_emit_radix_point+0xb0>
   140002b7a:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
   140002b7e:	66 85 d2             	test   %dx,%dx
   140002b81:	74 6d                	je     140002bf0 <__pformat_emit_radix_point+0x90>
   140002b83:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   140002b88:	48 89 e6             	mov    %rsp,%rsi
   140002b8b:	48 83 c0 0f          	add    $0xf,%rax
   140002b8f:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002b93:	e8 a8 fa ff ff       	call   140002640 <___chkstk_ms>
   140002b98:	48 29 c4             	sub    %rax,%rsp
   140002b9b:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
   140002b9f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140002ba6:	00 
   140002ba7:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140002bac:	48 89 d9             	mov    %rbx,%rcx
   140002baf:	e8 ec 4a 00 00       	call   1400076a0 <wcrtomb>
   140002bb4:	85 c0                	test   %eax,%eax
   140002bb6:	0f 8e 94 00 00 00    	jle    140002c50 <__pformat_emit_radix_point+0xf0>
   140002bbc:	83 e8 01             	sub    $0x1,%eax
   140002bbf:	48 8d 7c 03 01       	lea    0x1(%rbx,%rax,1),%rdi
   140002bc4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002bc8:	0f be 0b             	movsbl (%rbx),%ecx
   140002bcb:	48 83 c3 01          	add    $0x1,%rbx
   140002bcf:	4c 89 e2             	mov    %r12,%rdx
   140002bd2:	e8 09 fc ff ff       	call   1400027e0 <__pformat_putc>
   140002bd7:	48 39 fb             	cmp    %rdi,%rbx
   140002bda:	75 ec                	jne    140002bc8 <__pformat_emit_radix_point+0x68>
   140002bdc:	48 89 f4             	mov    %rsi,%rsp
   140002bdf:	48 89 ec             	mov    %rbp,%rsp
   140002be2:	5b                   	pop    %rbx
   140002be3:	5e                   	pop    %rsi
   140002be4:	5f                   	pop    %rdi
   140002be5:	41 5c                	pop    %r12
   140002be7:	5d                   	pop    %rbp
   140002be8:	c3                   	ret    
   140002be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002bf0:	4c 89 e2             	mov    %r12,%rdx
   140002bf3:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140002bf8:	e8 e3 fb ff ff       	call   1400027e0 <__pformat_putc>
   140002bfd:	90                   	nop
   140002bfe:	48 89 ec             	mov    %rbp,%rsp
   140002c01:	5b                   	pop    %rbx
   140002c02:	5e                   	pop    %rsi
   140002c03:	5f                   	pop    %rdi
   140002c04:	41 5c                	pop    %r12
   140002c06:	5d                   	pop    %rbp
   140002c07:	c3                   	ret    
   140002c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002c0f:	00 
   140002c10:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140002c17:	00 
   140002c18:	48 8d 5d f8          	lea    -0x8(%rbp),%rbx
   140002c1c:	e8 ff 45 00 00       	call   140007220 <localeconv>
   140002c21:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
   140002c25:	49 89 d9             	mov    %rbx,%r9
   140002c28:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   140002c2e:	48 8b 10             	mov    (%rax),%rdx
   140002c31:	e8 fa 47 00 00       	call   140007430 <mbrtowc>
   140002c36:	85 c0                	test   %eax,%eax
   140002c38:	7e 2e                	jle    140002c68 <__pformat_emit_radix_point+0x108>
   140002c3a:	0f b7 55 f6          	movzwl -0xa(%rbp),%edx
   140002c3e:	66 41 89 54 24 18    	mov    %dx,0x18(%r12)
   140002c44:	41 89 44 24 14       	mov    %eax,0x14(%r12)
   140002c49:	e9 30 ff ff ff       	jmp    140002b7e <__pformat_emit_radix_point+0x1e>
   140002c4e:	66 90                	xchg   %ax,%ax
   140002c50:	4c 89 e2             	mov    %r12,%rdx
   140002c53:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140002c58:	e8 83 fb ff ff       	call   1400027e0 <__pformat_putc>
   140002c5d:	e9 7a ff ff ff       	jmp    140002bdc <__pformat_emit_radix_point+0x7c>
   140002c62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002c68:	41 0f b7 54 24 18    	movzwl 0x18(%r12),%edx
   140002c6e:	eb d4                	jmp    140002c44 <__pformat_emit_radix_point+0xe4>

0000000140002c70 <__pformat_emit_float>:
   140002c70:	55                   	push   %rbp
   140002c71:	57                   	push   %rdi
   140002c72:	56                   	push   %rsi
   140002c73:	53                   	push   %rbx
   140002c74:	48 83 ec 28          	sub    $0x28,%rsp
   140002c78:	41 8b 41 0c          	mov    0xc(%r9),%eax
   140002c7c:	89 cd                	mov    %ecx,%ebp
   140002c7e:	48 89 d7             	mov    %rdx,%rdi
   140002c81:	44 89 c6             	mov    %r8d,%esi
   140002c84:	4c 89 cb             	mov    %r9,%rbx
   140002c87:	45 85 c0             	test   %r8d,%r8d
   140002c8a:	0f 8e 10 02 00 00    	jle    140002ea0 <__pformat_emit_float+0x230>
   140002c90:	41 39 c0             	cmp    %eax,%r8d
   140002c93:	0f 8e f7 00 00 00    	jle    140002d90 <__pformat_emit_float+0x120>
   140002c99:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002ca0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002ca5:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140002ca9:	74 4d                	je     140002cf8 <__pformat_emit_float+0x88>
   140002cab:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140002cb0:	0f 84 0a 01 00 00    	je     140002dc0 <__pformat_emit_float+0x150>
   140002cb6:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
   140002cbb:	44 8d 46 02          	lea    0x2(%rsi),%r8d
   140002cbf:	4c 0f af c2          	imul   %rdx,%r8
   140002cc3:	89 c2                	mov    %eax,%edx
   140002cc5:	49 c1 e8 21          	shr    $0x21,%r8
   140002cc9:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   140002ccd:	29 c1                	sub    %eax,%ecx
   140002ccf:	41 83 f8 01          	cmp    $0x1,%r8d
   140002cd3:	75 1b                	jne    140002cf0 <__pformat_emit_float+0x80>
   140002cd5:	e9 e6 00 00 00       	jmp    140002dc0 <__pformat_emit_float+0x150>
   140002cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ce0:	83 ea 01             	sub    $0x1,%edx
   140002ce3:	89 c8                	mov    %ecx,%eax
   140002ce5:	01 d0                	add    %edx,%eax
   140002ce7:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002cea:	0f 84 2a 03 00 00    	je     14000301a <__pformat_emit_float+0x3aa>
   140002cf0:	85 d2                	test   %edx,%edx
   140002cf2:	7f ec                	jg     140002ce0 <__pformat_emit_float+0x70>
   140002cf4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002cf8:	85 ed                	test   %ebp,%ebp
   140002cfa:	0f 85 22 01 00 00    	jne    140002e22 <__pformat_emit_float+0x1b2>
   140002d00:	8b 53 08             	mov    0x8(%rbx),%edx
   140002d03:	f6 c6 01             	test   $0x1,%dh
   140002d06:	0f 85 84 02 00 00    	jne    140002f90 <__pformat_emit_float+0x320>
   140002d0c:	83 e2 40             	and    $0x40,%edx
   140002d0f:	0f 85 f3 02 00 00    	jne    140003008 <__pformat_emit_float+0x398>
   140002d15:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002d18:	85 c0                	test   %eax,%eax
   140002d1a:	7e 15                	jle    140002d31 <__pformat_emit_float+0xc1>
   140002d1c:	8b 53 08             	mov    0x8(%rbx),%edx
   140002d1f:	81 e2 00 06 00 00    	and    $0x600,%edx
   140002d25:	81 fa 00 02 00 00    	cmp    $0x200,%edx
   140002d2b:	0f 84 77 02 00 00    	je     140002fa8 <__pformat_emit_float+0x338>
   140002d31:	48 8d 6b 20          	lea    0x20(%rbx),%rbp
   140002d35:	85 f6                	test   %esi,%esi
   140002d37:	0f 8e bb 01 00 00    	jle    140002ef8 <__pformat_emit_float+0x288>
   140002d3d:	0f 1f 00             	nopl   (%rax)
   140002d40:	0f b6 07             	movzbl (%rdi),%eax
   140002d43:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002d48:	84 c0                	test   %al,%al
   140002d4a:	74 07                	je     140002d53 <__pformat_emit_float+0xe3>
   140002d4c:	48 83 c7 01          	add    $0x1,%rdi
   140002d50:	0f be c8             	movsbl %al,%ecx
   140002d53:	48 89 da             	mov    %rbx,%rdx
   140002d56:	e8 85 fa ff ff       	call   1400027e0 <__pformat_putc>
   140002d5b:	83 ee 01             	sub    $0x1,%esi
   140002d5e:	0f 84 d4 00 00 00    	je     140002e38 <__pformat_emit_float+0x1c8>
   140002d64:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140002d68:	74 d6                	je     140002d40 <__pformat_emit_float+0xd0>
   140002d6a:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140002d6f:	74 cf                	je     140002d40 <__pformat_emit_float+0xd0>
   140002d71:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
   140002d77:	3d 55 55 55 55       	cmp    $0x55555555,%eax
   140002d7c:	77 c2                	ja     140002d40 <__pformat_emit_float+0xd0>
   140002d7e:	49 89 d8             	mov    %rbx,%r8
   140002d81:	ba 01 00 00 00       	mov    $0x1,%edx
   140002d86:	48 89 e9             	mov    %rbp,%rcx
   140002d89:	e8 b2 fa ff ff       	call   140002840 <__pformat_wputchars>
   140002d8e:	eb b0                	jmp    140002d40 <__pformat_emit_float+0xd0>
   140002d90:	41 8b 51 10          	mov    0x10(%r9),%edx
   140002d94:	44 29 c0             	sub    %r8d,%eax
   140002d97:	39 d0                	cmp    %edx,%eax
   140002d99:	0f 8e fa fe ff ff    	jle    140002c99 <__pformat_emit_float+0x29>
   140002d9f:	29 d0                	sub    %edx,%eax
   140002da1:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002da4:	85 d2                	test   %edx,%edx
   140002da6:	0f 8e b4 01 00 00    	jle    140002f60 <__pformat_emit_float+0x2f0>
   140002dac:	83 e8 01             	sub    $0x1,%eax
   140002daf:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002db2:	85 f6                	test   %esi,%esi
   140002db4:	7e 0a                	jle    140002dc0 <__pformat_emit_float+0x150>
   140002db6:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140002dba:	0f 85 eb fe ff ff    	jne    140002cab <__pformat_emit_float+0x3b>
   140002dc0:	85 c0                	test   %eax,%eax
   140002dc2:	0f 8e 30 ff ff ff    	jle    140002cf8 <__pformat_emit_float+0x88>
   140002dc8:	85 ed                	test   %ebp,%ebp
   140002dca:	0f 85 f8 00 00 00    	jne    140002ec8 <__pformat_emit_float+0x258>
   140002dd0:	8b 53 08             	mov    0x8(%rbx),%edx
   140002dd3:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
   140002dd9:	0f 84 f1 01 00 00    	je     140002fd0 <__pformat_emit_float+0x360>
   140002ddf:	83 e8 01             	sub    $0x1,%eax
   140002de2:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002de5:	0f 84 18 ff ff ff    	je     140002d03 <__pformat_emit_float+0x93>
   140002deb:	f6 c6 06             	test   $0x6,%dh
   140002dee:	0f 85 0f ff ff ff    	jne    140002d03 <__pformat_emit_float+0x93>
   140002df4:	83 e8 01             	sub    $0x1,%eax
   140002df7:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002e00:	48 89 da             	mov    %rbx,%rdx
   140002e03:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002e08:	e8 d3 f9 ff ff       	call   1400027e0 <__pformat_putc>
   140002e0d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002e10:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002e13:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002e16:	85 c0                	test   %eax,%eax
   140002e18:	7f e6                	jg     140002e00 <__pformat_emit_float+0x190>
   140002e1a:	85 ed                	test   %ebp,%ebp
   140002e1c:	0f 84 de fe ff ff    	je     140002d00 <__pformat_emit_float+0x90>
   140002e22:	48 89 da             	mov    %rbx,%rdx
   140002e25:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140002e2a:	e8 b1 f9 ff ff       	call   1400027e0 <__pformat_putc>
   140002e2f:	e9 e1 fe ff ff       	jmp    140002d15 <__pformat_emit_float+0xa5>
   140002e34:	0f 1f 40 00          	nopl   0x0(%rax)
   140002e38:	8b 43 10             	mov    0x10(%rbx),%eax
   140002e3b:	85 c0                	test   %eax,%eax
   140002e3d:	7f 19                	jg     140002e58 <__pformat_emit_float+0x1e8>
   140002e3f:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140002e43:	75 13                	jne    140002e58 <__pformat_emit_float+0x1e8>
   140002e45:	83 e8 01             	sub    $0x1,%eax
   140002e48:	89 43 10             	mov    %eax,0x10(%rbx)
   140002e4b:	48 83 c4 28          	add    $0x28,%rsp
   140002e4f:	5b                   	pop    %rbx
   140002e50:	5e                   	pop    %rsi
   140002e51:	5f                   	pop    %rdi
   140002e52:	5d                   	pop    %rbp
   140002e53:	c3                   	ret    
   140002e54:	0f 1f 40 00          	nopl   0x0(%rax)
   140002e58:	48 89 d9             	mov    %rbx,%rcx
   140002e5b:	e8 00 fd ff ff       	call   140002b60 <__pformat_emit_radix_point>
   140002e60:	eb 21                	jmp    140002e83 <__pformat_emit_float+0x213>
   140002e62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002e68:	0f b6 07             	movzbl (%rdi),%eax
   140002e6b:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002e70:	84 c0                	test   %al,%al
   140002e72:	74 07                	je     140002e7b <__pformat_emit_float+0x20b>
   140002e74:	48 83 c7 01          	add    $0x1,%rdi
   140002e78:	0f be c8             	movsbl %al,%ecx
   140002e7b:	48 89 da             	mov    %rbx,%rdx
   140002e7e:	e8 5d f9 ff ff       	call   1400027e0 <__pformat_putc>
   140002e83:	8b 43 10             	mov    0x10(%rbx),%eax
   140002e86:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002e89:	89 53 10             	mov    %edx,0x10(%rbx)
   140002e8c:	85 c0                	test   %eax,%eax
   140002e8e:	7f d8                	jg     140002e68 <__pformat_emit_float+0x1f8>
   140002e90:	48 83 c4 28          	add    $0x28,%rsp
   140002e94:	5b                   	pop    %rbx
   140002e95:	5e                   	pop    %rsi
   140002e96:	5f                   	pop    %rdi
   140002e97:	5d                   	pop    %rbp
   140002e98:	c3                   	ret    
   140002e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ea0:	85 c0                	test   %eax,%eax
   140002ea2:	0f 8e 48 01 00 00    	jle    140002ff0 <__pformat_emit_float+0x380>
   140002ea8:	83 e8 01             	sub    $0x1,%eax
   140002eab:	8b 53 10             	mov    0x10(%rbx),%edx
   140002eae:	39 d0                	cmp    %edx,%eax
   140002eb0:	0f 8f e9 fe ff ff    	jg     140002d9f <__pformat_emit_float+0x12f>
   140002eb6:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002ebd:	e9 36 fe ff ff       	jmp    140002cf8 <__pformat_emit_float+0x88>
   140002ec2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ec8:	83 e8 01             	sub    $0x1,%eax
   140002ecb:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002ece:	0f 84 4e ff ff ff    	je     140002e22 <__pformat_emit_float+0x1b2>
   140002ed4:	f7 43 08 00 06 00 00 	testl  $0x600,0x8(%rbx)
   140002edb:	0f 84 13 ff ff ff    	je     140002df4 <__pformat_emit_float+0x184>
   140002ee1:	48 89 da             	mov    %rbx,%rdx
   140002ee4:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140002ee9:	e8 f2 f8 ff ff       	call   1400027e0 <__pformat_putc>
   140002eee:	e9 22 fe ff ff       	jmp    140002d15 <__pformat_emit_float+0xa5>
   140002ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002ef8:	48 89 da             	mov    %rbx,%rdx
   140002efb:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002f00:	e8 db f8 ff ff       	call   1400027e0 <__pformat_putc>
   140002f05:	8b 43 10             	mov    0x10(%rbx),%eax
   140002f08:	85 c0                	test   %eax,%eax
   140002f0a:	7f 14                	jg     140002f20 <__pformat_emit_float+0x2b0>
   140002f0c:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140002f10:	75 0e                	jne    140002f20 <__pformat_emit_float+0x2b0>
   140002f12:	85 f6                	test   %esi,%esi
   140002f14:	75 1d                	jne    140002f33 <__pformat_emit_float+0x2c3>
   140002f16:	e9 2a ff ff ff       	jmp    140002e45 <__pformat_emit_float+0x1d5>
   140002f1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002f20:	48 89 d9             	mov    %rbx,%rcx
   140002f23:	e8 38 fc ff ff       	call   140002b60 <__pformat_emit_radix_point>
   140002f28:	85 f6                	test   %esi,%esi
   140002f2a:	0f 84 53 ff ff ff    	je     140002e83 <__pformat_emit_float+0x213>
   140002f30:	8b 43 10             	mov    0x10(%rbx),%eax
   140002f33:	01 f0                	add    %esi,%eax
   140002f35:	89 43 10             	mov    %eax,0x10(%rbx)
   140002f38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002f3f:	00 
   140002f40:	48 89 da             	mov    %rbx,%rdx
   140002f43:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002f48:	e8 93 f8 ff ff       	call   1400027e0 <__pformat_putc>
   140002f4d:	83 c6 01             	add    $0x1,%esi
   140002f50:	75 ee                	jne    140002f40 <__pformat_emit_float+0x2d0>
   140002f52:	e9 2c ff ff ff       	jmp    140002e83 <__pformat_emit_float+0x213>
   140002f57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002f5e:	00 00 
   140002f60:	8b 53 08             	mov    0x8(%rbx),%edx
   140002f63:	f6 c6 08             	test   $0x8,%dh
   140002f66:	0f 85 40 fe ff ff    	jne    140002dac <__pformat_emit_float+0x13c>
   140002f6c:	85 f6                	test   %esi,%esi
   140002f6e:	0f 8e 54 fe ff ff    	jle    140002dc8 <__pformat_emit_float+0x158>
   140002f74:	80 e6 10             	and    $0x10,%dh
   140002f77:	0f 84 4b fe ff ff    	je     140002dc8 <__pformat_emit_float+0x158>
   140002f7d:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140002f82:	0f 84 40 fe ff ff    	je     140002dc8 <__pformat_emit_float+0x158>
   140002f88:	e9 29 fd ff ff       	jmp    140002cb6 <__pformat_emit_float+0x46>
   140002f8d:	0f 1f 00             	nopl   (%rax)
   140002f90:	48 89 da             	mov    %rbx,%rdx
   140002f93:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140002f98:	e8 43 f8 ff ff       	call   1400027e0 <__pformat_putc>
   140002f9d:	e9 73 fd ff ff       	jmp    140002d15 <__pformat_emit_float+0xa5>
   140002fa2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002fa8:	83 e8 01             	sub    $0x1,%eax
   140002fab:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002fae:	66 90                	xchg   %ax,%ax
   140002fb0:	48 89 da             	mov    %rbx,%rdx
   140002fb3:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002fb8:	e8 23 f8 ff ff       	call   1400027e0 <__pformat_putc>
   140002fbd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002fc0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002fc3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002fc6:	85 c0                	test   %eax,%eax
   140002fc8:	7f e6                	jg     140002fb0 <__pformat_emit_float+0x340>
   140002fca:	e9 62 fd ff ff       	jmp    140002d31 <__pformat_emit_float+0xc1>
   140002fcf:	90                   	nop
   140002fd0:	f6 c6 06             	test   $0x6,%dh
   140002fd3:	0f 85 2a fd ff ff    	jne    140002d03 <__pformat_emit_float+0x93>
   140002fd9:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002fdc:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140002fdf:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140002fe2:	85 c0                	test   %eax,%eax
   140002fe4:	0f 8e 19 fd ff ff    	jle    140002d03 <__pformat_emit_float+0x93>
   140002fea:	e9 11 fe ff ff       	jmp    140002e00 <__pformat_emit_float+0x190>
   140002fef:	90                   	nop
   140002ff0:	0f 84 b5 fe ff ff    	je     140002eab <__pformat_emit_float+0x23b>
   140002ff6:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002ffd:	e9 f6 fc ff ff       	jmp    140002cf8 <__pformat_emit_float+0x88>
   140003002:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003008:	48 89 da             	mov    %rbx,%rdx
   14000300b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003010:	e8 cb f7 ff ff       	call   1400027e0 <__pformat_putc>
   140003015:	e9 fb fc ff ff       	jmp    140002d15 <__pformat_emit_float+0xa5>
   14000301a:	89 d0                	mov    %edx,%eax
   14000301c:	e9 9f fd ff ff       	jmp    140002dc0 <__pformat_emit_float+0x150>
   140003021:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003028:	00 00 00 00 
   14000302c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140003030 <__pformat_float>:
   140003030:	41 54                	push   %r12
   140003032:	53                   	push   %rbx
   140003033:	48 83 ec 68          	sub    $0x68,%rsp
   140003037:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   14000303b:	db 29                	fldt   (%rcx)
   14000303d:	48 89 d3             	mov    %rdx,%rbx
   140003040:	45 85 c0             	test   %r8d,%r8d
   140003043:	79 0d                	jns    140003052 <__pformat_float+0x22>
   140003045:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   14000304c:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140003052:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003057:	db 7c 24 50          	fstpt  0x50(%rsp)
   14000305b:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
   140003061:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003066:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   14000306b:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003070:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003075:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
   14000307a:	e8 51 f6 ff ff       	call   1400026d0 <__pformat_cvt>
   14000307f:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140003084:	49 89 c4             	mov    %rax,%r12
   140003087:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   14000308e:	74 48                	je     1400030d8 <__pformat_float+0xa8>
   140003090:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003094:	49 89 d9             	mov    %rbx,%r9
   140003097:	48 89 c2             	mov    %rax,%rdx
   14000309a:	e8 d1 fb ff ff       	call   140002c70 <__pformat_emit_float>
   14000309f:	eb 14                	jmp    1400030b5 <__pformat_float+0x85>
   1400030a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400030a8:	48 89 da             	mov    %rbx,%rdx
   1400030ab:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400030b0:	e8 2b f7 ff ff       	call   1400027e0 <__pformat_putc>
   1400030b5:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400030b8:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400030bb:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400030be:	85 c0                	test   %eax,%eax
   1400030c0:	7f e6                	jg     1400030a8 <__pformat_float+0x78>
   1400030c2:	4c 89 e1             	mov    %r12,%rcx
   1400030c5:	e8 f6 1a 00 00       	call   140004bc0 <__freedtoa>
   1400030ca:	90                   	nop
   1400030cb:	48 83 c4 68          	add    $0x68,%rsp
   1400030cf:	5b                   	pop    %rbx
   1400030d0:	41 5c                	pop    %r12
   1400030d2:	c3                   	ret    
   1400030d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400030d8:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   1400030dc:	49 89 d8             	mov    %rbx,%r8
   1400030df:	48 89 c2             	mov    %rax,%rdx
   1400030e2:	e8 c9 f9 ff ff       	call   140002ab0 <__pformat_emit_inf_or_nan>
   1400030e7:	4c 89 e1             	mov    %r12,%rcx
   1400030ea:	e8 d1 1a 00 00       	call   140004bc0 <__freedtoa>
   1400030ef:	90                   	nop
   1400030f0:	48 83 c4 68          	add    $0x68,%rsp
   1400030f4:	5b                   	pop    %rbx
   1400030f5:	41 5c                	pop    %r12
   1400030f7:	c3                   	ret    
   1400030f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400030ff:	00 

0000000140003100 <__pformat_int.isra.0>:
   140003100:	55                   	push   %rbp
   140003101:	41 57                	push   %r15
   140003103:	41 56                	push   %r14
   140003105:	41 55                	push   %r13
   140003107:	41 54                	push   %r12
   140003109:	57                   	push   %rdi
   14000310a:	56                   	push   %rsi
   14000310b:	53                   	push   %rbx
   14000310c:	48 83 ec 28          	sub    $0x28,%rsp
   140003110:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140003117:	00 
   140003118:	b8 00 00 00 00       	mov    $0x0,%eax
   14000311d:	44 8b 6a 10          	mov    0x10(%rdx),%r13d
   140003121:	44 8b 52 08          	mov    0x8(%rdx),%r10d
   140003125:	45 85 ed             	test   %r13d,%r13d
   140003128:	41 0f 49 c5          	cmovns %r13d,%eax
   14000312c:	48 89 d3             	mov    %rdx,%rbx
   14000312f:	83 c0 17             	add    $0x17,%eax
   140003132:	41 f7 c2 00 10 00 00 	test   $0x1000,%r10d
   140003139:	74 0b                	je     140003146 <__pformat_int.isra.0+0x46>
   14000313b:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
   140003140:	0f 85 f2 01 00 00    	jne    140003338 <__pformat_int.isra.0+0x238>
   140003146:	44 8b 5b 0c          	mov    0xc(%rbx),%r11d
   14000314a:	41 39 c3             	cmp    %eax,%r11d
   14000314d:	41 0f 4d c3          	cmovge %r11d,%eax
   140003151:	48 98                	cltq   
   140003153:	48 83 c0 0f          	add    $0xf,%rax
   140003157:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   14000315b:	e8 e0 f4 ff ff       	call   140002640 <___chkstk_ms>
   140003160:	48 29 c4             	sub    %rax,%rsp
   140003163:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140003168:	41 f6 c2 80          	test   $0x80,%r10b
   14000316c:	74 11                	je     14000317f <__pformat_int.isra.0+0x7f>
   14000316e:	48 85 c9             	test   %rcx,%rcx
   140003171:	0f 88 f9 01 00 00    	js     140003370 <__pformat_int.isra.0+0x270>
   140003177:	41 80 e2 7f          	and    $0x7f,%r10b
   14000317b:	44 89 53 08          	mov    %r10d,0x8(%rbx)
   14000317f:	48 85 c9             	test   %rcx,%rcx
   140003182:	0f 84 c8 02 00 00    	je     140003450 <__pformat_int.isra.0+0x350>
   140003188:	49 be 03 00 00 00 00 	movabs $0x8000000000000003,%r14
   14000318f:	00 00 80 
   140003192:	44 89 d6             	mov    %r10d,%esi
   140003195:	49 89 f8             	mov    %rdi,%r8
   140003198:	49 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r9
   14000319f:	cc cc cc 
   1400031a2:	81 e6 00 10 00 00    	and    $0x1000,%esi
   1400031a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400031af:	00 
   1400031b0:	4d 8d 60 01          	lea    0x1(%r8),%r12
   1400031b4:	4c 39 c7             	cmp    %r8,%rdi
   1400031b7:	74 2f                	je     1400031e8 <__pformat_int.isra.0+0xe8>
   1400031b9:	85 f6                	test   %esi,%esi
   1400031bb:	74 2b                	je     1400031e8 <__pformat_int.isra.0+0xe8>
   1400031bd:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   1400031c2:	74 24                	je     1400031e8 <__pformat_int.isra.0+0xe8>
   1400031c4:	4c 89 c0             	mov    %r8,%rax
   1400031c7:	48 29 f8             	sub    %rdi,%rax
   1400031ca:	4c 21 f0             	and    %r14,%rax
   1400031cd:	48 83 f8 03          	cmp    $0x3,%rax
   1400031d1:	75 15                	jne    1400031e8 <__pformat_int.isra.0+0xe8>
   1400031d3:	49 8d 40 02          	lea    0x2(%r8),%rax
   1400031d7:	41 c6 00 2c          	movb   $0x2c,(%r8)
   1400031db:	4d 89 e0             	mov    %r12,%r8
   1400031de:	49 89 c4             	mov    %rax,%r12
   1400031e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400031e8:	48 89 c8             	mov    %rcx,%rax
   1400031eb:	49 89 cf             	mov    %rcx,%r15
   1400031ee:	49 f7 e1             	mul    %r9
   1400031f1:	48 c1 ea 03          	shr    $0x3,%rdx
   1400031f5:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
   1400031f9:	48 01 c0             	add    %rax,%rax
   1400031fc:	49 29 c7             	sub    %rax,%r15
   1400031ff:	4c 89 f8             	mov    %r15,%rax
   140003202:	83 c0 30             	add    $0x30,%eax
   140003205:	41 88 00             	mov    %al,(%r8)
   140003208:	48 83 f9 09          	cmp    $0x9,%rcx
   14000320c:	76 12                	jbe    140003220 <__pformat_int.isra.0+0x120>
   14000320e:	48 89 d1             	mov    %rdx,%rcx
   140003211:	4d 89 e0             	mov    %r12,%r8
   140003214:	eb 9a                	jmp    1400031b0 <__pformat_int.isra.0+0xb0>
   140003216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000321d:	00 00 00 
   140003220:	45 85 ed             	test   %r13d,%r13d
   140003223:	0f 8e 57 01 00 00    	jle    140003380 <__pformat_int.isra.0+0x280>
   140003229:	4c 89 e0             	mov    %r12,%rax
   14000322c:	44 89 ea             	mov    %r13d,%edx
   14000322f:	48 29 f8             	sub    %rdi,%rax
   140003232:	29 c2                	sub    %eax,%edx
   140003234:	89 d0                	mov    %edx,%eax
   140003236:	85 d2                	test   %edx,%edx
   140003238:	7e 2b                	jle    140003265 <__pformat_int.isra.0+0x165>
   14000323a:	8d 48 ff             	lea    -0x1(%rax),%ecx
   14000323d:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140003240:	49 8d 54 04 01       	lea    0x1(%r12,%rax,1),%rdx
   140003245:	4c 89 e0             	mov    %r12,%rax
   140003248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000324f:	00 
   140003250:	48 83 c0 01          	add    $0x1,%rax
   140003254:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
   140003258:	48 39 d0             	cmp    %rdx,%rax
   14000325b:	75 f3                	jne    140003250 <__pformat_int.isra.0+0x150>
   14000325d:	48 63 c1             	movslq %ecx,%rax
   140003260:	4d 8d 64 04 01       	lea    0x1(%r12,%rax,1),%r12
   140003265:	4c 39 e7             	cmp    %r12,%rdi
   140003268:	0f 84 2a 01 00 00    	je     140003398 <__pformat_int.isra.0+0x298>
   14000326e:	45 85 db             	test   %r11d,%r11d
   140003271:	7e 3d                	jle    1400032b0 <__pformat_int.isra.0+0x1b0>
   140003273:	4c 89 e0             	mov    %r12,%rax
   140003276:	48 29 f8             	sub    %rdi,%rax
   140003279:	41 29 c3             	sub    %eax,%r11d
   14000327c:	44 89 5b 0c          	mov    %r11d,0xc(%rbx)
   140003280:	45 85 db             	test   %r11d,%r11d
   140003283:	7e 2b                	jle    1400032b0 <__pformat_int.isra.0+0x1b0>
   140003285:	41 f7 c2 c0 01 00 00 	test   $0x1c0,%r10d
   14000328c:	0f 85 1e 01 00 00    	jne    1400033b0 <__pformat_int.isra.0+0x2b0>
   140003292:	45 85 ed             	test   %r13d,%r13d
   140003295:	0f 88 26 01 00 00    	js     1400033c1 <__pformat_int.isra.0+0x2c1>
   14000329b:	41 f7 c2 00 04 00 00 	test   $0x400,%r10d
   1400032a2:	0f 84 68 01 00 00    	je     140003410 <__pformat_int.isra.0+0x310>
   1400032a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400032af:	00 
   1400032b0:	41 f6 c2 80          	test   $0x80,%r10b
   1400032b4:	74 6a                	je     140003320 <__pformat_int.isra.0+0x220>
   1400032b6:	41 c6 04 24 2d       	movb   $0x2d,(%r12)
   1400032bb:	49 8d 74 24 01       	lea    0x1(%r12),%rsi
   1400032c0:	48 39 f7             	cmp    %rsi,%rdi
   1400032c3:	73 38                	jae    1400032fd <__pformat_int.isra.0+0x1fd>
   1400032c5:	0f 1f 00             	nopl   (%rax)
   1400032c8:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   1400032cc:	48 83 ee 01          	sub    $0x1,%rsi
   1400032d0:	48 89 da             	mov    %rbx,%rdx
   1400032d3:	e8 08 f5 ff ff       	call   1400027e0 <__pformat_putc>
   1400032d8:	48 39 f7             	cmp    %rsi,%rdi
   1400032db:	75 eb                	jne    1400032c8 <__pformat_int.isra.0+0x1c8>
   1400032dd:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400032e0:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400032e3:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400032e6:	85 c0                	test   %eax,%eax
   1400032e8:	7e 20                	jle    14000330a <__pformat_int.isra.0+0x20a>
   1400032ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400032f0:	48 89 da             	mov    %rbx,%rdx
   1400032f3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400032f8:	e8 e3 f4 ff ff       	call   1400027e0 <__pformat_putc>
   1400032fd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003300:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003303:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003306:	85 c0                	test   %eax,%eax
   140003308:	7f e6                	jg     1400032f0 <__pformat_int.isra.0+0x1f0>
   14000330a:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
   14000330e:	5b                   	pop    %rbx
   14000330f:	5e                   	pop    %rsi
   140003310:	5f                   	pop    %rdi
   140003311:	41 5c                	pop    %r12
   140003313:	41 5d                	pop    %r13
   140003315:	41 5e                	pop    %r14
   140003317:	41 5f                	pop    %r15
   140003319:	5d                   	pop    %rbp
   14000331a:	c3                   	ret    
   14000331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003320:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
   140003327:	74 27                	je     140003350 <__pformat_int.isra.0+0x250>
   140003329:	41 c6 04 24 2b       	movb   $0x2b,(%r12)
   14000332e:	49 8d 74 24 01       	lea    0x1(%r12),%rsi
   140003333:	eb 8b                	jmp    1400032c0 <__pformat_int.isra.0+0x1c0>
   140003335:	0f 1f 00             	nopl   (%rax)
   140003338:	89 c2                	mov    %eax,%edx
   14000333a:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
   140003340:	49 0f af d0          	imul   %r8,%rdx
   140003344:	48 c1 ea 21          	shr    $0x21,%rdx
   140003348:	01 d0                	add    %edx,%eax
   14000334a:	e9 f7 fd ff ff       	jmp    140003146 <__pformat_int.isra.0+0x46>
   14000334f:	90                   	nop
   140003350:	41 83 e2 40          	and    $0x40,%r10d
   140003354:	4c 89 e6             	mov    %r12,%rsi
   140003357:	0f 84 63 ff ff ff    	je     1400032c0 <__pformat_int.isra.0+0x1c0>
   14000335d:	41 c6 04 24 20       	movb   $0x20,(%r12)
   140003362:	48 83 c6 01          	add    $0x1,%rsi
   140003366:	e9 55 ff ff ff       	jmp    1400032c0 <__pformat_int.isra.0+0x1c0>
   14000336b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003370:	48 f7 d9             	neg    %rcx
   140003373:	e9 10 fe ff ff       	jmp    140003188 <__pformat_int.isra.0+0x88>
   140003378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000337f:	00 
   140003380:	4c 39 e7             	cmp    %r12,%rdi
   140003383:	0f 85 e5 fe ff ff    	jne    14000326e <__pformat_int.isra.0+0x16e>
   140003389:	45 85 ed             	test   %r13d,%r13d
   14000338c:	0f 84 dc fe ff ff    	je     14000326e <__pformat_int.isra.0+0x16e>
   140003392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003398:	41 c6 04 24 30       	movb   $0x30,(%r12)
   14000339d:	49 83 c4 01          	add    $0x1,%r12
   1400033a1:	e9 c8 fe ff ff       	jmp    14000326e <__pformat_int.isra.0+0x16e>
   1400033a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400033ad:	00 00 00 
   1400033b0:	41 83 eb 01          	sub    $0x1,%r11d
   1400033b4:	44 89 5b 0c          	mov    %r11d,0xc(%rbx)
   1400033b8:	45 85 ed             	test   %r13d,%r13d
   1400033bb:	0f 89 da fe ff ff    	jns    14000329b <__pformat_int.isra.0+0x19b>
   1400033c1:	44 89 d0             	mov    %r10d,%eax
   1400033c4:	25 00 06 00 00       	and    $0x600,%eax
   1400033c9:	3d 00 02 00 00       	cmp    $0x200,%eax
   1400033ce:	0f 85 c7 fe ff ff    	jne    14000329b <__pformat_int.isra.0+0x19b>
   1400033d4:	8b 53 0c             	mov    0xc(%rbx),%edx
   1400033d7:	8d 42 ff             	lea    -0x1(%rdx),%eax
   1400033da:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400033dd:	85 d2                	test   %edx,%edx
   1400033df:	0f 8e cb fe ff ff    	jle    1400032b0 <__pformat_int.isra.0+0x1b0>
   1400033e5:	89 c1                	mov    %eax,%ecx
   1400033e7:	4c 89 e0             	mov    %r12,%rax
   1400033ea:	49 8d 54 0c 01       	lea    0x1(%r12,%rcx,1),%rdx
   1400033ef:	90                   	nop
   1400033f0:	48 83 c0 01          	add    $0x1,%rax
   1400033f4:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
   1400033f8:	48 39 d0             	cmp    %rdx,%rax
   1400033fb:	75 f3                	jne    1400033f0 <__pformat_int.isra.0+0x2f0>
   1400033fd:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140003404:	4d 8d 64 0c 01       	lea    0x1(%r12,%rcx,1),%r12
   140003409:	e9 a2 fe ff ff       	jmp    1400032b0 <__pformat_int.isra.0+0x1b0>
   14000340e:	66 90                	xchg   %ax,%ax
   140003410:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003413:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003416:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003419:	85 c0                	test   %eax,%eax
   14000341b:	0f 8e 8f fe ff ff    	jle    1400032b0 <__pformat_int.isra.0+0x1b0>
   140003421:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003428:	48 89 da             	mov    %rbx,%rdx
   14000342b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003430:	e8 ab f3 ff ff       	call   1400027e0 <__pformat_putc>
   140003435:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003438:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000343b:	89 53 0c             	mov    %edx,0xc(%rbx)
   14000343e:	85 c0                	test   %eax,%eax
   140003440:	7f e6                	jg     140003428 <__pformat_int.isra.0+0x328>
   140003442:	44 8b 53 08          	mov    0x8(%rbx),%r10d
   140003446:	e9 65 fe ff ff       	jmp    1400032b0 <__pformat_int.isra.0+0x1b0>
   14000344b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003450:	45 85 ed             	test   %r13d,%r13d
   140003453:	7e 0e                	jle    140003463 <__pformat_int.isra.0+0x363>
   140003455:	44 89 ea             	mov    %r13d,%edx
   140003458:	49 89 fc             	mov    %rdi,%r12
   14000345b:	44 89 e8             	mov    %r13d,%eax
   14000345e:	e9 d7 fd ff ff       	jmp    14000323a <__pformat_int.isra.0+0x13a>
   140003463:	49 89 fc             	mov    %rdi,%r12
   140003466:	e9 1e ff ff ff       	jmp    140003389 <__pformat_int.isra.0+0x289>
   14000346b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140003470 <__pformat_emit_efloat>:
   140003470:	41 55                	push   %r13
   140003472:	41 54                	push   %r12
   140003474:	53                   	push   %rbx
   140003475:	48 83 ec 20          	sub    $0x20,%rsp
   140003479:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   14000347f:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140003483:	4d 89 cc             	mov    %r9,%r12
   140003486:	4c 63 e8             	movslq %eax,%r13
   140003489:	c1 f8 1f             	sar    $0x1f,%eax
   14000348c:	4d 69 c5 67 66 66 66 	imul   $0x66666667,%r13,%r8
   140003493:	49 c1 f8 22          	sar    $0x22,%r8
   140003497:	41 29 c0             	sub    %eax,%r8d
   14000349a:	74 22                	je     1400034be <__pformat_emit_efloat+0x4e>
   14000349c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400034a0:	49 63 c0             	movslq %r8d,%rax
   1400034a3:	41 c1 f8 1f          	sar    $0x1f,%r8d
   1400034a7:	41 83 c2 01          	add    $0x1,%r10d
   1400034ab:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   1400034b2:	48 c1 f8 22          	sar    $0x22,%rax
   1400034b6:	44 29 c0             	sub    %r8d,%eax
   1400034b9:	41 89 c0             	mov    %eax,%r8d
   1400034bc:	75 e2                	jne    1400034a0 <__pformat_emit_efloat+0x30>
   1400034be:	41 8b 5c 24 2c       	mov    0x2c(%r12),%ebx
   1400034c3:	83 fb ff             	cmp    $0xffffffff,%ebx
   1400034c6:	75 0e                	jne    1400034d6 <__pformat_emit_efloat+0x66>
   1400034c8:	41 c7 44 24 2c 02 00 	movl   $0x2,0x2c(%r12)
   1400034cf:	00 00 
   1400034d1:	bb 02 00 00 00       	mov    $0x2,%ebx
   1400034d6:	41 39 da             	cmp    %ebx,%r10d
   1400034d9:	45 8b 4c 24 0c       	mov    0xc(%r12),%r9d
   1400034de:	41 0f 4d da          	cmovge %r10d,%ebx
   1400034e2:	44 89 c8             	mov    %r9d,%eax
   1400034e5:	44 8d 43 02          	lea    0x2(%rbx),%r8d
   1400034e9:	44 29 c0             	sub    %r8d,%eax
   1400034ec:	45 39 c1             	cmp    %r8d,%r9d
   1400034ef:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   1400034f5:	4d 89 e1             	mov    %r12,%r9
   1400034f8:	41 0f 4e c0          	cmovle %r8d,%eax
   1400034fc:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140003502:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
   140003507:	e8 64 f7 ff ff       	call   140002c70 <__pformat_emit_float>
   14000350c:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   140003511:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
   140003516:	4c 89 e2             	mov    %r12,%rdx
   140003519:	41 89 44 24 10       	mov    %eax,0x10(%r12)
   14000351e:	89 c8                	mov    %ecx,%eax
   140003520:	83 e1 20             	and    $0x20,%ecx
   140003523:	0d c0 01 00 00       	or     $0x1c0,%eax
   140003528:	83 c9 45             	or     $0x45,%ecx
   14000352b:	41 89 44 24 08       	mov    %eax,0x8(%r12)
   140003530:	e8 ab f2 ff ff       	call   1400027e0 <__pformat_putc>
   140003535:	44 8d 53 01          	lea    0x1(%rbx),%r10d
   140003539:	4c 89 e2             	mov    %r12,%rdx
   14000353c:	4c 89 e9             	mov    %r13,%rcx
   14000353f:	45 01 54 24 0c       	add    %r10d,0xc(%r12)
   140003544:	48 83 c4 20          	add    $0x20,%rsp
   140003548:	5b                   	pop    %rbx
   140003549:	41 5c                	pop    %r12
   14000354b:	41 5d                	pop    %r13
   14000354d:	e9 ae fb ff ff       	jmp    140003100 <__pformat_int.isra.0>
   140003552:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003559:	00 00 00 00 
   14000355d:	0f 1f 00             	nopl   (%rax)

0000000140003560 <__pformat_efloat>:
   140003560:	41 54                	push   %r12
   140003562:	53                   	push   %rbx
   140003563:	48 83 ec 68          	sub    $0x68,%rsp
   140003567:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   14000356b:	db 29                	fldt   (%rcx)
   14000356d:	48 89 d3             	mov    %rdx,%rbx
   140003570:	45 85 c0             	test   %r8d,%r8d
   140003573:	78 6b                	js     1400035e0 <__pformat_efloat+0x80>
   140003575:	41 83 c0 01          	add    $0x1,%r8d
   140003579:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   14000357e:	db 7c 24 50          	fstpt  0x50(%rsp)
   140003582:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
   140003588:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   14000358d:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003592:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003597:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000359c:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
   1400035a1:	e8 2a f1 ff ff       	call   1400026d0 <__pformat_cvt>
   1400035a6:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   1400035ab:	49 89 c4             	mov    %rax,%r12
   1400035ae:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   1400035b5:	74 39                	je     1400035f0 <__pformat_efloat+0x90>
   1400035b7:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   1400035bb:	49 89 d9             	mov    %rbx,%r9
   1400035be:	48 89 c2             	mov    %rax,%rdx
   1400035c1:	e8 aa fe ff ff       	call   140003470 <__pformat_emit_efloat>
   1400035c6:	4c 89 e1             	mov    %r12,%rcx
   1400035c9:	e8 f2 15 00 00       	call   140004bc0 <__freedtoa>
   1400035ce:	90                   	nop
   1400035cf:	48 83 c4 68          	add    $0x68,%rsp
   1400035d3:	5b                   	pop    %rbx
   1400035d4:	41 5c                	pop    %r12
   1400035d6:	c3                   	ret    
   1400035d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400035de:	00 00 
   1400035e0:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   1400035e7:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   1400035ed:	eb 8a                	jmp    140003579 <__pformat_efloat+0x19>
   1400035ef:	90                   	nop
   1400035f0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   1400035f4:	49 89 d8             	mov    %rbx,%r8
   1400035f7:	48 89 c2             	mov    %rax,%rdx
   1400035fa:	e8 b1 f4 ff ff       	call   140002ab0 <__pformat_emit_inf_or_nan>
   1400035ff:	4c 89 e1             	mov    %r12,%rcx
   140003602:	e8 b9 15 00 00       	call   140004bc0 <__freedtoa>
   140003607:	90                   	nop
   140003608:	48 83 c4 68          	add    $0x68,%rsp
   14000360c:	5b                   	pop    %rbx
   14000360d:	41 5c                	pop    %r12
   14000360f:	c3                   	ret    

0000000140003610 <__pformat_gfloat>:
   140003610:	41 54                	push   %r12
   140003612:	56                   	push   %rsi
   140003613:	53                   	push   %rbx
   140003614:	48 83 ec 60          	sub    $0x60,%rsp
   140003618:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   14000361c:	db 29                	fldt   (%rcx)
   14000361e:	48 89 d3             	mov    %rdx,%rbx
   140003621:	45 85 c0             	test   %r8d,%r8d
   140003624:	0f 88 fe 00 00 00    	js     140003728 <__pformat_gfloat+0x118>
   14000362a:	0f 84 e0 00 00 00    	je     140003710 <__pformat_gfloat+0x100>
   140003630:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003635:	db 7c 24 50          	fstpt  0x50(%rsp)
   140003639:	f3 0f 6f 44 24 50    	movdqu 0x50(%rsp),%xmm0
   14000363f:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003644:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003649:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000364e:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003653:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
   140003658:	e8 73 f0 ff ff       	call   1400026d0 <__pformat_cvt>
   14000365d:	8b 74 24 4c          	mov    0x4c(%rsp),%esi
   140003661:	49 89 c4             	mov    %rax,%r12
   140003664:	81 fe 00 80 ff ff    	cmp    $0xffff8000,%esi
   14000366a:	0f 84 d0 00 00 00    	je     140003740 <__pformat_gfloat+0x130>
   140003670:	8b 43 08             	mov    0x8(%rbx),%eax
   140003673:	25 00 08 00 00       	and    $0x800,%eax
   140003678:	83 fe fd             	cmp    $0xfffffffd,%esi
   14000367b:	7c 4b                	jl     1400036c8 <__pformat_gfloat+0xb8>
   14000367d:	8b 53 10             	mov    0x10(%rbx),%edx
   140003680:	39 d6                	cmp    %edx,%esi
   140003682:	7f 44                	jg     1400036c8 <__pformat_gfloat+0xb8>
   140003684:	85 c0                	test   %eax,%eax
   140003686:	0f 84 cc 00 00 00    	je     140003758 <__pformat_gfloat+0x148>
   14000368c:	29 f2                	sub    %esi,%edx
   14000368e:	89 53 10             	mov    %edx,0x10(%rbx)
   140003691:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003695:	49 89 d9             	mov    %rbx,%r9
   140003698:	41 89 f0             	mov    %esi,%r8d
   14000369b:	4c 89 e2             	mov    %r12,%rdx
   14000369e:	e8 cd f5 ff ff       	call   140002c70 <__pformat_emit_float>
   1400036a3:	eb 10                	jmp    1400036b5 <__pformat_gfloat+0xa5>
   1400036a5:	0f 1f 00             	nopl   (%rax)
   1400036a8:	48 89 da             	mov    %rbx,%rdx
   1400036ab:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400036b0:	e8 2b f1 ff ff       	call   1400027e0 <__pformat_putc>
   1400036b5:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400036b8:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400036bb:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400036be:	85 c0                	test   %eax,%eax
   1400036c0:	7f e6                	jg     1400036a8 <__pformat_gfloat+0x98>
   1400036c2:	eb 28                	jmp    1400036ec <__pformat_gfloat+0xdc>
   1400036c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400036c8:	85 c0                	test   %eax,%eax
   1400036ca:	75 34                	jne    140003700 <__pformat_gfloat+0xf0>
   1400036cc:	4c 89 e1             	mov    %r12,%rcx
   1400036cf:	e8 24 3b 00 00       	call   1400071f8 <strlen>
   1400036d4:	83 e8 01             	sub    $0x1,%eax
   1400036d7:	89 43 10             	mov    %eax,0x10(%rbx)
   1400036da:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   1400036de:	49 89 d9             	mov    %rbx,%r9
   1400036e1:	41 89 f0             	mov    %esi,%r8d
   1400036e4:	4c 89 e2             	mov    %r12,%rdx
   1400036e7:	e8 84 fd ff ff       	call   140003470 <__pformat_emit_efloat>
   1400036ec:	4c 89 e1             	mov    %r12,%rcx
   1400036ef:	e8 cc 14 00 00       	call   140004bc0 <__freedtoa>
   1400036f4:	90                   	nop
   1400036f5:	48 83 c4 60          	add    $0x60,%rsp
   1400036f9:	5b                   	pop    %rbx
   1400036fa:	5e                   	pop    %rsi
   1400036fb:	41 5c                	pop    %r12
   1400036fd:	c3                   	ret    
   1400036fe:	66 90                	xchg   %ax,%ax
   140003700:	8b 43 10             	mov    0x10(%rbx),%eax
   140003703:	83 e8 01             	sub    $0x1,%eax
   140003706:	eb cf                	jmp    1400036d7 <__pformat_gfloat+0xc7>
   140003708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000370f:	00 
   140003710:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
   140003717:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   14000371d:	e9 0e ff ff ff       	jmp    140003630 <__pformat_gfloat+0x20>
   140003722:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003728:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   14000372f:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140003735:	e9 f6 fe ff ff       	jmp    140003630 <__pformat_gfloat+0x20>
   14000373a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003740:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003744:	49 89 d8             	mov    %rbx,%r8
   140003747:	48 89 c2             	mov    %rax,%rdx
   14000374a:	e8 61 f3 ff ff       	call   140002ab0 <__pformat_emit_inf_or_nan>
   14000374f:	eb 9b                	jmp    1400036ec <__pformat_gfloat+0xdc>
   140003751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003758:	4c 89 e1             	mov    %r12,%rcx
   14000375b:	e8 98 3a 00 00       	call   1400071f8 <strlen>
   140003760:	29 f0                	sub    %esi,%eax
   140003762:	89 43 10             	mov    %eax,0x10(%rbx)
   140003765:	0f 89 26 ff ff ff    	jns    140003691 <__pformat_gfloat+0x81>
   14000376b:	8b 53 0c             	mov    0xc(%rbx),%edx
   14000376e:	85 d2                	test   %edx,%edx
   140003770:	0f 8e 1b ff ff ff    	jle    140003691 <__pformat_gfloat+0x81>
   140003776:	01 d0                	add    %edx,%eax
   140003778:	89 43 0c             	mov    %eax,0xc(%rbx)
   14000377b:	e9 11 ff ff ff       	jmp    140003691 <__pformat_gfloat+0x81>

0000000140003780 <__pformat_xint.isra.0>:
   140003780:	55                   	push   %rbp
   140003781:	41 57                	push   %r15
   140003783:	41 56                	push   %r14
   140003785:	41 55                	push   %r13
   140003787:	41 54                	push   %r12
   140003789:	57                   	push   %rdi
   14000378a:	56                   	push   %rsi
   14000378b:	53                   	push   %rbx
   14000378c:	48 83 ec 28          	sub    $0x28,%rsp
   140003790:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140003797:	00 
   140003798:	41 89 ca             	mov    %ecx,%r10d
   14000379b:	4c 89 c6             	mov    %r8,%rsi
   14000379e:	83 f9 6f             	cmp    $0x6f,%ecx
   1400037a1:	0f 84 81 02 00 00    	je     140003a28 <__pformat_xint.isra.0+0x2a8>
   1400037a7:	45 8b 58 10          	mov    0x10(%r8),%r11d
   1400037ab:	b8 00 00 00 00       	mov    $0x0,%eax
   1400037b0:	45 8b 60 08          	mov    0x8(%r8),%r12d
   1400037b4:	45 85 db             	test   %r11d,%r11d
   1400037b7:	41 0f 49 c3          	cmovns %r11d,%eax
   1400037bb:	83 c0 12             	add    $0x12,%eax
   1400037be:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
   1400037c5:	0f 85 55 01 00 00    	jne    140003920 <__pformat_xint.isra.0+0x1a0>
   1400037cb:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
   1400037cf:	41 39 c1             	cmp    %eax,%r9d
   1400037d2:	41 0f 4d c1          	cmovge %r9d,%eax
   1400037d6:	48 98                	cltq   
   1400037d8:	48 83 c0 0f          	add    $0xf,%rax
   1400037dc:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400037e0:	e8 5b ee ff ff       	call   140002640 <___chkstk_ms>
   1400037e5:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400037ea:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   1400037f0:	48 29 c4             	sub    %rax,%rsp
   1400037f3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   1400037f8:	48 89 fb             	mov    %rdi,%rbx
   1400037fb:	48 85 d2             	test   %rdx,%rdx
   1400037fe:	0f 84 ac 02 00 00    	je     140003ab0 <__pformat_xint.isra.0+0x330>
   140003804:	45 89 d5             	mov    %r10d,%r13d
   140003807:	41 83 e5 20          	and    $0x20,%r13d
   14000380b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003810:	44 89 c0             	mov    %r8d,%eax
   140003813:	48 83 c3 01          	add    $0x1,%rbx
   140003817:	21 d0                	and    %edx,%eax
   140003819:	44 8d 70 30          	lea    0x30(%rax),%r14d
   14000381d:	83 c0 37             	add    $0x37,%eax
   140003820:	44 09 e8             	or     %r13d,%eax
   140003823:	45 89 f7             	mov    %r14d,%r15d
   140003826:	41 80 fe 3a          	cmp    $0x3a,%r14b
   14000382a:	41 0f 42 c7          	cmovb  %r15d,%eax
   14000382e:	48 d3 ea             	shr    %cl,%rdx
   140003831:	88 43 ff             	mov    %al,-0x1(%rbx)
   140003834:	48 85 d2             	test   %rdx,%rdx
   140003837:	75 d7                	jne    140003810 <__pformat_xint.isra.0+0x90>
   140003839:	48 39 fb             	cmp    %rdi,%rbx
   14000383c:	0f 84 6e 02 00 00    	je     140003ab0 <__pformat_xint.isra.0+0x330>
   140003842:	45 85 db             	test   %r11d,%r11d
   140003845:	0f 8e 15 01 00 00    	jle    140003960 <__pformat_xint.isra.0+0x1e0>
   14000384b:	48 89 d8             	mov    %rbx,%rax
   14000384e:	44 89 d9             	mov    %r11d,%ecx
   140003851:	48 29 f8             	sub    %rdi,%rax
   140003854:	29 c1                	sub    %eax,%ecx
   140003856:	89 c8                	mov    %ecx,%eax
   140003858:	85 c9                	test   %ecx,%ecx
   14000385a:	0f 8e 00 01 00 00    	jle    140003960 <__pformat_xint.isra.0+0x1e0>
   140003860:	83 e8 01             	sub    $0x1,%eax
   140003863:	48 89 c2             	mov    %rax,%rdx
   140003866:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
   14000386b:	48 89 d8             	mov    %rbx,%rax
   14000386e:	66 90                	xchg   %ax,%ax
   140003870:	48 83 c0 01          	add    $0x1,%rax
   140003874:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
   140003878:	48 39 c8             	cmp    %rcx,%rax
   14000387b:	75 f3                	jne    140003870 <__pformat_xint.isra.0+0xf0>
   14000387d:	48 63 c2             	movslq %edx,%rax
   140003880:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
   140003885:	48 39 fb             	cmp    %rdi,%rbx
   140003888:	0f 84 ee 00 00 00    	je     14000397c <__pformat_xint.isra.0+0x1fc>
   14000388e:	48 89 d8             	mov    %rbx,%rax
   140003891:	48 29 f8             	sub    %rdi,%rax
   140003894:	44 39 c8             	cmp    %r9d,%eax
   140003897:	0f 8c fb 00 00 00    	jl     140003998 <__pformat_xint.isra.0+0x218>
   14000389d:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
   1400038a4:	41 83 fa 6f          	cmp    $0x6f,%r10d
   1400038a8:	0f 84 5a 01 00 00    	je     140003a08 <__pformat_xint.isra.0+0x288>
   1400038ae:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   1400038b4:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
   1400038b8:	0f 85 ba 02 00 00    	jne    140003b78 <__pformat_xint.isra.0+0x3f8>
   1400038be:	48 39 df             	cmp    %rbx,%rdi
   1400038c1:	73 45                	jae    140003908 <__pformat_xint.isra.0+0x188>
   1400038c3:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
   1400038c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400038ce:	00 00 
   1400038d0:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
   1400038d4:	48 83 eb 01          	sub    $0x1,%rbx
   1400038d8:	48 89 f2             	mov    %rsi,%rdx
   1400038db:	e8 00 ef ff ff       	call   1400027e0 <__pformat_putc>
   1400038e0:	48 39 fb             	cmp    %rdi,%rbx
   1400038e3:	77 eb                	ja     1400038d0 <__pformat_xint.isra.0+0x150>
   1400038e5:	45 85 ed             	test   %r13d,%r13d
   1400038e8:	7e 1e                	jle    140003908 <__pformat_xint.isra.0+0x188>
   1400038ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400038f0:	48 89 f2             	mov    %rsi,%rdx
   1400038f3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400038f8:	e8 e3 ee ff ff       	call   1400027e0 <__pformat_putc>
   1400038fd:	44 89 e0             	mov    %r12d,%eax
   140003900:	41 83 ec 01          	sub    $0x1,%r12d
   140003904:	85 c0                	test   %eax,%eax
   140003906:	7f e8                	jg     1400038f0 <__pformat_xint.isra.0+0x170>
   140003908:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
   14000390c:	5b                   	pop    %rbx
   14000390d:	5e                   	pop    %rsi
   14000390e:	5f                   	pop    %rdi
   14000390f:	41 5c                	pop    %r12
   140003911:	41 5d                	pop    %r13
   140003913:	41 5e                	pop    %r14
   140003915:	41 5f                	pop    %r15
   140003917:	5d                   	pop    %rbp
   140003918:	c3                   	ret    
   140003919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003920:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
   140003926:	0f 85 3c 02 00 00    	jne    140003b68 <__pformat_xint.isra.0+0x3e8>
   14000392c:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
   140003930:	44 39 c8             	cmp    %r9d,%eax
   140003933:	41 0f 4c c1          	cmovl  %r9d,%eax
   140003937:	48 98                	cltq   
   140003939:	48 83 c0 0f          	add    $0xf,%rax
   14000393d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003941:	e8 fa ec ff ff       	call   140002640 <___chkstk_ms>
   140003946:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000394b:	48 29 c4             	sub    %rax,%rsp
   14000394e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140003953:	e9 45 01 00 00       	jmp    140003a9d <__pformat_xint.isra.0+0x31d>
   140003958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000395f:	00 
   140003960:	41 83 fa 6f          	cmp    $0x6f,%r10d
   140003964:	0f 84 56 01 00 00    	je     140003ac0 <__pformat_xint.isra.0+0x340>
   14000396a:	48 39 fb             	cmp    %rdi,%rbx
   14000396d:	0f 85 1b ff ff ff    	jne    14000388e <__pformat_xint.isra.0+0x10e>
   140003973:	45 85 db             	test   %r11d,%r11d
   140003976:	0f 84 12 ff ff ff    	je     14000388e <__pformat_xint.isra.0+0x10e>
   14000397c:	c6 03 30             	movb   $0x30,(%rbx)
   14000397f:	48 83 c3 01          	add    $0x1,%rbx
   140003983:	48 89 d8             	mov    %rbx,%rax
   140003986:	48 29 f8             	sub    %rdi,%rax
   140003989:	44 39 c8             	cmp    %r9d,%eax
   14000398c:	0f 8d 0b ff ff ff    	jge    14000389d <__pformat_xint.isra.0+0x11d>
   140003992:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003998:	41 29 c1             	sub    %eax,%r9d
   14000399b:	8b 56 08             	mov    0x8(%rsi),%edx
   14000399e:	44 89 4e 0c          	mov    %r9d,0xc(%rsi)
   1400039a2:	45 89 cd             	mov    %r9d,%r13d
   1400039a5:	41 83 fa 6f          	cmp    $0x6f,%r10d
   1400039a9:	0f 84 31 01 00 00    	je     140003ae0 <__pformat_xint.isra.0+0x360>
   1400039af:	f6 c6 08             	test   $0x8,%dh
   1400039b2:	0f 84 50 01 00 00    	je     140003b08 <__pformat_xint.isra.0+0x388>
   1400039b8:	41 83 ed 02          	sub    $0x2,%r13d
   1400039bc:	45 85 ed             	test   %r13d,%r13d
   1400039bf:	7e 09                	jle    1400039ca <__pformat_xint.isra.0+0x24a>
   1400039c1:	45 85 db             	test   %r11d,%r11d
   1400039c4:	0f 88 1e 02 00 00    	js     140003be8 <__pformat_xint.isra.0+0x468>
   1400039ca:	44 88 13             	mov    %r10b,(%rbx)
   1400039cd:	48 83 c3 02          	add    $0x2,%rbx
   1400039d1:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
   1400039d5:	45 85 ed             	test   %r13d,%r13d
   1400039d8:	0f 8e e0 fe ff ff    	jle    1400038be <__pformat_xint.isra.0+0x13e>
   1400039de:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
   1400039e2:	80 e6 04             	and    $0x4,%dh
   1400039e5:	0f 85 33 01 00 00    	jne    140003b1e <__pformat_xint.isra.0+0x39e>
   1400039eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400039f0:	48 89 f2             	mov    %rsi,%rdx
   1400039f3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400039f8:	e8 e3 ed ff ff       	call   1400027e0 <__pformat_putc>
   1400039fd:	44 89 e0             	mov    %r12d,%eax
   140003a00:	41 83 ec 01          	sub    $0x1,%r12d
   140003a04:	85 c0                	test   %eax,%eax
   140003a06:	7f e8                	jg     1400039f0 <__pformat_xint.isra.0+0x270>
   140003a08:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
   140003a0e:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   140003a14:	48 39 fb             	cmp    %rdi,%rbx
   140003a17:	0f 87 b3 fe ff ff    	ja     1400038d0 <__pformat_xint.isra.0+0x150>
   140003a1d:	e9 e6 fe ff ff       	jmp    140003908 <__pformat_xint.isra.0+0x188>
   140003a22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003a28:	45 8b 58 10          	mov    0x10(%r8),%r11d
   140003a2c:	b8 00 00 00 00       	mov    $0x0,%eax
   140003a31:	45 8b 60 08          	mov    0x8(%r8),%r12d
   140003a35:	45 85 db             	test   %r11d,%r11d
   140003a38:	41 0f 49 c3          	cmovns %r11d,%eax
   140003a3c:	83 c0 18             	add    $0x18,%eax
   140003a3f:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
   140003a46:	0f 84 e4 00 00 00    	je     140003b30 <__pformat_xint.isra.0+0x3b0>
   140003a4c:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
   140003a52:	0f 84 ac 01 00 00    	je     140003c04 <__pformat_xint.isra.0+0x484>
   140003a58:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003a5d:	41 89 c0             	mov    %eax,%r8d
   140003a60:	41 b9 ab aa aa aa    	mov    $0xaaaaaaab,%r9d
   140003a66:	4d 0f af c1          	imul   %r9,%r8
   140003a6a:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
   140003a6e:	49 c1 e8 21          	shr    $0x21,%r8
   140003a72:	44 01 c0             	add    %r8d,%eax
   140003a75:	44 39 c8             	cmp    %r9d,%eax
   140003a78:	41 0f 4c c1          	cmovl  %r9d,%eax
   140003a7c:	48 98                	cltq   
   140003a7e:	48 83 c0 0f          	add    $0xf,%rax
   140003a82:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003a86:	e8 b5 eb ff ff       	call   140002640 <___chkstk_ms>
   140003a8b:	48 29 c4             	sub    %rax,%rsp
   140003a8e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140003a93:	41 83 fa 6f          	cmp    $0x6f,%r10d
   140003a97:	0f 84 ba 00 00 00    	je     140003b57 <__pformat_xint.isra.0+0x3d7>
   140003a9d:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   140003aa3:	48 89 fb             	mov    %rdi,%rbx
   140003aa6:	48 85 d2             	test   %rdx,%rdx
   140003aa9:	0f 85 55 fd ff ff    	jne    140003804 <__pformat_xint.isra.0+0x84>
   140003aaf:	90                   	nop
   140003ab0:	41 81 e4 ff f7 ff ff 	and    $0xfffff7ff,%r12d
   140003ab7:	44 89 66 08          	mov    %r12d,0x8(%rsi)
   140003abb:	e9 82 fd ff ff       	jmp    140003842 <__pformat_xint.isra.0+0xc2>
   140003ac0:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
   140003ac4:	0f 84 a0 fe ff ff    	je     14000396a <__pformat_xint.isra.0+0x1ea>
   140003aca:	c6 03 30             	movb   $0x30,(%rbx)
   140003acd:	48 83 c3 01          	add    $0x1,%rbx
   140003ad1:	e9 94 fe ff ff       	jmp    14000396a <__pformat_xint.isra.0+0x1ea>
   140003ad6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003add:	00 00 00 
   140003ae0:	45 85 db             	test   %r11d,%r11d
   140003ae3:	0f 88 9f 00 00 00    	js     140003b88 <__pformat_xint.isra.0+0x408>
   140003ae9:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
   140003aed:	80 e6 04             	and    $0x4,%dh
   140003af0:	0f 84 fa fe ff ff    	je     1400039f0 <__pformat_xint.isra.0+0x270>
   140003af6:	48 39 fb             	cmp    %rdi,%rbx
   140003af9:	0f 87 d1 fd ff ff    	ja     1400038d0 <__pformat_xint.isra.0+0x150>
   140003aff:	e9 ec fd ff ff       	jmp    1400038f0 <__pformat_xint.isra.0+0x170>
   140003b04:	0f 1f 40 00          	nopl   0x0(%rax)
   140003b08:	45 85 db             	test   %r11d,%r11d
   140003b0b:	0f 88 d7 00 00 00    	js     140003be8 <__pformat_xint.isra.0+0x468>
   140003b11:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
   140003b15:	80 e6 04             	and    $0x4,%dh
   140003b18:	0f 84 d2 fe ff ff    	je     1400039f0 <__pformat_xint.isra.0+0x270>
   140003b1e:	48 39 df             	cmp    %rbx,%rdi
   140003b21:	0f 82 a9 fd ff ff    	jb     1400038d0 <__pformat_xint.isra.0+0x150>
   140003b27:	e9 c4 fd ff ff       	jmp    1400038f0 <__pformat_xint.isra.0+0x170>
   140003b2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003b30:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
   140003b34:	41 39 c1             	cmp    %eax,%r9d
   140003b37:	41 0f 4d c1          	cmovge %r9d,%eax
   140003b3b:	48 98                	cltq   
   140003b3d:	48 83 c0 0f          	add    $0xf,%rax
   140003b41:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003b45:	e8 f6 ea ff ff       	call   140002640 <___chkstk_ms>
   140003b4a:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003b4f:	48 29 c4             	sub    %rax,%rsp
   140003b52:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140003b57:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   140003b5d:	e9 96 fc ff ff       	jmp    1400037f8 <__pformat_xint.isra.0+0x78>
   140003b62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003b68:	b9 04 00 00 00       	mov    $0x4,%ecx
   140003b6d:	e9 eb fe ff ff       	jmp    140003a5d <__pformat_xint.isra.0+0x2dd>
   140003b72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003b78:	44 88 13             	mov    %r10b,(%rbx)
   140003b7b:	48 83 c3 02          	add    $0x2,%rbx
   140003b7f:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
   140003b83:	e9 36 fd ff ff       	jmp    1400038be <__pformat_xint.isra.0+0x13e>
   140003b88:	89 d0                	mov    %edx,%eax
   140003b8a:	25 00 06 00 00       	and    $0x600,%eax
   140003b8f:	3d 00 02 00 00       	cmp    $0x200,%eax
   140003b94:	0f 85 4f ff ff ff    	jne    140003ae9 <__pformat_xint.isra.0+0x369>
   140003b9a:	45 8d 45 ff          	lea    -0x1(%r13),%r8d
   140003b9e:	44 89 c0             	mov    %r8d,%eax
   140003ba1:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
   140003ba6:	48 89 d8             	mov    %rbx,%rax
   140003ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003bb0:	48 83 c0 01          	add    $0x1,%rax
   140003bb4:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
   140003bb8:	48 39 c8             	cmp    %rcx,%rax
   140003bbb:	75 f3                	jne    140003bb0 <__pformat_xint.isra.0+0x430>
   140003bbd:	49 63 c0             	movslq %r8d,%rax
   140003bc0:	45 29 e8             	sub    %r13d,%r8d
   140003bc3:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
   140003bc8:	45 89 c5             	mov    %r8d,%r13d
   140003bcb:	41 83 fa 6f          	cmp    $0x6f,%r10d
   140003bcf:	0f 84 00 fe ff ff    	je     1400039d5 <__pformat_xint.isra.0+0x255>
   140003bd5:	f6 c6 08             	test   $0x8,%dh
   140003bd8:	0f 84 f7 fd ff ff    	je     1400039d5 <__pformat_xint.isra.0+0x255>
   140003bde:	e9 e7 fd ff ff       	jmp    1400039ca <__pformat_xint.isra.0+0x24a>
   140003be3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003be8:	89 d0                	mov    %edx,%eax
   140003bea:	25 00 06 00 00       	and    $0x600,%eax
   140003bef:	3d 00 02 00 00       	cmp    $0x200,%eax
   140003bf4:	74 a4                	je     140003b9a <__pformat_xint.isra.0+0x41a>
   140003bf6:	f6 c6 08             	test   $0x8,%dh
   140003bf9:	0f 85 cb fd ff ff    	jne    1400039ca <__pformat_xint.isra.0+0x24a>
   140003bff:	e9 0d ff ff ff       	jmp    140003b11 <__pformat_xint.isra.0+0x391>
   140003c04:	44 8b 4e 0c          	mov    0xc(%rsi),%r9d
   140003c08:	44 39 c8             	cmp    %r9d,%eax
   140003c0b:	41 0f 4c c1          	cmovl  %r9d,%eax
   140003c0f:	e9 27 ff ff ff       	jmp    140003b3b <__pformat_xint.isra.0+0x3bb>
   140003c14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003c1b:	00 00 00 00 
   140003c1f:	90                   	nop

0000000140003c20 <__pformat_xldouble>:
   140003c20:	41 55                	push   %r13
   140003c22:	41 54                	push   %r12
   140003c24:	55                   	push   %rbp
   140003c25:	57                   	push   %rdi
   140003c26:	56                   	push   %rsi
   140003c27:	53                   	push   %rbx
   140003c28:	48 83 ec 68          	sub    $0x68,%rsp
   140003c2c:	4c 8b 11             	mov    (%rcx),%r10
   140003c2f:	44 8b 59 08          	mov    0x8(%rcx),%r11d
   140003c33:	41 0f bf cb          	movswl %r11w,%ecx
   140003c37:	4c 89 de             	mov    %r11,%rsi
   140003c3a:	44 8d 04 09          	lea    (%rcx,%rcx,1),%r8d
   140003c3e:	49 89 d4             	mov    %rdx,%r12
   140003c41:	4c 89 d2             	mov    %r10,%rdx
   140003c44:	45 0f b7 c0          	movzwl %r8w,%r8d
   140003c48:	4c 89 54 24 30       	mov    %r10,0x30(%rsp)
   140003c4d:	48 c1 ea 20          	shr    $0x20,%rdx
   140003c51:	44 89 5c 24 38       	mov    %r11d,0x38(%rsp)
   140003c56:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
   140003c5c:	44 09 d2             	or     %r10d,%edx
   140003c5f:	89 d0                	mov    %edx,%eax
   140003c61:	f7 d8                	neg    %eax
   140003c63:	09 d0                	or     %edx,%eax
   140003c65:	c1 e8 1f             	shr    $0x1f,%eax
   140003c68:	44 09 c0             	or     %r8d,%eax
   140003c6b:	41 b8 fe ff 00 00    	mov    $0xfffe,%r8d
   140003c71:	41 29 c0             	sub    %eax,%r8d
   140003c74:	44 89 c0             	mov    %r8d,%eax
   140003c77:	c1 e8 10             	shr    $0x10,%eax
   140003c7a:	0f 85 d8 02 00 00    	jne    140003f58 <__pformat_xldouble+0x338>
   140003c80:	66 45 85 db          	test   %r11w,%r11w
   140003c84:	0f 88 d6 01 00 00    	js     140003e60 <__pformat_xldouble+0x240>
   140003c8a:	66 81 e6 ff 7f       	and    $0x7fff,%si
   140003c8f:	0f 85 a3 01 00 00    	jne    140003e38 <__pformat_xldouble+0x218>
   140003c95:	4d 85 d2             	test   %r10,%r10
   140003c98:	0f 85 42 03 00 00    	jne    140003fe0 <__pformat_xldouble+0x3c0>
   140003c9e:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140003ca3:	83 fa 0e             	cmp    $0xe,%edx
   140003ca6:	0f 86 f4 01 00 00    	jbe    140003ea0 <__pformat_xldouble+0x280>
   140003cac:	41 8b 54 24 08       	mov    0x8(%r12),%edx
   140003cb1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140003cb6:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   140003cbb:	85 c0                	test   %eax,%eax
   140003cbd:	0f 8e ad 04 00 00    	jle    140004170 <__pformat_xldouble+0x550>
   140003cc3:	c6 44 24 40 2e       	movb   $0x2e,0x40(%rsp)
   140003cc8:	48 8d 44 24 41       	lea    0x41(%rsp),%rax
   140003ccd:	c6 00 30             	movb   $0x30,(%rax)
   140003cd0:	48 8d 58 01          	lea    0x1(%rax),%rbx
   140003cd4:	45 8b 44 24 0c       	mov    0xc(%r12),%r8d
   140003cd9:	bd 02 00 00 00       	mov    $0x2,%ebp
   140003cde:	45 85 c0             	test   %r8d,%r8d
   140003ce1:	0f 8e 89 00 00 00    	jle    140003d70 <__pformat_xldouble+0x150>
   140003ce7:	45 8b 4c 24 10       	mov    0x10(%r12),%r9d
   140003cec:	48 89 d8             	mov    %rbx,%rax
   140003cef:	0f bf ce             	movswl %si,%ecx
   140003cf2:	48 29 f8             	sub    %rdi,%rax
   140003cf5:	45 8d 14 01          	lea    (%r9,%rax,1),%r10d
   140003cf9:	45 85 c9             	test   %r9d,%r9d
   140003cfc:	41 0f 4f c2          	cmovg  %r10d,%eax
   140003d00:	45 31 c9             	xor    %r9d,%r9d
   140003d03:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
   140003d09:	41 0f 95 c1          	setne  %r9b
   140003d0d:	c1 f9 1f             	sar    $0x1f,%ecx
   140003d10:	46 8d 4c 08 05       	lea    0x5(%rax,%r9,1),%r9d
   140003d15:	48 0f bf c6          	movswq %si,%rax
   140003d19:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   140003d20:	45 89 ca             	mov    %r9d,%r10d
   140003d23:	48 c1 f8 22          	sar    $0x22,%rax
   140003d27:	29 c8                	sub    %ecx,%eax
   140003d29:	74 2a                	je     140003d55 <__pformat_xldouble+0x135>
   140003d2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003d30:	48 63 c8             	movslq %eax,%rcx
   140003d33:	41 83 c2 01          	add    $0x1,%r10d
   140003d37:	c1 f8 1f             	sar    $0x1f,%eax
   140003d3a:	48 69 c9 67 66 66 66 	imul   $0x66666667,%rcx,%rcx
   140003d41:	41 8d 6a 02          	lea    0x2(%r10),%ebp
   140003d45:	44 29 cd             	sub    %r9d,%ebp
   140003d48:	48 c1 f9 22          	sar    $0x22,%rcx
   140003d4c:	29 c1                	sub    %eax,%ecx
   140003d4e:	89 c8                	mov    %ecx,%eax
   140003d50:	75 de                	jne    140003d30 <__pformat_xldouble+0x110>
   140003d52:	0f bf ed             	movswl %bp,%ebp
   140003d55:	45 39 d0             	cmp    %r10d,%r8d
   140003d58:	0f 8e 7a 03 00 00    	jle    1400040d8 <__pformat_xldouble+0x4b8>
   140003d5e:	45 29 d0             	sub    %r10d,%r8d
   140003d61:	f6 c6 06             	test   $0x6,%dh
   140003d64:	0f 84 be 03 00 00    	je     140004128 <__pformat_xldouble+0x508>
   140003d6a:	45 89 44 24 0c       	mov    %r8d,0xc(%r12)
   140003d6f:	90                   	nop
   140003d70:	f6 c2 80             	test   $0x80,%dl
   140003d73:	0f 85 47 03 00 00    	jne    1400040c0 <__pformat_xldouble+0x4a0>
   140003d79:	f6 c6 01             	test   $0x1,%dh
   140003d7c:	0f 85 6e 03 00 00    	jne    1400040f0 <__pformat_xldouble+0x4d0>
   140003d82:	83 e2 40             	and    $0x40,%edx
   140003d85:	0f 85 85 03 00 00    	jne    140004110 <__pformat_xldouble+0x4f0>
   140003d8b:	4c 89 e2             	mov    %r12,%rdx
   140003d8e:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003d93:	e8 48 ea ff ff       	call   1400027e0 <__pformat_putc>
   140003d98:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   140003d9d:	4c 89 e2             	mov    %r12,%rdx
   140003da0:	83 e1 20             	and    $0x20,%ecx
   140003da3:	83 c9 58             	or     $0x58,%ecx
   140003da6:	e8 35 ea ff ff       	call   1400027e0 <__pformat_putc>
   140003dab:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140003db0:	85 c0                	test   %eax,%eax
   140003db2:	7e 32                	jle    140003de6 <__pformat_xldouble+0x1c6>
   140003db4:	41 f6 44 24 09 02    	testb  $0x2,0x9(%r12)
   140003dba:	74 2a                	je     140003de6 <__pformat_xldouble+0x1c6>
   140003dbc:	83 e8 01             	sub    $0x1,%eax
   140003dbf:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
   140003dc4:	0f 1f 40 00          	nopl   0x0(%rax)
   140003dc8:	4c 89 e2             	mov    %r12,%rdx
   140003dcb:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003dd0:	e8 0b ea ff ff       	call   1400027e0 <__pformat_putc>
   140003dd5:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140003dda:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003ddd:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
   140003de2:	85 c0                	test   %eax,%eax
   140003de4:	7f e2                	jg     140003dc8 <__pformat_xldouble+0x1a8>
   140003de6:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
   140003deb:	48 39 fb             	cmp    %rdi,%rbx
   140003dee:	77 25                	ja     140003e15 <__pformat_xldouble+0x1f5>
   140003df0:	e9 98 01 00 00       	jmp    140003f8d <__pformat_xldouble+0x36d>
   140003df5:	0f 1f 00             	nopl   (%rax)
   140003df8:	41 0f b7 44 24 20    	movzwl 0x20(%r12),%eax
   140003dfe:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   140003e03:	66 85 c0             	test   %ax,%ax
   140003e06:	0f 85 84 02 00 00    	jne    140004090 <__pformat_xldouble+0x470>
   140003e0c:	48 39 fb             	cmp    %rdi,%rbx
   140003e0f:	0f 84 78 01 00 00    	je     140003f8d <__pformat_xldouble+0x36d>
   140003e15:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
   140003e19:	48 83 eb 01          	sub    $0x1,%rbx
   140003e1d:	83 f9 2e             	cmp    $0x2e,%ecx
   140003e20:	0f 84 0a 02 00 00    	je     140004030 <__pformat_xldouble+0x410>
   140003e26:	83 f9 2c             	cmp    $0x2c,%ecx
   140003e29:	74 cd                	je     140003df8 <__pformat_xldouble+0x1d8>
   140003e2b:	4c 89 e2             	mov    %r12,%rdx
   140003e2e:	e8 ad e9 ff ff       	call   1400027e0 <__pformat_putc>
   140003e33:	eb d7                	jmp    140003e0c <__pformat_xldouble+0x1ec>
   140003e35:	0f 1f 00             	nopl   (%rax)
   140003e38:	85 d2                	test   %edx,%edx
   140003e3a:	75 44                	jne    140003e80 <__pformat_xldouble+0x260>
   140003e3c:	66 81 fe ff 7f       	cmp    $0x7fff,%si
   140003e41:	75 3d                	jne    140003e80 <__pformat_xldouble+0x260>
   140003e43:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140003e49:	4d 89 e0             	mov    %r12,%r8
   140003e4c:	48 8d 15 b8 54 00 00 	lea    0x54b8(%rip),%rdx        # 14000930b <.rdata+0xb>
   140003e53:	e8 58 ec ff ff       	call   140002ab0 <__pformat_emit_inf_or_nan>
   140003e58:	e9 0d 01 00 00       	jmp    140003f6a <__pformat_xldouble+0x34a>
   140003e5d:	0f 1f 00             	nopl   (%rax)
   140003e60:	41 81 4c 24 08 80 00 	orl    $0x80,0x8(%r12)
   140003e67:	00 00 
   140003e69:	66 81 e6 ff 7f       	and    $0x7fff,%si
   140003e6e:	0f 84 21 fe ff ff    	je     140003c95 <__pformat_xldouble+0x75>
   140003e74:	eb c2                	jmp    140003e38 <__pformat_xldouble+0x218>
   140003e76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003e7d:	00 00 00 
   140003e80:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140003e85:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
   140003e8a:	66 81 ee ff 3f       	sub    $0x3fff,%si
   140003e8f:	83 fa 0e             	cmp    $0xe,%edx
   140003e92:	0f 87 80 01 00 00    	ja     140004018 <__pformat_xldouble+0x3f8>
   140003e98:	4d 85 d2             	test   %r10,%r10
   140003e9b:	78 08                	js     140003ea5 <__pformat_xldouble+0x285>
   140003e9d:	0f 1f 00             	nopl   (%rax)
   140003ea0:	4d 01 d2             	add    %r10,%r10
   140003ea3:	79 fb                	jns    140003ea0 <__pformat_xldouble+0x280>
   140003ea5:	b9 0e 00 00 00       	mov    $0xe,%ecx
   140003eaa:	b8 04 00 00 00       	mov    $0x4,%eax
   140003eaf:	49 d1 ea             	shr    %r10
   140003eb2:	29 d1                	sub    %edx,%ecx
   140003eb4:	c1 e1 02             	shl    $0x2,%ecx
   140003eb7:	48 d3 e0             	shl    %cl,%rax
   140003eba:	49 01 c2             	add    %rax,%r10
   140003ebd:	0f 88 45 02 00 00    	js     140004108 <__pformat_xldouble+0x4e8>
   140003ec3:	4d 01 d2             	add    %r10,%r10
   140003ec6:	b9 0f 00 00 00       	mov    $0xf,%ecx
   140003ecb:	29 d1                	sub    %edx,%ecx
   140003ecd:	41 8b 54 24 08       	mov    0x8(%r12),%edx
   140003ed2:	c1 e1 02             	shl    $0x2,%ecx
   140003ed5:	49 d3 ea             	shr    %cl,%r10
   140003ed8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140003edd:	41 89 d1             	mov    %edx,%r9d
   140003ee0:	41 89 d0             	mov    %edx,%r8d
   140003ee3:	48 89 fb             	mov    %rdi,%rbx
   140003ee6:	41 81 e1 00 08 00 00 	and    $0x800,%r9d
   140003eed:	41 83 e0 20          	and    $0x20,%r8d
   140003ef1:	eb 27                	jmp    140003f1a <__pformat_xldouble+0x2fa>
   140003ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003ef8:	31 c0                	xor    %eax,%eax
   140003efa:	48 39 fb             	cmp    %rdi,%rbx
   140003efd:	77 09                	ja     140003f08 <__pformat_xldouble+0x2e8>
   140003eff:	41 8b 4c 24 10       	mov    0x10(%r12),%ecx
   140003f04:	85 c9                	test   %ecx,%ecx
   140003f06:	78 09                	js     140003f11 <__pformat_xldouble+0x2f1>
   140003f08:	83 c0 30             	add    $0x30,%eax
   140003f0b:	88 03                	mov    %al,(%rbx)
   140003f0d:	48 83 c3 01          	add    $0x1,%rbx
   140003f11:	4d 85 d2             	test   %r10,%r10
   140003f14:	0f 84 8e 01 00 00    	je     1400040a8 <__pformat_xldouble+0x488>
   140003f1a:	44 89 d1             	mov    %r10d,%ecx
   140003f1d:	83 e1 0f             	and    $0xf,%ecx
   140003f20:	49 f7 c2 f0 ff ff ff 	test   $0xfffffffffffffff0,%r10
   140003f27:	0f 84 13 01 00 00    	je     140004040 <__pformat_xldouble+0x420>
   140003f2d:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   140003f32:	49 c1 ea 04          	shr    $0x4,%r10
   140003f36:	85 c0                	test   %eax,%eax
   140003f38:	7e 08                	jle    140003f42 <__pformat_xldouble+0x322>
   140003f3a:	83 e8 01             	sub    $0x1,%eax
   140003f3d:	41 89 44 24 10       	mov    %eax,0x10(%r12)
   140003f42:	85 c9                	test   %ecx,%ecx
   140003f44:	74 b2                	je     140003ef8 <__pformat_xldouble+0x2d8>
   140003f46:	89 c8                	mov    %ecx,%eax
   140003f48:	83 f9 09             	cmp    $0x9,%ecx
   140003f4b:	76 bb                	jbe    140003f08 <__pformat_xldouble+0x2e8>
   140003f4d:	8d 41 37             	lea    0x37(%rcx),%eax
   140003f50:	44 09 c0             	or     %r8d,%eax
   140003f53:	eb b6                	jmp    140003f0b <__pformat_xldouble+0x2eb>
   140003f55:	0f 1f 00             	nopl   (%rax)
   140003f58:	4d 89 e0             	mov    %r12,%r8
   140003f5b:	48 8d 15 a5 53 00 00 	lea    0x53a5(%rip),%rdx        # 140009307 <.rdata+0x7>
   140003f62:	31 c9                	xor    %ecx,%ecx
   140003f64:	e8 47 eb ff ff       	call   140002ab0 <__pformat_emit_inf_or_nan>
   140003f69:	90                   	nop
   140003f6a:	48 83 c4 68          	add    $0x68,%rsp
   140003f6e:	5b                   	pop    %rbx
   140003f6f:	5e                   	pop    %rsi
   140003f70:	5f                   	pop    %rdi
   140003f71:	5d                   	pop    %rbp
   140003f72:	41 5c                	pop    %r12
   140003f74:	41 5d                	pop    %r13
   140003f76:	c3                   	ret    
   140003f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003f7e:	00 00 
   140003f80:	4c 89 e2             	mov    %r12,%rdx
   140003f83:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003f88:	e8 53 e8 ff ff       	call   1400027e0 <__pformat_putc>
   140003f8d:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   140003f92:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003f95:	41 89 54 24 10       	mov    %edx,0x10(%r12)
   140003f9a:	85 c0                	test   %eax,%eax
   140003f9c:	7f e2                	jg     140003f80 <__pformat_xldouble+0x360>
   140003f9e:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   140003fa3:	4c 89 e2             	mov    %r12,%rdx
   140003fa6:	83 e1 20             	and    $0x20,%ecx
   140003fa9:	83 c9 50             	or     $0x50,%ecx
   140003fac:	e8 2f e8 ff ff       	call   1400027e0 <__pformat_putc>
   140003fb1:	41 01 6c 24 0c       	add    %ebp,0xc(%r12)
   140003fb6:	48 0f bf ce          	movswq %si,%rcx
   140003fba:	4c 89 e2             	mov    %r12,%rdx
   140003fbd:	41 81 4c 24 08 c0 01 	orl    $0x1c0,0x8(%r12)
   140003fc4:	00 00 
   140003fc6:	e8 35 f1 ff ff       	call   140003100 <__pformat_int.isra.0>
   140003fcb:	90                   	nop
   140003fcc:	48 83 c4 68          	add    $0x68,%rsp
   140003fd0:	5b                   	pop    %rbx
   140003fd1:	5e                   	pop    %rsi
   140003fd2:	5f                   	pop    %rdi
   140003fd3:	5d                   	pop    %rbp
   140003fd4:	41 5c                	pop    %r12
   140003fd6:	41 5d                	pop    %r13
   140003fd8:	c3                   	ret    
   140003fd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003fe0:	0f 88 a2 01 00 00    	js     140004188 <__pformat_xldouble+0x568>
   140003fe6:	b8 01 c0 ff ff       	mov    $0xffffc001,%eax
   140003feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003ff0:	89 c6                	mov    %eax,%esi
   140003ff2:	83 e8 01             	sub    $0x1,%eax
   140003ff5:	4d 01 d2             	add    %r10,%r10
   140003ff8:	79 f6                	jns    140003ff0 <__pformat_xldouble+0x3d0>
   140003ffa:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140003fff:	83 fa 0e             	cmp    $0xe,%edx
   140004002:	0f 86 9d fe ff ff    	jbe    140003ea5 <__pformat_xldouble+0x285>
   140004008:	41 8b 54 24 08       	mov    0x8(%r12),%edx
   14000400d:	e9 c6 fe ff ff       	jmp    140003ed8 <__pformat_xldouble+0x2b8>
   140004012:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004018:	41 8b 54 24 08       	mov    0x8(%r12),%edx
   14000401d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140004022:	4d 85 d2             	test   %r10,%r10
   140004025:	0f 85 ad fe ff ff    	jne    140003ed8 <__pformat_xldouble+0x2b8>
   14000402b:	e9 86 fc ff ff       	jmp    140003cb6 <__pformat_xldouble+0x96>
   140004030:	4c 89 e1             	mov    %r12,%rcx
   140004033:	e8 28 eb ff ff       	call   140002b60 <__pformat_emit_radix_point>
   140004038:	e9 cf fd ff ff       	jmp    140003e0c <__pformat_xldouble+0x1ec>
   14000403d:	0f 1f 00             	nopl   (%rax)
   140004040:	48 39 fb             	cmp    %rdi,%rbx
   140004043:	77 13                	ja     140004058 <__pformat_xldouble+0x438>
   140004045:	45 85 c9             	test   %r9d,%r9d
   140004048:	75 0e                	jne    140004058 <__pformat_xldouble+0x438>
   14000404a:	45 8b 5c 24 10       	mov    0x10(%r12),%r11d
   14000404f:	45 85 db             	test   %r11d,%r11d
   140004052:	7e 0b                	jle    14000405f <__pformat_xldouble+0x43f>
   140004054:	0f 1f 40 00          	nopl   0x0(%rax)
   140004058:	c6 03 2e             	movb   $0x2e,(%rbx)
   14000405b:	48 83 c3 01          	add    $0x1,%rbx
   14000405f:	8d 46 ff             	lea    -0x1(%rsi),%eax
   140004062:	49 83 fa 01          	cmp    $0x1,%r10
   140004066:	74 16                	je     14000407e <__pformat_xldouble+0x45e>
   140004068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000406f:	00 
   140004070:	89 c6                	mov    %eax,%esi
   140004072:	49 d1 ea             	shr    %r10
   140004075:	8d 46 ff             	lea    -0x1(%rsi),%eax
   140004078:	49 83 fa 01          	cmp    $0x1,%r10
   14000407c:	75 f2                	jne    140004070 <__pformat_xldouble+0x450>
   14000407e:	45 31 d2             	xor    %r10d,%r10d
   140004081:	e9 bc fe ff ff       	jmp    140003f42 <__pformat_xldouble+0x322>
   140004086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000408d:	00 00 00 
   140004090:	4d 89 e0             	mov    %r12,%r8
   140004093:	ba 01 00 00 00       	mov    $0x1,%edx
   140004098:	4c 89 e9             	mov    %r13,%rcx
   14000409b:	e8 a0 e7 ff ff       	call   140002840 <__pformat_wputchars>
   1400040a0:	e9 67 fd ff ff       	jmp    140003e0c <__pformat_xldouble+0x1ec>
   1400040a5:	0f 1f 00             	nopl   (%rax)
   1400040a8:	48 39 fb             	cmp    %rdi,%rbx
   1400040ab:	0f 85 23 fc ff ff    	jne    140003cd4 <__pformat_xldouble+0xb4>
   1400040b1:	e9 00 fc ff ff       	jmp    140003cb6 <__pformat_xldouble+0x96>
   1400040b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400040bd:	00 00 00 
   1400040c0:	4c 89 e2             	mov    %r12,%rdx
   1400040c3:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   1400040c8:	e8 13 e7 ff ff       	call   1400027e0 <__pformat_putc>
   1400040cd:	e9 b9 fc ff ff       	jmp    140003d8b <__pformat_xldouble+0x16b>
   1400040d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400040d8:	41 c7 44 24 0c ff ff 	movl   $0xffffffff,0xc(%r12)
   1400040df:	ff ff 
   1400040e1:	e9 8a fc ff ff       	jmp    140003d70 <__pformat_xldouble+0x150>
   1400040e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400040ed:	00 00 00 
   1400040f0:	4c 89 e2             	mov    %r12,%rdx
   1400040f3:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   1400040f8:	e8 e3 e6 ff ff       	call   1400027e0 <__pformat_putc>
   1400040fd:	e9 89 fc ff ff       	jmp    140003d8b <__pformat_xldouble+0x16b>
   140004102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004108:	83 c6 01             	add    $0x1,%esi
   14000410b:	e9 b6 fd ff ff       	jmp    140003ec6 <__pformat_xldouble+0x2a6>
   140004110:	4c 89 e2             	mov    %r12,%rdx
   140004113:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004118:	e8 c3 e6 ff ff       	call   1400027e0 <__pformat_putc>
   14000411d:	e9 69 fc ff ff       	jmp    140003d8b <__pformat_xldouble+0x16b>
   140004122:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004128:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   14000412c:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
   140004131:	45 85 c0             	test   %r8d,%r8d
   140004134:	0f 8e 36 fc ff ff    	jle    140003d70 <__pformat_xldouble+0x150>
   14000413a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004140:	4c 89 e2             	mov    %r12,%rdx
   140004143:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004148:	e8 93 e6 ff ff       	call   1400027e0 <__pformat_putc>
   14000414d:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140004152:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004155:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
   14000415a:	85 c0                	test   %eax,%eax
   14000415c:	7f e2                	jg     140004140 <__pformat_xldouble+0x520>
   14000415e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
   140004163:	e9 08 fc ff ff       	jmp    140003d70 <__pformat_xldouble+0x150>
   140004168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000416f:	00 
   140004170:	48 89 f8             	mov    %rdi,%rax
   140004173:	f6 c6 08             	test   $0x8,%dh
   140004176:	0f 84 51 fb ff ff    	je     140003ccd <__pformat_xldouble+0xad>
   14000417c:	e9 42 fb ff ff       	jmp    140003cc3 <__pformat_xldouble+0xa3>
   140004181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004188:	be 02 c0 ff ff       	mov    $0xffffc002,%esi
   14000418d:	e9 68 fe ff ff       	jmp    140003ffa <__pformat_xldouble+0x3da>
   140004192:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004199:	00 00 00 00 
   14000419d:	0f 1f 00             	nopl   (%rax)

00000001400041a0 <__mingw_pformat>:
   1400041a0:	41 57                	push   %r15
   1400041a2:	41 56                	push   %r14
   1400041a4:	41 55                	push   %r13
   1400041a6:	41 54                	push   %r12
   1400041a8:	55                   	push   %rbp
   1400041a9:	57                   	push   %rdi
   1400041aa:	56                   	push   %rsi
   1400041ab:	53                   	push   %rbx
   1400041ac:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   1400041b3:	4c 8b a4 24 10 01 00 	mov    0x110(%rsp),%r12
   1400041ba:	00 
   1400041bb:	89 cf                	mov    %ecx,%edi
   1400041bd:	48 89 d5             	mov    %rdx,%rbp
   1400041c0:	44 89 c3             	mov    %r8d,%ebx
   1400041c3:	4c 89 ce             	mov    %r9,%rsi
   1400041c6:	e8 a5 30 00 00       	call   140007270 <_errno>
   1400041cb:	0f be 0e             	movsbl (%rsi),%ecx
   1400041ce:	81 e7 00 60 00 00    	and    $0x6000,%edi
   1400041d4:	31 d2                	xor    %edx,%edx
   1400041d6:	8b 00                	mov    (%rax),%eax
   1400041d8:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
   1400041df:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
   1400041e3:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
   1400041e8:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   1400041ec:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
   1400041f3:	ff ff ff 
   1400041f6:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   1400041fd:	00 
   1400041fe:	31 c0                	xor    %eax,%eax
   140004200:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   140004204:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
   14000420b:	ff 
   14000420c:	66 89 84 24 88 00 00 	mov    %ax,0x88(%rsp)
   140004213:	00 
   140004214:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
   14000421b:	00 00 00 00 
   14000421f:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140004226:	00 
   140004227:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
   14000422e:	00 00 00 00 
   140004232:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   140004239:	ff ff ff ff 
   14000423d:	85 c9                	test   %ecx,%ecx
   14000423f:	0f 84 da 00 00 00    	je     14000431f <__mingw_pformat+0x17f>
   140004245:	4c 8d 2d d4 50 00 00 	lea    0x50d4(%rip),%r13        # 140009320 <.rdata+0x20>
   14000424c:	eb 1b                	jmp    140004269 <__mingw_pformat+0xc9>
   14000424e:	66 90                	xchg   %ax,%ax
   140004250:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004255:	e8 86 e5 ff ff       	call   1400027e0 <__pformat_putc>
   14000425a:	0f be 0b             	movsbl (%rbx),%ecx
   14000425d:	48 83 c3 01          	add    $0x1,%rbx
   140004261:	85 c9                	test   %ecx,%ecx
   140004263:	0f 84 af 00 00 00    	je     140004318 <__mingw_pformat+0x178>
   140004269:	83 f9 25             	cmp    $0x25,%ecx
   14000426c:	75 e2                	jne    140004250 <__mingw_pformat+0xb0>
   14000426e:	0f b6 03             	movzbl (%rbx),%eax
   140004271:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   140004275:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
   14000427c:	ff ff 
   14000427e:	84 c0                	test   %al,%al
   140004280:	0f 84 92 00 00 00    	je     140004318 <__mingw_pformat+0x178>
   140004286:	48 89 de             	mov    %rbx,%rsi
   140004289:	4c 8d 54 24 7c       	lea    0x7c(%rsp),%r10
   14000428e:	45 31 ff             	xor    %r15d,%r15d
   140004291:	45 31 f6             	xor    %r14d,%r14d
   140004294:	41 bb 03 00 00 00    	mov    $0x3,%r11d
   14000429a:	8d 50 e0             	lea    -0x20(%rax),%edx
   14000429d:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
   1400042a1:	0f be c8             	movsbl %al,%ecx
   1400042a4:	80 fa 5a             	cmp    $0x5a,%dl
   1400042a7:	77 17                	ja     1400042c0 <__mingw_pformat+0x120>
   1400042a9:	0f b6 d2             	movzbl %dl,%edx
   1400042ac:	49 63 54 95 00       	movslq 0x0(%r13,%rdx,4),%rdx
   1400042b1:	4c 01 ea             	add    %r13,%rdx
   1400042b4:	ff e2                	jmp    *%rdx
   1400042b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400042bd:	00 00 00 
   1400042c0:	83 e8 30             	sub    $0x30,%eax
   1400042c3:	3c 09                	cmp    $0x9,%al
   1400042c5:	0f 87 ad 06 00 00    	ja     140004978 <__mingw_pformat+0x7d8>
   1400042cb:	41 83 fe 03          	cmp    $0x3,%r14d
   1400042cf:	0f 87 a3 06 00 00    	ja     140004978 <__mingw_pformat+0x7d8>
   1400042d5:	45 85 f6             	test   %r14d,%r14d
   1400042d8:	0f 85 63 06 00 00    	jne    140004941 <__mingw_pformat+0x7a1>
   1400042de:	41 be 01 00 00 00    	mov    $0x1,%r14d
   1400042e4:	4d 85 d2             	test   %r10,%r10
   1400042e7:	0f 84 ab 04 00 00    	je     140004798 <__mingw_pformat+0x5f8>
   1400042ed:	41 8b 02             	mov    (%r10),%eax
   1400042f0:	85 c0                	test   %eax,%eax
   1400042f2:	0f 88 56 06 00 00    	js     14000494e <__mingw_pformat+0x7ae>
   1400042f8:	8d 04 80             	lea    (%rax,%rax,4),%eax
   1400042fb:	8d 44 41 d0          	lea    -0x30(%rcx,%rax,2),%eax
   1400042ff:	41 89 02             	mov    %eax,(%r10)
   140004302:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004306:	48 89 ee             	mov    %rbp,%rsi
   140004309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004310:	84 c0                	test   %al,%al
   140004312:	75 86                	jne    14000429a <__mingw_pformat+0xfa>
   140004314:	0f 1f 40 00          	nopl   0x0(%rax)
   140004318:	8b 8c 24 94 00 00 00 	mov    0x94(%rsp),%ecx
   14000431f:	89 c8                	mov    %ecx,%eax
   140004321:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   140004328:	5b                   	pop    %rbx
   140004329:	5e                   	pop    %rsi
   14000432a:	5f                   	pop    %rdi
   14000432b:	5d                   	pop    %rbp
   14000432c:	41 5c                	pop    %r12
   14000432e:	41 5d                	pop    %r13
   140004330:	41 5e                	pop    %r14
   140004332:	41 5f                	pop    %r15
   140004334:	c3                   	ret    
   140004335:	0f 1f 00             	nopl   (%rax)
   140004338:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   14000433d:	41 83 ff 03          	cmp    $0x3,%r15d
   140004341:	0f 84 0c 07 00 00    	je     140004a53 <__mingw_pformat+0x8b3>
   140004347:	45 8b 0c 24          	mov    (%r12),%r9d
   14000434b:	41 83 ff 02          	cmp    $0x2,%r15d
   14000434f:	74 14                	je     140004365 <__mingw_pformat+0x1c5>
   140004351:	41 83 ff 01          	cmp    $0x1,%r15d
   140004355:	0f 84 4a 06 00 00    	je     1400049a5 <__mingw_pformat+0x805>
   14000435b:	41 83 ff 05          	cmp    $0x5,%r15d
   14000435f:	75 04                	jne    140004365 <__mingw_pformat+0x1c5>
   140004361:	45 0f b6 c9          	movzbl %r9b,%r9d
   140004365:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   14000436a:	83 f9 75             	cmp    $0x75,%ecx
   14000436d:	0f 84 ee 06 00 00    	je     140004a61 <__mingw_pformat+0x8c1>
   140004373:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004378:	4c 89 ca             	mov    %r9,%rdx
   14000437b:	49 89 dc             	mov    %rbx,%r12
   14000437e:	48 89 eb             	mov    %rbp,%rbx
   140004381:	e8 fa f3 ff ff       	call   140003780 <__pformat_xint.isra.0>
   140004386:	e9 cf fe ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   14000438b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004390:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004394:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   14000439a:	48 89 ee             	mov    %rbp,%rsi
   14000439d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400043a3:	e9 68 ff ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400043a8:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
   1400043af:	00 
   1400043b0:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   1400043b5:	41 83 ff 03          	cmp    $0x3,%r15d
   1400043b9:	0f 84 86 06 00 00    	je     140004a45 <__mingw_pformat+0x8a5>
   1400043bf:	49 63 0c 24          	movslq (%r12),%rcx
   1400043c3:	41 83 ff 02          	cmp    $0x2,%r15d
   1400043c7:	74 14                	je     1400043dd <__mingw_pformat+0x23d>
   1400043c9:	41 83 ff 01          	cmp    $0x1,%r15d
   1400043cd:	0f 84 e0 05 00 00    	je     1400049b3 <__mingw_pformat+0x813>
   1400043d3:	41 83 ff 05          	cmp    $0x5,%r15d
   1400043d7:	75 04                	jne    1400043dd <__mingw_pformat+0x23d>
   1400043d9:	48 0f be c9          	movsbq %cl,%rcx
   1400043dd:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
   1400043e2:	48 89 c8             	mov    %rcx,%rax
   1400043e5:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400043ea:	49 89 dc             	mov    %rbx,%r12
   1400043ed:	48 89 eb             	mov    %rbp,%rbx
   1400043f0:	48 c1 f8 3f          	sar    $0x3f,%rax
   1400043f4:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   1400043f9:	e8 02 ed ff ff       	call   140003100 <__pformat_int.isra.0>
   1400043fe:	e9 57 fe ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004403:	41 83 ef 02          	sub    $0x2,%r15d
   140004407:	49 8b 0c 24          	mov    (%r12),%rcx
   14000440b:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   140004410:	41 83 ff 01          	cmp    $0x1,%r15d
   140004414:	0f 86 d5 04 00 00    	jbe    1400048ef <__mingw_pformat+0x74f>
   14000441a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000441f:	49 89 dc             	mov    %rbx,%r12
   140004422:	48 89 eb             	mov    %rbp,%rbx
   140004425:	e8 36 e6 ff ff       	call   140002a60 <__pformat_puts>
   14000442a:	e9 2b fe ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   14000442f:	41 83 ef 02          	sub    $0x2,%r15d
   140004433:	41 8b 04 24          	mov    (%r12),%eax
   140004437:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   14000443c:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140004443:	ff ff ff ff 
   140004447:	41 83 ff 01          	cmp    $0x1,%r15d
   14000444b:	0f 86 62 02 00 00    	jbe    1400046b3 <__mingw_pformat+0x513>
   140004451:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140004456:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   14000445b:	88 44 24 60          	mov    %al,0x60(%rsp)
   14000445f:	49 89 dc             	mov    %rbx,%r12
   140004462:	ba 01 00 00 00       	mov    $0x1,%edx
   140004467:	48 89 eb             	mov    %rbp,%rbx
   14000446a:	e8 01 e5 ff ff       	call   140002970 <__pformat_putchars>
   14000446f:	e9 e6 fd ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004474:	45 85 f6             	test   %r14d,%r14d
   140004477:	0f 85 1b 03 00 00    	jne    140004798 <__mingw_pformat+0x5f8>
   14000447d:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004481:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140004488:	00 
   140004489:	48 89 ee             	mov    %rbp,%rsi
   14000448c:	e9 7f fe ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004491:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004495:	3c 36                	cmp    $0x36,%al
   140004497:	0f 84 85 05 00 00    	je     140004a22 <__mingw_pformat+0x882>
   14000449d:	3c 33                	cmp    $0x33,%al
   14000449f:	0f 84 c9 04 00 00    	je     14000496e <__mingw_pformat+0x7ce>
   1400044a5:	48 89 ee             	mov    %rbp,%rsi
   1400044a8:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   1400044ae:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400044b4:	e9 57 fe ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400044b9:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400044bd:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
   1400044c2:	48 89 ee             	mov    %rbp,%rsi
   1400044c5:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400044cb:	e9 40 fe ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400044d0:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400044d4:	49 8b 14 24          	mov    (%r12),%rdx
   1400044d8:	49 83 c4 08          	add    $0x8,%r12
   1400044dc:	83 c8 20             	or     $0x20,%eax
   1400044df:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400044e3:	a8 04                	test   $0x4,%al
   1400044e5:	0f 84 3c 02 00 00    	je     140004727 <__mingw_pformat+0x587>
   1400044eb:	db 2a                	fldt   (%rdx)
   1400044ed:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400044f2:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400044f7:	48 89 eb             	mov    %rbp,%rbx
   1400044fa:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400044fe:	e8 2d eb ff ff       	call   140003030 <__pformat_float>
   140004503:	e9 52 fd ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004508:	8b 44 24 78          	mov    0x78(%rsp),%eax
   14000450c:	49 8b 14 24          	mov    (%r12),%rdx
   140004510:	49 83 c4 08          	add    $0x8,%r12
   140004514:	83 c8 20             	or     $0x20,%eax
   140004517:	89 44 24 78          	mov    %eax,0x78(%rsp)
   14000451b:	a8 04                	test   $0x4,%al
   14000451d:	0f 84 3c 02 00 00    	je     14000475f <__mingw_pformat+0x5bf>
   140004523:	db 2a                	fldt   (%rdx)
   140004525:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   14000452a:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000452f:	48 89 eb             	mov    %rbp,%rbx
   140004532:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004536:	e8 d5 f0 ff ff       	call   140003610 <__pformat_gfloat>
   14000453b:	e9 1a fd ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004540:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004544:	49 8b 14 24          	mov    (%r12),%rdx
   140004548:	49 83 c4 08          	add    $0x8,%r12
   14000454c:	83 c8 20             	or     $0x20,%eax
   14000454f:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004553:	a8 04                	test   $0x4,%al
   140004555:	0f 84 94 01 00 00    	je     1400046ef <__mingw_pformat+0x54f>
   14000455b:	db 2a                	fldt   (%rdx)
   14000455d:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004562:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004567:	48 89 eb             	mov    %rbp,%rbx
   14000456a:	db 7c 24 40          	fstpt  0x40(%rsp)
   14000456e:	e8 ed ef ff ff       	call   140003560 <__pformat_efloat>
   140004573:	e9 e2 fc ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004578:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000457c:	3c 6c                	cmp    $0x6c,%al
   14000457e:	0f 84 85 04 00 00    	je     140004a09 <__mingw_pformat+0x869>
   140004584:	48 89 ee             	mov    %rbp,%rsi
   140004587:	41 bf 02 00 00 00    	mov    $0x2,%r15d
   14000458d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004593:	e9 78 fd ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004598:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000459c:	3c 68                	cmp    $0x68,%al
   14000459e:	0f 84 4c 04 00 00    	je     1400049f0 <__mingw_pformat+0x850>
   1400045a4:	48 89 ee             	mov    %rbp,%rsi
   1400045a7:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   1400045ad:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400045b3:	e9 58 fd ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400045b8:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
   1400045bc:	48 89 eb             	mov    %rbp,%rbx
   1400045bf:	e8 3c 2c 00 00       	call   140007200 <strerror>
   1400045c4:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400045c9:	48 89 c1             	mov    %rax,%rcx
   1400045cc:	e8 8f e4 ff ff       	call   140002a60 <__pformat_puts>
   1400045d1:	e9 84 fc ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   1400045d6:	49 8b 14 24          	mov    (%r12),%rdx
   1400045da:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
   1400045e1:	00 
   1400045e2:	49 83 c4 08          	add    $0x8,%r12
   1400045e6:	41 83 ff 05          	cmp    $0x5,%r15d
   1400045ea:	0f 84 f6 03 00 00    	je     1400049e6 <__mingw_pformat+0x846>
   1400045f0:	41 83 ff 01          	cmp    $0x1,%r15d
   1400045f4:	0f 84 8c 04 00 00    	je     140004a86 <__mingw_pformat+0x8e6>
   1400045fa:	41 83 ff 02          	cmp    $0x2,%r15d
   1400045fe:	74 0a                	je     14000460a <__mingw_pformat+0x46a>
   140004600:	41 83 ff 03          	cmp    $0x3,%r15d
   140004604:	0f 84 c3 04 00 00    	je     140004acd <__mingw_pformat+0x92d>
   14000460a:	89 02                	mov    %eax,(%rdx)
   14000460c:	48 89 eb             	mov    %rbp,%rbx
   14000460f:	e9 46 fc ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004614:	45 85 f6             	test   %r14d,%r14d
   140004617:	75 0a                	jne    140004623 <__mingw_pformat+0x483>
   140004619:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
   14000461d:	0f 84 69 03 00 00    	je     14000498c <__mingw_pformat+0x7ec>
   140004623:	49 8b 14 24          	mov    (%r12),%rdx
   140004627:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   14000462c:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004631:	b9 78 00 00 00       	mov    $0x78,%ecx
   140004636:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
   14000463d:	00 00 
   14000463f:	49 89 dc             	mov    %rbx,%r12
   140004642:	48 89 eb             	mov    %rbp,%rbx
   140004645:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
   14000464a:	e8 31 f1 ff ff       	call   140003780 <__pformat_xint.isra.0>
   14000464f:	e9 06 fc ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004654:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004658:	49 8b 14 24          	mov    (%r12),%rdx
   14000465c:	49 83 c4 08          	add    $0x8,%r12
   140004660:	83 c8 20             	or     $0x20,%eax
   140004663:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004667:	a8 04                	test   $0x4,%al
   140004669:	0f 84 65 01 00 00    	je     1400047d4 <__mingw_pformat+0x634>
   14000466f:	db 2a                	fldt   (%rdx)
   140004671:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004676:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000467b:	48 89 eb             	mov    %rbp,%rbx
   14000467e:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004682:	e8 99 f5 ff ff       	call   140003c20 <__pformat_xldouble>
   140004687:	e9 ce fb ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   14000468c:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004691:	b9 25 00 00 00       	mov    $0x25,%ecx
   140004696:	48 89 eb             	mov    %rbp,%rbx
   140004699:	e8 42 e1 ff ff       	call   1400027e0 <__pformat_putc>
   14000469e:	e9 b7 fb ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   1400046a3:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   1400046aa:	ff ff ff ff 
   1400046ae:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   1400046b3:	41 8b 04 24          	mov    (%r12),%eax
   1400046b7:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   1400046bc:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   1400046c1:	49 89 dc             	mov    %rbx,%r12
   1400046c4:	ba 01 00 00 00       	mov    $0x1,%edx
   1400046c9:	48 89 eb             	mov    %rbp,%rbx
   1400046cc:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
   1400046d1:	e8 6a e1 ff ff       	call   140002840 <__pformat_wputchars>
   1400046d6:	e9 7f fb ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   1400046db:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400046df:	49 8b 14 24          	mov    (%r12),%rdx
   1400046e3:	49 83 c4 08          	add    $0x8,%r12
   1400046e7:	a8 04                	test   $0x4,%al
   1400046e9:	0f 85 6c fe ff ff    	jne    14000455b <__mingw_pformat+0x3bb>
   1400046ef:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   1400046f4:	dd 44 24 30          	fldl   0x30(%rsp)
   1400046f8:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400046fd:	48 89 eb             	mov    %rbp,%rbx
   140004700:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004705:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004709:	e8 52 ee ff ff       	call   140003560 <__pformat_efloat>
   14000470e:	e9 47 fb ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004713:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004717:	49 8b 14 24          	mov    (%r12),%rdx
   14000471b:	49 83 c4 08          	add    $0x8,%r12
   14000471f:	a8 04                	test   $0x4,%al
   140004721:	0f 85 c4 fd ff ff    	jne    1400044eb <__mingw_pformat+0x34b>
   140004727:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   14000472c:	dd 44 24 30          	fldl   0x30(%rsp)
   140004730:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004735:	48 89 eb             	mov    %rbp,%rbx
   140004738:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   14000473d:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004741:	e8 ea e8 ff ff       	call   140003030 <__pformat_float>
   140004746:	e9 0f fb ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   14000474b:	8b 44 24 78          	mov    0x78(%rsp),%eax
   14000474f:	49 8b 14 24          	mov    (%r12),%rdx
   140004753:	49 83 c4 08          	add    $0x8,%r12
   140004757:	a8 04                	test   $0x4,%al
   140004759:	0f 85 c4 fd ff ff    	jne    140004523 <__mingw_pformat+0x383>
   14000475f:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004764:	dd 44 24 30          	fldl   0x30(%rsp)
   140004768:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000476d:	48 89 eb             	mov    %rbp,%rbx
   140004770:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004775:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004779:	e8 92 ee ff ff       	call   140003610 <__pformat_gfloat>
   14000477e:	e9 d7 fa ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004783:	45 85 f6             	test   %r14d,%r14d
   140004786:	0f 85 aa 01 00 00    	jne    140004936 <__mingw_pformat+0x796>
   14000478c:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
   140004793:	00 
   140004794:	0f 1f 40 00          	nopl   0x0(%rax)
   140004798:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000479c:	48 89 ee             	mov    %rbp,%rsi
   14000479f:	e9 6c fb ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400047a4:	41 83 fe 01          	cmp    $0x1,%r14d
   1400047a8:	0f 86 13 02 00 00    	jbe    1400049c1 <__mingw_pformat+0x821>
   1400047ae:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400047b2:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400047b8:	48 89 ee             	mov    %rbp,%rsi
   1400047bb:	e9 50 fb ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400047c0:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400047c4:	49 8b 14 24          	mov    (%r12),%rdx
   1400047c8:	49 83 c4 08          	add    $0x8,%r12
   1400047cc:	a8 04                	test   $0x4,%al
   1400047ce:	0f 85 9b fe ff ff    	jne    14000466f <__mingw_pformat+0x4cf>
   1400047d4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   1400047d9:	dd 44 24 30          	fldl   0x30(%rsp)
   1400047dd:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400047e2:	48 89 eb             	mov    %rbp,%rbx
   1400047e5:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400047ea:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400047ee:	e8 2d f4 ff ff       	call   140003c20 <__pformat_xldouble>
   1400047f3:	e9 62 fa ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   1400047f8:	45 85 f6             	test   %r14d,%r14d
   1400047fb:	75 9b                	jne    140004798 <__mingw_pformat+0x5f8>
   1400047fd:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004801:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
   140004806:	48 89 ee             	mov    %rbp,%rsi
   140004809:	e9 02 fb ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   14000480e:	45 85 f6             	test   %r14d,%r14d
   140004811:	75 85                	jne    140004798 <__mingw_pformat+0x5f8>
   140004813:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004817:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
   14000481e:	00 
   14000481f:	48 89 ee             	mov    %rbp,%rsi
   140004822:	e9 e9 fa ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004827:	4d 85 d2             	test   %r10,%r10
   14000482a:	74 82                	je     1400047ae <__mingw_pformat+0x60e>
   14000482c:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
   140004833:	0f 85 20 01 00 00    	jne    140004959 <__mingw_pformat+0x7b9>
   140004839:	41 8b 04 24          	mov    (%r12),%eax
   14000483d:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
   140004842:	41 89 02             	mov    %eax,(%r10)
   140004845:	85 c0                	test   %eax,%eax
   140004847:	0f 88 44 02 00 00    	js     140004a91 <__mingw_pformat+0x8f1>
   14000484d:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004851:	49 89 d4             	mov    %rdx,%r12
   140004854:	48 89 ee             	mov    %rbp,%rsi
   140004857:	45 31 d2             	xor    %r10d,%r10d
   14000485a:	e9 b1 fa ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   14000485f:	45 85 f6             	test   %r14d,%r14d
   140004862:	0f 85 30 ff ff ff    	jne    140004798 <__mingw_pformat+0x5f8>
   140004868:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
   14000486f:	00 
   140004870:	e9 23 ff ff ff       	jmp    140004798 <__mingw_pformat+0x5f8>
   140004875:	45 85 f6             	test   %r14d,%r14d
   140004878:	0f 85 1a ff ff ff    	jne    140004798 <__mingw_pformat+0x5f8>
   14000487e:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
   140004883:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
   140004888:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
   14000488f:	00 
   140004890:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   140004895:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   14000489c:	00 
   14000489d:	e8 7e 29 00 00       	call   140007220 <localeconv>
   1400048a2:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
   1400048a7:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
   1400048ac:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   1400048b2:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400048b6:	e8 75 2b 00 00       	call   140007430 <mbrtowc>
   1400048bb:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
   1400048c0:	41 bb 03 00 00 00    	mov    $0x3,%r11d
   1400048c6:	85 c0                	test   %eax,%eax
   1400048c8:	7e 0d                	jle    1400048d7 <__mingw_pformat+0x737>
   1400048ca:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
   1400048cf:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   1400048d6:	00 
   1400048d7:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
   1400048de:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400048e2:	48 89 ee             	mov    %rbp,%rsi
   1400048e5:	e9 26 fa ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400048ea:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   1400048ef:	4d 8b 24 24          	mov    (%r12),%r12
   1400048f3:	48 8d 05 16 4a 00 00 	lea    0x4a16(%rip),%rax        # 140009310 <.rdata+0x10>
   1400048fa:	4d 85 e4             	test   %r12,%r12
   1400048fd:	4c 0f 44 e0          	cmove  %rax,%r12
   140004901:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140004908:	85 c0                	test   %eax,%eax
   14000490a:	0f 88 69 01 00 00    	js     140004a79 <__mingw_pformat+0x8d9>
   140004910:	48 63 d0             	movslq %eax,%rdx
   140004913:	4c 89 e1             	mov    %r12,%rcx
   140004916:	e8 95 28 00 00       	call   1400071b0 <wcsnlen>
   14000491b:	4c 89 e1             	mov    %r12,%rcx
   14000491e:	48 89 c2             	mov    %rax,%rdx
   140004921:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004926:	49 89 dc             	mov    %rbx,%r12
   140004929:	e8 12 df ff ff       	call   140002840 <__pformat_wputchars>
   14000492e:	48 89 eb             	mov    %rbp,%rbx
   140004931:	e9 24 f9 ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004936:	41 83 fe 03          	cmp    $0x3,%r14d
   14000493a:	77 3c                	ja     140004978 <__mingw_pformat+0x7d8>
   14000493c:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004941:	41 83 fe 02          	cmp    $0x2,%r14d
   140004945:	45 0f 44 f3          	cmove  %r11d,%r14d
   140004949:	e9 96 f9 ff ff       	jmp    1400042e4 <__mingw_pformat+0x144>
   14000494e:	83 e9 30             	sub    $0x30,%ecx
   140004951:	41 89 0a             	mov    %ecx,(%r10)
   140004954:	e9 3f fe ff ff       	jmp    140004798 <__mingw_pformat+0x5f8>
   140004959:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000495d:	45 31 d2             	xor    %r10d,%r10d
   140004960:	48 89 ee             	mov    %rbp,%rsi
   140004963:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004969:	e9 a2 f9 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   14000496e:	80 7e 02 32          	cmpb   $0x32,0x2(%rsi)
   140004972:	0f 84 3c 01 00 00    	je     140004ab4 <__mingw_pformat+0x914>
   140004978:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000497d:	b9 25 00 00 00       	mov    $0x25,%ecx
   140004982:	e8 59 de ff ff       	call   1400027e0 <__pformat_putc>
   140004987:	e9 ce f8 ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   14000498c:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
   140004993:	10 00 00 00 
   140004997:	89 f8                	mov    %edi,%eax
   140004999:	80 cc 02             	or     $0x2,%ah
   14000499c:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400049a0:	e9 7e fc ff ff       	jmp    140004623 <__mingw_pformat+0x483>
   1400049a5:	45 0f b7 c9          	movzwl %r9w,%r9d
   1400049a9:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   1400049ae:	e9 b7 f9 ff ff       	jmp    14000436a <__mingw_pformat+0x1ca>
   1400049b3:	48 0f bf c9          	movswq %cx,%rcx
   1400049b7:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
   1400049bc:	e9 21 fa ff ff       	jmp    1400043e2 <__mingw_pformat+0x242>
   1400049c1:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400049c5:	41 be 02 00 00 00    	mov    $0x2,%r14d
   1400049cb:	48 89 ee             	mov    %rbp,%rsi
   1400049ce:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
   1400049d5:	00 00 00 00 
   1400049d9:	4c 8d 94 24 80 00 00 	lea    0x80(%rsp),%r10
   1400049e0:	00 
   1400049e1:	e9 2a f9 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   1400049e6:	88 02                	mov    %al,(%rdx)
   1400049e8:	48 89 eb             	mov    %rbp,%rbx
   1400049eb:	e9 6a f8 ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   1400049f0:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   1400049f4:	41 bf 05 00 00 00    	mov    $0x5,%r15d
   1400049fa:	48 83 c6 02          	add    $0x2,%rsi
   1400049fe:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004a04:	e9 07 f9 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004a09:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   140004a0d:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   140004a13:	48 83 c6 02          	add    $0x2,%rsi
   140004a17:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004a1d:	e9 ee f8 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004a22:	80 7e 02 34          	cmpb   $0x34,0x2(%rsi)
   140004a26:	0f 85 4c ff ff ff    	jne    140004978 <__mingw_pformat+0x7d8>
   140004a2c:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140004a30:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   140004a36:	48 83 c6 03          	add    $0x3,%rsi
   140004a3a:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004a40:	e9 cb f8 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004a45:	49 8b 0c 24          	mov    (%r12),%rcx
   140004a49:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
   140004a4e:	e9 8f f9 ff ff       	jmp    1400043e2 <__mingw_pformat+0x242>
   140004a53:	4d 8b 0c 24          	mov    (%r12),%r9
   140004a57:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   140004a5c:	e9 09 f9 ff ff       	jmp    14000436a <__mingw_pformat+0x1ca>
   140004a61:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004a66:	4c 89 c9             	mov    %r9,%rcx
   140004a69:	49 89 dc             	mov    %rbx,%r12
   140004a6c:	48 89 eb             	mov    %rbp,%rbx
   140004a6f:	e8 8c e6 ff ff       	call   140003100 <__pformat_int.isra.0>
   140004a74:	e9 e1 f7 ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004a79:	4c 89 e1             	mov    %r12,%rcx
   140004a7c:	e8 5f 27 00 00       	call   1400071e0 <wcslen>
   140004a81:	e9 95 fe ff ff       	jmp    14000491b <__mingw_pformat+0x77b>
   140004a86:	66 89 02             	mov    %ax,(%rdx)
   140004a89:	48 89 eb             	mov    %rbp,%rbx
   140004a8c:	e9 c9 f7 ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004a91:	45 85 f6             	test   %r14d,%r14d
   140004a94:	75 42                	jne    140004ad8 <__mingw_pformat+0x938>
   140004a96:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004a9a:	f7 5c 24 7c          	negl   0x7c(%rsp)
   140004a9e:	49 89 d4             	mov    %rdx,%r12
   140004aa1:	48 89 ee             	mov    %rbp,%rsi
   140004aa4:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140004aab:	00 
   140004aac:	45 31 d2             	xor    %r10d,%r10d
   140004aaf:	e9 5c f8 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004ab4:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140004ab8:	41 bf 02 00 00 00    	mov    $0x2,%r15d
   140004abe:	48 83 c6 03          	add    $0x3,%rsi
   140004ac2:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004ac8:	e9 43 f8 ff ff       	jmp    140004310 <__mingw_pformat+0x170>
   140004acd:	48 89 02             	mov    %rax,(%rdx)
   140004ad0:	48 89 eb             	mov    %rbp,%rbx
   140004ad3:	e9 82 f7 ff ff       	jmp    14000425a <__mingw_pformat+0xba>
   140004ad8:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140004adf:	ff ff ff ff 
   140004ae3:	e9 65 fd ff ff       	jmp    14000484d <__mingw_pformat+0x6ad>
   140004ae8:	90                   	nop
   140004ae9:	90                   	nop
   140004aea:	90                   	nop
   140004aeb:	90                   	nop
   140004aec:	90                   	nop
   140004aed:	90                   	nop
   140004aee:	90                   	nop
   140004aef:	90                   	nop

0000000140004af0 <__rv_alloc_D2A>:
   140004af0:	53                   	push   %rbx
   140004af1:	48 83 ec 20          	sub    $0x20,%rsp
   140004af5:	31 db                	xor    %ebx,%ebx
   140004af7:	83 f9 1b             	cmp    $0x1b,%ecx
   140004afa:	7e 18                	jle    140004b14 <__rv_alloc_D2A+0x24>
   140004afc:	b8 04 00 00 00       	mov    $0x4,%eax
   140004b01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004b08:	01 c0                	add    %eax,%eax
   140004b0a:	83 c3 01             	add    $0x1,%ebx
   140004b0d:	8d 50 17             	lea    0x17(%rax),%edx
   140004b10:	39 ca                	cmp    %ecx,%edx
   140004b12:	7c f4                	jl     140004b08 <__rv_alloc_D2A+0x18>
   140004b14:	89 d9                	mov    %ebx,%ecx
   140004b16:	e8 95 1b 00 00       	call   1400066b0 <__Balloc_D2A>
   140004b1b:	89 18                	mov    %ebx,(%rax)
   140004b1d:	48 83 c0 04          	add    $0x4,%rax
   140004b21:	48 83 c4 20          	add    $0x20,%rsp
   140004b25:	5b                   	pop    %rbx
   140004b26:	c3                   	ret    
   140004b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004b2e:	00 00 

0000000140004b30 <__nrv_alloc_D2A>:
   140004b30:	57                   	push   %rdi
   140004b31:	56                   	push   %rsi
   140004b32:	53                   	push   %rbx
   140004b33:	48 83 ec 20          	sub    $0x20,%rsp
   140004b37:	48 89 ce             	mov    %rcx,%rsi
   140004b3a:	48 89 d7             	mov    %rdx,%rdi
   140004b3d:	41 83 f8 1b          	cmp    $0x1b,%r8d
   140004b41:	7e 6d                	jle    140004bb0 <__nrv_alloc_D2A+0x80>
   140004b43:	b8 04 00 00 00       	mov    $0x4,%eax
   140004b48:	31 db                	xor    %ebx,%ebx
   140004b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004b50:	01 c0                	add    %eax,%eax
   140004b52:	83 c3 01             	add    $0x1,%ebx
   140004b55:	8d 48 17             	lea    0x17(%rax),%ecx
   140004b58:	41 39 c8             	cmp    %ecx,%r8d
   140004b5b:	7f f3                	jg     140004b50 <__nrv_alloc_D2A+0x20>
   140004b5d:	89 d9                	mov    %ebx,%ecx
   140004b5f:	e8 4c 1b 00 00       	call   1400066b0 <__Balloc_D2A>
   140004b64:	48 8d 4e 01          	lea    0x1(%rsi),%rcx
   140004b68:	89 18                	mov    %ebx,(%rax)
   140004b6a:	0f b6 16             	movzbl (%rsi),%edx
   140004b6d:	4c 8d 48 04          	lea    0x4(%rax),%r9
   140004b71:	88 50 04             	mov    %dl,0x4(%rax)
   140004b74:	4c 89 c8             	mov    %r9,%rax
   140004b77:	84 d2                	test   %dl,%dl
   140004b79:	74 19                	je     140004b94 <__nrv_alloc_D2A+0x64>
   140004b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004b80:	44 0f b6 01          	movzbl (%rcx),%r8d
   140004b84:	48 83 c0 01          	add    $0x1,%rax
   140004b88:	48 83 c1 01          	add    $0x1,%rcx
   140004b8c:	44 88 00             	mov    %r8b,(%rax)
   140004b8f:	45 84 c0             	test   %r8b,%r8b
   140004b92:	75 ec                	jne    140004b80 <__nrv_alloc_D2A+0x50>
   140004b94:	48 85 ff             	test   %rdi,%rdi
   140004b97:	74 03                	je     140004b9c <__nrv_alloc_D2A+0x6c>
   140004b99:	48 89 07             	mov    %rax,(%rdi)
   140004b9c:	4c 89 c8             	mov    %r9,%rax
   140004b9f:	48 83 c4 20          	add    $0x20,%rsp
   140004ba3:	5b                   	pop    %rbx
   140004ba4:	5e                   	pop    %rsi
   140004ba5:	5f                   	pop    %rdi
   140004ba6:	c3                   	ret    
   140004ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004bae:	00 00 
   140004bb0:	31 db                	xor    %ebx,%ebx
   140004bb2:	eb a9                	jmp    140004b5d <__nrv_alloc_D2A+0x2d>
   140004bb4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004bbb:	00 00 00 00 
   140004bbf:	90                   	nop

0000000140004bc0 <__freedtoa>:
   140004bc0:	ba 01 00 00 00       	mov    $0x1,%edx
   140004bc5:	48 89 c8             	mov    %rcx,%rax
   140004bc8:	8b 49 fc             	mov    -0x4(%rcx),%ecx
   140004bcb:	d3 e2                	shl    %cl,%edx
   140004bcd:	89 48 04             	mov    %ecx,0x4(%rax)
   140004bd0:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
   140004bd4:	89 50 08             	mov    %edx,0x8(%rax)
   140004bd7:	e9 d4 1b 00 00       	jmp    1400067b0 <__Bfree_D2A>
   140004bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004be0 <__quorem_D2A>:
   140004be0:	41 57                	push   %r15
   140004be2:	41 56                	push   %r14
   140004be4:	41 55                	push   %r13
   140004be6:	41 54                	push   %r12
   140004be8:	55                   	push   %rbp
   140004be9:	57                   	push   %rdi
   140004bea:	56                   	push   %rsi
   140004beb:	53                   	push   %rbx
   140004bec:	48 83 ec 38          	sub    $0x38,%rsp
   140004bf0:	31 c0                	xor    %eax,%eax
   140004bf2:	8b 72 14             	mov    0x14(%rdx),%esi
   140004bf5:	49 89 cc             	mov    %rcx,%r12
   140004bf8:	49 89 d6             	mov    %rdx,%r14
   140004bfb:	39 71 14             	cmp    %esi,0x14(%rcx)
   140004bfe:	0f 8c e4 00 00 00    	jl     140004ce8 <__quorem_D2A+0x108>
   140004c04:	83 ee 01             	sub    $0x1,%esi
   140004c07:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
   140004c0b:	48 8d 69 18          	lea    0x18(%rcx),%rbp
   140004c0f:	31 d2                	xor    %edx,%edx
   140004c11:	4c 63 de             	movslq %esi,%r11
   140004c14:	49 c1 e3 02          	shl    $0x2,%r11
   140004c18:	4a 8d 3c 1b          	lea    (%rbx,%r11,1),%rdi
   140004c1c:	49 01 eb             	add    %rbp,%r11
   140004c1f:	8b 07                	mov    (%rdi),%eax
   140004c21:	45 8b 03             	mov    (%r11),%r8d
   140004c24:	8d 48 01             	lea    0x1(%rax),%ecx
   140004c27:	44 89 c0             	mov    %r8d,%eax
   140004c2a:	f7 f1                	div    %ecx
   140004c2c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140004c30:	41 89 c5             	mov    %eax,%r13d
   140004c33:	41 39 c8             	cmp    %ecx,%r8d
   140004c36:	72 56                	jb     140004c8e <__quorem_D2A+0xae>
   140004c38:	41 89 c7             	mov    %eax,%r15d
   140004c3b:	49 89 da             	mov    %rbx,%r10
   140004c3e:	49 89 e9             	mov    %rbp,%r9
   140004c41:	31 c9                	xor    %ecx,%ecx
   140004c43:	31 d2                	xor    %edx,%edx
   140004c45:	0f 1f 00             	nopl   (%rax)
   140004c48:	41 8b 02             	mov    (%r10),%eax
   140004c4b:	45 8b 01             	mov    (%r9),%r8d
   140004c4e:	49 83 c2 04          	add    $0x4,%r10
   140004c52:	49 83 c1 04          	add    $0x4,%r9
   140004c56:	49 0f af c7          	imul   %r15,%rax
   140004c5a:	48 01 c8             	add    %rcx,%rax
   140004c5d:	48 89 c1             	mov    %rax,%rcx
   140004c60:	89 c0                	mov    %eax,%eax
   140004c62:	48 01 d0             	add    %rdx,%rax
   140004c65:	48 c1 e9 20          	shr    $0x20,%rcx
   140004c69:	49 29 c0             	sub    %rax,%r8
   140004c6c:	4c 89 c0             	mov    %r8,%rax
   140004c6f:	45 89 41 fc          	mov    %r8d,-0x4(%r9)
   140004c73:	48 c1 e8 20          	shr    $0x20,%rax
   140004c77:	83 e0 01             	and    $0x1,%eax
   140004c7a:	48 89 c2             	mov    %rax,%rdx
   140004c7d:	4c 39 d7             	cmp    %r10,%rdi
   140004c80:	73 c6                	jae    140004c48 <__quorem_D2A+0x68>
   140004c82:	45 8b 0b             	mov    (%r11),%r9d
   140004c85:	45 85 c9             	test   %r9d,%r9d
   140004c88:	0f 84 9d 00 00 00    	je     140004d2b <__quorem_D2A+0x14b>
   140004c8e:	4c 89 f2             	mov    %r14,%rdx
   140004c91:	4c 89 e1             	mov    %r12,%rcx
   140004c94:	e8 77 20 00 00       	call   140006d10 <__cmp_D2A>
   140004c99:	85 c0                	test   %eax,%eax
   140004c9b:	78 47                	js     140004ce4 <__quorem_D2A+0x104>
   140004c9d:	41 8d 45 01          	lea    0x1(%r13),%eax
   140004ca1:	49 89 e8             	mov    %rbp,%r8
   140004ca4:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140004ca8:	31 c0                	xor    %eax,%eax
   140004caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004cb0:	8b 0b                	mov    (%rbx),%ecx
   140004cb2:	41 8b 10             	mov    (%r8),%edx
   140004cb5:	48 83 c3 04          	add    $0x4,%rbx
   140004cb9:	49 83 c0 04          	add    $0x4,%r8
   140004cbd:	48 01 c8             	add    %rcx,%rax
   140004cc0:	48 29 c2             	sub    %rax,%rdx
   140004cc3:	48 89 d0             	mov    %rdx,%rax
   140004cc6:	41 89 50 fc          	mov    %edx,-0x4(%r8)
   140004cca:	48 c1 e8 20          	shr    $0x20,%rax
   140004cce:	83 e0 01             	and    $0x1,%eax
   140004cd1:	48 39 df             	cmp    %rbx,%rdi
   140004cd4:	73 da                	jae    140004cb0 <__quorem_D2A+0xd0>
   140004cd6:	48 63 c6             	movslq %esi,%rax
   140004cd9:	48 8d 44 85 00       	lea    0x0(%rbp,%rax,4),%rax
   140004cde:	8b 08                	mov    (%rax),%ecx
   140004ce0:	85 c9                	test   %ecx,%ecx
   140004ce2:	74 25                	je     140004d09 <__quorem_D2A+0x129>
   140004ce4:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
   140004ce8:	48 83 c4 38          	add    $0x38,%rsp
   140004cec:	5b                   	pop    %rbx
   140004ced:	5e                   	pop    %rsi
   140004cee:	5f                   	pop    %rdi
   140004cef:	5d                   	pop    %rbp
   140004cf0:	41 5c                	pop    %r12
   140004cf2:	41 5d                	pop    %r13
   140004cf4:	41 5e                	pop    %r14
   140004cf6:	41 5f                	pop    %r15
   140004cf8:	c3                   	ret    
   140004cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004d00:	8b 10                	mov    (%rax),%edx
   140004d02:	85 d2                	test   %edx,%edx
   140004d04:	75 0c                	jne    140004d12 <__quorem_D2A+0x132>
   140004d06:	83 ee 01             	sub    $0x1,%esi
   140004d09:	48 83 e8 04          	sub    $0x4,%rax
   140004d0d:	48 39 c5             	cmp    %rax,%rbp
   140004d10:	72 ee                	jb     140004d00 <__quorem_D2A+0x120>
   140004d12:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140004d17:	eb cb                	jmp    140004ce4 <__quorem_D2A+0x104>
   140004d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004d20:	45 8b 03             	mov    (%r11),%r8d
   140004d23:	45 85 c0             	test   %r8d,%r8d
   140004d26:	75 0c                	jne    140004d34 <__quorem_D2A+0x154>
   140004d28:	83 ee 01             	sub    $0x1,%esi
   140004d2b:	49 83 eb 04          	sub    $0x4,%r11
   140004d2f:	4c 39 dd             	cmp    %r11,%rbp
   140004d32:	72 ec                	jb     140004d20 <__quorem_D2A+0x140>
   140004d34:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140004d39:	4c 89 f2             	mov    %r14,%rdx
   140004d3c:	4c 89 e1             	mov    %r12,%rcx
   140004d3f:	e8 cc 1f 00 00       	call   140006d10 <__cmp_D2A>
   140004d44:	85 c0                	test   %eax,%eax
   140004d46:	0f 89 51 ff ff ff    	jns    140004c9d <__quorem_D2A+0xbd>
   140004d4c:	eb 96                	jmp    140004ce4 <__quorem_D2A+0x104>
   140004d4e:	90                   	nop
   140004d4f:	90                   	nop

0000000140004d50 <__gdtoa>:
   140004d50:	41 57                	push   %r15
   140004d52:	41 56                	push   %r14
   140004d54:	41 55                	push   %r13
   140004d56:	41 54                	push   %r12
   140004d58:	55                   	push   %rbp
   140004d59:	57                   	push   %rdi
   140004d5a:	56                   	push   %rsi
   140004d5b:	53                   	push   %rbx
   140004d5c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140004d63:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   140004d6a:	00 
   140004d6b:	45 8b 21             	mov    (%r9),%r12d
   140004d6e:	44 89 e0             	mov    %r12d,%eax
   140004d71:	83 e0 cf             	and    $0xffffffcf,%eax
   140004d74:	41 89 01             	mov    %eax,(%r9)
   140004d77:	44 89 e0             	mov    %r12d,%eax
   140004d7a:	48 89 cd             	mov    %rcx,%rbp
   140004d7d:	89 d6                	mov    %edx,%esi
   140004d7f:	83 e0 07             	and    $0x7,%eax
   140004d82:	4c 89 84 24 f0 00 00 	mov    %r8,0xf0(%rsp)
   140004d89:	00 
   140004d8a:	4c 89 cf             	mov    %r9,%rdi
   140004d8d:	83 f8 03             	cmp    $0x3,%eax
   140004d90:	0f 84 ba 02 00 00    	je     140005050 <__gdtoa+0x300>
   140004d96:	44 89 e3             	mov    %r12d,%ebx
   140004d99:	83 e3 04             	and    $0x4,%ebx
   140004d9c:	89 5c 24 24          	mov    %ebx,0x24(%rsp)
   140004da0:	0f 85 1a 02 00 00    	jne    140004fc0 <__gdtoa+0x270>
   140004da6:	85 c0                	test   %eax,%eax
   140004da8:	0f 84 72 02 00 00    	je     140005020 <__gdtoa+0x2d0>
   140004dae:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004db1:	31 c0                	xor    %eax,%eax
   140004db3:	83 fa 01             	cmp    $0x1,%edx
   140004db6:	0f 87 32 02 00 00    	ja     140004fee <__gdtoa+0x29e>
   140004dbc:	44 8b 29             	mov    (%rcx),%r13d
   140004dbf:	b8 20 00 00 00       	mov    $0x20,%eax
   140004dc4:	31 c9                	xor    %ecx,%ecx
   140004dc6:	41 83 fd 20          	cmp    $0x20,%r13d
   140004dca:	0f 8e b0 02 00 00    	jle    140005080 <__gdtoa+0x330>
   140004dd0:	01 c0                	add    %eax,%eax
   140004dd2:	83 c1 01             	add    $0x1,%ecx
   140004dd5:	41 39 c5             	cmp    %eax,%r13d
   140004dd8:	7f f6                	jg     140004dd0 <__gdtoa+0x80>
   140004dda:	e8 d1 18 00 00       	call   1400066b0 <__Balloc_D2A>
   140004ddf:	45 8d 55 ff          	lea    -0x1(%r13),%r10d
   140004de3:	4c 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%r8
   140004dea:	00 
   140004deb:	41 c1 fa 05          	sar    $0x5,%r10d
   140004def:	49 89 c7             	mov    %rax,%r15
   140004df2:	48 8d 50 18          	lea    0x18(%rax),%rdx
   140004df6:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
   140004dfd:	00 
   140004dfe:	4d 63 d2             	movslq %r10d,%r10
   140004e01:	49 c1 e2 02          	shl    $0x2,%r10
   140004e05:	4d 01 d0             	add    %r10,%r8
   140004e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004e0f:	00 
   140004e10:	8b 08                	mov    (%rax),%ecx
   140004e12:	48 83 c0 04          	add    $0x4,%rax
   140004e16:	48 83 c2 04          	add    $0x4,%rdx
   140004e1a:	89 4a fc             	mov    %ecx,-0x4(%rdx)
   140004e1d:	49 39 c0             	cmp    %rax,%r8
   140004e20:	73 ee                	jae    140004e10 <__gdtoa+0xc0>
   140004e22:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
   140004e29:	00 
   140004e2a:	49 83 c0 01          	add    $0x1,%r8
   140004e2e:	49 8d 42 04          	lea    0x4(%r10),%rax
   140004e32:	48 8d 53 01          	lea    0x1(%rbx),%rdx
   140004e36:	49 39 d0             	cmp    %rdx,%r8
   140004e39:	ba 04 00 00 00       	mov    $0x4,%edx
   140004e3e:	48 0f 42 c2          	cmovb  %rdx,%rax
   140004e42:	48 c1 f8 02          	sar    $0x2,%rax
   140004e46:	89 c3                	mov    %eax,%ebx
   140004e48:	49 8d 04 87          	lea    (%r15,%rax,4),%rax
   140004e4c:	eb 0e                	jmp    140004e5c <__gdtoa+0x10c>
   140004e4e:	66 90                	xchg   %ax,%ax
   140004e50:	48 83 e8 04          	sub    $0x4,%rax
   140004e54:	85 db                	test   %ebx,%ebx
   140004e56:	0f 84 34 02 00 00    	je     140005090 <__gdtoa+0x340>
   140004e5c:	44 8b 58 14          	mov    0x14(%rax),%r11d
   140004e60:	89 da                	mov    %ebx,%edx
   140004e62:	83 eb 01             	sub    $0x1,%ebx
   140004e65:	45 85 db             	test   %r11d,%r11d
   140004e68:	74 e6                	je     140004e50 <__gdtoa+0x100>
   140004e6a:	48 63 db             	movslq %ebx,%rbx
   140004e6d:	41 89 57 14          	mov    %edx,0x14(%r15)
   140004e71:	41 0f bd 44 9f 18    	bsr    0x18(%r15,%rbx,4),%eax
   140004e77:	89 d3                	mov    %edx,%ebx
   140004e79:	c1 e3 05             	shl    $0x5,%ebx
   140004e7c:	83 f0 1f             	xor    $0x1f,%eax
   140004e7f:	29 c3                	sub    %eax,%ebx
   140004e81:	4c 89 f9             	mov    %r15,%rcx
   140004e84:	e8 a7 16 00 00       	call   140006530 <__trailz_D2A>
   140004e89:	89 74 24 38          	mov    %esi,0x38(%rsp)
   140004e8d:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   140004e91:	85 c0                	test   %eax,%eax
   140004e93:	0f 85 07 02 00 00    	jne    1400050a0 <__gdtoa+0x350>
   140004e99:	45 8b 57 14          	mov    0x14(%r15),%r10d
   140004e9d:	45 85 d2             	test   %r10d,%r10d
   140004ea0:	0f 84 72 01 00 00    	je     140005018 <__gdtoa+0x2c8>
   140004ea6:	48 8d 54 24 7c       	lea    0x7c(%rsp),%rdx
   140004eab:	4c 89 f9             	mov    %r15,%rcx
   140004eae:	e8 7d 20 00 00       	call   140006f30 <__b2d_D2A>
   140004eb3:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   140004eb7:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140004ebb:	66 49 0f 7e c0       	movq   %xmm0,%r8
   140004ec0:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140004ec5:	49 c1 e8 20          	shr    $0x20,%r8
   140004ec9:	01 d9                	add    %ebx,%ecx
   140004ecb:	89 c0                	mov    %eax,%eax
   140004ecd:	41 81 e0 ff ff 0f 00 	and    $0xfffff,%r8d
   140004ed4:	8d 51 ff             	lea    -0x1(%rcx),%edx
   140004ed7:	41 81 c8 00 00 f0 3f 	or     $0x3ff00000,%r8d
   140004ede:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
   140004ee2:	41 89 d1             	mov    %edx,%r9d
   140004ee5:	f2 0f 59 0d cb 45 00 	mulsd  0x45cb(%rip),%xmm1        # 1400094b8 <.rdata+0x28>
   140004eec:	00 
   140004eed:	4d 89 c2             	mov    %r8,%r10
   140004ef0:	41 c1 f9 1f          	sar    $0x1f,%r9d
   140004ef4:	49 c1 e2 20          	shl    $0x20,%r10
   140004ef8:	45 89 cb             	mov    %r9d,%r11d
   140004efb:	4c 09 d0             	or     %r10,%rax
   140004efe:	41 31 d3             	xor    %edx,%r11d
   140004f01:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140004f06:	f2 0f 5c 05 92 45 00 	subsd  0x4592(%rip),%xmm0        # 1400094a0 <.rdata+0x10>
   140004f0d:	00 
   140004f0e:	45 29 cb             	sub    %r9d,%r11d
   140004f11:	f2 0f 59 05 8f 45 00 	mulsd  0x458f(%rip),%xmm0        # 1400094a8 <.rdata+0x18>
   140004f18:	00 
   140004f19:	41 81 eb 35 04 00 00 	sub    $0x435,%r11d
   140004f20:	f2 0f 58 05 88 45 00 	addsd  0x4588(%rip),%xmm0        # 1400094b0 <.rdata+0x20>
   140004f27:	00 
   140004f28:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140004f2c:	45 85 db             	test   %r11d,%r11d
   140004f2f:	7e 15                	jle    140004f46 <__gdtoa+0x1f6>
   140004f31:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140004f35:	f2 41 0f 2a cb       	cvtsi2sd %r11d,%xmm1
   140004f3a:	f2 0f 59 0d 7e 45 00 	mulsd  0x457e(%rip),%xmm1        # 1400094c0 <.rdata+0x30>
   140004f41:	00 
   140004f42:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140004f46:	66 0f ef f6          	pxor   %xmm6,%xmm6
   140004f4a:	f2 44 0f 2c f0       	cvttsd2si %xmm0,%r14d
   140004f4f:	66 0f 2f f0          	comisd %xmm0,%xmm6
   140004f53:	0f 87 8f 07 00 00    	ja     1400056e8 <__gdtoa+0x998>
   140004f59:	41 89 d3             	mov    %edx,%r11d
   140004f5c:	89 c0                	mov    %eax,%eax
   140004f5e:	41 c1 e3 14          	shl    $0x14,%r11d
   140004f62:	45 01 d8             	add    %r11d,%r8d
   140004f65:	49 c1 e0 20          	shl    $0x20,%r8
   140004f69:	4c 09 c0             	or     %r8,%rax
   140004f6c:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   140004f71:	49 89 c2             	mov    %rax,%r10
   140004f74:	89 d8                	mov    %ebx,%eax
   140004f76:	29 d0                	sub    %edx,%eax
   140004f78:	44 8d 58 ff          	lea    -0x1(%rax),%r11d
   140004f7c:	41 83 fe 16          	cmp    $0x16,%r14d
   140004f80:	0f 87 3a 01 00 00    	ja     1400050c0 <__gdtoa+0x370>
   140004f86:	4c 8b 05 d3 47 00 00 	mov    0x47d3(%rip),%r8        # 140009760 <.refptr.__tens_D2A>
   140004f8d:	49 63 d6             	movslq %r14d,%rdx
   140004f90:	66 49 0f 6e ea       	movq   %r10,%xmm5
   140004f95:	f2 41 0f 10 04 d0    	movsd  (%r8,%rdx,8),%xmm0
   140004f9b:	66 0f 2f c5          	comisd %xmm5,%xmm0
   140004f9f:	0f 86 cb 03 00 00    	jbe    140005370 <__gdtoa+0x620>
   140004fa5:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
   140004fac:	00 
   140004fad:	41 83 ee 01          	sub    $0x1,%r14d
   140004fb1:	e9 12 01 00 00       	jmp    1400050c8 <__gdtoa+0x378>
   140004fb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004fbd:	00 00 00 
   140004fc0:	83 f8 04             	cmp    $0x4,%eax
   140004fc3:	75 4b                	jne    140005010 <__gdtoa+0x2c0>
   140004fc5:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004fcc:	00 
   140004fcd:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
   140004fd4:	00 
   140004fd5:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140004fdb:	48 8d 0d b7 44 00 00 	lea    0x44b7(%rip),%rcx        # 140009499 <.rdata+0x9>
   140004fe2:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140004fe8:	e8 43 fb ff ff       	call   140004b30 <__nrv_alloc_D2A>
   140004fed:	90                   	nop
   140004fee:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   140004ff5:	00 
   140004ff6:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140004ffd:	5b                   	pop    %rbx
   140004ffe:	5e                   	pop    %rsi
   140004fff:	5f                   	pop    %rdi
   140005000:	5d                   	pop    %rbp
   140005001:	41 5c                	pop    %r12
   140005003:	41 5d                	pop    %r13
   140005005:	41 5e                	pop    %r14
   140005007:	41 5f                	pop    %r15
   140005009:	c3                   	ret    
   14000500a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005010:	31 c0                	xor    %eax,%eax
   140005012:	eb da                	jmp    140004fee <__gdtoa+0x29e>
   140005014:	0f 1f 40 00          	nopl   0x0(%rax)
   140005018:	4c 89 f9             	mov    %r15,%rcx
   14000501b:	e8 90 17 00 00       	call   1400067b0 <__Bfree_D2A>
   140005020:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140005027:	00 
   140005028:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
   14000502f:	00 
   140005030:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140005036:	48 8d 0d 60 44 00 00 	lea    0x4460(%rip),%rcx        # 14000949d <.rdata+0xd>
   14000503d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140005043:	e8 e8 fa ff ff       	call   140004b30 <__nrv_alloc_D2A>
   140005048:	eb a4                	jmp    140004fee <__gdtoa+0x29e>
   14000504a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005050:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140005057:	00 
   140005058:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
   14000505f:	00 
   140005060:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140005066:	48 8d 0d 23 44 00 00 	lea    0x4423(%rip),%rcx        # 140009490 <.rdata>
   14000506d:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140005073:	e8 b8 fa ff ff       	call   140004b30 <__nrv_alloc_D2A>
   140005078:	e9 71 ff ff ff       	jmp    140004fee <__gdtoa+0x29e>
   14000507d:	0f 1f 00             	nopl   (%rax)
   140005080:	89 d9                	mov    %ebx,%ecx
   140005082:	e9 53 fd ff ff       	jmp    140004dda <__gdtoa+0x8a>
   140005087:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000508e:	00 00 
   140005090:	41 c7 47 14 00 00 00 	movl   $0x0,0x14(%r15)
   140005097:	00 
   140005098:	e9 e4 fd ff ff       	jmp    140004e81 <__gdtoa+0x131>
   14000509d:	0f 1f 00             	nopl   (%rax)
   1400050a0:	89 c2                	mov    %eax,%edx
   1400050a2:	4c 89 f9             	mov    %r15,%rcx
   1400050a5:	e8 86 13 00 00       	call   140006430 <__rshift_D2A>
   1400050aa:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
   1400050ae:	8d 14 30             	lea    (%rax,%rsi,1),%edx
   1400050b1:	29 c3                	sub    %eax,%ebx
   1400050b3:	89 54 24 38          	mov    %edx,0x38(%rsp)
   1400050b7:	e9 dd fd ff ff       	jmp    140004e99 <__gdtoa+0x149>
   1400050bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400050c0:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
   1400050c7:	00 
   1400050c8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
   1400050cf:	00 
   1400050d0:	45 85 db             	test   %r11d,%r11d
   1400050d3:	0f 88 f7 05 00 00    	js     1400056d0 <__gdtoa+0x980>
   1400050d9:	45 85 f6             	test   %r14d,%r14d
   1400050dc:	0f 89 a7 02 00 00    	jns    140005389 <__gdtoa+0x639>
   1400050e2:	44 89 f0             	mov    %r14d,%eax
   1400050e5:	44 29 74 24 44       	sub    %r14d,0x44(%rsp)
   1400050ea:	f7 d8                	neg    %eax
   1400050ec:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
   1400050f1:	45 31 f6             	xor    %r14d,%r14d
   1400050f4:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400050f8:	83 bc 24 00 01 00 00 	cmpl   $0x9,0x100(%rsp)
   1400050ff:	09 
   140005100:	0f 87 9a 02 00 00    	ja     1400053a0 <__gdtoa+0x650>
   140005106:	83 bc 24 00 01 00 00 	cmpl   $0x5,0x100(%rsp)
   14000510d:	05 
   14000510e:	0f 8f fc 05 00 00    	jg     140005710 <__gdtoa+0x9c0>
   140005114:	81 c1 fd 03 00 00    	add    $0x3fd,%ecx
   14000511a:	31 c0                	xor    %eax,%eax
   14000511c:	81 f9 f7 07 00 00    	cmp    $0x7f7,%ecx
   140005122:	0f 96 c0             	setbe  %al
   140005125:	89 44 24 40          	mov    %eax,0x40(%rsp)
   140005129:	83 bc 24 00 01 00 00 	cmpl   $0x4,0x100(%rsp)
   140005130:	04 
   140005131:	0f 84 81 0b 00 00    	je     140005cb8 <__gdtoa+0xf68>
   140005137:	83 bc 24 00 01 00 00 	cmpl   $0x5,0x100(%rsp)
   14000513e:	05 
   14000513f:	0f 84 eb 09 00 00    	je     140005b30 <__gdtoa+0xde0>
   140005145:	83 bc 24 00 01 00 00 	cmpl   $0x2,0x100(%rsp)
   14000514c:	02 
   14000514d:	0f 85 e5 06 00 00    	jne    140005838 <__gdtoa+0xae8>
   140005153:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
   14000515a:	00 
   14000515b:	44 8b 8c 24 08 01 00 	mov    0x108(%rsp),%r9d
   140005162:	00 
   140005163:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005168:	45 85 c9             	test   %r9d,%r9d
   14000516b:	0f 4f 8c 24 08 01 00 	cmovg  0x108(%rsp),%ecx
   140005172:	00 
   140005173:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
   140005177:	89 4c 24 6c          	mov    %ecx,0x6c(%rsp)
   14000517b:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
   14000517f:	89 8c 24 08 01 00 00 	mov    %ecx,0x108(%rsp)
   140005186:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
   14000518b:	e8 60 f9 ff ff       	call   140004af0 <__rv_alloc_D2A>
   140005190:	83 7c 24 28 0e       	cmpl   $0xe,0x28(%rsp)
   140005195:	44 0f b6 4c 24 40    	movzbl 0x40(%rsp),%r9d
   14000519b:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   1400051a0:	0f 96 c0             	setbe  %al
   1400051a3:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
   1400051a8:	41 21 c1             	and    %eax,%r9d
   1400051ab:	8b 45 0c             	mov    0xc(%rbp),%eax
   1400051ae:	83 e8 01             	sub    $0x1,%eax
   1400051b1:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400051b5:	74 29                	je     1400051e0 <__gdtoa+0x490>
   1400051b7:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
   1400051bb:	b8 02 00 00 00       	mov    $0x2,%eax
   1400051c0:	85 c9                	test   %ecx,%ecx
   1400051c2:	0f 49 c1             	cmovns %ecx,%eax
   1400051c5:	41 83 e4 08          	and    $0x8,%r12d
   1400051c9:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400051cd:	89 c1                	mov    %eax,%ecx
   1400051cf:	0f 84 e3 05 00 00    	je     1400057b8 <__gdtoa+0xa68>
   1400051d5:	b8 03 00 00 00       	mov    $0x3,%eax
   1400051da:	29 c8                	sub    %ecx,%eax
   1400051dc:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400051e0:	45 84 c9             	test   %r9b,%r9b
   1400051e3:	0f 84 cf 05 00 00    	je     1400057b8 <__gdtoa+0xa68>
   1400051e9:	8b 44 24 40          	mov    0x40(%rsp),%eax
   1400051ed:	0b 44 24 50          	or     0x50(%rsp),%eax
   1400051f1:	0f 85 c1 05 00 00    	jne    1400057b8 <__gdtoa+0xa68>
   1400051f7:	44 8b 44 24 68       	mov    0x68(%rsp),%r8d
   1400051fc:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   140005203:	00 
   140005204:	f2 0f 10 44 24 60    	movsd  0x60(%rsp),%xmm0
   14000520a:	45 85 c0             	test   %r8d,%r8d
   14000520d:	74 12                	je     140005221 <__gdtoa+0x4d1>
   14000520f:	f2 0f 10 25 b9 42 00 	movsd  0x42b9(%rip),%xmm4        # 1400094d0 <.rdata+0x40>
   140005216:	00 
   140005217:	66 0f 2f e0          	comisd %xmm0,%xmm4
   14000521b:	0f 87 54 0e 00 00    	ja     140006075 <__gdtoa+0x1325>
   140005221:	66 0f 10 c8          	movupd %xmm0,%xmm1
   140005225:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140005229:	f2 0f 58 0d b7 42 00 	addsd  0x42b7(%rip),%xmm1        # 1400094e8 <.rdata+0x58>
   140005230:	00 
   140005231:	66 48 0f 7e ca       	movq   %xmm1,%rdx
   140005236:	66 48 0f 7e c8       	movq   %xmm1,%rax
   14000523b:	48 c1 ea 20          	shr    $0x20,%rdx
   14000523f:	89 c0                	mov    %eax,%eax
   140005241:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   140005247:	48 c1 e2 20          	shl    $0x20,%rdx
   14000524b:	48 09 d0             	or     %rdx,%rax
   14000524e:	8b 54 24 28          	mov    0x28(%rsp),%edx
   140005252:	85 d2                	test   %edx,%edx
   140005254:	0f 84 26 05 00 00    	je     140005780 <__gdtoa+0xa30>
   14000525a:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
   14000525f:	45 31 e4             	xor    %r12d,%r12d
   140005262:	48 8b 15 f7 44 00 00 	mov    0x44f7(%rip),%rdx        # 140009760 <.refptr.__tens_D2A>
   140005269:	66 48 0f 6e d0       	movq   %rax,%xmm2
   14000526e:	41 8d 42 ff          	lea    -0x1(%r10),%eax
   140005272:	48 98                	cltq   
   140005274:	f2 0f 10 24 c2       	movsd  (%rdx,%rax,8),%xmm4
   140005279:	8b 44 24 48          	mov    0x48(%rsp),%eax
   14000527d:	85 c0                	test   %eax,%eax
   14000527f:	0f 84 ff 0c 00 00    	je     140005f84 <__gdtoa+0x1234>
   140005285:	f2 0f 10 0d 83 42 00 	movsd  0x4283(%rip),%xmm1        # 140009510 <.rdata+0x80>
   14000528c:	00 
   14000528d:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   140005291:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140005296:	f2 0f 5e cc          	divsd  %xmm4,%xmm1
   14000529a:	48 8d 51 01          	lea    0x1(%rcx),%rdx
   14000529e:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   1400052a2:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400052a6:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   1400052aa:	83 c0 30             	add    $0x30,%eax
   1400052ad:	88 01                	mov    %al,(%rcx)
   1400052af:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   1400052b3:	66 0f 2f c8          	comisd %xmm0,%xmm1
   1400052b7:	0f 87 c9 0f 00 00    	ja     140006286 <__gdtoa+0x1536>
   1400052bd:	f2 0f 10 25 0b 42 00 	movsd  0x420b(%rip),%xmm4        # 1400094d0 <.rdata+0x40>
   1400052c4:	00 
   1400052c5:	f2 0f 10 1d 0b 42 00 	movsd  0x420b(%rip),%xmm3        # 1400094d8 <.rdata+0x48>
   1400052cc:	00 
   1400052cd:	eb 41                	jmp    140005310 <__gdtoa+0x5c0>
   1400052cf:	90                   	nop
   1400052d0:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
   1400052d4:	83 c0 01             	add    $0x1,%eax
   1400052d7:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   1400052db:	44 39 d0             	cmp    %r10d,%eax
   1400052de:	0f 8d c5 04 00 00    	jge    1400057a9 <__gdtoa+0xa59>
   1400052e4:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   1400052e8:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400052ec:	48 83 c2 01          	add    $0x1,%rdx
   1400052f0:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
   1400052f4:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400052f8:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   1400052fc:	83 c0 30             	add    $0x30,%eax
   1400052ff:	88 42 ff             	mov    %al,-0x1(%rdx)
   140005302:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   140005306:	66 0f 2f c8          	comisd %xmm0,%xmm1
   14000530a:	0f 87 76 0f 00 00    	ja     140006286 <__gdtoa+0x1536>
   140005310:	66 0f 10 d4          	movupd %xmm4,%xmm2
   140005314:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
   140005318:	66 0f 2f ca          	comisd %xmm2,%xmm1
   14000531c:	76 b2                	jbe    1400052d0 <__gdtoa+0x580>
   14000531e:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   140005323:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
   140005327:	49 89 d0             	mov    %rdx,%r8
   14000532a:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000532e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005333:	eb 13                	jmp    140005348 <__gdtoa+0x5f8>
   140005335:	0f 1f 00             	nopl   (%rax)
   140005338:	48 39 c2             	cmp    %rax,%rdx
   14000533b:	0f 84 95 0e 00 00    	je     1400061d6 <__gdtoa+0x1486>
   140005341:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
   140005345:	49 89 d0             	mov    %rdx,%r8
   140005348:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
   14000534c:	80 f9 39             	cmp    $0x39,%cl
   14000534f:	74 e7                	je     140005338 <__gdtoa+0x5e8>
   140005351:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
   140005356:	83 c1 01             	add    $0x1,%ecx
   140005359:	88 0a                	mov    %cl,(%rdx)
   14000535b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
   140005362:	00 
   140005363:	e9 15 03 00 00       	jmp    14000567d <__gdtoa+0x92d>
   140005368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000536f:	00 
   140005370:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
   140005377:	00 
   140005378:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
   14000537f:	00 
   140005380:	45 85 db             	test   %r11d,%r11d
   140005383:	0f 88 47 03 00 00    	js     1400056d0 <__gdtoa+0x980>
   140005389:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
   14000538e:	45 01 f3             	add    %r14d,%r11d
   140005391:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   140005398:	00 
   140005399:	e9 5a fd ff ff       	jmp    1400050f8 <__gdtoa+0x3a8>
   14000539e:	66 90                	xchg   %ax,%ax
   1400053a0:	c7 84 24 00 01 00 00 	movl   $0x0,0x100(%rsp)
   1400053a7:	00 00 00 00 
   1400053ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400053af:	44 89 5c 24 28       	mov    %r11d,0x28(%rsp)
   1400053b4:	f2 41 0f 2a c5       	cvtsi2sd %r13d,%xmm0
   1400053b9:	f2 0f 59 05 07 41 00 	mulsd  0x4107(%rip),%xmm0        # 1400094c8 <.rdata+0x38>
   1400053c0:	00 
   1400053c1:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
   1400053c5:	83 c1 03             	add    $0x3,%ecx
   1400053c8:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
   1400053cc:	e8 1f f7 ff ff       	call   140004af0 <__rv_alloc_D2A>
   1400053d1:	44 8b 5c 24 28       	mov    0x28(%rsp),%r11d
   1400053d6:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   1400053db:	8b 45 0c             	mov    0xc(%rbp),%eax
   1400053de:	83 e8 01             	sub    $0x1,%eax
   1400053e1:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400053e5:	0f 85 3d 03 00 00    	jne    140005728 <__gdtoa+0x9d8>
   1400053eb:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   1400053ef:	85 c9                	test   %ecx,%ecx
   1400053f1:	0f 88 a6 0d 00 00    	js     14000619d <__gdtoa+0x144d>
   1400053f7:	8b 44 24 50          	mov    0x50(%rsp),%eax
   1400053fb:	3b 45 14             	cmp    0x14(%rbp),%eax
   1400053fe:	0f 8e d6 08 00 00    	jle    140005cda <__gdtoa+0xf8a>
   140005404:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
   14000540b:	00 00 00 00 
   14000540f:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
   140005416:	ff 
   140005417:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
   14000541e:	ff 
   14000541f:	90                   	nop
   140005420:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   140005424:	41 29 dd             	sub    %ebx,%r13d
   140005427:	8b 55 04             	mov    0x4(%rbp),%edx
   14000542a:	41 8d 45 01          	lea    0x1(%r13),%eax
   14000542e:	44 29 e9             	sub    %r13d,%ecx
   140005431:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   140005435:	39 d1                	cmp    %edx,%ecx
   140005437:	0f 8d 03 07 00 00    	jge    140005b40 <__gdtoa+0xdf0>
   14000543d:	8b 8c 24 00 01 00 00 	mov    0x100(%rsp),%ecx
   140005444:	83 e9 03             	sub    $0x3,%ecx
   140005447:	83 e1 fd             	and    $0xfffffffd,%ecx
   14000544a:	0f 84 f0 06 00 00    	je     140005b40 <__gdtoa+0xdf0>
   140005450:	8b 44 24 38          	mov    0x38(%rsp),%eax
   140005454:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
   140005459:	29 d0                	sub    %edx,%eax
   14000545b:	83 c0 01             	add    $0x1,%eax
   14000545e:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
   140005465:	01 
   140005466:	0f 9f c1             	setg   %cl
   140005469:	45 85 d2             	test   %r10d,%r10d
   14000546c:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   140005470:	0f 9f c2             	setg   %dl
   140005473:	84 d1                	test   %dl,%cl
   140005475:	74 09                	je     140005480 <__gdtoa+0x730>
   140005477:	44 39 d0             	cmp    %r10d,%eax
   14000547a:	0f 8f ce 06 00 00    	jg     140005b4e <__gdtoa+0xdfe>
   140005480:	8b 54 24 44          	mov    0x44(%rsp),%edx
   140005484:	41 01 c3             	add    %eax,%r11d
   140005487:	44 8b 6c 24 54       	mov    0x54(%rsp),%r13d
   14000548c:	01 d0                	add    %edx,%eax
   14000548e:	89 54 24 38          	mov    %edx,0x38(%rsp)
   140005492:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005496:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000549b:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
   1400054a0:	e8 2b 14 00 00       	call   1400068d0 <__i2b_D2A>
   1400054a5:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
   1400054ac:	00 
   1400054ad:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
   1400054b2:	49 89 c4             	mov    %rax,%r12
   1400054b5:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   1400054b9:	85 c9                	test   %ecx,%ecx
   1400054bb:	7e 1f                	jle    1400054dc <__gdtoa+0x78c>
   1400054bd:	45 85 db             	test   %r11d,%r11d
   1400054c0:	7e 1a                	jle    1400054dc <__gdtoa+0x78c>
   1400054c2:	44 39 d9             	cmp    %r11d,%ecx
   1400054c5:	89 c8                	mov    %ecx,%eax
   1400054c7:	41 0f 4f c3          	cmovg  %r11d,%eax
   1400054cb:	29 44 24 44          	sub    %eax,0x44(%rsp)
   1400054cf:	29 c1                	sub    %eax,%ecx
   1400054d1:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   1400054d5:	41 29 c3             	sub    %eax,%r11d
   1400054d8:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
   1400054dc:	8b 54 24 54          	mov    0x54(%rsp),%edx
   1400054e0:	85 d2                	test   %edx,%edx
   1400054e2:	74 53                	je     140005537 <__gdtoa+0x7e7>
   1400054e4:	8b 44 24 48          	mov    0x48(%rsp),%eax
   1400054e8:	85 c0                	test   %eax,%eax
   1400054ea:	0f 84 c0 08 00 00    	je     140005db0 <__gdtoa+0x1060>
   1400054f0:	45 85 ed             	test   %r13d,%r13d
   1400054f3:	7e 35                	jle    14000552a <__gdtoa+0x7da>
   1400054f5:	4c 89 e1             	mov    %r12,%rcx
   1400054f8:	44 89 ea             	mov    %r13d,%edx
   1400054fb:	44 89 5c 24 60       	mov    %r11d,0x60(%rsp)
   140005500:	e8 4b 15 00 00       	call   140006a50 <__pow5mult_D2A>
   140005505:	4c 89 fa             	mov    %r15,%rdx
   140005508:	48 89 c1             	mov    %rax,%rcx
   14000550b:	49 89 c4             	mov    %rax,%r12
   14000550e:	e8 ed 13 00 00       	call   140006900 <__mult_D2A>
   140005513:	4c 89 f9             	mov    %r15,%rcx
   140005516:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   14000551b:	e8 90 12 00 00       	call   1400067b0 <__Bfree_D2A>
   140005520:	4c 8b 7c 24 58       	mov    0x58(%rsp),%r15
   140005525:	44 8b 5c 24 60       	mov    0x60(%rsp),%r11d
   14000552a:	8b 54 24 54          	mov    0x54(%rsp),%edx
   14000552e:	44 29 ea             	sub    %r13d,%edx
   140005531:	0f 85 a9 08 00 00    	jne    140005de0 <__gdtoa+0x1090>
   140005537:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000553c:	44 89 5c 24 54       	mov    %r11d,0x54(%rsp)
   140005541:	e8 8a 13 00 00       	call   1400068d0 <__i2b_D2A>
   140005546:	83 fb 01             	cmp    $0x1,%ebx
   140005549:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
   14000554e:	0f 94 c3             	sete   %bl
   140005551:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
   140005558:	01 
   140005559:	49 89 c5             	mov    %rax,%r13
   14000555c:	0f 9e c0             	setle  %al
   14000555f:	21 c3                	and    %eax,%ebx
   140005561:	45 85 f6             	test   %r14d,%r14d
   140005564:	0f 8f 66 03 00 00    	jg     1400058d0 <__gdtoa+0xb80>
   14000556a:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   140005571:	00 
   140005572:	84 db                	test   %bl,%bl
   140005574:	0f 85 96 0b 00 00    	jne    140006110 <__gdtoa+0x13c0>
   14000557a:	be 1f 00 00 00       	mov    $0x1f,%esi
   14000557f:	45 85 f6             	test   %r14d,%r14d
   140005582:	0f 85 6b 03 00 00    	jne    1400058f3 <__gdtoa+0xba3>
   140005588:	44 29 de             	sub    %r11d,%esi
   14000558b:	44 8b 44 24 44       	mov    0x44(%rsp),%r8d
   140005590:	83 ee 04             	sub    $0x4,%esi
   140005593:	83 e6 1f             	and    $0x1f,%esi
   140005596:	41 01 f0             	add    %esi,%r8d
   140005599:	89 74 24 7c          	mov    %esi,0x7c(%rsp)
   14000559d:	89 f2                	mov    %esi,%edx
   14000559f:	45 85 c0             	test   %r8d,%r8d
   1400055a2:	7e 1c                	jle    1400055c0 <__gdtoa+0x870>
   1400055a4:	44 89 c2             	mov    %r8d,%edx
   1400055a7:	4c 89 f9             	mov    %r15,%rcx
   1400055aa:	44 89 5c 24 44       	mov    %r11d,0x44(%rsp)
   1400055af:	e8 2c 16 00 00       	call   140006be0 <__lshift_D2A>
   1400055b4:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
   1400055b8:	44 8b 5c 24 44       	mov    0x44(%rsp),%r11d
   1400055bd:	49 89 c7             	mov    %rax,%r15
   1400055c0:	44 01 da             	add    %r11d,%edx
   1400055c3:	85 d2                	test   %edx,%edx
   1400055c5:	7e 0b                	jle    1400055d2 <__gdtoa+0x882>
   1400055c7:	4c 89 e9             	mov    %r13,%rcx
   1400055ca:	e8 11 16 00 00       	call   140006be0 <__lshift_D2A>
   1400055cf:	49 89 c5             	mov    %rax,%r13
   1400055d2:	8b 44 24 68          	mov    0x68(%rsp),%eax
   1400055d6:	83 bc 24 00 01 00 00 	cmpl   $0x2,0x100(%rsp)
   1400055dd:	02 
   1400055de:	40 0f 9f c5          	setg   %bpl
   1400055e2:	85 c0                	test   %eax,%eax
   1400055e4:	0f 85 a6 05 00 00    	jne    140005b90 <__gdtoa+0xe40>
   1400055ea:	8b 44 24 28          	mov    0x28(%rsp),%eax
   1400055ee:	85 c0                	test   %eax,%eax
   1400055f0:	0f 8f 1a 03 00 00    	jg     140005910 <__gdtoa+0xbc0>
   1400055f6:	40 84 ed             	test   %bpl,%bpl
   1400055f9:	0f 84 11 03 00 00    	je     140005910 <__gdtoa+0xbc0>
   1400055ff:	44 8b 74 24 28       	mov    0x28(%rsp),%r14d
   140005604:	45 85 f6             	test   %r14d,%r14d
   140005607:	0f 85 a1 02 00 00    	jne    1400058ae <__gdtoa+0xb5e>
   14000560d:	4c 89 e9             	mov    %r13,%rcx
   140005610:	45 31 c0             	xor    %r8d,%r8d
   140005613:	ba 05 00 00 00       	mov    $0x5,%edx
   140005618:	e8 03 12 00 00       	call   140006820 <__multadd_D2A>
   14000561d:	4c 89 f9             	mov    %r15,%rcx
   140005620:	48 89 c2             	mov    %rax,%rdx
   140005623:	49 89 c5             	mov    %rax,%r13
   140005626:	e8 e5 16 00 00       	call   140006d10 <__cmp_D2A>
   14000562b:	85 c0                	test   %eax,%eax
   14000562d:	0f 8e 7b 02 00 00    	jle    1400058ae <__gdtoa+0xb5e>
   140005633:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140005637:	83 c0 02             	add    $0x2,%eax
   14000563a:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000563e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005643:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005649:	c6 00 31             	movb   $0x31,(%rax)
   14000564c:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
   140005653:	00 
   140005654:	4c 89 e9             	mov    %r13,%rcx
   140005657:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   14000565c:	e8 4f 11 00 00       	call   1400067b0 <__Bfree_D2A>
   140005661:	4d 85 e4             	test   %r12,%r12
   140005664:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140005669:	74 12                	je     14000567d <__gdtoa+0x92d>
   14000566b:	4c 89 e1             	mov    %r12,%rcx
   14000566e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140005673:	e8 38 11 00 00       	call   1400067b0 <__Bfree_D2A>
   140005678:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000567d:	4c 89 f9             	mov    %r15,%rcx
   140005680:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140005685:	e8 26 11 00 00       	call   1400067b0 <__Bfree_D2A>
   14000568a:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
   14000568f:	8b 5c 24 44          	mov    0x44(%rsp),%ebx
   140005693:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   14000569a:	00 
   14000569b:	48 83 bc 24 18 01 00 	cmpq   $0x0,0x118(%rsp)
   1400056a2:	00 00 
   1400056a4:	c6 06 00             	movb   $0x0,(%rsi)
   1400056a7:	89 18                	mov    %ebx,(%rax)
   1400056a9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400056ae:	74 0b                	je     1400056bb <__gdtoa+0x96b>
   1400056b0:	48 8b 9c 24 18 01 00 	mov    0x118(%rsp),%rbx
   1400056b7:	00 
   1400056b8:	48 89 33             	mov    %rsi,(%rbx)
   1400056bb:	8b 74 24 24          	mov    0x24(%rsp),%esi
   1400056bf:	09 37                	or     %esi,(%rdi)
   1400056c1:	e9 28 f9 ff ff       	jmp    140004fee <__gdtoa+0x29e>
   1400056c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400056cd:	00 00 00 
   1400056d0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400056d5:	45 31 db             	xor    %r11d,%r11d
   1400056d8:	29 c2                	sub    %eax,%edx
   1400056da:	89 54 24 44          	mov    %edx,0x44(%rsp)
   1400056de:	e9 f6 f9 ff ff       	jmp    1400050d9 <__gdtoa+0x389>
   1400056e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400056e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400056ec:	f2 41 0f 2a ce       	cvtsi2sd %r14d,%xmm1
   1400056f1:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   1400056f5:	7a 06                	jp     1400056fd <__gdtoa+0x9ad>
   1400056f7:	0f 84 5c f8 ff ff    	je     140004f59 <__gdtoa+0x209>
   1400056fd:	41 83 ee 01          	sub    $0x1,%r14d
   140005701:	e9 53 f8 ff ff       	jmp    140004f59 <__gdtoa+0x209>
   140005706:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000570d:	00 00 00 
   140005710:	83 ac 24 00 01 00 00 	subl   $0x4,0x100(%rsp)
   140005717:	04 
   140005718:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
   14000571f:	00 
   140005720:	e9 04 fa ff ff       	jmp    140005129 <__gdtoa+0x3d9>
   140005725:	0f 1f 00             	nopl   (%rax)
   140005728:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
   14000572f:	00 00 00 00 
   140005733:	45 31 c9             	xor    %r9d,%r9d
   140005736:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
   14000573d:	00 
   14000573e:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
   140005745:	ff 
   140005746:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
   14000574d:	ff 
   14000574e:	e9 64 fa ff ff       	jmp    1400051b7 <__gdtoa+0x467>
   140005753:	66 0f 10 c8          	movupd %xmm0,%xmm1
   140005757:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   14000575b:	f2 0f 58 0d 85 3d 00 	addsd  0x3d85(%rip),%xmm1        # 1400094e8 <.rdata+0x58>
   140005762:	00 
   140005763:	66 48 0f 7e ca       	movq   %xmm1,%rdx
   140005768:	66 48 0f 7e c8       	movq   %xmm1,%rax
   14000576d:	48 c1 ea 20          	shr    $0x20,%rdx
   140005771:	89 c0                	mov    %eax,%eax
   140005773:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   140005779:	48 c1 e2 20          	shl    $0x20,%rdx
   14000577d:	48 09 d0             	or     %rdx,%rax
   140005780:	f2 0f 5c 05 68 3d 00 	subsd  0x3d68(%rip),%xmm0        # 1400094f0 <.rdata+0x60>
   140005787:	00 
   140005788:	66 48 0f 6e c8       	movq   %rax,%xmm1
   14000578d:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140005791:	0f 87 9d 09 00 00    	ja     140006134 <__gdtoa+0x13e4>
   140005797:	66 0f 57 0d 61 3d 00 	xorpd  0x3d61(%rip),%xmm1        # 140009500 <.rdata+0x70>
   14000579e:	00 
   14000579f:	66 0f 2f c8          	comisd %xmm0,%xmm1
   1400057a3:	0f 87 ff 00 00 00    	ja     1400058a8 <__gdtoa+0xb58>
   1400057a9:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
   1400057b0:	00 
   1400057b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400057b8:	44 8b 4c 24 38       	mov    0x38(%rsp),%r9d
   1400057bd:	45 85 c9             	test   %r9d,%r9d
   1400057c0:	0f 88 ba 00 00 00    	js     140005880 <__gdtoa+0xb30>
   1400057c6:	8b 44 24 50          	mov    0x50(%rsp),%eax
   1400057ca:	39 45 14             	cmp    %eax,0x14(%rbp)
   1400057cd:	0f 8c ad 00 00 00    	jl     140005880 <__gdtoa+0xb30>
   1400057d3:	48 8b 15 86 3f 00 00 	mov    0x3f86(%rip),%rdx        # 140009760 <.refptr.__tens_D2A>
   1400057da:	44 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8d
   1400057e1:	00 
   1400057e2:	48 98                	cltq   
   1400057e4:	48 89 c6             	mov    %rax,%rsi
   1400057e7:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
   1400057ec:	45 85 c0             	test   %r8d,%r8d
   1400057ef:	0f 89 03 05 00 00    	jns    140005cf8 <__gdtoa+0xfa8>
   1400057f5:	8b 44 24 28          	mov    0x28(%rsp),%eax
   1400057f9:	85 c0                	test   %eax,%eax
   1400057fb:	0f 8f f7 04 00 00    	jg     140005cf8 <__gdtoa+0xfa8>
   140005801:	0f 85 a1 00 00 00    	jne    1400058a8 <__gdtoa+0xb58>
   140005807:	f2 0f 59 15 e1 3c 00 	mulsd  0x3ce1(%rip),%xmm2        # 1400094f0 <.rdata+0x60>
   14000580e:	00 
   14000580f:	66 0f 2f 54 24 60    	comisd 0x60(%rsp),%xmm2
   140005815:	0f 83 8d 00 00 00    	jae    1400058a8 <__gdtoa+0xb58>
   14000581b:	83 c6 02             	add    $0x2,%esi
   14000581e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005823:	45 31 ed             	xor    %r13d,%r13d
   140005826:	45 31 e4             	xor    %r12d,%r12d
   140005829:	89 74 24 44          	mov    %esi,0x44(%rsp)
   14000582d:	e9 11 fe ff ff       	jmp    140005643 <__gdtoa+0x8f3>
   140005832:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005838:	83 bc 24 00 01 00 00 	cmpl   $0x3,0x100(%rsp)
   14000583f:	03 
   140005840:	0f 85 65 fb ff ff    	jne    1400053ab <__gdtoa+0x65b>
   140005846:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
   14000584d:	00 
   14000584e:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140005852:	03 84 24 08 01 00 00 	add    0x108(%rsp),%eax
   140005859:	89 44 24 6c          	mov    %eax,0x6c(%rsp)
   14000585d:	83 c0 01             	add    $0x1,%eax
   140005860:	89 44 24 28          	mov    %eax,0x28(%rsp)
   140005864:	85 c0                	test   %eax,%eax
   140005866:	0f 8e 5c 04 00 00    	jle    140005cc8 <__gdtoa+0xf78>
   14000586c:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   140005870:	89 c1                	mov    %eax,%ecx
   140005872:	e9 0f f9 ff ff       	jmp    140005186 <__gdtoa+0x436>
   140005877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000587e:	00 00 
   140005880:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140005884:	85 c9                	test   %ecx,%ecx
   140005886:	0f 85 94 fb ff ff    	jne    140005420 <__gdtoa+0x6d0>
   14000588c:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140005890:	44 8b 6c 24 54       	mov    0x54(%rsp),%r13d
   140005895:	45 31 e4             	xor    %r12d,%r12d
   140005898:	89 44 24 38          	mov    %eax,0x38(%rsp)
   14000589c:	e9 14 fc ff ff       	jmp    1400054b5 <__gdtoa+0x765>
   1400058a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400058a8:	45 31 ed             	xor    %r13d,%r13d
   1400058ab:	45 31 e4             	xor    %r12d,%r12d
   1400058ae:	8b 84 24 08 01 00 00 	mov    0x108(%rsp),%eax
   1400058b5:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   1400058bc:	00 
   1400058bd:	f7 d8                	neg    %eax
   1400058bf:	89 44 24 44          	mov    %eax,0x44(%rsp)
   1400058c3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400058c8:	e9 87 fd ff ff       	jmp    140005654 <__gdtoa+0x904>
   1400058cd:	0f 1f 00             	nopl   (%rax)
   1400058d0:	4c 89 e9             	mov    %r13,%rcx
   1400058d3:	44 89 f2             	mov    %r14d,%edx
   1400058d6:	e8 75 11 00 00       	call   140006a50 <__pow5mult_D2A>
   1400058db:	84 db                	test   %bl,%bl
   1400058dd:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
   1400058e2:	49 89 c5             	mov    %rax,%r13
   1400058e5:	0f 85 a2 08 00 00    	jne    14000618d <__gdtoa+0x143d>
   1400058eb:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   1400058f2:	00 
   1400058f3:	41 8b 45 14          	mov    0x14(%r13),%eax
   1400058f7:	83 e8 01             	sub    $0x1,%eax
   1400058fa:	48 98                	cltq   
   1400058fc:	41 0f bd 74 85 18    	bsr    0x18(%r13,%rax,4),%esi
   140005902:	83 f6 1f             	xor    $0x1f,%esi
   140005905:	e9 7e fc ff ff       	jmp    140005588 <__gdtoa+0x838>
   14000590a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005910:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140005914:	8b 6c 24 48          	mov    0x48(%rsp),%ebp
   140005918:	83 c0 01             	add    $0x1,%eax
   14000591b:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000591f:	85 ed                	test   %ebp,%ebp
   140005921:	0f 84 c9 02 00 00    	je     140005bf0 <__gdtoa+0xea0>
   140005927:	8b 54 24 38          	mov    0x38(%rsp),%edx
   14000592b:	01 f2                	add    %esi,%edx
   14000592d:	85 d2                	test   %edx,%edx
   14000592f:	7e 0b                	jle    14000593c <__gdtoa+0xbec>
   140005931:	4c 89 e1             	mov    %r12,%rcx
   140005934:	e8 a7 12 00 00       	call   140006be0 <__lshift_D2A>
   140005939:	49 89 c4             	mov    %rax,%r12
   14000593c:	8b 5c 24 54          	mov    0x54(%rsp),%ebx
   140005940:	4d 89 e6             	mov    %r12,%r14
   140005943:	85 db                	test   %ebx,%ebx
   140005945:	0f 85 88 07 00 00    	jne    1400060d3 <__gdtoa+0x1383>
   14000594b:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005950:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005957:	00 
   140005958:	48 89 bc 24 f8 00 00 	mov    %rdi,0xf8(%rsp)
   14000595f:	00 
   140005960:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140005965:	e9 aa 00 00 00       	jmp    140005a14 <__gdtoa+0xcc4>
   14000596a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005970:	48 89 c1             	mov    %rax,%rcx
   140005973:	e8 38 0e 00 00       	call   1400067b0 <__Bfree_D2A>
   140005978:	b8 01 00 00 00       	mov    $0x1,%eax
   14000597d:	85 f6                	test   %esi,%esi
   14000597f:	0f 88 f0 04 00 00    	js     140005e75 <__gdtoa+0x1125>
   140005985:	0b b4 24 00 01 00 00 	or     0x100(%rsp),%esi
   14000598c:	75 11                	jne    14000599f <__gdtoa+0xc4f>
   14000598e:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
   140005995:	00 
   140005996:	f6 06 01             	testb  $0x1,(%rsi)
   140005999:	0f 84 d6 04 00 00    	je     140005e75 <__gdtoa+0x1125>
   14000599f:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
   1400059a4:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
   1400059a8:	85 c0                	test   %eax,%eax
   1400059aa:	7e 0b                	jle    1400059b7 <__gdtoa+0xc67>
   1400059ac:	83 7c 24 40 02       	cmpl   $0x2,0x40(%rsp)
   1400059b1:	0f 85 95 07 00 00    	jne    14000614c <__gdtoa+0x13fc>
   1400059b7:	88 5d ff             	mov    %bl,-0x1(%rbp)
   1400059ba:	8b 44 24 28          	mov    0x28(%rsp),%eax
   1400059be:	39 44 24 7c          	cmp    %eax,0x7c(%rsp)
   1400059c2:	0f 84 b2 07 00 00    	je     14000617a <__gdtoa+0x142a>
   1400059c8:	4c 89 f9             	mov    %r15,%rcx
   1400059cb:	45 31 c0             	xor    %r8d,%r8d
   1400059ce:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400059d3:	e8 48 0e 00 00       	call   140006820 <__multadd_D2A>
   1400059d8:	45 31 c0             	xor    %r8d,%r8d
   1400059db:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400059e0:	4c 89 e1             	mov    %r12,%rcx
   1400059e3:	49 89 c7             	mov    %rax,%r15
   1400059e6:	4d 39 f4             	cmp    %r14,%r12
   1400059e9:	0f 84 29 01 00 00    	je     140005b18 <__gdtoa+0xdc8>
   1400059ef:	e8 2c 0e 00 00       	call   140006820 <__multadd_D2A>
   1400059f4:	4c 89 f1             	mov    %r14,%rcx
   1400059f7:	45 31 c0             	xor    %r8d,%r8d
   1400059fa:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400059ff:	49 89 c4             	mov    %rax,%r12
   140005a02:	e8 19 0e 00 00       	call   140006820 <__multadd_D2A>
   140005a07:	49 89 c6             	mov    %rax,%r14
   140005a0a:	83 44 24 7c 01       	addl   $0x1,0x7c(%rsp)
   140005a0f:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
   140005a14:	4c 89 ea             	mov    %r13,%rdx
   140005a17:	4c 89 f9             	mov    %r15,%rcx
   140005a1a:	e8 c1 f1 ff ff       	call   140004be0 <__quorem_D2A>
   140005a1f:	4c 89 e2             	mov    %r12,%rdx
   140005a22:	4c 89 f9             	mov    %r15,%rcx
   140005a25:	89 c7                	mov    %eax,%edi
   140005a27:	8d 58 30             	lea    0x30(%rax),%ebx
   140005a2a:	e8 e1 12 00 00       	call   140006d10 <__cmp_D2A>
   140005a2f:	4c 89 f2             	mov    %r14,%rdx
   140005a32:	4c 89 e9             	mov    %r13,%rcx
   140005a35:	89 c6                	mov    %eax,%esi
   140005a37:	e8 24 13 00 00       	call   140006d60 <__diff_D2A>
   140005a3c:	44 8b 58 10          	mov    0x10(%rax),%r11d
   140005a40:	45 85 db             	test   %r11d,%r11d
   140005a43:	0f 85 27 ff ff ff    	jne    140005970 <__gdtoa+0xc20>
   140005a49:	48 89 c2             	mov    %rax,%rdx
   140005a4c:	4c 89 f9             	mov    %r15,%rcx
   140005a4f:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
   140005a54:	e8 b7 12 00 00       	call   140006d10 <__cmp_D2A>
   140005a59:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
   140005a5e:	89 c5                	mov    %eax,%ebp
   140005a60:	4c 89 c1             	mov    %r8,%rcx
   140005a63:	e8 48 0d 00 00       	call   1400067b0 <__Bfree_D2A>
   140005a68:	89 e8                	mov    %ebp,%eax
   140005a6a:	0b 84 24 00 01 00 00 	or     0x100(%rsp),%eax
   140005a71:	0f 85 ac 09 00 00    	jne    140006423 <__gdtoa+0x16d3>
   140005a77:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
   140005a7e:	00 
   140005a7f:	8b 12                	mov    (%rdx),%edx
   140005a81:	89 54 24 48          	mov    %edx,0x48(%rsp)
   140005a85:	83 e2 01             	and    $0x1,%edx
   140005a88:	0b 54 24 40          	or     0x40(%rsp),%edx
   140005a8c:	0f 85 eb fe ff ff    	jne    14000597d <__gdtoa+0xc2d>
   140005a92:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140005a97:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   140005a9b:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
   140005aa2:	00 
   140005aa3:	48 8d 6a 01          	lea    0x1(%rdx),%rbp
   140005aa7:	83 fb 39             	cmp    $0x39,%ebx
   140005aaa:	0f 84 99 07 00 00    	je     140006249 <__gdtoa+0x14f9>
   140005ab0:	85 f6                	test   %esi,%esi
   140005ab2:	0f 8e 48 09 00 00    	jle    140006400 <__gdtoa+0x16b0>
   140005ab8:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
   140005abc:	b8 20 00 00 00       	mov    $0x20,%eax
   140005ac1:	83 c3 31             	add    $0x31,%ebx
   140005ac4:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
   140005ac9:	89 44 24 24          	mov    %eax,0x24(%rsp)
   140005acd:	88 1e                	mov    %bl,(%rsi)
   140005acf:	4c 89 e6             	mov    %r12,%rsi
   140005ad2:	4d 89 f4             	mov    %r14,%r12
   140005ad5:	0f 1f 00             	nopl   (%rax)
   140005ad8:	4c 89 e9             	mov    %r13,%rcx
   140005adb:	e8 d0 0c 00 00       	call   1400067b0 <__Bfree_D2A>
   140005ae0:	4d 85 e4             	test   %r12,%r12
   140005ae3:	0f 84 e7 02 00 00    	je     140005dd0 <__gdtoa+0x1080>
   140005ae9:	48 85 f6             	test   %rsi,%rsi
   140005aec:	0f 84 85 07 00 00    	je     140006277 <__gdtoa+0x1527>
   140005af2:	4c 39 e6             	cmp    %r12,%rsi
   140005af5:	0f 84 7c 07 00 00    	je     140006277 <__gdtoa+0x1527>
   140005afb:	48 89 f1             	mov    %rsi,%rcx
   140005afe:	e8 ad 0c 00 00       	call   1400067b0 <__Bfree_D2A>
   140005b03:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005b08:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
   140005b0d:	e9 59 fb ff ff       	jmp    14000566b <__gdtoa+0x91b>
   140005b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005b18:	e8 03 0d 00 00       	call   140006820 <__multadd_D2A>
   140005b1d:	49 89 c4             	mov    %rax,%r12
   140005b20:	49 89 c6             	mov    %rax,%r14
   140005b23:	e9 e2 fe ff ff       	jmp    140005a0a <__gdtoa+0xcba>
   140005b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005b2f:	00 
   140005b30:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
   140005b37:	00 
   140005b38:	e9 11 fd ff ff       	jmp    14000584e <__gdtoa+0xafe>
   140005b3d:	0f 1f 00             	nopl   (%rax)
   140005b40:	83 bc 24 00 01 00 00 	cmpl   $0x1,0x100(%rsp)
   140005b47:	01 
   140005b48:	0f 8e 32 f9 ff ff    	jle    140005480 <__gdtoa+0x730>
   140005b4e:	8b 44 24 28          	mov    0x28(%rsp),%eax
   140005b52:	8b 4c 24 54          	mov    0x54(%rsp),%ecx
   140005b56:	83 e8 01             	sub    $0x1,%eax
   140005b59:	39 c1                	cmp    %eax,%ecx
   140005b5b:	0f 8c 99 02 00 00    	jl     140005dfa <__gdtoa+0x10aa>
   140005b61:	29 c1                	sub    %eax,%ecx
   140005b63:	41 89 cd             	mov    %ecx,%r13d
   140005b66:	8b 44 24 28          	mov    0x28(%rsp),%eax
   140005b6a:	85 c0                	test   %eax,%eax
   140005b6c:	0f 88 ea 04 00 00    	js     14000605c <__gdtoa+0x130c>
   140005b72:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
   140005b76:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   140005b7a:	41 01 c3             	add    %eax,%r11d
   140005b7d:	01 c8                	add    %ecx,%eax
   140005b7f:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
   140005b83:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005b87:	e9 0a f9 ff ff       	jmp    140005496 <__gdtoa+0x746>
   140005b8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005b90:	4c 89 ea             	mov    %r13,%rdx
   140005b93:	4c 89 f9             	mov    %r15,%rcx
   140005b96:	e8 75 11 00 00       	call   140006d10 <__cmp_D2A>
   140005b9b:	85 c0                	test   %eax,%eax
   140005b9d:	0f 89 47 fa ff ff    	jns    1400055ea <__gdtoa+0x89a>
   140005ba3:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140005ba7:	45 31 c0             	xor    %r8d,%r8d
   140005baa:	4c 89 f9             	mov    %r15,%rcx
   140005bad:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005bb2:	8d 58 ff             	lea    -0x1(%rax),%ebx
   140005bb5:	e8 66 0c 00 00       	call   140006820 <__multadd_D2A>
   140005bba:	49 89 c7             	mov    %rax,%r15
   140005bbd:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
   140005bc1:	85 c0                	test   %eax,%eax
   140005bc3:	0f 9e c0             	setle  %al
   140005bc6:	21 c5                	and    %eax,%ebp
   140005bc8:	8b 44 24 48          	mov    0x48(%rsp),%eax
   140005bcc:	85 c0                	test   %eax,%eax
   140005bce:	0f 85 34 07 00 00    	jne    140006308 <__gdtoa+0x15b8>
   140005bd4:	40 84 ed             	test   %bpl,%bpl
   140005bd7:	0f 85 89 06 00 00    	jne    140006266 <__gdtoa+0x1516>
   140005bdd:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140005be1:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005be5:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
   140005be9:	89 44 24 28          	mov    %eax,0x28(%rsp)
   140005bed:	0f 1f 00             	nopl   (%rax)
   140005bf0:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005bf7:	00 
   140005bf8:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
   140005bfd:	8b 74 24 28          	mov    0x28(%rsp),%esi
   140005c01:	eb 1d                	jmp    140005c20 <__gdtoa+0xed0>
   140005c03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005c08:	4c 89 f9             	mov    %r15,%rcx
   140005c0b:	45 31 c0             	xor    %r8d,%r8d
   140005c0e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005c13:	e8 08 0c 00 00       	call   140006820 <__multadd_D2A>
   140005c18:	83 44 24 7c 01       	addl   $0x1,0x7c(%rsp)
   140005c1d:	49 89 c7             	mov    %rax,%r15
   140005c20:	4c 89 ea             	mov    %r13,%rdx
   140005c23:	4c 89 f9             	mov    %r15,%rcx
   140005c26:	48 83 c5 01          	add    $0x1,%rbp
   140005c2a:	e8 b1 ef ff ff       	call   140004be0 <__quorem_D2A>
   140005c2f:	8d 58 30             	lea    0x30(%rax),%ebx
   140005c32:	88 5d ff             	mov    %bl,-0x1(%rbp)
   140005c35:	39 74 24 7c          	cmp    %esi,0x7c(%rsp)
   140005c39:	7c cd                	jl     140005c08 <__gdtoa+0xeb8>
   140005c3b:	31 f6                	xor    %esi,%esi
   140005c3d:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
   140005c41:	85 c9                	test   %ecx,%ecx
   140005c43:	0f 84 e0 01 00 00    	je     140005e29 <__gdtoa+0x10d9>
   140005c49:	41 8b 47 14          	mov    0x14(%r15),%eax
   140005c4d:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
   140005c51:	83 f9 02             	cmp    $0x2,%ecx
   140005c54:	0f 84 05 02 00 00    	je     140005e5f <__gdtoa+0x110f>
   140005c5a:	83 f8 01             	cmp    $0x1,%eax
   140005c5d:	7f 08                	jg     140005c67 <__gdtoa+0xf17>
   140005c5f:	41 8b 4f 18          	mov    0x18(%r15),%ecx
   140005c63:	85 c9                	test   %ecx,%ecx
   140005c65:	74 40                	je     140005ca7 <__gdtoa+0xf57>
   140005c67:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140005c6c:	eb 12                	jmp    140005c80 <__gdtoa+0xf30>
   140005c6e:	66 90                	xchg   %ax,%ax
   140005c70:	48 39 c8             	cmp    %rcx,%rax
   140005c73:	0f 84 96 01 00 00    	je     140005e0f <__gdtoa+0x10bf>
   140005c79:	0f b6 50 ff          	movzbl -0x1(%rax),%edx
   140005c7d:	48 89 c5             	mov    %rax,%rbp
   140005c80:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   140005c84:	80 fa 39             	cmp    $0x39,%dl
   140005c87:	74 e7                	je     140005c70 <__gdtoa+0xf20>
   140005c89:	83 c2 01             	add    $0x1,%edx
   140005c8c:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
   140005c93:	00 
   140005c94:	88 10                	mov    %dl,(%rax)
   140005c96:	e9 3d fe ff ff       	jmp    140005ad8 <__gdtoa+0xd88>
   140005c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005ca0:	0f b6 55 fe          	movzbl -0x2(%rbp),%edx
   140005ca4:	48 89 c5             	mov    %rax,%rbp
   140005ca7:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   140005cab:	80 fa 30             	cmp    $0x30,%dl
   140005cae:	74 f0                	je     140005ca0 <__gdtoa+0xf50>
   140005cb0:	e9 23 fe ff ff       	jmp    140005ad8 <__gdtoa+0xd88>
   140005cb5:	0f 1f 00             	nopl   (%rax)
   140005cb8:	c7 44 24 48 01 00 00 	movl   $0x1,0x48(%rsp)
   140005cbf:	00 
   140005cc0:	e9 96 f4 ff ff       	jmp    14000515b <__gdtoa+0x40b>
   140005cc5:	0f 1f 00             	nopl   (%rax)
   140005cc8:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005ccf:	00 
   140005cd0:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005cd5:	e9 ac f4 ff ff       	jmp    140005186 <__gdtoa+0x436>
   140005cda:	48 63 44 24 50       	movslq 0x50(%rsp),%rax
   140005cdf:	48 8b 15 7a 3a 00 00 	mov    0x3a7a(%rip),%rdx        # 140009760 <.refptr.__tens_D2A>
   140005ce6:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
   140005ced:	ff 
   140005cee:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
   140005cf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005cf8:	f2 0f 10 44 24 60    	movsd  0x60(%rsp),%xmm0
   140005cfe:	44 8b 44 24 50       	mov    0x50(%rsp),%r8d
   140005d03:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005d0a:	00 
   140005d0b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
   140005d10:	66 0f 10 c8          	movupd %xmm0,%xmm1
   140005d14:	41 83 c0 01          	add    $0x1,%r8d
   140005d18:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140005d1c:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
   140005d21:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   140005d25:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   140005d29:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005d2d:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
   140005d31:	8d 48 30             	lea    0x30(%rax),%ecx
   140005d34:	88 0e                	mov    %cl,(%rsi)
   140005d36:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   140005d3a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140005d3e:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140005d42:	0f 8b 64 06 00 00    	jnp    1400063ac <__gdtoa+0x165c>
   140005d48:	f2 0f 10 1d 88 37 00 	movsd  0x3788(%rip),%xmm3        # 1400094d8 <.rdata+0x48>
   140005d4f:	00 
   140005d50:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
   140005d54:	3b 4c 24 28          	cmp    0x28(%rsp),%ecx
   140005d58:	0f 84 fa 01 00 00    	je     140005f58 <__gdtoa+0x1208>
   140005d5e:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   140005d62:	83 c1 01             	add    $0x1,%ecx
   140005d65:	48 83 c2 01          	add    $0x1,%rdx
   140005d69:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
   140005d6d:	66 0f 10 c8          	movupd %xmm0,%xmm1
   140005d71:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140005d75:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   140005d79:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005d7d:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
   140005d81:	8d 48 30             	lea    0x30(%rax),%ecx
   140005d84:	88 4a ff             	mov    %cl,-0x1(%rdx)
   140005d87:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   140005d8b:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140005d8f:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140005d93:	7a bb                	jp     140005d50 <__gdtoa+0x1000>
   140005d95:	75 b9                	jne    140005d50 <__gdtoa+0x1000>
   140005d97:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005d9c:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140005da1:	e9 d7 f8 ff ff       	jmp    14000567d <__gdtoa+0x92d>
   140005da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005dad:	00 00 00 
   140005db0:	8b 54 24 54          	mov    0x54(%rsp),%edx
   140005db4:	4c 89 f9             	mov    %r15,%rcx
   140005db7:	44 89 5c 24 58       	mov    %r11d,0x58(%rsp)
   140005dbc:	e8 8f 0c 00 00       	call   140006a50 <__pow5mult_D2A>
   140005dc1:	44 8b 5c 24 58       	mov    0x58(%rsp),%r11d
   140005dc6:	49 89 c7             	mov    %rax,%r15
   140005dc9:	e9 69 f7 ff ff       	jmp    140005537 <__gdtoa+0x7e7>
   140005dce:	66 90                	xchg   %ax,%ax
   140005dd0:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005dd5:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
   140005dda:	e9 9e f8 ff ff       	jmp    14000567d <__gdtoa+0x92d>
   140005ddf:	90                   	nop
   140005de0:	4c 89 f9             	mov    %r15,%rcx
   140005de3:	44 89 5c 24 54       	mov    %r11d,0x54(%rsp)
   140005de8:	e8 63 0c 00 00       	call   140006a50 <__pow5mult_D2A>
   140005ded:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
   140005df2:	49 89 c7             	mov    %rax,%r15
   140005df5:	e9 3d f7 ff ff       	jmp    140005537 <__gdtoa+0x7e7>
   140005dfa:	89 c2                	mov    %eax,%edx
   140005dfc:	2b 54 24 54          	sub    0x54(%rsp),%edx
   140005e00:	45 31 ed             	xor    %r13d,%r13d
   140005e03:	89 44 24 54          	mov    %eax,0x54(%rsp)
   140005e07:	41 01 d6             	add    %edx,%r14d
   140005e0a:	e9 57 fd ff ff       	jmp    140005b66 <__gdtoa+0xe16>
   140005e0f:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005e14:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
   140005e19:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
   140005e20:	00 
   140005e21:	c6 00 31             	movb   $0x31,(%rax)
   140005e24:	e9 af fc ff ff       	jmp    140005ad8 <__gdtoa+0xd88>
   140005e29:	4c 89 f9             	mov    %r15,%rcx
   140005e2c:	ba 01 00 00 00       	mov    $0x1,%edx
   140005e31:	e8 aa 0d 00 00       	call   140006be0 <__lshift_D2A>
   140005e36:	4c 89 ea             	mov    %r13,%rdx
   140005e39:	48 89 c1             	mov    %rax,%rcx
   140005e3c:	49 89 c7             	mov    %rax,%r15
   140005e3f:	e8 cc 0e 00 00       	call   140006d10 <__cmp_D2A>
   140005e44:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
   140005e48:	85 c0                	test   %eax,%eax
   140005e4a:	0f 8f 17 fe ff ff    	jg     140005c67 <__gdtoa+0xf17>
   140005e50:	75 09                	jne    140005e5b <__gdtoa+0x110b>
   140005e52:	83 e3 01             	and    $0x1,%ebx
   140005e55:	0f 85 0c fe ff ff    	jne    140005c67 <__gdtoa+0xf17>
   140005e5b:	41 8b 47 14          	mov    0x14(%r15),%eax
   140005e5f:	83 f8 01             	cmp    $0x1,%eax
   140005e62:	0f 8e d1 04 00 00    	jle    140006339 <__gdtoa+0x15e9>
   140005e68:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   140005e6f:	00 
   140005e70:	e9 32 fe ff ff       	jmp    140005ca7 <__gdtoa+0xf57>
   140005e75:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
   140005e7a:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
   140005e7f:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   140005e83:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
   140005e8a:	00 
   140005e8b:	48 83 c6 01          	add    $0x1,%rsi
   140005e8f:	48 89 f5             	mov    %rsi,%rbp
   140005e92:	45 85 d2             	test   %r10d,%r10d
   140005e95:	0f 84 55 03 00 00    	je     1400061f0 <__gdtoa+0x14a0>
   140005e9b:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   140005ea0:	0f 8e bd 04 00 00    	jle    140006363 <__gdtoa+0x1613>
   140005ea6:	83 7c 24 40 02       	cmpl   $0x2,0x40(%rsp)
   140005eab:	0f 84 85 03 00 00    	je     140006236 <__gdtoa+0x14e6>
   140005eb1:	48 89 bc 24 f8 00 00 	mov    %rdi,0xf8(%rsp)
   140005eb8:	00 
   140005eb9:	4c 89 f7             	mov    %r14,%rdi
   140005ebc:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
   140005ec1:	eb 4d                	jmp    140005f10 <__gdtoa+0x11c0>
   140005ec3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005ec8:	88 5e ff             	mov    %bl,-0x1(%rsi)
   140005ecb:	45 31 c0             	xor    %r8d,%r8d
   140005ece:	48 89 f9             	mov    %rdi,%rcx
   140005ed1:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005ed6:	49 89 f6             	mov    %rsi,%r14
   140005ed9:	e8 42 09 00 00       	call   140006820 <__multadd_D2A>
   140005ede:	49 39 fc             	cmp    %rdi,%r12
   140005ee1:	4c 89 f9             	mov    %r15,%rcx
   140005ee4:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005ee9:	4c 0f 44 e0          	cmove  %rax,%r12
   140005eed:	45 31 c0             	xor    %r8d,%r8d
   140005ef0:	48 89 c5             	mov    %rax,%rbp
   140005ef3:	48 83 c6 01          	add    $0x1,%rsi
   140005ef7:	e8 24 09 00 00       	call   140006820 <__multadd_D2A>
   140005efc:	4c 89 ea             	mov    %r13,%rdx
   140005eff:	48 89 ef             	mov    %rbp,%rdi
   140005f02:	48 89 c1             	mov    %rax,%rcx
   140005f05:	49 89 c7             	mov    %rax,%r15
   140005f08:	e8 d3 ec ff ff       	call   140004be0 <__quorem_D2A>
   140005f0d:	8d 58 30             	lea    0x30(%rax),%ebx
   140005f10:	48 89 fa             	mov    %rdi,%rdx
   140005f13:	4c 89 e9             	mov    %r13,%rcx
   140005f16:	48 89 f5             	mov    %rsi,%rbp
   140005f19:	e8 f2 0d 00 00       	call   140006d10 <__cmp_D2A>
   140005f1e:	85 c0                	test   %eax,%eax
   140005f20:	7f a6                	jg     140005ec8 <__gdtoa+0x1178>
   140005f22:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
   140005f27:	49 89 fe             	mov    %rdi,%r14
   140005f2a:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
   140005f31:	00 
   140005f32:	83 fb 39             	cmp    $0x39,%ebx
   140005f35:	0f 84 0e 03 00 00    	je     140006249 <__gdtoa+0x14f9>
   140005f3b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
   140005f42:	00 
   140005f43:	4c 89 e6             	mov    %r12,%rsi
   140005f46:	83 c3 01             	add    $0x1,%ebx
   140005f49:	4d 89 f4             	mov    %r14,%r12
   140005f4c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   140005f51:	88 18                	mov    %bl,(%rax)
   140005f53:	e9 80 fb ff ff       	jmp    140005ad8 <__gdtoa+0xd88>
   140005f58:	8b 74 24 40          	mov    0x40(%rsp),%esi
   140005f5c:	85 f6                	test   %esi,%esi
   140005f5e:	0f 84 68 03 00 00    	je     1400062cc <__gdtoa+0x157c>
   140005f64:	83 fe 01             	cmp    $0x1,%esi
   140005f67:	0f 84 e5 03 00 00    	je     140006352 <__gdtoa+0x1602>
   140005f6d:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140005f72:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140005f77:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   140005f7e:	00 
   140005f7f:	e9 f9 f6 ff ff       	jmp    14000567d <__gdtoa+0x92d>
   140005f84:	f2 0f 59 e2          	mulsd  %xmm2,%xmm4
   140005f88:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   140005f8d:	66 0f 10 c8          	movupd %xmm0,%xmm1
   140005f91:	45 31 c0             	xor    %r8d,%r8d
   140005f94:	c7 44 24 7c 01 00 00 	movl   $0x1,0x7c(%rsp)
   140005f9b:	00 
   140005f9c:	f2 0f 10 15 34 35 00 	movsd  0x3534(%rip),%xmm2        # 1400094d8 <.rdata+0x48>
   140005fa3:	00 
   140005fa4:	eb 18                	jmp    140005fbe <__gdtoa+0x126e>
   140005fa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005fad:	00 00 00 
   140005fb0:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   140005fb4:	83 c1 01             	add    $0x1,%ecx
   140005fb7:	45 89 c8             	mov    %r9d,%r8d
   140005fba:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
   140005fbe:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   140005fc2:	85 c0                	test   %eax,%eax
   140005fc4:	74 0f                	je     140005fd5 <__gdtoa+0x1285>
   140005fc6:	66 0f ef db          	pxor   %xmm3,%xmm3
   140005fca:	45 89 c8             	mov    %r9d,%r8d
   140005fcd:	f2 0f 2a d8          	cvtsi2sd %eax,%xmm3
   140005fd1:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
   140005fd5:	48 83 c2 01          	add    $0x1,%rdx
   140005fd9:	83 c0 30             	add    $0x30,%eax
   140005fdc:	88 42 ff             	mov    %al,-0x1(%rdx)
   140005fdf:	8b 4c 24 7c          	mov    0x7c(%rsp),%ecx
   140005fe3:	44 39 d1             	cmp    %r10d,%ecx
   140005fe6:	75 c8                	jne    140005fb0 <__gdtoa+0x1260>
   140005fe8:	89 c1                	mov    %eax,%ecx
   140005fea:	45 84 c0             	test   %r8b,%r8b
   140005fed:	75 04                	jne    140005ff3 <__gdtoa+0x12a3>
   140005fef:	66 0f 10 c8          	movupd %xmm0,%xmm1
   140005ff3:	f2 0f 10 05 15 35 00 	movsd  0x3515(%rip),%xmm0        # 140009510 <.rdata+0x80>
   140005ffa:	00 
   140005ffb:	66 0f 10 d4          	movupd %xmm4,%xmm2
   140005fff:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
   140006003:	66 0f 2f ca          	comisd %xmm2,%xmm1
   140006007:	0f 87 a9 02 00 00    	ja     1400062b6 <__gdtoa+0x1566>
   14000600d:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
   140006011:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140006015:	0f 86 8e f7 ff ff    	jbe    1400057a9 <__gdtoa+0xa59>
   14000601b:	66 0f 2e ce          	ucomisd %xmm6,%xmm1
   14000601f:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006024:	7a 06                	jp     14000602c <__gdtoa+0x12dc>
   140006026:	0f 84 a3 03 00 00    	je     1400063cf <__gdtoa+0x167f>
   14000602c:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   140006033:	00 
   140006034:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
   140006039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006040:	48 89 d1             	mov    %rdx,%rcx
   140006043:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
   140006047:	80 79 ff 30          	cmpb   $0x30,-0x1(%rcx)
   14000604b:	74 f3                	je     140006040 <__gdtoa+0x12f0>
   14000604d:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
   140006052:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
   140006057:	e9 21 f6 ff ff       	jmp    14000567d <__gdtoa+0x92d>
   14000605c:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140006060:	2b 44 24 28          	sub    0x28(%rsp),%eax
   140006064:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
   14000606b:	00 
   14000606c:	89 44 24 38          	mov    %eax,0x38(%rsp)
   140006070:	e9 21 f4 ff ff       	jmp    140005496 <__gdtoa+0x746>
   140006075:	8b 4c 24 28          	mov    0x28(%rsp),%ecx
   140006079:	85 c9                	test   %ecx,%ecx
   14000607b:	0f 84 d2 f6 ff ff    	je     140005753 <__gdtoa+0xa03>
   140006081:	44 8b 54 24 6c       	mov    0x6c(%rsp),%r10d
   140006086:	45 85 d2             	test   %r10d,%r10d
   140006089:	0f 8e 1a f7 ff ff    	jle    1400057a9 <__gdtoa+0xa59>
   14000608f:	f2 0f 59 05 41 34 00 	mulsd  0x3441(%rip),%xmm0        # 1400094d8 <.rdata+0x48>
   140006096:	00 
   140006097:	f2 0f 10 0d 41 34 00 	movsd  0x3441(%rip),%xmm1        # 1400094e0 <.rdata+0x50>
   14000609e:	00 
   14000609f:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   1400060a5:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   1400060a9:	f2 0f 58 0d 37 34 00 	addsd  0x3437(%rip),%xmm1        # 1400094e8 <.rdata+0x58>
   1400060b0:	00 
   1400060b1:	66 48 0f 7e ca       	movq   %xmm1,%rdx
   1400060b6:	66 48 0f 7e c8       	movq   %xmm1,%rax
   1400060bb:	48 c1 ea 20          	shr    $0x20,%rdx
   1400060bf:	89 c0                	mov    %eax,%eax
   1400060c1:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   1400060c7:	48 c1 e2 20          	shl    $0x20,%rdx
   1400060cb:	48 09 d0             	or     %rdx,%rax
   1400060ce:	e9 8f f1 ff ff       	jmp    140005262 <__gdtoa+0x512>
   1400060d3:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   1400060d8:	e8 d3 05 00 00       	call   1400066b0 <__Balloc_D2A>
   1400060dd:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
   1400060e2:	49 89 c6             	mov    %rax,%r14
   1400060e5:	48 8d 48 10          	lea    0x10(%rax),%rcx
   1400060e9:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   1400060ee:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   1400060f5:	00 
   1400060f6:	e8 15 11 00 00       	call   140007210 <memcpy>
   1400060fb:	4c 89 f1             	mov    %r14,%rcx
   1400060fe:	ba 01 00 00 00       	mov    $0x1,%edx
   140006103:	e8 d8 0a 00 00       	call   140006be0 <__lshift_D2A>
   140006108:	49 89 c6             	mov    %rax,%r14
   14000610b:	e9 3b f8 ff ff       	jmp    14000594b <__gdtoa+0xbfb>
   140006110:	8b 45 04             	mov    0x4(%rbp),%eax
   140006113:	83 c0 01             	add    $0x1,%eax
   140006116:	39 f0                	cmp    %esi,%eax
   140006118:	0f 8d 5c f4 ff ff    	jge    14000557a <__gdtoa+0x82a>
   14000611e:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
   140006123:	41 83 c3 01          	add    $0x1,%r11d
   140006127:	c7 44 24 54 01 00 00 	movl   $0x1,0x54(%rsp)
   14000612e:	00 
   14000612f:	e9 46 f4 ff ff       	jmp    14000557a <__gdtoa+0x82a>
   140006134:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
   14000613b:	00 
   14000613c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006141:	45 31 ed             	xor    %r13d,%r13d
   140006144:	45 31 e4             	xor    %r12d,%r12d
   140006147:	e9 f7 f4 ff ff       	jmp    140005643 <__gdtoa+0x8f3>
   14000614c:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
   140006153:	00 
   140006154:	83 fb 39             	cmp    $0x39,%ebx
   140006157:	0f 84 ec 00 00 00    	je     140006249 <__gdtoa+0x14f9>
   14000615d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   140006162:	83 c3 01             	add    $0x1,%ebx
   140006165:	4c 89 e6             	mov    %r12,%rsi
   140006168:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%rsp)
   14000616f:	00 
   140006170:	4d 89 f4             	mov    %r14,%r12
   140006173:	88 18                	mov    %bl,(%rax)
   140006175:	e9 5e f9 ff ff       	jmp    140005ad8 <__gdtoa+0xd88>
   14000617a:	4c 89 e6             	mov    %r12,%rsi
   14000617d:	48 8b bc 24 f8 00 00 	mov    0xf8(%rsp),%rdi
   140006184:	00 
   140006185:	4d 89 f4             	mov    %r14,%r12
   140006188:	e9 b0 fa ff ff       	jmp    140005c3d <__gdtoa+0xeed>
   14000618d:	8b 45 04             	mov    0x4(%rbp),%eax
   140006190:	83 c0 01             	add    $0x1,%eax
   140006193:	39 c6                	cmp    %eax,%esi
   140006195:	0f 8e 50 f7 ff ff    	jle    1400058eb <__gdtoa+0xb9b>
   14000619b:	eb 81                	jmp    14000611e <__gdtoa+0x13ce>
   14000619d:	41 29 dd             	sub    %ebx,%r13d
   1400061a0:	8b 55 04             	mov    0x4(%rbp),%edx
   1400061a3:	c7 84 24 08 01 00 00 	movl   $0x0,0x108(%rsp)
   1400061aa:	00 00 00 00 
   1400061ae:	41 8d 45 01          	lea    0x1(%r13),%eax
   1400061b2:	44 29 e9             	sub    %r13d,%ecx
   1400061b5:	c7 44 24 6c ff ff ff 	movl   $0xffffffff,0x6c(%rsp)
   1400061bc:	ff 
   1400061bd:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
   1400061c1:	c7 44 24 28 ff ff ff 	movl   $0xffffffff,0x28(%rsp)
   1400061c8:	ff 
   1400061c9:	39 d1                	cmp    %edx,%ecx
   1400061cb:	0f 8c 6c f2 ff ff    	jl     14000543d <__gdtoa+0x6ed>
   1400061d1:	e9 aa f2 ff ff       	jmp    140005480 <__gdtoa+0x730>
   1400061d6:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
   1400061db:	48 89 c2             	mov    %rax,%rdx
   1400061de:	b9 31 00 00 00       	mov    $0x31,%ecx
   1400061e3:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
   1400061e8:	c6 00 30             	movb   $0x30,(%rax)
   1400061eb:	e9 69 f1 ff ff       	jmp    140005359 <__gdtoa+0x609>
   1400061f0:	85 c0                	test   %eax,%eax
   1400061f2:	7e 37                	jle    14000622b <__gdtoa+0x14db>
   1400061f4:	4c 89 f9             	mov    %r15,%rcx
   1400061f7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400061fc:	e8 df 09 00 00       	call   140006be0 <__lshift_D2A>
   140006201:	4c 89 ea             	mov    %r13,%rdx
   140006204:	48 89 c1             	mov    %rax,%rcx
   140006207:	49 89 c7             	mov    %rax,%r15
   14000620a:	e8 01 0b 00 00       	call   140006d10 <__cmp_D2A>
   14000620f:	85 c0                	test   %eax,%eax
   140006211:	0f 8e a0 01 00 00    	jle    1400063b7 <__gdtoa+0x1667>
   140006217:	83 fb 39             	cmp    $0x39,%ebx
   14000621a:	74 2d                	je     140006249 <__gdtoa+0x14f9>
   14000621c:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
   140006220:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   140006227:	00 
   140006228:	83 c3 31             	add    $0x31,%ebx
   14000622b:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   140006230:	0f 8e 5a 01 00 00    	jle    140006390 <__gdtoa+0x1640>
   140006236:	4c 89 e6             	mov    %r12,%rsi
   140006239:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   140006240:	00 
   140006241:	4d 89 f4             	mov    %r14,%r12
   140006244:	e9 03 fd ff ff       	jmp    140005f4c <__gdtoa+0x11fc>
   140006249:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   14000624e:	4c 89 e6             	mov    %r12,%rsi
   140006251:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140006256:	4d 89 f4             	mov    %r14,%r12
   140006259:	ba 39 00 00 00       	mov    $0x39,%edx
   14000625e:	c6 00 39             	movb   $0x39,(%rax)
   140006261:	e9 1a fa ff ff       	jmp    140005c80 <__gdtoa+0xf30>
   140006266:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
   14000626a:	89 5c 24 50          	mov    %ebx,0x50(%rsp)
   14000626e:	89 44 24 28          	mov    %eax,0x28(%rsp)
   140006272:	e9 88 f3 ff ff       	jmp    1400055ff <__gdtoa+0x8af>
   140006277:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000627c:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
   140006281:	e9 e5 f3 ff ff       	jmp    14000566b <__gdtoa+0x91b>
   140006286:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   14000628a:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   14000628f:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140006293:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006298:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   14000629d:	0f 8a d4 fc ff ff    	jp     140005f77 <__gdtoa+0x1227>
   1400062a3:	0f 85 ce fc ff ff    	jne    140005f77 <__gdtoa+0x1227>
   1400062a9:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
   1400062b0:	00 
   1400062b1:	e9 c7 f3 ff ff       	jmp    14000567d <__gdtoa+0x92d>
   1400062b6:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   1400062bb:	49 89 d0             	mov    %rdx,%r8
   1400062be:	89 44 24 44          	mov    %eax,0x44(%rsp)
   1400062c2:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400062c7:	e9 7c f0 ff ff       	jmp    140005348 <__gdtoa+0x5f8>
   1400062cc:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   1400062d0:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
   1400062d4:	66 0f 2f c2          	comisd %xmm2,%xmm0
   1400062d8:	0f 87 a5 00 00 00    	ja     140006383 <__gdtoa+0x1633>
   1400062de:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
   1400062e2:	0f 8a f9 00 00 00    	jp     1400063e1 <__gdtoa+0x1691>
   1400062e8:	0f 85 f3 00 00 00    	jne    1400063e1 <__gdtoa+0x1691>
   1400062ee:	a8 01                	test   $0x1,%al
   1400062f0:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400062f5:	0f 85 4a f0 ff ff    	jne    140005345 <__gdtoa+0x5f5>
   1400062fb:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   140006302:	00 
   140006303:	e9 38 fd ff ff       	jmp    140006040 <__gdtoa+0x12f0>
   140006308:	4c 89 e1             	mov    %r12,%rcx
   14000630b:	45 31 c0             	xor    %r8d,%r8d
   14000630e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006313:	e8 08 05 00 00       	call   140006820 <__multadd_D2A>
   140006318:	49 89 c4             	mov    %rax,%r12
   14000631b:	40 84 ed             	test   %bpl,%bpl
   14000631e:	0f 85 42 ff ff ff    	jne    140006266 <__gdtoa+0x1516>
   140006324:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140006328:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000632c:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
   140006330:	89 44 24 28          	mov    %eax,0x28(%rsp)
   140006334:	e9 ee f5 ff ff       	jmp    140005927 <__gdtoa+0xbd7>
   140006339:	41 8b 47 18          	mov    0x18(%r15),%eax
   14000633d:	85 c0                	test   %eax,%eax
   14000633f:	b8 10 00 00 00       	mov    $0x10,%eax
   140006344:	0f 44 44 24 24       	cmove  0x24(%rsp),%eax
   140006349:	89 44 24 24          	mov    %eax,0x24(%rsp)
   14000634d:	e9 55 f9 ff ff       	jmp    140005ca7 <__gdtoa+0xf57>
   140006352:	0f b6 4a ff          	movzbl -0x1(%rdx),%ecx
   140006356:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000635b:	49 89 d0             	mov    %rdx,%r8
   14000635e:	e9 e5 ef ff ff       	jmp    140005348 <__gdtoa+0x5f8>
   140006363:	45 8b 4f 18          	mov    0x18(%r15),%r9d
   140006367:	45 85 c9             	test   %r9d,%r9d
   14000636a:	0f 85 36 fb ff ff    	jne    140005ea6 <__gdtoa+0x1156>
   140006370:	85 c0                	test   %eax,%eax
   140006372:	0f 8f 7c fe ff ff    	jg     1400061f4 <__gdtoa+0x14a4>
   140006378:	4c 89 e6             	mov    %r12,%rsi
   14000637b:	4d 89 f4             	mov    %r14,%r12
   14000637e:	e9 c9 fb ff ff       	jmp    140005f4c <__gdtoa+0x11fc>
   140006383:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006388:	49 89 d0             	mov    %rdx,%r8
   14000638b:	e9 b8 ef ff ff       	jmp    140005348 <__gdtoa+0x5f8>
   140006390:	45 8b 47 18          	mov    0x18(%r15),%r8d
   140006394:	4c 89 e6             	mov    %r12,%rsi
   140006397:	4d 89 f4             	mov    %r14,%r12
   14000639a:	45 85 c0             	test   %r8d,%r8d
   14000639d:	74 54                	je     1400063f3 <__gdtoa+0x16a3>
   14000639f:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   1400063a6:	00 
   1400063a7:	e9 a0 fb ff ff       	jmp    140005f4c <__gdtoa+0x11fc>
   1400063ac:	0f 84 e5 f9 ff ff    	je     140005d97 <__gdtoa+0x1047>
   1400063b2:	e9 91 f9 ff ff       	jmp    140005d48 <__gdtoa+0xff8>
   1400063b7:	75 09                	jne    1400063c2 <__gdtoa+0x1672>
   1400063b9:	f6 c3 01             	test   $0x1,%bl
   1400063bc:	0f 85 55 fe ff ff    	jne    140006217 <__gdtoa+0x14c7>
   1400063c2:	c7 44 24 40 20 00 00 	movl   $0x20,0x40(%rsp)
   1400063c9:	00 
   1400063ca:	e9 5c fe ff ff       	jmp    14000622b <__gdtoa+0x14db>
   1400063cf:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%rsp)
   1400063d6:	00 
   1400063d7:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
   1400063dc:	e9 5f fc ff ff       	jmp    140006040 <__gdtoa+0x12f0>
   1400063e1:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%rsp)
   1400063e8:	00 
   1400063e9:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400063ee:	e9 4d fc ff ff       	jmp    140006040 <__gdtoa+0x12f0>
   1400063f3:	8b 44 24 40          	mov    0x40(%rsp),%eax
   1400063f7:	89 44 24 24          	mov    %eax,0x24(%rsp)
   1400063fb:	e9 4c fb ff ff       	jmp    140005f4c <__gdtoa+0x11fc>
   140006400:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   140006405:	7e 0a                	jle    140006411 <__gdtoa+0x16c1>
   140006407:	b8 10 00 00 00       	mov    $0x10,%eax
   14000640c:	e9 b3 f6 ff ff       	jmp    140005ac4 <__gdtoa+0xd74>
   140006411:	41 83 7f 18 00       	cmpl   $0x0,0x18(%r15)
   140006416:	ba 10 00 00 00       	mov    $0x10,%edx
   14000641b:	0f 45 c2             	cmovne %edx,%eax
   14000641e:	e9 a1 f6 ff ff       	jmp    140005ac4 <__gdtoa+0xd74>
   140006423:	89 e8                	mov    %ebp,%eax
   140006425:	e9 53 f5 ff ff       	jmp    14000597d <__gdtoa+0xc2d>
   14000642a:	90                   	nop
   14000642b:	90                   	nop
   14000642c:	90                   	nop
   14000642d:	90                   	nop
   14000642e:	90                   	nop
   14000642f:	90                   	nop

0000000140006430 <__rshift_D2A>:
   140006430:	41 54                	push   %r12
   140006432:	55                   	push   %rbp
   140006433:	57                   	push   %rdi
   140006434:	56                   	push   %rsi
   140006435:	53                   	push   %rbx
   140006436:	48 63 59 14          	movslq 0x14(%rcx),%rbx
   14000643a:	89 d5                	mov    %edx,%ebp
   14000643c:	49 89 ca             	mov    %rcx,%r10
   14000643f:	c1 fd 05             	sar    $0x5,%ebp
   140006442:	39 eb                	cmp    %ebp,%ebx
   140006444:	7e 7a                	jle    1400064c0 <__rshift_D2A+0x90>
   140006446:	4c 8d 61 18          	lea    0x18(%rcx),%r12
   14000644a:	48 63 ed             	movslq %ebp,%rbp
   14000644d:	4d 8d 1c 9c          	lea    (%r12,%rbx,4),%r11
   140006451:	49 8d 34 ac          	lea    (%r12,%rbp,4),%rsi
   140006455:	83 e2 1f             	and    $0x1f,%edx
   140006458:	0f 84 82 00 00 00    	je     1400064e0 <__rshift_D2A+0xb0>
   14000645e:	8b 06                	mov    (%rsi),%eax
   140006460:	89 d1                	mov    %edx,%ecx
   140006462:	bf 20 00 00 00       	mov    $0x20,%edi
   140006467:	4c 8d 46 04          	lea    0x4(%rsi),%r8
   14000646b:	29 d7                	sub    %edx,%edi
   14000646d:	d3 e8                	shr    %cl,%eax
   14000646f:	41 89 c1             	mov    %eax,%r9d
   140006472:	4d 39 c3             	cmp    %r8,%r11
   140006475:	0f 86 9d 00 00 00    	jbe    140006518 <__rshift_D2A+0xe8>
   14000647b:	4c 89 e6             	mov    %r12,%rsi
   14000647e:	66 90                	xchg   %ax,%ax
   140006480:	41 8b 00             	mov    (%r8),%eax
   140006483:	89 f9                	mov    %edi,%ecx
   140006485:	48 83 c6 04          	add    $0x4,%rsi
   140006489:	49 83 c0 04          	add    $0x4,%r8
   14000648d:	d3 e0                	shl    %cl,%eax
   14000648f:	89 d1                	mov    %edx,%ecx
   140006491:	44 09 c8             	or     %r9d,%eax
   140006494:	89 46 fc             	mov    %eax,-0x4(%rsi)
   140006497:	45 8b 48 fc          	mov    -0x4(%r8),%r9d
   14000649b:	41 d3 e9             	shr    %cl,%r9d
   14000649e:	4d 39 c3             	cmp    %r8,%r11
   1400064a1:	77 dd                	ja     140006480 <__rshift_D2A+0x50>
   1400064a3:	48 29 eb             	sub    %rbp,%rbx
   1400064a6:	49 8d 44 9c fc       	lea    -0x4(%r12,%rbx,4),%rax
   1400064ab:	44 89 08             	mov    %r9d,(%rax)
   1400064ae:	45 85 c9             	test   %r9d,%r9d
   1400064b1:	74 4a                	je     1400064fd <__rshift_D2A+0xcd>
   1400064b3:	48 83 c0 04          	add    $0x4,%rax
   1400064b7:	eb 44                	jmp    1400064fd <__rshift_D2A+0xcd>
   1400064b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400064c0:	41 c7 42 14 00 00 00 	movl   $0x0,0x14(%r10)
   1400064c7:	00 
   1400064c8:	41 c7 42 18 00 00 00 	movl   $0x0,0x18(%r10)
   1400064cf:	00 
   1400064d0:	5b                   	pop    %rbx
   1400064d1:	5e                   	pop    %rsi
   1400064d2:	5f                   	pop    %rdi
   1400064d3:	5d                   	pop    %rbp
   1400064d4:	41 5c                	pop    %r12
   1400064d6:	c3                   	ret    
   1400064d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400064de:	00 00 
   1400064e0:	4c 89 e7             	mov    %r12,%rdi
   1400064e3:	49 39 f3             	cmp    %rsi,%r11
   1400064e6:	76 d8                	jbe    1400064c0 <__rshift_D2A+0x90>
   1400064e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400064ef:	00 
   1400064f0:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   1400064f1:	49 39 f3             	cmp    %rsi,%r11
   1400064f4:	77 fa                	ja     1400064f0 <__rshift_D2A+0xc0>
   1400064f6:	48 29 eb             	sub    %rbp,%rbx
   1400064f9:	49 8d 04 9c          	lea    (%r12,%rbx,4),%rax
   1400064fd:	4c 29 e0             	sub    %r12,%rax
   140006500:	48 c1 f8 02          	sar    $0x2,%rax
   140006504:	41 89 42 14          	mov    %eax,0x14(%r10)
   140006508:	85 c0                	test   %eax,%eax
   14000650a:	74 bc                	je     1400064c8 <__rshift_D2A+0x98>
   14000650c:	5b                   	pop    %rbx
   14000650d:	5e                   	pop    %rsi
   14000650e:	5f                   	pop    %rdi
   14000650f:	5d                   	pop    %rbp
   140006510:	41 5c                	pop    %r12
   140006512:	c3                   	ret    
   140006513:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006518:	41 89 42 18          	mov    %eax,0x18(%r10)
   14000651c:	85 c0                	test   %eax,%eax
   14000651e:	74 a0                	je     1400064c0 <__rshift_D2A+0x90>
   140006520:	4c 89 e0             	mov    %r12,%rax
   140006523:	eb 8e                	jmp    1400064b3 <__rshift_D2A+0x83>
   140006525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000652c:	00 00 00 00 

0000000140006530 <__trailz_D2A>:
   140006530:	45 31 c0             	xor    %r8d,%r8d
   140006533:	48 63 51 14          	movslq 0x14(%rcx),%rdx
   140006537:	48 8d 41 18          	lea    0x18(%rcx),%rax
   14000653b:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
   14000653f:	48 39 c8             	cmp    %rcx,%rax
   140006542:	72 19                	jb     14000655d <__trailz_D2A+0x2d>
   140006544:	eb 29                	jmp    14000656f <__trailz_D2A+0x3f>
   140006546:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000654d:	00 00 00 
   140006550:	48 83 c0 04          	add    $0x4,%rax
   140006554:	41 83 c0 20          	add    $0x20,%r8d
   140006558:	48 39 c1             	cmp    %rax,%rcx
   14000655b:	76 12                	jbe    14000656f <__trailz_D2A+0x3f>
   14000655d:	8b 10                	mov    (%rax),%edx
   14000655f:	85 d2                	test   %edx,%edx
   140006561:	74 ed                	je     140006550 <__trailz_D2A+0x20>
   140006563:	48 39 c1             	cmp    %rax,%rcx
   140006566:	76 07                	jbe    14000656f <__trailz_D2A+0x3f>
   140006568:	f3 0f bc d2          	tzcnt  %edx,%edx
   14000656c:	41 01 d0             	add    %edx,%r8d
   14000656f:	44 89 c0             	mov    %r8d,%eax
   140006572:	c3                   	ret    
   140006573:	90                   	nop
   140006574:	90                   	nop
   140006575:	90                   	nop
   140006576:	90                   	nop
   140006577:	90                   	nop
   140006578:	90                   	nop
   140006579:	90                   	nop
   14000657a:	90                   	nop
   14000657b:	90                   	nop
   14000657c:	90                   	nop
   14000657d:	90                   	nop
   14000657e:	90                   	nop
   14000657f:	90                   	nop

0000000140006580 <dtoa_lock>:
   140006580:	56                   	push   %rsi
   140006581:	53                   	push   %rbx
   140006582:	48 83 ec 28          	sub    $0x28,%rsp
   140006586:	8b 05 64 65 00 00    	mov    0x6564(%rip),%eax        # 14000caf0 <dtoa_CS_init>
   14000658c:	89 ce                	mov    %ecx,%esi
   14000658e:	83 f8 02             	cmp    $0x2,%eax
   140006591:	74 7b                	je     14000660e <dtoa_lock+0x8e>
   140006593:	85 c0                	test   %eax,%eax
   140006595:	74 39                	je     1400065d0 <dtoa_lock+0x50>
   140006597:	83 f8 01             	cmp    $0x1,%eax
   14000659a:	75 23                	jne    1400065bf <dtoa_lock+0x3f>
   14000659c:	48 8b 1d 79 6c 00 00 	mov    0x6c79(%rip),%rbx        # 14000d21c <__imp_Sleep>
   1400065a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400065a8:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400065ad:	ff d3                	call   *%rbx
   1400065af:	8b 05 3b 65 00 00    	mov    0x653b(%rip),%eax        # 14000caf0 <dtoa_CS_init>
   1400065b5:	83 f8 01             	cmp    $0x1,%eax
   1400065b8:	74 ee                	je     1400065a8 <dtoa_lock+0x28>
   1400065ba:	83 f8 02             	cmp    $0x2,%eax
   1400065bd:	74 4f                	je     14000660e <dtoa_lock+0x8e>
   1400065bf:	48 83 c4 28          	add    $0x28,%rsp
   1400065c3:	5b                   	pop    %rbx
   1400065c4:	5e                   	pop    %rsi
   1400065c5:	c3                   	ret    
   1400065c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400065cd:	00 00 00 
   1400065d0:	b8 01 00 00 00       	mov    $0x1,%eax
   1400065d5:	87 05 15 65 00 00    	xchg   %eax,0x6515(%rip)        # 14000caf0 <dtoa_CS_init>
   1400065db:	85 c0                	test   %eax,%eax
   1400065dd:	75 51                	jne    140006630 <dtoa_lock+0xb0>
   1400065df:	48 8b 1d 0e 6c 00 00 	mov    0x6c0e(%rip),%rbx        # 14000d1f4 <__imp_InitializeCriticalSection>
   1400065e6:	48 8d 0d 13 65 00 00 	lea    0x6513(%rip),%rcx        # 14000cb00 <dtoa_CritSec>
   1400065ed:	ff d3                	call   *%rbx
   1400065ef:	48 8d 0d 32 65 00 00 	lea    0x6532(%rip),%rcx        # 14000cb28 <dtoa_CritSec+0x28>
   1400065f6:	ff d3                	call   *%rbx
   1400065f8:	48 8d 0d 61 00 00 00 	lea    0x61(%rip),%rcx        # 140006660 <dtoa_lock_cleanup>
   1400065ff:	e8 0c af ff ff       	call   140001510 <atexit>
   140006604:	c7 05 e2 64 00 00 02 	movl   $0x2,0x64e2(%rip)        # 14000caf0 <dtoa_CS_init>
   14000660b:	00 00 00 
   14000660e:	48 63 ce             	movslq %esi,%rcx
   140006611:	48 8d 05 e8 64 00 00 	lea    0x64e8(%rip),%rax        # 14000cb00 <dtoa_CritSec>
   140006618:	48 8d 14 89          	lea    (%rcx,%rcx,4),%rdx
   14000661c:	48 8d 0c d0          	lea    (%rax,%rdx,8),%rcx
   140006620:	48 83 c4 28          	add    $0x28,%rsp
   140006624:	5b                   	pop    %rbx
   140006625:	5e                   	pop    %rsi
   140006626:	48 ff 25 af 6b 00 00 	rex.W jmp *0x6baf(%rip)        # 14000d1dc <__imp_EnterCriticalSection>
   14000662d:	0f 1f 00             	nopl   (%rax)
   140006630:	83 f8 02             	cmp    $0x2,%eax
   140006633:	74 1b                	je     140006650 <dtoa_lock+0xd0>
   140006635:	8b 05 b5 64 00 00    	mov    0x64b5(%rip),%eax        # 14000caf0 <dtoa_CS_init>
   14000663b:	83 f8 01             	cmp    $0x1,%eax
   14000663e:	0f 84 58 ff ff ff    	je     14000659c <dtoa_lock+0x1c>
   140006644:	e9 71 ff ff ff       	jmp    1400065ba <dtoa_lock+0x3a>
   140006649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006650:	c7 05 96 64 00 00 02 	movl   $0x2,0x6496(%rip)        # 14000caf0 <dtoa_CS_init>
   140006657:	00 00 00 
   14000665a:	eb b2                	jmp    14000660e <dtoa_lock+0x8e>
   14000665c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140006660 <dtoa_lock_cleanup>:
   140006660:	53                   	push   %rbx
   140006661:	48 83 ec 20          	sub    $0x20,%rsp
   140006665:	b8 03 00 00 00       	mov    $0x3,%eax
   14000666a:	87 05 80 64 00 00    	xchg   %eax,0x6480(%rip)        # 14000caf0 <dtoa_CS_init>
   140006670:	83 f8 02             	cmp    $0x2,%eax
   140006673:	74 0b                	je     140006680 <dtoa_lock_cleanup+0x20>
   140006675:	48 83 c4 20          	add    $0x20,%rsp
   140006679:	5b                   	pop    %rbx
   14000667a:	c3                   	ret    
   14000667b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006680:	48 8b 1d 4d 6b 00 00 	mov    0x6b4d(%rip),%rbx        # 14000d1d4 <__IAT_start__>
   140006687:	48 8d 0d 72 64 00 00 	lea    0x6472(%rip),%rcx        # 14000cb00 <dtoa_CritSec>
   14000668e:	ff d3                	call   *%rbx
   140006690:	48 8d 0d 91 64 00 00 	lea    0x6491(%rip),%rcx        # 14000cb28 <dtoa_CritSec+0x28>
   140006697:	48 89 d8             	mov    %rbx,%rax
   14000669a:	48 83 c4 20          	add    $0x20,%rsp
   14000669e:	5b                   	pop    %rbx
   14000669f:	48 ff e0             	rex.W jmp *%rax
   1400066a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400066a9:	00 00 00 00 
   1400066ad:	0f 1f 00             	nopl   (%rax)

00000001400066b0 <__Balloc_D2A>:
   1400066b0:	56                   	push   %rsi
   1400066b1:	53                   	push   %rbx
   1400066b2:	48 83 ec 38          	sub    $0x38,%rsp
   1400066b6:	89 cb                	mov    %ecx,%ebx
   1400066b8:	31 c9                	xor    %ecx,%ecx
   1400066ba:	e8 c1 fe ff ff       	call   140006580 <dtoa_lock>
   1400066bf:	83 fb 09             	cmp    $0x9,%ebx
   1400066c2:	7e 4c                	jle    140006710 <__Balloc_D2A+0x60>
   1400066c4:	89 d9                	mov    %ebx,%ecx
   1400066c6:	be 01 00 00 00       	mov    $0x1,%esi
   1400066cb:	d3 e6                	shl    %cl,%esi
   1400066cd:	8d 46 ff             	lea    -0x1(%rsi),%eax
   1400066d0:	48 98                	cltq   
   1400066d2:	48 8d 0c 85 27 00 00 	lea    0x27(,%rax,4),%rcx
   1400066d9:	00 
   1400066da:	48 b8 f8 ff ff ff 07 	movabs $0x7fffffff8,%rax
   1400066e1:	00 00 00 
   1400066e4:	48 21 c1             	and    %rax,%rcx
   1400066e7:	e8 2c 0b 00 00       	call   140007218 <malloc>
   1400066ec:	48 85 c0             	test   %rax,%rax
   1400066ef:	74 17                	je     140006708 <__Balloc_D2A+0x58>
   1400066f1:	83 3d f8 63 00 00 02 	cmpl   $0x2,0x63f8(%rip)        # 14000caf0 <dtoa_CS_init>
   1400066f8:	89 58 08             	mov    %ebx,0x8(%rax)
   1400066fb:	89 70 0c             	mov    %esi,0xc(%rax)
   1400066fe:	74 33                	je     140006733 <__Balloc_D2A+0x83>
   140006700:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   140006707:	00 
   140006708:	48 83 c4 38          	add    $0x38,%rsp
   14000670c:	5b                   	pop    %rbx
   14000670d:	5e                   	pop    %rsi
   14000670e:	c3                   	ret    
   14000670f:	90                   	nop
   140006710:	48 8d 15 89 63 00 00 	lea    0x6389(%rip),%rdx        # 14000caa0 <freelist>
   140006717:	48 63 cb             	movslq %ebx,%rcx
   14000671a:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
   14000671e:	48 85 c0             	test   %rax,%rax
   140006721:	74 2d                	je     140006750 <__Balloc_D2A+0xa0>
   140006723:	4c 8b 00             	mov    (%rax),%r8
   140006726:	83 3d c3 63 00 00 02 	cmpl   $0x2,0x63c3(%rip)        # 14000caf0 <dtoa_CS_init>
   14000672d:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
   140006731:	75 cd                	jne    140006700 <__Balloc_D2A+0x50>
   140006733:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006738:	48 8d 0d c1 63 00 00 	lea    0x63c1(%rip),%rcx        # 14000cb00 <dtoa_CritSec>
   14000673f:	ff 15 bf 6a 00 00    	call   *0x6abf(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   140006745:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000674a:	eb b4                	jmp    140006700 <__Balloc_D2A+0x50>
   14000674c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006750:	89 d9                	mov    %ebx,%ecx
   140006752:	be 01 00 00 00       	mov    $0x1,%esi
   140006757:	48 8b 05 22 19 00 00 	mov    0x1922(%rip),%rax        # 140008080 <pmem_next>
   14000675e:	d3 e6                	shl    %cl,%esi
   140006760:	48 8d 0d 39 5a 00 00 	lea    0x5a39(%rip),%rcx        # 14000c1a0 <private_mem>
   140006767:	8d 56 ff             	lea    -0x1(%rsi),%edx
   14000676a:	49 89 c1             	mov    %rax,%r9
   14000676d:	48 63 d2             	movslq %edx,%rdx
   140006770:	49 29 c9             	sub    %rcx,%r9
   140006773:	48 8d 14 95 27 00 00 	lea    0x27(,%rdx,4),%rdx
   14000677a:	00 
   14000677b:	4c 89 c9             	mov    %r9,%rcx
   14000677e:	48 c1 ea 03          	shr    $0x3,%rdx
   140006782:	48 c1 f9 03          	sar    $0x3,%rcx
   140006786:	89 d2                	mov    %edx,%edx
   140006788:	48 01 d1             	add    %rdx,%rcx
   14000678b:	48 81 f9 20 01 00 00 	cmp    $0x120,%rcx
   140006792:	0f 87 2c ff ff ff    	ja     1400066c4 <__Balloc_D2A+0x14>
   140006798:	48 8d 14 d0          	lea    (%rax,%rdx,8),%rdx
   14000679c:	48 89 15 dd 18 00 00 	mov    %rdx,0x18dd(%rip)        # 140008080 <pmem_next>
   1400067a3:	e9 49 ff ff ff       	jmp    1400066f1 <__Balloc_D2A+0x41>
   1400067a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400067af:	00 

00000001400067b0 <__Bfree_D2A>:
   1400067b0:	41 54                	push   %r12
   1400067b2:	48 83 ec 20          	sub    $0x20,%rsp
   1400067b6:	49 89 cc             	mov    %rcx,%r12
   1400067b9:	48 85 c9             	test   %rcx,%rcx
   1400067bc:	74 3a                	je     1400067f8 <__Bfree_D2A+0x48>
   1400067be:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
   1400067c2:	7e 0c                	jle    1400067d0 <__Bfree_D2A+0x20>
   1400067c4:	48 83 c4 20          	add    $0x20,%rsp
   1400067c8:	41 5c                	pop    %r12
   1400067ca:	e9 61 0a 00 00       	jmp    140007230 <free>
   1400067cf:	90                   	nop
   1400067d0:	31 c9                	xor    %ecx,%ecx
   1400067d2:	e8 a9 fd ff ff       	call   140006580 <dtoa_lock>
   1400067d7:	49 63 54 24 08       	movslq 0x8(%r12),%rdx
   1400067dc:	48 8d 05 bd 62 00 00 	lea    0x62bd(%rip),%rax        # 14000caa0 <freelist>
   1400067e3:	83 3d 06 63 00 00 02 	cmpl   $0x2,0x6306(%rip)        # 14000caf0 <dtoa_CS_init>
   1400067ea:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
   1400067ee:	4c 89 24 d0          	mov    %r12,(%rax,%rdx,8)
   1400067f2:	49 89 0c 24          	mov    %rcx,(%r12)
   1400067f6:	74 08                	je     140006800 <__Bfree_D2A+0x50>
   1400067f8:	48 83 c4 20          	add    $0x20,%rsp
   1400067fc:	41 5c                	pop    %r12
   1400067fe:	c3                   	ret    
   1400067ff:	90                   	nop
   140006800:	48 8d 0d f9 62 00 00 	lea    0x62f9(%rip),%rcx        # 14000cb00 <dtoa_CritSec>
   140006807:	48 83 c4 20          	add    $0x20,%rsp
   14000680b:	41 5c                	pop    %r12
   14000680d:	48 ff 25 f0 69 00 00 	rex.W jmp *0x69f0(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   140006814:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000681b:	00 00 00 00 
   14000681f:	90                   	nop

0000000140006820 <__multadd_D2A>:
   140006820:	41 55                	push   %r13
   140006822:	41 54                	push   %r12
   140006824:	56                   	push   %rsi
   140006825:	53                   	push   %rbx
   140006826:	48 83 ec 28          	sub    $0x28,%rsp
   14000682a:	8b 71 14             	mov    0x14(%rcx),%esi
   14000682d:	49 89 cc             	mov    %rcx,%r12
   140006830:	49 63 d8             	movslq %r8d,%rbx
   140006833:	48 63 d2             	movslq %edx,%rdx
   140006836:	31 c9                	xor    %ecx,%ecx
   140006838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000683f:	00 
   140006840:	41 8b 44 8c 18       	mov    0x18(%r12,%rcx,4),%eax
   140006845:	48 0f af c2          	imul   %rdx,%rax
   140006849:	48 01 d8             	add    %rbx,%rax
   14000684c:	41 89 44 8c 18       	mov    %eax,0x18(%r12,%rcx,4)
   140006851:	48 89 c3             	mov    %rax,%rbx
   140006854:	48 83 c1 01          	add    $0x1,%rcx
   140006858:	48 c1 eb 20          	shr    $0x20,%rbx
   14000685c:	39 ce                	cmp    %ecx,%esi
   14000685e:	7f e0                	jg     140006840 <__multadd_D2A+0x20>
   140006860:	4d 89 e5             	mov    %r12,%r13
   140006863:	48 85 db             	test   %rbx,%rbx
   140006866:	74 1a                	je     140006882 <__multadd_D2A+0x62>
   140006868:	41 39 74 24 0c       	cmp    %esi,0xc(%r12)
   14000686d:	7e 21                	jle    140006890 <__multadd_D2A+0x70>
   14000686f:	48 63 c6             	movslq %esi,%rax
   140006872:	83 c6 01             	add    $0x1,%esi
   140006875:	4d 89 e5             	mov    %r12,%r13
   140006878:	41 89 5c 84 18       	mov    %ebx,0x18(%r12,%rax,4)
   14000687d:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140006882:	4c 89 e8             	mov    %r13,%rax
   140006885:	48 83 c4 28          	add    $0x28,%rsp
   140006889:	5b                   	pop    %rbx
   14000688a:	5e                   	pop    %rsi
   14000688b:	41 5c                	pop    %r12
   14000688d:	41 5d                	pop    %r13
   14000688f:	c3                   	ret    
   140006890:	41 8b 44 24 08       	mov    0x8(%r12),%eax
   140006895:	8d 48 01             	lea    0x1(%rax),%ecx
   140006898:	e8 13 fe ff ff       	call   1400066b0 <__Balloc_D2A>
   14000689d:	49 89 c5             	mov    %rax,%r13
   1400068a0:	48 85 c0             	test   %rax,%rax
   1400068a3:	74 dd                	je     140006882 <__multadd_D2A+0x62>
   1400068a5:	48 8d 48 10          	lea    0x10(%rax),%rcx
   1400068a9:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   1400068ae:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
   1400068b3:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   1400068ba:	00 
   1400068bb:	e8 50 09 00 00       	call   140007210 <memcpy>
   1400068c0:	4c 89 e1             	mov    %r12,%rcx
   1400068c3:	4d 89 ec             	mov    %r13,%r12
   1400068c6:	e8 e5 fe ff ff       	call   1400067b0 <__Bfree_D2A>
   1400068cb:	eb a2                	jmp    14000686f <__multadd_D2A+0x4f>
   1400068cd:	0f 1f 00             	nopl   (%rax)

00000001400068d0 <__i2b_D2A>:
   1400068d0:	53                   	push   %rbx
   1400068d1:	48 83 ec 20          	sub    $0x20,%rsp
   1400068d5:	89 cb                	mov    %ecx,%ebx
   1400068d7:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400068dc:	e8 cf fd ff ff       	call   1400066b0 <__Balloc_D2A>
   1400068e1:	48 85 c0             	test   %rax,%rax
   1400068e4:	74 0a                	je     1400068f0 <__i2b_D2A+0x20>
   1400068e6:	89 58 18             	mov    %ebx,0x18(%rax)
   1400068e9:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
   1400068f0:	48 83 c4 20          	add    $0x20,%rsp
   1400068f4:	5b                   	pop    %rbx
   1400068f5:	c3                   	ret    
   1400068f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400068fd:	00 00 00 

0000000140006900 <__mult_D2A>:
   140006900:	41 57                	push   %r15
   140006902:	41 56                	push   %r14
   140006904:	41 55                	push   %r13
   140006906:	41 54                	push   %r12
   140006908:	55                   	push   %rbp
   140006909:	57                   	push   %rdi
   14000690a:	56                   	push   %rsi
   14000690b:	53                   	push   %rbx
   14000690c:	48 83 ec 28          	sub    $0x28,%rsp
   140006910:	48 63 69 14          	movslq 0x14(%rcx),%rbp
   140006914:	48 63 7a 14          	movslq 0x14(%rdx),%rdi
   140006918:	49 89 cd             	mov    %rcx,%r13
   14000691b:	49 89 d7             	mov    %rdx,%r15
   14000691e:	39 fd                	cmp    %edi,%ebp
   140006920:	7c 0e                	jl     140006930 <__mult_D2A+0x30>
   140006922:	89 f8                	mov    %edi,%eax
   140006924:	49 89 cf             	mov    %rcx,%r15
   140006927:	48 63 fd             	movslq %ebp,%rdi
   14000692a:	49 89 d5             	mov    %rdx,%r13
   14000692d:	48 63 e8             	movslq %eax,%rbp
   140006930:	31 c9                	xor    %ecx,%ecx
   140006932:	8d 1c 2f             	lea    (%rdi,%rbp,1),%ebx
   140006935:	41 39 5f 0c          	cmp    %ebx,0xc(%r15)
   140006939:	0f 9c c1             	setl   %cl
   14000693c:	41 03 4f 08          	add    0x8(%r15),%ecx
   140006940:	e8 6b fd ff ff       	call   1400066b0 <__Balloc_D2A>
   140006945:	49 89 c4             	mov    %rax,%r12
   140006948:	48 85 c0             	test   %rax,%rax
   14000694b:	0f 84 e4 00 00 00    	je     140006a35 <__mult_D2A+0x135>
   140006951:	48 8d 70 18          	lea    0x18(%rax),%rsi
   140006955:	48 63 c3             	movslq %ebx,%rax
   140006958:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
   14000695c:	48 89 f1             	mov    %rsi,%rcx
   14000695f:	48 39 c6             	cmp    %rax,%rsi
   140006962:	73 13                	jae    140006977 <__mult_D2A+0x77>
   140006964:	0f 1f 40 00          	nopl   0x0(%rax)
   140006968:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
   14000696e:	48 83 c1 04          	add    $0x4,%rcx
   140006972:	48 39 c8             	cmp    %rcx,%rax
   140006975:	77 f1                	ja     140006968 <__mult_D2A+0x68>
   140006977:	4d 8d 55 18          	lea    0x18(%r13),%r10
   14000697b:	4d 8d 77 18          	lea    0x18(%r15),%r14
   14000697f:	49 8d 2c aa          	lea    (%r10,%rbp,4),%rbp
   140006983:	49 8d 3c be          	lea    (%r14,%rdi,4),%rdi
   140006987:	49 39 ea             	cmp    %rbp,%r10
   14000698a:	0f 83 84 00 00 00    	jae    140006a14 <__mult_D2A+0x114>
   140006990:	48 89 fa             	mov    %rdi,%rdx
   140006993:	4c 29 fa             	sub    %r15,%rdx
   140006996:	49 83 c7 19          	add    $0x19,%r15
   14000699a:	48 83 ea 19          	sub    $0x19,%rdx
   14000699e:	48 c1 ea 02          	shr    $0x2,%rdx
   1400069a2:	4c 39 ff             	cmp    %r15,%rdi
   1400069a5:	4c 8d 2c 95 04 00 00 	lea    0x4(,%rdx,4),%r13
   1400069ac:	00 
   1400069ad:	ba 04 00 00 00       	mov    $0x4,%edx
   1400069b2:	4c 0f 42 ea          	cmovb  %rdx,%r13
   1400069b6:	eb 11                	jmp    1400069c9 <__mult_D2A+0xc9>
   1400069b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400069bf:	00 
   1400069c0:	48 83 c6 04          	add    $0x4,%rsi
   1400069c4:	4c 39 d5             	cmp    %r10,%rbp
   1400069c7:	76 4b                	jbe    140006a14 <__mult_D2A+0x114>
   1400069c9:	45 8b 1a             	mov    (%r10),%r11d
   1400069cc:	49 83 c2 04          	add    $0x4,%r10
   1400069d0:	45 85 db             	test   %r11d,%r11d
   1400069d3:	74 eb                	je     1400069c0 <__mult_D2A+0xc0>
   1400069d5:	49 89 f0             	mov    %rsi,%r8
   1400069d8:	4c 89 f1             	mov    %r14,%rcx
   1400069db:	45 31 c9             	xor    %r9d,%r9d
   1400069de:	66 90                	xchg   %ax,%ax
   1400069e0:	8b 11                	mov    (%rcx),%edx
   1400069e2:	45 8b 38             	mov    (%r8),%r15d
   1400069e5:	48 83 c1 04          	add    $0x4,%rcx
   1400069e9:	49 83 c0 04          	add    $0x4,%r8
   1400069ed:	49 0f af d3          	imul   %r11,%rdx
   1400069f1:	4c 01 fa             	add    %r15,%rdx
   1400069f4:	4c 01 ca             	add    %r9,%rdx
   1400069f7:	49 89 d1             	mov    %rdx,%r9
   1400069fa:	41 89 50 fc          	mov    %edx,-0x4(%r8)
   1400069fe:	49 c1 e9 20          	shr    $0x20,%r9
   140006a02:	48 39 cf             	cmp    %rcx,%rdi
   140006a05:	77 d9                	ja     1400069e0 <__mult_D2A+0xe0>
   140006a07:	46 89 0c 2e          	mov    %r9d,(%rsi,%r13,1)
   140006a0b:	48 83 c6 04          	add    $0x4,%rsi
   140006a0f:	4c 39 d5             	cmp    %r10,%rbp
   140006a12:	77 b5                	ja     1400069c9 <__mult_D2A+0xc9>
   140006a14:	85 db                	test   %ebx,%ebx
   140006a16:	7f 0d                	jg     140006a25 <__mult_D2A+0x125>
   140006a18:	eb 16                	jmp    140006a30 <__mult_D2A+0x130>
   140006a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006a20:	83 eb 01             	sub    $0x1,%ebx
   140006a23:	74 0b                	je     140006a30 <__mult_D2A+0x130>
   140006a25:	8b 50 fc             	mov    -0x4(%rax),%edx
   140006a28:	48 83 e8 04          	sub    $0x4,%rax
   140006a2c:	85 d2                	test   %edx,%edx
   140006a2e:	74 f0                	je     140006a20 <__mult_D2A+0x120>
   140006a30:	41 89 5c 24 14       	mov    %ebx,0x14(%r12)
   140006a35:	4c 89 e0             	mov    %r12,%rax
   140006a38:	48 83 c4 28          	add    $0x28,%rsp
   140006a3c:	5b                   	pop    %rbx
   140006a3d:	5e                   	pop    %rsi
   140006a3e:	5f                   	pop    %rdi
   140006a3f:	5d                   	pop    %rbp
   140006a40:	41 5c                	pop    %r12
   140006a42:	41 5d                	pop    %r13
   140006a44:	41 5e                	pop    %r14
   140006a46:	41 5f                	pop    %r15
   140006a48:	c3                   	ret    
   140006a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140006a50 <__pow5mult_D2A>:
   140006a50:	41 55                	push   %r13
   140006a52:	41 54                	push   %r12
   140006a54:	57                   	push   %rdi
   140006a55:	56                   	push   %rsi
   140006a56:	53                   	push   %rbx
   140006a57:	48 83 ec 20          	sub    $0x20,%rsp
   140006a5b:	89 d0                	mov    %edx,%eax
   140006a5d:	49 89 cd             	mov    %rcx,%r13
   140006a60:	89 d3                	mov    %edx,%ebx
   140006a62:	83 e0 03             	and    $0x3,%eax
   140006a65:	0f 85 c5 00 00 00    	jne    140006b30 <__pow5mult_D2A+0xe0>
   140006a6b:	c1 fb 02             	sar    $0x2,%ebx
   140006a6e:	4d 89 ec             	mov    %r13,%r12
   140006a71:	74 57                	je     140006aca <__pow5mult_D2A+0x7a>
   140006a73:	48 8b 3d 06 57 00 00 	mov    0x5706(%rip),%rdi        # 14000c180 <p5s>
   140006a7a:	48 85 ff             	test   %rdi,%rdi
   140006a7d:	0f 84 e2 00 00 00    	je     140006b65 <__pow5mult_D2A+0x115>
   140006a83:	4d 89 ec             	mov    %r13,%r12
   140006a86:	4c 8d 2d 9b 60 00 00 	lea    0x609b(%rip),%r13        # 14000cb28 <dtoa_CritSec+0x28>
   140006a8d:	eb 10                	jmp    140006a9f <__pow5mult_D2A+0x4f>
   140006a8f:	90                   	nop
   140006a90:	d1 fb                	sar    %ebx
   140006a92:	74 36                	je     140006aca <__pow5mult_D2A+0x7a>
   140006a94:	48 8b 37             	mov    (%rdi),%rsi
   140006a97:	48 85 f6             	test   %rsi,%rsi
   140006a9a:	74 44                	je     140006ae0 <__pow5mult_D2A+0x90>
   140006a9c:	48 89 f7             	mov    %rsi,%rdi
   140006a9f:	f6 c3 01             	test   $0x1,%bl
   140006aa2:	74 ec                	je     140006a90 <__pow5mult_D2A+0x40>
   140006aa4:	48 89 fa             	mov    %rdi,%rdx
   140006aa7:	4c 89 e1             	mov    %r12,%rcx
   140006aaa:	e8 51 fe ff ff       	call   140006900 <__mult_D2A>
   140006aaf:	48 89 c6             	mov    %rax,%rsi
   140006ab2:	48 85 c0             	test   %rax,%rax
   140006ab5:	0f 84 98 00 00 00    	je     140006b53 <__pow5mult_D2A+0x103>
   140006abb:	4c 89 e1             	mov    %r12,%rcx
   140006abe:	49 89 f4             	mov    %rsi,%r12
   140006ac1:	e8 ea fc ff ff       	call   1400067b0 <__Bfree_D2A>
   140006ac6:	d1 fb                	sar    %ebx
   140006ac8:	75 ca                	jne    140006a94 <__pow5mult_D2A+0x44>
   140006aca:	4c 89 e0             	mov    %r12,%rax
   140006acd:	48 83 c4 20          	add    $0x20,%rsp
   140006ad1:	5b                   	pop    %rbx
   140006ad2:	5e                   	pop    %rsi
   140006ad3:	5f                   	pop    %rdi
   140006ad4:	41 5c                	pop    %r12
   140006ad6:	41 5d                	pop    %r13
   140006ad8:	c3                   	ret    
   140006ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006ae0:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006ae5:	e8 96 fa ff ff       	call   140006580 <dtoa_lock>
   140006aea:	48 8b 37             	mov    (%rdi),%rsi
   140006aed:	48 85 f6             	test   %rsi,%rsi
   140006af0:	74 1e                	je     140006b10 <__pow5mult_D2A+0xc0>
   140006af2:	83 3d f7 5f 00 00 02 	cmpl   $0x2,0x5ff7(%rip)        # 14000caf0 <dtoa_CS_init>
   140006af9:	75 a1                	jne    140006a9c <__pow5mult_D2A+0x4c>
   140006afb:	4c 89 e9             	mov    %r13,%rcx
   140006afe:	ff 15 00 67 00 00    	call   *0x6700(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   140006b04:	eb 96                	jmp    140006a9c <__pow5mult_D2A+0x4c>
   140006b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006b0d:	00 00 00 
   140006b10:	48 89 fa             	mov    %rdi,%rdx
   140006b13:	48 89 f9             	mov    %rdi,%rcx
   140006b16:	e8 e5 fd ff ff       	call   140006900 <__mult_D2A>
   140006b1b:	48 89 07             	mov    %rax,(%rdi)
   140006b1e:	48 89 c6             	mov    %rax,%rsi
   140006b21:	48 85 c0             	test   %rax,%rax
   140006b24:	74 2d                	je     140006b53 <__pow5mult_D2A+0x103>
   140006b26:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140006b2d:	eb c3                	jmp    140006af2 <__pow5mult_D2A+0xa2>
   140006b2f:	90                   	nop
   140006b30:	83 e8 01             	sub    $0x1,%eax
   140006b33:	48 8d 15 e6 29 00 00 	lea    0x29e6(%rip),%rdx        # 140009520 <p05.57590>
   140006b3a:	45 31 c0             	xor    %r8d,%r8d
   140006b3d:	48 98                	cltq   
   140006b3f:	8b 14 82             	mov    (%rdx,%rax,4),%edx
   140006b42:	e8 d9 fc ff ff       	call   140006820 <__multadd_D2A>
   140006b47:	49 89 c5             	mov    %rax,%r13
   140006b4a:	48 85 c0             	test   %rax,%rax
   140006b4d:	0f 85 18 ff ff ff    	jne    140006a6b <__pow5mult_D2A+0x1b>
   140006b53:	45 31 e4             	xor    %r12d,%r12d
   140006b56:	4c 89 e0             	mov    %r12,%rax
   140006b59:	48 83 c4 20          	add    $0x20,%rsp
   140006b5d:	5b                   	pop    %rbx
   140006b5e:	5e                   	pop    %rsi
   140006b5f:	5f                   	pop    %rdi
   140006b60:	41 5c                	pop    %r12
   140006b62:	41 5d                	pop    %r13
   140006b64:	c3                   	ret    
   140006b65:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006b6a:	e8 11 fa ff ff       	call   140006580 <dtoa_lock>
   140006b6f:	48 8b 3d 0a 56 00 00 	mov    0x560a(%rip),%rdi        # 14000c180 <p5s>
   140006b76:	48 85 ff             	test   %rdi,%rdi
   140006b79:	74 1f                	je     140006b9a <__pow5mult_D2A+0x14a>
   140006b7b:	83 3d 6e 5f 00 00 02 	cmpl   $0x2,0x5f6e(%rip)        # 14000caf0 <dtoa_CS_init>
   140006b82:	0f 85 fb fe ff ff    	jne    140006a83 <__pow5mult_D2A+0x33>
   140006b88:	48 8d 0d 99 5f 00 00 	lea    0x5f99(%rip),%rcx        # 14000cb28 <dtoa_CritSec+0x28>
   140006b8f:	ff 15 6f 66 00 00    	call   *0x666f(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   140006b95:	e9 e9 fe ff ff       	jmp    140006a83 <__pow5mult_D2A+0x33>
   140006b9a:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006b9f:	e8 0c fb ff ff       	call   1400066b0 <__Balloc_D2A>
   140006ba4:	48 89 c7             	mov    %rax,%rdi
   140006ba7:	48 85 c0             	test   %rax,%rax
   140006baa:	74 1e                	je     140006bca <__pow5mult_D2A+0x17a>
   140006bac:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
   140006bb3:	02 00 00 
   140006bb6:	48 89 3d c3 55 00 00 	mov    %rdi,0x55c3(%rip)        # 14000c180 <p5s>
   140006bbd:	48 89 47 14          	mov    %rax,0x14(%rdi)
   140006bc1:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   140006bc8:	eb b1                	jmp    140006b7b <__pow5mult_D2A+0x12b>
   140006bca:	48 c7 05 ab 55 00 00 	movq   $0x0,0x55ab(%rip)        # 14000c180 <p5s>
   140006bd1:	00 00 00 00 
   140006bd5:	45 31 e4             	xor    %r12d,%r12d
   140006bd8:	e9 ed fe ff ff       	jmp    140006aca <__pow5mult_D2A+0x7a>
   140006bdd:	0f 1f 00             	nopl   (%rax)

0000000140006be0 <__lshift_D2A>:
   140006be0:	41 56                	push   %r14
   140006be2:	41 55                	push   %r13
   140006be4:	41 54                	push   %r12
   140006be6:	55                   	push   %rbp
   140006be7:	57                   	push   %rdi
   140006be8:	56                   	push   %rsi
   140006be9:	53                   	push   %rbx
   140006bea:	48 83 ec 20          	sub    $0x20,%rsp
   140006bee:	49 89 cc             	mov    %rcx,%r12
   140006bf1:	89 d6                	mov    %edx,%esi
   140006bf3:	8b 49 08             	mov    0x8(%rcx),%ecx
   140006bf6:	41 89 d6             	mov    %edx,%r14d
   140006bf9:	41 8b 5c 24 14       	mov    0x14(%r12),%ebx
   140006bfe:	c1 fe 05             	sar    $0x5,%esi
   140006c01:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140006c06:	01 f3                	add    %esi,%ebx
   140006c08:	8d 6b 01             	lea    0x1(%rbx),%ebp
   140006c0b:	39 c5                	cmp    %eax,%ebp
   140006c0d:	7e 0a                	jle    140006c19 <__lshift_D2A+0x39>
   140006c0f:	90                   	nop
   140006c10:	01 c0                	add    %eax,%eax
   140006c12:	83 c1 01             	add    $0x1,%ecx
   140006c15:	39 c5                	cmp    %eax,%ebp
   140006c17:	7f f7                	jg     140006c10 <__lshift_D2A+0x30>
   140006c19:	e8 92 fa ff ff       	call   1400066b0 <__Balloc_D2A>
   140006c1e:	49 89 c5             	mov    %rax,%r13
   140006c21:	48 85 c0             	test   %rax,%rax
   140006c24:	0f 84 ba 00 00 00    	je     140006ce4 <__lshift_D2A+0x104>
   140006c2a:	48 8d 78 18          	lea    0x18(%rax),%rdi
   140006c2e:	85 f6                	test   %esi,%esi
   140006c30:	7e 24                	jle    140006c56 <__lshift_D2A+0x76>
   140006c32:	8d 56 ff             	lea    -0x1(%rsi),%edx
   140006c35:	49 89 f8             	mov    %rdi,%r8
   140006c38:	48 8d 44 90 1c       	lea    0x1c(%rax,%rdx,4),%rax
   140006c3d:	0f 1f 00             	nopl   (%rax)
   140006c40:	49 83 c0 04          	add    $0x4,%r8
   140006c44:	41 c7 40 fc 00 00 00 	movl   $0x0,-0x4(%r8)
   140006c4b:	00 
   140006c4c:	49 39 c0             	cmp    %rax,%r8
   140006c4f:	75 ef                	jne    140006c40 <__lshift_D2A+0x60>
   140006c51:	48 8d 7c 97 04       	lea    0x4(%rdi,%rdx,4),%rdi
   140006c56:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   140006c5b:	49 8d 74 24 18       	lea    0x18(%r12),%rsi
   140006c60:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
   140006c64:	41 83 e6 1f          	and    $0x1f,%r14d
   140006c68:	0f 84 92 00 00 00    	je     140006d00 <__lshift_D2A+0x120>
   140006c6e:	41 ba 20 00 00 00    	mov    $0x20,%r10d
   140006c74:	49 89 f9             	mov    %rdi,%r9
   140006c77:	45 31 c0             	xor    %r8d,%r8d
   140006c7a:	45 29 f2             	sub    %r14d,%r10d
   140006c7d:	0f 1f 00             	nopl   (%rax)
   140006c80:	8b 16                	mov    (%rsi),%edx
   140006c82:	44 89 f1             	mov    %r14d,%ecx
   140006c85:	49 83 c1 04          	add    $0x4,%r9
   140006c89:	48 83 c6 04          	add    $0x4,%rsi
   140006c8d:	d3 e2                	shl    %cl,%edx
   140006c8f:	89 d1                	mov    %edx,%ecx
   140006c91:	44 09 c1             	or     %r8d,%ecx
   140006c94:	41 89 49 fc          	mov    %ecx,-0x4(%r9)
   140006c98:	44 8b 46 fc          	mov    -0x4(%rsi),%r8d
   140006c9c:	44 89 d1             	mov    %r10d,%ecx
   140006c9f:	41 d3 e8             	shr    %cl,%r8d
   140006ca2:	48 39 f0             	cmp    %rsi,%rax
   140006ca5:	77 d9                	ja     140006c80 <__lshift_D2A+0xa0>
   140006ca7:	48 89 c2             	mov    %rax,%rdx
   140006caa:	49 8d 4c 24 19       	lea    0x19(%r12),%rcx
   140006caf:	4c 29 e2             	sub    %r12,%rdx
   140006cb2:	48 83 ea 19          	sub    $0x19,%rdx
   140006cb6:	48 c1 ea 02          	shr    $0x2,%rdx
   140006cba:	48 39 c8             	cmp    %rcx,%rax
   140006cbd:	b8 04 00 00 00       	mov    $0x4,%eax
   140006cc2:	48 8d 14 95 04 00 00 	lea    0x4(,%rdx,4),%rdx
   140006cc9:	00 
   140006cca:	48 0f 42 d0          	cmovb  %rax,%rdx
   140006cce:	45 85 c0             	test   %r8d,%r8d
   140006cd1:	0f 45 dd             	cmovne %ebp,%ebx
   140006cd4:	44 89 04 17          	mov    %r8d,(%rdi,%rdx,1)
   140006cd8:	41 89 5d 14          	mov    %ebx,0x14(%r13)
   140006cdc:	4c 89 e1             	mov    %r12,%rcx
   140006cdf:	e8 cc fa ff ff       	call   1400067b0 <__Bfree_D2A>
   140006ce4:	4c 89 e8             	mov    %r13,%rax
   140006ce7:	48 83 c4 20          	add    $0x20,%rsp
   140006ceb:	5b                   	pop    %rbx
   140006cec:	5e                   	pop    %rsi
   140006ced:	5f                   	pop    %rdi
   140006cee:	5d                   	pop    %rbp
   140006cef:	41 5c                	pop    %r12
   140006cf1:	41 5d                	pop    %r13
   140006cf3:	41 5e                	pop    %r14
   140006cf5:	c3                   	ret    
   140006cf6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006cfd:	00 00 00 
   140006d00:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140006d01:	48 39 f0             	cmp    %rsi,%rax
   140006d04:	76 d2                	jbe    140006cd8 <__lshift_D2A+0xf8>
   140006d06:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140006d07:	48 39 f0             	cmp    %rsi,%rax
   140006d0a:	77 f4                	ja     140006d00 <__lshift_D2A+0x120>
   140006d0c:	eb ca                	jmp    140006cd8 <__lshift_D2A+0xf8>
   140006d0e:	66 90                	xchg   %ax,%ax

0000000140006d10 <__cmp_D2A>:
   140006d10:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140006d14:	44 8b 49 14          	mov    0x14(%rcx),%r9d
   140006d18:	41 29 c1             	sub    %eax,%r9d
   140006d1b:	75 37                	jne    140006d54 <__cmp_D2A+0x44>
   140006d1d:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
   140006d24:	00 
   140006d25:	48 83 c1 18          	add    $0x18,%rcx
   140006d29:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
   140006d2d:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
   140006d32:	eb 09                	jmp    140006d3d <__cmp_D2A+0x2d>
   140006d34:	0f 1f 40 00          	nopl   0x0(%rax)
   140006d38:	48 39 c1             	cmp    %rax,%rcx
   140006d3b:	73 17                	jae    140006d54 <__cmp_D2A+0x44>
   140006d3d:	48 83 e8 04          	sub    $0x4,%rax
   140006d41:	48 83 ea 04          	sub    $0x4,%rdx
   140006d45:	44 8b 12             	mov    (%rdx),%r10d
   140006d48:	44 39 10             	cmp    %r10d,(%rax)
   140006d4b:	74 eb                	je     140006d38 <__cmp_D2A+0x28>
   140006d4d:	45 19 c9             	sbb    %r9d,%r9d
   140006d50:	41 83 c9 01          	or     $0x1,%r9d
   140006d54:	44 89 c8             	mov    %r9d,%eax
   140006d57:	c3                   	ret    
   140006d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006d5f:	00 

0000000140006d60 <__diff_D2A>:
   140006d60:	41 55                	push   %r13
   140006d62:	41 54                	push   %r12
   140006d64:	55                   	push   %rbp
   140006d65:	57                   	push   %rdi
   140006d66:	56                   	push   %rsi
   140006d67:	53                   	push   %rbx
   140006d68:	48 83 ec 28          	sub    $0x28,%rsp
   140006d6c:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140006d70:	8b 79 14             	mov    0x14(%rcx),%edi
   140006d73:	48 89 ce             	mov    %rcx,%rsi
   140006d76:	48 89 d3             	mov    %rdx,%rbx
   140006d79:	29 c7                	sub    %eax,%edi
   140006d7b:	0f 85 5f 01 00 00    	jne    140006ee0 <__diff_D2A+0x180>
   140006d81:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140006d88:	00 
   140006d89:	48 8d 49 18          	lea    0x18(%rcx),%rcx
   140006d8d:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
   140006d91:	48 8d 54 13 18       	lea    0x18(%rbx,%rdx,1),%rdx
   140006d96:	eb 11                	jmp    140006da9 <__diff_D2A+0x49>
   140006d98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006d9f:	00 
   140006da0:	48 39 c1             	cmp    %rax,%rcx
   140006da3:	0f 83 57 01 00 00    	jae    140006f00 <__diff_D2A+0x1a0>
   140006da9:	48 83 e8 04          	sub    $0x4,%rax
   140006dad:	48 83 ea 04          	sub    $0x4,%rdx
   140006db1:	44 8b 12             	mov    (%rdx),%r10d
   140006db4:	44 39 10             	cmp    %r10d,(%rax)
   140006db7:	74 e7                	je     140006da0 <__diff_D2A+0x40>
   140006db9:	0f 82 2c 01 00 00    	jb     140006eeb <__diff_D2A+0x18b>
   140006dbf:	8b 4e 08             	mov    0x8(%rsi),%ecx
   140006dc2:	e8 e9 f8 ff ff       	call   1400066b0 <__Balloc_D2A>
   140006dc7:	48 85 c0             	test   %rax,%rax
   140006dca:	0f 84 03 01 00 00    	je     140006ed3 <__diff_D2A+0x173>
   140006dd0:	48 63 56 14          	movslq 0x14(%rsi),%rdx
   140006dd4:	4c 8d 66 18          	lea    0x18(%rsi),%r12
   140006dd8:	89 78 10             	mov    %edi,0x10(%rax)
   140006ddb:	4c 8d 68 18          	lea    0x18(%rax),%r13
   140006ddf:	41 b9 18 00 00 00    	mov    $0x18,%r9d
   140006de5:	45 31 c0             	xor    %r8d,%r8d
   140006de8:	49 89 d2             	mov    %rdx,%r10
   140006deb:	49 8d 3c 94          	lea    (%r12,%rdx,4),%rdi
   140006def:	48 63 53 14          	movslq 0x14(%rbx),%rdx
   140006df3:	48 8d 6c 93 18       	lea    0x18(%rbx,%rdx,4),%rbp
   140006df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006dff:	00 
   140006e00:	42 8b 0c 0e          	mov    (%rsi,%r9,1),%ecx
   140006e04:	42 8b 14 0b          	mov    (%rbx,%r9,1),%edx
   140006e08:	4c 29 c1             	sub    %r8,%rcx
   140006e0b:	48 29 d1             	sub    %rdx,%rcx
   140006e0e:	42 89 0c 08          	mov    %ecx,(%rax,%r9,1)
   140006e12:	49 89 c8             	mov    %rcx,%r8
   140006e15:	49 83 c1 04          	add    $0x4,%r9
   140006e19:	41 89 cb             	mov    %ecx,%r11d
   140006e1c:	49 c1 e8 20          	shr    $0x20,%r8
   140006e20:	49 8d 14 19          	lea    (%r9,%rbx,1),%rdx
   140006e24:	41 83 e0 01          	and    $0x1,%r8d
   140006e28:	48 39 d5             	cmp    %rdx,%rbp
   140006e2b:	77 d3                	ja     140006e00 <__diff_D2A+0xa0>
   140006e2d:	48 89 ea             	mov    %rbp,%rdx
   140006e30:	4c 8d 4b 19          	lea    0x19(%rbx),%r9
   140006e34:	48 29 da             	sub    %rbx,%rdx
   140006e37:	bb 00 00 00 00       	mov    $0x0,%ebx
   140006e3c:	48 83 ea 19          	sub    $0x19,%rdx
   140006e40:	48 89 d1             	mov    %rdx,%rcx
   140006e43:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
   140006e47:	48 c1 e9 02          	shr    $0x2,%rcx
   140006e4b:	4c 39 cd             	cmp    %r9,%rbp
   140006e4e:	48 0f 42 d3          	cmovb  %rbx,%rdx
   140006e52:	48 8d 0c 8d 04 00 00 	lea    0x4(,%rcx,4),%rcx
   140006e59:	00 
   140006e5a:	4c 01 ea             	add    %r13,%rdx
   140006e5d:	4c 39 cd             	cmp    %r9,%rbp
   140006e60:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   140006e66:	49 0f 42 c9          	cmovb  %r9,%rcx
   140006e6a:	49 01 cc             	add    %rcx,%r12
   140006e6d:	49 01 cd             	add    %rcx,%r13
   140006e70:	4c 39 e7             	cmp    %r12,%rdi
   140006e73:	76 3d                	jbe    140006eb2 <__diff_D2A+0x152>
   140006e75:	4d 89 e9             	mov    %r13,%r9
   140006e78:	4c 89 e1             	mov    %r12,%rcx
   140006e7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006e80:	8b 11                	mov    (%rcx),%edx
   140006e82:	48 83 c1 04          	add    $0x4,%rcx
   140006e86:	49 83 c1 04          	add    $0x4,%r9
   140006e8a:	4c 29 c2             	sub    %r8,%rdx
   140006e8d:	49 89 d0             	mov    %rdx,%r8
   140006e90:	41 89 51 fc          	mov    %edx,-0x4(%r9)
   140006e94:	41 89 d3             	mov    %edx,%r11d
   140006e97:	49 c1 e8 20          	shr    $0x20,%r8
   140006e9b:	41 83 e0 01          	and    $0x1,%r8d
   140006e9f:	48 39 cf             	cmp    %rcx,%rdi
   140006ea2:	77 dc                	ja     140006e80 <__diff_D2A+0x120>
   140006ea4:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
   140006ea8:	4c 29 e2             	sub    %r12,%rdx
   140006eab:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
   140006eaf:	4c 01 ea             	add    %r13,%rdx
   140006eb2:	45 85 db             	test   %r11d,%r11d
   140006eb5:	75 18                	jne    140006ecf <__diff_D2A+0x16f>
   140006eb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140006ebe:	00 00 
   140006ec0:	8b 4a fc             	mov    -0x4(%rdx),%ecx
   140006ec3:	48 83 ea 04          	sub    $0x4,%rdx
   140006ec7:	41 83 ea 01          	sub    $0x1,%r10d
   140006ecb:	85 c9                	test   %ecx,%ecx
   140006ecd:	74 f1                	je     140006ec0 <__diff_D2A+0x160>
   140006ecf:	44 89 50 14          	mov    %r10d,0x14(%rax)
   140006ed3:	48 83 c4 28          	add    $0x28,%rsp
   140006ed7:	5b                   	pop    %rbx
   140006ed8:	5e                   	pop    %rsi
   140006ed9:	5f                   	pop    %rdi
   140006eda:	5d                   	pop    %rbp
   140006edb:	41 5c                	pop    %r12
   140006edd:	41 5d                	pop    %r13
   140006edf:	c3                   	ret    
   140006ee0:	bf 00 00 00 00       	mov    $0x0,%edi
   140006ee5:	0f 89 d4 fe ff ff    	jns    140006dbf <__diff_D2A+0x5f>
   140006eeb:	48 89 f0             	mov    %rsi,%rax
   140006eee:	bf 01 00 00 00       	mov    $0x1,%edi
   140006ef3:	48 89 de             	mov    %rbx,%rsi
   140006ef6:	48 89 c3             	mov    %rax,%rbx
   140006ef9:	e9 c1 fe ff ff       	jmp    140006dbf <__diff_D2A+0x5f>
   140006efe:	66 90                	xchg   %ax,%ax
   140006f00:	31 c9                	xor    %ecx,%ecx
   140006f02:	e8 a9 f7 ff ff       	call   1400066b0 <__Balloc_D2A>
   140006f07:	48 85 c0             	test   %rax,%rax
   140006f0a:	74 c7                	je     140006ed3 <__diff_D2A+0x173>
   140006f0c:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
   140006f13:	00 
   140006f14:	48 83 c4 28          	add    $0x28,%rsp
   140006f18:	5b                   	pop    %rbx
   140006f19:	5e                   	pop    %rsi
   140006f1a:	5f                   	pop    %rdi
   140006f1b:	5d                   	pop    %rbp
   140006f1c:	41 5c                	pop    %r12
   140006f1e:	41 5d                	pop    %r13
   140006f20:	c3                   	ret    
   140006f21:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006f28:	00 00 00 00 
   140006f2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140006f30 <__b2d_D2A>:
   140006f30:	41 54                	push   %r12
   140006f32:	53                   	push   %rbx
   140006f33:	48 63 41 14          	movslq 0x14(%rcx),%rax
   140006f37:	4c 8d 59 18          	lea    0x18(%rcx),%r11
   140006f3b:	49 89 d4             	mov    %rdx,%r12
   140006f3e:	b9 20 00 00 00       	mov    $0x20,%ecx
   140006f43:	4d 8d 0c 83          	lea    (%r11,%rax,4),%r9
   140006f47:	89 c8                	mov    %ecx,%eax
   140006f49:	45 8b 41 fc          	mov    -0x4(%r9),%r8d
   140006f4d:	4d 8d 51 fc          	lea    -0x4(%r9),%r10
   140006f51:	41 0f bd d0          	bsr    %r8d,%edx
   140006f55:	83 f2 1f             	xor    $0x1f,%edx
   140006f58:	29 d0                	sub    %edx,%eax
   140006f5a:	41 89 04 24          	mov    %eax,(%r12)
   140006f5e:	83 fa 0a             	cmp    $0xa,%edx
   140006f61:	0f 8e 89 00 00 00    	jle    140006ff0 <__b2d_D2A+0xc0>
   140006f67:	83 ea 0b             	sub    $0xb,%edx
   140006f6a:	4d 39 d3             	cmp    %r10,%r11
   140006f6d:	73 61                	jae    140006fd0 <__b2d_D2A+0xa0>
   140006f6f:	45 8b 51 f8          	mov    -0x8(%r9),%r10d
   140006f73:	85 d2                	test   %edx,%edx
   140006f75:	74 60                	je     140006fd7 <__b2d_D2A+0xa7>
   140006f77:	89 cb                	mov    %ecx,%ebx
   140006f79:	44 89 c0             	mov    %r8d,%eax
   140006f7c:	89 d1                	mov    %edx,%ecx
   140006f7e:	45 89 d0             	mov    %r10d,%r8d
   140006f81:	29 d3                	sub    %edx,%ebx
   140006f83:	d3 e0                	shl    %cl,%eax
   140006f85:	89 d9                	mov    %ebx,%ecx
   140006f87:	41 d3 e8             	shr    %cl,%r8d
   140006f8a:	89 d1                	mov    %edx,%ecx
   140006f8c:	49 8d 51 f8          	lea    -0x8(%r9),%rdx
   140006f90:	44 09 c0             	or     %r8d,%eax
   140006f93:	41 d3 e2             	shl    %cl,%r10d
   140006f96:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140006f9b:	48 c1 e0 20          	shl    $0x20,%rax
   140006f9f:	49 39 d3             	cmp    %rdx,%r11
   140006fa2:	73 0b                	jae    140006faf <__b2d_D2A+0x7f>
   140006fa4:	41 8b 51 f4          	mov    -0xc(%r9),%edx
   140006fa8:	89 d9                	mov    %ebx,%ecx
   140006faa:	d3 ea                	shr    %cl,%edx
   140006fac:	41 09 d2             	or     %edx,%r10d
   140006faf:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
   140006fb6:	ff ff ff 
   140006fb9:	48 21 d0             	and    %rdx,%rax
   140006fbc:	4c 09 d0             	or     %r10,%rax
   140006fbf:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140006fc4:	5b                   	pop    %rbx
   140006fc5:	41 5c                	pop    %r12
   140006fc7:	c3                   	ret    
   140006fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006fcf:	00 
   140006fd0:	45 31 d2             	xor    %r10d,%r10d
   140006fd3:	85 d2                	test   %edx,%edx
   140006fd5:	75 59                	jne    140007030 <__b2d_D2A+0x100>
   140006fd7:	44 89 c0             	mov    %r8d,%eax
   140006fda:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140006fdf:	48 c1 e0 20          	shl    $0x20,%rax
   140006fe3:	4c 09 d0             	or     %r10,%rax
   140006fe6:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140006feb:	5b                   	pop    %rbx
   140006fec:	41 5c                	pop    %r12
   140006fee:	c3                   	ret    
   140006fef:	90                   	nop
   140006ff0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140006ff5:	44 89 c0             	mov    %r8d,%eax
   140006ff8:	31 db                	xor    %ebx,%ebx
   140006ffa:	29 d1                	sub    %edx,%ecx
   140006ffc:	d3 e8                	shr    %cl,%eax
   140006ffe:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140007003:	48 c1 e0 20          	shl    $0x20,%rax
   140007007:	4d 39 d3             	cmp    %r10,%r11
   14000700a:	73 06                	jae    140007012 <__b2d_D2A+0xe2>
   14000700c:	41 8b 59 f8          	mov    -0x8(%r9),%ebx
   140007010:	d3 eb                	shr    %cl,%ebx
   140007012:	8d 4a 15             	lea    0x15(%rdx),%ecx
   140007015:	41 d3 e0             	shl    %cl,%r8d
   140007018:	41 09 d8             	or     %ebx,%r8d
   14000701b:	4c 09 c0             	or     %r8,%rax
   14000701e:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140007023:	5b                   	pop    %rbx
   140007024:	41 5c                	pop    %r12
   140007026:	c3                   	ret    
   140007027:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000702e:	00 00 
   140007030:	44 89 c0             	mov    %r8d,%eax
   140007033:	89 d1                	mov    %edx,%ecx
   140007035:	45 31 d2             	xor    %r10d,%r10d
   140007038:	d3 e0                	shl    %cl,%eax
   14000703a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000703f:	48 c1 e0 20          	shl    $0x20,%rax
   140007043:	e9 67 ff ff ff       	jmp    140006faf <__b2d_D2A+0x7f>
   140007048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000704f:	00 

0000000140007050 <__d2b_D2A>:
   140007050:	57                   	push   %rdi
   140007051:	56                   	push   %rsi
   140007052:	53                   	push   %rbx
   140007053:	48 83 ec 20          	sub    $0x20,%rsp
   140007057:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000705c:	66 48 0f 7e c3       	movq   %xmm0,%rbx
   140007061:	48 89 d7             	mov    %rdx,%rdi
   140007064:	4c 89 c6             	mov    %r8,%rsi
   140007067:	e8 44 f6 ff ff       	call   1400066b0 <__Balloc_D2A>
   14000706c:	48 85 c0             	test   %rax,%rax
   14000706f:	0f 84 8f 00 00 00    	je     140007104 <__d2b_D2A+0xb4>
   140007075:	48 89 d9             	mov    %rbx,%rcx
   140007078:	48 89 da             	mov    %rbx,%rdx
   14000707b:	48 c1 e9 20          	shr    $0x20,%rcx
   14000707f:	41 89 ca             	mov    %ecx,%r10d
   140007082:	c1 e9 14             	shr    $0x14,%ecx
   140007085:	41 81 e2 ff ff 0f 00 	and    $0xfffff,%r10d
   14000708c:	45 89 d1             	mov    %r10d,%r9d
   14000708f:	41 81 c9 00 00 10 00 	or     $0x100000,%r9d
   140007096:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
   14000709c:	45 0f 45 d1          	cmovne %r9d,%r10d
   1400070a0:	41 89 c8             	mov    %ecx,%r8d
   1400070a3:	85 db                	test   %ebx,%ebx
   1400070a5:	74 69                	je     140007110 <__d2b_D2A+0xc0>
   1400070a7:	45 31 c9             	xor    %r9d,%r9d
   1400070aa:	f3 44 0f bc cb       	tzcnt  %ebx,%r9d
   1400070af:	44 89 c9             	mov    %r9d,%ecx
   1400070b2:	d3 ea                	shr    %cl,%edx
   1400070b4:	45 85 c9             	test   %r9d,%r9d
   1400070b7:	74 15                	je     1400070ce <__d2b_D2A+0x7e>
   1400070b9:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400070be:	44 89 d3             	mov    %r10d,%ebx
   1400070c1:	44 29 c9             	sub    %r9d,%ecx
   1400070c4:	d3 e3                	shl    %cl,%ebx
   1400070c6:	44 89 c9             	mov    %r9d,%ecx
   1400070c9:	09 da                	or     %ebx,%edx
   1400070cb:	41 d3 ea             	shr    %cl,%r10d
   1400070ce:	89 50 18             	mov    %edx,0x18(%rax)
   1400070d1:	31 d2                	xor    %edx,%edx
   1400070d3:	45 85 d2             	test   %r10d,%r10d
   1400070d6:	0f 95 c2             	setne  %dl
   1400070d9:	44 89 50 1c          	mov    %r10d,0x1c(%rax)
   1400070dd:	83 c2 01             	add    $0x1,%edx
   1400070e0:	89 50 14             	mov    %edx,0x14(%rax)
   1400070e3:	45 85 c0             	test   %r8d,%r8d
   1400070e6:	75 4c                	jne    140007134 <__d2b_D2A+0xe4>
   1400070e8:	48 63 ca             	movslq %edx,%rcx
   1400070eb:	c1 e2 05             	shl    $0x5,%edx
   1400070ee:	41 81 e9 32 04 00 00 	sub    $0x432,%r9d
   1400070f5:	0f bd 4c 88 14       	bsr    0x14(%rax,%rcx,4),%ecx
   1400070fa:	44 89 0f             	mov    %r9d,(%rdi)
   1400070fd:	83 f1 1f             	xor    $0x1f,%ecx
   140007100:	29 ca                	sub    %ecx,%edx
   140007102:	89 16                	mov    %edx,(%rsi)
   140007104:	48 83 c4 20          	add    $0x20,%rsp
   140007108:	5b                   	pop    %rbx
   140007109:	5e                   	pop    %rsi
   14000710a:	5f                   	pop    %rdi
   14000710b:	c3                   	ret    
   14000710c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007110:	31 c9                	xor    %ecx,%ecx
   140007112:	44 89 d2             	mov    %r10d,%edx
   140007115:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
   14000711c:	f3 41 0f bc ca       	tzcnt  %r10d,%ecx
   140007121:	d3 ea                	shr    %cl,%edx
   140007123:	44 8d 49 20          	lea    0x20(%rcx),%r9d
   140007127:	89 50 18             	mov    %edx,0x18(%rax)
   14000712a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000712f:	45 85 c0             	test   %r8d,%r8d
   140007132:	74 b4                	je     1400070e8 <__d2b_D2A+0x98>
   140007134:	43 8d 94 08 cd fb ff 	lea    -0x433(%r8,%r9,1),%edx
   14000713b:	ff 
   14000713c:	89 17                	mov    %edx,(%rdi)
   14000713e:	ba 35 00 00 00       	mov    $0x35,%edx
   140007143:	44 29 ca             	sub    %r9d,%edx
   140007146:	89 16                	mov    %edx,(%rsi)
   140007148:	48 83 c4 20          	add    $0x20,%rsp
   14000714c:	5b                   	pop    %rbx
   14000714d:	5e                   	pop    %rsi
   14000714e:	5f                   	pop    %rdi
   14000714f:	c3                   	ret    

0000000140007150 <__strcp_D2A>:
   140007150:	48 89 c8             	mov    %rcx,%rax
   140007153:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
   140007157:	0f b6 12             	movzbl (%rdx),%edx
   14000715a:	88 10                	mov    %dl,(%rax)
   14000715c:	84 d2                	test   %dl,%dl
   14000715e:	74 11                	je     140007171 <__strcp_D2A+0x21>
   140007160:	0f b6 11             	movzbl (%rcx),%edx
   140007163:	48 83 c0 01          	add    $0x1,%rax
   140007167:	48 83 c1 01          	add    $0x1,%rcx
   14000716b:	88 10                	mov    %dl,(%rax)
   14000716d:	84 d2                	test   %dl,%dl
   14000716f:	75 ef                	jne    140007160 <__strcp_D2A+0x10>
   140007171:	c3                   	ret    
   140007172:	90                   	nop
   140007173:	90                   	nop
   140007174:	90                   	nop
   140007175:	90                   	nop
   140007176:	90                   	nop
   140007177:	90                   	nop
   140007178:	90                   	nop
   140007179:	90                   	nop
   14000717a:	90                   	nop
   14000717b:	90                   	nop
   14000717c:	90                   	nop
   14000717d:	90                   	nop
   14000717e:	90                   	nop
   14000717f:	90                   	nop

0000000140007180 <strnlen>:
   140007180:	45 31 c0             	xor    %r8d,%r8d
   140007183:	48 89 c8             	mov    %rcx,%rax
   140007186:	48 85 d2             	test   %rdx,%rdx
   140007189:	75 14                	jne    14000719f <strnlen+0x1f>
   14000718b:	eb 17                	jmp    1400071a4 <strnlen+0x24>
   14000718d:	0f 1f 00             	nopl   (%rax)
   140007190:	48 83 c0 01          	add    $0x1,%rax
   140007194:	49 89 c0             	mov    %rax,%r8
   140007197:	49 29 c8             	sub    %rcx,%r8
   14000719a:	49 39 d0             	cmp    %rdx,%r8
   14000719d:	73 05                	jae    1400071a4 <strnlen+0x24>
   14000719f:	80 38 00             	cmpb   $0x0,(%rax)
   1400071a2:	75 ec                	jne    140007190 <strnlen+0x10>
   1400071a4:	4c 89 c0             	mov    %r8,%rax
   1400071a7:	c3                   	ret    
   1400071a8:	90                   	nop
   1400071a9:	90                   	nop
   1400071aa:	90                   	nop
   1400071ab:	90                   	nop
   1400071ac:	90                   	nop
   1400071ad:	90                   	nop
   1400071ae:	90                   	nop
   1400071af:	90                   	nop

00000001400071b0 <wcsnlen>:
   1400071b0:	31 c0                	xor    %eax,%eax
   1400071b2:	48 85 d2             	test   %rdx,%rdx
   1400071b5:	75 12                	jne    1400071c9 <wcsnlen+0x19>
   1400071b7:	eb 17                	jmp    1400071d0 <wcsnlen+0x20>
   1400071b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400071c0:	48 83 c0 01          	add    $0x1,%rax
   1400071c4:	48 39 c2             	cmp    %rax,%rdx
   1400071c7:	74 07                	je     1400071d0 <wcsnlen+0x20>
   1400071c9:	66 83 3c 41 00       	cmpw   $0x0,(%rcx,%rax,2)
   1400071ce:	75 f0                	jne    1400071c0 <wcsnlen+0x10>
   1400071d0:	c3                   	ret    
   1400071d1:	90                   	nop
   1400071d2:	90                   	nop
   1400071d3:	90                   	nop
   1400071d4:	90                   	nop
   1400071d5:	90                   	nop
   1400071d6:	90                   	nop
   1400071d7:	90                   	nop
   1400071d8:	90                   	nop
   1400071d9:	90                   	nop
   1400071da:	90                   	nop
   1400071db:	90                   	nop
   1400071dc:	90                   	nop
   1400071dd:	90                   	nop
   1400071de:	90                   	nop
   1400071df:	90                   	nop

00000001400071e0 <wcslen>:
   1400071e0:	ff 25 76 61 00 00    	jmp    *0x6176(%rip)        # 14000d35c <__imp_wcslen>
   1400071e6:	90                   	nop
   1400071e7:	90                   	nop

00000001400071e8 <vfprintf>:
   1400071e8:	ff 25 66 61 00 00    	jmp    *0x6166(%rip)        # 14000d354 <__imp_vfprintf>
   1400071ee:	90                   	nop
   1400071ef:	90                   	nop

00000001400071f0 <strncmp>:
   1400071f0:	ff 25 56 61 00 00    	jmp    *0x6156(%rip)        # 14000d34c <__imp_strncmp>
   1400071f6:	90                   	nop
   1400071f7:	90                   	nop

00000001400071f8 <strlen>:
   1400071f8:	ff 25 46 61 00 00    	jmp    *0x6146(%rip)        # 14000d344 <__imp_strlen>
   1400071fe:	90                   	nop
   1400071ff:	90                   	nop

0000000140007200 <strerror>:
   140007200:	ff 25 36 61 00 00    	jmp    *0x6136(%rip)        # 14000d33c <__imp_strerror>
   140007206:	90                   	nop
   140007207:	90                   	nop

0000000140007208 <signal>:
   140007208:	ff 25 26 61 00 00    	jmp    *0x6126(%rip)        # 14000d334 <__imp_signal>
   14000720e:	90                   	nop
   14000720f:	90                   	nop

0000000140007210 <memcpy>:
   140007210:	ff 25 16 61 00 00    	jmp    *0x6116(%rip)        # 14000d32c <__imp_memcpy>
   140007216:	90                   	nop
   140007217:	90                   	nop

0000000140007218 <malloc>:
   140007218:	ff 25 06 61 00 00    	jmp    *0x6106(%rip)        # 14000d324 <__imp_malloc>
   14000721e:	90                   	nop
   14000721f:	90                   	nop

0000000140007220 <localeconv>:
   140007220:	ff 25 f6 60 00 00    	jmp    *0x60f6(%rip)        # 14000d31c <__imp_localeconv>
   140007226:	90                   	nop
   140007227:	90                   	nop

0000000140007228 <fwrite>:
   140007228:	ff 25 e6 60 00 00    	jmp    *0x60e6(%rip)        # 14000d314 <__imp_fwrite>
   14000722e:	90                   	nop
   14000722f:	90                   	nop

0000000140007230 <free>:
   140007230:	ff 25 d6 60 00 00    	jmp    *0x60d6(%rip)        # 14000d30c <__imp_free>
   140007236:	90                   	nop
   140007237:	90                   	nop

0000000140007238 <fputc>:
   140007238:	ff 25 c6 60 00 00    	jmp    *0x60c6(%rip)        # 14000d304 <__imp_fputc>
   14000723e:	90                   	nop
   14000723f:	90                   	nop

0000000140007240 <fprintf>:
   140007240:	ff 25 b6 60 00 00    	jmp    *0x60b6(%rip)        # 14000d2fc <__imp_fprintf>
   140007246:	90                   	nop
   140007247:	90                   	nop

0000000140007248 <exit>:
   140007248:	ff 25 a6 60 00 00    	jmp    *0x60a6(%rip)        # 14000d2f4 <__imp_exit>
   14000724e:	90                   	nop
   14000724f:	90                   	nop

0000000140007250 <calloc>:
   140007250:	ff 25 96 60 00 00    	jmp    *0x6096(%rip)        # 14000d2ec <__imp_calloc>
   140007256:	90                   	nop
   140007257:	90                   	nop

0000000140007258 <abort>:
   140007258:	ff 25 86 60 00 00    	jmp    *0x6086(%rip)        # 14000d2e4 <__imp_abort>
   14000725e:	90                   	nop
   14000725f:	90                   	nop

0000000140007260 <_onexit>:
   140007260:	ff 25 6e 60 00 00    	jmp    *0x606e(%rip)        # 14000d2d4 <__imp__onexit>
   140007266:	90                   	nop
   140007267:	90                   	nop

0000000140007268 <_initterm>:
   140007268:	ff 25 56 60 00 00    	jmp    *0x6056(%rip)        # 14000d2c4 <__imp__initterm>
   14000726e:	90                   	nop
   14000726f:	90                   	nop

0000000140007270 <_errno>:
   140007270:	ff 25 3e 60 00 00    	jmp    *0x603e(%rip)        # 14000d2b4 <__imp__errno>
   140007276:	90                   	nop
   140007277:	90                   	nop

0000000140007278 <_cexit>:
   140007278:	ff 25 26 60 00 00    	jmp    *0x6026(%rip)        # 14000d2a4 <__imp__cexit>
   14000727e:	90                   	nop
   14000727f:	90                   	nop

0000000140007280 <_amsg_exit>:
   140007280:	ff 25 16 60 00 00    	jmp    *0x6016(%rip)        # 14000d29c <__imp__amsg_exit>
   140007286:	90                   	nop
   140007287:	90                   	nop

0000000140007288 <__setusermatherr>:
   140007288:	ff 25 fe 5f 00 00    	jmp    *0x5ffe(%rip)        # 14000d28c <__imp___setusermatherr>
   14000728e:	90                   	nop
   14000728f:	90                   	nop

0000000140007290 <__set_app_type>:
   140007290:	ff 25 ee 5f 00 00    	jmp    *0x5fee(%rip)        # 14000d284 <__imp___set_app_type>
   140007296:	90                   	nop
   140007297:	90                   	nop

0000000140007298 <__lconv_init>:
   140007298:	ff 25 de 5f 00 00    	jmp    *0x5fde(%rip)        # 14000d27c <__imp___lconv_init>
   14000729e:	90                   	nop
   14000729f:	90                   	nop

00000001400072a0 <__getmainargs>:
   1400072a0:	ff 25 be 5f 00 00    	jmp    *0x5fbe(%rip)        # 14000d264 <__imp___getmainargs>
   1400072a6:	90                   	nop
   1400072a7:	90                   	nop

00000001400072a8 <__C_specific_handler>:
   1400072a8:	ff 25 9e 5f 00 00    	jmp    *0x5f9e(%rip)        # 14000d24c <__imp___C_specific_handler>
   1400072ae:	90                   	nop
   1400072af:	90                   	nop

00000001400072b0 <__mbrtowc_cp>:
   1400072b0:	57                   	push   %rdi
   1400072b1:	53                   	push   %rbx
   1400072b2:	48 83 ec 48          	sub    $0x48,%rsp
   1400072b6:	48 89 cf             	mov    %rcx,%rdi
   1400072b9:	48 89 d3             	mov    %rdx,%rbx
   1400072bc:	48 85 d2             	test   %rdx,%rdx
   1400072bf:	0f 84 33 01 00 00    	je     1400073f8 <__mbrtowc_cp+0x148>
   1400072c5:	4d 85 c0             	test   %r8,%r8
   1400072c8:	0f 84 33 01 00 00    	je     140007401 <__mbrtowc_cp+0x151>
   1400072ce:	41 8b 01             	mov    (%r9),%eax
   1400072d1:	0f b6 12             	movzbl (%rdx),%edx
   1400072d4:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
   1400072db:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   1400072df:	84 d2                	test   %dl,%dl
   1400072e1:	0f 84 a1 00 00 00    	je     140007388 <__mbrtowc_cp+0xd8>
   1400072e7:	83 bc 24 88 00 00 00 	cmpl   $0x1,0x88(%rsp)
   1400072ee:	01 
   1400072ef:	76 77                	jbe    140007368 <__mbrtowc_cp+0xb8>
   1400072f1:	84 c0                	test   %al,%al
   1400072f3:	0f 85 a7 00 00 00    	jne    1400073a0 <__mbrtowc_cp+0xf0>
   1400072f9:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   1400072fe:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007305:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   14000730a:	ff 15 ec 5e 00 00    	call   *0x5eec(%rip)        # 14000d1fc <__imp_IsDBCSLeadByteEx>
   140007310:	85 c0                	test   %eax,%eax
   140007312:	74 54                	je     140007368 <__mbrtowc_cp+0xb8>
   140007314:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
   140007319:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
   14000731e:	49 83 f8 01          	cmp    $0x1,%r8
   140007322:	0f 86 f5 00 00 00    	jbe    14000741d <__mbrtowc_cp+0x16d>
   140007328:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   14000732d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140007333:	49 89 d8             	mov    %rbx,%r8
   140007336:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   14000733d:	00 
   14000733e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007345:	ba 08 00 00 00       	mov    $0x8,%edx
   14000734a:	ff 15 bc 5e 00 00    	call   *0x5ebc(%rip)        # 14000d20c <__imp_MultiByteToWideChar>
   140007350:	85 c0                	test   %eax,%eax
   140007352:	0f 84 b0 00 00 00    	je     140007408 <__mbrtowc_cp+0x158>
   140007358:	b8 02 00 00 00       	mov    $0x2,%eax
   14000735d:	48 83 c4 48          	add    $0x48,%rsp
   140007361:	5b                   	pop    %rbx
   140007362:	5f                   	pop    %rdi
   140007363:	c3                   	ret    
   140007364:	0f 1f 40 00          	nopl   0x0(%rax)
   140007368:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   14000736f:	85 c0                	test   %eax,%eax
   140007371:	75 4d                	jne    1400073c0 <__mbrtowc_cp+0x110>
   140007373:	0f b6 03             	movzbl (%rbx),%eax
   140007376:	66 89 07             	mov    %ax,(%rdi)
   140007379:	b8 01 00 00 00       	mov    $0x1,%eax
   14000737e:	48 83 c4 48          	add    $0x48,%rsp
   140007382:	5b                   	pop    %rbx
   140007383:	5f                   	pop    %rdi
   140007384:	c3                   	ret    
   140007385:	0f 1f 00             	nopl   (%rax)
   140007388:	31 d2                	xor    %edx,%edx
   14000738a:	31 c0                	xor    %eax,%eax
   14000738c:	66 89 11             	mov    %dx,(%rcx)
   14000738f:	48 83 c4 48          	add    $0x48,%rsp
   140007393:	5b                   	pop    %rbx
   140007394:	5f                   	pop    %rdi
   140007395:	c3                   	ret    
   140007396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000739d:	00 00 00 
   1400073a0:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
   1400073a4:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   1400073aa:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
   1400073af:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400073b6:	00 
   1400073b7:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   1400073bc:	eb 80                	jmp    14000733e <__mbrtowc_cp+0x8e>
   1400073be:	66 90                	xchg   %ax,%ax
   1400073c0:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400073c7:	00 
   1400073c8:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   1400073cf:	49 89 d8             	mov    %rbx,%r8
   1400073d2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   1400073d8:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   1400073dd:	ba 08 00 00 00       	mov    $0x8,%edx
   1400073e2:	ff 15 24 5e 00 00    	call   *0x5e24(%rip)        # 14000d20c <__imp_MultiByteToWideChar>
   1400073e8:	85 c0                	test   %eax,%eax
   1400073ea:	74 1c                	je     140007408 <__mbrtowc_cp+0x158>
   1400073ec:	b8 01 00 00 00       	mov    $0x1,%eax
   1400073f1:	eb 9c                	jmp    14000738f <__mbrtowc_cp+0xdf>
   1400073f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400073f8:	31 c0                	xor    %eax,%eax
   1400073fa:	48 83 c4 48          	add    $0x48,%rsp
   1400073fe:	5b                   	pop    %rbx
   1400073ff:	5f                   	pop    %rdi
   140007400:	c3                   	ret    
   140007401:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140007406:	eb 87                	jmp    14000738f <__mbrtowc_cp+0xdf>
   140007408:	e8 63 fe ff ff       	call   140007270 <_errno>
   14000740d:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140007413:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007418:	e9 72 ff ff ff       	jmp    14000738f <__mbrtowc_cp+0xdf>
   14000741d:	0f b6 03             	movzbl (%rbx),%eax
   140007420:	41 88 01             	mov    %al,(%r9)
   140007423:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140007428:	e9 62 ff ff ff       	jmp    14000738f <__mbrtowc_cp+0xdf>
   14000742d:	0f 1f 00             	nopl   (%rax)

0000000140007430 <mbrtowc>:
   140007430:	41 55                	push   %r13
   140007432:	41 54                	push   %r12
   140007434:	57                   	push   %rdi
   140007435:	56                   	push   %rsi
   140007436:	53                   	push   %rbx
   140007437:	48 83 ec 40          	sub    $0x40,%rsp
   14000743b:	31 c0                	xor    %eax,%eax
   14000743d:	49 89 cc             	mov    %rcx,%r12
   140007440:	48 85 c9             	test   %rcx,%rcx
   140007443:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007448:	48 8d 44 24 3e       	lea    0x3e(%rsp),%rax
   14000744d:	4c 89 cb             	mov    %r9,%rbx
   140007450:	4c 0f 44 e0          	cmove  %rax,%r12
   140007454:	49 89 d5             	mov    %rdx,%r13
   140007457:	4c 89 c6             	mov    %r8,%rsi
   14000745a:	e8 e9 04 00 00       	call   140007948 <___mb_cur_max_func>
   14000745f:	89 c7                	mov    %eax,%edi
   140007461:	e8 ea 04 00 00       	call   140007950 <___lc_codepage_func>
   140007466:	48 85 db             	test   %rbx,%rbx
   140007469:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   14000746d:	49 89 f0             	mov    %rsi,%r8
   140007470:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140007474:	4c 8d 0d ed 56 00 00 	lea    0x56ed(%rip),%r9        # 14000cb68 <internal_mbstate.57695>
   14000747b:	4c 89 ea             	mov    %r13,%rdx
   14000747e:	4c 89 e1             	mov    %r12,%rcx
   140007481:	4c 0f 45 cb          	cmovne %rbx,%r9
   140007485:	e8 26 fe ff ff       	call   1400072b0 <__mbrtowc_cp>
   14000748a:	48 98                	cltq   
   14000748c:	48 83 c4 40          	add    $0x40,%rsp
   140007490:	5b                   	pop    %rbx
   140007491:	5e                   	pop    %rsi
   140007492:	5f                   	pop    %rdi
   140007493:	41 5c                	pop    %r12
   140007495:	41 5d                	pop    %r13
   140007497:	c3                   	ret    
   140007498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000749f:	00 

00000001400074a0 <mbsrtowcs>:
   1400074a0:	41 56                	push   %r14
   1400074a2:	41 55                	push   %r13
   1400074a4:	41 54                	push   %r12
   1400074a6:	55                   	push   %rbp
   1400074a7:	57                   	push   %rdi
   1400074a8:	56                   	push   %rsi
   1400074a9:	53                   	push   %rbx
   1400074aa:	48 83 ec 40          	sub    $0x40,%rsp
   1400074ae:	48 8d 05 af 56 00 00 	lea    0x56af(%rip),%rax        # 14000cb64 <internal_mbstate.57706>
   1400074b5:	4d 89 cd             	mov    %r9,%r13
   1400074b8:	4d 85 c9             	test   %r9,%r9
   1400074bb:	49 89 ce             	mov    %rcx,%r14
   1400074be:	48 89 d3             	mov    %rdx,%rbx
   1400074c1:	4c 0f 44 e8          	cmove  %rax,%r13
   1400074c5:	4c 89 c6             	mov    %r8,%rsi
   1400074c8:	e8 83 04 00 00       	call   140007950 <___lc_codepage_func>
   1400074cd:	89 c5                	mov    %eax,%ebp
   1400074cf:	e8 74 04 00 00       	call   140007948 <___mb_cur_max_func>
   1400074d4:	89 c7                	mov    %eax,%edi
   1400074d6:	48 85 db             	test   %rbx,%rbx
   1400074d9:	0f 84 c1 00 00 00    	je     1400075a0 <mbsrtowcs+0x100>
   1400074df:	48 8b 13             	mov    (%rbx),%rdx
   1400074e2:	48 85 d2             	test   %rdx,%rdx
   1400074e5:	0f 84 b5 00 00 00    	je     1400075a0 <mbsrtowcs+0x100>
   1400074eb:	4d 85 f6             	test   %r14,%r14
   1400074ee:	74 70                	je     140007560 <mbsrtowcs+0xc0>
   1400074f0:	45 31 e4             	xor    %r12d,%r12d
   1400074f3:	48 85 f6             	test   %rsi,%rsi
   1400074f6:	75 1f                	jne    140007517 <mbsrtowcs+0x77>
   1400074f8:	eb 4a                	jmp    140007544 <mbsrtowcs+0xa4>
   1400074fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007500:	48 8b 13             	mov    (%rbx),%rdx
   140007503:	48 98                	cltq   
   140007505:	49 83 c6 02          	add    $0x2,%r14
   140007509:	49 01 c4             	add    %rax,%r12
   14000750c:	48 01 c2             	add    %rax,%rdx
   14000750f:	48 89 13             	mov    %rdx,(%rbx)
   140007512:	4c 39 e6             	cmp    %r12,%rsi
   140007515:	76 2d                	jbe    140007544 <mbsrtowcs+0xa4>
   140007517:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   14000751b:	49 89 f0             	mov    %rsi,%r8
   14000751e:	4d 89 e9             	mov    %r13,%r9
   140007521:	4c 89 f1             	mov    %r14,%rcx
   140007524:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
   140007528:	4d 29 e0             	sub    %r12,%r8
   14000752b:	e8 80 fd ff ff       	call   1400072b0 <__mbrtowc_cp>
   140007530:	85 c0                	test   %eax,%eax
   140007532:	7f cc                	jg     140007500 <mbsrtowcs+0x60>
   140007534:	49 39 f4             	cmp    %rsi,%r12
   140007537:	73 0b                	jae    140007544 <mbsrtowcs+0xa4>
   140007539:	85 c0                	test   %eax,%eax
   14000753b:	75 07                	jne    140007544 <mbsrtowcs+0xa4>
   14000753d:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
   140007544:	4c 89 e0             	mov    %r12,%rax
   140007547:	48 83 c4 40          	add    $0x40,%rsp
   14000754b:	5b                   	pop    %rbx
   14000754c:	5e                   	pop    %rsi
   14000754d:	5f                   	pop    %rdi
   14000754e:	5d                   	pop    %rbp
   14000754f:	41 5c                	pop    %r12
   140007551:	41 5d                	pop    %r13
   140007553:	41 5e                	pop    %r14
   140007555:	c3                   	ret    
   140007556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000755d:	00 00 00 
   140007560:	31 c0                	xor    %eax,%eax
   140007562:	41 89 fe             	mov    %edi,%r14d
   140007565:	48 8d 74 24 3e       	lea    0x3e(%rsp),%rsi
   14000756a:	45 31 e4             	xor    %r12d,%r12d
   14000756d:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007572:	eb 0c                	jmp    140007580 <mbsrtowcs+0xe0>
   140007574:	0f 1f 40 00          	nopl   0x0(%rax)
   140007578:	48 98                	cltq   
   14000757a:	48 8b 13             	mov    (%rbx),%rdx
   14000757d:	49 01 c4             	add    %rax,%r12
   140007580:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   140007584:	4c 01 e2             	add    %r12,%rdx
   140007587:	4d 89 e9             	mov    %r13,%r9
   14000758a:	4d 89 f0             	mov    %r14,%r8
   14000758d:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
   140007591:	48 89 f1             	mov    %rsi,%rcx
   140007594:	e8 17 fd ff ff       	call   1400072b0 <__mbrtowc_cp>
   140007599:	85 c0                	test   %eax,%eax
   14000759b:	7f db                	jg     140007578 <mbsrtowcs+0xd8>
   14000759d:	eb a5                	jmp    140007544 <mbsrtowcs+0xa4>
   14000759f:	90                   	nop
   1400075a0:	45 31 e4             	xor    %r12d,%r12d
   1400075a3:	eb 9f                	jmp    140007544 <mbsrtowcs+0xa4>
   1400075a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400075ac:	00 00 00 00 

00000001400075b0 <mbrlen>:
   1400075b0:	41 54                	push   %r12
   1400075b2:	57                   	push   %rdi
   1400075b3:	56                   	push   %rsi
   1400075b4:	53                   	push   %rbx
   1400075b5:	48 83 ec 48          	sub    $0x48,%rsp
   1400075b9:	31 c0                	xor    %eax,%eax
   1400075bb:	49 89 cc             	mov    %rcx,%r12
   1400075be:	48 89 d6             	mov    %rdx,%rsi
   1400075c1:	4c 89 c3             	mov    %r8,%rbx
   1400075c4:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   1400075c9:	e8 7a 03 00 00       	call   140007948 <___mb_cur_max_func>
   1400075ce:	89 c7                	mov    %eax,%edi
   1400075d0:	e8 7b 03 00 00       	call   140007950 <___lc_codepage_func>
   1400075d5:	48 85 db             	test   %rbx,%rbx
   1400075d8:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   1400075dc:	49 89 f0             	mov    %rsi,%r8
   1400075df:	48 8d 15 7a 55 00 00 	lea    0x557a(%rip),%rdx        # 14000cb60 <s_mbstate.57722>
   1400075e6:	89 44 24 20          	mov    %eax,0x20(%rsp)
   1400075ea:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   1400075ef:	48 0f 44 da          	cmove  %rdx,%rbx
   1400075f3:	4c 89 e2             	mov    %r12,%rdx
   1400075f6:	49 89 d9             	mov    %rbx,%r9
   1400075f9:	e8 b2 fc ff ff       	call   1400072b0 <__mbrtowc_cp>
   1400075fe:	48 98                	cltq   
   140007600:	48 83 c4 48          	add    $0x48,%rsp
   140007604:	5b                   	pop    %rbx
   140007605:	5e                   	pop    %rsi
   140007606:	5f                   	pop    %rdi
   140007607:	41 5c                	pop    %r12
   140007609:	c3                   	ret    
   14000760a:	90                   	nop
   14000760b:	90                   	nop
   14000760c:	90                   	nop
   14000760d:	90                   	nop
   14000760e:	90                   	nop
   14000760f:	90                   	nop

0000000140007610 <__wcrtomb_cp>:
   140007610:	48 83 ec 58          	sub    $0x58,%rsp
   140007614:	48 89 c8             	mov    %rcx,%rax
   140007617:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
   14000761c:	44 89 c1             	mov    %r8d,%ecx
   14000761f:	45 85 c0             	test   %r8d,%r8d
   140007622:	75 1c                	jne    140007640 <__wcrtomb_cp+0x30>
   140007624:	66 81 fa ff 00       	cmp    $0xff,%dx
   140007629:	77 59                	ja     140007684 <__wcrtomb_cp+0x74>
   14000762b:	88 10                	mov    %dl,(%rax)
   14000762d:	b8 01 00 00 00       	mov    $0x1,%eax
   140007632:	48 83 c4 58          	add    $0x58,%rsp
   140007636:	c3                   	ret    
   140007637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000763e:	00 00 
   140007640:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
   140007645:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
   14000764a:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
   14000764f:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140007655:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   14000765a:	31 d2                	xor    %edx,%edx
   14000765c:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
   140007663:	00 
   140007664:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000766b:	00 00 
   14000766d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007672:	ff 15 c4 5b 00 00    	call   *0x5bc4(%rip)        # 14000d23c <__imp_WideCharToMultiByte>
   140007678:	85 c0                	test   %eax,%eax
   14000767a:	74 08                	je     140007684 <__wcrtomb_cp+0x74>
   14000767c:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
   140007680:	85 d2                	test   %edx,%edx
   140007682:	74 ae                	je     140007632 <__wcrtomb_cp+0x22>
   140007684:	e8 e7 fb ff ff       	call   140007270 <_errno>
   140007689:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   14000768f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007694:	48 83 c4 58          	add    $0x58,%rsp
   140007698:	c3                   	ret    
   140007699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400076a0 <wcrtomb>:
   1400076a0:	41 54                	push   %r12
   1400076a2:	56                   	push   %rsi
   1400076a3:	53                   	push   %rbx
   1400076a4:	48 83 ec 30          	sub    $0x30,%rsp
   1400076a8:	48 85 c9             	test   %rcx,%rcx
   1400076ab:	49 89 cc             	mov    %rcx,%r12
   1400076ae:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
   1400076b3:	89 d3                	mov    %edx,%ebx
   1400076b5:	4c 0f 44 e0          	cmove  %rax,%r12
   1400076b9:	e8 8a 02 00 00       	call   140007948 <___mb_cur_max_func>
   1400076be:	89 c6                	mov    %eax,%esi
   1400076c0:	e8 8b 02 00 00       	call   140007950 <___lc_codepage_func>
   1400076c5:	0f b7 d3             	movzwl %bx,%edx
   1400076c8:	41 89 f1             	mov    %esi,%r9d
   1400076cb:	4c 89 e1             	mov    %r12,%rcx
   1400076ce:	41 89 c0             	mov    %eax,%r8d
   1400076d1:	e8 3a ff ff ff       	call   140007610 <__wcrtomb_cp>
   1400076d6:	48 98                	cltq   
   1400076d8:	48 83 c4 30          	add    $0x30,%rsp
   1400076dc:	5b                   	pop    %rbx
   1400076dd:	5e                   	pop    %rsi
   1400076de:	41 5c                	pop    %r12
   1400076e0:	c3                   	ret    
   1400076e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400076e8:	00 00 00 00 
   1400076ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400076f0 <wcsrtombs>:
   1400076f0:	41 56                	push   %r14
   1400076f2:	41 55                	push   %r13
   1400076f4:	41 54                	push   %r12
   1400076f6:	55                   	push   %rbp
   1400076f7:	57                   	push   %rdi
   1400076f8:	56                   	push   %rsi
   1400076f9:	53                   	push   %rbx
   1400076fa:	48 83 ec 30          	sub    $0x30,%rsp
   1400076fe:	45 31 f6             	xor    %r14d,%r14d
   140007701:	49 89 d4             	mov    %rdx,%r12
   140007704:	48 89 cb             	mov    %rcx,%rbx
   140007707:	4c 89 c5             	mov    %r8,%rbp
   14000770a:	e8 41 02 00 00       	call   140007950 <___lc_codepage_func>
   14000770f:	89 c7                	mov    %eax,%edi
   140007711:	e8 32 02 00 00       	call   140007948 <___mb_cur_max_func>
   140007716:	49 8b 34 24          	mov    (%r12),%rsi
   14000771a:	41 89 c5             	mov    %eax,%r13d
   14000771d:	48 85 f6             	test   %rsi,%rsi
   140007720:	74 4d                	je     14000776f <wcsrtombs+0x7f>
   140007722:	48 85 db             	test   %rbx,%rbx
   140007725:	74 61                	je     140007788 <wcsrtombs+0x98>
   140007727:	48 85 ed             	test   %rbp,%rbp
   14000772a:	75 27                	jne    140007753 <wcsrtombs+0x63>
   14000772c:	e9 8f 00 00 00       	jmp    1400077c0 <wcsrtombs+0xd0>
   140007731:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007738:	48 98                	cltq   
   14000773a:	48 01 c3             	add    %rax,%rbx
   14000773d:	49 01 c6             	add    %rax,%r14
   140007740:	80 7b ff 00          	cmpb   $0x0,-0x1(%rbx)
   140007744:	0f 84 86 00 00 00    	je     1400077d0 <wcsrtombs+0xe0>
   14000774a:	48 83 c6 02          	add    $0x2,%rsi
   14000774e:	4c 39 f5             	cmp    %r14,%rbp
   140007751:	76 6d                	jbe    1400077c0 <wcsrtombs+0xd0>
   140007753:	0f b7 16             	movzwl (%rsi),%edx
   140007756:	45 89 e9             	mov    %r13d,%r9d
   140007759:	41 89 f8             	mov    %edi,%r8d
   14000775c:	48 89 d9             	mov    %rbx,%rcx
   14000775f:	e8 ac fe ff ff       	call   140007610 <__wcrtomb_cp>
   140007764:	85 c0                	test   %eax,%eax
   140007766:	7f d0                	jg     140007738 <wcsrtombs+0x48>
   140007768:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
   14000776f:	4c 89 f0             	mov    %r14,%rax
   140007772:	48 83 c4 30          	add    $0x30,%rsp
   140007776:	5b                   	pop    %rbx
   140007777:	5e                   	pop    %rsi
   140007778:	5f                   	pop    %rdi
   140007779:	5d                   	pop    %rbp
   14000777a:	41 5c                	pop    %r12
   14000777c:	41 5d                	pop    %r13
   14000777e:	41 5e                	pop    %r14
   140007780:	c3                   	ret    
   140007781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007788:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
   14000778d:	eb 17                	jmp    1400077a6 <wcsrtombs+0xb6>
   14000778f:	90                   	nop
   140007790:	48 63 d0             	movslq %eax,%rdx
   140007793:	83 e8 01             	sub    $0x1,%eax
   140007796:	48 98                	cltq   
   140007798:	49 01 d6             	add    %rdx,%r14
   14000779b:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
   1400077a0:	74 3e                	je     1400077e0 <wcsrtombs+0xf0>
   1400077a2:	48 83 c6 02          	add    $0x2,%rsi
   1400077a6:	0f b7 16             	movzwl (%rsi),%edx
   1400077a9:	45 89 e9             	mov    %r13d,%r9d
   1400077ac:	41 89 f8             	mov    %edi,%r8d
   1400077af:	48 89 e9             	mov    %rbp,%rcx
   1400077b2:	e8 59 fe ff ff       	call   140007610 <__wcrtomb_cp>
   1400077b7:	85 c0                	test   %eax,%eax
   1400077b9:	7f d5                	jg     140007790 <wcsrtombs+0xa0>
   1400077bb:	eb ab                	jmp    140007768 <wcsrtombs+0x78>
   1400077bd:	0f 1f 00             	nopl   (%rax)
   1400077c0:	49 89 34 24          	mov    %rsi,(%r12)
   1400077c4:	eb a9                	jmp    14000776f <wcsrtombs+0x7f>
   1400077c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400077cd:	00 00 00 
   1400077d0:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
   1400077d7:	00 
   1400077d8:	49 83 ee 01          	sub    $0x1,%r14
   1400077dc:	eb 91                	jmp    14000776f <wcsrtombs+0x7f>
   1400077de:	66 90                	xchg   %ax,%ax
   1400077e0:	49 83 ee 01          	sub    $0x1,%r14
   1400077e4:	eb 89                	jmp    14000776f <wcsrtombs+0x7f>
   1400077e6:	90                   	nop
   1400077e7:	90                   	nop
   1400077e8:	90                   	nop
   1400077e9:	90                   	nop
   1400077ea:	90                   	nop
   1400077eb:	90                   	nop
   1400077ec:	90                   	nop
   1400077ed:	90                   	nop
   1400077ee:	90                   	nop
   1400077ef:	90                   	nop

00000001400077f0 <__acrt_iob_func>:
   1400077f0:	53                   	push   %rbx
   1400077f1:	48 83 ec 20          	sub    $0x20,%rsp
   1400077f5:	89 cb                	mov    %ecx,%ebx
   1400077f7:	e8 44 01 00 00       	call   140007940 <__iob_func>
   1400077fc:	89 d9                	mov    %ebx,%ecx
   1400077fe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140007802:	48 c1 e2 04          	shl    $0x4,%rdx
   140007806:	48 01 d0             	add    %rdx,%rax
   140007809:	48 83 c4 20          	add    $0x20,%rsp
   14000780d:	5b                   	pop    %rbx
   14000780e:	c3                   	ret    
   14000780f:	90                   	nop

0000000140007810 <_get_invalid_parameter_handler>:
   140007810:	48 8b 05 59 53 00 00 	mov    0x5359(%rip),%rax        # 14000cb70 <handler>
   140007817:	c3                   	ret    
   140007818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000781f:	00 

0000000140007820 <_set_invalid_parameter_handler>:
   140007820:	48 89 c8             	mov    %rcx,%rax
   140007823:	48 87 05 46 53 00 00 	xchg   %rax,0x5346(%rip)        # 14000cb70 <handler>
   14000782a:	c3                   	ret    
   14000782b:	90                   	nop
   14000782c:	90                   	nop
   14000782d:	90                   	nop
   14000782e:	90                   	nop
   14000782f:	90                   	nop

0000000140007830 <_lock_file>:
   140007830:	53                   	push   %rbx
   140007831:	48 83 ec 20          	sub    $0x20,%rsp
   140007835:	48 89 cb             	mov    %rcx,%rbx
   140007838:	31 c9                	xor    %ecx,%ecx
   14000783a:	e8 b1 ff ff ff       	call   1400077f0 <__acrt_iob_func>
   14000783f:	48 39 c3             	cmp    %rax,%rbx
   140007842:	72 0f                	jb     140007853 <_lock_file+0x23>
   140007844:	b9 13 00 00 00       	mov    $0x13,%ecx
   140007849:	e8 a2 ff ff ff       	call   1400077f0 <__acrt_iob_func>
   14000784e:	48 39 c3             	cmp    %rax,%rbx
   140007851:	76 15                	jbe    140007868 <_lock_file+0x38>
   140007853:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140007857:	48 83 c4 20          	add    $0x20,%rsp
   14000785b:	5b                   	pop    %rbx
   14000785c:	48 ff 25 79 59 00 00 	rex.W jmp *0x5979(%rip)        # 14000d1dc <__imp_EnterCriticalSection>
   140007863:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007868:	31 c9                	xor    %ecx,%ecx
   14000786a:	e8 81 ff ff ff       	call   1400077f0 <__acrt_iob_func>
   14000786f:	48 89 da             	mov    %rbx,%rdx
   140007872:	48 29 c2             	sub    %rax,%rdx
   140007875:	48 89 d0             	mov    %rdx,%rax
   140007878:	48 c1 f8 04          	sar    $0x4,%rax
   14000787c:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
   140007882:	8d 48 10             	lea    0x10(%rax),%ecx
   140007885:	e8 ae 00 00 00       	call   140007938 <_lock>
   14000788a:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
   140007891:	48 83 c4 20          	add    $0x20,%rsp
   140007895:	5b                   	pop    %rbx
   140007896:	c3                   	ret    
   140007897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000789e:	00 00 

00000001400078a0 <_unlock_file>:
   1400078a0:	53                   	push   %rbx
   1400078a1:	48 83 ec 20          	sub    $0x20,%rsp
   1400078a5:	48 89 cb             	mov    %rcx,%rbx
   1400078a8:	31 c9                	xor    %ecx,%ecx
   1400078aa:	e8 41 ff ff ff       	call   1400077f0 <__acrt_iob_func>
   1400078af:	48 39 c3             	cmp    %rax,%rbx
   1400078b2:	72 0f                	jb     1400078c3 <_unlock_file+0x23>
   1400078b4:	b9 13 00 00 00       	mov    $0x13,%ecx
   1400078b9:	e8 32 ff ff ff       	call   1400077f0 <__acrt_iob_func>
   1400078be:	48 39 c3             	cmp    %rax,%rbx
   1400078c1:	76 15                	jbe    1400078d8 <_unlock_file+0x38>
   1400078c3:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   1400078c7:	48 83 c4 20          	add    $0x20,%rsp
   1400078cb:	5b                   	pop    %rbx
   1400078cc:	48 ff 25 31 59 00 00 	rex.W jmp *0x5931(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   1400078d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400078d8:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
   1400078df:	31 c9                	xor    %ecx,%ecx
   1400078e1:	e8 0a ff ff ff       	call   1400077f0 <__acrt_iob_func>
   1400078e6:	48 29 c3             	sub    %rax,%rbx
   1400078e9:	48 c1 fb 04          	sar    $0x4,%rbx
   1400078ed:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
   1400078f3:	8d 4b 10             	lea    0x10(%rbx),%ecx
   1400078f6:	48 83 c4 20          	add    $0x20,%rsp
   1400078fa:	5b                   	pop    %rbx
   1400078fb:	e9 30 00 00 00       	jmp    140007930 <_unlock>

0000000140007900 <__p__acmdln>:
   140007900:	48 8b 05 f9 1d 00 00 	mov    0x1df9(%rip),%rax        # 140009700 <.refptr.__imp__acmdln>
   140007907:	48 8b 00             	mov    (%rax),%rax
   14000790a:	c3                   	ret    
   14000790b:	90                   	nop
   14000790c:	90                   	nop
   14000790d:	90                   	nop
   14000790e:	90                   	nop
   14000790f:	90                   	nop

0000000140007910 <__p__commode>:
   140007910:	48 8b 05 f9 1d 00 00 	mov    0x1df9(%rip),%rax        # 140009710 <.refptr.__imp__commode>
   140007917:	48 8b 00             	mov    (%rax),%rax
   14000791a:	c3                   	ret    
   14000791b:	90                   	nop
   14000791c:	90                   	nop
   14000791d:	90                   	nop
   14000791e:	90                   	nop
   14000791f:	90                   	nop

0000000140007920 <__p__fmode>:
   140007920:	48 8b 05 f9 1d 00 00 	mov    0x1df9(%rip),%rax        # 140009720 <.refptr.__imp__fmode>
   140007927:	48 8b 00             	mov    (%rax),%rax
   14000792a:	c3                   	ret    
   14000792b:	90                   	nop
   14000792c:	90                   	nop
   14000792d:	90                   	nop
   14000792e:	90                   	nop
   14000792f:	90                   	nop

0000000140007930 <_unlock>:
   140007930:	ff 25 a6 59 00 00    	jmp    *0x59a6(%rip)        # 14000d2dc <__imp__unlock>
   140007936:	90                   	nop
   140007937:	90                   	nop

0000000140007938 <_lock>:
   140007938:	ff 25 8e 59 00 00    	jmp    *0x598e(%rip)        # 14000d2cc <__imp__lock>
   14000793e:	90                   	nop
   14000793f:	90                   	nop

0000000140007940 <__iob_func>:
   140007940:	ff 25 2e 59 00 00    	jmp    *0x592e(%rip)        # 14000d274 <__imp___iob_func>
   140007946:	90                   	nop
   140007947:	90                   	nop

0000000140007948 <___mb_cur_max_func>:
   140007948:	ff 25 0e 59 00 00    	jmp    *0x590e(%rip)        # 14000d25c <__imp____mb_cur_max_func>
   14000794e:	90                   	nop
   14000794f:	90                   	nop

0000000140007950 <___lc_codepage_func>:
   140007950:	ff 25 fe 58 00 00    	jmp    *0x58fe(%rip)        # 14000d254 <__imp____lc_codepage_func>
   140007956:	90                   	nop
   140007957:	90                   	nop
   140007958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000795f:	00 

0000000140007960 <WideCharToMultiByte>:
   140007960:	ff 25 d6 58 00 00    	jmp    *0x58d6(%rip)        # 14000d23c <__imp_WideCharToMultiByte>
   140007966:	90                   	nop
   140007967:	90                   	nop

0000000140007968 <VirtualQuery>:
   140007968:	ff 25 c6 58 00 00    	jmp    *0x58c6(%rip)        # 14000d234 <__imp_VirtualQuery>
   14000796e:	90                   	nop
   14000796f:	90                   	nop

0000000140007970 <VirtualProtect>:
   140007970:	ff 25 b6 58 00 00    	jmp    *0x58b6(%rip)        # 14000d22c <__imp_VirtualProtect>
   140007976:	90                   	nop
   140007977:	90                   	nop

0000000140007978 <TlsGetValue>:
   140007978:	ff 25 a6 58 00 00    	jmp    *0x58a6(%rip)        # 14000d224 <__imp_TlsGetValue>
   14000797e:	90                   	nop
   14000797f:	90                   	nop

0000000140007980 <Sleep>:
   140007980:	ff 25 96 58 00 00    	jmp    *0x5896(%rip)        # 14000d21c <__imp_Sleep>
   140007986:	90                   	nop
   140007987:	90                   	nop

0000000140007988 <SetUnhandledExceptionFilter>:
   140007988:	ff 25 86 58 00 00    	jmp    *0x5886(%rip)        # 14000d214 <__imp_SetUnhandledExceptionFilter>
   14000798e:	90                   	nop
   14000798f:	90                   	nop

0000000140007990 <MultiByteToWideChar>:
   140007990:	ff 25 76 58 00 00    	jmp    *0x5876(%rip)        # 14000d20c <__imp_MultiByteToWideChar>
   140007996:	90                   	nop
   140007997:	90                   	nop

0000000140007998 <LeaveCriticalSection>:
   140007998:	ff 25 66 58 00 00    	jmp    *0x5866(%rip)        # 14000d204 <__imp_LeaveCriticalSection>
   14000799e:	90                   	nop
   14000799f:	90                   	nop

00000001400079a0 <IsDBCSLeadByteEx>:
   1400079a0:	ff 25 56 58 00 00    	jmp    *0x5856(%rip)        # 14000d1fc <__imp_IsDBCSLeadByteEx>
   1400079a6:	90                   	nop
   1400079a7:	90                   	nop

00000001400079a8 <InitializeCriticalSection>:
   1400079a8:	ff 25 46 58 00 00    	jmp    *0x5846(%rip)        # 14000d1f4 <__imp_InitializeCriticalSection>
   1400079ae:	90                   	nop
   1400079af:	90                   	nop

00000001400079b0 <GetStartupInfoA>:
   1400079b0:	ff 25 36 58 00 00    	jmp    *0x5836(%rip)        # 14000d1ec <__imp_GetStartupInfoA>
   1400079b6:	90                   	nop
   1400079b7:	90                   	nop

00000001400079b8 <GetLastError>:
   1400079b8:	ff 25 26 58 00 00    	jmp    *0x5826(%rip)        # 14000d1e4 <__imp_GetLastError>
   1400079be:	90                   	nop
   1400079bf:	90                   	nop

00000001400079c0 <EnterCriticalSection>:
   1400079c0:	ff 25 16 58 00 00    	jmp    *0x5816(%rip)        # 14000d1dc <__imp_EnterCriticalSection>
   1400079c6:	90                   	nop
   1400079c7:	90                   	nop

00000001400079c8 <DeleteCriticalSection>:
   1400079c8:	ff 25 06 58 00 00    	jmp    *0x5806(%rip)        # 14000d1d4 <__IAT_start__>
   1400079ce:	90                   	nop
   1400079cf:	90                   	nop

00000001400079d0 <main>:
   1400079d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400079d4:	e8 77 9c ff ff       	call   140001650 <__main>
   1400079d9:	48 8d 0d 20 16 00 00 	lea    0x1620(%rip),%rcx        # 140009000 <.rdata>
   1400079e0:	e8 6b 9b ff ff       	call   140001550 <printf.constprop.0>
   1400079e5:	31 c0                	xor    %eax,%eax
   1400079e7:	48 83 c4 28          	add    $0x28,%rsp
   1400079eb:	c3                   	ret    
   1400079ec:	90                   	nop
   1400079ed:	90                   	nop
   1400079ee:	90                   	nop
   1400079ef:	90                   	nop

00000001400079f0 <register_frame_ctor>:
   1400079f0:	e9 3b 9b ff ff       	jmp    140001530 <__gcc_register_frame>
   1400079f5:	90                   	nop
   1400079f6:	90                   	nop
   1400079f7:	90                   	nop
   1400079f8:	90                   	nop
   1400079f9:	90                   	nop
   1400079fa:	90                   	nop
   1400079fb:	90                   	nop
   1400079fc:	90                   	nop
   1400079fd:	90                   	nop
   1400079fe:	90                   	nop
   1400079ff:	90                   	nop

0000000140007a00 <__CTOR_LIST__>:
   140007a00:	ff                   	(bad)  
   140007a01:	ff                   	(bad)  
   140007a02:	ff                   	(bad)  
   140007a03:	ff                   	(bad)  
   140007a04:	ff                   	(bad)  
   140007a05:	ff                   	(bad)  
   140007a06:	ff                   	(bad)  
   140007a07:	ff                 	push   %rax

0000000140007a08 <.ctors.65535>:
   140007a08:	f0 79 00             	lock jns 140007a0b <.ctors.65535+0x3>
   140007a0b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007a18 <__DTOR_LIST__>:
   140007a18:	ff                   	(bad)  
   140007a19:	ff                   	(bad)  
   140007a1a:	ff                   	(bad)  
   140007a1b:	ff                   	(bad)  
   140007a1c:	ff                   	(bad)  
   140007a1d:	ff                   	(bad)  
   140007a1e:	ff                   	(bad)  
   140007a1f:	ff 00                	incl   (%rax)
   140007a21:	00 00                	add    %al,(%rax)
   140007a23:	00 00                	add    %al,(%rax)
   140007a25:	00 00                	add    %al,(%rax)
	...
