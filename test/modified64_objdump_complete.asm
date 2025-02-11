
test/modified64.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 85 34 00 00 	mov    0x3485(%rip),%rax        # 1400044a0 <.refptr.mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 86 34 00 00 	mov    0x3486(%rip),%rax        # 1400044b0 <.refptr.mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 89 34 00 00 	mov    0x3489(%rip),%rax        # 1400044c0 <.refptr.mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 4c 34 00 00 	mov    0x344c(%rip),%rax        # 140004490 <.refptr.mingw_initcharmax>
   140001044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000104a:	48 8b 05 0f 33 00 00 	mov    0x330f(%rip),%rax        # 140004360 <.refptr.__image_base__>
   140001051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001056:	75 0f                	jne    140001067 <pre_c_init+0x57>
   140001058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000105c:	48 01 d0             	add    %rdx,%rax
   14000105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001065:	74 69                	je     1400010d0 <pre_c_init+0xc0>
   140001067:	48 8b 05 12 34 00 00 	mov    0x3412(%rip),%rax        # 140004480 <.refptr.mingw_app_type>
   14000106e:	89 0d 98 5f 00 00    	mov    %ecx,0x5f98(%rip)        # 14000700c <managedapp>
   140001074:	8b 00                	mov    (%rax),%eax
   140001076:	85 c0                	test   %eax,%eax
   140001078:	75 46                	jne    1400010c0 <pre_c_init+0xb0>
   14000107a:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000107f:	e8 3c 16 00 00       	call   1400026c0 <__set_app_type>
   140001084:	e8 b7 16 00 00       	call   140002740 <__p__fmode>
   140001089:	48 8b 15 b0 33 00 00 	mov    0x33b0(%rip),%rdx        # 140004440 <.refptr._fmode>
   140001090:	8b 12                	mov    (%rdx),%edx
   140001092:	89 10                	mov    %edx,(%rax)
   140001094:	e8 97 16 00 00       	call   140002730 <__p__commode>
   140001099:	48 8b 15 80 33 00 00 	mov    0x3380(%rip),%rdx        # 140004420 <.refptr._commode>
   1400010a0:	8b 12                	mov    (%rdx),%edx
   1400010a2:	89 10                	mov    %edx,(%rax)
   1400010a4:	e8 87 05 00 00       	call   140001630 <_setargv>
   1400010a9:	48 8b 05 60 32 00 00 	mov    0x3260(%rip),%rax        # 140004310 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010b0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010b3:	74 53                	je     140001108 <pre_c_init+0xf8>
   1400010b5:	31 c0                	xor    %eax,%eax
   1400010b7:	48 83 c4 28          	add    $0x28,%rsp
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400010c5:	e8 f6 15 00 00       	call   1400026c0 <__set_app_type>
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
   140001108:	48 8d 0d 01 06 00 00 	lea    0x601(%rip),%rcx        # 140001710 <_matherr>
   14000110f:	e8 dc 0c 00 00       	call   140001df0 <__mingw_setusermatherr>
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
   140001144:	48 8b 05 25 33 00 00 	mov    0x3325(%rip),%rax        # 140004470 <.refptr._newmode>
   14000114b:	4c 8d 05 c6 5e 00 00 	lea    0x5ec6(%rip),%r8        # 140007018 <envp>
   140001152:	48 8d 15 c7 5e 00 00 	lea    0x5ec7(%rip),%rdx        # 140007020 <argv>
   140001159:	48 8d 0d c8 5e 00 00 	lea    0x5ec8(%rip),%rcx        # 140007028 <argc>
   140001160:	8b 00                	mov    (%rax),%eax
   140001162:	89 05 9c 5e 00 00    	mov    %eax,0x5e9c(%rip)        # 140007004 <startinfo>
   140001168:	48 8d 05 95 5e 00 00 	lea    0x5e95(%rip),%rax        # 140007004 <startinfo>
   14000116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001174:	48 8b 05 b5 32 00 00 	mov    0x32b5(%rip),%rax        # 140004430 <.refptr._dowildcard>
   14000117b:	44 8b 08             	mov    (%rax),%r9d
   14000117e:	e8 4d 15 00 00       	call   1400026d0 <__getmainargs>
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
   1400011b1:	48 8b 3d c8 32 00 00 	mov    0x32c8(%rip),%rdi        # 140004480 <.refptr.mingw_app_type>
   1400011b8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011bb:	45 85 c9             	test   %r9d,%r9d
   1400011be:	0f 85 ac 02 00 00    	jne    140001470 <__tmainCRTStartup+0x2e0>
   1400011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011cb:	00 00 
   1400011cd:	48 8b 1d ec 31 00 00 	mov    0x31ec(%rip),%rbx        # 1400043c0 <.refptr.__native_startup_lock>
   1400011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011d8:	31 ed                	xor    %ebp,%ebp
   1400011da:	4c 8b 25 d3 6f 00 00 	mov    0x6fd3(%rip),%r12        # 1400081b4 <__imp_Sleep>
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
   140001206:	48 8b 35 c3 31 00 00 	mov    0x31c3(%rip),%rsi        # 1400043d0 <.refptr.__native_startup_state>
   14000120d:	31 ed                	xor    %ebp,%ebp
   14000120f:	8b 06                	mov    (%rsi),%eax
   140001211:	83 f8 01             	cmp    $0x1,%eax
   140001214:	0f 84 0d 02 00 00    	je     140001427 <__tmainCRTStartup+0x297>
   14000121a:	8b 06                	mov    (%rsi),%eax
   14000121c:	85 c0                	test   %eax,%eax
   14000121e:	0f 84 7c 02 00 00    	je     1400014a0 <__tmainCRTStartup+0x310>
   140001224:	c7 05 da 5d 00 00 01 	movl   $0x1,0x5dda(%rip)        # 140007008 <has_cctor>
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    (%rsi),%eax
   140001230:	83 f8 01             	cmp    $0x1,%eax
   140001233:	0f 84 03 02 00 00    	je     14000143c <__tmainCRTStartup+0x2ac>
   140001239:	85 ed                	test   %ebp,%ebp
   14000123b:	0f 84 1c 02 00 00    	je     14000145d <__tmainCRTStartup+0x2cd>
   140001241:	48 8b 05 08 31 00 00 	mov    0x3108(%rip),%rax        # 140004350 <.refptr.__dyn_tls_init_callback>
   140001248:	48 8b 00             	mov    (%rax),%rax
   14000124b:	48 85 c0             	test   %rax,%rax
   14000124e:	74 0c                	je     14000125c <__tmainCRTStartup+0xcc>
   140001250:	45 31 c0             	xor    %r8d,%r8d
   140001253:	ba 02 00 00 00       	mov    $0x2,%edx
   140001258:	31 c9                	xor    %ecx,%ecx
   14000125a:	ff d0                	call   *%rax
   14000125c:	e8 4f 08 00 00       	call   140001ab0 <_pei386_runtime_relocator>
   140001261:	48 8d 0d 98 0b 00 00 	lea    0xb98(%rip),%rcx        # 140001e00 <_gnu_exception_handler>
   140001268:	ff 15 3e 6f 00 00    	call   *0x6f3e(%rip)        # 1400081ac <__imp_SetUnhandledExceptionFilter>
   14000126e:	48 8b 15 3b 31 00 00 	mov    0x313b(%rip),%rdx        # 1400043b0 <.refptr.__mingw_oldexcpt_handler>
   140001275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000127c:	48 89 02             	mov    %rax,(%rdx)
   14000127f:	e8 8c 14 00 00       	call   140002710 <_set_invalid_parameter_handler>
   140001284:	e8 87 05 00 00       	call   140001810 <_fpreset>
   140001289:	48 8b 05 d0 30 00 00 	mov    0x30d0(%rip),%rax        # 140004360 <.refptr.__image_base__>
   140001290:	48 89 05 f1 5e 00 00 	mov    %rax,0x5ef1(%rip)        # 140007188 <__mingw_winmain_hInstance>
   140001297:	e8 84 14 00 00       	call   140002720 <__p__acmdln>
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
   1400012f9:	48 89 05 80 5e 00 00 	mov    %rax,0x5e80(%rip)        # 140007180 <__mingw_winmain_lpCmdLine>
   140001300:	44 8b 07             	mov    (%rdi),%r8d
   140001303:	45 85 c0             	test   %r8d,%r8d
   140001306:	74 16                	je     14000131e <__tmainCRTStartup+0x18e>
   140001308:	b8 0a 00 00 00       	mov    $0xa,%eax
   14000130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001312:	0f 85 e8 00 00 00    	jne    140001400 <__tmainCRTStartup+0x270>
   140001318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 140003000 <__data_start__>
   14000131e:	8b 1d 04 5d 00 00    	mov    0x5d04(%rip),%ebx        # 140007028 <argc>
   140001324:	44 8d 63 01          	lea    0x1(%rbx),%r12d
   140001328:	4d 63 e4             	movslq %r12d,%r12
   14000132b:	49 c1 e4 03          	shl    $0x3,%r12
   14000132f:	4c 89 e1             	mov    %r12,%rcx
   140001332:	e8 21 13 00 00       	call   140002658 <malloc>
   140001337:	4c 8b 2d e2 5c 00 00 	mov    0x5ce2(%rip),%r13        # 140007020 <argv>
   14000133e:	48 89 c7             	mov    %rax,%rdi
   140001341:	85 db                	test   %ebx,%ebx
   140001343:	7e 46                	jle    14000138b <__tmainCRTStartup+0x1fb>
   140001345:	8d 6b ff             	lea    -0x1(%rbx),%ebp
   140001348:	31 db                	xor    %ebx,%ebx
   14000134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001355:	e8 e6 12 00 00       	call   140002640 <strlen>
   14000135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000135e:	48 89 f1             	mov    %rsi,%rcx
   140001361:	e8 f2 12 00 00       	call   140002658 <malloc>
   140001366:	49 89 f0             	mov    %rsi,%r8
   140001369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001372:	48 89 c1             	mov    %rax,%rcx
   140001375:	e8 d6 12 00 00       	call   140002650 <memcpy>
   14000137a:	48 89 d8             	mov    %rbx,%rax
   14000137d:	48 83 c3 01          	add    $0x1,%rbx
   140001381:	48 39 c5             	cmp    %rax,%rbp
   140001384:	75 ca                	jne    140001350 <__tmainCRTStartup+0x1c0>
   140001386:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   14000138b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140001392:	48 89 3d 87 5c 00 00 	mov    %rdi,0x5c87(%rip)        # 140007020 <argv>
   140001399:	e8 62 02 00 00       	call   140001600 <__main>
   14000139e:	48 8b 05 cb 2f 00 00 	mov    0x2fcb(%rip),%rax        # 140004370 <.refptr.__imp___initenv>
   1400013a5:	4c 8b 05 6c 5c 00 00 	mov    0x5c6c(%rip),%r8        # 140007018 <envp>
   1400013ac:	8b 0d 76 5c 00 00    	mov    0x5c76(%rip),%ecx        # 140007028 <argc>
   1400013b2:	48 8b 00             	mov    (%rax),%rax
   1400013b5:	4c 89 00             	mov    %r8,(%rax)
   1400013b8:	48 8b 15 61 5c 00 00 	mov    0x5c61(%rip),%rdx        # 140007020 <argv>
   1400013bf:	e8 fc 13 00 00       	call   1400027c0 <main>
   1400013c4:	8b 0d 42 5c 00 00    	mov    0x5c42(%rip),%ecx        # 14000700c <managedapp>
   1400013ca:	89 05 40 5c 00 00    	mov    %eax,0x5c40(%rip)        # 140007010 <mainret>
   1400013d0:	85 c9                	test   %ecx,%ecx
   1400013d2:	0f 84 e6 00 00 00    	je     1400014be <__tmainCRTStartup+0x32e>
   1400013d8:	8b 15 2a 5c 00 00    	mov    0x5c2a(%rip),%edx        # 140007008 <has_cctor>
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
   140001410:	48 8b 35 b9 2f 00 00 	mov    0x2fb9(%rip),%rsi        # 1400043d0 <.refptr.__native_startup_state>
   140001417:	bd 01 00 00 00       	mov    $0x1,%ebp
   14000141c:	8b 06                	mov    (%rsi),%eax
   14000141e:	83 f8 01             	cmp    $0x1,%eax
   140001421:	0f 85 f3 fd ff ff    	jne    14000121a <__tmainCRTStartup+0x8a>
   140001427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000142c:	e8 7f 12 00 00       	call   1400026b0 <_amsg_exit>
   140001431:	8b 06                	mov    (%rsi),%eax
   140001433:	83 f8 01             	cmp    $0x1,%eax
   140001436:	0f 85 fd fd ff ff    	jne    140001239 <__tmainCRTStartup+0xa9>
   14000143c:	48 8b 15 ad 2f 00 00 	mov    0x2fad(%rip),%rdx        # 1400043f0 <.refptr.__xc_z>
   140001443:	48 8b 0d 96 2f 00 00 	mov    0x2f96(%rip),%rcx        # 1400043e0 <.refptr.__xc_a>
   14000144a:	e8 51 12 00 00       	call   1400026a0 <_initterm>
   14000144f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001455:	85 ed                	test   %ebp,%ebp
   140001457:	0f 85 e4 fd ff ff    	jne    140001241 <__tmainCRTStartup+0xb1>
   14000145d:	31 c0                	xor    %eax,%eax
   14000145f:	48 87 03             	xchg   %rax,(%rbx)
   140001462:	e9 da fd ff ff       	jmp    140001241 <__tmainCRTStartup+0xb1>
   140001467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000146e:	00 00 
   140001470:	4c 89 c1             	mov    %r8,%rcx
   140001473:	ff 15 1b 6d 00 00    	call   *0x6d1b(%rip)        # 140008194 <__imp_GetStartupInfoA>
   140001479:	e9 46 fd ff ff       	jmp    1400011c4 <__tmainCRTStartup+0x34>
   14000147e:	66 90                	xchg   %ax,%ax
   140001480:	e8 23 12 00 00       	call   1400026a8 <_cexit>
   140001485:	8b 05 85 5b 00 00    	mov    0x5b85(%rip),%eax        # 140007010 <mainret>
   14000148b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001492:	5b                   	pop    %rbx
   140001493:	5e                   	pop    %rsi
   140001494:	5f                   	pop    %rdi
   140001495:	5d                   	pop    %rbp
   140001496:	41 5c                	pop    %r12
   140001498:	41 5d                	pop    %r13
   14000149a:	c3                   	ret    
   14000149b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014a0:	48 8b 15 69 2f 00 00 	mov    0x2f69(%rip),%rdx        # 140004410 <.refptr.__xi_z>
   1400014a7:	48 8b 0d 52 2f 00 00 	mov    0x2f52(%rip),%rcx        # 140004400 <.refptr.__xi_a>
   1400014ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400014b4:	e8 e7 11 00 00       	call   1400026a0 <_initterm>
   1400014b9:	e9 70 fd ff ff       	jmp    14000122e <__tmainCRTStartup+0x9e>
   1400014be:	89 c1                	mov    %eax,%ecx
   1400014c0:	e8 bb 11 00 00       	call   140002680 <exit>
   1400014c5:	90                   	nop
   1400014c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014cd:	00 00 00 

00000001400014d0 <WinMainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_startw>:
   1400014d4:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 140004480 <.refptr.mingw_app_type>
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
   1400014f4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 140004480 <.refptr.mingw_app_type>
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
   140001514:	e8 7f 11 00 00       	call   140002698 <_onexit>
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

0000000140001550 <__do_global_dtors>:
   140001550:	48 83 ec 28          	sub    $0x28,%rsp
   140001554:	48 8b 05 b5 1a 00 00 	mov    0x1ab5(%rip),%rax        # 140003010 <p.92992>
   14000155b:	48 8b 00             	mov    (%rax),%rax
   14000155e:	48 85 c0             	test   %rax,%rax
   140001561:	74 22                	je     140001585 <__do_global_dtors+0x35>
   140001563:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001568:	ff d0                	call   *%rax
   14000156a:	48 8b 05 9f 1a 00 00 	mov    0x1a9f(%rip),%rax        # 140003010 <p.92992>
   140001571:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001575:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001579:	48 89 15 90 1a 00 00 	mov    %rdx,0x1a90(%rip)        # 140003010 <p.92992>
   140001580:	48 85 c0             	test   %rax,%rax
   140001583:	75 e3                	jne    140001568 <__do_global_dtors+0x18>
   140001585:	48 83 c4 28          	add    $0x28,%rsp
   140001589:	c3                   	ret    
   14000158a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001590 <__do_global_ctors>:
   140001590:	56                   	push   %rsi
   140001591:	53                   	push   %rbx
   140001592:	48 83 ec 28          	sub    $0x28,%rsp
   140001596:	48 8b 15 83 2d 00 00 	mov    0x2d83(%rip),%rdx        # 140004320 <.refptr.__CTOR_LIST__>
   14000159d:	48 8b 02             	mov    (%rdx),%rax
   1400015a0:	89 c1                	mov    %eax,%ecx
   1400015a2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015a5:	74 39                	je     1400015e0 <__do_global_ctors+0x50>
   1400015a7:	85 c9                	test   %ecx,%ecx
   1400015a9:	74 20                	je     1400015cb <__do_global_ctors+0x3b>
   1400015ab:	89 c8                	mov    %ecx,%eax
   1400015ad:	83 e9 01             	sub    $0x1,%ecx
   1400015b0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015b4:	48 29 c8             	sub    %rcx,%rax
   1400015b7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400015c0:	ff 13                	call   *(%rbx)
   1400015c2:	48 83 eb 08          	sub    $0x8,%rbx
   1400015c6:	48 39 f3             	cmp    %rsi,%rbx
   1400015c9:	75 f5                	jne    1400015c0 <__do_global_ctors+0x30>
   1400015cb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001550 <__do_global_dtors>
   1400015d2:	48 83 c4 28          	add    $0x28,%rsp
   1400015d6:	5b                   	pop    %rbx
   1400015d7:	5e                   	pop    %rsi
   1400015d8:	e9 33 ff ff ff       	jmp    140001510 <atexit>
   1400015dd:	0f 1f 00             	nopl   (%rax)
   1400015e0:	31 c0                	xor    %eax,%eax
   1400015e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400015e8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400015ec:	89 c1                	mov    %eax,%ecx
   1400015ee:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400015f3:	4c 89 c0             	mov    %r8,%rax
   1400015f6:	75 f0                	jne    1400015e8 <__do_global_ctors+0x58>
   1400015f8:	eb ad                	jmp    1400015a7 <__do_global_ctors+0x17>
   1400015fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001600 <__main>:
   140001600:	8b 05 2a 5a 00 00    	mov    0x5a2a(%rip),%eax        # 140007030 <initialized>
   140001606:	85 c0                	test   %eax,%eax
   140001608:	74 06                	je     140001610 <__main+0x10>
   14000160a:	c3                   	ret    
   14000160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001610:	c7 05 16 5a 00 00 01 	movl   $0x1,0x5a16(%rip)        # 140007030 <initialized>
   140001617:	00 00 00 
   14000161a:	e9 71 ff ff ff       	jmp    140001590 <__do_global_ctors>
   14000161f:	90                   	nop

0000000140001620 <my_lconv_init>:
   140001620:	48 ff 25 d5 6b 00 00 	rex.W jmp *0x6bd5(%rip)        # 1400081fc <__imp___lconv_init>
   140001627:	90                   	nop
   140001628:	90                   	nop
   140001629:	90                   	nop
   14000162a:	90                   	nop
   14000162b:	90                   	nop
   14000162c:	90                   	nop
   14000162d:	90                   	nop
   14000162e:	90                   	nop
   14000162f:	90                   	nop

0000000140001630 <_setargv>:
   140001630:	31 c0                	xor    %eax,%eax
   140001632:	c3                   	ret    
   140001633:	90                   	nop
   140001634:	90                   	nop
   140001635:	90                   	nop
   140001636:	90                   	nop
   140001637:	90                   	nop
   140001638:	90                   	nop
   140001639:	90                   	nop
   14000163a:	90                   	nop
   14000163b:	90                   	nop
   14000163c:	90                   	nop
   14000163d:	90                   	nop
   14000163e:	90                   	nop
   14000163f:	90                   	nop

0000000140001640 <__dyn_tls_dtor>:
   140001640:	48 83 ec 28          	sub    $0x28,%rsp
   140001644:	83 fa 03             	cmp    $0x3,%edx
   140001647:	74 17                	je     140001660 <__dyn_tls_dtor+0x20>
   140001649:	85 d2                	test   %edx,%edx
   14000164b:	74 13                	je     140001660 <__dyn_tls_dtor+0x20>
   14000164d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001652:	48 83 c4 28          	add    $0x28,%rsp
   140001656:	c3                   	ret    
   140001657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000165e:	00 00 
   140001660:	e8 cb 0a 00 00       	call   140002130 <__mingw_TLScallback>
   140001665:	b8 01 00 00 00       	mov    $0x1,%eax
   14000166a:	48 83 c4 28          	add    $0x28,%rsp
   14000166e:	c3                   	ret    
   14000166f:	90                   	nop

0000000140001670 <__dyn_tls_init>:
   140001670:	56                   	push   %rsi
   140001671:	53                   	push   %rbx
   140001672:	48 83 ec 28          	sub    $0x28,%rsp
   140001676:	48 8b 05 83 2c 00 00 	mov    0x2c83(%rip),%rax        # 140004300 <.refptr._CRT_MT>
   14000167d:	83 38 02             	cmpl   $0x2,(%rax)
   140001680:	74 06                	je     140001688 <__dyn_tls_init+0x18>
   140001682:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001688:	83 fa 02             	cmp    $0x2,%edx
   14000168b:	74 13                	je     1400016a0 <__dyn_tls_init+0x30>
   14000168d:	83 fa 01             	cmp    $0x1,%edx
   140001690:	74 4e                	je     1400016e0 <__dyn_tls_init+0x70>
   140001692:	b8 01 00 00 00       	mov    $0x1,%eax
   140001697:	48 83 c4 28          	add    $0x28,%rsp
   14000169b:	5b                   	pop    %rbx
   14000169c:	5e                   	pop    %rsi
   14000169d:	c3                   	ret    
   14000169e:	66 90                	xchg   %ax,%ax
   1400016a0:	48 8d 1d b9 79 00 00 	lea    0x79b9(%rip),%rbx        # 140009060 <__xd_z>
   1400016a7:	48 8d 35 b2 79 00 00 	lea    0x79b2(%rip),%rsi        # 140009060 <__xd_z>
   1400016ae:	48 39 de             	cmp    %rbx,%rsi
   1400016b1:	74 df                	je     140001692 <__dyn_tls_init+0x22>
   1400016b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016b8:	48 8b 03             	mov    (%rbx),%rax
   1400016bb:	48 85 c0             	test   %rax,%rax
   1400016be:	74 02                	je     1400016c2 <__dyn_tls_init+0x52>
   1400016c0:	ff d0                	call   *%rax
   1400016c2:	48 83 c3 08          	add    $0x8,%rbx
   1400016c6:	48 39 de             	cmp    %rbx,%rsi
   1400016c9:	75 ed                	jne    1400016b8 <__dyn_tls_init+0x48>
   1400016cb:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016d0:	48 83 c4 28          	add    $0x28,%rsp
   1400016d4:	5b                   	pop    %rbx
   1400016d5:	5e                   	pop    %rsi
   1400016d6:	c3                   	ret    
   1400016d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400016de:	00 00 
   1400016e0:	e8 4b 0a 00 00       	call   140002130 <__mingw_TLScallback>
   1400016e5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016ea:	48 83 c4 28          	add    $0x28,%rsp
   1400016ee:	5b                   	pop    %rbx
   1400016ef:	5e                   	pop    %rsi
   1400016f0:	c3                   	ret    
   1400016f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400016f8:	00 00 00 00 
   1400016fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001700 <__tlregdtor>:
   140001700:	31 c0                	xor    %eax,%eax
   140001702:	c3                   	ret    
   140001703:	90                   	nop
   140001704:	90                   	nop
   140001705:	90                   	nop
   140001706:	90                   	nop
   140001707:	90                   	nop
   140001708:	90                   	nop
   140001709:	90                   	nop
   14000170a:	90                   	nop
   14000170b:	90                   	nop
   14000170c:	90                   	nop
   14000170d:	90                   	nop
   14000170e:	90                   	nop
   14000170f:	90                   	nop

0000000140001710 <_matherr>:
   140001710:	56                   	push   %rsi
   140001711:	53                   	push   %rbx
   140001712:	48 83 ec 78          	sub    $0x78,%rsp
   140001716:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000171b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001720:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001726:	83 39 06             	cmpl   $0x6,(%rcx)
   140001729:	0f 87 cd 00 00 00    	ja     1400017fc <_matherr+0xec>
   14000172f:	8b 01                	mov    (%rcx),%eax
   140001731:	48 8d 15 6c 2a 00 00 	lea    0x2a6c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001738:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000173c:	48 01 d0             	add    %rdx,%rax
   14000173f:	ff e0                	jmp    *%rax
   140001741:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001748:	48 8d 1d 07 2a 00 00 	lea    0x2a07(%rip),%rbx        # 140004156 <.rdata+0xd6>
   14000174f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001755:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000175a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000175f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001763:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001768:	e8 73 0f 00 00       	call   1400026e0 <__acrt_iob_func>
   14000176d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001774:	49 89 d8             	mov    %rbx,%r8
   140001777:	48 8d 15 fa 29 00 00 	lea    0x29fa(%rip),%rdx        # 140004178 <.rdata+0xf8>
   14000177e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001784:	48 89 c1             	mov    %rax,%rcx
   140001787:	49 89 f1             	mov    %rsi,%r9
   14000178a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001790:	e8 e3 0e 00 00       	call   140002678 <fprintf>
   140001795:	90                   	nop
   140001796:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000179b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017a0:	31 c0                	xor    %eax,%eax
   1400017a2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017a8:	48 83 c4 78          	add    $0x78,%rsp
   1400017ac:	5b                   	pop    %rbx
   1400017ad:	5e                   	pop    %rsi
   1400017ae:	c3                   	ret    
   1400017af:	90                   	nop
   1400017b0:	48 8d 1d d9 28 00 00 	lea    0x28d9(%rip),%rbx        # 140004090 <.rdata+0x10>
   1400017b7:	eb 96                	jmp    14000174f <_matherr+0x3f>
   1400017b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017c0:	48 8d 1d 09 29 00 00 	lea    0x2909(%rip),%rbx        # 1400040d0 <.rdata+0x50>
   1400017c7:	eb 86                	jmp    14000174f <_matherr+0x3f>
   1400017c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017d0:	48 8d 1d d9 28 00 00 	lea    0x28d9(%rip),%rbx        # 1400040b0 <.rdata+0x30>
   1400017d7:	e9 73 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   1400017dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017e0:	48 8d 1d 39 29 00 00 	lea    0x2939(%rip),%rbx        # 140004120 <.rdata+0xa0>
   1400017e7:	e9 63 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   1400017ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017f0:	48 8d 1d 01 29 00 00 	lea    0x2901(%rip),%rbx        # 1400040f8 <.rdata+0x78>
   1400017f7:	e9 53 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   1400017fc:	48 8d 1d 7d 28 00 00 	lea    0x287d(%rip),%rbx        # 140004080 <.rdata>
   140001803:	e9 47 ff ff ff       	jmp    14000174f <_matherr+0x3f>
   140001808:	90                   	nop
   140001809:	90                   	nop
   14000180a:	90                   	nop
   14000180b:	90                   	nop
   14000180c:	90                   	nop
   14000180d:	90                   	nop
   14000180e:	90                   	nop
   14000180f:	90                   	nop

0000000140001810 <_fpreset>:
   140001810:	db e3                	fninit 
   140001812:	c3                   	ret    
   140001813:	90                   	nop
   140001814:	90                   	nop
   140001815:	90                   	nop
   140001816:	90                   	nop
   140001817:	90                   	nop
   140001818:	90                   	nop
   140001819:	90                   	nop
   14000181a:	90                   	nop
   14000181b:	90                   	nop
   14000181c:	90                   	nop
   14000181d:	90                   	nop
   14000181e:	90                   	nop
   14000181f:	90                   	nop

0000000140001820 <__report_error>:
   140001820:	41 54                	push   %r12
   140001822:	53                   	push   %rbx
   140001823:	48 83 ec 38          	sub    $0x38,%rsp
   140001827:	49 89 cc             	mov    %rcx,%r12
   14000182a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000182f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001834:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001839:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000183e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001843:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001848:	e8 93 0e 00 00       	call   1400026e0 <__acrt_iob_func>
   14000184d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001853:	ba 01 00 00 00       	mov    $0x1,%edx
   140001858:	48 8d 0d 61 29 00 00 	lea    0x2961(%rip),%rcx        # 1400041c0 <.rdata>
   14000185f:	49 89 c1             	mov    %rax,%r9
   140001862:	e8 f9 0d 00 00       	call   140002660 <fwrite>
   140001867:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000186c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001871:	e8 6a 0e 00 00       	call   1400026e0 <__acrt_iob_func>
   140001876:	4c 89 e2             	mov    %r12,%rdx
   140001879:	48 89 c1             	mov    %rax,%rcx
   14000187c:	49 89 d8             	mov    %rbx,%r8
   14000187f:	e8 ac 0d 00 00       	call   140002630 <vfprintf>
   140001884:	e8 07 0e 00 00       	call   140002690 <abort>
   140001889:	90                   	nop
   14000188a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001890 <__write_memory.part.0>:
   140001890:	41 54                	push   %r12
   140001892:	55                   	push   %rbp
   140001893:	57                   	push   %rdi
   140001894:	56                   	push   %rsi
   140001895:	53                   	push   %rbx
   140001896:	48 83 ec 50          	sub    $0x50,%rsp
   14000189a:	48 63 3d 03 58 00 00 	movslq 0x5803(%rip),%rdi        # 1400070a4 <maxSections>
   1400018a1:	49 89 cc             	mov    %rcx,%r12
   1400018a4:	48 89 d6             	mov    %rdx,%rsi
   1400018a7:	4c 89 c3             	mov    %r8,%rbx
   1400018aa:	85 ff                	test   %edi,%edi
   1400018ac:	0f 8e 8e 01 00 00    	jle    140001a40 <__write_memory.part.0+0x1b0>
   1400018b2:	48 8b 05 ef 57 00 00 	mov    0x57ef(%rip),%rax        # 1400070a8 <the_secs>
   1400018b9:	31 c9                	xor    %ecx,%ecx
   1400018bb:	48 83 c0 18          	add    $0x18,%rax
   1400018bf:	90                   	nop
   1400018c0:	48 8b 10             	mov    (%rax),%rdx
   1400018c3:	49 39 d4             	cmp    %rdx,%r12
   1400018c6:	72 14                	jb     1400018dc <__write_memory.part.0+0x4c>
   1400018c8:	4c 8b 40 08          	mov    0x8(%rax),%r8
   1400018cc:	45 8b 40 08          	mov    0x8(%r8),%r8d
   1400018d0:	4c 01 c2             	add    %r8,%rdx
   1400018d3:	49 39 d4             	cmp    %rdx,%r12
   1400018d6:	0f 82 8b 00 00 00    	jb     140001967 <__write_memory.part.0+0xd7>
   1400018dc:	83 c1 01             	add    $0x1,%ecx
   1400018df:	48 83 c0 28          	add    $0x28,%rax
   1400018e3:	39 f9                	cmp    %edi,%ecx
   1400018e5:	75 d9                	jne    1400018c0 <__write_memory.part.0+0x30>
   1400018e7:	4c 89 e1             	mov    %r12,%rcx
   1400018ea:	e8 51 0a 00 00       	call   140002340 <__mingw_GetSectionForAddress>
   1400018ef:	48 89 c5             	mov    %rax,%rbp
   1400018f2:	48 85 c0             	test   %rax,%rax
   1400018f5:	0f 84 a2 01 00 00    	je     140001a9d <__write_memory.part.0+0x20d>
   1400018fb:	48 8b 05 a6 57 00 00 	mov    0x57a6(%rip),%rax        # 1400070a8 <the_secs>
   140001902:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
   140001906:	48 c1 e7 03          	shl    $0x3,%rdi
   14000190a:	48 01 f8             	add    %rdi,%rax
   14000190d:	48 89 68 20          	mov    %rbp,0x20(%rax)
   140001911:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001917:	e8 54 0b 00 00       	call   140002470 <_GetPEImageBase>
   14000191c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
   14000191f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001924:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   14000192a:	48 01 c1             	add    %rax,%rcx
   14000192d:	48 8b 05 74 57 00 00 	mov    0x5774(%rip),%rax        # 1400070a8 <the_secs>
   140001934:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
   140001939:	ff 15 8d 68 00 00    	call   *0x688d(%rip)        # 1400081cc <__imp_VirtualQuery>
   14000193f:	48 85 c0             	test   %rax,%rax
   140001942:	0f 84 3a 01 00 00    	je     140001a82 <__write_memory.part.0+0x1f2>
   140001948:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000194c:	8d 50 c0             	lea    -0x40(%rax),%edx
   14000194f:	83 e2 bf             	and    $0xffffffbf,%edx
   140001952:	74 0c                	je     140001960 <__write_memory.part.0+0xd0>
   140001954:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001957:	83 e2 fb             	and    $0xfffffffb,%edx
   14000195a:	0f 85 90 00 00 00    	jne    1400019f0 <__write_memory.part.0+0x160>
   140001960:	83 05 3d 57 00 00 01 	addl   $0x1,0x573d(%rip)        # 1400070a4 <maxSections>
   140001967:	83 fb 08             	cmp    $0x8,%ebx
   14000196a:	73 2c                	jae    140001998 <__write_memory.part.0+0x108>
   14000196c:	f6 c3 04             	test   $0x4,%bl
   14000196f:	0f 85 db 00 00 00    	jne    140001a50 <__write_memory.part.0+0x1c0>
   140001975:	85 db                	test   %ebx,%ebx
   140001977:	74 10                	je     140001989 <__write_memory.part.0+0xf9>
   140001979:	0f b6 06             	movzbl (%rsi),%eax
   14000197c:	41 88 04 24          	mov    %al,(%r12)
   140001980:	f6 c3 02             	test   $0x2,%bl
   140001983:	0f 85 e7 00 00 00    	jne    140001a70 <__write_memory.part.0+0x1e0>
   140001989:	48 83 c4 50          	add    $0x50,%rsp
   14000198d:	5b                   	pop    %rbx
   14000198e:	5e                   	pop    %rsi
   14000198f:	5f                   	pop    %rdi
   140001990:	5d                   	pop    %rbp
   140001991:	41 5c                	pop    %r12
   140001993:	c3                   	ret    
   140001994:	0f 1f 40 00          	nopl   0x0(%rax)
   140001998:	48 8b 06             	mov    (%rsi),%rax
   14000199b:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
   1400019a0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
   1400019a4:	49 89 04 24          	mov    %rax,(%r12)
   1400019a8:	89 d8                	mov    %ebx,%eax
   1400019aa:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
   1400019af:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
   1400019b4:	49 29 cc             	sub    %rcx,%r12
   1400019b7:	44 01 e3             	add    %r12d,%ebx
   1400019ba:	4c 29 e6             	sub    %r12,%rsi
   1400019bd:	83 e3 f8             	and    $0xfffffff8,%ebx
   1400019c0:	83 fb 08             	cmp    $0x8,%ebx
   1400019c3:	72 c4                	jb     140001989 <__write_memory.part.0+0xf9>
   1400019c5:	83 e3 f8             	and    $0xfffffff8,%ebx
   1400019c8:	31 c0                	xor    %eax,%eax
   1400019ca:	89 c2                	mov    %eax,%edx
   1400019cc:	83 c0 08             	add    $0x8,%eax
   1400019cf:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
   1400019d3:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
   1400019d7:	39 d8                	cmp    %ebx,%eax
   1400019d9:	72 ef                	jb     1400019ca <__write_memory.part.0+0x13a>
   1400019db:	48 83 c4 50          	add    $0x50,%rsp
   1400019df:	5b                   	pop    %rbx
   1400019e0:	5e                   	pop    %rsi
   1400019e1:	5f                   	pop    %rdi
   1400019e2:	5d                   	pop    %rbp
   1400019e3:	41 5c                	pop    %r12
   1400019e5:	c3                   	ret    
   1400019e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400019ed:	00 00 00 
   1400019f0:	83 f8 02             	cmp    $0x2,%eax
   1400019f3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400019f8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400019fd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001a03:	b8 40 00 00 00       	mov    $0x40,%eax
   140001a08:	44 0f 45 c0          	cmovne %eax,%r8d
   140001a0c:	48 03 3d 95 56 00 00 	add    0x5695(%rip),%rdi        # 1400070a8 <the_secs>
   140001a13:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
   140001a17:	49 89 f9             	mov    %rdi,%r9
   140001a1a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
   140001a1e:	ff 15 a0 67 00 00    	call   *0x67a0(%rip)        # 1400081c4 <__imp_VirtualProtect>
   140001a24:	85 c0                	test   %eax,%eax
   140001a26:	0f 85 34 ff ff ff    	jne    140001960 <__write_memory.part.0+0xd0>
   140001a2c:	ff 15 5a 67 00 00    	call   *0x675a(%rip)        # 14000818c <__imp_GetLastError>
   140001a32:	48 8d 0d ff 27 00 00 	lea    0x27ff(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001a39:	89 c2                	mov    %eax,%edx
   140001a3b:	e8 e0 fd ff ff       	call   140001820 <__report_error>
   140001a40:	31 ff                	xor    %edi,%edi
   140001a42:	e9 a0 fe ff ff       	jmp    1400018e7 <__write_memory.part.0+0x57>
   140001a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001a4e:	00 00 
   140001a50:	8b 06                	mov    (%rsi),%eax
   140001a52:	89 db                	mov    %ebx,%ebx
   140001a54:	41 89 04 24          	mov    %eax,(%r12)
   140001a58:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
   140001a5c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
   140001a61:	e9 23 ff ff ff       	jmp    140001989 <__write_memory.part.0+0xf9>
   140001a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001a6d:	00 00 00 
   140001a70:	89 db                	mov    %ebx,%ebx
   140001a72:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
   140001a77:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
   140001a7d:	e9 07 ff ff ff       	jmp    140001989 <__write_memory.part.0+0xf9>
   140001a82:	48 8b 05 1f 56 00 00 	mov    0x561f(%rip),%rax        # 1400070a8 <the_secs>
   140001a89:	8b 55 08             	mov    0x8(%rbp),%edx
   140001a8c:	48 8d 0d 6d 27 00 00 	lea    0x276d(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001a93:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
   140001a98:	e8 83 fd ff ff       	call   140001820 <__report_error>
   140001a9d:	4c 89 e2             	mov    %r12,%rdx
   140001aa0:	48 8d 0d 39 27 00 00 	lea    0x2739(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   140001aa7:	e8 74 fd ff ff       	call   140001820 <__report_error>
   140001aac:	90                   	nop
   140001aad:	0f 1f 00             	nopl   (%rax)

0000000140001ab0 <_pei386_runtime_relocator>:
   140001ab0:	55                   	push   %rbp
   140001ab1:	41 57                	push   %r15
   140001ab3:	41 56                	push   %r14
   140001ab5:	41 55                	push   %r13
   140001ab7:	41 54                	push   %r12
   140001ab9:	57                   	push   %rdi
   140001aba:	56                   	push   %rsi
   140001abb:	53                   	push   %rbx
   140001abc:	48 83 ec 38          	sub    $0x38,%rsp
   140001ac0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001ac7:	00 
   140001ac8:	8b 35 d2 55 00 00    	mov    0x55d2(%rip),%esi        # 1400070a0 <was_init.94382>
   140001ace:	85 f6                	test   %esi,%esi
   140001ad0:	74 16                	je     140001ae8 <_pei386_runtime_relocator+0x38>
   140001ad2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
   140001ad6:	5b                   	pop    %rbx
   140001ad7:	5e                   	pop    %rsi
   140001ad8:	5f                   	pop    %rdi
   140001ad9:	41 5c                	pop    %r12
   140001adb:	41 5d                	pop    %r13
   140001add:	41 5e                	pop    %r14
   140001adf:	41 5f                	pop    %r15
   140001ae1:	5d                   	pop    %rbp
   140001ae2:	c3                   	ret    
   140001ae3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ae8:	c7 05 ae 55 00 00 01 	movl   $0x1,0x55ae(%rip)        # 1400070a0 <was_init.94382>
   140001aef:	00 00 00 
   140001af2:	e8 d9 08 00 00       	call   1400023d0 <__mingw_GetSectionCount>
   140001af7:	48 98                	cltq   
   140001af9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001afd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001b04:	00 
   140001b05:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001b09:	e8 e2 0a 00 00       	call   1400025f0 <___chkstk_ms>
   140001b0e:	4c 8b 25 1b 28 00 00 	mov    0x281b(%rip),%r12        # 140004330 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001b15:	48 8b 1d 24 28 00 00 	mov    0x2824(%rip),%rbx        # 140004340 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001b1c:	c7 05 7e 55 00 00 00 	movl   $0x0,0x557e(%rip)        # 1400070a4 <maxSections>
   140001b23:	00 00 00 
   140001b26:	48 29 c4             	sub    %rax,%rsp
   140001b29:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001b2e:	48 89 05 73 55 00 00 	mov    %rax,0x5573(%rip)        # 1400070a8 <the_secs>
   140001b35:	4c 89 e0             	mov    %r12,%rax
   140001b38:	48 29 d8             	sub    %rbx,%rax
   140001b3b:	48 83 f8 07          	cmp    $0x7,%rax
   140001b3f:	7e 91                	jle    140001ad2 <_pei386_runtime_relocator+0x22>
   140001b41:	8b 13                	mov    (%rbx),%edx
   140001b43:	48 83 f8 0b          	cmp    $0xb,%rax
   140001b47:	0f 8f 4b 01 00 00    	jg     140001c98 <_pei386_runtime_relocator+0x1e8>
   140001b4d:	85 d2                	test   %edx,%edx
   140001b4f:	0f 85 cb 01 00 00    	jne    140001d20 <_pei386_runtime_relocator+0x270>
   140001b55:	8b 43 04             	mov    0x4(%rbx),%eax
   140001b58:	85 c0                	test   %eax,%eax
   140001b5a:	0f 85 c0 01 00 00    	jne    140001d20 <_pei386_runtime_relocator+0x270>
   140001b60:	8b 53 08             	mov    0x8(%rbx),%edx
   140001b63:	83 fa 01             	cmp    $0x1,%edx
   140001b66:	0f 85 1c 02 00 00    	jne    140001d88 <_pei386_runtime_relocator+0x2d8>
   140001b6c:	48 83 c3 0c          	add    $0xc,%rbx
   140001b70:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
   140001b74:	4c 8b 2d e5 27 00 00 	mov    0x27e5(%rip),%r13        # 140004360 <.refptr.__image_base__>
   140001b7b:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   140001b82:	ff ff ff 
   140001b85:	4c 39 e3             	cmp    %r12,%rbx
   140001b88:	72 3f                	jb     140001bc9 <_pei386_runtime_relocator+0x119>
   140001b8a:	e9 43 ff ff ff       	jmp    140001ad2 <_pei386_runtime_relocator+0x22>
   140001b8f:	90                   	nop
   140001b90:	44 0f b6 01          	movzbl (%rcx),%r8d
   140001b94:	4c 89 ff             	mov    %r15,%rdi
   140001b97:	4d 89 c2             	mov    %r8,%r10
   140001b9a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
   140001ba1:	45 84 c0             	test   %r8b,%r8b
   140001ba4:	4d 0f 48 c2          	cmovs  %r10,%r8
   140001ba8:	49 29 d0             	sub    %rdx,%r8
   140001bab:	4c 89 fa             	mov    %r15,%rdx
   140001bae:	4d 01 c8             	add    %r9,%r8
   140001bb1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   140001bb5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001bbb:	e8 d0 fc ff ff       	call   140001890 <__write_memory.part.0>
   140001bc0:	48 83 c3 0c          	add    $0xc,%rbx
   140001bc4:	4c 39 e3             	cmp    %r12,%rbx
   140001bc7:	73 77                	jae    140001c40 <_pei386_runtime_relocator+0x190>
   140001bc9:	8b 13                	mov    (%rbx),%edx
   140001bcb:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001bce:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
   140001bd3:	4c 01 ea             	add    %r13,%rdx
   140001bd6:	4c 01 e9             	add    %r13,%rcx
   140001bd9:	4c 8b 0a             	mov    (%rdx),%r9
   140001bdc:	41 83 f8 20          	cmp    $0x20,%r8d
   140001be0:	0f 84 0a 01 00 00    	je     140001cf0 <_pei386_runtime_relocator+0x240>
   140001be6:	0f 87 d4 00 00 00    	ja     140001cc0 <_pei386_runtime_relocator+0x210>
   140001bec:	41 83 f8 08          	cmp    $0x8,%r8d
   140001bf0:	74 9e                	je     140001b90 <_pei386_runtime_relocator+0xe0>
   140001bf2:	41 83 f8 10          	cmp    $0x10,%r8d
   140001bf6:	0f 85 75 01 00 00    	jne    140001d71 <_pei386_runtime_relocator+0x2c1>
   140001bfc:	44 0f b7 01          	movzwl (%rcx),%r8d
   140001c00:	4c 89 ff             	mov    %r15,%rdi
   140001c03:	4d 89 c2             	mov    %r8,%r10
   140001c06:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
   140001c0d:	66 45 85 c0          	test   %r8w,%r8w
   140001c11:	4d 0f 48 c2          	cmovs  %r10,%r8
   140001c15:	48 83 c3 0c          	add    $0xc,%rbx
   140001c19:	49 29 d0             	sub    %rdx,%r8
   140001c1c:	4c 89 fa             	mov    %r15,%rdx
   140001c1f:	4d 01 c8             	add    %r9,%r8
   140001c22:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   140001c26:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140001c2c:	e8 5f fc ff ff       	call   140001890 <__write_memory.part.0>
   140001c31:	4c 39 e3             	cmp    %r12,%rbx
   140001c34:	72 93                	jb     140001bc9 <_pei386_runtime_relocator+0x119>
   140001c36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c3d:	00 00 00 
   140001c40:	8b 05 5e 54 00 00    	mov    0x545e(%rip),%eax        # 1400070a4 <maxSections>
   140001c46:	85 c0                	test   %eax,%eax
   140001c48:	0f 8e 84 fe ff ff    	jle    140001ad2 <_pei386_runtime_relocator+0x22>
   140001c4e:	4c 8b 25 6f 65 00 00 	mov    0x656f(%rip),%r12        # 1400081c4 <__imp_VirtualProtect>
   140001c55:	31 db                	xor    %ebx,%ebx
   140001c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001c5e:	00 00 
   140001c60:	48 8b 05 41 54 00 00 	mov    0x5441(%rip),%rax        # 1400070a8 <the_secs>
   140001c67:	48 01 d8             	add    %rbx,%rax
   140001c6a:	44 8b 00             	mov    (%rax),%r8d
   140001c6d:	45 85 c0             	test   %r8d,%r8d
   140001c70:	74 0e                	je     140001c80 <_pei386_runtime_relocator+0x1d0>
   140001c72:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001c76:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001c7a:	49 89 f9             	mov    %rdi,%r9
   140001c7d:	41 ff d4             	call   *%r12
   140001c80:	83 c6 01             	add    $0x1,%esi
   140001c83:	48 83 c3 28          	add    $0x28,%rbx
   140001c87:	3b 35 17 54 00 00    	cmp    0x5417(%rip),%esi        # 1400070a4 <maxSections>
   140001c8d:	7c d1                	jl     140001c60 <_pei386_runtime_relocator+0x1b0>
   140001c8f:	e9 3e fe ff ff       	jmp    140001ad2 <_pei386_runtime_relocator+0x22>
   140001c94:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c98:	85 d2                	test   %edx,%edx
   140001c9a:	0f 85 80 00 00 00    	jne    140001d20 <_pei386_runtime_relocator+0x270>
   140001ca0:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ca3:	89 c7                	mov    %eax,%edi
   140001ca5:	0b 7b 08             	or     0x8(%rbx),%edi
   140001ca8:	0f 85 aa fe ff ff    	jne    140001b58 <_pei386_runtime_relocator+0xa8>
   140001cae:	8b 53 0c             	mov    0xc(%rbx),%edx
   140001cb1:	48 83 c3 0c          	add    $0xc,%rbx
   140001cb5:	e9 93 fe ff ff       	jmp    140001b4d <_pei386_runtime_relocator+0x9d>
   140001cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001cc0:	41 83 f8 40          	cmp    $0x40,%r8d
   140001cc4:	0f 85 a7 00 00 00    	jne    140001d71 <_pei386_runtime_relocator+0x2c1>
   140001cca:	48 8b 01             	mov    (%rcx),%rax
   140001ccd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140001cd3:	4c 89 ff             	mov    %r15,%rdi
   140001cd6:	48 29 d0             	sub    %rdx,%rax
   140001cd9:	4c 89 fa             	mov    %r15,%rdx
   140001cdc:	4c 01 c8             	add    %r9,%rax
   140001cdf:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140001ce3:	e8 a8 fb ff ff       	call   140001890 <__write_memory.part.0>
   140001ce8:	e9 d3 fe ff ff       	jmp    140001bc0 <_pei386_runtime_relocator+0x110>
   140001ced:	0f 1f 00             	nopl   (%rax)
   140001cf0:	8b 01                	mov    (%rcx),%eax
   140001cf2:	4c 89 ff             	mov    %r15,%rdi
   140001cf5:	49 89 c0             	mov    %rax,%r8
   140001cf8:	4c 09 f0             	or     %r14,%rax
   140001cfb:	45 85 c0             	test   %r8d,%r8d
   140001cfe:	49 0f 49 c0          	cmovns %r8,%rax
   140001d02:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001d08:	48 29 d0             	sub    %rdx,%rax
   140001d0b:	4c 89 fa             	mov    %r15,%rdx
   140001d0e:	4c 01 c8             	add    %r9,%rax
   140001d11:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140001d15:	e8 76 fb ff ff       	call   140001890 <__write_memory.part.0>
   140001d1a:	e9 a1 fe ff ff       	jmp    140001bc0 <_pei386_runtime_relocator+0x110>
   140001d1f:	90                   	nop
   140001d20:	4c 39 e3             	cmp    %r12,%rbx
   140001d23:	0f 83 a9 fd ff ff    	jae    140001ad2 <_pei386_runtime_relocator+0x22>
   140001d29:	49 83 ec 01          	sub    $0x1,%r12
   140001d2d:	4c 8b 2d 2c 26 00 00 	mov    0x262c(%rip),%r13        # 140004360 <.refptr.__image_base__>
   140001d34:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   140001d38:	49 29 dc             	sub    %rbx,%r12
   140001d3b:	49 c1 ec 03          	shr    $0x3,%r12
   140001d3f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
   140001d44:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d48:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001d4b:	8b 03                	mov    (%rbx),%eax
   140001d4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001d53:	48 89 fa             	mov    %rdi,%rdx
   140001d56:	48 83 c3 08          	add    $0x8,%rbx
   140001d5a:	4c 01 e9             	add    %r13,%rcx
   140001d5d:	03 01                	add    (%rcx),%eax
   140001d5f:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140001d62:	e8 29 fb ff ff       	call   140001890 <__write_memory.part.0>
   140001d67:	4c 39 e3             	cmp    %r12,%rbx
   140001d6a:	75 dc                	jne    140001d48 <_pei386_runtime_relocator+0x298>
   140001d6c:	e9 cf fe ff ff       	jmp    140001c40 <_pei386_runtime_relocator+0x190>
   140001d71:	44 89 c2             	mov    %r8d,%edx
   140001d74:	48 8d 0d 1d 25 00 00 	lea    0x251d(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001d7b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   140001d82:	00 
   140001d83:	e8 98 fa ff ff       	call   140001820 <__report_error>
   140001d88:	48 8d 0d d1 24 00 00 	lea    0x24d1(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001d8f:	e8 8c fa ff ff       	call   140001820 <__report_error>
   140001d94:	90                   	nop
   140001d95:	90                   	nop
   140001d96:	90                   	nop
   140001d97:	90                   	nop
   140001d98:	90                   	nop
   140001d99:	90                   	nop
   140001d9a:	90                   	nop
   140001d9b:	90                   	nop
   140001d9c:	90                   	nop
   140001d9d:	90                   	nop
   140001d9e:	90                   	nop
   140001d9f:	90                   	nop

0000000140001da0 <__mingw_raise_matherr>:
   140001da0:	48 83 ec 58          	sub    $0x58,%rsp
   140001da4:	48 8b 05 05 53 00 00 	mov    0x5305(%rip),%rax        # 1400070b0 <stUserMathErr>
   140001dab:	48 85 c0             	test   %rax,%rax
   140001dae:	74 2c                	je     140001ddc <__mingw_raise_matherr+0x3c>
   140001db0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001db7:	00 00 
   140001db9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001dbd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001dc2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001dc7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001dcd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001dd3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001dd9:	ff d0                	call   *%rax
   140001ddb:	90                   	nop
   140001ddc:	48 83 c4 58          	add    $0x58,%rsp
   140001de0:	c3                   	ret    
   140001de1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001de8:	00 00 00 00 
   140001dec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001df0 <__mingw_setusermatherr>:
   140001df0:	48 89 0d b9 52 00 00 	mov    %rcx,0x52b9(%rip)        # 1400070b0 <stUserMathErr>
   140001df7:	e9 bc 08 00 00       	jmp    1400026b8 <__setusermatherr>
   140001dfc:	90                   	nop
   140001dfd:	90                   	nop
   140001dfe:	90                   	nop
   140001dff:	90                   	nop

0000000140001e00 <_gnu_exception_handler>:
   140001e00:	41 54                	push   %r12
   140001e02:	48 83 ec 20          	sub    $0x20,%rsp
   140001e06:	48 8b 11             	mov    (%rcx),%rdx
   140001e09:	8b 02                	mov    (%rdx),%eax
   140001e0b:	49 89 cc             	mov    %rcx,%r12
   140001e0e:	89 c1                	mov    %eax,%ecx
   140001e10:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001e16:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001e1c:	0f 84 ce 00 00 00    	je     140001ef0 <_gnu_exception_handler+0xf0>
   140001e22:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001e27:	0f 87 aa 00 00 00    	ja     140001ed7 <_gnu_exception_handler+0xd7>
   140001e2d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001e32:	76 54                	jbe    140001e88 <_gnu_exception_handler+0x88>
   140001e34:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001e39:	83 f8 09             	cmp    $0x9,%eax
   140001e3c:	77 3a                	ja     140001e78 <_gnu_exception_handler+0x78>
   140001e3e:	48 8d 15 8b 24 00 00 	lea    0x248b(%rip),%rdx        # 1400042d0 <.rdata>
   140001e45:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001e49:	48 01 d0             	add    %rdx,%rax
   140001e4c:	ff e0                	jmp    *%rax
   140001e4e:	31 d2                	xor    %edx,%edx
   140001e50:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e55:	e8 ee 07 00 00       	call   140002648 <signal>
   140001e5a:	48 83 f8 01          	cmp    $0x1,%rax
   140001e5e:	0f 85 b7 00 00 00    	jne    140001f1b <_gnu_exception_handler+0x11b>
   140001e64:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e69:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e6e:	e8 d5 07 00 00       	call   140002648 <signal>
   140001e73:	e8 98 f9 ff ff       	call   140001810 <_fpreset>
   140001e78:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e7d:	48 83 c4 20          	add    $0x20,%rsp
   140001e81:	41 5c                	pop    %r12
   140001e83:	c3                   	ret    
   140001e84:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e88:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001e8d:	0f 84 a5 00 00 00    	je     140001f38 <_gnu_exception_handler+0x138>
   140001e93:	76 3b                	jbe    140001ed0 <_gnu_exception_handler+0xd0>
   140001e95:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001e9a:	74 dc                	je     140001e78 <_gnu_exception_handler+0x78>
   140001e9c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001ea1:	75 34                	jne    140001ed7 <_gnu_exception_handler+0xd7>
   140001ea3:	31 d2                	xor    %edx,%edx
   140001ea5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001eaa:	e8 99 07 00 00       	call   140002648 <signal>
   140001eaf:	48 83 f8 01          	cmp    $0x1,%rax
   140001eb3:	0f 84 a7 00 00 00    	je     140001f60 <_gnu_exception_handler+0x160>
   140001eb9:	48 85 c0             	test   %rax,%rax
   140001ebc:	74 19                	je     140001ed7 <_gnu_exception_handler+0xd7>
   140001ebe:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001ec3:	ff d0                	call   *%rax
   140001ec5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001eca:	eb b1                	jmp    140001e7d <_gnu_exception_handler+0x7d>
   140001ecc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ed0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001ed5:	74 a1                	je     140001e78 <_gnu_exception_handler+0x78>
   140001ed7:	48 8b 05 f2 51 00 00 	mov    0x51f2(%rip),%rax        # 1400070d0 <__mingw_oldexcpt_handler>
   140001ede:	48 85 c0             	test   %rax,%rax
   140001ee1:	74 1d                	je     140001f00 <_gnu_exception_handler+0x100>
   140001ee3:	4c 89 e1             	mov    %r12,%rcx
   140001ee6:	48 83 c4 20          	add    $0x20,%rsp
   140001eea:	41 5c                	pop    %r12
   140001eec:	48 ff e0             	rex.W jmp *%rax
   140001eef:	90                   	nop
   140001ef0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001ef4:	0f 85 28 ff ff ff    	jne    140001e22 <_gnu_exception_handler+0x22>
   140001efa:	e9 79 ff ff ff       	jmp    140001e78 <_gnu_exception_handler+0x78>
   140001eff:	90                   	nop
   140001f00:	31 c0                	xor    %eax,%eax
   140001f02:	48 83 c4 20          	add    $0x20,%rsp
   140001f06:	41 5c                	pop    %r12
   140001f08:	c3                   	ret    
   140001f09:	31 d2                	xor    %edx,%edx
   140001f0b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f10:	e8 33 07 00 00       	call   140002648 <signal>
   140001f15:	48 83 f8 01          	cmp    $0x1,%rax
   140001f19:	74 65                	je     140001f80 <_gnu_exception_handler+0x180>
   140001f1b:	48 85 c0             	test   %rax,%rax
   140001f1e:	74 b7                	je     140001ed7 <_gnu_exception_handler+0xd7>
   140001f20:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f25:	ff d0                	call   *%rax
   140001f27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f2c:	e9 4c ff ff ff       	jmp    140001e7d <_gnu_exception_handler+0x7d>
   140001f31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001f38:	31 d2                	xor    %edx,%edx
   140001f3a:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f3f:	e8 04 07 00 00       	call   140002648 <signal>
   140001f44:	48 83 f8 01          	cmp    $0x1,%rax
   140001f48:	74 4f                	je     140001f99 <_gnu_exception_handler+0x199>
   140001f4a:	48 85 c0             	test   %rax,%rax
   140001f4d:	74 88                	je     140001ed7 <_gnu_exception_handler+0xd7>
   140001f4f:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f54:	ff d0                	call   *%rax
   140001f56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f5b:	e9 1d ff ff ff       	jmp    140001e7d <_gnu_exception_handler+0x7d>
   140001f60:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f65:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f6a:	e8 d9 06 00 00       	call   140002648 <signal>
   140001f6f:	83 c8 ff             	or     $0xffffffff,%eax
   140001f72:	e9 06 ff ff ff       	jmp    140001e7d <_gnu_exception_handler+0x7d>
   140001f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f7e:	00 00 
   140001f80:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f85:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f8a:	e8 b9 06 00 00       	call   140002648 <signal>
   140001f8f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f94:	e9 e4 fe ff ff       	jmp    140001e7d <_gnu_exception_handler+0x7d>
   140001f99:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f9e:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001fa3:	e8 a0 06 00 00       	call   140002648 <signal>
   140001fa8:	83 c8 ff             	or     $0xffffffff,%eax
   140001fab:	e9 cd fe ff ff       	jmp    140001e7d <_gnu_exception_handler+0x7d>

0000000140001fb0 <__mingwthr_run_key_dtors.part.0>:
   140001fb0:	41 54                	push   %r12
   140001fb2:	57                   	push   %rdi
   140001fb3:	56                   	push   %rsi
   140001fb4:	53                   	push   %rbx
   140001fb5:	48 83 ec 28          	sub    $0x28,%rsp
   140001fb9:	48 8d 0d 40 51 00 00 	lea    0x5140(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140001fc0:	ff 15 be 61 00 00    	call   *0x61be(%rip)        # 140008184 <__imp_EnterCriticalSection>
   140001fc6:	48 8b 1d 13 51 00 00 	mov    0x5113(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001fcd:	48 85 db             	test   %rbx,%rbx
   140001fd0:	74 32                	je     140002004 <__mingwthr_run_key_dtors.part.0+0x54>
   140001fd2:	48 8b 3d e3 61 00 00 	mov    0x61e3(%rip),%rdi        # 1400081bc <__imp_TlsGetValue>
   140001fd9:	48 8b 35 ac 61 00 00 	mov    0x61ac(%rip),%rsi        # 14000818c <__imp_GetLastError>
   140001fe0:	8b 0b                	mov    (%rbx),%ecx
   140001fe2:	ff d7                	call   *%rdi
   140001fe4:	49 89 c4             	mov    %rax,%r12
   140001fe7:	ff d6                	call   *%rsi
   140001fe9:	85 c0                	test   %eax,%eax
   140001feb:	75 0e                	jne    140001ffb <__mingwthr_run_key_dtors.part.0+0x4b>
   140001fed:	4d 85 e4             	test   %r12,%r12
   140001ff0:	74 09                	je     140001ffb <__mingwthr_run_key_dtors.part.0+0x4b>
   140001ff2:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001ff6:	4c 89 e1             	mov    %r12,%rcx
   140001ff9:	ff d0                	call   *%rax
   140001ffb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001fff:	48 85 db             	test   %rbx,%rbx
   140002002:	75 dc                	jne    140001fe0 <__mingwthr_run_key_dtors.part.0+0x30>
   140002004:	48 8d 0d f5 50 00 00 	lea    0x50f5(%rip),%rcx        # 140007100 <__mingwthr_cs>
   14000200b:	48 83 c4 28          	add    $0x28,%rsp
   14000200f:	5b                   	pop    %rbx
   140002010:	5e                   	pop    %rsi
   140002011:	5f                   	pop    %rdi
   140002012:	41 5c                	pop    %r12
   140002014:	48 ff 25 89 61 00 00 	rex.W jmp *0x6189(%rip)        # 1400081a4 <__imp_LeaveCriticalSection>
   14000201b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002020 <___w64_mingwthr_add_key_dtor>:
   140002020:	57                   	push   %rdi
   140002021:	56                   	push   %rsi
   140002022:	53                   	push   %rbx
   140002023:	48 83 ec 20          	sub    $0x20,%rsp
   140002027:	8b 05 bb 50 00 00    	mov    0x50bb(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000202d:	89 cf                	mov    %ecx,%edi
   14000202f:	48 89 d6             	mov    %rdx,%rsi
   140002032:	85 c0                	test   %eax,%eax
   140002034:	75 0a                	jne    140002040 <___w64_mingwthr_add_key_dtor+0x20>
   140002036:	48 83 c4 20          	add    $0x20,%rsp
   14000203a:	5b                   	pop    %rbx
   14000203b:	5e                   	pop    %rsi
   14000203c:	5f                   	pop    %rdi
   14000203d:	c3                   	ret    
   14000203e:	66 90                	xchg   %ax,%ax
   140002040:	ba 18 00 00 00       	mov    $0x18,%edx
   140002045:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000204a:	e8 39 06 00 00       	call   140002688 <calloc>
   14000204f:	48 89 c3             	mov    %rax,%rbx
   140002052:	48 85 c0             	test   %rax,%rax
   140002055:	74 3c                	je     140002093 <___w64_mingwthr_add_key_dtor+0x73>
   140002057:	89 38                	mov    %edi,(%rax)
   140002059:	48 8d 0d a0 50 00 00 	lea    0x50a0(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002060:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140002064:	ff 15 1a 61 00 00    	call   *0x611a(%rip)        # 140008184 <__imp_EnterCriticalSection>
   14000206a:	48 8b 05 6f 50 00 00 	mov    0x506f(%rip),%rax        # 1400070e0 <key_dtor_list>
   140002071:	48 8d 0d 88 50 00 00 	lea    0x5088(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002078:	48 89 1d 61 50 00 00 	mov    %rbx,0x5061(%rip)        # 1400070e0 <key_dtor_list>
   14000207f:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002083:	ff 15 1b 61 00 00    	call   *0x611b(%rip)        # 1400081a4 <__imp_LeaveCriticalSection>
   140002089:	31 c0                	xor    %eax,%eax
   14000208b:	48 83 c4 20          	add    $0x20,%rsp
   14000208f:	5b                   	pop    %rbx
   140002090:	5e                   	pop    %rsi
   140002091:	5f                   	pop    %rdi
   140002092:	c3                   	ret    
   140002093:	83 c8 ff             	or     $0xffffffff,%eax
   140002096:	eb 9e                	jmp    140002036 <___w64_mingwthr_add_key_dtor+0x16>
   140002098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000209f:	00 

00000001400020a0 <___w64_mingwthr_remove_key_dtor>:
   1400020a0:	53                   	push   %rbx
   1400020a1:	48 83 ec 20          	sub    $0x20,%rsp
   1400020a5:	8b 05 3d 50 00 00    	mov    0x503d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020ab:	89 cb                	mov    %ecx,%ebx
   1400020ad:	85 c0                	test   %eax,%eax
   1400020af:	75 0f                	jne    1400020c0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400020b1:	31 c0                	xor    %eax,%eax
   1400020b3:	48 83 c4 20          	add    $0x20,%rsp
   1400020b7:	5b                   	pop    %rbx
   1400020b8:	c3                   	ret    
   1400020b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020c0:	48 8d 0d 39 50 00 00 	lea    0x5039(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020c7:	ff 15 b7 60 00 00    	call   *0x60b7(%rip)        # 140008184 <__imp_EnterCriticalSection>
   1400020cd:	48 8b 0d 0c 50 00 00 	mov    0x500c(%rip),%rcx        # 1400070e0 <key_dtor_list>
   1400020d4:	48 85 c9             	test   %rcx,%rcx
   1400020d7:	74 2a                	je     140002103 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020d9:	31 d2                	xor    %edx,%edx
   1400020db:	eb 0e                	jmp    1400020eb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400020dd:	0f 1f 00             	nopl   (%rax)
   1400020e0:	48 89 ca             	mov    %rcx,%rdx
   1400020e3:	48 85 c0             	test   %rax,%rax
   1400020e6:	74 1b                	je     140002103 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020e8:	48 89 c1             	mov    %rax,%rcx
   1400020eb:	8b 01                	mov    (%rcx),%eax
   1400020ed:	39 d8                	cmp    %ebx,%eax
   1400020ef:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400020f3:	75 eb                	jne    1400020e0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020f5:	48 85 d2             	test   %rdx,%rdx
   1400020f8:	74 26                	je     140002120 <___w64_mingwthr_remove_key_dtor+0x80>
   1400020fa:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400020fe:	e8 65 05 00 00       	call   140002668 <free>
   140002103:	48 8d 0d f6 4f 00 00 	lea    0x4ff6(%rip),%rcx        # 140007100 <__mingwthr_cs>
   14000210a:	ff 15 94 60 00 00    	call   *0x6094(%rip)        # 1400081a4 <__imp_LeaveCriticalSection>
   140002110:	31 c0                	xor    %eax,%eax
   140002112:	48 83 c4 20          	add    $0x20,%rsp
   140002116:	5b                   	pop    %rbx
   140002117:	c3                   	ret    
   140002118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000211f:	00 
   140002120:	48 89 05 b9 4f 00 00 	mov    %rax,0x4fb9(%rip)        # 1400070e0 <key_dtor_list>
   140002127:	eb d5                	jmp    1400020fe <___w64_mingwthr_remove_key_dtor+0x5e>
   140002129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002130 <__mingw_TLScallback>:
   140002130:	53                   	push   %rbx
   140002131:	48 83 ec 20          	sub    $0x20,%rsp
   140002135:	83 fa 02             	cmp    $0x2,%edx
   140002138:	0f 84 c2 00 00 00    	je     140002200 <__mingw_TLScallback+0xd0>
   14000213e:	77 28                	ja     140002168 <__mingw_TLScallback+0x38>
   140002140:	85 d2                	test   %edx,%edx
   140002142:	74 4c                	je     140002190 <__mingw_TLScallback+0x60>
   140002144:	8b 05 9e 4f 00 00    	mov    0x4f9e(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000214a:	85 c0                	test   %eax,%eax
   14000214c:	74 32                	je     140002180 <__mingw_TLScallback+0x50>
   14000214e:	c7 05 90 4f 00 00 01 	movl   $0x1,0x4f90(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002155:	00 00 00 
   140002158:	b8 01 00 00 00       	mov    $0x1,%eax
   14000215d:	48 83 c4 20          	add    $0x20,%rsp
   140002161:	5b                   	pop    %rbx
   140002162:	c3                   	ret    
   140002163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002168:	83 fa 03             	cmp    $0x3,%edx
   14000216b:	75 eb                	jne    140002158 <__mingw_TLScallback+0x28>
   14000216d:	8b 05 75 4f 00 00    	mov    0x4f75(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002173:	85 c0                	test   %eax,%eax
   140002175:	74 e1                	je     140002158 <__mingw_TLScallback+0x28>
   140002177:	e8 34 fe ff ff       	call   140001fb0 <__mingwthr_run_key_dtors.part.0>
   14000217c:	eb da                	jmp    140002158 <__mingw_TLScallback+0x28>
   14000217e:	66 90                	xchg   %ax,%ax
   140002180:	48 8d 0d 79 4f 00 00 	lea    0x4f79(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002187:	ff 15 0f 60 00 00    	call   *0x600f(%rip)        # 14000819c <__imp_InitializeCriticalSection>
   14000218d:	eb bf                	jmp    14000214e <__mingw_TLScallback+0x1e>
   14000218f:	90                   	nop
   140002190:	8b 05 52 4f 00 00    	mov    0x4f52(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002196:	85 c0                	test   %eax,%eax
   140002198:	74 05                	je     14000219f <__mingw_TLScallback+0x6f>
   14000219a:	e8 11 fe ff ff       	call   140001fb0 <__mingwthr_run_key_dtors.part.0>
   14000219f:	8b 05 43 4f 00 00    	mov    0x4f43(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400021a5:	83 f8 01             	cmp    $0x1,%eax
   1400021a8:	75 ae                	jne    140002158 <__mingw_TLScallback+0x28>
   1400021aa:	48 8b 1d 2f 4f 00 00 	mov    0x4f2f(%rip),%rbx        # 1400070e0 <key_dtor_list>
   1400021b1:	48 85 db             	test   %rbx,%rbx
   1400021b4:	74 1b                	je     1400021d1 <__mingw_TLScallback+0xa1>
   1400021b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400021bd:	00 00 00 
   1400021c0:	48 89 d9             	mov    %rbx,%rcx
   1400021c3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400021c7:	e8 9c 04 00 00       	call   140002668 <free>
   1400021cc:	48 85 db             	test   %rbx,%rbx
   1400021cf:	75 ef                	jne    1400021c0 <__mingw_TLScallback+0x90>
   1400021d1:	48 8d 0d 28 4f 00 00 	lea    0x4f28(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400021d8:	48 c7 05 fd 4e 00 00 	movq   $0x0,0x4efd(%rip)        # 1400070e0 <key_dtor_list>
   1400021df:	00 00 00 00 
   1400021e3:	c7 05 fb 4e 00 00 00 	movl   $0x0,0x4efb(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400021ea:	00 00 00 
   1400021ed:	ff 15 89 5f 00 00    	call   *0x5f89(%rip)        # 14000817c <__IAT_start__>
   1400021f3:	e9 60 ff ff ff       	jmp    140002158 <__mingw_TLScallback+0x28>
   1400021f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021ff:	00 
   140002200:	e8 0b f6 ff ff       	call   140001810 <_fpreset>
   140002205:	b8 01 00 00 00       	mov    $0x1,%eax
   14000220a:	48 83 c4 20          	add    $0x20,%rsp
   14000220e:	5b                   	pop    %rbx
   14000220f:	c3                   	ret    

0000000140002210 <_ValidateImageBase.part.0>:
   140002210:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002214:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
   140002218:	31 c0                	xor    %eax,%eax
   14000221a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002220:	75 0b                	jne    14000222d <_ValidateImageBase.part.0+0x1d>
   140002222:	31 c0                	xor    %eax,%eax
   140002224:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000222a:	0f 94 c0             	sete   %al
   14000222d:	c3                   	ret    
   14000222e:	66 90                	xchg   %ax,%ax

0000000140002230 <_ValidateImageBase>:
   140002230:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002235:	75 09                	jne    140002240 <_ValidateImageBase+0x10>
   140002237:	eb d7                	jmp    140002210 <_ValidateImageBase.part.0>
   140002239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002240:	31 c0                	xor    %eax,%eax
   140002242:	c3                   	ret    
   140002243:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000224a:	00 00 00 00 
   14000224e:	66 90                	xchg   %ax,%ax

0000000140002250 <_FindPESection>:
   140002250:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002254:	48 01 c1             	add    %rax,%rcx
   140002257:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000225b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002260:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002264:	85 c9                	test   %ecx,%ecx
   140002266:	74 2d                	je     140002295 <_FindPESection+0x45>
   140002268:	83 e9 01             	sub    $0x1,%ecx
   14000226b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000226f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002274:	0f 1f 40 00          	nopl   0x0(%rax)
   140002278:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000227c:	4c 89 c1             	mov    %r8,%rcx
   14000227f:	49 39 d0             	cmp    %rdx,%r8
   140002282:	77 08                	ja     14000228c <_FindPESection+0x3c>
   140002284:	03 48 08             	add    0x8(%rax),%ecx
   140002287:	48 39 d1             	cmp    %rdx,%rcx
   14000228a:	77 0b                	ja     140002297 <_FindPESection+0x47>
   14000228c:	48 83 c0 28          	add    $0x28,%rax
   140002290:	4c 39 c8             	cmp    %r9,%rax
   140002293:	75 e3                	jne    140002278 <_FindPESection+0x28>
   140002295:	31 c0                	xor    %eax,%eax
   140002297:	c3                   	ret    
   140002298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000229f:	00 

00000001400022a0 <_FindPESectionByName>:
   1400022a0:	41 54                	push   %r12
   1400022a2:	56                   	push   %rsi
   1400022a3:	53                   	push   %rbx
   1400022a4:	48 83 ec 20          	sub    $0x20,%rsp
   1400022a8:	48 89 cb             	mov    %rcx,%rbx
   1400022ab:	e8 90 03 00 00       	call   140002640 <strlen>
   1400022b0:	48 83 f8 08          	cmp    $0x8,%rax
   1400022b4:	77 7a                	ja     140002330 <_FindPESectionByName+0x90>
   1400022b6:	48 8b 0d a3 20 00 00 	mov    0x20a3(%rip),%rcx        # 140004360 <.refptr.__image_base__>
   1400022bd:	45 31 e4             	xor    %r12d,%r12d
   1400022c0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400022c5:	75 57                	jne    14000231e <_FindPESectionByName+0x7e>
   1400022c7:	e8 44 ff ff ff       	call   140002210 <_ValidateImageBase.part.0>
   1400022cc:	85 c0                	test   %eax,%eax
   1400022ce:	74 4e                	je     14000231e <_FindPESectionByName+0x7e>
   1400022d0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400022d4:	48 01 c1             	add    %rax,%rcx
   1400022d7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400022db:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
   1400022e0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   1400022e4:	85 c0                	test   %eax,%eax
   1400022e6:	74 48                	je     140002330 <_FindPESectionByName+0x90>
   1400022e8:	83 e8 01             	sub    $0x1,%eax
   1400022eb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400022ef:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   1400022f4:	eb 13                	jmp    140002309 <_FindPESectionByName+0x69>
   1400022f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022fd:	00 00 00 
   140002300:	49 83 c4 28          	add    $0x28,%r12
   140002304:	49 39 f4             	cmp    %rsi,%r12
   140002307:	74 27                	je     140002330 <_FindPESectionByName+0x90>
   140002309:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000230f:	48 89 da             	mov    %rbx,%rdx
   140002312:	4c 89 e1             	mov    %r12,%rcx
   140002315:	e8 1e 03 00 00       	call   140002638 <strncmp>
   14000231a:	85 c0                	test   %eax,%eax
   14000231c:	75 e2                	jne    140002300 <_FindPESectionByName+0x60>
   14000231e:	4c 89 e0             	mov    %r12,%rax
   140002321:	48 83 c4 20          	add    $0x20,%rsp
   140002325:	5b                   	pop    %rbx
   140002326:	5e                   	pop    %rsi
   140002327:	41 5c                	pop    %r12
   140002329:	c3                   	ret    
   14000232a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002330:	45 31 e4             	xor    %r12d,%r12d
   140002333:	4c 89 e0             	mov    %r12,%rax
   140002336:	48 83 c4 20          	add    $0x20,%rsp
   14000233a:	5b                   	pop    %rbx
   14000233b:	5e                   	pop    %rsi
   14000233c:	41 5c                	pop    %r12
   14000233e:	c3                   	ret    
   14000233f:	90                   	nop

0000000140002340 <__mingw_GetSectionForAddress>:
   140002340:	48 83 ec 28          	sub    $0x28,%rsp
   140002344:	4c 8b 15 15 20 00 00 	mov    0x2015(%rip),%r10        # 140004360 <.refptr.__image_base__>
   14000234b:	45 31 c0             	xor    %r8d,%r8d
   14000234e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
   140002354:	49 89 c9             	mov    %rcx,%r9
   140002357:	75 60                	jne    1400023b9 <__mingw_GetSectionForAddress+0x79>
   140002359:	4c 89 d1             	mov    %r10,%rcx
   14000235c:	e8 af fe ff ff       	call   140002210 <_ValidateImageBase.part.0>
   140002361:	85 c0                	test   %eax,%eax
   140002363:	74 54                	je     1400023b9 <__mingw_GetSectionForAddress+0x79>
   140002365:	49 63 42 3c          	movslq 0x3c(%r10),%rax
   140002369:	4c 89 c9             	mov    %r9,%rcx
   14000236c:	4c 29 d1             	sub    %r10,%rcx
   14000236f:	49 01 c2             	add    %rax,%r10
   140002372:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
   140002377:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
   14000237c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
   140002381:	85 c0                	test   %eax,%eax
   140002383:	74 31                	je     1400023b6 <__mingw_GetSectionForAddress+0x76>
   140002385:	83 e8 01             	sub    $0x1,%eax
   140002388:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000238c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
   140002391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002398:	41 8b 50 0c          	mov    0xc(%r8),%edx
   14000239c:	48 89 d0             	mov    %rdx,%rax
   14000239f:	48 39 d1             	cmp    %rdx,%rcx
   1400023a2:	72 09                	jb     1400023ad <__mingw_GetSectionForAddress+0x6d>
   1400023a4:	41 03 40 08          	add    0x8(%r8),%eax
   1400023a8:	48 39 c1             	cmp    %rax,%rcx
   1400023ab:	72 0c                	jb     1400023b9 <__mingw_GetSectionForAddress+0x79>
   1400023ad:	49 83 c0 28          	add    $0x28,%r8
   1400023b1:	4d 39 c8             	cmp    %r9,%r8
   1400023b4:	75 e2                	jne    140002398 <__mingw_GetSectionForAddress+0x58>
   1400023b6:	45 31 c0             	xor    %r8d,%r8d
   1400023b9:	4c 89 c0             	mov    %r8,%rax
   1400023bc:	48 83 c4 28          	add    $0x28,%rsp
   1400023c0:	c3                   	ret    
   1400023c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400023c8:	00 00 00 00 
   1400023cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400023d0 <__mingw_GetSectionCount>:
   1400023d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400023d4:	48 8b 0d 85 1f 00 00 	mov    0x1f85(%rip),%rcx        # 140004360 <.refptr.__image_base__>
   1400023db:	31 c0                	xor    %eax,%eax
   1400023dd:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400023e2:	75 12                	jne    1400023f6 <__mingw_GetSectionCount+0x26>
   1400023e4:	e8 27 fe ff ff       	call   140002210 <_ValidateImageBase.part.0>
   1400023e9:	85 c0                	test   %eax,%eax
   1400023eb:	74 09                	je     1400023f6 <__mingw_GetSectionCount+0x26>
   1400023ed:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400023f1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
   1400023f6:	48 83 c4 28          	add    $0x28,%rsp
   1400023fa:	c3                   	ret    
   1400023fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002400 <_FindPESectionExec>:
   140002400:	48 83 ec 28          	sub    $0x28,%rsp
   140002404:	45 31 c0             	xor    %r8d,%r8d
   140002407:	49 89 c9             	mov    %rcx,%r9
   14000240a:	48 8b 0d 4f 1f 00 00 	mov    0x1f4f(%rip),%rcx        # 140004360 <.refptr.__image_base__>
   140002411:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002416:	75 4c                	jne    140002464 <_FindPESectionExec+0x64>
   140002418:	e8 f3 fd ff ff       	call   140002210 <_ValidateImageBase.part.0>
   14000241d:	85 c0                	test   %eax,%eax
   14000241f:	74 43                	je     140002464 <_FindPESectionExec+0x64>
   140002421:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002425:	48 01 c1             	add    %rax,%rcx
   140002428:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000242c:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
   140002431:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   140002435:	85 c0                	test   %eax,%eax
   140002437:	74 28                	je     140002461 <_FindPESectionExec+0x61>
   140002439:	83 e8 01             	sub    $0x1,%eax
   14000243c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002440:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
   140002445:	0f 1f 00             	nopl   (%rax)
   140002448:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
   14000244d:	74 09                	je     140002458 <_FindPESectionExec+0x58>
   14000244f:	4d 85 c9             	test   %r9,%r9
   140002452:	74 10                	je     140002464 <_FindPESectionExec+0x64>
   140002454:	49 83 e9 01          	sub    $0x1,%r9
   140002458:	49 83 c0 28          	add    $0x28,%r8
   14000245c:	49 39 c0             	cmp    %rax,%r8
   14000245f:	75 e7                	jne    140002448 <_FindPESectionExec+0x48>
   140002461:	45 31 c0             	xor    %r8d,%r8d
   140002464:	4c 89 c0             	mov    %r8,%rax
   140002467:	48 83 c4 28          	add    $0x28,%rsp
   14000246b:	c3                   	ret    
   14000246c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002470 <_GetPEImageBase>:
   140002470:	48 83 ec 28          	sub    $0x28,%rsp
   140002474:	48 8b 0d e5 1e 00 00 	mov    0x1ee5(%rip),%rcx        # 140004360 <.refptr.__image_base__>
   14000247b:	45 31 c0             	xor    %r8d,%r8d
   14000247e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002483:	75 0b                	jne    140002490 <_GetPEImageBase+0x20>
   140002485:	e8 86 fd ff ff       	call   140002210 <_ValidateImageBase.part.0>
   14000248a:	85 c0                	test   %eax,%eax
   14000248c:	4c 0f 45 c1          	cmovne %rcx,%r8
   140002490:	4c 89 c0             	mov    %r8,%rax
   140002493:	48 83 c4 28          	add    $0x28,%rsp
   140002497:	c3                   	ret    
   140002498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000249f:	00 

00000001400024a0 <_IsNonwritableInCurrentImage>:
   1400024a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400024a4:	4c 8b 0d b5 1e 00 00 	mov    0x1eb5(%rip),%r9        # 140004360 <.refptr.__image_base__>
   1400024ab:	31 c0                	xor    %eax,%eax
   1400024ad:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
   1400024b3:	49 89 c8             	mov    %rcx,%r8
   1400024b6:	75 57                	jne    14000250f <_IsNonwritableInCurrentImage+0x6f>
   1400024b8:	4c 89 c9             	mov    %r9,%rcx
   1400024bb:	e8 50 fd ff ff       	call   140002210 <_ValidateImageBase.part.0>
   1400024c0:	85 c0                	test   %eax,%eax
   1400024c2:	74 4b                	je     14000250f <_IsNonwritableInCurrentImage+0x6f>
   1400024c4:	49 63 41 3c          	movslq 0x3c(%r9),%rax
   1400024c8:	4c 89 c1             	mov    %r8,%rcx
   1400024cb:	4c 29 c9             	sub    %r9,%rcx
   1400024ce:	49 01 c1             	add    %rax,%r9
   1400024d1:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
   1400024d6:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
   1400024db:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
   1400024e0:	85 d2                	test   %edx,%edx
   1400024e2:	74 29                	je     14000250d <_IsNonwritableInCurrentImage+0x6d>
   1400024e4:	83 ea 01             	sub    $0x1,%edx
   1400024e7:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400024eb:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400024f0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400024f4:	4c 89 c2             	mov    %r8,%rdx
   1400024f7:	4c 39 c1             	cmp    %r8,%rcx
   1400024fa:	72 08                	jb     140002504 <_IsNonwritableInCurrentImage+0x64>
   1400024fc:	03 50 08             	add    0x8(%rax),%edx
   1400024ff:	48 39 d1             	cmp    %rdx,%rcx
   140002502:	72 14                	jb     140002518 <_IsNonwritableInCurrentImage+0x78>
   140002504:	48 83 c0 28          	add    $0x28,%rax
   140002508:	4c 39 c8             	cmp    %r9,%rax
   14000250b:	75 e3                	jne    1400024f0 <_IsNonwritableInCurrentImage+0x50>
   14000250d:	31 c0                	xor    %eax,%eax
   14000250f:	48 83 c4 28          	add    $0x28,%rsp
   140002513:	c3                   	ret    
   140002514:	0f 1f 40 00          	nopl   0x0(%rax)
   140002518:	8b 40 24             	mov    0x24(%rax),%eax
   14000251b:	f7 d0                	not    %eax
   14000251d:	c1 e8 1f             	shr    $0x1f,%eax
   140002520:	48 83 c4 28          	add    $0x28,%rsp
   140002524:	c3                   	ret    
   140002525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000252c:	00 00 00 00 

0000000140002530 <__mingw_enum_import_library_names>:
   140002530:	48 83 ec 28          	sub    $0x28,%rsp
   140002534:	4c 8b 1d 25 1e 00 00 	mov    0x1e25(%rip),%r11        # 140004360 <.refptr.__image_base__>
   14000253b:	45 31 c9             	xor    %r9d,%r9d
   14000253e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002544:	41 89 c8             	mov    %ecx,%r8d
   140002547:	75 5f                	jne    1400025a8 <__mingw_enum_import_library_names+0x78>
   140002549:	4c 89 d9             	mov    %r11,%rcx
   14000254c:	e8 bf fc ff ff       	call   140002210 <_ValidateImageBase.part.0>
   140002551:	85 c0                	test   %eax,%eax
   140002553:	74 53                	je     1400025a8 <__mingw_enum_import_library_names+0x78>
   140002555:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
   140002559:	4c 01 d9             	add    %r11,%rcx
   14000255c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
   140002562:	85 c0                	test   %eax,%eax
   140002564:	74 42                	je     1400025a8 <__mingw_enum_import_library_names+0x78>
   140002566:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
   14000256a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
   14000256f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002573:	85 c9                	test   %ecx,%ecx
   140002575:	74 31                	je     1400025a8 <__mingw_enum_import_library_names+0x78>
   140002577:	83 e9 01             	sub    $0x1,%ecx
   14000257a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000257e:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
   140002583:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002588:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   14000258c:	4c 89 c9             	mov    %r9,%rcx
   14000258f:	4c 39 c8             	cmp    %r9,%rax
   140002592:	72 08                	jb     14000259c <__mingw_enum_import_library_names+0x6c>
   140002594:	03 4a 08             	add    0x8(%rdx),%ecx
   140002597:	48 39 c8             	cmp    %rcx,%rax
   14000259a:	72 14                	jb     1400025b0 <__mingw_enum_import_library_names+0x80>
   14000259c:	48 83 c2 28          	add    $0x28,%rdx
   1400025a0:	4c 39 d2             	cmp    %r10,%rdx
   1400025a3:	75 e3                	jne    140002588 <__mingw_enum_import_library_names+0x58>
   1400025a5:	45 31 c9             	xor    %r9d,%r9d
   1400025a8:	4c 89 c8             	mov    %r9,%rax
   1400025ab:	48 83 c4 28          	add    $0x28,%rsp
   1400025af:	c3                   	ret    
   1400025b0:	4c 01 d8             	add    %r11,%rax
   1400025b3:	eb 0b                	jmp    1400025c0 <__mingw_enum_import_library_names+0x90>
   1400025b5:	0f 1f 00             	nopl   (%rax)
   1400025b8:	41 83 e8 01          	sub    $0x1,%r8d
   1400025bc:	48 83 c0 14          	add    $0x14,%rax
   1400025c0:	8b 48 04             	mov    0x4(%rax),%ecx
   1400025c3:	85 c9                	test   %ecx,%ecx
   1400025c5:	75 07                	jne    1400025ce <__mingw_enum_import_library_names+0x9e>
   1400025c7:	8b 50 0c             	mov    0xc(%rax),%edx
   1400025ca:	85 d2                	test   %edx,%edx
   1400025cc:	74 d7                	je     1400025a5 <__mingw_enum_import_library_names+0x75>
   1400025ce:	45 85 c0             	test   %r8d,%r8d
   1400025d1:	7f e5                	jg     1400025b8 <__mingw_enum_import_library_names+0x88>
   1400025d3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400025d7:	4d 01 d9             	add    %r11,%r9
   1400025da:	4c 89 c8             	mov    %r9,%rax
   1400025dd:	48 83 c4 28          	add    $0x28,%rsp
   1400025e1:	c3                   	ret    
   1400025e2:	90                   	nop
   1400025e3:	90                   	nop
   1400025e4:	90                   	nop
   1400025e5:	90                   	nop
   1400025e6:	90                   	nop
   1400025e7:	90                   	nop
   1400025e8:	90                   	nop
   1400025e9:	90                   	nop
   1400025ea:	90                   	nop
   1400025eb:	90                   	nop
   1400025ec:	90                   	nop
   1400025ed:	90                   	nop
   1400025ee:	90                   	nop
   1400025ef:	90                   	nop

00000001400025f0 <___chkstk_ms>:
   1400025f0:	51                   	push   %rcx
   1400025f1:	50                   	push   %rax
   1400025f2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400025f8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400025fd:	72 19                	jb     140002618 <___chkstk_ms+0x28>
   1400025ff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002606:	48 83 09 00          	orq    $0x0,(%rcx)
   14000260a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002610:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002616:	77 e7                	ja     1400025ff <___chkstk_ms+0xf>
   140002618:	48 29 c1             	sub    %rax,%rcx
   14000261b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000261f:	58                   	pop    %rax
   140002620:	59                   	pop    %rcx
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

0000000140002630 <vfprintf>:
   140002630:	ff 25 76 5c 00 00    	jmp    *0x5c76(%rip)        # 1400082ac <__imp_vfprintf>
   140002636:	90                   	nop
   140002637:	90                   	nop

0000000140002638 <strncmp>:
   140002638:	ff 25 66 5c 00 00    	jmp    *0x5c66(%rip)        # 1400082a4 <__imp_strncmp>
   14000263e:	90                   	nop
   14000263f:	90                   	nop

0000000140002640 <strlen>:
   140002640:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 14000829c <__imp_strlen>
   140002646:	90                   	nop
   140002647:	90                   	nop

0000000140002648 <signal>:
   140002648:	ff 25 46 5c 00 00    	jmp    *0x5c46(%rip)        # 140008294 <__imp_signal>
   14000264e:	90                   	nop
   14000264f:	90                   	nop

0000000140002650 <memcpy>:
   140002650:	ff 25 36 5c 00 00    	jmp    *0x5c36(%rip)        # 14000828c <__imp_memcpy>
   140002656:	90                   	nop
   140002657:	90                   	nop

0000000140002658 <malloc>:
   140002658:	ff 25 26 5c 00 00    	jmp    *0x5c26(%rip)        # 140008284 <__imp_malloc>
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <fwrite>:
   140002660:	ff 25 16 5c 00 00    	jmp    *0x5c16(%rip)        # 14000827c <__imp_fwrite>
   140002666:	90                   	nop
   140002667:	90                   	nop

0000000140002668 <free>:
   140002668:	ff 25 06 5c 00 00    	jmp    *0x5c06(%rip)        # 140008274 <__imp_free>
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <fputs>:
   140002670:	e9 fa b3 06 00       	jmp    14006da6f <.debug_ranges+0x2177f>
   140002675:	00 90 90       	add    %dl,-0x19da0070(%rax)

0000000140002678 <fprintf>:
   140002678:	ff 25 e6 5b 00 00    	jmp    *0x5be6(%rip)        # 140008264 <__imp_fprintf>
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <exit>:
   140002680:	ff 25 d6 5b 00 00    	jmp    *0x5bd6(%rip)        # 14000825c <__imp_exit>
   140002686:	90                   	nop
   140002687:	90                   	nop

0000000140002688 <calloc>:
   140002688:	ff 25 c6 5b 00 00    	jmp    *0x5bc6(%rip)        # 140008254 <__imp_calloc>
   14000268e:	90                   	nop
   14000268f:	90                   	nop

0000000140002690 <abort>:
   140002690:	ff 25 b6 5b 00 00    	jmp    *0x5bb6(%rip)        # 14000824c <__imp_abort>
   140002696:	90                   	nop
   140002697:	90                   	nop

0000000140002698 <_onexit>:
   140002698:	ff 25 a6 5b 00 00    	jmp    *0x5ba6(%rip)        # 140008244 <__imp__onexit>
   14000269e:	90                   	nop
   14000269f:	90                   	nop

00000001400026a0 <_initterm>:
   1400026a0:	ff 25 96 5b 00 00    	jmp    *0x5b96(%rip)        # 14000823c <__imp__initterm>
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop

00000001400026a8 <_cexit>:
   1400026a8:	ff 25 76 5b 00 00    	jmp    *0x5b76(%rip)        # 140008224 <__imp__cexit>
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <_amsg_exit>:
   1400026b0:	ff 25 66 5b 00 00    	jmp    *0x5b66(%rip)        # 14000821c <__imp__amsg_exit>
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop

00000001400026b8 <__setusermatherr>:
   1400026b8:	ff 25 4e 5b 00 00    	jmp    *0x5b4e(%rip)        # 14000820c <__imp___setusermatherr>
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <__set_app_type>:
   1400026c0:	ff 25 3e 5b 00 00    	jmp    *0x5b3e(%rip)        # 140008204 <__imp___set_app_type>
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop

00000001400026c8 <__lconv_init>:
   1400026c8:	ff 25 2e 5b 00 00    	jmp    *0x5b2e(%rip)        # 1400081fc <__imp___lconv_init>
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <__getmainargs>:
   1400026d0:	ff 25 0e 5b 00 00    	jmp    *0x5b0e(%rip)        # 1400081e4 <__imp___getmainargs>
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop

00000001400026d8 <__C_specific_handler>:
   1400026d8:	ff 25 fe 5a 00 00    	jmp    *0x5afe(%rip)        # 1400081dc <__imp___C_specific_handler>
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <__acrt_iob_func>:
   1400026e0:	53                   	push   %rbx
   1400026e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400026e5:	89 cb                	mov    %ecx,%ebx
   1400026e7:	e8 64 00 00 00       	call   140002750 <__iob_func>
   1400026ec:	89 d9                	mov    %ebx,%ecx
   1400026ee:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   1400026f2:	48 c1 e2 04          	shl    $0x4,%rdx
   1400026f6:	48 01 d0             	add    %rdx,%rax
   1400026f9:	48 83 c4 20          	add    $0x20,%rsp
   1400026fd:	5b                   	pop    %rbx
   1400026fe:	c3                   	ret    
   1400026ff:	90                   	nop

0000000140002700 <_get_invalid_parameter_handler>:
   140002700:	48 8b 05 69 4a 00 00 	mov    0x4a69(%rip),%rax        # 140007170 <handler>
   140002707:	c3                   	ret    
   140002708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000270f:	00 

0000000140002710 <_set_invalid_parameter_handler>:
   140002710:	48 89 c8             	mov    %rcx,%rax
   140002713:	48 87 05 56 4a 00 00 	xchg   %rax,0x4a56(%rip)        # 140007170 <handler>
   14000271a:	c3                   	ret    
   14000271b:	90                   	nop
   14000271c:	90                   	nop
   14000271d:	90                   	nop
   14000271e:	90                   	nop
   14000271f:	90                   	nop

0000000140002720 <__p__acmdln>:
   140002720:	48 8b 05 59 1c 00 00 	mov    0x1c59(%rip),%rax        # 140004380 <.refptr.__imp__acmdln>
   140002727:	48 8b 00             	mov    (%rax),%rax
   14000272a:	c3                   	ret    
   14000272b:	90                   	nop
   14000272c:	90                   	nop
   14000272d:	90                   	nop
   14000272e:	90                   	nop
   14000272f:	90                   	nop

0000000140002730 <__p__commode>:
   140002730:	48 8b 05 59 1c 00 00 	mov    0x1c59(%rip),%rax        # 140004390 <.refptr.__imp__commode>
   140002737:	48 8b 00             	mov    (%rax),%rax
   14000273a:	c3                   	ret    
   14000273b:	90                   	nop
   14000273c:	90                   	nop
   14000273d:	90                   	nop
   14000273e:	90                   	nop
   14000273f:	90                   	nop

0000000140002740 <__p__fmode>:
   140002740:	48 8b 05 59 1c 00 00 	mov    0x1c59(%rip),%rax        # 1400043a0 <.refptr.__imp__fmode>
   140002747:	48 8b 00             	mov    (%rax),%rax
   14000274a:	c3                   	ret    
   14000274b:	90                   	nop
   14000274c:	90                   	nop
   14000274d:	90                   	nop
   14000274e:	90                   	nop
   14000274f:	90                   	nop

0000000140002750 <__iob_func>:
   140002750:	ff 25 9e 5a 00 00    	jmp    *0x5a9e(%rip)        # 1400081f4 <__imp___iob_func>
   140002756:	90                   	nop
   140002757:	90                   	nop
   140002758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000275f:	00 

0000000140002760 <VirtualQuery>:
   140002760:	ff 25 66 5a 00 00    	jmp    *0x5a66(%rip)        # 1400081cc <__imp_VirtualQuery>
   140002766:	90                   	nop
   140002767:	90                   	nop

0000000140002768 <VirtualProtect>:
   140002768:	ff 25 56 5a 00 00    	jmp    *0x5a56(%rip)        # 1400081c4 <__imp_VirtualProtect>
   14000276e:	90                   	nop
   14000276f:	90                   	nop

0000000140002770 <TlsGetValue>:
   140002770:	ff 25 46 5a 00 00    	jmp    *0x5a46(%rip)        # 1400081bc <__imp_TlsGetValue>
   140002776:	90                   	nop
   140002777:	90                   	nop

0000000140002778 <Sleep>:
   140002778:	ff 25 36 5a 00 00    	jmp    *0x5a36(%rip)        # 1400081b4 <__imp_Sleep>
   14000277e:	90                   	nop
   14000277f:	90                   	nop

0000000140002780 <SetUnhandledExceptionFilter>:
   140002780:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 1400081ac <__imp_SetUnhandledExceptionFilter>
   140002786:	90                   	nop
   140002787:	90                   	nop

0000000140002788 <LeaveCriticalSection>:
   140002788:	ff 25 16 5a 00 00    	jmp    *0x5a16(%rip)        # 1400081a4 <__imp_LeaveCriticalSection>
   14000278e:	90                   	nop
   14000278f:	90                   	nop

0000000140002790 <InitializeCriticalSection>:
   140002790:	ff 25 06 5a 00 00    	jmp    *0x5a06(%rip)        # 14000819c <__imp_InitializeCriticalSection>
   140002796:	90                   	nop
   140002797:	90                   	nop

0000000140002798 <GetStartupInfoA>:
   140002798:	ff 25 f6 59 00 00    	jmp    *0x59f6(%rip)        # 140008194 <__imp_GetStartupInfoA>
   14000279e:	90                   	nop
   14000279f:	90                   	nop

00000001400027a0 <GetLastError>:
   1400027a0:	ff 25 e6 59 00 00    	jmp    *0x59e6(%rip)        # 14000818c <__imp_GetLastError>
   1400027a6:	90                   	nop
   1400027a7:	90                   	nop

00000001400027a8 <EnterCriticalSection>:
   1400027a8:	ff 25 d6 59 00 00    	jmp    *0x59d6(%rip)        # 140008184 <__imp_EnterCriticalSection>
   1400027ae:	90                   	nop
   1400027af:	90                   	nop

00000001400027b0 <DeleteCriticalSection>:
   1400027b0:	ff 25 c6 59 00 00    	jmp    *0x59c6(%rip)        # 14000817c <__IAT_start__>
   1400027b6:	90                   	nop
   1400027b7:	90                   	nop
   1400027b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400027bf:	00 

00000001400027c0 <main>:
   1400027c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400027c4:	e8 37 ee ff ff       	call   140001600 <__main>
   1400027c9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400027ce:	ff 15 8c 08 00 00    	call   *0x88c(%rip)        # 140003060 <__imp___acrt_iob_func>
   1400027d4:	48 8d 0d 25 18 00 00 	lea    0x1825(%rip),%rcx        # 140004000 <.rdata>
   1400027db:	48 89 c2             	mov    %rax,%rdx
   1400027de:	e8 8d fe ff ff       	call   140002670 <fputs>
   1400027e3:	31 c0                	xor    %eax,%eax
   1400027e5:	48 83 c4 28          	add    $0x28,%rsp
   1400027e9:	c3                   	ret    
   1400027ea:	90                   	nop
   1400027eb:	90                   	nop
   1400027ec:	90                   	nop
   1400027ed:	90                   	nop
   1400027ee:	90                   	nop
   1400027ef:	90                   	nop

00000001400027f0 <register_frame_ctor>:
   1400027f0:	e9 3b ed ff ff       	jmp    140001530 <__gcc_register_frame>
   1400027f5:	90                   	nop
   1400027f6:	90                   	nop
   1400027f7:	90                   	nop
   1400027f8:	90                   	nop
   1400027f9:	90                   	nop
   1400027fa:	90                   	nop
   1400027fb:	90                   	nop
   1400027fc:	90                   	nop
   1400027fd:	90                   	nop
   1400027fe:	90                   	nop
   1400027ff:	90                   	nop

0000000140002800 <__CTOR_LIST__>:
   140002800:	ff                   	(bad)  
   140002801:	ff                   	(bad)  
   140002802:	ff                   	(bad)  
   140002803:	ff                   	(bad)  
   140002804:	ff                   	(bad)  
   140002805:	ff                   	(bad)  
   140002806:	ff                   	(bad)  
   140002807:	ff                 	push   %rax

0000000140002808 <.ctors.65535>:
   140002808:	f0 27                	lock (bad) 
   14000280a:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002818 <__DTOR_LIST__>:
   140002818:	ff                   	(bad)  
   140002819:	ff                   	(bad)  
   14000281a:	ff                   	(bad)  
   14000281b:	ff                   	(bad)  
   14000281c:	ff                   	(bad)  
   14000281d:	ff                   	(bad)  
   14000281e:	ff                   	(bad)  
   14000281f:	ff 00                	incl   (%rax)
   140002821:	00 00                	add    %al,(%rax)
   140002823:	00 00                	add    %al,(%rax)
   140002825:	00 00                	add    %al,(%rax)
	...
