
test/hello64.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    rsp,0x28
   140001014:	48 8b 05 15 88 00 00 	mov    rax,QWORD PTR [rip+0x8815]        # 140009830 <.refptr.mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    ecx,ecx
   14000101d:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001023:	48 8b 05 16 88 00 00 	mov    rax,QWORD PTR [rip+0x8816]        # 140009840 <.refptr.mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001030:	48 8b 05 19 88 00 00 	mov    rax,QWORD PTR [rip+0x8819]        # 140009850 <.refptr.mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000103d:	48 8b 05 dc 87 00 00 	mov    rax,QWORD PTR [rip+0x87dc]        # 140009820 <.refptr.mingw_initcharmax>
   140001044:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000104a:	48 8b 05 8f 86 00 00 	mov    rax,QWORD PTR [rip+0x868f]        # 1400096e0 <.refptr.__image_base__>
   140001051:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   140001056:	75 0f                	jne    140001067 <pre_c_init+0x57>
   140001058:	48 63 50 3c          	movsxd rdx,DWORD PTR [rax+0x3c]
   14000105c:	48 01 d0             	add    rax,rdx
   14000105f:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   140001065:	74 69                	je     1400010d0 <pre_c_init+0xc0>
   140001067:	48 8b 05 a2 87 00 00 	mov    rax,QWORD PTR [rip+0x87a2]        # 140009810 <.refptr.mingw_app_type>
   14000106e:	89 0d 98 af 00 00    	mov    DWORD PTR [rip+0xaf98],ecx        # 14000c00c <managedapp>
   140001074:	8b 00                	mov    eax,DWORD PTR [rax]
   140001076:	85 c0                	test   eax,eax
   140001078:	75 46                	jne    1400010c0 <pre_c_init+0xb0>
   14000107a:	b9 01 00 00 00       	mov    ecx,0x1
   14000107f:	e8 3c 62 00 00       	call   1400072c0 <__set_app_type>
   140001084:	e8 c7 68 00 00       	call   140007950 <__p__fmode>
   140001089:	48 8b 15 40 87 00 00 	mov    rdx,QWORD PTR [rip+0x8740]        # 1400097d0 <.refptr._fmode>
   140001090:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001092:	89 10                	mov    DWORD PTR [rax],edx
   140001094:	e8 a7 68 00 00       	call   140007940 <__p__commode>
   140001099:	48 8b 15 10 87 00 00 	mov    rdx,QWORD PTR [rip+0x8710]        # 1400097b0 <.refptr._commode>
   1400010a0:	8b 12                	mov    edx,DWORD PTR [rdx]
   1400010a2:	89 10                	mov    DWORD PTR [rax],edx
   1400010a4:	e8 07 06 00 00       	call   1400016b0 <_setargv>
   1400010a9:	48 8b 05 e0 85 00 00 	mov    rax,QWORD PTR [rip+0x85e0]        # 140009690 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010b0:	83 38 01             	cmp    DWORD PTR [rax],0x1
   1400010b3:	74 53                	je     140001108 <pre_c_init+0xf8>
   1400010b5:	31 c0                	xor    eax,eax
   1400010b7:	48 83 c4 28          	add    rsp,0x28
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400010c0:	b9 02 00 00 00       	mov    ecx,0x2
   1400010c5:	e8 f6 61 00 00       	call   1400072c0 <__set_app_type>
   1400010ca:	eb b8                	jmp    140001084 <pre_c_init+0x74>
   1400010cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400010d0:	0f b7 50 18          	movzx  edx,WORD PTR [rax+0x18]
   1400010d4:	66 81 fa 0b 01       	cmp    dx,0x10b
   1400010d9:	74 45                	je     140001120 <pre_c_init+0x110>
   1400010db:	66 81 fa 0b 02       	cmp    dx,0x20b
   1400010e0:	75 85                	jne    140001067 <pre_c_init+0x57>
   1400010e2:	83 b8 84 00 00 00 0e 	cmp    DWORD PTR [rax+0x84],0xe
   1400010e9:	0f 86 78 ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   1400010ef:	8b 90 f8 00 00 00    	mov    edx,DWORD PTR [rax+0xf8]
   1400010f5:	31 c9                	xor    ecx,ecx
   1400010f7:	85 d2                	test   edx,edx
   1400010f9:	0f 95 c1             	setne  cl
   1400010fc:	e9 66 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   140001101:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001108:	48 8d 0d 81 06 00 00 	lea    rcx,[rip+0x681]        # 140001790 <_matherr>
   14000110f:	e8 5c 0d 00 00       	call   140001e70 <__mingw_setusermatherr>
   140001114:	31 c0                	xor    eax,eax
   140001116:	48 83 c4 28          	add    rsp,0x28
   14000111a:	c3                   	ret    
   14000111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001120:	83 78 74 0e          	cmp    DWORD PTR [rax+0x74],0xe
   140001124:	0f 86 3d ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   14000112a:	44 8b 80 e8 00 00 00 	mov    r8d,DWORD PTR [rax+0xe8]
   140001131:	31 c9                	xor    ecx,ecx
   140001133:	45 85 c0             	test   r8d,r8d
   140001136:	0f 95 c1             	setne  cl
   140001139:	e9 29 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   14000113e:	66 90                	xchg   ax,ax

0000000140001140 <pre_cpp_init>:
   140001140:	48 83 ec 38          	sub    rsp,0x38
   140001144:	48 8b 05 b5 86 00 00 	mov    rax,QWORD PTR [rip+0x86b5]        # 140009800 <.refptr._newmode>
   14000114b:	4c 8d 05 c6 ae 00 00 	lea    r8,[rip+0xaec6]        # 14000c018 <envp>
   140001152:	48 8d 15 c7 ae 00 00 	lea    rdx,[rip+0xaec7]        # 14000c020 <argv>
   140001159:	48 8d 0d c8 ae 00 00 	lea    rcx,[rip+0xaec8]        # 14000c028 <argc>
   140001160:	8b 00                	mov    eax,DWORD PTR [rax]
   140001162:	89 05 9c ae 00 00    	mov    DWORD PTR [rip+0xae9c],eax        # 14000c004 <startinfo>
   140001168:	48 8d 05 95 ae 00 00 	lea    rax,[rip+0xae95]        # 14000c004 <startinfo>
   14000116f:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140001174:	48 8b 05 45 86 00 00 	mov    rax,QWORD PTR [rip+0x8645]        # 1400097c0 <.refptr._dowildcard>
   14000117b:	44 8b 08             	mov    r9d,DWORD PTR [rax]
   14000117e:	e8 4d 61 00 00       	call   1400072d0 <__getmainargs>
   140001183:	90                   	nop
   140001184:	48 83 c4 38          	add    rsp,0x38
   140001188:	c3                   	ret    
   140001189:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140001190 <__tmainCRTStartup>:
   140001190:	41 55                	push   r13
   140001192:	41 54                	push   r12
   140001194:	55                   	push   rbp
   140001195:	57                   	push   rdi
   140001196:	56                   	push   rsi
   140001197:	53                   	push   rbx
   140001198:	48 81 ec 98 00 00 00 	sub    rsp,0x98
   14000119f:	b9 0d 00 00 00       	mov    ecx,0xd
   1400011a4:	31 c0                	xor    eax,eax
   1400011a6:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
   1400011ab:	4c 89 c7             	mov    rdi,r8
   1400011ae:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
   1400011b1:	48 8b 3d 58 86 00 00 	mov    rdi,QWORD PTR [rip+0x8658]        # 140009810 <.refptr.mingw_app_type>
   1400011b8:	44 8b 0f             	mov    r9d,DWORD PTR [rdi]
   1400011bb:	45 85 c9             	test   r9d,r9d
   1400011be:	0f 85 ac 02 00 00    	jne    140001470 <__tmainCRTStartup+0x2e0>
   1400011c4:	65 48 8b 04 25 30 00 	mov    rax,QWORD PTR gs:0x30
   1400011cb:	00 00 
   1400011cd:	48 8b 1d 6c 85 00 00 	mov    rbx,QWORD PTR [rip+0x856c]        # 140009740 <.refptr.__native_startup_lock>
   1400011d4:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
   1400011d8:	31 ed                	xor    ebp,ebp
   1400011da:	4c 8b 25 3b c0 00 00 	mov    r12,QWORD PTR [rip+0xc03b]        # 14000d21c <__imp_Sleep>
   1400011e1:	eb 16                	jmp    1400011f9 <__tmainCRTStartup+0x69>
   1400011e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400011e8:	48 39 c6             	cmp    rsi,rax
   1400011eb:	0f 84 1f 02 00 00    	je     140001410 <__tmainCRTStartup+0x280>
   1400011f1:	b9 e8 03 00 00       	mov    ecx,0x3e8
   1400011f6:	41 ff d4             	call   r12
   1400011f9:	48 89 e8             	mov    rax,rbp
   1400011fc:	f0 48 0f b1 33       	lock cmpxchg QWORD PTR [rbx],rsi
   140001201:	48 85 c0             	test   rax,rax
   140001204:	75 e2                	jne    1400011e8 <__tmainCRTStartup+0x58>
   140001206:	48 8b 35 43 85 00 00 	mov    rsi,QWORD PTR [rip+0x8543]        # 140009750 <.refptr.__native_startup_state>
   14000120d:	31 ed                	xor    ebp,ebp
   14000120f:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001211:	83 f8 01             	cmp    eax,0x1
   140001214:	0f 84 0d 02 00 00    	je     140001427 <__tmainCRTStartup+0x297>
   14000121a:	8b 06                	mov    eax,DWORD PTR [rsi]
   14000121c:	85 c0                	test   eax,eax
   14000121e:	0f 84 7c 02 00 00    	je     1400014a0 <__tmainCRTStartup+0x310>
   140001224:	c7 05 da ad 00 00 01 	mov    DWORD PTR [rip+0xadda],0x1        # 14000c008 <has_cctor>
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001230:	83 f8 01             	cmp    eax,0x1
   140001233:	0f 84 03 02 00 00    	je     14000143c <__tmainCRTStartup+0x2ac>
   140001239:	85 ed                	test   ebp,ebp
   14000123b:	0f 84 1c 02 00 00    	je     14000145d <__tmainCRTStartup+0x2cd>
   140001241:	48 8b 05 88 84 00 00 	mov    rax,QWORD PTR [rip+0x8488]        # 1400096d0 <.refptr.__dyn_tls_init_callback>
   140001248:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000124b:	48 85 c0             	test   rax,rax
   14000124e:	74 0c                	je     14000125c <__tmainCRTStartup+0xcc>
   140001250:	45 31 c0             	xor    r8d,r8d
   140001253:	ba 02 00 00 00       	mov    edx,0x2
   140001258:	31 c9                	xor    ecx,ecx
   14000125a:	ff d0                	call   rax
   14000125c:	e8 cf 08 00 00       	call   140001b30 <_pei386_runtime_relocator>
   140001261:	48 8d 0d 18 0c 00 00 	lea    rcx,[rip+0xc18]        # 140001e80 <_gnu_exception_handler>
   140001268:	ff 15 a6 bf 00 00    	call   QWORD PTR [rip+0xbfa6]        # 14000d214 <__imp_SetUnhandledExceptionFilter>
   14000126e:	48 8b 15 bb 84 00 00 	mov    rdx,QWORD PTR [rip+0x84bb]        # 140009730 <.refptr.__mingw_oldexcpt_handler>
   140001275:	48 8d 0d 84 fd ff ff 	lea    rcx,[rip+0xfffffffffffffd84]        # 140001000 <__mingw_invalidParameterHandler>
   14000127c:	48 89 02             	mov    QWORD PTR [rdx],rax
   14000127f:	e8 cc 65 00 00       	call   140007850 <_set_invalid_parameter_handler>
   140001284:	e8 07 06 00 00       	call   140001890 <_fpreset>
   140001289:	48 8b 05 50 84 00 00 	mov    rax,QWORD PTR [rip+0x8450]        # 1400096e0 <.refptr.__image_base__>
   140001290:	48 89 05 f1 b8 00 00 	mov    QWORD PTR [rip+0xb8f1],rax        # 14000cb88 <__mingw_winmain_hInstance>
   140001297:	e8 94 66 00 00       	call   140007930 <__p__acmdln>
   14000129c:	31 c9                	xor    ecx,ecx
   14000129e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400012a1:	48 85 c0             	test   rax,rax
   1400012a4:	75 1c                	jne    1400012c2 <__tmainCRTStartup+0x132>
   1400012a6:	eb 58                	jmp    140001300 <__tmainCRTStartup+0x170>
   1400012a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400012af:	00 
   1400012b0:	84 d2                	test   dl,dl
   1400012b2:	74 45                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012b4:	83 e1 01             	and    ecx,0x1
   1400012b7:	74 27                	je     1400012e0 <__tmainCRTStartup+0x150>
   1400012b9:	b9 01 00 00 00       	mov    ecx,0x1
   1400012be:	48 83 c0 01          	add    rax,0x1
   1400012c2:	0f b6 10             	movzx  edx,BYTE PTR [rax]
   1400012c5:	80 fa 20             	cmp    dl,0x20
   1400012c8:	7e e6                	jle    1400012b0 <__tmainCRTStartup+0x120>
   1400012ca:	41 89 c8             	mov    r8d,ecx
   1400012cd:	41 83 f0 01          	xor    r8d,0x1
   1400012d1:	80 fa 22             	cmp    dl,0x22
   1400012d4:	41 0f 44 c8          	cmove  ecx,r8d
   1400012d8:	eb e4                	jmp    1400012be <__tmainCRTStartup+0x12e>
   1400012da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400012e0:	84 d2                	test   dl,dl
   1400012e2:	74 15                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012e4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400012e8:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
   1400012ec:	48 83 c0 01          	add    rax,0x1
   1400012f0:	84 d2                	test   dl,dl
   1400012f2:	74 05                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012f4:	80 fa 20             	cmp    dl,0x20
   1400012f7:	7e ef                	jle    1400012e8 <__tmainCRTStartup+0x158>
   1400012f9:	48 89 05 80 b8 00 00 	mov    QWORD PTR [rip+0xb880],rax        # 14000cb80 <__mingw_winmain_lpCmdLine>
   140001300:	44 8b 07             	mov    r8d,DWORD PTR [rdi]
   140001303:	45 85 c0             	test   r8d,r8d
   140001306:	74 16                	je     14000131e <__tmainCRTStartup+0x18e>
   140001308:	b8 0a 00 00 00       	mov    eax,0xa
   14000130d:	f6 44 24 5c 01       	test   BYTE PTR [rsp+0x5c],0x1
   140001312:	0f 85 e8 00 00 00    	jne    140001400 <__tmainCRTStartup+0x270>
   140001318:	89 05 e2 6c 00 00    	mov    DWORD PTR [rip+0x6ce2],eax        # 140008000 <__data_start__>
   14000131e:	8b 1d 04 ad 00 00    	mov    ebx,DWORD PTR [rip+0xad04]        # 14000c028 <argc>
   140001324:	44 8d 63 01          	lea    r12d,[rbx+0x1]
   140001328:	4d 63 e4             	movsxd r12,r12d
   14000132b:	49 c1 e4 03          	shl    r12,0x3
   14000132f:	4c 89 e1             	mov    rcx,r12
   140001332:	e8 11 5f 00 00       	call   140007248 <malloc>
   140001337:	4c 8b 2d e2 ac 00 00 	mov    r13,QWORD PTR [rip+0xace2]        # 14000c020 <argv>
   14000133e:	48 89 c7             	mov    rdi,rax
   140001341:	85 db                	test   ebx,ebx
   140001343:	7e 46                	jle    14000138b <__tmainCRTStartup+0x1fb>
   140001345:	8d 6b ff             	lea    ebp,[rbx-0x1]
   140001348:	31 db                	xor    ebx,ebx
   14000134a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001350:	49 8b 4c dd 00       	mov    rcx,QWORD PTR [r13+rbx*8+0x0]
   140001355:	e8 ce 5e 00 00       	call   140007228 <strlen>
   14000135a:	48 8d 70 01          	lea    rsi,[rax+0x1]
   14000135e:	48 89 f1             	mov    rcx,rsi
   140001361:	e8 e2 5e 00 00       	call   140007248 <malloc>
   140001366:	49 89 f0             	mov    r8,rsi
   140001369:	48 89 04 df          	mov    QWORD PTR [rdi+rbx*8],rax
   14000136d:	49 8b 54 dd 00       	mov    rdx,QWORD PTR [r13+rbx*8+0x0]
   140001372:	48 89 c1             	mov    rcx,rax
   140001375:	e8 c6 5e 00 00       	call   140007240 <memcpy>
   14000137a:	48 89 d8             	mov    rax,rbx
   14000137d:	48 83 c3 01          	add    rbx,0x1
   140001381:	48 39 c5             	cmp    rbp,rax
   140001384:	75 ca                	jne    140001350 <__tmainCRTStartup+0x1c0>
   140001386:	4a 8d 44 27 f8       	lea    rax,[rdi+r12*1-0x8]
   14000138b:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   140001392:	48 89 3d 87 ac 00 00 	mov    QWORD PTR [rip+0xac87],rdi        # 14000c020 <argv>
   140001399:	e8 e2 02 00 00       	call   140001680 <__main>
   14000139e:	48 8b 05 4b 83 00 00 	mov    rax,QWORD PTR [rip+0x834b]        # 1400096f0 <.refptr.__imp___initenv>
   1400013a5:	4c 8b 05 6c ac 00 00 	mov    r8,QWORD PTR [rip+0xac6c]        # 14000c018 <envp>
   1400013ac:	8b 0d 76 ac 00 00    	mov    ecx,DWORD PTR [rip+0xac76]        # 14000c028 <argc>
   1400013b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400013b5:	4c 89 00             	mov    QWORD PTR [rax],r8
   1400013b8:	48 8b 15 61 ac 00 00 	mov    rdx,QWORD PTR [rip+0xac61]        # 14000c020 <argv>
   1400013bf:	e8 dd 01 00 00       	call   1400015a1 <main>
   1400013c4:	8b 0d 42 ac 00 00    	mov    ecx,DWORD PTR [rip+0xac42]        # 14000c00c <managedapp>
   1400013ca:	89 05 40 ac 00 00    	mov    DWORD PTR [rip+0xac40],eax        # 14000c010 <mainret>
   1400013d0:	85 c9                	test   ecx,ecx
   1400013d2:	0f 84 e6 00 00 00    	je     1400014be <__tmainCRTStartup+0x32e>
   1400013d8:	8b 15 2a ac 00 00    	mov    edx,DWORD PTR [rip+0xac2a]        # 14000c008 <has_cctor>
   1400013de:	85 d2                	test   edx,edx
   1400013e0:	0f 84 9a 00 00 00    	je     140001480 <__tmainCRTStartup+0x2f0>
   1400013e6:	48 81 c4 98 00 00 00 	add    rsp,0x98
   1400013ed:	5b                   	pop    rbx
   1400013ee:	5e                   	pop    rsi
   1400013ef:	5f                   	pop    rdi
   1400013f0:	5d                   	pop    rbp
   1400013f1:	41 5c                	pop    r12
   1400013f3:	41 5d                	pop    r13
   1400013f5:	c3                   	ret    
   1400013f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400013fd:	00 00 00 
   140001400:	0f b7 44 24 60       	movzx  eax,WORD PTR [rsp+0x60]
   140001405:	e9 0e ff ff ff       	jmp    140001318 <__tmainCRTStartup+0x188>
   14000140a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001410:	48 8b 35 39 83 00 00 	mov    rsi,QWORD PTR [rip+0x8339]        # 140009750 <.refptr.__native_startup_state>
   140001417:	bd 01 00 00 00       	mov    ebp,0x1
   14000141c:	8b 06                	mov    eax,DWORD PTR [rsi]
   14000141e:	83 f8 01             	cmp    eax,0x1
   140001421:	0f 85 f3 fd ff ff    	jne    14000121a <__tmainCRTStartup+0x8a>
   140001427:	b9 1f 00 00 00       	mov    ecx,0x1f
   14000142c:	e8 7f 5e 00 00       	call   1400072b0 <_amsg_exit>
   140001431:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001433:	83 f8 01             	cmp    eax,0x1
   140001436:	0f 85 fd fd ff ff    	jne    140001239 <__tmainCRTStartup+0xa9>
   14000143c:	48 8b 15 3d 83 00 00 	mov    rdx,QWORD PTR [rip+0x833d]        # 140009780 <.refptr.__xc_z>
   140001443:	48 8b 0d 26 83 00 00 	mov    rcx,QWORD PTR [rip+0x8326]        # 140009770 <.refptr.__xc_a>
   14000144a:	e8 49 5e 00 00       	call   140007298 <_initterm>
   14000144f:	c7 06 02 00 00 00    	mov    DWORD PTR [rsi],0x2
   140001455:	85 ed                	test   ebp,ebp
   140001457:	0f 85 e4 fd ff ff    	jne    140001241 <__tmainCRTStartup+0xb1>
   14000145d:	31 c0                	xor    eax,eax
   14000145f:	48 87 03             	xchg   QWORD PTR [rbx],rax
   140001462:	e9 da fd ff ff       	jmp    140001241 <__tmainCRTStartup+0xb1>
   140001467:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000146e:	00 00 
   140001470:	4c 89 c1             	mov    rcx,r8
   140001473:	ff 15 73 bd 00 00    	call   QWORD PTR [rip+0xbd73]        # 14000d1ec <__imp_GetStartupInfoA>
   140001479:	e9 46 fd ff ff       	jmp    1400011c4 <__tmainCRTStartup+0x34>
   14000147e:	66 90                	xchg   ax,ax
   140001480:	e8 23 5e 00 00       	call   1400072a8 <_cexit>
   140001485:	8b 05 85 ab 00 00    	mov    eax,DWORD PTR [rip+0xab85]        # 14000c010 <mainret>
   14000148b:	48 81 c4 98 00 00 00 	add    rsp,0x98
   140001492:	5b                   	pop    rbx
   140001493:	5e                   	pop    rsi
   140001494:	5f                   	pop    rdi
   140001495:	5d                   	pop    rbp
   140001496:	41 5c                	pop    r12
   140001498:	41 5d                	pop    r13
   14000149a:	c3                   	ret    
   14000149b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400014a0:	48 8b 15 f9 82 00 00 	mov    rdx,QWORD PTR [rip+0x82f9]        # 1400097a0 <.refptr.__xi_z>
   1400014a7:	48 8b 0d e2 82 00 00 	mov    rcx,QWORD PTR [rip+0x82e2]        # 140009790 <.refptr.__xi_a>
   1400014ae:	c7 06 01 00 00 00    	mov    DWORD PTR [rsi],0x1
   1400014b4:	e8 df 5d 00 00       	call   140007298 <_initterm>
   1400014b9:	e9 70 fd ff ff       	jmp    14000122e <__tmainCRTStartup+0x9e>
   1400014be:	89 c1                	mov    ecx,eax
   1400014c0:	e8 b3 5d 00 00       	call   140007278 <exit>
   1400014c5:	90                   	nop
   1400014c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400014cd:	00 00 00 

00000001400014d0 <WinMainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    rsp,0x28

00000001400014d4 <.l_startw>:
   1400014d4:	48 8b 05 35 83 00 00 	mov    rax,QWORD PTR [rip+0x8335]        # 140009810 <.refptr.mingw_app_type>
   1400014db:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400014e1:	e8 aa fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_endw>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    rsp,0x28
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400014f0 <mainCRTStartup>:
   1400014f0:	48 83 ec 28          	sub    rsp,0x28

00000001400014f4 <.l_start>:
   1400014f4:	48 8b 05 15 83 00 00 	mov    rax,QWORD PTR [rip+0x8315]        # 140009810 <.refptr.mingw_app_type>
   1400014fb:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001501:	e8 8a fc ff ff       	call   140001190 <__tmainCRTStartup>
   140001506:	90                   	nop

0000000140001507 <.l_end>:
   140001507:	90                   	nop
   140001508:	48 83 c4 28          	add    rsp,0x28
   14000150c:	c3                   	ret    
   14000150d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001510 <atexit>:
   140001510:	48 83 ec 28          	sub    rsp,0x28
   140001514:	e8 77 5d 00 00       	call   140007290 <_onexit>
   140001519:	48 85 c0             	test   rax,rax
   14000151c:	0f 94 c0             	sete   al
   14000151f:	0f b6 c0             	movzx  eax,al
   140001522:	f7 d8                	neg    eax
   140001524:	48 83 c4 28          	add    rsp,0x28
   140001528:	c3                   	ret    
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
   14000152f:	90                   	nop

0000000140001530 <__gcc_register_frame>:
   140001530:	48 8d 0d 09 00 00 00 	lea    rcx,[rip+0x9]        # 140001540 <__gcc_deregister_frame>
   140001537:	e9 d4 ff ff ff       	jmp    140001510 <atexit>
   14000153c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

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

0000000140001550 <printf>:
   140001550:	55                   	push   rbp
   140001551:	53                   	push   rbx
   140001552:	48 83 ec 38          	sub    rsp,0x38
   140001556:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000155b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   14000155f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140001563:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001567:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   14000156b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   14000156f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001573:	48 8b 5d f0          	mov    rbx,QWORD PTR [rbp-0x10]
   140001577:	b9 01 00 00 00       	mov    ecx,0x1
   14000157c:	48 8b 05 0d 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b0d]        # 140008090 <__imp___acrt_iob_func>
   140001583:	ff d0                	call   rax
   140001585:	49 89 d8             	mov    r8,rbx
   140001588:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   14000158c:	48 89 c1             	mov    rcx,rax
   14000158f:	e8 1c 11 00 00       	call   1400026b0 <__mingw_vfprintf>
   140001594:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140001597:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000159a:	48 83 c4 38          	add    rsp,0x38
   14000159e:	5b                   	pop    rbx
   14000159f:	5d                   	pop    rbp
   1400015a0:	c3                   	ret    

00000001400015a1 <main>:
   1400015a1:	55                   	push   rbp
   1400015a2:	48 89 e5             	mov    rbp,rsp
   1400015a5:	48 83 ec 20          	sub    rsp,0x20
   1400015a9:	e8 d2 00 00 00       	call   140001680 <__main>
   1400015ae:	48 8d 0d 4b 7a 00 00 	lea    rcx,[rip+0x7a4b]        # 140009000 <.rdata>
   1400015b5:	e8 96 ff ff ff       	call   140001550 <printf>
   1400015ba:	b8 00 00 00 00       	mov    eax,0x0
   1400015bf:	48 83 c4 20          	add    rsp,0x20
   1400015c3:	5d                   	pop    rbp
   1400015c4:	c3                   	ret    
   1400015c5:	90                   	nop
   1400015c6:	90                   	nop
   1400015c7:	90                   	nop
   1400015c8:	90                   	nop
   1400015c9:	90                   	nop
   1400015ca:	90                   	nop
   1400015cb:	90                   	nop
   1400015cc:	90                   	nop
   1400015cd:	90                   	nop
   1400015ce:	90                   	nop
   1400015cf:	90                   	nop

00000001400015d0 <__do_global_dtors>:
   1400015d0:	48 83 ec 28          	sub    rsp,0x28
   1400015d4:	48 8b 05 35 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a35]        # 140008010 <p.92992>
   1400015db:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400015de:	48 85 c0             	test   rax,rax
   1400015e1:	74 22                	je     140001605 <__do_global_dtors+0x35>
   1400015e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400015e8:	ff d0                	call   rax
   1400015ea:	48 8b 05 1f 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a1f]        # 140008010 <p.92992>
   1400015f1:	48 8d 50 08          	lea    rdx,[rax+0x8]
   1400015f5:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   1400015f9:	48 89 15 10 6a 00 00 	mov    QWORD PTR [rip+0x6a10],rdx        # 140008010 <p.92992>
   140001600:	48 85 c0             	test   rax,rax
   140001603:	75 e3                	jne    1400015e8 <__do_global_dtors+0x18>
   140001605:	48 83 c4 28          	add    rsp,0x28
   140001609:	c3                   	ret    
   14000160a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001610 <__do_global_ctors>:
   140001610:	56                   	push   rsi
   140001611:	53                   	push   rbx
   140001612:	48 83 ec 28          	sub    rsp,0x28
   140001616:	48 8b 15 83 80 00 00 	mov    rdx,QWORD PTR [rip+0x8083]        # 1400096a0 <.refptr.__CTOR_LIST__>
   14000161d:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   140001620:	89 c1                	mov    ecx,eax
   140001622:	83 f8 ff             	cmp    eax,0xffffffff
   140001625:	74 39                	je     140001660 <__do_global_ctors+0x50>
   140001627:	85 c9                	test   ecx,ecx
   140001629:	74 20                	je     14000164b <__do_global_ctors+0x3b>
   14000162b:	89 c8                	mov    eax,ecx
   14000162d:	83 e9 01             	sub    ecx,0x1
   140001630:	48 8d 1c c2          	lea    rbx,[rdx+rax*8]
   140001634:	48 29 c8             	sub    rax,rcx
   140001637:	48 8d 74 c2 f8       	lea    rsi,[rdx+rax*8-0x8]
   14000163c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001640:	ff 13                	call   QWORD PTR [rbx]
   140001642:	48 83 eb 08          	sub    rbx,0x8
   140001646:	48 39 f3             	cmp    rbx,rsi
   140001649:	75 f5                	jne    140001640 <__do_global_ctors+0x30>
   14000164b:	48 8d 0d 7e ff ff ff 	lea    rcx,[rip+0xffffffffffffff7e]        # 1400015d0 <__do_global_dtors>
   140001652:	48 83 c4 28          	add    rsp,0x28
   140001656:	5b                   	pop    rbx
   140001657:	5e                   	pop    rsi
   140001658:	e9 b3 fe ff ff       	jmp    140001510 <atexit>
   14000165d:	0f 1f 00             	nop    DWORD PTR [rax]
   140001660:	31 c0                	xor    eax,eax
   140001662:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001668:	44 8d 40 01          	lea    r8d,[rax+0x1]
   14000166c:	89 c1                	mov    ecx,eax
   14000166e:	4a 83 3c c2 00       	cmp    QWORD PTR [rdx+r8*8],0x0
   140001673:	4c 89 c0             	mov    rax,r8
   140001676:	75 f0                	jne    140001668 <__do_global_ctors+0x58>
   140001678:	eb ad                	jmp    140001627 <__do_global_ctors+0x17>
   14000167a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001680 <__main>:
   140001680:	8b 05 aa a9 00 00    	mov    eax,DWORD PTR [rip+0xa9aa]        # 14000c030 <initialized>
   140001686:	85 c0                	test   eax,eax
   140001688:	74 06                	je     140001690 <__main+0x10>
   14000168a:	c3                   	ret    
   14000168b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001690:	c7 05 96 a9 00 00 01 	mov    DWORD PTR [rip+0xa996],0x1        # 14000c030 <initialized>
   140001697:	00 00 00 
   14000169a:	e9 71 ff ff ff       	jmp    140001610 <__do_global_ctors>
   14000169f:	90                   	nop

00000001400016a0 <my_lconv_init>:
   1400016a0:	48 ff 25 d5 bb 00 00 	rex.W jmp QWORD PTR [rip+0xbbd5]        # 14000d27c <__imp___lconv_init>
   1400016a7:	90                   	nop
   1400016a8:	90                   	nop
   1400016a9:	90                   	nop
   1400016aa:	90                   	nop
   1400016ab:	90                   	nop
   1400016ac:	90                   	nop
   1400016ad:	90                   	nop
   1400016ae:	90                   	nop
   1400016af:	90                   	nop

00000001400016b0 <_setargv>:
   1400016b0:	31 c0                	xor    eax,eax
   1400016b2:	c3                   	ret    
   1400016b3:	90                   	nop
   1400016b4:	90                   	nop
   1400016b5:	90                   	nop
   1400016b6:	90                   	nop
   1400016b7:	90                   	nop
   1400016b8:	90                   	nop
   1400016b9:	90                   	nop
   1400016ba:	90                   	nop
   1400016bb:	90                   	nop
   1400016bc:	90                   	nop
   1400016bd:	90                   	nop
   1400016be:	90                   	nop
   1400016bf:	90                   	nop

00000001400016c0 <__dyn_tls_dtor>:
   1400016c0:	48 83 ec 28          	sub    rsp,0x28
   1400016c4:	83 fa 03             	cmp    edx,0x3
   1400016c7:	74 17                	je     1400016e0 <__dyn_tls_dtor+0x20>
   1400016c9:	85 d2                	test   edx,edx
   1400016cb:	74 13                	je     1400016e0 <__dyn_tls_dtor+0x20>
   1400016cd:	b8 01 00 00 00       	mov    eax,0x1
   1400016d2:	48 83 c4 28          	add    rsp,0x28
   1400016d6:	c3                   	ret    
   1400016d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400016de:	00 00 
   1400016e0:	e8 cb 0a 00 00       	call   1400021b0 <__mingw_TLScallback>
   1400016e5:	b8 01 00 00 00       	mov    eax,0x1
   1400016ea:	48 83 c4 28          	add    rsp,0x28
   1400016ee:	c3                   	ret    
   1400016ef:	90                   	nop

00000001400016f0 <__dyn_tls_init>:
   1400016f0:	56                   	push   rsi
   1400016f1:	53                   	push   rbx
   1400016f2:	48 83 ec 28          	sub    rsp,0x28
   1400016f6:	48 8b 05 83 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f83]        # 140009680 <.refptr._CRT_MT>
   1400016fd:	83 38 02             	cmp    DWORD PTR [rax],0x2
   140001700:	74 06                	je     140001708 <__dyn_tls_init+0x18>
   140001702:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   140001708:	83 fa 02             	cmp    edx,0x2
   14000170b:	74 13                	je     140001720 <__dyn_tls_init+0x30>
   14000170d:	83 fa 01             	cmp    edx,0x1
   140001710:	74 4e                	je     140001760 <__dyn_tls_init+0x70>
   140001712:	b8 01 00 00 00       	mov    eax,0x1
   140001717:	48 83 c4 28          	add    rsp,0x28
   14000171b:	5b                   	pop    rbx
   14000171c:	5e                   	pop    rsi
   14000171d:	c3                   	ret    
   14000171e:	66 90                	xchg   ax,ax
   140001720:	48 8d 1d 39 c9 00 00 	lea    rbx,[rip+0xc939]        # 14000e060 <__xd_z>
   140001727:	48 8d 35 32 c9 00 00 	lea    rsi,[rip+0xc932]        # 14000e060 <__xd_z>
   14000172e:	48 39 de             	cmp    rsi,rbx
   140001731:	74 df                	je     140001712 <__dyn_tls_init+0x22>
   140001733:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001738:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   14000173b:	48 85 c0             	test   rax,rax
   14000173e:	74 02                	je     140001742 <__dyn_tls_init+0x52>
   140001740:	ff d0                	call   rax
   140001742:	48 83 c3 08          	add    rbx,0x8
   140001746:	48 39 de             	cmp    rsi,rbx
   140001749:	75 ed                	jne    140001738 <__dyn_tls_init+0x48>
   14000174b:	b8 01 00 00 00       	mov    eax,0x1
   140001750:	48 83 c4 28          	add    rsp,0x28
   140001754:	5b                   	pop    rbx
   140001755:	5e                   	pop    rsi
   140001756:	c3                   	ret    
   140001757:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000175e:	00 00 
   140001760:	e8 4b 0a 00 00       	call   1400021b0 <__mingw_TLScallback>
   140001765:	b8 01 00 00 00       	mov    eax,0x1
   14000176a:	48 83 c4 28          	add    rsp,0x28
   14000176e:	5b                   	pop    rbx
   14000176f:	5e                   	pop    rsi
   140001770:	c3                   	ret    
   140001771:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001778:	00 00 00 00 
   14000177c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001780 <__tlregdtor>:
   140001780:	31 c0                	xor    eax,eax
   140001782:	c3                   	ret    
   140001783:	90                   	nop
   140001784:	90                   	nop
   140001785:	90                   	nop
   140001786:	90                   	nop
   140001787:	90                   	nop
   140001788:	90                   	nop
   140001789:	90                   	nop
   14000178a:	90                   	nop
   14000178b:	90                   	nop
   14000178c:	90                   	nop
   14000178d:	90                   	nop
   14000178e:	90                   	nop
   14000178f:	90                   	nop

0000000140001790 <_matherr>:
   140001790:	56                   	push   rsi
   140001791:	53                   	push   rbx
   140001792:	48 83 ec 78          	sub    rsp,0x78
   140001796:	0f 11 74 24 40       	movups XMMWORD PTR [rsp+0x40],xmm6
   14000179b:	0f 11 7c 24 50       	movups XMMWORD PTR [rsp+0x50],xmm7
   1400017a0:	44 0f 11 44 24 60    	movups XMMWORD PTR [rsp+0x60],xmm8
   1400017a6:	83 39 06             	cmp    DWORD PTR [rcx],0x6
   1400017a9:	0f 87 cd 00 00 00    	ja     14000187c <_matherr+0xec>
   1400017af:	8b 01                	mov    eax,DWORD PTR [rcx]
   1400017b1:	48 8d 15 ec 79 00 00 	lea    rdx,[rip+0x79ec]        # 1400091a4 <.rdata+0x124>
   1400017b8:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   1400017bc:	48 01 d0             	add    rax,rdx
   1400017bf:	ff e0                	jmp    rax
   1400017c1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400017c8:	48 8d 1d 87 79 00 00 	lea    rbx,[rip+0x7987]        # 140009156 <.rdata+0xd6>
   1400017cf:	f2 44 0f 10 41 20    	movsd  xmm8,QWORD PTR [rcx+0x20]
   1400017d5:	f2 0f 10 79 18       	movsd  xmm7,QWORD PTR [rcx+0x18]
   1400017da:	f2 0f 10 71 10       	movsd  xmm6,QWORD PTR [rcx+0x10]
   1400017df:	48 8b 71 08          	mov    rsi,QWORD PTR [rcx+0x8]
   1400017e3:	b9 02 00 00 00       	mov    ecx,0x2
   1400017e8:	e8 33 60 00 00       	call   140007820 <__acrt_iob_func>
   1400017ed:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   1400017f4:	49 89 d8             	mov    r8,rbx
   1400017f7:	48 8d 15 7a 79 00 00 	lea    rdx,[rip+0x797a]        # 140009178 <.rdata+0xf8>
   1400017fe:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   140001804:	48 89 c1             	mov    rcx,rax
   140001807:	49 89 f1             	mov    r9,rsi
   14000180a:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   140001810:	e8 5b 5a 00 00       	call   140007270 <fprintf>
   140001815:	90                   	nop
   140001816:	0f 10 74 24 40       	movups xmm6,XMMWORD PTR [rsp+0x40]
   14000181b:	0f 10 7c 24 50       	movups xmm7,XMMWORD PTR [rsp+0x50]
   140001820:	31 c0                	xor    eax,eax
   140001822:	44 0f 10 44 24 60    	movups xmm8,XMMWORD PTR [rsp+0x60]
   140001828:	48 83 c4 78          	add    rsp,0x78
   14000182c:	5b                   	pop    rbx
   14000182d:	5e                   	pop    rsi
   14000182e:	c3                   	ret    
   14000182f:	90                   	nop
   140001830:	48 8d 1d 59 78 00 00 	lea    rbx,[rip+0x7859]        # 140009090 <.rdata+0x10>
   140001837:	eb 96                	jmp    1400017cf <_matherr+0x3f>
   140001839:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001840:	48 8d 1d 89 78 00 00 	lea    rbx,[rip+0x7889]        # 1400090d0 <.rdata+0x50>
   140001847:	eb 86                	jmp    1400017cf <_matherr+0x3f>
   140001849:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001850:	48 8d 1d 59 78 00 00 	lea    rbx,[rip+0x7859]        # 1400090b0 <.rdata+0x30>
   140001857:	e9 73 ff ff ff       	jmp    1400017cf <_matherr+0x3f>
   14000185c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001860:	48 8d 1d b9 78 00 00 	lea    rbx,[rip+0x78b9]        # 140009120 <.rdata+0xa0>
   140001867:	e9 63 ff ff ff       	jmp    1400017cf <_matherr+0x3f>
   14000186c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001870:	48 8d 1d 81 78 00 00 	lea    rbx,[rip+0x7881]        # 1400090f8 <.rdata+0x78>
   140001877:	e9 53 ff ff ff       	jmp    1400017cf <_matherr+0x3f>
   14000187c:	48 8d 1d fd 77 00 00 	lea    rbx,[rip+0x77fd]        # 140009080 <.rdata>
   140001883:	e9 47 ff ff ff       	jmp    1400017cf <_matherr+0x3f>
   140001888:	90                   	nop
   140001889:	90                   	nop
   14000188a:	90                   	nop
   14000188b:	90                   	nop
   14000188c:	90                   	nop
   14000188d:	90                   	nop
   14000188e:	90                   	nop
   14000188f:	90                   	nop

0000000140001890 <_fpreset>:
   140001890:	db e3                	fninit 
   140001892:	c3                   	ret    
   140001893:	90                   	nop
   140001894:	90                   	nop
   140001895:	90                   	nop
   140001896:	90                   	nop
   140001897:	90                   	nop
   140001898:	90                   	nop
   140001899:	90                   	nop
   14000189a:	90                   	nop
   14000189b:	90                   	nop
   14000189c:	90                   	nop
   14000189d:	90                   	nop
   14000189e:	90                   	nop
   14000189f:	90                   	nop

00000001400018a0 <__report_error>:
   1400018a0:	41 54                	push   r12
   1400018a2:	53                   	push   rbx
   1400018a3:	48 83 ec 38          	sub    rsp,0x38
   1400018a7:	49 89 cc             	mov    r12,rcx
   1400018aa:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
   1400018af:	b9 02 00 00 00       	mov    ecx,0x2
   1400018b4:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
   1400018b9:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
   1400018be:	4c 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],r9
   1400018c3:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   1400018c8:	e8 53 5f 00 00       	call   140007820 <__acrt_iob_func>
   1400018cd:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   1400018d3:	ba 01 00 00 00       	mov    edx,0x1
   1400018d8:	48 8d 0d e1 78 00 00 	lea    rcx,[rip+0x78e1]        # 1400091c0 <.rdata>
   1400018df:	49 89 c1             	mov    r9,rax
   1400018e2:	e8 71 59 00 00       	call   140007258 <fwrite>
   1400018e7:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
   1400018ec:	b9 02 00 00 00       	mov    ecx,0x2
   1400018f1:	e8 2a 5f 00 00       	call   140007820 <__acrt_iob_func>
   1400018f6:	4c 89 e2             	mov    rdx,r12
   1400018f9:	48 89 c1             	mov    rcx,rax
   1400018fc:	49 89 d8             	mov    r8,rbx
   1400018ff:	e8 14 59 00 00       	call   140007218 <vfprintf>
   140001904:	e8 7f 59 00 00       	call   140007288 <abort>
   140001909:	90                   	nop
   14000190a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001910 <__write_memory.part.0>:
   140001910:	41 54                	push   r12
   140001912:	55                   	push   rbp
   140001913:	57                   	push   rdi
   140001914:	56                   	push   rsi
   140001915:	53                   	push   rbx
   140001916:	48 83 ec 50          	sub    rsp,0x50
   14000191a:	48 63 3d 83 a7 00 00 	movsxd rdi,DWORD PTR [rip+0xa783]        # 14000c0a4 <maxSections>
   140001921:	49 89 cc             	mov    r12,rcx
   140001924:	48 89 d6             	mov    rsi,rdx
   140001927:	4c 89 c3             	mov    rbx,r8
   14000192a:	85 ff                	test   edi,edi
   14000192c:	0f 8e 8e 01 00 00    	jle    140001ac0 <__write_memory.part.0+0x1b0>
   140001932:	48 8b 05 6f a7 00 00 	mov    rax,QWORD PTR [rip+0xa76f]        # 14000c0a8 <the_secs>
   140001939:	31 c9                	xor    ecx,ecx
   14000193b:	48 83 c0 18          	add    rax,0x18
   14000193f:	90                   	nop
   140001940:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140001943:	49 39 d4             	cmp    r12,rdx
   140001946:	72 14                	jb     14000195c <__write_memory.part.0+0x4c>
   140001948:	4c 8b 40 08          	mov    r8,QWORD PTR [rax+0x8]
   14000194c:	45 8b 40 08          	mov    r8d,DWORD PTR [r8+0x8]
   140001950:	4c 01 c2             	add    rdx,r8
   140001953:	49 39 d4             	cmp    r12,rdx
   140001956:	0f 82 8b 00 00 00    	jb     1400019e7 <__write_memory.part.0+0xd7>
   14000195c:	83 c1 01             	add    ecx,0x1
   14000195f:	48 83 c0 28          	add    rax,0x28
   140001963:	39 f9                	cmp    ecx,edi
   140001965:	75 d9                	jne    140001940 <__write_memory.part.0+0x30>
   140001967:	4c 89 e1             	mov    rcx,r12
   14000196a:	e8 51 0a 00 00       	call   1400023c0 <__mingw_GetSectionForAddress>
   14000196f:	48 89 c5             	mov    rbp,rax
   140001972:	48 85 c0             	test   rax,rax
   140001975:	0f 84 a2 01 00 00    	je     140001b1d <__write_memory.part.0+0x20d>
   14000197b:	48 8b 05 26 a7 00 00 	mov    rax,QWORD PTR [rip+0xa726]        # 14000c0a8 <the_secs>
   140001982:	48 8d 3c bf          	lea    rdi,[rdi+rdi*4]
   140001986:	48 c1 e7 03          	shl    rdi,0x3
   14000198a:	48 01 f8             	add    rax,rdi
   14000198d:	48 89 68 20          	mov    QWORD PTR [rax+0x20],rbp
   140001991:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001997:	e8 54 0b 00 00       	call   1400024f0 <_GetPEImageBase>
   14000199c:	8b 4d 0c             	mov    ecx,DWORD PTR [rbp+0xc]
   14000199f:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
   1400019a4:	41 b8 30 00 00 00    	mov    r8d,0x30
   1400019aa:	48 01 c1             	add    rcx,rax
   1400019ad:	48 8b 05 f4 a6 00 00 	mov    rax,QWORD PTR [rip+0xa6f4]        # 14000c0a8 <the_secs>
   1400019b4:	48 89 4c 38 18       	mov    QWORD PTR [rax+rdi*1+0x18],rcx
   1400019b9:	ff 15 75 b8 00 00    	call   QWORD PTR [rip+0xb875]        # 14000d234 <__imp_VirtualQuery>
   1400019bf:	48 85 c0             	test   rax,rax
   1400019c2:	0f 84 3a 01 00 00    	je     140001b02 <__write_memory.part.0+0x1f2>
   1400019c8:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
   1400019cc:	8d 50 c0             	lea    edx,[rax-0x40]
   1400019cf:	83 e2 bf             	and    edx,0xffffffbf
   1400019d2:	74 0c                	je     1400019e0 <__write_memory.part.0+0xd0>
   1400019d4:	8d 50 fc             	lea    edx,[rax-0x4]
   1400019d7:	83 e2 fb             	and    edx,0xfffffffb
   1400019da:	0f 85 90 00 00 00    	jne    140001a70 <__write_memory.part.0+0x160>
   1400019e0:	83 05 bd a6 00 00 01 	add    DWORD PTR [rip+0xa6bd],0x1        # 14000c0a4 <maxSections>
   1400019e7:	83 fb 08             	cmp    ebx,0x8
   1400019ea:	73 2c                	jae    140001a18 <__write_memory.part.0+0x108>
   1400019ec:	f6 c3 04             	test   bl,0x4
   1400019ef:	0f 85 db 00 00 00    	jne    140001ad0 <__write_memory.part.0+0x1c0>
   1400019f5:	85 db                	test   ebx,ebx
   1400019f7:	74 10                	je     140001a09 <__write_memory.part.0+0xf9>
   1400019f9:	0f b6 06             	movzx  eax,BYTE PTR [rsi]
   1400019fc:	41 88 04 24          	mov    BYTE PTR [r12],al
   140001a00:	f6 c3 02             	test   bl,0x2
   140001a03:	0f 85 e7 00 00 00    	jne    140001af0 <__write_memory.part.0+0x1e0>
   140001a09:	48 83 c4 50          	add    rsp,0x50
   140001a0d:	5b                   	pop    rbx
   140001a0e:	5e                   	pop    rsi
   140001a0f:	5f                   	pop    rdi
   140001a10:	5d                   	pop    rbp
   140001a11:	41 5c                	pop    r12
   140001a13:	c3                   	ret    
   140001a14:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001a18:	48 8b 06             	mov    rax,QWORD PTR [rsi]
   140001a1b:	49 8d 4c 24 08       	lea    rcx,[r12+0x8]
   140001a20:	48 83 e1 f8          	and    rcx,0xfffffffffffffff8
   140001a24:	49 89 04 24          	mov    QWORD PTR [r12],rax
   140001a28:	89 d8                	mov    eax,ebx
   140001a2a:	48 8b 54 06 f8       	mov    rdx,QWORD PTR [rsi+rax*1-0x8]
   140001a2f:	49 89 54 04 f8       	mov    QWORD PTR [r12+rax*1-0x8],rdx
   140001a34:	49 29 cc             	sub    r12,rcx
   140001a37:	44 01 e3             	add    ebx,r12d
   140001a3a:	4c 29 e6             	sub    rsi,r12
   140001a3d:	83 e3 f8             	and    ebx,0xfffffff8
   140001a40:	83 fb 08             	cmp    ebx,0x8
   140001a43:	72 c4                	jb     140001a09 <__write_memory.part.0+0xf9>
   140001a45:	83 e3 f8             	and    ebx,0xfffffff8
   140001a48:	31 c0                	xor    eax,eax
   140001a4a:	89 c2                	mov    edx,eax
   140001a4c:	83 c0 08             	add    eax,0x8
   140001a4f:	4c 8b 04 16          	mov    r8,QWORD PTR [rsi+rdx*1]
   140001a53:	4c 89 04 11          	mov    QWORD PTR [rcx+rdx*1],r8
   140001a57:	39 d8                	cmp    eax,ebx
   140001a59:	72 ef                	jb     140001a4a <__write_memory.part.0+0x13a>
   140001a5b:	48 83 c4 50          	add    rsp,0x50
   140001a5f:	5b                   	pop    rbx
   140001a60:	5e                   	pop    rsi
   140001a61:	5f                   	pop    rdi
   140001a62:	5d                   	pop    rbp
   140001a63:	41 5c                	pop    r12
   140001a65:	c3                   	ret    
   140001a66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140001a6d:	00 00 00 
   140001a70:	83 f8 02             	cmp    eax,0x2
   140001a73:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
   140001a78:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
   140001a7d:	41 b8 04 00 00 00    	mov    r8d,0x4
   140001a83:	b8 40 00 00 00       	mov    eax,0x40
   140001a88:	44 0f 45 c0          	cmovne r8d,eax
   140001a8c:	48 03 3d 15 a6 00 00 	add    rdi,QWORD PTR [rip+0xa615]        # 14000c0a8 <the_secs>
   140001a93:	48 89 4f 08          	mov    QWORD PTR [rdi+0x8],rcx
   140001a97:	49 89 f9             	mov    r9,rdi
   140001a9a:	48 89 57 10          	mov    QWORD PTR [rdi+0x10],rdx
   140001a9e:	ff 15 88 b7 00 00    	call   QWORD PTR [rip+0xb788]        # 14000d22c <__imp_VirtualProtect>
   140001aa4:	85 c0                	test   eax,eax
   140001aa6:	0f 85 34 ff ff ff    	jne    1400019e0 <__write_memory.part.0+0xd0>
   140001aac:	ff 15 32 b7 00 00    	call   QWORD PTR [rip+0xb732]        # 14000d1e4 <__imp_GetLastError>
   140001ab2:	48 8d 0d 7f 77 00 00 	lea    rcx,[rip+0x777f]        # 140009238 <.rdata+0x78>
   140001ab9:	89 c2                	mov    edx,eax
   140001abb:	e8 e0 fd ff ff       	call   1400018a0 <__report_error>
   140001ac0:	31 ff                	xor    edi,edi
   140001ac2:	e9 a0 fe ff ff       	jmp    140001967 <__write_memory.part.0+0x57>
   140001ac7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001ace:	00 00 
   140001ad0:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001ad2:	89 db                	mov    ebx,ebx
   140001ad4:	41 89 04 24          	mov    DWORD PTR [r12],eax
   140001ad8:	8b 44 1e fc          	mov    eax,DWORD PTR [rsi+rbx*1-0x4]
   140001adc:	41 89 44 1c fc       	mov    DWORD PTR [r12+rbx*1-0x4],eax
   140001ae1:	e9 23 ff ff ff       	jmp    140001a09 <__write_memory.part.0+0xf9>
   140001ae6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140001aed:	00 00 00 
   140001af0:	89 db                	mov    ebx,ebx
   140001af2:	0f b7 44 1e fe       	movzx  eax,WORD PTR [rsi+rbx*1-0x2]
   140001af7:	66 41 89 44 1c fe    	mov    WORD PTR [r12+rbx*1-0x2],ax
   140001afd:	e9 07 ff ff ff       	jmp    140001a09 <__write_memory.part.0+0xf9>
   140001b02:	48 8b 05 9f a5 00 00 	mov    rax,QWORD PTR [rip+0xa59f]        # 14000c0a8 <the_secs>
   140001b09:	8b 55 08             	mov    edx,DWORD PTR [rbp+0x8]
   140001b0c:	48 8d 0d ed 76 00 00 	lea    rcx,[rip+0x76ed]        # 140009200 <.rdata+0x40>
   140001b13:	4c 8b 44 38 18       	mov    r8,QWORD PTR [rax+rdi*1+0x18]
   140001b18:	e8 83 fd ff ff       	call   1400018a0 <__report_error>
   140001b1d:	4c 89 e2             	mov    rdx,r12
   140001b20:	48 8d 0d b9 76 00 00 	lea    rcx,[rip+0x76b9]        # 1400091e0 <.rdata+0x20>
   140001b27:	e8 74 fd ff ff       	call   1400018a0 <__report_error>
   140001b2c:	90                   	nop
   140001b2d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001b30 <_pei386_runtime_relocator>:
   140001b30:	55                   	push   rbp
   140001b31:	41 57                	push   r15
   140001b33:	41 56                	push   r14
   140001b35:	41 55                	push   r13
   140001b37:	41 54                	push   r12
   140001b39:	57                   	push   rdi
   140001b3a:	56                   	push   rsi
   140001b3b:	53                   	push   rbx
   140001b3c:	48 83 ec 38          	sub    rsp,0x38
   140001b40:	48 8d ac 24 80 00 00 	lea    rbp,[rsp+0x80]
   140001b47:	00 
   140001b48:	8b 35 52 a5 00 00    	mov    esi,DWORD PTR [rip+0xa552]        # 14000c0a0 <was_init.94382>
   140001b4e:	85 f6                	test   esi,esi
   140001b50:	74 16                	je     140001b68 <_pei386_runtime_relocator+0x38>
   140001b52:	48 8d 65 b8          	lea    rsp,[rbp-0x48]
   140001b56:	5b                   	pop    rbx
   140001b57:	5e                   	pop    rsi
   140001b58:	5f                   	pop    rdi
   140001b59:	41 5c                	pop    r12
   140001b5b:	41 5d                	pop    r13
   140001b5d:	41 5e                	pop    r14
   140001b5f:	41 5f                	pop    r15
   140001b61:	5d                   	pop    rbp
   140001b62:	c3                   	ret    
   140001b63:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001b68:	c7 05 2e a5 00 00 01 	mov    DWORD PTR [rip+0xa52e],0x1        # 14000c0a0 <was_init.94382>
   140001b6f:	00 00 00 
   140001b72:	e8 d9 08 00 00       	call   140002450 <__mingw_GetSectionCount>
   140001b77:	48 98                	cdqe   
   140001b79:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140001b7d:	48 8d 04 c5 0f 00 00 	lea    rax,[rax*8+0xf]
   140001b84:	00 
   140001b85:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140001b89:	e8 e2 0a 00 00       	call   140002670 <___chkstk_ms>
   140001b8e:	4c 8b 25 1b 7b 00 00 	mov    r12,QWORD PTR [rip+0x7b1b]        # 1400096b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001b95:	48 8b 1d 24 7b 00 00 	mov    rbx,QWORD PTR [rip+0x7b24]        # 1400096c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001b9c:	c7 05 fe a4 00 00 00 	mov    DWORD PTR [rip+0xa4fe],0x0        # 14000c0a4 <maxSections>
   140001ba3:	00 00 00 
   140001ba6:	48 29 c4             	sub    rsp,rax
   140001ba9:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
   140001bae:	48 89 05 f3 a4 00 00 	mov    QWORD PTR [rip+0xa4f3],rax        # 14000c0a8 <the_secs>
   140001bb5:	4c 89 e0             	mov    rax,r12
   140001bb8:	48 29 d8             	sub    rax,rbx
   140001bbb:	48 83 f8 07          	cmp    rax,0x7
   140001bbf:	7e 91                	jle    140001b52 <_pei386_runtime_relocator+0x22>
   140001bc1:	8b 13                	mov    edx,DWORD PTR [rbx]
   140001bc3:	48 83 f8 0b          	cmp    rax,0xb
   140001bc7:	0f 8f 4b 01 00 00    	jg     140001d18 <_pei386_runtime_relocator+0x1e8>
   140001bcd:	85 d2                	test   edx,edx
   140001bcf:	0f 85 cb 01 00 00    	jne    140001da0 <_pei386_runtime_relocator+0x270>
   140001bd5:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001bd8:	85 c0                	test   eax,eax
   140001bda:	0f 85 c0 01 00 00    	jne    140001da0 <_pei386_runtime_relocator+0x270>
   140001be0:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140001be3:	83 fa 01             	cmp    edx,0x1
   140001be6:	0f 85 1c 02 00 00    	jne    140001e08 <_pei386_runtime_relocator+0x2d8>
   140001bec:	48 83 c3 0c          	add    rbx,0xc
   140001bf0:	4c 8d 7d a8          	lea    r15,[rbp-0x58]
   140001bf4:	4c 8b 2d e5 7a 00 00 	mov    r13,QWORD PTR [rip+0x7ae5]        # 1400096e0 <.refptr.__image_base__>
   140001bfb:	49 be 00 00 00 00 ff 	movabs r14,0xffffffff00000000
   140001c02:	ff ff ff 
   140001c05:	4c 39 e3             	cmp    rbx,r12
   140001c08:	72 3f                	jb     140001c49 <_pei386_runtime_relocator+0x119>
   140001c0a:	e9 43 ff ff ff       	jmp    140001b52 <_pei386_runtime_relocator+0x22>
   140001c0f:	90                   	nop
   140001c10:	44 0f b6 01          	movzx  r8d,BYTE PTR [rcx]
   140001c14:	4c 89 ff             	mov    rdi,r15
   140001c17:	4d 89 c2             	mov    r10,r8
   140001c1a:	49 81 ca 00 ff ff ff 	or     r10,0xffffffffffffff00
   140001c21:	45 84 c0             	test   r8b,r8b
   140001c24:	4d 0f 48 c2          	cmovs  r8,r10
   140001c28:	49 29 d0             	sub    r8,rdx
   140001c2b:	4c 89 fa             	mov    rdx,r15
   140001c2e:	4d 01 c8             	add    r8,r9
   140001c31:	4c 89 45 a8          	mov    QWORD PTR [rbp-0x58],r8
   140001c35:	41 b8 01 00 00 00    	mov    r8d,0x1
   140001c3b:	e8 d0 fc ff ff       	call   140001910 <__write_memory.part.0>
   140001c40:	48 83 c3 0c          	add    rbx,0xc
   140001c44:	4c 39 e3             	cmp    rbx,r12
   140001c47:	73 77                	jae    140001cc0 <_pei386_runtime_relocator+0x190>
   140001c49:	8b 13                	mov    edx,DWORD PTR [rbx]
   140001c4b:	8b 4b 04             	mov    ecx,DWORD PTR [rbx+0x4]
   140001c4e:	44 0f b6 43 08       	movzx  r8d,BYTE PTR [rbx+0x8]
   140001c53:	4c 01 ea             	add    rdx,r13
   140001c56:	4c 01 e9             	add    rcx,r13
   140001c59:	4c 8b 0a             	mov    r9,QWORD PTR [rdx]
   140001c5c:	41 83 f8 20          	cmp    r8d,0x20
   140001c60:	0f 84 0a 01 00 00    	je     140001d70 <_pei386_runtime_relocator+0x240>
   140001c66:	0f 87 d4 00 00 00    	ja     140001d40 <_pei386_runtime_relocator+0x210>
   140001c6c:	41 83 f8 08          	cmp    r8d,0x8
   140001c70:	74 9e                	je     140001c10 <_pei386_runtime_relocator+0xe0>
   140001c72:	41 83 f8 10          	cmp    r8d,0x10
   140001c76:	0f 85 75 01 00 00    	jne    140001df1 <_pei386_runtime_relocator+0x2c1>
   140001c7c:	44 0f b7 01          	movzx  r8d,WORD PTR [rcx]
   140001c80:	4c 89 ff             	mov    rdi,r15
   140001c83:	4d 89 c2             	mov    r10,r8
   140001c86:	49 81 ca 00 00 ff ff 	or     r10,0xffffffffffff0000
   140001c8d:	66 45 85 c0          	test   r8w,r8w
   140001c91:	4d 0f 48 c2          	cmovs  r8,r10
   140001c95:	48 83 c3 0c          	add    rbx,0xc
   140001c99:	49 29 d0             	sub    r8,rdx
   140001c9c:	4c 89 fa             	mov    rdx,r15
   140001c9f:	4d 01 c8             	add    r8,r9
   140001ca2:	4c 89 45 a8          	mov    QWORD PTR [rbp-0x58],r8
   140001ca6:	41 b8 02 00 00 00    	mov    r8d,0x2
   140001cac:	e8 5f fc ff ff       	call   140001910 <__write_memory.part.0>
   140001cb1:	4c 39 e3             	cmp    rbx,r12
   140001cb4:	72 93                	jb     140001c49 <_pei386_runtime_relocator+0x119>
   140001cb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140001cbd:	00 00 00 
   140001cc0:	8b 05 de a3 00 00    	mov    eax,DWORD PTR [rip+0xa3de]        # 14000c0a4 <maxSections>
   140001cc6:	85 c0                	test   eax,eax
   140001cc8:	0f 8e 84 fe ff ff    	jle    140001b52 <_pei386_runtime_relocator+0x22>
   140001cce:	4c 8b 25 57 b5 00 00 	mov    r12,QWORD PTR [rip+0xb557]        # 14000d22c <__imp_VirtualProtect>
   140001cd5:	31 db                	xor    ebx,ebx
   140001cd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001cde:	00 00 
   140001ce0:	48 8b 05 c1 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3c1]        # 14000c0a8 <the_secs>
   140001ce7:	48 01 d8             	add    rax,rbx
   140001cea:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   140001ced:	45 85 c0             	test   r8d,r8d
   140001cf0:	74 0e                	je     140001d00 <_pei386_runtime_relocator+0x1d0>
   140001cf2:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   140001cf6:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
   140001cfa:	49 89 f9             	mov    r9,rdi
   140001cfd:	41 ff d4             	call   r12
   140001d00:	83 c6 01             	add    esi,0x1
   140001d03:	48 83 c3 28          	add    rbx,0x28
   140001d07:	3b 35 97 a3 00 00    	cmp    esi,DWORD PTR [rip+0xa397]        # 14000c0a4 <maxSections>
   140001d0d:	7c d1                	jl     140001ce0 <_pei386_runtime_relocator+0x1b0>
   140001d0f:	e9 3e fe ff ff       	jmp    140001b52 <_pei386_runtime_relocator+0x22>
   140001d14:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001d18:	85 d2                	test   edx,edx
   140001d1a:	0f 85 80 00 00 00    	jne    140001da0 <_pei386_runtime_relocator+0x270>
   140001d20:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001d23:	89 c7                	mov    edi,eax
   140001d25:	0b 7b 08             	or     edi,DWORD PTR [rbx+0x8]
   140001d28:	0f 85 aa fe ff ff    	jne    140001bd8 <_pei386_runtime_relocator+0xa8>
   140001d2e:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
   140001d31:	48 83 c3 0c          	add    rbx,0xc
   140001d35:	e9 93 fe ff ff       	jmp    140001bcd <_pei386_runtime_relocator+0x9d>
   140001d3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001d40:	41 83 f8 40          	cmp    r8d,0x40
   140001d44:	0f 85 a7 00 00 00    	jne    140001df1 <_pei386_runtime_relocator+0x2c1>
   140001d4a:	48 8b 01             	mov    rax,QWORD PTR [rcx]
   140001d4d:	41 b8 08 00 00 00    	mov    r8d,0x8
   140001d53:	4c 89 ff             	mov    rdi,r15
   140001d56:	48 29 d0             	sub    rax,rdx
   140001d59:	4c 89 fa             	mov    rdx,r15
   140001d5c:	4c 01 c8             	add    rax,r9
   140001d5f:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
   140001d63:	e8 a8 fb ff ff       	call   140001910 <__write_memory.part.0>
   140001d68:	e9 d3 fe ff ff       	jmp    140001c40 <_pei386_runtime_relocator+0x110>
   140001d6d:	0f 1f 00             	nop    DWORD PTR [rax]
   140001d70:	8b 01                	mov    eax,DWORD PTR [rcx]
   140001d72:	4c 89 ff             	mov    rdi,r15
   140001d75:	49 89 c0             	mov    r8,rax
   140001d78:	4c 09 f0             	or     rax,r14
   140001d7b:	45 85 c0             	test   r8d,r8d
   140001d7e:	49 0f 49 c0          	cmovns rax,r8
   140001d82:	41 b8 04 00 00 00    	mov    r8d,0x4
   140001d88:	48 29 d0             	sub    rax,rdx
   140001d8b:	4c 89 fa             	mov    rdx,r15
   140001d8e:	4c 01 c8             	add    rax,r9
   140001d91:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
   140001d95:	e8 76 fb ff ff       	call   140001910 <__write_memory.part.0>
   140001d9a:	e9 a1 fe ff ff       	jmp    140001c40 <_pei386_runtime_relocator+0x110>
   140001d9f:	90                   	nop
   140001da0:	4c 39 e3             	cmp    rbx,r12
   140001da3:	0f 83 a9 fd ff ff    	jae    140001b52 <_pei386_runtime_relocator+0x22>
   140001da9:	49 83 ec 01          	sub    r12,0x1
   140001dad:	4c 8b 2d 2c 79 00 00 	mov    r13,QWORD PTR [rip+0x792c]        # 1400096e0 <.refptr.__image_base__>
   140001db4:	48 8d 7d a8          	lea    rdi,[rbp-0x58]
   140001db8:	49 29 dc             	sub    r12,rbx
   140001dbb:	49 c1 ec 03          	shr    r12,0x3
   140001dbf:	4e 8d 64 e3 08       	lea    r12,[rbx+r12*8+0x8]
   140001dc4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001dc8:	8b 4b 04             	mov    ecx,DWORD PTR [rbx+0x4]
   140001dcb:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001dcd:	41 b8 04 00 00 00    	mov    r8d,0x4
   140001dd3:	48 89 fa             	mov    rdx,rdi
   140001dd6:	48 83 c3 08          	add    rbx,0x8
   140001dda:	4c 01 e9             	add    rcx,r13
   140001ddd:	03 01                	add    eax,DWORD PTR [rcx]
   140001ddf:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
   140001de2:	e8 29 fb ff ff       	call   140001910 <__write_memory.part.0>
   140001de7:	4c 39 e3             	cmp    rbx,r12
   140001dea:	75 dc                	jne    140001dc8 <_pei386_runtime_relocator+0x298>
   140001dec:	e9 cf fe ff ff       	jmp    140001cc0 <_pei386_runtime_relocator+0x190>
   140001df1:	44 89 c2             	mov    edx,r8d
   140001df4:	48 8d 0d 9d 74 00 00 	lea    rcx,[rip+0x749d]        # 140009298 <.rdata+0xd8>
   140001dfb:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
   140001e02:	00 
   140001e03:	e8 98 fa ff ff       	call   1400018a0 <__report_error>
   140001e08:	48 8d 0d 51 74 00 00 	lea    rcx,[rip+0x7451]        # 140009260 <.rdata+0xa0>
   140001e0f:	e8 8c fa ff ff       	call   1400018a0 <__report_error>
   140001e14:	90                   	nop
   140001e15:	90                   	nop
   140001e16:	90                   	nop
   140001e17:	90                   	nop
   140001e18:	90                   	nop
   140001e19:	90                   	nop
   140001e1a:	90                   	nop
   140001e1b:	90                   	nop
   140001e1c:	90                   	nop
   140001e1d:	90                   	nop
   140001e1e:	90                   	nop
   140001e1f:	90                   	nop

0000000140001e20 <__mingw_raise_matherr>:
   140001e20:	48 83 ec 58          	sub    rsp,0x58
   140001e24:	48 8b 05 85 a2 00 00 	mov    rax,QWORD PTR [rip+0xa285]        # 14000c0b0 <stUserMathErr>
   140001e2b:	48 85 c0             	test   rax,rax
   140001e2e:	74 2c                	je     140001e5c <__mingw_raise_matherr+0x3c>
   140001e30:	f2 0f 10 84 24 80 00 	movsd  xmm0,QWORD PTR [rsp+0x80]
   140001e37:	00 00 
   140001e39:	89 4c 24 20          	mov    DWORD PTR [rsp+0x20],ecx
   140001e3d:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
   140001e42:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
   140001e47:	f2 0f 11 54 24 30    	movsd  QWORD PTR [rsp+0x30],xmm2
   140001e4d:	f2 0f 11 5c 24 38    	movsd  QWORD PTR [rsp+0x38],xmm3
   140001e53:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
   140001e59:	ff d0                	call   rax
   140001e5b:	90                   	nop
   140001e5c:	48 83 c4 58          	add    rsp,0x58
   140001e60:	c3                   	ret    
   140001e61:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001e68:	00 00 00 00 
   140001e6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001e70 <__mingw_setusermatherr>:
   140001e70:	48 89 0d 39 a2 00 00 	mov    QWORD PTR [rip+0xa239],rcx        # 14000c0b0 <stUserMathErr>
   140001e77:	e9 3c 54 00 00       	jmp    1400072b8 <__setusermatherr>
   140001e7c:	90                   	nop
   140001e7d:	90                   	nop
   140001e7e:	90                   	nop
   140001e7f:	90                   	nop

0000000140001e80 <_gnu_exception_handler>:
   140001e80:	41 54                	push   r12
   140001e82:	48 83 ec 20          	sub    rsp,0x20
   140001e86:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
   140001e89:	8b 02                	mov    eax,DWORD PTR [rdx]
   140001e8b:	49 89 cc             	mov    r12,rcx
   140001e8e:	89 c1                	mov    ecx,eax
   140001e90:	81 e1 ff ff ff 20    	and    ecx,0x20ffffff
   140001e96:	81 f9 43 43 47 20    	cmp    ecx,0x20474343
   140001e9c:	0f 84 ce 00 00 00    	je     140001f70 <_gnu_exception_handler+0xf0>
   140001ea2:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   140001ea7:	0f 87 aa 00 00 00    	ja     140001f57 <_gnu_exception_handler+0xd7>
   140001ead:	3d 8b 00 00 c0       	cmp    eax,0xc000008b
   140001eb2:	76 54                	jbe    140001f08 <_gnu_exception_handler+0x88>
   140001eb4:	05 73 ff ff 3f       	add    eax,0x3fffff73
   140001eb9:	83 f8 09             	cmp    eax,0x9
   140001ebc:	77 3a                	ja     140001ef8 <_gnu_exception_handler+0x78>
   140001ebe:	48 8d 15 0b 74 00 00 	lea    rdx,[rip+0x740b]        # 1400092d0 <.rdata>
   140001ec5:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   140001ec9:	48 01 d0             	add    rax,rdx
   140001ecc:	ff e0                	jmp    rax
   140001ece:	31 d2                	xor    edx,edx
   140001ed0:	b9 08 00 00 00       	mov    ecx,0x8
   140001ed5:	e8 5e 53 00 00       	call   140007238 <signal>
   140001eda:	48 83 f8 01          	cmp    rax,0x1
   140001ede:	0f 85 b7 00 00 00    	jne    140001f9b <_gnu_exception_handler+0x11b>
   140001ee4:	ba 01 00 00 00       	mov    edx,0x1
   140001ee9:	b9 08 00 00 00       	mov    ecx,0x8
   140001eee:	e8 45 53 00 00       	call   140007238 <signal>
   140001ef3:	e8 98 f9 ff ff       	call   140001890 <_fpreset>
   140001ef8:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001efd:	48 83 c4 20          	add    rsp,0x20
   140001f01:	41 5c                	pop    r12
   140001f03:	c3                   	ret    
   140001f04:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001f08:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140001f0d:	0f 84 a5 00 00 00    	je     140001fb8 <_gnu_exception_handler+0x138>
   140001f13:	76 3b                	jbe    140001f50 <_gnu_exception_handler+0xd0>
   140001f15:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140001f1a:	74 dc                	je     140001ef8 <_gnu_exception_handler+0x78>
   140001f1c:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   140001f21:	75 34                	jne    140001f57 <_gnu_exception_handler+0xd7>
   140001f23:	31 d2                	xor    edx,edx
   140001f25:	b9 04 00 00 00       	mov    ecx,0x4
   140001f2a:	e8 09 53 00 00       	call   140007238 <signal>
   140001f2f:	48 83 f8 01          	cmp    rax,0x1
   140001f33:	0f 84 a7 00 00 00    	je     140001fe0 <_gnu_exception_handler+0x160>
   140001f39:	48 85 c0             	test   rax,rax
   140001f3c:	74 19                	je     140001f57 <_gnu_exception_handler+0xd7>
   140001f3e:	b9 04 00 00 00       	mov    ecx,0x4
   140001f43:	ff d0                	call   rax
   140001f45:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001f4a:	eb b1                	jmp    140001efd <_gnu_exception_handler+0x7d>
   140001f4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001f50:	3d 02 00 00 80       	cmp    eax,0x80000002
   140001f55:	74 a1                	je     140001ef8 <_gnu_exception_handler+0x78>
   140001f57:	48 8b 05 72 a1 00 00 	mov    rax,QWORD PTR [rip+0xa172]        # 14000c0d0 <__mingw_oldexcpt_handler>
   140001f5e:	48 85 c0             	test   rax,rax
   140001f61:	74 1d                	je     140001f80 <_gnu_exception_handler+0x100>
   140001f63:	4c 89 e1             	mov    rcx,r12
   140001f66:	48 83 c4 20          	add    rsp,0x20
   140001f6a:	41 5c                	pop    r12
   140001f6c:	48 ff e0             	rex.W jmp rax
   140001f6f:	90                   	nop
   140001f70:	f6 42 04 01          	test   BYTE PTR [rdx+0x4],0x1
   140001f74:	0f 85 28 ff ff ff    	jne    140001ea2 <_gnu_exception_handler+0x22>
   140001f7a:	e9 79 ff ff ff       	jmp    140001ef8 <_gnu_exception_handler+0x78>
   140001f7f:	90                   	nop
   140001f80:	31 c0                	xor    eax,eax
   140001f82:	48 83 c4 20          	add    rsp,0x20
   140001f86:	41 5c                	pop    r12
   140001f88:	c3                   	ret    
   140001f89:	31 d2                	xor    edx,edx
   140001f8b:	b9 08 00 00 00       	mov    ecx,0x8
   140001f90:	e8 a3 52 00 00       	call   140007238 <signal>
   140001f95:	48 83 f8 01          	cmp    rax,0x1
   140001f99:	74 65                	je     140002000 <_gnu_exception_handler+0x180>
   140001f9b:	48 85 c0             	test   rax,rax
   140001f9e:	74 b7                	je     140001f57 <_gnu_exception_handler+0xd7>
   140001fa0:	b9 08 00 00 00       	mov    ecx,0x8
   140001fa5:	ff d0                	call   rax
   140001fa7:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001fac:	e9 4c ff ff ff       	jmp    140001efd <_gnu_exception_handler+0x7d>
   140001fb1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001fb8:	31 d2                	xor    edx,edx
   140001fba:	b9 0b 00 00 00       	mov    ecx,0xb
   140001fbf:	e8 74 52 00 00       	call   140007238 <signal>
   140001fc4:	48 83 f8 01          	cmp    rax,0x1
   140001fc8:	74 4f                	je     140002019 <_gnu_exception_handler+0x199>
   140001fca:	48 85 c0             	test   rax,rax
   140001fcd:	74 88                	je     140001f57 <_gnu_exception_handler+0xd7>
   140001fcf:	b9 0b 00 00 00       	mov    ecx,0xb
   140001fd4:	ff d0                	call   rax
   140001fd6:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001fdb:	e9 1d ff ff ff       	jmp    140001efd <_gnu_exception_handler+0x7d>
   140001fe0:	ba 01 00 00 00       	mov    edx,0x1
   140001fe5:	b9 04 00 00 00       	mov    ecx,0x4
   140001fea:	e8 49 52 00 00       	call   140007238 <signal>
   140001fef:	83 c8 ff             	or     eax,0xffffffff
   140001ff2:	e9 06 ff ff ff       	jmp    140001efd <_gnu_exception_handler+0x7d>
   140001ff7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001ffe:	00 00 
   140002000:	ba 01 00 00 00       	mov    edx,0x1
   140002005:	b9 08 00 00 00       	mov    ecx,0x8
   14000200a:	e8 29 52 00 00       	call   140007238 <signal>
   14000200f:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140002014:	e9 e4 fe ff ff       	jmp    140001efd <_gnu_exception_handler+0x7d>
   140002019:	ba 01 00 00 00       	mov    edx,0x1
   14000201e:	b9 0b 00 00 00       	mov    ecx,0xb
   140002023:	e8 10 52 00 00       	call   140007238 <signal>
   140002028:	83 c8 ff             	or     eax,0xffffffff
   14000202b:	e9 cd fe ff ff       	jmp    140001efd <_gnu_exception_handler+0x7d>

0000000140002030 <__mingwthr_run_key_dtors.part.0>:
   140002030:	41 54                	push   r12
   140002032:	57                   	push   rdi
   140002033:	56                   	push   rsi
   140002034:	53                   	push   rbx
   140002035:	48 83 ec 28          	sub    rsp,0x28
   140002039:	48 8d 0d c0 a0 00 00 	lea    rcx,[rip+0xa0c0]        # 14000c100 <__mingwthr_cs>
   140002040:	ff 15 96 b1 00 00    	call   QWORD PTR [rip+0xb196]        # 14000d1dc <__imp_EnterCriticalSection>
   140002046:	48 8b 1d 93 a0 00 00 	mov    rbx,QWORD PTR [rip+0xa093]        # 14000c0e0 <key_dtor_list>
   14000204d:	48 85 db             	test   rbx,rbx
   140002050:	74 32                	je     140002084 <__mingwthr_run_key_dtors.part.0+0x54>
   140002052:	48 8b 3d cb b1 00 00 	mov    rdi,QWORD PTR [rip+0xb1cb]        # 14000d224 <__imp_TlsGetValue>
   140002059:	48 8b 35 84 b1 00 00 	mov    rsi,QWORD PTR [rip+0xb184]        # 14000d1e4 <__imp_GetLastError>
   140002060:	8b 0b                	mov    ecx,DWORD PTR [rbx]
   140002062:	ff d7                	call   rdi
   140002064:	49 89 c4             	mov    r12,rax
   140002067:	ff d6                	call   rsi
   140002069:	85 c0                	test   eax,eax
   14000206b:	75 0e                	jne    14000207b <__mingwthr_run_key_dtors.part.0+0x4b>
   14000206d:	4d 85 e4             	test   r12,r12
   140002070:	74 09                	je     14000207b <__mingwthr_run_key_dtors.part.0+0x4b>
   140002072:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
   140002076:	4c 89 e1             	mov    rcx,r12
   140002079:	ff d0                	call   rax
   14000207b:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   14000207f:	48 85 db             	test   rbx,rbx
   140002082:	75 dc                	jne    140002060 <__mingwthr_run_key_dtors.part.0+0x30>
   140002084:	48 8d 0d 75 a0 00 00 	lea    rcx,[rip+0xa075]        # 14000c100 <__mingwthr_cs>
   14000208b:	48 83 c4 28          	add    rsp,0x28
   14000208f:	5b                   	pop    rbx
   140002090:	5e                   	pop    rsi
   140002091:	5f                   	pop    rdi
   140002092:	41 5c                	pop    r12
   140002094:	48 ff 25 69 b1 00 00 	rex.W jmp QWORD PTR [rip+0xb169]        # 14000d204 <__imp_LeaveCriticalSection>
   14000209b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000001400020a0 <___w64_mingwthr_add_key_dtor>:
   1400020a0:	57                   	push   rdi
   1400020a1:	56                   	push   rsi
   1400020a2:	53                   	push   rbx
   1400020a3:	48 83 ec 20          	sub    rsp,0x20
   1400020a7:	8b 05 3b a0 00 00    	mov    eax,DWORD PTR [rip+0xa03b]        # 14000c0e8 <__mingwthr_cs_init>
   1400020ad:	89 cf                	mov    edi,ecx
   1400020af:	48 89 d6             	mov    rsi,rdx
   1400020b2:	85 c0                	test   eax,eax
   1400020b4:	75 0a                	jne    1400020c0 <___w64_mingwthr_add_key_dtor+0x20>
   1400020b6:	48 83 c4 20          	add    rsp,0x20
   1400020ba:	5b                   	pop    rbx
   1400020bb:	5e                   	pop    rsi
   1400020bc:	5f                   	pop    rdi
   1400020bd:	c3                   	ret    
   1400020be:	66 90                	xchg   ax,ax
   1400020c0:	ba 18 00 00 00       	mov    edx,0x18
   1400020c5:	b9 01 00 00 00       	mov    ecx,0x1
   1400020ca:	e8 b1 51 00 00       	call   140007280 <calloc>
   1400020cf:	48 89 c3             	mov    rbx,rax
   1400020d2:	48 85 c0             	test   rax,rax
   1400020d5:	74 3c                	je     140002113 <___w64_mingwthr_add_key_dtor+0x73>
   1400020d7:	89 38                	mov    DWORD PTR [rax],edi
   1400020d9:	48 8d 0d 20 a0 00 00 	lea    rcx,[rip+0xa020]        # 14000c100 <__mingwthr_cs>
   1400020e0:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
   1400020e4:	ff 15 f2 b0 00 00    	call   QWORD PTR [rip+0xb0f2]        # 14000d1dc <__imp_EnterCriticalSection>
   1400020ea:	48 8b 05 ef 9f 00 00 	mov    rax,QWORD PTR [rip+0x9fef]        # 14000c0e0 <key_dtor_list>
   1400020f1:	48 8d 0d 08 a0 00 00 	lea    rcx,[rip+0xa008]        # 14000c100 <__mingwthr_cs>
   1400020f8:	48 89 1d e1 9f 00 00 	mov    QWORD PTR [rip+0x9fe1],rbx        # 14000c0e0 <key_dtor_list>
   1400020ff:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
   140002103:	ff 15 fb b0 00 00    	call   QWORD PTR [rip+0xb0fb]        # 14000d204 <__imp_LeaveCriticalSection>
   140002109:	31 c0                	xor    eax,eax
   14000210b:	48 83 c4 20          	add    rsp,0x20
   14000210f:	5b                   	pop    rbx
   140002110:	5e                   	pop    rsi
   140002111:	5f                   	pop    rdi
   140002112:	c3                   	ret    
   140002113:	83 c8 ff             	or     eax,0xffffffff
   140002116:	eb 9e                	jmp    1400020b6 <___w64_mingwthr_add_key_dtor+0x16>
   140002118:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000211f:	00 

0000000140002120 <___w64_mingwthr_remove_key_dtor>:
   140002120:	53                   	push   rbx
   140002121:	48 83 ec 20          	sub    rsp,0x20
   140002125:	8b 05 bd 9f 00 00    	mov    eax,DWORD PTR [rip+0x9fbd]        # 14000c0e8 <__mingwthr_cs_init>
   14000212b:	89 cb                	mov    ebx,ecx
   14000212d:	85 c0                	test   eax,eax
   14000212f:	75 0f                	jne    140002140 <___w64_mingwthr_remove_key_dtor+0x20>
   140002131:	31 c0                	xor    eax,eax
   140002133:	48 83 c4 20          	add    rsp,0x20
   140002137:	5b                   	pop    rbx
   140002138:	c3                   	ret    
   140002139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002140:	48 8d 0d b9 9f 00 00 	lea    rcx,[rip+0x9fb9]        # 14000c100 <__mingwthr_cs>
   140002147:	ff 15 8f b0 00 00    	call   QWORD PTR [rip+0xb08f]        # 14000d1dc <__imp_EnterCriticalSection>
   14000214d:	48 8b 0d 8c 9f 00 00 	mov    rcx,QWORD PTR [rip+0x9f8c]        # 14000c0e0 <key_dtor_list>
   140002154:	48 85 c9             	test   rcx,rcx
   140002157:	74 2a                	je     140002183 <___w64_mingwthr_remove_key_dtor+0x63>
   140002159:	31 d2                	xor    edx,edx
   14000215b:	eb 0e                	jmp    14000216b <___w64_mingwthr_remove_key_dtor+0x4b>
   14000215d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002160:	48 89 ca             	mov    rdx,rcx
   140002163:	48 85 c0             	test   rax,rax
   140002166:	74 1b                	je     140002183 <___w64_mingwthr_remove_key_dtor+0x63>
   140002168:	48 89 c1             	mov    rcx,rax
   14000216b:	8b 01                	mov    eax,DWORD PTR [rcx]
   14000216d:	39 d8                	cmp    eax,ebx
   14000216f:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
   140002173:	75 eb                	jne    140002160 <___w64_mingwthr_remove_key_dtor+0x40>
   140002175:	48 85 d2             	test   rdx,rdx
   140002178:	74 26                	je     1400021a0 <___w64_mingwthr_remove_key_dtor+0x80>
   14000217a:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   14000217e:	e8 dd 50 00 00       	call   140007260 <free>
   140002183:	48 8d 0d 76 9f 00 00 	lea    rcx,[rip+0x9f76]        # 14000c100 <__mingwthr_cs>
   14000218a:	ff 15 74 b0 00 00    	call   QWORD PTR [rip+0xb074]        # 14000d204 <__imp_LeaveCriticalSection>
   140002190:	31 c0                	xor    eax,eax
   140002192:	48 83 c4 20          	add    rsp,0x20
   140002196:	5b                   	pop    rbx
   140002197:	c3                   	ret    
   140002198:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000219f:	00 
   1400021a0:	48 89 05 39 9f 00 00 	mov    QWORD PTR [rip+0x9f39],rax        # 14000c0e0 <key_dtor_list>
   1400021a7:	eb d5                	jmp    14000217e <___w64_mingwthr_remove_key_dtor+0x5e>
   1400021a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400021b0 <__mingw_TLScallback>:
   1400021b0:	53                   	push   rbx
   1400021b1:	48 83 ec 20          	sub    rsp,0x20
   1400021b5:	83 fa 02             	cmp    edx,0x2
   1400021b8:	0f 84 c2 00 00 00    	je     140002280 <__mingw_TLScallback+0xd0>
   1400021be:	77 28                	ja     1400021e8 <__mingw_TLScallback+0x38>
   1400021c0:	85 d2                	test   edx,edx
   1400021c2:	74 4c                	je     140002210 <__mingw_TLScallback+0x60>
   1400021c4:	8b 05 1e 9f 00 00    	mov    eax,DWORD PTR [rip+0x9f1e]        # 14000c0e8 <__mingwthr_cs_init>
   1400021ca:	85 c0                	test   eax,eax
   1400021cc:	74 32                	je     140002200 <__mingw_TLScallback+0x50>
   1400021ce:	c7 05 10 9f 00 00 01 	mov    DWORD PTR [rip+0x9f10],0x1        # 14000c0e8 <__mingwthr_cs_init>
   1400021d5:	00 00 00 
   1400021d8:	b8 01 00 00 00       	mov    eax,0x1
   1400021dd:	48 83 c4 20          	add    rsp,0x20
   1400021e1:	5b                   	pop    rbx
   1400021e2:	c3                   	ret    
   1400021e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400021e8:	83 fa 03             	cmp    edx,0x3
   1400021eb:	75 eb                	jne    1400021d8 <__mingw_TLScallback+0x28>
   1400021ed:	8b 05 f5 9e 00 00    	mov    eax,DWORD PTR [rip+0x9ef5]        # 14000c0e8 <__mingwthr_cs_init>
   1400021f3:	85 c0                	test   eax,eax
   1400021f5:	74 e1                	je     1400021d8 <__mingw_TLScallback+0x28>
   1400021f7:	e8 34 fe ff ff       	call   140002030 <__mingwthr_run_key_dtors.part.0>
   1400021fc:	eb da                	jmp    1400021d8 <__mingw_TLScallback+0x28>
   1400021fe:	66 90                	xchg   ax,ax
   140002200:	48 8d 0d f9 9e 00 00 	lea    rcx,[rip+0x9ef9]        # 14000c100 <__mingwthr_cs>
   140002207:	ff 15 e7 af 00 00    	call   QWORD PTR [rip+0xafe7]        # 14000d1f4 <__imp_InitializeCriticalSection>
   14000220d:	eb bf                	jmp    1400021ce <__mingw_TLScallback+0x1e>
   14000220f:	90                   	nop
   140002210:	8b 05 d2 9e 00 00    	mov    eax,DWORD PTR [rip+0x9ed2]        # 14000c0e8 <__mingwthr_cs_init>
   140002216:	85 c0                	test   eax,eax
   140002218:	74 05                	je     14000221f <__mingw_TLScallback+0x6f>
   14000221a:	e8 11 fe ff ff       	call   140002030 <__mingwthr_run_key_dtors.part.0>
   14000221f:	8b 05 c3 9e 00 00    	mov    eax,DWORD PTR [rip+0x9ec3]        # 14000c0e8 <__mingwthr_cs_init>
   140002225:	83 f8 01             	cmp    eax,0x1
   140002228:	75 ae                	jne    1400021d8 <__mingw_TLScallback+0x28>
   14000222a:	48 8b 1d af 9e 00 00 	mov    rbx,QWORD PTR [rip+0x9eaf]        # 14000c0e0 <key_dtor_list>
   140002231:	48 85 db             	test   rbx,rbx
   140002234:	74 1b                	je     140002251 <__mingw_TLScallback+0xa1>
   140002236:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000223d:	00 00 00 
   140002240:	48 89 d9             	mov    rcx,rbx
   140002243:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   140002247:	e8 14 50 00 00       	call   140007260 <free>
   14000224c:	48 85 db             	test   rbx,rbx
   14000224f:	75 ef                	jne    140002240 <__mingw_TLScallback+0x90>
   140002251:	48 8d 0d a8 9e 00 00 	lea    rcx,[rip+0x9ea8]        # 14000c100 <__mingwthr_cs>
   140002258:	48 c7 05 7d 9e 00 00 	mov    QWORD PTR [rip+0x9e7d],0x0        # 14000c0e0 <key_dtor_list>
   14000225f:	00 00 00 00 
   140002263:	c7 05 7b 9e 00 00 00 	mov    DWORD PTR [rip+0x9e7b],0x0        # 14000c0e8 <__mingwthr_cs_init>
   14000226a:	00 00 00 
   14000226d:	ff 15 61 af 00 00    	call   QWORD PTR [rip+0xaf61]        # 14000d1d4 <__IAT_start__>
   140002273:	e9 60 ff ff ff       	jmp    1400021d8 <__mingw_TLScallback+0x28>
   140002278:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000227f:	00 
   140002280:	e8 0b f6 ff ff       	call   140001890 <_fpreset>
   140002285:	b8 01 00 00 00       	mov    eax,0x1
   14000228a:	48 83 c4 20          	add    rsp,0x20
   14000228e:	5b                   	pop    rbx
   14000228f:	c3                   	ret    

0000000140002290 <_ValidateImageBase.part.0>:
   140002290:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   140002294:	48 8d 14 08          	lea    rdx,[rax+rcx*1]
   140002298:	31 c0                	xor    eax,eax
   14000229a:	81 3a 50 45 00 00    	cmp    DWORD PTR [rdx],0x4550
   1400022a0:	75 0b                	jne    1400022ad <_ValidateImageBase.part.0+0x1d>
   1400022a2:	31 c0                	xor    eax,eax
   1400022a4:	66 81 7a 18 0b 02    	cmp    WORD PTR [rdx+0x18],0x20b
   1400022aa:	0f 94 c0             	sete   al
   1400022ad:	c3                   	ret    
   1400022ae:	66 90                	xchg   ax,ax

00000001400022b0 <_ValidateImageBase>:
   1400022b0:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   1400022b5:	75 09                	jne    1400022c0 <_ValidateImageBase+0x10>
   1400022b7:	eb d7                	jmp    140002290 <_ValidateImageBase.part.0>
   1400022b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400022c0:	31 c0                	xor    eax,eax
   1400022c2:	c3                   	ret    
   1400022c3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400022ca:	00 00 00 00 
   1400022ce:	66 90                	xchg   ax,ax

00000001400022d0 <_FindPESection>:
   1400022d0:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   1400022d4:	48 01 c1             	add    rcx,rax
   1400022d7:	0f b7 41 14          	movzx  eax,WORD PTR [rcx+0x14]
   1400022db:	48 8d 44 01 18       	lea    rax,[rcx+rax*1+0x18]
   1400022e0:	0f b7 49 06          	movzx  ecx,WORD PTR [rcx+0x6]
   1400022e4:	85 c9                	test   ecx,ecx
   1400022e6:	74 2d                	je     140002315 <_FindPESection+0x45>
   1400022e8:	83 e9 01             	sub    ecx,0x1
   1400022eb:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
   1400022ef:	4c 8d 4c c8 28       	lea    r9,[rax+rcx*8+0x28]
   1400022f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400022f8:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   1400022fc:	4c 89 c1             	mov    rcx,r8
   1400022ff:	49 39 d0             	cmp    r8,rdx
   140002302:	77 08                	ja     14000230c <_FindPESection+0x3c>
   140002304:	03 48 08             	add    ecx,DWORD PTR [rax+0x8]
   140002307:	48 39 d1             	cmp    rcx,rdx
   14000230a:	77 0b                	ja     140002317 <_FindPESection+0x47>
   14000230c:	48 83 c0 28          	add    rax,0x28
   140002310:	4c 39 c8             	cmp    rax,r9
   140002313:	75 e3                	jne    1400022f8 <_FindPESection+0x28>
   140002315:	31 c0                	xor    eax,eax
   140002317:	c3                   	ret    
   140002318:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000231f:	00 

0000000140002320 <_FindPESectionByName>:
   140002320:	41 54                	push   r12
   140002322:	56                   	push   rsi
   140002323:	53                   	push   rbx
   140002324:	48 83 ec 20          	sub    rsp,0x20
   140002328:	48 89 cb             	mov    rbx,rcx
   14000232b:	e8 f8 4e 00 00       	call   140007228 <strlen>
   140002330:	48 83 f8 08          	cmp    rax,0x8
   140002334:	77 7a                	ja     1400023b0 <_FindPESectionByName+0x90>
   140002336:	48 8b 0d a3 73 00 00 	mov    rcx,QWORD PTR [rip+0x73a3]        # 1400096e0 <.refptr.__image_base__>
   14000233d:	45 31 e4             	xor    r12d,r12d
   140002340:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002345:	75 57                	jne    14000239e <_FindPESectionByName+0x7e>
   140002347:	e8 44 ff ff ff       	call   140002290 <_ValidateImageBase.part.0>
   14000234c:	85 c0                	test   eax,eax
   14000234e:	74 4e                	je     14000239e <_FindPESectionByName+0x7e>
   140002350:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   140002354:	48 01 c1             	add    rcx,rax
   140002357:	0f b7 41 14          	movzx  eax,WORD PTR [rcx+0x14]
   14000235b:	4c 8d 64 01 18       	lea    r12,[rcx+rax*1+0x18]
   140002360:	0f b7 41 06          	movzx  eax,WORD PTR [rcx+0x6]
   140002364:	85 c0                	test   eax,eax
   140002366:	74 48                	je     1400023b0 <_FindPESectionByName+0x90>
   140002368:	83 e8 01             	sub    eax,0x1
   14000236b:	48 8d 04 80          	lea    rax,[rax+rax*4]
   14000236f:	49 8d 74 c4 28       	lea    rsi,[r12+rax*8+0x28]
   140002374:	eb 13                	jmp    140002389 <_FindPESectionByName+0x69>
   140002376:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000237d:	00 00 00 
   140002380:	49 83 c4 28          	add    r12,0x28
   140002384:	49 39 f4             	cmp    r12,rsi
   140002387:	74 27                	je     1400023b0 <_FindPESectionByName+0x90>
   140002389:	41 b8 08 00 00 00    	mov    r8d,0x8
   14000238f:	48 89 da             	mov    rdx,rbx
   140002392:	4c 89 e1             	mov    rcx,r12
   140002395:	e8 86 4e 00 00       	call   140007220 <strncmp>
   14000239a:	85 c0                	test   eax,eax
   14000239c:	75 e2                	jne    140002380 <_FindPESectionByName+0x60>
   14000239e:	4c 89 e0             	mov    rax,r12
   1400023a1:	48 83 c4 20          	add    rsp,0x20
   1400023a5:	5b                   	pop    rbx
   1400023a6:	5e                   	pop    rsi
   1400023a7:	41 5c                	pop    r12
   1400023a9:	c3                   	ret    
   1400023aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400023b0:	45 31 e4             	xor    r12d,r12d
   1400023b3:	4c 89 e0             	mov    rax,r12
   1400023b6:	48 83 c4 20          	add    rsp,0x20
   1400023ba:	5b                   	pop    rbx
   1400023bb:	5e                   	pop    rsi
   1400023bc:	41 5c                	pop    r12
   1400023be:	c3                   	ret    
   1400023bf:	90                   	nop

00000001400023c0 <__mingw_GetSectionForAddress>:
   1400023c0:	48 83 ec 28          	sub    rsp,0x28
   1400023c4:	4c 8b 15 15 73 00 00 	mov    r10,QWORD PTR [rip+0x7315]        # 1400096e0 <.refptr.__image_base__>
   1400023cb:	45 31 c0             	xor    r8d,r8d
   1400023ce:	66 41 81 3a 4d 5a    	cmp    WORD PTR [r10],0x5a4d
   1400023d4:	49 89 c9             	mov    r9,rcx
   1400023d7:	75 60                	jne    140002439 <__mingw_GetSectionForAddress+0x79>
   1400023d9:	4c 89 d1             	mov    rcx,r10
   1400023dc:	e8 af fe ff ff       	call   140002290 <_ValidateImageBase.part.0>
   1400023e1:	85 c0                	test   eax,eax
   1400023e3:	74 54                	je     140002439 <__mingw_GetSectionForAddress+0x79>
   1400023e5:	49 63 42 3c          	movsxd rax,DWORD PTR [r10+0x3c]
   1400023e9:	4c 89 c9             	mov    rcx,r9
   1400023ec:	4c 29 d1             	sub    rcx,r10
   1400023ef:	49 01 c2             	add    r10,rax
   1400023f2:	41 0f b7 42 14       	movzx  eax,WORD PTR [r10+0x14]
   1400023f7:	4d 8d 44 02 18       	lea    r8,[r10+rax*1+0x18]
   1400023fc:	41 0f b7 42 06       	movzx  eax,WORD PTR [r10+0x6]
   140002401:	85 c0                	test   eax,eax
   140002403:	74 31                	je     140002436 <__mingw_GetSectionForAddress+0x76>
   140002405:	83 e8 01             	sub    eax,0x1
   140002408:	48 8d 04 80          	lea    rax,[rax+rax*4]
   14000240c:	4d 8d 4c c0 28       	lea    r9,[r8+rax*8+0x28]
   140002411:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002418:	41 8b 50 0c          	mov    edx,DWORD PTR [r8+0xc]
   14000241c:	48 89 d0             	mov    rax,rdx
   14000241f:	48 39 d1             	cmp    rcx,rdx
   140002422:	72 09                	jb     14000242d <__mingw_GetSectionForAddress+0x6d>
   140002424:	41 03 40 08          	add    eax,DWORD PTR [r8+0x8]
   140002428:	48 39 c1             	cmp    rcx,rax
   14000242b:	72 0c                	jb     140002439 <__mingw_GetSectionForAddress+0x79>
   14000242d:	49 83 c0 28          	add    r8,0x28
   140002431:	4d 39 c8             	cmp    r8,r9
   140002434:	75 e2                	jne    140002418 <__mingw_GetSectionForAddress+0x58>
   140002436:	45 31 c0             	xor    r8d,r8d
   140002439:	4c 89 c0             	mov    rax,r8
   14000243c:	48 83 c4 28          	add    rsp,0x28
   140002440:	c3                   	ret    
   140002441:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002448:	00 00 00 00 
   14000244c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002450 <__mingw_GetSectionCount>:
   140002450:	48 83 ec 28          	sub    rsp,0x28
   140002454:	48 8b 0d 85 72 00 00 	mov    rcx,QWORD PTR [rip+0x7285]        # 1400096e0 <.refptr.__image_base__>
   14000245b:	31 c0                	xor    eax,eax
   14000245d:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002462:	75 12                	jne    140002476 <__mingw_GetSectionCount+0x26>
   140002464:	e8 27 fe ff ff       	call   140002290 <_ValidateImageBase.part.0>
   140002469:	85 c0                	test   eax,eax
   14000246b:	74 09                	je     140002476 <__mingw_GetSectionCount+0x26>
   14000246d:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   140002471:	0f b7 44 08 06       	movzx  eax,WORD PTR [rax+rcx*1+0x6]
   140002476:	48 83 c4 28          	add    rsp,0x28
   14000247a:	c3                   	ret    
   14000247b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140002480 <_FindPESectionExec>:
   140002480:	48 83 ec 28          	sub    rsp,0x28
   140002484:	45 31 c0             	xor    r8d,r8d
   140002487:	49 89 c9             	mov    r9,rcx
   14000248a:	48 8b 0d 4f 72 00 00 	mov    rcx,QWORD PTR [rip+0x724f]        # 1400096e0 <.refptr.__image_base__>
   140002491:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002496:	75 4c                	jne    1400024e4 <_FindPESectionExec+0x64>
   140002498:	e8 f3 fd ff ff       	call   140002290 <_ValidateImageBase.part.0>
   14000249d:	85 c0                	test   eax,eax
   14000249f:	74 43                	je     1400024e4 <_FindPESectionExec+0x64>
   1400024a1:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   1400024a5:	48 01 c1             	add    rcx,rax
   1400024a8:	0f b7 41 14          	movzx  eax,WORD PTR [rcx+0x14]
   1400024ac:	4c 8d 44 01 18       	lea    r8,[rcx+rax*1+0x18]
   1400024b1:	0f b7 41 06          	movzx  eax,WORD PTR [rcx+0x6]
   1400024b5:	85 c0                	test   eax,eax
   1400024b7:	74 28                	je     1400024e1 <_FindPESectionExec+0x61>
   1400024b9:	83 e8 01             	sub    eax,0x1
   1400024bc:	48 8d 04 80          	lea    rax,[rax+rax*4]
   1400024c0:	49 8d 44 c0 28       	lea    rax,[r8+rax*8+0x28]
   1400024c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400024c8:	41 f6 40 27 20       	test   BYTE PTR [r8+0x27],0x20
   1400024cd:	74 09                	je     1400024d8 <_FindPESectionExec+0x58>
   1400024cf:	4d 85 c9             	test   r9,r9
   1400024d2:	74 10                	je     1400024e4 <_FindPESectionExec+0x64>
   1400024d4:	49 83 e9 01          	sub    r9,0x1
   1400024d8:	49 83 c0 28          	add    r8,0x28
   1400024dc:	49 39 c0             	cmp    r8,rax
   1400024df:	75 e7                	jne    1400024c8 <_FindPESectionExec+0x48>
   1400024e1:	45 31 c0             	xor    r8d,r8d
   1400024e4:	4c 89 c0             	mov    rax,r8
   1400024e7:	48 83 c4 28          	add    rsp,0x28
   1400024eb:	c3                   	ret    
   1400024ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000001400024f0 <_GetPEImageBase>:
   1400024f0:	48 83 ec 28          	sub    rsp,0x28
   1400024f4:	48 8b 0d e5 71 00 00 	mov    rcx,QWORD PTR [rip+0x71e5]        # 1400096e0 <.refptr.__image_base__>
   1400024fb:	45 31 c0             	xor    r8d,r8d
   1400024fe:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002503:	75 0b                	jne    140002510 <_GetPEImageBase+0x20>
   140002505:	e8 86 fd ff ff       	call   140002290 <_ValidateImageBase.part.0>
   14000250a:	85 c0                	test   eax,eax
   14000250c:	4c 0f 45 c1          	cmovne r8,rcx
   140002510:	4c 89 c0             	mov    rax,r8
   140002513:	48 83 c4 28          	add    rsp,0x28
   140002517:	c3                   	ret    
   140002518:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000251f:	00 

0000000140002520 <_IsNonwritableInCurrentImage>:
   140002520:	48 83 ec 28          	sub    rsp,0x28
   140002524:	4c 8b 0d b5 71 00 00 	mov    r9,QWORD PTR [rip+0x71b5]        # 1400096e0 <.refptr.__image_base__>
   14000252b:	31 c0                	xor    eax,eax
   14000252d:	66 41 81 39 4d 5a    	cmp    WORD PTR [r9],0x5a4d
   140002533:	49 89 c8             	mov    r8,rcx
   140002536:	75 57                	jne    14000258f <_IsNonwritableInCurrentImage+0x6f>
   140002538:	4c 89 c9             	mov    rcx,r9
   14000253b:	e8 50 fd ff ff       	call   140002290 <_ValidateImageBase.part.0>
   140002540:	85 c0                	test   eax,eax
   140002542:	74 4b                	je     14000258f <_IsNonwritableInCurrentImage+0x6f>
   140002544:	49 63 41 3c          	movsxd rax,DWORD PTR [r9+0x3c]
   140002548:	4c 89 c1             	mov    rcx,r8
   14000254b:	4c 29 c9             	sub    rcx,r9
   14000254e:	49 01 c1             	add    r9,rax
   140002551:	41 0f b7 41 14       	movzx  eax,WORD PTR [r9+0x14]
   140002556:	41 0f b7 51 06       	movzx  edx,WORD PTR [r9+0x6]
   14000255b:	49 8d 44 01 18       	lea    rax,[r9+rax*1+0x18]
   140002560:	85 d2                	test   edx,edx
   140002562:	74 29                	je     14000258d <_IsNonwritableInCurrentImage+0x6d>
   140002564:	83 ea 01             	sub    edx,0x1
   140002567:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   14000256b:	4c 8d 4c d0 28       	lea    r9,[rax+rdx*8+0x28]
   140002570:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   140002574:	4c 89 c2             	mov    rdx,r8
   140002577:	4c 39 c1             	cmp    rcx,r8
   14000257a:	72 08                	jb     140002584 <_IsNonwritableInCurrentImage+0x64>
   14000257c:	03 50 08             	add    edx,DWORD PTR [rax+0x8]
   14000257f:	48 39 d1             	cmp    rcx,rdx
   140002582:	72 14                	jb     140002598 <_IsNonwritableInCurrentImage+0x78>
   140002584:	48 83 c0 28          	add    rax,0x28
   140002588:	4c 39 c8             	cmp    rax,r9
   14000258b:	75 e3                	jne    140002570 <_IsNonwritableInCurrentImage+0x50>
   14000258d:	31 c0                	xor    eax,eax
   14000258f:	48 83 c4 28          	add    rsp,0x28
   140002593:	c3                   	ret    
   140002594:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002598:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   14000259b:	f7 d0                	not    eax
   14000259d:	c1 e8 1f             	shr    eax,0x1f
   1400025a0:	48 83 c4 28          	add    rsp,0x28
   1400025a4:	c3                   	ret    
   1400025a5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400025ac:	00 00 00 00 

00000001400025b0 <__mingw_enum_import_library_names>:
   1400025b0:	48 83 ec 28          	sub    rsp,0x28
   1400025b4:	4c 8b 1d 25 71 00 00 	mov    r11,QWORD PTR [rip+0x7125]        # 1400096e0 <.refptr.__image_base__>
   1400025bb:	45 31 c9             	xor    r9d,r9d
   1400025be:	66 41 81 3b 4d 5a    	cmp    WORD PTR [r11],0x5a4d
   1400025c4:	41 89 c8             	mov    r8d,ecx
   1400025c7:	75 5f                	jne    140002628 <__mingw_enum_import_library_names+0x78>
   1400025c9:	4c 89 d9             	mov    rcx,r11
   1400025cc:	e8 bf fc ff ff       	call   140002290 <_ValidateImageBase.part.0>
   1400025d1:	85 c0                	test   eax,eax
   1400025d3:	74 53                	je     140002628 <__mingw_enum_import_library_names+0x78>
   1400025d5:	49 63 4b 3c          	movsxd rcx,DWORD PTR [r11+0x3c]
   1400025d9:	4c 01 d9             	add    rcx,r11
   1400025dc:	8b 81 90 00 00 00    	mov    eax,DWORD PTR [rcx+0x90]
   1400025e2:	85 c0                	test   eax,eax
   1400025e4:	74 42                	je     140002628 <__mingw_enum_import_library_names+0x78>
   1400025e6:	0f b7 51 14          	movzx  edx,WORD PTR [rcx+0x14]
   1400025ea:	48 8d 54 11 18       	lea    rdx,[rcx+rdx*1+0x18]
   1400025ef:	0f b7 49 06          	movzx  ecx,WORD PTR [rcx+0x6]
   1400025f3:	85 c9                	test   ecx,ecx
   1400025f5:	74 31                	je     140002628 <__mingw_enum_import_library_names+0x78>
   1400025f7:	83 e9 01             	sub    ecx,0x1
   1400025fa:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
   1400025fe:	4c 8d 54 ca 28       	lea    r10,[rdx+rcx*8+0x28]
   140002603:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002608:	44 8b 4a 0c          	mov    r9d,DWORD PTR [rdx+0xc]
   14000260c:	4c 89 c9             	mov    rcx,r9
   14000260f:	4c 39 c8             	cmp    rax,r9
   140002612:	72 08                	jb     14000261c <__mingw_enum_import_library_names+0x6c>
   140002614:	03 4a 08             	add    ecx,DWORD PTR [rdx+0x8]
   140002617:	48 39 c8             	cmp    rax,rcx
   14000261a:	72 14                	jb     140002630 <__mingw_enum_import_library_names+0x80>
   14000261c:	48 83 c2 28          	add    rdx,0x28
   140002620:	4c 39 d2             	cmp    rdx,r10
   140002623:	75 e3                	jne    140002608 <__mingw_enum_import_library_names+0x58>
   140002625:	45 31 c9             	xor    r9d,r9d
   140002628:	4c 89 c8             	mov    rax,r9
   14000262b:	48 83 c4 28          	add    rsp,0x28
   14000262f:	c3                   	ret    
   140002630:	4c 01 d8             	add    rax,r11
   140002633:	eb 0b                	jmp    140002640 <__mingw_enum_import_library_names+0x90>
   140002635:	0f 1f 00             	nop    DWORD PTR [rax]
   140002638:	41 83 e8 01          	sub    r8d,0x1
   14000263c:	48 83 c0 14          	add    rax,0x14
   140002640:	8b 48 04             	mov    ecx,DWORD PTR [rax+0x4]
   140002643:	85 c9                	test   ecx,ecx
   140002645:	75 07                	jne    14000264e <__mingw_enum_import_library_names+0x9e>
   140002647:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   14000264a:	85 d2                	test   edx,edx
   14000264c:	74 d7                	je     140002625 <__mingw_enum_import_library_names+0x75>
   14000264e:	45 85 c0             	test   r8d,r8d
   140002651:	7f e5                	jg     140002638 <__mingw_enum_import_library_names+0x88>
   140002653:	44 8b 48 0c          	mov    r9d,DWORD PTR [rax+0xc]
   140002657:	4d 01 d9             	add    r9,r11
   14000265a:	4c 89 c8             	mov    rax,r9
   14000265d:	48 83 c4 28          	add    rsp,0x28
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

0000000140002670 <___chkstk_ms>:
   140002670:	51                   	push   rcx
   140002671:	50                   	push   rax
   140002672:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002678:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   14000267d:	72 19                	jb     140002698 <___chkstk_ms+0x28>
   14000267f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002686:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000268a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002690:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002696:	77 e7                	ja     14000267f <___chkstk_ms+0xf>
   140002698:	48 29 c1             	sub    rcx,rax
   14000269b:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000269f:	58                   	pop    rax
   1400026a0:	59                   	pop    rcx
   1400026a1:	c3                   	ret    
   1400026a2:	90                   	nop
   1400026a3:	90                   	nop
   1400026a4:	90                   	nop
   1400026a5:	90                   	nop
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop
   1400026a8:	90                   	nop
   1400026a9:	90                   	nop
   1400026aa:	90                   	nop
   1400026ab:	90                   	nop
   1400026ac:	90                   	nop
   1400026ad:	90                   	nop
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <__mingw_vfprintf>:
   1400026b0:	41 55                	push   r13
   1400026b2:	41 54                	push   r12
   1400026b4:	53                   	push   rbx
   1400026b5:	48 83 ec 30          	sub    rsp,0x30
   1400026b9:	4c 89 c3             	mov    rbx,r8
   1400026bc:	49 89 cc             	mov    r12,rcx
   1400026bf:	49 89 d5             	mov    r13,rdx
   1400026c2:	e8 99 51 00 00       	call   140007860 <_lock_file>
   1400026c7:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
   1400026cc:	4d 89 e9             	mov    r9,r13
   1400026cf:	45 31 c0             	xor    r8d,r8d
   1400026d2:	4c 89 e2             	mov    rdx,r12
   1400026d5:	b9 00 60 00 00       	mov    ecx,0x6000
   1400026da:	e8 f1 1a 00 00       	call   1400041d0 <__mingw_pformat>
   1400026df:	4c 89 e1             	mov    rcx,r12
   1400026e2:	41 89 c5             	mov    r13d,eax
   1400026e5:	e8 e6 51 00 00       	call   1400078d0 <_unlock_file>
   1400026ea:	44 89 e8             	mov    eax,r13d
   1400026ed:	48 83 c4 30          	add    rsp,0x30
   1400026f1:	5b                   	pop    rbx
   1400026f2:	41 5c                	pop    r12
   1400026f4:	41 5d                	pop    r13
   1400026f6:	c3                   	ret    
   1400026f7:	90                   	nop
   1400026f8:	90                   	nop
   1400026f9:	90                   	nop
   1400026fa:	90                   	nop
   1400026fb:	90                   	nop
   1400026fc:	90                   	nop
   1400026fd:	90                   	nop
   1400026fe:	90                   	nop
   1400026ff:	90                   	nop

0000000140002700 <__pformat_cvt>:
   140002700:	48 83 ec 58          	sub    rsp,0x58
   140002704:	44 8b 5a 08          	mov    r11d,DWORD PTR [rdx+0x8]
   140002708:	4c 8b 12             	mov    r10,QWORD PTR [rdx]
   14000270b:	4c 89 d8             	mov    rax,r11
   14000270e:	66 25 ff 7f          	and    ax,0x7fff
   140002712:	0f 85 80 00 00 00    	jne    140002798 <__pformat_cvt+0x98>
   140002718:	4d 89 d3             	mov    r11,r10
   14000271b:	0f b7 42 08          	movzx  eax,WORD PTR [rdx+0x8]
   14000271f:	49 c1 eb 20          	shr    r11,0x20
   140002723:	45 09 da             	or     r10d,r11d
   140002726:	0f 84 7c 00 00 00    	je     1400027a8 <__pformat_cvt+0xa8>
   14000272c:	45 85 db             	test   r11d,r11d
   14000272f:	0f 89 c3 00 00 00    	jns    1400027f8 <__pformat_cvt+0xf8>
   140002735:	41 89 c3             	mov    r11d,eax
   140002738:	c7 44 24 44 01 00 00 	mov    DWORD PTR [rsp+0x44],0x1
   14000273f:	00 
   140002740:	41 81 e3 ff 7f 00 00 	and    r11d,0x7fff
   140002747:	41 81 eb 3e 40 00 00 	sub    r11d,0x403e
   14000274e:	66 90                	xchg   ax,ax
   140002750:	25 00 80 00 00       	and    eax,0x8000
   140002755:	4c 8b 94 24 80 00 00 	mov    r10,QWORD PTR [rsp+0x80]
   14000275c:	00 
   14000275d:	41 89 02             	mov    DWORD PTR [r10],eax
   140002760:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140002765:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
   14000276a:	4c 8d 4c 24 44       	lea    r9,[rsp+0x44]
   14000276f:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
   140002774:	49 89 d0             	mov    r8,rdx
   140002777:	44 89 da             	mov    edx,r11d
   14000277a:	89 4c 24 20          	mov    DWORD PTR [rsp+0x20],ecx
   14000277e:	48 8d 0d db 58 00 00 	lea    rcx,[rip+0x58db]        # 140008060 <fpi.6299>
   140002785:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
   14000278a:	e8 f1 25 00 00       	call   140004d80 <__gdtoa>
   14000278f:	48 83 c4 58          	add    rsp,0x58
   140002793:	c3                   	ret    
   140002794:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002798:	66 3d ff 7f          	cmp    ax,0x7fff
   14000279c:	74 1a                	je     1400027b8 <__pformat_cvt+0xb8>
   14000279e:	0f b7 42 08          	movzx  eax,WORD PTR [rdx+0x8]
   1400027a2:	eb 91                	jmp    140002735 <__pformat_cvt+0x35>
   1400027a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400027a8:	c7 44 24 44 00 00 00 	mov    DWORD PTR [rsp+0x44],0x0
   1400027af:	00 
   1400027b0:	45 31 db             	xor    r11d,r11d
   1400027b3:	eb 9b                	jmp    140002750 <__pformat_cvt+0x50>
   1400027b5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400027b8:	4c 89 d0             	mov    rax,r10
   1400027bb:	48 c1 e8 20          	shr    rax,0x20
   1400027bf:	25 ff ff ff 7f       	and    eax,0x7fffffff
   1400027c4:	44 09 d0             	or     eax,r10d
   1400027c7:	74 17                	je     1400027e0 <__pformat_cvt+0xe0>
   1400027c9:	c7 44 24 44 04 00 00 	mov    DWORD PTR [rsp+0x44],0x4
   1400027d0:	00 
   1400027d1:	45 31 db             	xor    r11d,r11d
   1400027d4:	31 c0                	xor    eax,eax
   1400027d6:	e9 7a ff ff ff       	jmp    140002755 <__pformat_cvt+0x55>
   1400027db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400027e0:	c7 44 24 44 03 00 00 	mov    DWORD PTR [rsp+0x44],0x3
   1400027e7:	00 
   1400027e8:	0f b7 42 08          	movzx  eax,WORD PTR [rdx+0x8]
   1400027ec:	45 31 db             	xor    r11d,r11d
   1400027ef:	e9 5c ff ff ff       	jmp    140002750 <__pformat_cvt+0x50>
   1400027f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400027f8:	c7 44 24 44 02 00 00 	mov    DWORD PTR [rsp+0x44],0x2
   1400027ff:	00 
   140002800:	41 bb c3 bf ff ff    	mov    r11d,0xffffbfc3
   140002806:	e9 45 ff ff ff       	jmp    140002750 <__pformat_cvt+0x50>
   14000280b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140002810 <__pformat_putc>:
   140002810:	53                   	push   rbx
   140002811:	48 83 ec 20          	sub    rsp,0x20
   140002815:	48 89 d3             	mov    rbx,rdx
   140002818:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   14000281b:	f6 c6 40             	test   dh,0x40
   14000281e:	75 08                	jne    140002828 <__pformat_putc+0x18>
   140002820:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002823:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002826:	7e 13                	jle    14000283b <__pformat_putc+0x2b>
   140002828:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
   14000282b:	80 e6 20             	and    dh,0x20
   14000282e:	75 20                	jne    140002850 <__pformat_putc+0x40>
   140002830:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002834:	41 88 0c 00          	mov    BYTE PTR [r8+rax*1],cl
   140002838:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000283b:	83 c0 01             	add    eax,0x1
   14000283e:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002841:	48 83 c4 20          	add    rsp,0x20
   140002845:	5b                   	pop    rbx
   140002846:	c3                   	ret    
   140002847:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000284e:	00 00 
   140002850:	4c 89 c2             	mov    rdx,r8
   140002853:	e8 10 4a 00 00       	call   140007268 <fputc>
   140002858:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000285b:	83 c0 01             	add    eax,0x1
   14000285e:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002861:	48 83 c4 20          	add    rsp,0x20
   140002865:	5b                   	pop    rbx
   140002866:	c3                   	ret    
   140002867:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000286e:	00 00 

0000000140002870 <__pformat_wputchars>:
   140002870:	41 56                	push   r14
   140002872:	41 55                	push   r13
   140002874:	41 54                	push   r12
   140002876:	55                   	push   rbp
   140002877:	57                   	push   rdi
   140002878:	56                   	push   rsi
   140002879:	53                   	push   rbx
   14000287a:	48 83 ec 40          	sub    rsp,0x40
   14000287e:	4c 8d 74 24 28       	lea    r14,[rsp+0x28]
   140002883:	4c 8d 6c 24 30       	lea    r13,[rsp+0x30]
   140002888:	4c 89 c6             	mov    rsi,r8
   14000288b:	49 89 cc             	mov    r12,rcx
   14000288e:	89 d5                	mov    ebp,edx
   140002890:	4d 89 f0             	mov    r8,r14
   140002893:	31 d2                	xor    edx,edx
   140002895:	4c 89 e9             	mov    rcx,r13
   140002898:	e8 33 4e 00 00       	call   1400076d0 <wcrtomb>
   14000289d:	8b 46 10             	mov    eax,DWORD PTR [rsi+0x10]
   1400028a0:	85 c0                	test   eax,eax
   1400028a2:	78 05                	js     1400028a9 <__pformat_wputchars+0x39>
   1400028a4:	39 c5                	cmp    ebp,eax
   1400028a6:	0f 4f e8             	cmovg  ebp,eax
   1400028a9:	8b 46 0c             	mov    eax,DWORD PTR [rsi+0xc]
   1400028ac:	39 e8                	cmp    eax,ebp
   1400028ae:	0f 8f 95 00 00 00    	jg     140002949 <__pformat_wputchars+0xd9>
   1400028b4:	c7 46 0c ff ff ff ff 	mov    DWORD PTR [rsi+0xc],0xffffffff
   1400028bb:	85 ed                	test   ebp,ebp
   1400028bd:	0f 8e cc 00 00 00    	jle    14000298f <__pformat_wputchars+0x11f>
   1400028c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400028c8:	41 0f b7 14 24       	movzx  edx,WORD PTR [r12]
   1400028cd:	4d 89 f0             	mov    r8,r14
   1400028d0:	4c 89 e9             	mov    rcx,r13
   1400028d3:	49 83 c4 02          	add    r12,0x2
   1400028d7:	e8 f4 4d 00 00       	call   1400076d0 <wcrtomb>
   1400028dc:	85 c0                	test   eax,eax
   1400028de:	7e 4d                	jle    14000292d <__pformat_wputchars+0xbd>
   1400028e0:	83 e8 01             	sub    eax,0x1
   1400028e3:	4c 89 eb             	mov    rbx,r13
   1400028e6:	49 8d 7c 05 01       	lea    rdi,[r13+rax*1+0x1]
   1400028eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400028f0:	0f be 0b             	movsx  ecx,BYTE PTR [rbx]
   1400028f3:	48 83 c3 01          	add    rbx,0x1
   1400028f7:	48 89 f2             	mov    rdx,rsi
   1400028fa:	e8 11 ff ff ff       	call   140002810 <__pformat_putc>
   1400028ff:	48 39 fb             	cmp    rbx,rdi
   140002902:	75 ec                	jne    1400028f0 <__pformat_wputchars+0x80>
   140002904:	83 ed 01             	sub    ebp,0x1
   140002907:	75 bf                	jne    1400028c8 <__pformat_wputchars+0x58>
   140002909:	8b 46 0c             	mov    eax,DWORD PTR [rsi+0xc]
   14000290c:	8d 50 ff             	lea    edx,[rax-0x1]
   14000290f:	89 56 0c             	mov    DWORD PTR [rsi+0xc],edx
   140002912:	85 c0                	test   eax,eax
   140002914:	7e 24                	jle    14000293a <__pformat_wputchars+0xca>
   140002916:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000291d:	00 00 00 
   140002920:	48 89 f2             	mov    rdx,rsi
   140002923:	b9 20 00 00 00       	mov    ecx,0x20
   140002928:	e8 e3 fe ff ff       	call   140002810 <__pformat_putc>
   14000292d:	8b 46 0c             	mov    eax,DWORD PTR [rsi+0xc]
   140002930:	8d 50 ff             	lea    edx,[rax-0x1]
   140002933:	89 56 0c             	mov    DWORD PTR [rsi+0xc],edx
   140002936:	85 c0                	test   eax,eax
   140002938:	7f e6                	jg     140002920 <__pformat_wputchars+0xb0>
   14000293a:	48 83 c4 40          	add    rsp,0x40
   14000293e:	5b                   	pop    rbx
   14000293f:	5e                   	pop    rsi
   140002940:	5f                   	pop    rdi
   140002941:	5d                   	pop    rbp
   140002942:	41 5c                	pop    r12
   140002944:	41 5d                	pop    r13
   140002946:	41 5e                	pop    r14
   140002948:	c3                   	ret    
   140002949:	29 e8                	sub    eax,ebp
   14000294b:	89 46 0c             	mov    DWORD PTR [rsi+0xc],eax
   14000294e:	f6 46 09 04          	test   BYTE PTR [rsi+0x9],0x4
   140002952:	75 2b                	jne    14000297f <__pformat_wputchars+0x10f>
   140002954:	83 e8 01             	sub    eax,0x1
   140002957:	89 46 0c             	mov    DWORD PTR [rsi+0xc],eax
   14000295a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002960:	48 89 f2             	mov    rdx,rsi
   140002963:	b9 20 00 00 00       	mov    ecx,0x20
   140002968:	e8 a3 fe ff ff       	call   140002810 <__pformat_putc>
   14000296d:	8b 46 0c             	mov    eax,DWORD PTR [rsi+0xc]
   140002970:	8d 50 ff             	lea    edx,[rax-0x1]
   140002973:	89 56 0c             	mov    DWORD PTR [rsi+0xc],edx
   140002976:	85 c0                	test   eax,eax
   140002978:	75 e6                	jne    140002960 <__pformat_wputchars+0xf0>
   14000297a:	e9 3c ff ff ff       	jmp    1400028bb <__pformat_wputchars+0x4b>
   14000297f:	85 ed                	test   ebp,ebp
   140002981:	0f 8f 41 ff ff ff    	jg     1400028c8 <__pformat_wputchars+0x58>
   140002987:	83 e8 01             	sub    eax,0x1
   14000298a:	89 46 0c             	mov    DWORD PTR [rsi+0xc],eax
   14000298d:	eb 91                	jmp    140002920 <__pformat_wputchars+0xb0>
   14000298f:	c7 46 0c fe ff ff ff 	mov    DWORD PTR [rsi+0xc],0xfffffffe
   140002996:	eb a2                	jmp    14000293a <__pformat_wputchars+0xca>
   140002998:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000299f:	00 

00000001400029a0 <__pformat_putchars>:
   1400029a0:	57                   	push   rdi
   1400029a1:	56                   	push   rsi
   1400029a2:	53                   	push   rbx
   1400029a3:	48 83 ec 20          	sub    rsp,0x20
   1400029a7:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
   1400029ab:	48 89 ce             	mov    rsi,rcx
   1400029ae:	89 d7                	mov    edi,edx
   1400029b0:	4c 89 c3             	mov    rbx,r8
   1400029b3:	85 c0                	test   eax,eax
   1400029b5:	78 05                	js     1400029bc <__pformat_putchars+0x1c>
   1400029b7:	39 c2                	cmp    edx,eax
   1400029b9:	0f 4f f8             	cmovg  edi,eax
   1400029bc:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400029bf:	39 f8                	cmp    eax,edi
   1400029c1:	7f 6d                	jg     140002a30 <__pformat_putchars+0x90>
   1400029c3:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   1400029ca:	85 ff                	test   edi,edi
   1400029cc:	0f 84 ae 00 00 00    	je     140002a80 <__pformat_putchars+0xe0>
   1400029d2:	8d 47 ff             	lea    eax,[rdi-0x1]
   1400029d5:	48 8d 7c 06 01       	lea    rdi,[rsi+rax*1+0x1]
   1400029da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400029e0:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   1400029e3:	48 83 c6 01          	add    rsi,0x1
   1400029e7:	48 89 da             	mov    rdx,rbx
   1400029ea:	e8 21 fe ff ff       	call   140002810 <__pformat_putc>
   1400029ef:	48 39 f7             	cmp    rdi,rsi
   1400029f2:	75 ec                	jne    1400029e0 <__pformat_putchars+0x40>
   1400029f4:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400029f7:	8d 50 ff             	lea    edx,[rax-0x1]
   1400029fa:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400029fd:	85 c0                	test   eax,eax
   1400029ff:	7e 21                	jle    140002a22 <__pformat_putchars+0x82>
   140002a01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002a08:	48 89 da             	mov    rdx,rbx
   140002a0b:	b9 20 00 00 00       	mov    ecx,0x20
   140002a10:	e8 fb fd ff ff       	call   140002810 <__pformat_putc>
   140002a15:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002a18:	8d 50 ff             	lea    edx,[rax-0x1]
   140002a1b:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002a1e:	85 c0                	test   eax,eax
   140002a20:	7f e6                	jg     140002a08 <__pformat_putchars+0x68>
   140002a22:	48 83 c4 20          	add    rsp,0x20
   140002a26:	5b                   	pop    rbx
   140002a27:	5e                   	pop    rsi
   140002a28:	5f                   	pop    rdi
   140002a29:	c3                   	ret    
   140002a2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002a30:	29 f8                	sub    eax,edi
   140002a32:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002a35:	f6 43 09 04          	test   BYTE PTR [rbx+0x9],0x4
   140002a39:	75 35                	jne    140002a70 <__pformat_putchars+0xd0>
   140002a3b:	83 e8 01             	sub    eax,0x1
   140002a3e:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002a41:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002a48:	48 89 da             	mov    rdx,rbx
   140002a4b:	b9 20 00 00 00       	mov    ecx,0x20
   140002a50:	e8 bb fd ff ff       	call   140002810 <__pformat_putc>
   140002a55:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002a58:	8d 50 ff             	lea    edx,[rax-0x1]
   140002a5b:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002a5e:	85 c0                	test   eax,eax
   140002a60:	75 e6                	jne    140002a48 <__pformat_putchars+0xa8>
   140002a62:	e9 63 ff ff ff       	jmp    1400029ca <__pformat_putchars+0x2a>
   140002a67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002a6e:	00 00 
   140002a70:	85 ff                	test   edi,edi
   140002a72:	0f 85 5a ff ff ff    	jne    1400029d2 <__pformat_putchars+0x32>
   140002a78:	83 e8 01             	sub    eax,0x1
   140002a7b:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002a7e:	eb 88                	jmp    140002a08 <__pformat_putchars+0x68>
   140002a80:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   140002a87:	eb 99                	jmp    140002a22 <__pformat_putchars+0x82>
   140002a89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140002a90 <__pformat_puts>:
   140002a90:	41 54                	push   r12
   140002a92:	53                   	push   rbx
   140002a93:	48 83 ec 28          	sub    rsp,0x28
   140002a97:	48 8d 05 62 68 00 00 	lea    rax,[rip+0x6862]        # 140009300 <.rdata>
   140002a9e:	49 89 cc             	mov    r12,rcx
   140002aa1:	48 85 c9             	test   rcx,rcx
   140002aa4:	48 89 d3             	mov    rbx,rdx
   140002aa7:	48 63 52 10          	movsxd rdx,DWORD PTR [rdx+0x10]
   140002aab:	4c 0f 44 e0          	cmove  r12,rax
   140002aaf:	4c 89 e1             	mov    rcx,r12
   140002ab2:	85 d2                	test   edx,edx
   140002ab4:	78 1a                	js     140002ad0 <__pformat_puts+0x40>
   140002ab6:	e8 f5 46 00 00       	call   1400071b0 <strnlen>
   140002abb:	48 89 c2             	mov    rdx,rax
   140002abe:	49 89 d8             	mov    r8,rbx
   140002ac1:	4c 89 e1             	mov    rcx,r12
   140002ac4:	48 83 c4 28          	add    rsp,0x28
   140002ac8:	5b                   	pop    rbx
   140002ac9:	41 5c                	pop    r12
   140002acb:	e9 d0 fe ff ff       	jmp    1400029a0 <__pformat_putchars>
   140002ad0:	e8 53 47 00 00       	call   140007228 <strlen>
   140002ad5:	eb e4                	jmp    140002abb <__pformat_puts+0x2b>
   140002ad7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002ade:	00 00 

0000000140002ae0 <__pformat_emit_inf_or_nan>:
   140002ae0:	48 83 ec 38          	sub    rsp,0x38
   140002ae4:	45 8b 50 08          	mov    r10d,DWORD PTR [r8+0x8]
   140002ae8:	41 c7 40 10 ff ff ff 	mov    DWORD PTR [r8+0x10],0xffffffff
   140002aef:	ff 
   140002af0:	85 c9                	test   ecx,ecx
   140002af2:	74 4c                	je     140002b40 <__pformat_emit_inf_or_nan+0x60>
   140002af4:	c6 44 24 2c 2d       	mov    BYTE PTR [rsp+0x2c],0x2d
   140002af9:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002afe:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002b03:	41 83 e2 20          	and    r10d,0x20
   140002b07:	31 c9                	xor    ecx,ecx
   140002b09:	0f b6 04 0a          	movzx  eax,BYTE PTR [rdx+rcx*1]
   140002b0d:	83 e0 df             	and    eax,0xffffffdf
   140002b10:	44 09 d0             	or     eax,r10d
   140002b13:	41 88 04 09          	mov    BYTE PTR [r9+rcx*1],al
   140002b17:	48 83 c1 01          	add    rcx,0x1
   140002b1b:	48 83 f9 03          	cmp    rcx,0x3
   140002b1f:	75 e8                	jne    140002b09 <__pformat_emit_inf_or_nan+0x29>
   140002b21:	49 8d 51 03          	lea    rdx,[r9+0x3]
   140002b25:	4c 89 d9             	mov    rcx,r11
   140002b28:	4c 29 da             	sub    rdx,r11
   140002b2b:	e8 70 fe ff ff       	call   1400029a0 <__pformat_putchars>
   140002b30:	90                   	nop
   140002b31:	48 83 c4 38          	add    rsp,0x38
   140002b35:	c3                   	ret    
   140002b36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140002b3d:	00 00 00 
   140002b40:	41 f7 c2 00 01 00 00 	test   r10d,0x100
   140002b47:	74 17                	je     140002b60 <__pformat_emit_inf_or_nan+0x80>
   140002b49:	c6 44 24 2c 2b       	mov    BYTE PTR [rsp+0x2c],0x2b
   140002b4e:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002b53:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002b58:	eb a9                	jmp    140002b03 <__pformat_emit_inf_or_nan+0x23>
   140002b5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002b60:	41 f6 c2 40          	test   r10b,0x40
   140002b64:	74 1a                	je     140002b80 <__pformat_emit_inf_or_nan+0xa0>
   140002b66:	c6 44 24 2c 20       	mov    BYTE PTR [rsp+0x2c],0x20
   140002b6b:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002b70:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002b75:	eb 8c                	jmp    140002b03 <__pformat_emit_inf_or_nan+0x23>
   140002b77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002b7e:	00 00 
   140002b80:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002b85:	4d 89 d9             	mov    r9,r11
   140002b88:	e9 76 ff ff ff       	jmp    140002b03 <__pformat_emit_inf_or_nan+0x23>
   140002b8d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140002b90 <__pformat_emit_radix_point>:
   140002b90:	55                   	push   rbp
   140002b91:	41 54                	push   r12
   140002b93:	57                   	push   rdi
   140002b94:	56                   	push   rsi
   140002b95:	53                   	push   rbx
   140002b96:	48 89 e5             	mov    rbp,rsp
   140002b99:	48 83 ec 30          	sub    rsp,0x30
   140002b9d:	83 79 14 fd          	cmp    DWORD PTR [rcx+0x14],0xfffffffd
   140002ba1:	49 89 cc             	mov    r12,rcx
   140002ba4:	0f 84 96 00 00 00    	je     140002c40 <__pformat_emit_radix_point+0xb0>
   140002baa:	0f b7 51 18          	movzx  edx,WORD PTR [rcx+0x18]
   140002bae:	66 85 d2             	test   dx,dx
   140002bb1:	74 6d                	je     140002c20 <__pformat_emit_radix_point+0x90>
   140002bb3:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
   140002bb8:	48 89 e6             	mov    rsi,rsp
   140002bbb:	48 83 c0 0f          	add    rax,0xf
   140002bbf:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002bc3:	e8 a8 fa ff ff       	call   140002670 <___chkstk_ms>
   140002bc8:	48 29 c4             	sub    rsp,rax
   140002bcb:	4c 8d 45 f8          	lea    r8,[rbp-0x8]
   140002bcf:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   140002bd6:	00 
   140002bd7:	48 8d 5c 24 20       	lea    rbx,[rsp+0x20]
   140002bdc:	48 89 d9             	mov    rcx,rbx
   140002bdf:	e8 ec 4a 00 00       	call   1400076d0 <wcrtomb>
   140002be4:	85 c0                	test   eax,eax
   140002be6:	0f 8e 94 00 00 00    	jle    140002c80 <__pformat_emit_radix_point+0xf0>
   140002bec:	83 e8 01             	sub    eax,0x1
   140002bef:	48 8d 7c 03 01       	lea    rdi,[rbx+rax*1+0x1]
   140002bf4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002bf8:	0f be 0b             	movsx  ecx,BYTE PTR [rbx]
   140002bfb:	48 83 c3 01          	add    rbx,0x1
   140002bff:	4c 89 e2             	mov    rdx,r12
   140002c02:	e8 09 fc ff ff       	call   140002810 <__pformat_putc>
   140002c07:	48 39 fb             	cmp    rbx,rdi
   140002c0a:	75 ec                	jne    140002bf8 <__pformat_emit_radix_point+0x68>
   140002c0c:	48 89 f4             	mov    rsp,rsi
   140002c0f:	48 89 ec             	mov    rsp,rbp
   140002c12:	5b                   	pop    rbx
   140002c13:	5e                   	pop    rsi
   140002c14:	5f                   	pop    rdi
   140002c15:	41 5c                	pop    r12
   140002c17:	5d                   	pop    rbp
   140002c18:	c3                   	ret    
   140002c19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002c20:	4c 89 e2             	mov    rdx,r12
   140002c23:	b9 2e 00 00 00       	mov    ecx,0x2e
   140002c28:	e8 e3 fb ff ff       	call   140002810 <__pformat_putc>
   140002c2d:	90                   	nop
   140002c2e:	48 89 ec             	mov    rsp,rbp
   140002c31:	5b                   	pop    rbx
   140002c32:	5e                   	pop    rsi
   140002c33:	5f                   	pop    rdi
   140002c34:	41 5c                	pop    r12
   140002c36:	5d                   	pop    rbp
   140002c37:	c3                   	ret    
   140002c38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140002c3f:	00 
   140002c40:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   140002c47:	00 
   140002c48:	48 8d 5d f8          	lea    rbx,[rbp-0x8]
   140002c4c:	e8 ff 45 00 00       	call   140007250 <localeconv>
   140002c51:	48 8d 4d f6          	lea    rcx,[rbp-0xa]
   140002c55:	49 89 d9             	mov    r9,rbx
   140002c58:	41 b8 10 00 00 00    	mov    r8d,0x10
   140002c5e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002c61:	e8 fa 47 00 00       	call   140007460 <mbrtowc>
   140002c66:	85 c0                	test   eax,eax
   140002c68:	7e 2e                	jle    140002c98 <__pformat_emit_radix_point+0x108>
   140002c6a:	0f b7 55 f6          	movzx  edx,WORD PTR [rbp-0xa]
   140002c6e:	66 41 89 54 24 18    	mov    WORD PTR [r12+0x18],dx
   140002c74:	41 89 44 24 14       	mov    DWORD PTR [r12+0x14],eax
   140002c79:	e9 30 ff ff ff       	jmp    140002bae <__pformat_emit_radix_point+0x1e>
   140002c7e:	66 90                	xchg   ax,ax
   140002c80:	4c 89 e2             	mov    rdx,r12
   140002c83:	b9 2e 00 00 00       	mov    ecx,0x2e
   140002c88:	e8 83 fb ff ff       	call   140002810 <__pformat_putc>
   140002c8d:	e9 7a ff ff ff       	jmp    140002c0c <__pformat_emit_radix_point+0x7c>
   140002c92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002c98:	41 0f b7 54 24 18    	movzx  edx,WORD PTR [r12+0x18]
   140002c9e:	eb d4                	jmp    140002c74 <__pformat_emit_radix_point+0xe4>

0000000140002ca0 <__pformat_emit_float>:
   140002ca0:	55                   	push   rbp
   140002ca1:	57                   	push   rdi
   140002ca2:	56                   	push   rsi
   140002ca3:	53                   	push   rbx
   140002ca4:	48 83 ec 28          	sub    rsp,0x28
   140002ca8:	41 8b 41 0c          	mov    eax,DWORD PTR [r9+0xc]
   140002cac:	89 cd                	mov    ebp,ecx
   140002cae:	48 89 d7             	mov    rdi,rdx
   140002cb1:	44 89 c6             	mov    esi,r8d
   140002cb4:	4c 89 cb             	mov    rbx,r9
   140002cb7:	45 85 c0             	test   r8d,r8d
   140002cba:	0f 8e 10 02 00 00    	jle    140002ed0 <__pformat_emit_float+0x230>
   140002cc0:	41 39 c0             	cmp    r8d,eax
   140002cc3:	0f 8e f7 00 00 00    	jle    140002dc0 <__pformat_emit_float+0x120>
   140002cc9:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002cd0:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140002cd5:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140002cd9:	74 4d                	je     140002d28 <__pformat_emit_float+0x88>
   140002cdb:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140002ce0:	0f 84 0a 01 00 00    	je     140002df0 <__pformat_emit_float+0x150>
   140002ce6:	ba ab aa aa aa       	mov    edx,0xaaaaaaab
   140002ceb:	44 8d 46 02          	lea    r8d,[rsi+0x2]
   140002cef:	4c 0f af c2          	imul   r8,rdx
   140002cf3:	89 c2                	mov    edx,eax
   140002cf5:	49 c1 e8 21          	shr    r8,0x21
   140002cf9:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   140002cfd:	29 c1                	sub    ecx,eax
   140002cff:	41 83 f8 01          	cmp    r8d,0x1
   140002d03:	75 1b                	jne    140002d20 <__pformat_emit_float+0x80>
   140002d05:	e9 e6 00 00 00       	jmp    140002df0 <__pformat_emit_float+0x150>
   140002d0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002d10:	83 ea 01             	sub    edx,0x1
   140002d13:	89 c8                	mov    eax,ecx
   140002d15:	01 d0                	add    eax,edx
   140002d17:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002d1a:	0f 84 2a 03 00 00    	je     14000304a <__pformat_emit_float+0x3aa>
   140002d20:	85 d2                	test   edx,edx
   140002d22:	7f ec                	jg     140002d10 <__pformat_emit_float+0x70>
   140002d24:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002d28:	85 ed                	test   ebp,ebp
   140002d2a:	0f 85 22 01 00 00    	jne    140002e52 <__pformat_emit_float+0x1b2>
   140002d30:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140002d33:	f6 c6 01             	test   dh,0x1
   140002d36:	0f 85 84 02 00 00    	jne    140002fc0 <__pformat_emit_float+0x320>
   140002d3c:	83 e2 40             	and    edx,0x40
   140002d3f:	0f 85 f3 02 00 00    	jne    140003038 <__pformat_emit_float+0x398>
   140002d45:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002d48:	85 c0                	test   eax,eax
   140002d4a:	7e 15                	jle    140002d61 <__pformat_emit_float+0xc1>
   140002d4c:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140002d4f:	81 e2 00 06 00 00    	and    edx,0x600
   140002d55:	81 fa 00 02 00 00    	cmp    edx,0x200
   140002d5b:	0f 84 77 02 00 00    	je     140002fd8 <__pformat_emit_float+0x338>
   140002d61:	48 8d 6b 20          	lea    rbp,[rbx+0x20]
   140002d65:	85 f6                	test   esi,esi
   140002d67:	0f 8e bb 01 00 00    	jle    140002f28 <__pformat_emit_float+0x288>
   140002d6d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002d70:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   140002d73:	b9 30 00 00 00       	mov    ecx,0x30
   140002d78:	84 c0                	test   al,al
   140002d7a:	74 07                	je     140002d83 <__pformat_emit_float+0xe3>
   140002d7c:	48 83 c7 01          	add    rdi,0x1
   140002d80:	0f be c8             	movsx  ecx,al
   140002d83:	48 89 da             	mov    rdx,rbx
   140002d86:	e8 85 fa ff ff       	call   140002810 <__pformat_putc>
   140002d8b:	83 ee 01             	sub    esi,0x1
   140002d8e:	0f 84 d4 00 00 00    	je     140002e68 <__pformat_emit_float+0x1c8>
   140002d94:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140002d98:	74 d6                	je     140002d70 <__pformat_emit_float+0xd0>
   140002d9a:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140002d9f:	74 cf                	je     140002d70 <__pformat_emit_float+0xd0>
   140002da1:	69 c6 ab aa aa aa    	imul   eax,esi,0xaaaaaaab
   140002da7:	3d 55 55 55 55       	cmp    eax,0x55555555
   140002dac:	77 c2                	ja     140002d70 <__pformat_emit_float+0xd0>
   140002dae:	49 89 d8             	mov    r8,rbx
   140002db1:	ba 01 00 00 00       	mov    edx,0x1
   140002db6:	48 89 e9             	mov    rcx,rbp
   140002db9:	e8 b2 fa ff ff       	call   140002870 <__pformat_wputchars>
   140002dbe:	eb b0                	jmp    140002d70 <__pformat_emit_float+0xd0>
   140002dc0:	41 8b 51 10          	mov    edx,DWORD PTR [r9+0x10]
   140002dc4:	44 29 c0             	sub    eax,r8d
   140002dc7:	39 d0                	cmp    eax,edx
   140002dc9:	0f 8e fa fe ff ff    	jle    140002cc9 <__pformat_emit_float+0x29>
   140002dcf:	29 d0                	sub    eax,edx
   140002dd1:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002dd4:	85 d2                	test   edx,edx
   140002dd6:	0f 8e b4 01 00 00    	jle    140002f90 <__pformat_emit_float+0x2f0>
   140002ddc:	83 e8 01             	sub    eax,0x1
   140002ddf:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002de2:	85 f6                	test   esi,esi
   140002de4:	7e 0a                	jle    140002df0 <__pformat_emit_float+0x150>
   140002de6:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140002dea:	0f 85 eb fe ff ff    	jne    140002cdb <__pformat_emit_float+0x3b>
   140002df0:	85 c0                	test   eax,eax
   140002df2:	0f 8e 30 ff ff ff    	jle    140002d28 <__pformat_emit_float+0x88>
   140002df8:	85 ed                	test   ebp,ebp
   140002dfa:	0f 85 f8 00 00 00    	jne    140002ef8 <__pformat_emit_float+0x258>
   140002e00:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140002e03:	f7 c2 c0 01 00 00    	test   edx,0x1c0
   140002e09:	0f 84 f1 01 00 00    	je     140003000 <__pformat_emit_float+0x360>
   140002e0f:	83 e8 01             	sub    eax,0x1
   140002e12:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002e15:	0f 84 18 ff ff ff    	je     140002d33 <__pformat_emit_float+0x93>
   140002e1b:	f6 c6 06             	test   dh,0x6
   140002e1e:	0f 85 0f ff ff ff    	jne    140002d33 <__pformat_emit_float+0x93>
   140002e24:	83 e8 01             	sub    eax,0x1
   140002e27:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002e2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002e30:	48 89 da             	mov    rdx,rbx
   140002e33:	b9 20 00 00 00       	mov    ecx,0x20
   140002e38:	e8 d3 f9 ff ff       	call   140002810 <__pformat_putc>
   140002e3d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002e40:	8d 50 ff             	lea    edx,[rax-0x1]
   140002e43:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002e46:	85 c0                	test   eax,eax
   140002e48:	7f e6                	jg     140002e30 <__pformat_emit_float+0x190>
   140002e4a:	85 ed                	test   ebp,ebp
   140002e4c:	0f 84 de fe ff ff    	je     140002d30 <__pformat_emit_float+0x90>
   140002e52:	48 89 da             	mov    rdx,rbx
   140002e55:	b9 2d 00 00 00       	mov    ecx,0x2d
   140002e5a:	e8 b1 f9 ff ff       	call   140002810 <__pformat_putc>
   140002e5f:	e9 e1 fe ff ff       	jmp    140002d45 <__pformat_emit_float+0xa5>
   140002e64:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002e68:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002e6b:	85 c0                	test   eax,eax
   140002e6d:	7f 19                	jg     140002e88 <__pformat_emit_float+0x1e8>
   140002e6f:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140002e73:	75 13                	jne    140002e88 <__pformat_emit_float+0x1e8>
   140002e75:	83 e8 01             	sub    eax,0x1
   140002e78:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140002e7b:	48 83 c4 28          	add    rsp,0x28
   140002e7f:	5b                   	pop    rbx
   140002e80:	5e                   	pop    rsi
   140002e81:	5f                   	pop    rdi
   140002e82:	5d                   	pop    rbp
   140002e83:	c3                   	ret    
   140002e84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002e88:	48 89 d9             	mov    rcx,rbx
   140002e8b:	e8 00 fd ff ff       	call   140002b90 <__pformat_emit_radix_point>
   140002e90:	eb 21                	jmp    140002eb3 <__pformat_emit_float+0x213>
   140002e92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002e98:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   140002e9b:	b9 30 00 00 00       	mov    ecx,0x30
   140002ea0:	84 c0                	test   al,al
   140002ea2:	74 07                	je     140002eab <__pformat_emit_float+0x20b>
   140002ea4:	48 83 c7 01          	add    rdi,0x1
   140002ea8:	0f be c8             	movsx  ecx,al
   140002eab:	48 89 da             	mov    rdx,rbx
   140002eae:	e8 5d f9 ff ff       	call   140002810 <__pformat_putc>
   140002eb3:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002eb6:	8d 50 ff             	lea    edx,[rax-0x1]
   140002eb9:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   140002ebc:	85 c0                	test   eax,eax
   140002ebe:	7f d8                	jg     140002e98 <__pformat_emit_float+0x1f8>
   140002ec0:	48 83 c4 28          	add    rsp,0x28
   140002ec4:	5b                   	pop    rbx
   140002ec5:	5e                   	pop    rsi
   140002ec6:	5f                   	pop    rdi
   140002ec7:	5d                   	pop    rbp
   140002ec8:	c3                   	ret    
   140002ec9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002ed0:	85 c0                	test   eax,eax
   140002ed2:	0f 8e 48 01 00 00    	jle    140003020 <__pformat_emit_float+0x380>
   140002ed8:	83 e8 01             	sub    eax,0x1
   140002edb:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   140002ede:	39 d0                	cmp    eax,edx
   140002ee0:	0f 8f e9 fe ff ff    	jg     140002dcf <__pformat_emit_float+0x12f>
   140002ee6:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002eed:	e9 36 fe ff ff       	jmp    140002d28 <__pformat_emit_float+0x88>
   140002ef2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002ef8:	83 e8 01             	sub    eax,0x1
   140002efb:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002efe:	0f 84 4e ff ff ff    	je     140002e52 <__pformat_emit_float+0x1b2>
   140002f04:	f7 43 08 00 06 00 00 	test   DWORD PTR [rbx+0x8],0x600
   140002f0b:	0f 84 13 ff ff ff    	je     140002e24 <__pformat_emit_float+0x184>
   140002f11:	48 89 da             	mov    rdx,rbx
   140002f14:	b9 2d 00 00 00       	mov    ecx,0x2d
   140002f19:	e8 f2 f8 ff ff       	call   140002810 <__pformat_putc>
   140002f1e:	e9 22 fe ff ff       	jmp    140002d45 <__pformat_emit_float+0xa5>
   140002f23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002f28:	48 89 da             	mov    rdx,rbx
   140002f2b:	b9 30 00 00 00       	mov    ecx,0x30
   140002f30:	e8 db f8 ff ff       	call   140002810 <__pformat_putc>
   140002f35:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002f38:	85 c0                	test   eax,eax
   140002f3a:	7f 14                	jg     140002f50 <__pformat_emit_float+0x2b0>
   140002f3c:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140002f40:	75 0e                	jne    140002f50 <__pformat_emit_float+0x2b0>
   140002f42:	85 f6                	test   esi,esi
   140002f44:	75 1d                	jne    140002f63 <__pformat_emit_float+0x2c3>
   140002f46:	e9 2a ff ff ff       	jmp    140002e75 <__pformat_emit_float+0x1d5>
   140002f4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002f50:	48 89 d9             	mov    rcx,rbx
   140002f53:	e8 38 fc ff ff       	call   140002b90 <__pformat_emit_radix_point>
   140002f58:	85 f6                	test   esi,esi
   140002f5a:	0f 84 53 ff ff ff    	je     140002eb3 <__pformat_emit_float+0x213>
   140002f60:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002f63:	01 f0                	add    eax,esi
   140002f65:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140002f68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140002f6f:	00 
   140002f70:	48 89 da             	mov    rdx,rbx
   140002f73:	b9 30 00 00 00       	mov    ecx,0x30
   140002f78:	e8 93 f8 ff ff       	call   140002810 <__pformat_putc>
   140002f7d:	83 c6 01             	add    esi,0x1
   140002f80:	75 ee                	jne    140002f70 <__pformat_emit_float+0x2d0>
   140002f82:	e9 2c ff ff ff       	jmp    140002eb3 <__pformat_emit_float+0x213>
   140002f87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002f8e:	00 00 
   140002f90:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140002f93:	f6 c6 08             	test   dh,0x8
   140002f96:	0f 85 40 fe ff ff    	jne    140002ddc <__pformat_emit_float+0x13c>
   140002f9c:	85 f6                	test   esi,esi
   140002f9e:	0f 8e 54 fe ff ff    	jle    140002df8 <__pformat_emit_float+0x158>
   140002fa4:	80 e6 10             	and    dh,0x10
   140002fa7:	0f 84 4b fe ff ff    	je     140002df8 <__pformat_emit_float+0x158>
   140002fad:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140002fb2:	0f 84 40 fe ff ff    	je     140002df8 <__pformat_emit_float+0x158>
   140002fb8:	e9 29 fd ff ff       	jmp    140002ce6 <__pformat_emit_float+0x46>
   140002fbd:	0f 1f 00             	nop    DWORD PTR [rax]
   140002fc0:	48 89 da             	mov    rdx,rbx
   140002fc3:	b9 2b 00 00 00       	mov    ecx,0x2b
   140002fc8:	e8 43 f8 ff ff       	call   140002810 <__pformat_putc>
   140002fcd:	e9 73 fd ff ff       	jmp    140002d45 <__pformat_emit_float+0xa5>
   140002fd2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002fd8:	83 e8 01             	sub    eax,0x1
   140002fdb:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002fde:	66 90                	xchg   ax,ax
   140002fe0:	48 89 da             	mov    rdx,rbx
   140002fe3:	b9 30 00 00 00       	mov    ecx,0x30
   140002fe8:	e8 23 f8 ff ff       	call   140002810 <__pformat_putc>
   140002fed:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002ff0:	8d 50 ff             	lea    edx,[rax-0x1]
   140002ff3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002ff6:	85 c0                	test   eax,eax
   140002ff8:	7f e6                	jg     140002fe0 <__pformat_emit_float+0x340>
   140002ffa:	e9 62 fd ff ff       	jmp    140002d61 <__pformat_emit_float+0xc1>
   140002fff:	90                   	nop
   140003000:	f6 c6 06             	test   dh,0x6
   140003003:	0f 85 2a fd ff ff    	jne    140002d33 <__pformat_emit_float+0x93>
   140003009:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   14000300c:	8d 48 ff             	lea    ecx,[rax-0x1]
   14000300f:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   140003012:	85 c0                	test   eax,eax
   140003014:	0f 8e 19 fd ff ff    	jle    140002d33 <__pformat_emit_float+0x93>
   14000301a:	e9 11 fe ff ff       	jmp    140002e30 <__pformat_emit_float+0x190>
   14000301f:	90                   	nop
   140003020:	0f 84 b5 fe ff ff    	je     140002edb <__pformat_emit_float+0x23b>
   140003026:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   14000302d:	e9 f6 fc ff ff       	jmp    140002d28 <__pformat_emit_float+0x88>
   140003032:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003038:	48 89 da             	mov    rdx,rbx
   14000303b:	b9 20 00 00 00       	mov    ecx,0x20
   140003040:	e8 cb f7 ff ff       	call   140002810 <__pformat_putc>
   140003045:	e9 fb fc ff ff       	jmp    140002d45 <__pformat_emit_float+0xa5>
   14000304a:	89 d0                	mov    eax,edx
   14000304c:	e9 9f fd ff ff       	jmp    140002df0 <__pformat_emit_float+0x150>
   140003051:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140003058:	00 00 00 00 
   14000305c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140003060 <__pformat_float>:
   140003060:	41 54                	push   r12
   140003062:	53                   	push   rbx
   140003063:	48 83 ec 68          	sub    rsp,0x68
   140003067:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   14000306b:	db 29                	fld    TBYTE PTR [rcx]
   14000306d:	48 89 d3             	mov    rbx,rdx
   140003070:	45 85 c0             	test   r8d,r8d
   140003073:	79 0d                	jns    140003082 <__pformat_float+0x22>
   140003075:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   14000307c:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003082:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003087:	db 7c 24 50          	fstp   TBYTE PTR [rsp+0x50]
   14000308b:	f3 0f 6f 44 24 50    	movdqu xmm0,XMMWORD PTR [rsp+0x50]
   140003091:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003096:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   14000309b:	b9 03 00 00 00       	mov    ecx,0x3
   1400030a0:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400030a5:	0f 11 44 24 30       	movups XMMWORD PTR [rsp+0x30],xmm0
   1400030aa:	e8 51 f6 ff ff       	call   140002700 <__pformat_cvt>
   1400030af:	44 8b 44 24 4c       	mov    r8d,DWORD PTR [rsp+0x4c]
   1400030b4:	49 89 c4             	mov    r12,rax
   1400030b7:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   1400030be:	74 48                	je     140003108 <__pformat_float+0xa8>
   1400030c0:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   1400030c4:	49 89 d9             	mov    r9,rbx
   1400030c7:	48 89 c2             	mov    rdx,rax
   1400030ca:	e8 d1 fb ff ff       	call   140002ca0 <__pformat_emit_float>
   1400030cf:	eb 14                	jmp    1400030e5 <__pformat_float+0x85>
   1400030d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400030d8:	48 89 da             	mov    rdx,rbx
   1400030db:	b9 20 00 00 00       	mov    ecx,0x20
   1400030e0:	e8 2b f7 ff ff       	call   140002810 <__pformat_putc>
   1400030e5:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400030e8:	8d 50 ff             	lea    edx,[rax-0x1]
   1400030eb:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400030ee:	85 c0                	test   eax,eax
   1400030f0:	7f e6                	jg     1400030d8 <__pformat_float+0x78>
   1400030f2:	4c 89 e1             	mov    rcx,r12
   1400030f5:	e8 f6 1a 00 00       	call   140004bf0 <__freedtoa>
   1400030fa:	90                   	nop
   1400030fb:	48 83 c4 68          	add    rsp,0x68
   1400030ff:	5b                   	pop    rbx
   140003100:	41 5c                	pop    r12
   140003102:	c3                   	ret    
   140003103:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003108:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   14000310c:	49 89 d8             	mov    r8,rbx
   14000310f:	48 89 c2             	mov    rdx,rax
   140003112:	e8 c9 f9 ff ff       	call   140002ae0 <__pformat_emit_inf_or_nan>
   140003117:	4c 89 e1             	mov    rcx,r12
   14000311a:	e8 d1 1a 00 00       	call   140004bf0 <__freedtoa>
   14000311f:	90                   	nop
   140003120:	48 83 c4 68          	add    rsp,0x68
   140003124:	5b                   	pop    rbx
   140003125:	41 5c                	pop    r12
   140003127:	c3                   	ret    
   140003128:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000312f:	00 

0000000140003130 <__pformat_int.isra.0>:
   140003130:	55                   	push   rbp
   140003131:	41 57                	push   r15
   140003133:	41 56                	push   r14
   140003135:	41 55                	push   r13
   140003137:	41 54                	push   r12
   140003139:	57                   	push   rdi
   14000313a:	56                   	push   rsi
   14000313b:	53                   	push   rbx
   14000313c:	48 83 ec 28          	sub    rsp,0x28
   140003140:	48 8d ac 24 80 00 00 	lea    rbp,[rsp+0x80]
   140003147:	00 
   140003148:	b8 00 00 00 00       	mov    eax,0x0
   14000314d:	44 8b 6a 10          	mov    r13d,DWORD PTR [rdx+0x10]
   140003151:	44 8b 52 08          	mov    r10d,DWORD PTR [rdx+0x8]
   140003155:	45 85 ed             	test   r13d,r13d
   140003158:	41 0f 49 c5          	cmovns eax,r13d
   14000315c:	48 89 d3             	mov    rbx,rdx
   14000315f:	83 c0 17             	add    eax,0x17
   140003162:	41 f7 c2 00 10 00 00 	test   r10d,0x1000
   140003169:	74 0b                	je     140003176 <__pformat_int.isra.0+0x46>
   14000316b:	66 83 7a 20 00       	cmp    WORD PTR [rdx+0x20],0x0
   140003170:	0f 85 f2 01 00 00    	jne    140003368 <__pformat_int.isra.0+0x238>
   140003176:	44 8b 5b 0c          	mov    r11d,DWORD PTR [rbx+0xc]
   14000317a:	41 39 c3             	cmp    r11d,eax
   14000317d:	41 0f 4d c3          	cmovge eax,r11d
   140003181:	48 98                	cdqe   
   140003183:	48 83 c0 0f          	add    rax,0xf
   140003187:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   14000318b:	e8 e0 f4 ff ff       	call   140002670 <___chkstk_ms>
   140003190:	48 29 c4             	sub    rsp,rax
   140003193:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
   140003198:	41 f6 c2 80          	test   r10b,0x80
   14000319c:	74 11                	je     1400031af <__pformat_int.isra.0+0x7f>
   14000319e:	48 85 c9             	test   rcx,rcx
   1400031a1:	0f 88 f9 01 00 00    	js     1400033a0 <__pformat_int.isra.0+0x270>
   1400031a7:	41 80 e2 7f          	and    r10b,0x7f
   1400031ab:	44 89 53 08          	mov    DWORD PTR [rbx+0x8],r10d
   1400031af:	48 85 c9             	test   rcx,rcx
   1400031b2:	0f 84 c8 02 00 00    	je     140003480 <__pformat_int.isra.0+0x350>
   1400031b8:	49 be 03 00 00 00 00 	movabs r14,0x8000000000000003
   1400031bf:	00 00 80 
   1400031c2:	44 89 d6             	mov    esi,r10d
   1400031c5:	49 89 f8             	mov    r8,rdi
   1400031c8:	49 b9 cd cc cc cc cc 	movabs r9,0xcccccccccccccccd
   1400031cf:	cc cc cc 
   1400031d2:	81 e6 00 10 00 00    	and    esi,0x1000
   1400031d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400031df:	00 
   1400031e0:	4d 8d 60 01          	lea    r12,[r8+0x1]
   1400031e4:	4c 39 c7             	cmp    rdi,r8
   1400031e7:	74 2f                	je     140003218 <__pformat_int.isra.0+0xe8>
   1400031e9:	85 f6                	test   esi,esi
   1400031eb:	74 2b                	je     140003218 <__pformat_int.isra.0+0xe8>
   1400031ed:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   1400031f2:	74 24                	je     140003218 <__pformat_int.isra.0+0xe8>
   1400031f4:	4c 89 c0             	mov    rax,r8
   1400031f7:	48 29 f8             	sub    rax,rdi
   1400031fa:	4c 21 f0             	and    rax,r14
   1400031fd:	48 83 f8 03          	cmp    rax,0x3
   140003201:	75 15                	jne    140003218 <__pformat_int.isra.0+0xe8>
   140003203:	49 8d 40 02          	lea    rax,[r8+0x2]
   140003207:	41 c6 00 2c          	mov    BYTE PTR [r8],0x2c
   14000320b:	4d 89 e0             	mov    r8,r12
   14000320e:	49 89 c4             	mov    r12,rax
   140003211:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003218:	48 89 c8             	mov    rax,rcx
   14000321b:	49 89 cf             	mov    r15,rcx
   14000321e:	49 f7 e1             	mul    r9
   140003221:	48 c1 ea 03          	shr    rdx,0x3
   140003225:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
   140003229:	48 01 c0             	add    rax,rax
   14000322c:	49 29 c7             	sub    r15,rax
   14000322f:	4c 89 f8             	mov    rax,r15
   140003232:	83 c0 30             	add    eax,0x30
   140003235:	41 88 00             	mov    BYTE PTR [r8],al
   140003238:	48 83 f9 09          	cmp    rcx,0x9
   14000323c:	76 12                	jbe    140003250 <__pformat_int.isra.0+0x120>
   14000323e:	48 89 d1             	mov    rcx,rdx
   140003241:	4d 89 e0             	mov    r8,r12
   140003244:	eb 9a                	jmp    1400031e0 <__pformat_int.isra.0+0xb0>
   140003246:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000324d:	00 00 00 
   140003250:	45 85 ed             	test   r13d,r13d
   140003253:	0f 8e 57 01 00 00    	jle    1400033b0 <__pformat_int.isra.0+0x280>
   140003259:	4c 89 e0             	mov    rax,r12
   14000325c:	44 89 ea             	mov    edx,r13d
   14000325f:	48 29 f8             	sub    rax,rdi
   140003262:	29 c2                	sub    edx,eax
   140003264:	89 d0                	mov    eax,edx
   140003266:	85 d2                	test   edx,edx
   140003268:	7e 2b                	jle    140003295 <__pformat_int.isra.0+0x165>
   14000326a:	8d 48 ff             	lea    ecx,[rax-0x1]
   14000326d:	8d 42 ff             	lea    eax,[rdx-0x1]
   140003270:	49 8d 54 04 01       	lea    rdx,[r12+rax*1+0x1]
   140003275:	4c 89 e0             	mov    rax,r12
   140003278:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000327f:	00 
   140003280:	48 83 c0 01          	add    rax,0x1
   140003284:	c6 40 ff 30          	mov    BYTE PTR [rax-0x1],0x30
   140003288:	48 39 d0             	cmp    rax,rdx
   14000328b:	75 f3                	jne    140003280 <__pformat_int.isra.0+0x150>
   14000328d:	48 63 c1             	movsxd rax,ecx
   140003290:	4d 8d 64 04 01       	lea    r12,[r12+rax*1+0x1]
   140003295:	4c 39 e7             	cmp    rdi,r12
   140003298:	0f 84 2a 01 00 00    	je     1400033c8 <__pformat_int.isra.0+0x298>
   14000329e:	45 85 db             	test   r11d,r11d
   1400032a1:	7e 3d                	jle    1400032e0 <__pformat_int.isra.0+0x1b0>
   1400032a3:	4c 89 e0             	mov    rax,r12
   1400032a6:	48 29 f8             	sub    rax,rdi
   1400032a9:	41 29 c3             	sub    r11d,eax
   1400032ac:	44 89 5b 0c          	mov    DWORD PTR [rbx+0xc],r11d
   1400032b0:	45 85 db             	test   r11d,r11d
   1400032b3:	7e 2b                	jle    1400032e0 <__pformat_int.isra.0+0x1b0>
   1400032b5:	41 f7 c2 c0 01 00 00 	test   r10d,0x1c0
   1400032bc:	0f 85 1e 01 00 00    	jne    1400033e0 <__pformat_int.isra.0+0x2b0>
   1400032c2:	45 85 ed             	test   r13d,r13d
   1400032c5:	0f 88 26 01 00 00    	js     1400033f1 <__pformat_int.isra.0+0x2c1>
   1400032cb:	41 f7 c2 00 04 00 00 	test   r10d,0x400
   1400032d2:	0f 84 68 01 00 00    	je     140003440 <__pformat_int.isra.0+0x310>
   1400032d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400032df:	00 
   1400032e0:	41 f6 c2 80          	test   r10b,0x80
   1400032e4:	74 6a                	je     140003350 <__pformat_int.isra.0+0x220>
   1400032e6:	41 c6 04 24 2d       	mov    BYTE PTR [r12],0x2d
   1400032eb:	49 8d 74 24 01       	lea    rsi,[r12+0x1]
   1400032f0:	48 39 f7             	cmp    rdi,rsi
   1400032f3:	73 38                	jae    14000332d <__pformat_int.isra.0+0x1fd>
   1400032f5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400032f8:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   1400032fc:	48 83 ee 01          	sub    rsi,0x1
   140003300:	48 89 da             	mov    rdx,rbx
   140003303:	e8 08 f5 ff ff       	call   140002810 <__pformat_putc>
   140003308:	48 39 f7             	cmp    rdi,rsi
   14000330b:	75 eb                	jne    1400032f8 <__pformat_int.isra.0+0x1c8>
   14000330d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003310:	8d 50 ff             	lea    edx,[rax-0x1]
   140003313:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003316:	85 c0                	test   eax,eax
   140003318:	7e 20                	jle    14000333a <__pformat_int.isra.0+0x20a>
   14000331a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003320:	48 89 da             	mov    rdx,rbx
   140003323:	b9 20 00 00 00       	mov    ecx,0x20
   140003328:	e8 e3 f4 ff ff       	call   140002810 <__pformat_putc>
   14000332d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003330:	8d 50 ff             	lea    edx,[rax-0x1]
   140003333:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003336:	85 c0                	test   eax,eax
   140003338:	7f e6                	jg     140003320 <__pformat_int.isra.0+0x1f0>
   14000333a:	48 8d 65 a8          	lea    rsp,[rbp-0x58]
   14000333e:	5b                   	pop    rbx
   14000333f:	5e                   	pop    rsi
   140003340:	5f                   	pop    rdi
   140003341:	41 5c                	pop    r12
   140003343:	41 5d                	pop    r13
   140003345:	41 5e                	pop    r14
   140003347:	41 5f                	pop    r15
   140003349:	5d                   	pop    rbp
   14000334a:	c3                   	ret    
   14000334b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003350:	41 f7 c2 00 01 00 00 	test   r10d,0x100
   140003357:	74 27                	je     140003380 <__pformat_int.isra.0+0x250>
   140003359:	41 c6 04 24 2b       	mov    BYTE PTR [r12],0x2b
   14000335e:	49 8d 74 24 01       	lea    rsi,[r12+0x1]
   140003363:	eb 8b                	jmp    1400032f0 <__pformat_int.isra.0+0x1c0>
   140003365:	0f 1f 00             	nop    DWORD PTR [rax]
   140003368:	89 c2                	mov    edx,eax
   14000336a:	41 b8 ab aa aa aa    	mov    r8d,0xaaaaaaab
   140003370:	49 0f af d0          	imul   rdx,r8
   140003374:	48 c1 ea 21          	shr    rdx,0x21
   140003378:	01 d0                	add    eax,edx
   14000337a:	e9 f7 fd ff ff       	jmp    140003176 <__pformat_int.isra.0+0x46>
   14000337f:	90                   	nop
   140003380:	41 83 e2 40          	and    r10d,0x40
   140003384:	4c 89 e6             	mov    rsi,r12
   140003387:	0f 84 63 ff ff ff    	je     1400032f0 <__pformat_int.isra.0+0x1c0>
   14000338d:	41 c6 04 24 20       	mov    BYTE PTR [r12],0x20
   140003392:	48 83 c6 01          	add    rsi,0x1
   140003396:	e9 55 ff ff ff       	jmp    1400032f0 <__pformat_int.isra.0+0x1c0>
   14000339b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400033a0:	48 f7 d9             	neg    rcx
   1400033a3:	e9 10 fe ff ff       	jmp    1400031b8 <__pformat_int.isra.0+0x88>
   1400033a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400033af:	00 
   1400033b0:	4c 39 e7             	cmp    rdi,r12
   1400033b3:	0f 85 e5 fe ff ff    	jne    14000329e <__pformat_int.isra.0+0x16e>
   1400033b9:	45 85 ed             	test   r13d,r13d
   1400033bc:	0f 84 dc fe ff ff    	je     14000329e <__pformat_int.isra.0+0x16e>
   1400033c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400033c8:	41 c6 04 24 30       	mov    BYTE PTR [r12],0x30
   1400033cd:	49 83 c4 01          	add    r12,0x1
   1400033d1:	e9 c8 fe ff ff       	jmp    14000329e <__pformat_int.isra.0+0x16e>
   1400033d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400033dd:	00 00 00 
   1400033e0:	41 83 eb 01          	sub    r11d,0x1
   1400033e4:	44 89 5b 0c          	mov    DWORD PTR [rbx+0xc],r11d
   1400033e8:	45 85 ed             	test   r13d,r13d
   1400033eb:	0f 89 da fe ff ff    	jns    1400032cb <__pformat_int.isra.0+0x19b>
   1400033f1:	44 89 d0             	mov    eax,r10d
   1400033f4:	25 00 06 00 00       	and    eax,0x600
   1400033f9:	3d 00 02 00 00       	cmp    eax,0x200
   1400033fe:	0f 85 c7 fe ff ff    	jne    1400032cb <__pformat_int.isra.0+0x19b>
   140003404:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
   140003407:	8d 42 ff             	lea    eax,[rdx-0x1]
   14000340a:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000340d:	85 d2                	test   edx,edx
   14000340f:	0f 8e cb fe ff ff    	jle    1400032e0 <__pformat_int.isra.0+0x1b0>
   140003415:	89 c1                	mov    ecx,eax
   140003417:	4c 89 e0             	mov    rax,r12
   14000341a:	49 8d 54 0c 01       	lea    rdx,[r12+rcx*1+0x1]
   14000341f:	90                   	nop
   140003420:	48 83 c0 01          	add    rax,0x1
   140003424:	c6 40 ff 30          	mov    BYTE PTR [rax-0x1],0x30
   140003428:	48 39 d0             	cmp    rax,rdx
   14000342b:	75 f3                	jne    140003420 <__pformat_int.isra.0+0x2f0>
   14000342d:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140003434:	4d 8d 64 0c 01       	lea    r12,[r12+rcx*1+0x1]
   140003439:	e9 a2 fe ff ff       	jmp    1400032e0 <__pformat_int.isra.0+0x1b0>
   14000343e:	66 90                	xchg   ax,ax
   140003440:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003443:	8d 50 ff             	lea    edx,[rax-0x1]
   140003446:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003449:	85 c0                	test   eax,eax
   14000344b:	0f 8e 8f fe ff ff    	jle    1400032e0 <__pformat_int.isra.0+0x1b0>
   140003451:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003458:	48 89 da             	mov    rdx,rbx
   14000345b:	b9 20 00 00 00       	mov    ecx,0x20
   140003460:	e8 ab f3 ff ff       	call   140002810 <__pformat_putc>
   140003465:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003468:	8d 50 ff             	lea    edx,[rax-0x1]
   14000346b:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   14000346e:	85 c0                	test   eax,eax
   140003470:	7f e6                	jg     140003458 <__pformat_int.isra.0+0x328>
   140003472:	44 8b 53 08          	mov    r10d,DWORD PTR [rbx+0x8]
   140003476:	e9 65 fe ff ff       	jmp    1400032e0 <__pformat_int.isra.0+0x1b0>
   14000347b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003480:	45 85 ed             	test   r13d,r13d
   140003483:	7e 0e                	jle    140003493 <__pformat_int.isra.0+0x363>
   140003485:	44 89 ea             	mov    edx,r13d
   140003488:	49 89 fc             	mov    r12,rdi
   14000348b:	44 89 e8             	mov    eax,r13d
   14000348e:	e9 d7 fd ff ff       	jmp    14000326a <__pformat_int.isra.0+0x13a>
   140003493:	49 89 fc             	mov    r12,rdi
   140003496:	e9 1e ff ff ff       	jmp    1400033b9 <__pformat_int.isra.0+0x289>
   14000349b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000001400034a0 <__pformat_emit_efloat>:
   1400034a0:	41 55                	push   r13
   1400034a2:	41 54                	push   r12
   1400034a4:	53                   	push   rbx
   1400034a5:	48 83 ec 20          	sub    rsp,0x20
   1400034a9:	41 ba 01 00 00 00    	mov    r10d,0x1
   1400034af:	41 8d 40 ff          	lea    eax,[r8-0x1]
   1400034b3:	4d 89 cc             	mov    r12,r9
   1400034b6:	4c 63 e8             	movsxd r13,eax
   1400034b9:	c1 f8 1f             	sar    eax,0x1f
   1400034bc:	4d 69 c5 67 66 66 66 	imul   r8,r13,0x66666667
   1400034c3:	49 c1 f8 22          	sar    r8,0x22
   1400034c7:	41 29 c0             	sub    r8d,eax
   1400034ca:	74 22                	je     1400034ee <__pformat_emit_efloat+0x4e>
   1400034cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400034d0:	49 63 c0             	movsxd rax,r8d
   1400034d3:	41 c1 f8 1f          	sar    r8d,0x1f
   1400034d7:	41 83 c2 01          	add    r10d,0x1
   1400034db:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   1400034e2:	48 c1 f8 22          	sar    rax,0x22
   1400034e6:	44 29 c0             	sub    eax,r8d
   1400034e9:	41 89 c0             	mov    r8d,eax
   1400034ec:	75 e2                	jne    1400034d0 <__pformat_emit_efloat+0x30>
   1400034ee:	41 8b 5c 24 2c       	mov    ebx,DWORD PTR [r12+0x2c]
   1400034f3:	83 fb ff             	cmp    ebx,0xffffffff
   1400034f6:	75 0e                	jne    140003506 <__pformat_emit_efloat+0x66>
   1400034f8:	41 c7 44 24 2c 02 00 	mov    DWORD PTR [r12+0x2c],0x2
   1400034ff:	00 00 
   140003501:	bb 02 00 00 00       	mov    ebx,0x2
   140003506:	41 39 da             	cmp    r10d,ebx
   140003509:	45 8b 4c 24 0c       	mov    r9d,DWORD PTR [r12+0xc]
   14000350e:	41 0f 4d da          	cmovge ebx,r10d
   140003512:	44 89 c8             	mov    eax,r9d
   140003515:	44 8d 43 02          	lea    r8d,[rbx+0x2]
   140003519:	44 29 c0             	sub    eax,r8d
   14000351c:	45 39 c1             	cmp    r9d,r8d
   14000351f:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
   140003525:	4d 89 e1             	mov    r9,r12
   140003528:	41 0f 4e c0          	cmovle eax,r8d
   14000352c:	41 b8 01 00 00 00    	mov    r8d,0x1
   140003532:	41 89 44 24 0c       	mov    DWORD PTR [r12+0xc],eax
   140003537:	e8 64 f7 ff ff       	call   140002ca0 <__pformat_emit_float>
   14000353c:	41 8b 4c 24 08       	mov    ecx,DWORD PTR [r12+0x8]
   140003541:	41 8b 44 24 2c       	mov    eax,DWORD PTR [r12+0x2c]
   140003546:	4c 89 e2             	mov    rdx,r12
   140003549:	41 89 44 24 10       	mov    DWORD PTR [r12+0x10],eax
   14000354e:	89 c8                	mov    eax,ecx
   140003550:	83 e1 20             	and    ecx,0x20
   140003553:	0d c0 01 00 00       	or     eax,0x1c0
   140003558:	83 c9 45             	or     ecx,0x45
   14000355b:	41 89 44 24 08       	mov    DWORD PTR [r12+0x8],eax
   140003560:	e8 ab f2 ff ff       	call   140002810 <__pformat_putc>
   140003565:	44 8d 53 01          	lea    r10d,[rbx+0x1]
   140003569:	4c 89 e2             	mov    rdx,r12
   14000356c:	4c 89 e9             	mov    rcx,r13
   14000356f:	45 01 54 24 0c       	add    DWORD PTR [r12+0xc],r10d
   140003574:	48 83 c4 20          	add    rsp,0x20
   140003578:	5b                   	pop    rbx
   140003579:	41 5c                	pop    r12
   14000357b:	41 5d                	pop    r13
   14000357d:	e9 ae fb ff ff       	jmp    140003130 <__pformat_int.isra.0>
   140003582:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140003589:	00 00 00 00 
   14000358d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140003590 <__pformat_efloat>:
   140003590:	41 54                	push   r12
   140003592:	53                   	push   rbx
   140003593:	48 83 ec 68          	sub    rsp,0x68
   140003597:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   14000359b:	db 29                	fld    TBYTE PTR [rcx]
   14000359d:	48 89 d3             	mov    rbx,rdx
   1400035a0:	45 85 c0             	test   r8d,r8d
   1400035a3:	78 6b                	js     140003610 <__pformat_efloat+0x80>
   1400035a5:	41 83 c0 01          	add    r8d,0x1
   1400035a9:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   1400035ae:	db 7c 24 50          	fstp   TBYTE PTR [rsp+0x50]
   1400035b2:	f3 0f 6f 44 24 50    	movdqu xmm0,XMMWORD PTR [rsp+0x50]
   1400035b8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   1400035bd:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   1400035c2:	b9 02 00 00 00       	mov    ecx,0x2
   1400035c7:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400035cc:	0f 11 44 24 30       	movups XMMWORD PTR [rsp+0x30],xmm0
   1400035d1:	e8 2a f1 ff ff       	call   140002700 <__pformat_cvt>
   1400035d6:	44 8b 44 24 4c       	mov    r8d,DWORD PTR [rsp+0x4c]
   1400035db:	49 89 c4             	mov    r12,rax
   1400035de:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   1400035e5:	74 39                	je     140003620 <__pformat_efloat+0x90>
   1400035e7:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   1400035eb:	49 89 d9             	mov    r9,rbx
   1400035ee:	48 89 c2             	mov    rdx,rax
   1400035f1:	e8 aa fe ff ff       	call   1400034a0 <__pformat_emit_efloat>
   1400035f6:	4c 89 e1             	mov    rcx,r12
   1400035f9:	e8 f2 15 00 00       	call   140004bf0 <__freedtoa>
   1400035fe:	90                   	nop
   1400035ff:	48 83 c4 68          	add    rsp,0x68
   140003603:	5b                   	pop    rbx
   140003604:	41 5c                	pop    r12
   140003606:	c3                   	ret    
   140003607:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000360e:	00 00 
   140003610:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003617:	41 b8 07 00 00 00    	mov    r8d,0x7
   14000361d:	eb 8a                	jmp    1400035a9 <__pformat_efloat+0x19>
   14000361f:	90                   	nop
   140003620:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003624:	49 89 d8             	mov    r8,rbx
   140003627:	48 89 c2             	mov    rdx,rax
   14000362a:	e8 b1 f4 ff ff       	call   140002ae0 <__pformat_emit_inf_or_nan>
   14000362f:	4c 89 e1             	mov    rcx,r12
   140003632:	e8 b9 15 00 00       	call   140004bf0 <__freedtoa>
   140003637:	90                   	nop
   140003638:	48 83 c4 68          	add    rsp,0x68
   14000363c:	5b                   	pop    rbx
   14000363d:	41 5c                	pop    r12
   14000363f:	c3                   	ret    

0000000140003640 <__pformat_gfloat>:
   140003640:	41 54                	push   r12
   140003642:	56                   	push   rsi
   140003643:	53                   	push   rbx
   140003644:	48 83 ec 60          	sub    rsp,0x60
   140003648:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   14000364c:	db 29                	fld    TBYTE PTR [rcx]
   14000364e:	48 89 d3             	mov    rbx,rdx
   140003651:	45 85 c0             	test   r8d,r8d
   140003654:	0f 88 fe 00 00 00    	js     140003758 <__pformat_gfloat+0x118>
   14000365a:	0f 84 e0 00 00 00    	je     140003740 <__pformat_gfloat+0x100>
   140003660:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003665:	db 7c 24 50          	fstp   TBYTE PTR [rsp+0x50]
   140003669:	f3 0f 6f 44 24 50    	movdqu xmm0,XMMWORD PTR [rsp+0x50]
   14000366f:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003674:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003679:	b9 02 00 00 00       	mov    ecx,0x2
   14000367e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003683:	0f 11 44 24 30       	movups XMMWORD PTR [rsp+0x30],xmm0
   140003688:	e8 73 f0 ff ff       	call   140002700 <__pformat_cvt>
   14000368d:	8b 74 24 4c          	mov    esi,DWORD PTR [rsp+0x4c]
   140003691:	49 89 c4             	mov    r12,rax
   140003694:	81 fe 00 80 ff ff    	cmp    esi,0xffff8000
   14000369a:	0f 84 d0 00 00 00    	je     140003770 <__pformat_gfloat+0x130>
   1400036a0:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400036a3:	25 00 08 00 00       	and    eax,0x800
   1400036a8:	83 fe fd             	cmp    esi,0xfffffffd
   1400036ab:	7c 4b                	jl     1400036f8 <__pformat_gfloat+0xb8>
   1400036ad:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   1400036b0:	39 d6                	cmp    esi,edx
   1400036b2:	7f 44                	jg     1400036f8 <__pformat_gfloat+0xb8>
   1400036b4:	85 c0                	test   eax,eax
   1400036b6:	0f 84 cc 00 00 00    	je     140003788 <__pformat_gfloat+0x148>
   1400036bc:	29 f2                	sub    edx,esi
   1400036be:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   1400036c1:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   1400036c5:	49 89 d9             	mov    r9,rbx
   1400036c8:	41 89 f0             	mov    r8d,esi
   1400036cb:	4c 89 e2             	mov    rdx,r12
   1400036ce:	e8 cd f5 ff ff       	call   140002ca0 <__pformat_emit_float>
   1400036d3:	eb 10                	jmp    1400036e5 <__pformat_gfloat+0xa5>
   1400036d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400036d8:	48 89 da             	mov    rdx,rbx
   1400036db:	b9 20 00 00 00       	mov    ecx,0x20
   1400036e0:	e8 2b f1 ff ff       	call   140002810 <__pformat_putc>
   1400036e5:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400036e8:	8d 50 ff             	lea    edx,[rax-0x1]
   1400036eb:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400036ee:	85 c0                	test   eax,eax
   1400036f0:	7f e6                	jg     1400036d8 <__pformat_gfloat+0x98>
   1400036f2:	eb 28                	jmp    14000371c <__pformat_gfloat+0xdc>
   1400036f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400036f8:	85 c0                	test   eax,eax
   1400036fa:	75 34                	jne    140003730 <__pformat_gfloat+0xf0>
   1400036fc:	4c 89 e1             	mov    rcx,r12
   1400036ff:	e8 24 3b 00 00       	call   140007228 <strlen>
   140003704:	83 e8 01             	sub    eax,0x1
   140003707:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   14000370a:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   14000370e:	49 89 d9             	mov    r9,rbx
   140003711:	41 89 f0             	mov    r8d,esi
   140003714:	4c 89 e2             	mov    rdx,r12
   140003717:	e8 84 fd ff ff       	call   1400034a0 <__pformat_emit_efloat>
   14000371c:	4c 89 e1             	mov    rcx,r12
   14000371f:	e8 cc 14 00 00       	call   140004bf0 <__freedtoa>
   140003724:	90                   	nop
   140003725:	48 83 c4 60          	add    rsp,0x60
   140003729:	5b                   	pop    rbx
   14000372a:	5e                   	pop    rsi
   14000372b:	41 5c                	pop    r12
   14000372d:	c3                   	ret    
   14000372e:	66 90                	xchg   ax,ax
   140003730:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003733:	83 e8 01             	sub    eax,0x1
   140003736:	eb cf                	jmp    140003707 <__pformat_gfloat+0xc7>
   140003738:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000373f:	00 
   140003740:	c7 42 10 01 00 00 00 	mov    DWORD PTR [rdx+0x10],0x1
   140003747:	41 b8 01 00 00 00    	mov    r8d,0x1
   14000374d:	e9 0e ff ff ff       	jmp    140003660 <__pformat_gfloat+0x20>
   140003752:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003758:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   14000375f:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003765:	e9 f6 fe ff ff       	jmp    140003660 <__pformat_gfloat+0x20>
   14000376a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003770:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003774:	49 89 d8             	mov    r8,rbx
   140003777:	48 89 c2             	mov    rdx,rax
   14000377a:	e8 61 f3 ff ff       	call   140002ae0 <__pformat_emit_inf_or_nan>
   14000377f:	eb 9b                	jmp    14000371c <__pformat_gfloat+0xdc>
   140003781:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003788:	4c 89 e1             	mov    rcx,r12
   14000378b:	e8 98 3a 00 00       	call   140007228 <strlen>
   140003790:	29 f0                	sub    eax,esi
   140003792:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003795:	0f 89 26 ff ff ff    	jns    1400036c1 <__pformat_gfloat+0x81>
   14000379b:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
   14000379e:	85 d2                	test   edx,edx
   1400037a0:	0f 8e 1b ff ff ff    	jle    1400036c1 <__pformat_gfloat+0x81>
   1400037a6:	01 d0                	add    eax,edx
   1400037a8:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   1400037ab:	e9 11 ff ff ff       	jmp    1400036c1 <__pformat_gfloat+0x81>

00000001400037b0 <__pformat_xint.isra.0>:
   1400037b0:	55                   	push   rbp
   1400037b1:	41 57                	push   r15
   1400037b3:	41 56                	push   r14
   1400037b5:	41 55                	push   r13
   1400037b7:	41 54                	push   r12
   1400037b9:	57                   	push   rdi
   1400037ba:	56                   	push   rsi
   1400037bb:	53                   	push   rbx
   1400037bc:	48 83 ec 28          	sub    rsp,0x28
   1400037c0:	48 8d ac 24 80 00 00 	lea    rbp,[rsp+0x80]
   1400037c7:	00 
   1400037c8:	41 89 ca             	mov    r10d,ecx
   1400037cb:	4c 89 c6             	mov    rsi,r8
   1400037ce:	83 f9 6f             	cmp    ecx,0x6f
   1400037d1:	0f 84 81 02 00 00    	je     140003a58 <__pformat_xint.isra.0+0x2a8>
   1400037d7:	45 8b 58 10          	mov    r11d,DWORD PTR [r8+0x10]
   1400037db:	b8 00 00 00 00       	mov    eax,0x0
   1400037e0:	45 8b 60 08          	mov    r12d,DWORD PTR [r8+0x8]
   1400037e4:	45 85 db             	test   r11d,r11d
   1400037e7:	41 0f 49 c3          	cmovns eax,r11d
   1400037eb:	83 c0 12             	add    eax,0x12
   1400037ee:	41 f7 c4 00 10 00 00 	test   r12d,0x1000
   1400037f5:	0f 85 55 01 00 00    	jne    140003950 <__pformat_xint.isra.0+0x1a0>
   1400037fb:	44 8b 4e 0c          	mov    r9d,DWORD PTR [rsi+0xc]
   1400037ff:	41 39 c1             	cmp    r9d,eax
   140003802:	41 0f 4d c1          	cmovge eax,r9d
   140003806:	48 98                	cdqe   
   140003808:	48 83 c0 0f          	add    rax,0xf
   14000380c:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003810:	e8 5b ee ff ff       	call   140002670 <___chkstk_ms>
   140003815:	b9 04 00 00 00       	mov    ecx,0x4
   14000381a:	41 b8 0f 00 00 00    	mov    r8d,0xf
   140003820:	48 29 c4             	sub    rsp,rax
   140003823:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
   140003828:	48 89 fb             	mov    rbx,rdi
   14000382b:	48 85 d2             	test   rdx,rdx
   14000382e:	0f 84 ac 02 00 00    	je     140003ae0 <__pformat_xint.isra.0+0x330>
   140003834:	45 89 d5             	mov    r13d,r10d
   140003837:	41 83 e5 20          	and    r13d,0x20
   14000383b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003840:	44 89 c0             	mov    eax,r8d
   140003843:	48 83 c3 01          	add    rbx,0x1
   140003847:	21 d0                	and    eax,edx
   140003849:	44 8d 70 30          	lea    r14d,[rax+0x30]
   14000384d:	83 c0 37             	add    eax,0x37
   140003850:	44 09 e8             	or     eax,r13d
   140003853:	45 89 f7             	mov    r15d,r14d
   140003856:	41 80 fe 3a          	cmp    r14b,0x3a
   14000385a:	41 0f 42 c7          	cmovb  eax,r15d
   14000385e:	48 d3 ea             	shr    rdx,cl
   140003861:	88 43 ff             	mov    BYTE PTR [rbx-0x1],al
   140003864:	48 85 d2             	test   rdx,rdx
   140003867:	75 d7                	jne    140003840 <__pformat_xint.isra.0+0x90>
   140003869:	48 39 fb             	cmp    rbx,rdi
   14000386c:	0f 84 6e 02 00 00    	je     140003ae0 <__pformat_xint.isra.0+0x330>
   140003872:	45 85 db             	test   r11d,r11d
   140003875:	0f 8e 15 01 00 00    	jle    140003990 <__pformat_xint.isra.0+0x1e0>
   14000387b:	48 89 d8             	mov    rax,rbx
   14000387e:	44 89 d9             	mov    ecx,r11d
   140003881:	48 29 f8             	sub    rax,rdi
   140003884:	29 c1                	sub    ecx,eax
   140003886:	89 c8                	mov    eax,ecx
   140003888:	85 c9                	test   ecx,ecx
   14000388a:	0f 8e 00 01 00 00    	jle    140003990 <__pformat_xint.isra.0+0x1e0>
   140003890:	83 e8 01             	sub    eax,0x1
   140003893:	48 89 c2             	mov    rdx,rax
   140003896:	48 8d 4c 03 01       	lea    rcx,[rbx+rax*1+0x1]
   14000389b:	48 89 d8             	mov    rax,rbx
   14000389e:	66 90                	xchg   ax,ax
   1400038a0:	48 83 c0 01          	add    rax,0x1
   1400038a4:	c6 40 ff 30          	mov    BYTE PTR [rax-0x1],0x30
   1400038a8:	48 39 c8             	cmp    rax,rcx
   1400038ab:	75 f3                	jne    1400038a0 <__pformat_xint.isra.0+0xf0>
   1400038ad:	48 63 c2             	movsxd rax,edx
   1400038b0:	48 8d 5c 03 01       	lea    rbx,[rbx+rax*1+0x1]
   1400038b5:	48 39 fb             	cmp    rbx,rdi
   1400038b8:	0f 84 ee 00 00 00    	je     1400039ac <__pformat_xint.isra.0+0x1fc>
   1400038be:	48 89 d8             	mov    rax,rbx
   1400038c1:	48 29 f8             	sub    rax,rdi
   1400038c4:	44 39 c8             	cmp    eax,r9d
   1400038c7:	0f 8c fb 00 00 00    	jl     1400039c8 <__pformat_xint.isra.0+0x218>
   1400038cd:	c7 46 0c ff ff ff ff 	mov    DWORD PTR [rsi+0xc],0xffffffff
   1400038d4:	41 83 fa 6f          	cmp    r10d,0x6f
   1400038d8:	0f 84 5a 01 00 00    	je     140003a38 <__pformat_xint.isra.0+0x288>
   1400038de:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
   1400038e4:	f6 46 09 08          	test   BYTE PTR [rsi+0x9],0x8
   1400038e8:	0f 85 ba 02 00 00    	jne    140003ba8 <__pformat_xint.isra.0+0x3f8>
   1400038ee:	48 39 df             	cmp    rdi,rbx
   1400038f1:	73 45                	jae    140003938 <__pformat_xint.isra.0+0x188>
   1400038f3:	45 8d 65 ff          	lea    r12d,[r13-0x1]
   1400038f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400038fe:	00 00 
   140003900:	0f be 4b ff          	movsx  ecx,BYTE PTR [rbx-0x1]
   140003904:	48 83 eb 01          	sub    rbx,0x1
   140003908:	48 89 f2             	mov    rdx,rsi
   14000390b:	e8 00 ef ff ff       	call   140002810 <__pformat_putc>
   140003910:	48 39 fb             	cmp    rbx,rdi
   140003913:	77 eb                	ja     140003900 <__pformat_xint.isra.0+0x150>
   140003915:	45 85 ed             	test   r13d,r13d
   140003918:	7e 1e                	jle    140003938 <__pformat_xint.isra.0+0x188>
   14000391a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003920:	48 89 f2             	mov    rdx,rsi
   140003923:	b9 20 00 00 00       	mov    ecx,0x20
   140003928:	e8 e3 ee ff ff       	call   140002810 <__pformat_putc>
   14000392d:	44 89 e0             	mov    eax,r12d
   140003930:	41 83 ec 01          	sub    r12d,0x1
   140003934:	85 c0                	test   eax,eax
   140003936:	7f e8                	jg     140003920 <__pformat_xint.isra.0+0x170>
   140003938:	48 8d 65 a8          	lea    rsp,[rbp-0x58]
   14000393c:	5b                   	pop    rbx
   14000393d:	5e                   	pop    rsi
   14000393e:	5f                   	pop    rdi
   14000393f:	41 5c                	pop    r12
   140003941:	41 5d                	pop    r13
   140003943:	41 5e                	pop    r14
   140003945:	41 5f                	pop    r15
   140003947:	5d                   	pop    rbp
   140003948:	c3                   	ret    
   140003949:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003950:	66 41 83 78 20 00    	cmp    WORD PTR [r8+0x20],0x0
   140003956:	0f 85 3c 02 00 00    	jne    140003b98 <__pformat_xint.isra.0+0x3e8>
   14000395c:	44 8b 4e 0c          	mov    r9d,DWORD PTR [rsi+0xc]
   140003960:	44 39 c8             	cmp    eax,r9d
   140003963:	41 0f 4c c1          	cmovl  eax,r9d
   140003967:	48 98                	cdqe   
   140003969:	48 83 c0 0f          	add    rax,0xf
   14000396d:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003971:	e8 fa ec ff ff       	call   140002670 <___chkstk_ms>
   140003976:	b9 04 00 00 00       	mov    ecx,0x4
   14000397b:	48 29 c4             	sub    rsp,rax
   14000397e:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
   140003983:	e9 45 01 00 00       	jmp    140003acd <__pformat_xint.isra.0+0x31d>
   140003988:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000398f:	00 
   140003990:	41 83 fa 6f          	cmp    r10d,0x6f
   140003994:	0f 84 56 01 00 00    	je     140003af0 <__pformat_xint.isra.0+0x340>
   14000399a:	48 39 fb             	cmp    rbx,rdi
   14000399d:	0f 85 1b ff ff ff    	jne    1400038be <__pformat_xint.isra.0+0x10e>
   1400039a3:	45 85 db             	test   r11d,r11d
   1400039a6:	0f 84 12 ff ff ff    	je     1400038be <__pformat_xint.isra.0+0x10e>
   1400039ac:	c6 03 30             	mov    BYTE PTR [rbx],0x30
   1400039af:	48 83 c3 01          	add    rbx,0x1
   1400039b3:	48 89 d8             	mov    rax,rbx
   1400039b6:	48 29 f8             	sub    rax,rdi
   1400039b9:	44 39 c8             	cmp    eax,r9d
   1400039bc:	0f 8d 0b ff ff ff    	jge    1400038cd <__pformat_xint.isra.0+0x11d>
   1400039c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400039c8:	41 29 c1             	sub    r9d,eax
   1400039cb:	8b 56 08             	mov    edx,DWORD PTR [rsi+0x8]
   1400039ce:	44 89 4e 0c          	mov    DWORD PTR [rsi+0xc],r9d
   1400039d2:	45 89 cd             	mov    r13d,r9d
   1400039d5:	41 83 fa 6f          	cmp    r10d,0x6f
   1400039d9:	0f 84 31 01 00 00    	je     140003b10 <__pformat_xint.isra.0+0x360>
   1400039df:	f6 c6 08             	test   dh,0x8
   1400039e2:	0f 84 50 01 00 00    	je     140003b38 <__pformat_xint.isra.0+0x388>
   1400039e8:	41 83 ed 02          	sub    r13d,0x2
   1400039ec:	45 85 ed             	test   r13d,r13d
   1400039ef:	7e 09                	jle    1400039fa <__pformat_xint.isra.0+0x24a>
   1400039f1:	45 85 db             	test   r11d,r11d
   1400039f4:	0f 88 1e 02 00 00    	js     140003c18 <__pformat_xint.isra.0+0x468>
   1400039fa:	44 88 13             	mov    BYTE PTR [rbx],r10b
   1400039fd:	48 83 c3 02          	add    rbx,0x2
   140003a01:	c6 43 ff 30          	mov    BYTE PTR [rbx-0x1],0x30
   140003a05:	45 85 ed             	test   r13d,r13d
   140003a08:	0f 8e e0 fe ff ff    	jle    1400038ee <__pformat_xint.isra.0+0x13e>
   140003a0e:	45 8d 65 ff          	lea    r12d,[r13-0x1]
   140003a12:	80 e6 04             	and    dh,0x4
   140003a15:	0f 85 33 01 00 00    	jne    140003b4e <__pformat_xint.isra.0+0x39e>
   140003a1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003a20:	48 89 f2             	mov    rdx,rsi
   140003a23:	b9 20 00 00 00       	mov    ecx,0x20
   140003a28:	e8 e3 ed ff ff       	call   140002810 <__pformat_putc>
   140003a2d:	44 89 e0             	mov    eax,r12d
   140003a30:	41 83 ec 01          	sub    r12d,0x1
   140003a34:	85 c0                	test   eax,eax
   140003a36:	7f e8                	jg     140003a20 <__pformat_xint.isra.0+0x270>
   140003a38:	41 bc fe ff ff ff    	mov    r12d,0xfffffffe
   140003a3e:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
   140003a44:	48 39 fb             	cmp    rbx,rdi
   140003a47:	0f 87 b3 fe ff ff    	ja     140003900 <__pformat_xint.isra.0+0x150>
   140003a4d:	e9 e6 fe ff ff       	jmp    140003938 <__pformat_xint.isra.0+0x188>
   140003a52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003a58:	45 8b 58 10          	mov    r11d,DWORD PTR [r8+0x10]
   140003a5c:	b8 00 00 00 00       	mov    eax,0x0
   140003a61:	45 8b 60 08          	mov    r12d,DWORD PTR [r8+0x8]
   140003a65:	45 85 db             	test   r11d,r11d
   140003a68:	41 0f 49 c3          	cmovns eax,r11d
   140003a6c:	83 c0 18             	add    eax,0x18
   140003a6f:	41 f7 c4 00 10 00 00 	test   r12d,0x1000
   140003a76:	0f 84 e4 00 00 00    	je     140003b60 <__pformat_xint.isra.0+0x3b0>
   140003a7c:	66 41 83 78 20 00    	cmp    WORD PTR [r8+0x20],0x0
   140003a82:	0f 84 ac 01 00 00    	je     140003c34 <__pformat_xint.isra.0+0x484>
   140003a88:	b9 03 00 00 00       	mov    ecx,0x3
   140003a8d:	41 89 c0             	mov    r8d,eax
   140003a90:	41 b9 ab aa aa aa    	mov    r9d,0xaaaaaaab
   140003a96:	4d 0f af c1          	imul   r8,r9
   140003a9a:	44 8b 4e 0c          	mov    r9d,DWORD PTR [rsi+0xc]
   140003a9e:	49 c1 e8 21          	shr    r8,0x21
   140003aa2:	44 01 c0             	add    eax,r8d
   140003aa5:	44 39 c8             	cmp    eax,r9d
   140003aa8:	41 0f 4c c1          	cmovl  eax,r9d
   140003aac:	48 98                	cdqe   
   140003aae:	48 83 c0 0f          	add    rax,0xf
   140003ab2:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003ab6:	e8 b5 eb ff ff       	call   140002670 <___chkstk_ms>
   140003abb:	48 29 c4             	sub    rsp,rax
   140003abe:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
   140003ac3:	41 83 fa 6f          	cmp    r10d,0x6f
   140003ac7:	0f 84 ba 00 00 00    	je     140003b87 <__pformat_xint.isra.0+0x3d7>
   140003acd:	41 b8 0f 00 00 00    	mov    r8d,0xf
   140003ad3:	48 89 fb             	mov    rbx,rdi
   140003ad6:	48 85 d2             	test   rdx,rdx
   140003ad9:	0f 85 55 fd ff ff    	jne    140003834 <__pformat_xint.isra.0+0x84>
   140003adf:	90                   	nop
   140003ae0:	41 81 e4 ff f7 ff ff 	and    r12d,0xfffff7ff
   140003ae7:	44 89 66 08          	mov    DWORD PTR [rsi+0x8],r12d
   140003aeb:	e9 82 fd ff ff       	jmp    140003872 <__pformat_xint.isra.0+0xc2>
   140003af0:	f6 46 09 08          	test   BYTE PTR [rsi+0x9],0x8
   140003af4:	0f 84 a0 fe ff ff    	je     14000399a <__pformat_xint.isra.0+0x1ea>
   140003afa:	c6 03 30             	mov    BYTE PTR [rbx],0x30
   140003afd:	48 83 c3 01          	add    rbx,0x1
   140003b01:	e9 94 fe ff ff       	jmp    14000399a <__pformat_xint.isra.0+0x1ea>
   140003b06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140003b0d:	00 00 00 
   140003b10:	45 85 db             	test   r11d,r11d
   140003b13:	0f 88 9f 00 00 00    	js     140003bb8 <__pformat_xint.isra.0+0x408>
   140003b19:	45 8d 65 ff          	lea    r12d,[r13-0x1]
   140003b1d:	80 e6 04             	and    dh,0x4
   140003b20:	0f 84 fa fe ff ff    	je     140003a20 <__pformat_xint.isra.0+0x270>
   140003b26:	48 39 fb             	cmp    rbx,rdi
   140003b29:	0f 87 d1 fd ff ff    	ja     140003900 <__pformat_xint.isra.0+0x150>
   140003b2f:	e9 ec fd ff ff       	jmp    140003920 <__pformat_xint.isra.0+0x170>
   140003b34:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003b38:	45 85 db             	test   r11d,r11d
   140003b3b:	0f 88 d7 00 00 00    	js     140003c18 <__pformat_xint.isra.0+0x468>
   140003b41:	45 8d 65 ff          	lea    r12d,[r13-0x1]
   140003b45:	80 e6 04             	and    dh,0x4
   140003b48:	0f 84 d2 fe ff ff    	je     140003a20 <__pformat_xint.isra.0+0x270>
   140003b4e:	48 39 df             	cmp    rdi,rbx
   140003b51:	0f 82 a9 fd ff ff    	jb     140003900 <__pformat_xint.isra.0+0x150>
   140003b57:	e9 c4 fd ff ff       	jmp    140003920 <__pformat_xint.isra.0+0x170>
   140003b5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003b60:	44 8b 4e 0c          	mov    r9d,DWORD PTR [rsi+0xc]
   140003b64:	41 39 c1             	cmp    r9d,eax
   140003b67:	41 0f 4d c1          	cmovge eax,r9d
   140003b6b:	48 98                	cdqe   
   140003b6d:	48 83 c0 0f          	add    rax,0xf
   140003b71:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003b75:	e8 f6 ea ff ff       	call   140002670 <___chkstk_ms>
   140003b7a:	b9 03 00 00 00       	mov    ecx,0x3
   140003b7f:	48 29 c4             	sub    rsp,rax
   140003b82:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
   140003b87:	41 b8 07 00 00 00    	mov    r8d,0x7
   140003b8d:	e9 96 fc ff ff       	jmp    140003828 <__pformat_xint.isra.0+0x78>
   140003b92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003b98:	b9 04 00 00 00       	mov    ecx,0x4
   140003b9d:	e9 eb fe ff ff       	jmp    140003a8d <__pformat_xint.isra.0+0x2dd>
   140003ba2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003ba8:	44 88 13             	mov    BYTE PTR [rbx],r10b
   140003bab:	48 83 c3 02          	add    rbx,0x2
   140003baf:	c6 43 ff 30          	mov    BYTE PTR [rbx-0x1],0x30
   140003bb3:	e9 36 fd ff ff       	jmp    1400038ee <__pformat_xint.isra.0+0x13e>
   140003bb8:	89 d0                	mov    eax,edx
   140003bba:	25 00 06 00 00       	and    eax,0x600
   140003bbf:	3d 00 02 00 00       	cmp    eax,0x200
   140003bc4:	0f 85 4f ff ff ff    	jne    140003b19 <__pformat_xint.isra.0+0x369>
   140003bca:	45 8d 45 ff          	lea    r8d,[r13-0x1]
   140003bce:	44 89 c0             	mov    eax,r8d
   140003bd1:	48 8d 4c 03 01       	lea    rcx,[rbx+rax*1+0x1]
   140003bd6:	48 89 d8             	mov    rax,rbx
   140003bd9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003be0:	48 83 c0 01          	add    rax,0x1
   140003be4:	c6 40 ff 30          	mov    BYTE PTR [rax-0x1],0x30
   140003be8:	48 39 c8             	cmp    rax,rcx
   140003beb:	75 f3                	jne    140003be0 <__pformat_xint.isra.0+0x430>
   140003bed:	49 63 c0             	movsxd rax,r8d
   140003bf0:	45 29 e8             	sub    r8d,r13d
   140003bf3:	48 8d 5c 03 01       	lea    rbx,[rbx+rax*1+0x1]
   140003bf8:	45 89 c5             	mov    r13d,r8d
   140003bfb:	41 83 fa 6f          	cmp    r10d,0x6f
   140003bff:	0f 84 00 fe ff ff    	je     140003a05 <__pformat_xint.isra.0+0x255>
   140003c05:	f6 c6 08             	test   dh,0x8
   140003c08:	0f 84 f7 fd ff ff    	je     140003a05 <__pformat_xint.isra.0+0x255>
   140003c0e:	e9 e7 fd ff ff       	jmp    1400039fa <__pformat_xint.isra.0+0x24a>
   140003c13:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003c18:	89 d0                	mov    eax,edx
   140003c1a:	25 00 06 00 00       	and    eax,0x600
   140003c1f:	3d 00 02 00 00       	cmp    eax,0x200
   140003c24:	74 a4                	je     140003bca <__pformat_xint.isra.0+0x41a>
   140003c26:	f6 c6 08             	test   dh,0x8
   140003c29:	0f 85 cb fd ff ff    	jne    1400039fa <__pformat_xint.isra.0+0x24a>
   140003c2f:	e9 0d ff ff ff       	jmp    140003b41 <__pformat_xint.isra.0+0x391>
   140003c34:	44 8b 4e 0c          	mov    r9d,DWORD PTR [rsi+0xc]
   140003c38:	44 39 c8             	cmp    eax,r9d
   140003c3b:	41 0f 4c c1          	cmovl  eax,r9d
   140003c3f:	e9 27 ff ff ff       	jmp    140003b6b <__pformat_xint.isra.0+0x3bb>
   140003c44:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140003c4b:	00 00 00 00 
   140003c4f:	90                   	nop

0000000140003c50 <__pformat_xldouble>:
   140003c50:	41 55                	push   r13
   140003c52:	41 54                	push   r12
   140003c54:	55                   	push   rbp
   140003c55:	57                   	push   rdi
   140003c56:	56                   	push   rsi
   140003c57:	53                   	push   rbx
   140003c58:	48 83 ec 68          	sub    rsp,0x68
   140003c5c:	4c 8b 11             	mov    r10,QWORD PTR [rcx]
   140003c5f:	44 8b 59 08          	mov    r11d,DWORD PTR [rcx+0x8]
   140003c63:	41 0f bf cb          	movsx  ecx,r11w
   140003c67:	4c 89 de             	mov    rsi,r11
   140003c6a:	44 8d 04 09          	lea    r8d,[rcx+rcx*1]
   140003c6e:	49 89 d4             	mov    r12,rdx
   140003c71:	4c 89 d2             	mov    rdx,r10
   140003c74:	45 0f b7 c0          	movzx  r8d,r8w
   140003c78:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140003c7d:	48 c1 ea 20          	shr    rdx,0x20
   140003c81:	44 89 5c 24 38       	mov    DWORD PTR [rsp+0x38],r11d
   140003c86:	81 e2 ff ff ff 7f    	and    edx,0x7fffffff
   140003c8c:	44 09 d2             	or     edx,r10d
   140003c8f:	89 d0                	mov    eax,edx
   140003c91:	f7 d8                	neg    eax
   140003c93:	09 d0                	or     eax,edx
   140003c95:	c1 e8 1f             	shr    eax,0x1f
   140003c98:	44 09 c0             	or     eax,r8d
   140003c9b:	41 b8 fe ff 00 00    	mov    r8d,0xfffe
   140003ca1:	41 29 c0             	sub    r8d,eax
   140003ca4:	44 89 c0             	mov    eax,r8d
   140003ca7:	c1 e8 10             	shr    eax,0x10
   140003caa:	0f 85 d8 02 00 00    	jne    140003f88 <__pformat_xldouble+0x338>
   140003cb0:	66 45 85 db          	test   r11w,r11w
   140003cb4:	0f 88 d6 01 00 00    	js     140003e90 <__pformat_xldouble+0x240>
   140003cba:	66 81 e6 ff 7f       	and    si,0x7fff
   140003cbf:	0f 85 a3 01 00 00    	jne    140003e68 <__pformat_xldouble+0x218>
   140003cc5:	4d 85 d2             	test   r10,r10
   140003cc8:	0f 85 42 03 00 00    	jne    140004010 <__pformat_xldouble+0x3c0>
   140003cce:	41 8b 54 24 10       	mov    edx,DWORD PTR [r12+0x10]
   140003cd3:	83 fa 0e             	cmp    edx,0xe
   140003cd6:	0f 86 f4 01 00 00    	jbe    140003ed0 <__pformat_xldouble+0x280>
   140003cdc:	41 8b 54 24 08       	mov    edx,DWORD PTR [r12+0x8]
   140003ce1:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
   140003ce6:	41 8b 44 24 10       	mov    eax,DWORD PTR [r12+0x10]
   140003ceb:	85 c0                	test   eax,eax
   140003ced:	0f 8e ad 04 00 00    	jle    1400041a0 <__pformat_xldouble+0x550>
   140003cf3:	c6 44 24 40 2e       	mov    BYTE PTR [rsp+0x40],0x2e
   140003cf8:	48 8d 44 24 41       	lea    rax,[rsp+0x41]
   140003cfd:	c6 00 30             	mov    BYTE PTR [rax],0x30
   140003d00:	48 8d 58 01          	lea    rbx,[rax+0x1]
   140003d04:	45 8b 44 24 0c       	mov    r8d,DWORD PTR [r12+0xc]
   140003d09:	bd 02 00 00 00       	mov    ebp,0x2
   140003d0e:	45 85 c0             	test   r8d,r8d
   140003d11:	0f 8e 89 00 00 00    	jle    140003da0 <__pformat_xldouble+0x150>
   140003d17:	45 8b 4c 24 10       	mov    r9d,DWORD PTR [r12+0x10]
   140003d1c:	48 89 d8             	mov    rax,rbx
   140003d1f:	0f bf ce             	movsx  ecx,si
   140003d22:	48 29 f8             	sub    rax,rdi
   140003d25:	45 8d 14 01          	lea    r10d,[r9+rax*1]
   140003d29:	45 85 c9             	test   r9d,r9d
   140003d2c:	41 0f 4f c2          	cmovg  eax,r10d
   140003d30:	45 31 c9             	xor    r9d,r9d
   140003d33:	f7 c2 c0 01 00 00    	test   edx,0x1c0
   140003d39:	41 0f 95 c1          	setne  r9b
   140003d3d:	c1 f9 1f             	sar    ecx,0x1f
   140003d40:	46 8d 4c 08 05       	lea    r9d,[rax+r9*1+0x5]
   140003d45:	48 0f bf c6          	movsx  rax,si
   140003d49:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   140003d50:	45 89 ca             	mov    r10d,r9d
   140003d53:	48 c1 f8 22          	sar    rax,0x22
   140003d57:	29 c8                	sub    eax,ecx
   140003d59:	74 2a                	je     140003d85 <__pformat_xldouble+0x135>
   140003d5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003d60:	48 63 c8             	movsxd rcx,eax
   140003d63:	41 83 c2 01          	add    r10d,0x1
   140003d67:	c1 f8 1f             	sar    eax,0x1f
   140003d6a:	48 69 c9 67 66 66 66 	imul   rcx,rcx,0x66666667
   140003d71:	41 8d 6a 02          	lea    ebp,[r10+0x2]
   140003d75:	44 29 cd             	sub    ebp,r9d
   140003d78:	48 c1 f9 22          	sar    rcx,0x22
   140003d7c:	29 c1                	sub    ecx,eax
   140003d7e:	89 c8                	mov    eax,ecx
   140003d80:	75 de                	jne    140003d60 <__pformat_xldouble+0x110>
   140003d82:	0f bf ed             	movsx  ebp,bp
   140003d85:	45 39 d0             	cmp    r8d,r10d
   140003d88:	0f 8e 7a 03 00 00    	jle    140004108 <__pformat_xldouble+0x4b8>
   140003d8e:	45 29 d0             	sub    r8d,r10d
   140003d91:	f6 c6 06             	test   dh,0x6
   140003d94:	0f 84 be 03 00 00    	je     140004158 <__pformat_xldouble+0x508>
   140003d9a:	45 89 44 24 0c       	mov    DWORD PTR [r12+0xc],r8d
   140003d9f:	90                   	nop
   140003da0:	f6 c2 80             	test   dl,0x80
   140003da3:	0f 85 47 03 00 00    	jne    1400040f0 <__pformat_xldouble+0x4a0>
   140003da9:	f6 c6 01             	test   dh,0x1
   140003dac:	0f 85 6e 03 00 00    	jne    140004120 <__pformat_xldouble+0x4d0>
   140003db2:	83 e2 40             	and    edx,0x40
   140003db5:	0f 85 85 03 00 00    	jne    140004140 <__pformat_xldouble+0x4f0>
   140003dbb:	4c 89 e2             	mov    rdx,r12
   140003dbe:	b9 30 00 00 00       	mov    ecx,0x30
   140003dc3:	e8 48 ea ff ff       	call   140002810 <__pformat_putc>
   140003dc8:	41 8b 4c 24 08       	mov    ecx,DWORD PTR [r12+0x8]
   140003dcd:	4c 89 e2             	mov    rdx,r12
   140003dd0:	83 e1 20             	and    ecx,0x20
   140003dd3:	83 c9 58             	or     ecx,0x58
   140003dd6:	e8 35 ea ff ff       	call   140002810 <__pformat_putc>
   140003ddb:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140003de0:	85 c0                	test   eax,eax
   140003de2:	7e 32                	jle    140003e16 <__pformat_xldouble+0x1c6>
   140003de4:	41 f6 44 24 09 02    	test   BYTE PTR [r12+0x9],0x2
   140003dea:	74 2a                	je     140003e16 <__pformat_xldouble+0x1c6>
   140003dec:	83 e8 01             	sub    eax,0x1
   140003def:	41 89 44 24 0c       	mov    DWORD PTR [r12+0xc],eax
   140003df4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003df8:	4c 89 e2             	mov    rdx,r12
   140003dfb:	b9 30 00 00 00       	mov    ecx,0x30
   140003e00:	e8 0b ea ff ff       	call   140002810 <__pformat_putc>
   140003e05:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140003e0a:	8d 50 ff             	lea    edx,[rax-0x1]
   140003e0d:	41 89 54 24 0c       	mov    DWORD PTR [r12+0xc],edx
   140003e12:	85 c0                	test   eax,eax
   140003e14:	7f e2                	jg     140003df8 <__pformat_xldouble+0x1a8>
   140003e16:	4c 8d 6c 24 2e       	lea    r13,[rsp+0x2e]
   140003e1b:	48 39 fb             	cmp    rbx,rdi
   140003e1e:	77 25                	ja     140003e45 <__pformat_xldouble+0x1f5>
   140003e20:	e9 98 01 00 00       	jmp    140003fbd <__pformat_xldouble+0x36d>
   140003e25:	0f 1f 00             	nop    DWORD PTR [rax]
   140003e28:	41 0f b7 44 24 20    	movzx  eax,WORD PTR [r12+0x20]
   140003e2e:	66 89 44 24 2e       	mov    WORD PTR [rsp+0x2e],ax
   140003e33:	66 85 c0             	test   ax,ax
   140003e36:	0f 85 84 02 00 00    	jne    1400040c0 <__pformat_xldouble+0x470>
   140003e3c:	48 39 fb             	cmp    rbx,rdi
   140003e3f:	0f 84 78 01 00 00    	je     140003fbd <__pformat_xldouble+0x36d>
   140003e45:	0f be 4b ff          	movsx  ecx,BYTE PTR [rbx-0x1]
   140003e49:	48 83 eb 01          	sub    rbx,0x1
   140003e4d:	83 f9 2e             	cmp    ecx,0x2e
   140003e50:	0f 84 0a 02 00 00    	je     140004060 <__pformat_xldouble+0x410>
   140003e56:	83 f9 2c             	cmp    ecx,0x2c
   140003e59:	74 cd                	je     140003e28 <__pformat_xldouble+0x1d8>
   140003e5b:	4c 89 e2             	mov    rdx,r12
   140003e5e:	e8 ad e9 ff ff       	call   140002810 <__pformat_putc>
   140003e63:	eb d7                	jmp    140003e3c <__pformat_xldouble+0x1ec>
   140003e65:	0f 1f 00             	nop    DWORD PTR [rax]
   140003e68:	85 d2                	test   edx,edx
   140003e6a:	75 44                	jne    140003eb0 <__pformat_xldouble+0x260>
   140003e6c:	66 81 fe ff 7f       	cmp    si,0x7fff
   140003e71:	75 3d                	jne    140003eb0 <__pformat_xldouble+0x260>
   140003e73:	81 e1 00 80 00 00    	and    ecx,0x8000
   140003e79:	4d 89 e0             	mov    r8,r12
   140003e7c:	48 8d 15 88 54 00 00 	lea    rdx,[rip+0x5488]        # 14000930b <.rdata+0xb>
   140003e83:	e8 58 ec ff ff       	call   140002ae0 <__pformat_emit_inf_or_nan>
   140003e88:	e9 0d 01 00 00       	jmp    140003f9a <__pformat_xldouble+0x34a>
   140003e8d:	0f 1f 00             	nop    DWORD PTR [rax]
   140003e90:	41 81 4c 24 08 80 00 	or     DWORD PTR [r12+0x8],0x80
   140003e97:	00 00 
   140003e99:	66 81 e6 ff 7f       	and    si,0x7fff
   140003e9e:	0f 84 21 fe ff ff    	je     140003cc5 <__pformat_xldouble+0x75>
   140003ea4:	eb c2                	jmp    140003e68 <__pformat_xldouble+0x218>
   140003ea6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140003ead:	00 00 00 
   140003eb0:	41 8b 54 24 10       	mov    edx,DWORD PTR [r12+0x10]
   140003eb5:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140003eba:	66 81 ee ff 3f       	sub    si,0x3fff
   140003ebf:	83 fa 0e             	cmp    edx,0xe
   140003ec2:	0f 87 80 01 00 00    	ja     140004048 <__pformat_xldouble+0x3f8>
   140003ec8:	4d 85 d2             	test   r10,r10
   140003ecb:	78 08                	js     140003ed5 <__pformat_xldouble+0x285>
   140003ecd:	0f 1f 00             	nop    DWORD PTR [rax]
   140003ed0:	4d 01 d2             	add    r10,r10
   140003ed3:	79 fb                	jns    140003ed0 <__pformat_xldouble+0x280>
   140003ed5:	b9 0e 00 00 00       	mov    ecx,0xe
   140003eda:	b8 04 00 00 00       	mov    eax,0x4
   140003edf:	49 d1 ea             	shr    r10,1
   140003ee2:	29 d1                	sub    ecx,edx
   140003ee4:	c1 e1 02             	shl    ecx,0x2
   140003ee7:	48 d3 e0             	shl    rax,cl
   140003eea:	49 01 c2             	add    r10,rax
   140003eed:	0f 88 45 02 00 00    	js     140004138 <__pformat_xldouble+0x4e8>
   140003ef3:	4d 01 d2             	add    r10,r10
   140003ef6:	b9 0f 00 00 00       	mov    ecx,0xf
   140003efb:	29 d1                	sub    ecx,edx
   140003efd:	41 8b 54 24 08       	mov    edx,DWORD PTR [r12+0x8]
   140003f02:	c1 e1 02             	shl    ecx,0x2
   140003f05:	49 d3 ea             	shr    r10,cl
   140003f08:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
   140003f0d:	41 89 d1             	mov    r9d,edx
   140003f10:	41 89 d0             	mov    r8d,edx
   140003f13:	48 89 fb             	mov    rbx,rdi
   140003f16:	41 81 e1 00 08 00 00 	and    r9d,0x800
   140003f1d:	41 83 e0 20          	and    r8d,0x20
   140003f21:	eb 27                	jmp    140003f4a <__pformat_xldouble+0x2fa>
   140003f23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f28:	31 c0                	xor    eax,eax
   140003f2a:	48 39 fb             	cmp    rbx,rdi
   140003f2d:	77 09                	ja     140003f38 <__pformat_xldouble+0x2e8>
   140003f2f:	41 8b 4c 24 10       	mov    ecx,DWORD PTR [r12+0x10]
   140003f34:	85 c9                	test   ecx,ecx
   140003f36:	78 09                	js     140003f41 <__pformat_xldouble+0x2f1>
   140003f38:	83 c0 30             	add    eax,0x30
   140003f3b:	88 03                	mov    BYTE PTR [rbx],al
   140003f3d:	48 83 c3 01          	add    rbx,0x1
   140003f41:	4d 85 d2             	test   r10,r10
   140003f44:	0f 84 8e 01 00 00    	je     1400040d8 <__pformat_xldouble+0x488>
   140003f4a:	44 89 d1             	mov    ecx,r10d
   140003f4d:	83 e1 0f             	and    ecx,0xf
   140003f50:	49 f7 c2 f0 ff ff ff 	test   r10,0xfffffffffffffff0
   140003f57:	0f 84 13 01 00 00    	je     140004070 <__pformat_xldouble+0x420>
   140003f5d:	41 8b 44 24 10       	mov    eax,DWORD PTR [r12+0x10]
   140003f62:	49 c1 ea 04          	shr    r10,0x4
   140003f66:	85 c0                	test   eax,eax
   140003f68:	7e 08                	jle    140003f72 <__pformat_xldouble+0x322>
   140003f6a:	83 e8 01             	sub    eax,0x1
   140003f6d:	41 89 44 24 10       	mov    DWORD PTR [r12+0x10],eax
   140003f72:	85 c9                	test   ecx,ecx
   140003f74:	74 b2                	je     140003f28 <__pformat_xldouble+0x2d8>
   140003f76:	89 c8                	mov    eax,ecx
   140003f78:	83 f9 09             	cmp    ecx,0x9
   140003f7b:	76 bb                	jbe    140003f38 <__pformat_xldouble+0x2e8>
   140003f7d:	8d 41 37             	lea    eax,[rcx+0x37]
   140003f80:	44 09 c0             	or     eax,r8d
   140003f83:	eb b6                	jmp    140003f3b <__pformat_xldouble+0x2eb>
   140003f85:	0f 1f 00             	nop    DWORD PTR [rax]
   140003f88:	4d 89 e0             	mov    r8,r12
   140003f8b:	48 8d 15 75 53 00 00 	lea    rdx,[rip+0x5375]        # 140009307 <.rdata+0x7>
   140003f92:	31 c9                	xor    ecx,ecx
   140003f94:	e8 47 eb ff ff       	call   140002ae0 <__pformat_emit_inf_or_nan>
   140003f99:	90                   	nop
   140003f9a:	48 83 c4 68          	add    rsp,0x68
   140003f9e:	5b                   	pop    rbx
   140003f9f:	5e                   	pop    rsi
   140003fa0:	5f                   	pop    rdi
   140003fa1:	5d                   	pop    rbp
   140003fa2:	41 5c                	pop    r12
   140003fa4:	41 5d                	pop    r13
   140003fa6:	c3                   	ret    
   140003fa7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140003fae:	00 00 
   140003fb0:	4c 89 e2             	mov    rdx,r12
   140003fb3:	b9 30 00 00 00       	mov    ecx,0x30
   140003fb8:	e8 53 e8 ff ff       	call   140002810 <__pformat_putc>
   140003fbd:	41 8b 44 24 10       	mov    eax,DWORD PTR [r12+0x10]
   140003fc2:	8d 50 ff             	lea    edx,[rax-0x1]
   140003fc5:	41 89 54 24 10       	mov    DWORD PTR [r12+0x10],edx
   140003fca:	85 c0                	test   eax,eax
   140003fcc:	7f e2                	jg     140003fb0 <__pformat_xldouble+0x360>
   140003fce:	41 8b 4c 24 08       	mov    ecx,DWORD PTR [r12+0x8]
   140003fd3:	4c 89 e2             	mov    rdx,r12
   140003fd6:	83 e1 20             	and    ecx,0x20
   140003fd9:	83 c9 50             	or     ecx,0x50
   140003fdc:	e8 2f e8 ff ff       	call   140002810 <__pformat_putc>
   140003fe1:	41 01 6c 24 0c       	add    DWORD PTR [r12+0xc],ebp
   140003fe6:	48 0f bf ce          	movsx  rcx,si
   140003fea:	4c 89 e2             	mov    rdx,r12
   140003fed:	41 81 4c 24 08 c0 01 	or     DWORD PTR [r12+0x8],0x1c0
   140003ff4:	00 00 
   140003ff6:	e8 35 f1 ff ff       	call   140003130 <__pformat_int.isra.0>
   140003ffb:	90                   	nop
   140003ffc:	48 83 c4 68          	add    rsp,0x68
   140004000:	5b                   	pop    rbx
   140004001:	5e                   	pop    rsi
   140004002:	5f                   	pop    rdi
   140004003:	5d                   	pop    rbp
   140004004:	41 5c                	pop    r12
   140004006:	41 5d                	pop    r13
   140004008:	c3                   	ret    
   140004009:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004010:	0f 88 a2 01 00 00    	js     1400041b8 <__pformat_xldouble+0x568>
   140004016:	b8 01 c0 ff ff       	mov    eax,0xffffc001
   14000401b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004020:	89 c6                	mov    esi,eax
   140004022:	83 e8 01             	sub    eax,0x1
   140004025:	4d 01 d2             	add    r10,r10
   140004028:	79 f6                	jns    140004020 <__pformat_xldouble+0x3d0>
   14000402a:	41 8b 54 24 10       	mov    edx,DWORD PTR [r12+0x10]
   14000402f:	83 fa 0e             	cmp    edx,0xe
   140004032:	0f 86 9d fe ff ff    	jbe    140003ed5 <__pformat_xldouble+0x285>
   140004038:	41 8b 54 24 08       	mov    edx,DWORD PTR [r12+0x8]
   14000403d:	e9 c6 fe ff ff       	jmp    140003f08 <__pformat_xldouble+0x2b8>
   140004042:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004048:	41 8b 54 24 08       	mov    edx,DWORD PTR [r12+0x8]
   14000404d:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
   140004052:	4d 85 d2             	test   r10,r10
   140004055:	0f 85 ad fe ff ff    	jne    140003f08 <__pformat_xldouble+0x2b8>
   14000405b:	e9 86 fc ff ff       	jmp    140003ce6 <__pformat_xldouble+0x96>
   140004060:	4c 89 e1             	mov    rcx,r12
   140004063:	e8 28 eb ff ff       	call   140002b90 <__pformat_emit_radix_point>
   140004068:	e9 cf fd ff ff       	jmp    140003e3c <__pformat_xldouble+0x1ec>
   14000406d:	0f 1f 00             	nop    DWORD PTR [rax]
   140004070:	48 39 fb             	cmp    rbx,rdi
   140004073:	77 13                	ja     140004088 <__pformat_xldouble+0x438>
   140004075:	45 85 c9             	test   r9d,r9d
   140004078:	75 0e                	jne    140004088 <__pformat_xldouble+0x438>
   14000407a:	45 8b 5c 24 10       	mov    r11d,DWORD PTR [r12+0x10]
   14000407f:	45 85 db             	test   r11d,r11d
   140004082:	7e 0b                	jle    14000408f <__pformat_xldouble+0x43f>
   140004084:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004088:	c6 03 2e             	mov    BYTE PTR [rbx],0x2e
   14000408b:	48 83 c3 01          	add    rbx,0x1
   14000408f:	8d 46 ff             	lea    eax,[rsi-0x1]
   140004092:	49 83 fa 01          	cmp    r10,0x1
   140004096:	74 16                	je     1400040ae <__pformat_xldouble+0x45e>
   140004098:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000409f:	00 
   1400040a0:	89 c6                	mov    esi,eax
   1400040a2:	49 d1 ea             	shr    r10,1
   1400040a5:	8d 46 ff             	lea    eax,[rsi-0x1]
   1400040a8:	49 83 fa 01          	cmp    r10,0x1
   1400040ac:	75 f2                	jne    1400040a0 <__pformat_xldouble+0x450>
   1400040ae:	45 31 d2             	xor    r10d,r10d
   1400040b1:	e9 bc fe ff ff       	jmp    140003f72 <__pformat_xldouble+0x322>
   1400040b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400040bd:	00 00 00 
   1400040c0:	4d 89 e0             	mov    r8,r12
   1400040c3:	ba 01 00 00 00       	mov    edx,0x1
   1400040c8:	4c 89 e9             	mov    rcx,r13
   1400040cb:	e8 a0 e7 ff ff       	call   140002870 <__pformat_wputchars>
   1400040d0:	e9 67 fd ff ff       	jmp    140003e3c <__pformat_xldouble+0x1ec>
   1400040d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400040d8:	48 39 fb             	cmp    rbx,rdi
   1400040db:	0f 85 23 fc ff ff    	jne    140003d04 <__pformat_xldouble+0xb4>
   1400040e1:	e9 00 fc ff ff       	jmp    140003ce6 <__pformat_xldouble+0x96>
   1400040e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400040ed:	00 00 00 
   1400040f0:	4c 89 e2             	mov    rdx,r12
   1400040f3:	b9 2d 00 00 00       	mov    ecx,0x2d
   1400040f8:	e8 13 e7 ff ff       	call   140002810 <__pformat_putc>
   1400040fd:	e9 b9 fc ff ff       	jmp    140003dbb <__pformat_xldouble+0x16b>
   140004102:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004108:	41 c7 44 24 0c ff ff 	mov    DWORD PTR [r12+0xc],0xffffffff
   14000410f:	ff ff 
   140004111:	e9 8a fc ff ff       	jmp    140003da0 <__pformat_xldouble+0x150>
   140004116:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000411d:	00 00 00 
   140004120:	4c 89 e2             	mov    rdx,r12
   140004123:	b9 2b 00 00 00       	mov    ecx,0x2b
   140004128:	e8 e3 e6 ff ff       	call   140002810 <__pformat_putc>
   14000412d:	e9 89 fc ff ff       	jmp    140003dbb <__pformat_xldouble+0x16b>
   140004132:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004138:	83 c6 01             	add    esi,0x1
   14000413b:	e9 b6 fd ff ff       	jmp    140003ef6 <__pformat_xldouble+0x2a6>
   140004140:	4c 89 e2             	mov    rdx,r12
   140004143:	b9 20 00 00 00       	mov    ecx,0x20
   140004148:	e8 c3 e6 ff ff       	call   140002810 <__pformat_putc>
   14000414d:	e9 69 fc ff ff       	jmp    140003dbb <__pformat_xldouble+0x16b>
   140004152:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004158:	41 8d 40 ff          	lea    eax,[r8-0x1]
   14000415c:	41 89 44 24 0c       	mov    DWORD PTR [r12+0xc],eax
   140004161:	45 85 c0             	test   r8d,r8d
   140004164:	0f 8e 36 fc ff ff    	jle    140003da0 <__pformat_xldouble+0x150>
   14000416a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004170:	4c 89 e2             	mov    rdx,r12
   140004173:	b9 20 00 00 00       	mov    ecx,0x20
   140004178:	e8 93 e6 ff ff       	call   140002810 <__pformat_putc>
   14000417d:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140004182:	8d 50 ff             	lea    edx,[rax-0x1]
   140004185:	41 89 54 24 0c       	mov    DWORD PTR [r12+0xc],edx
   14000418a:	85 c0                	test   eax,eax
   14000418c:	7f e2                	jg     140004170 <__pformat_xldouble+0x520>
   14000418e:	41 8b 54 24 08       	mov    edx,DWORD PTR [r12+0x8]
   140004193:	e9 08 fc ff ff       	jmp    140003da0 <__pformat_xldouble+0x150>
   140004198:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000419f:	00 
   1400041a0:	48 89 f8             	mov    rax,rdi
   1400041a3:	f6 c6 08             	test   dh,0x8
   1400041a6:	0f 84 51 fb ff ff    	je     140003cfd <__pformat_xldouble+0xad>
   1400041ac:	e9 42 fb ff ff       	jmp    140003cf3 <__pformat_xldouble+0xa3>
   1400041b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400041b8:	be 02 c0 ff ff       	mov    esi,0xffffc002
   1400041bd:	e9 68 fe ff ff       	jmp    14000402a <__pformat_xldouble+0x3da>
   1400041c2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400041c9:	00 00 00 00 
   1400041cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400041d0 <__mingw_pformat>:
   1400041d0:	41 57                	push   r15
   1400041d2:	41 56                	push   r14
   1400041d4:	41 55                	push   r13
   1400041d6:	41 54                	push   r12
   1400041d8:	55                   	push   rbp
   1400041d9:	57                   	push   rdi
   1400041da:	56                   	push   rsi
   1400041db:	53                   	push   rbx
   1400041dc:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
   1400041e3:	4c 8b a4 24 10 01 00 	mov    r12,QWORD PTR [rsp+0x110]
   1400041ea:	00 
   1400041eb:	89 cf                	mov    edi,ecx
   1400041ed:	48 89 d5             	mov    rbp,rdx
   1400041f0:	44 89 c3             	mov    ebx,r8d
   1400041f3:	4c 89 ce             	mov    rsi,r9
   1400041f6:	e8 a5 30 00 00       	call   1400072a0 <_errno>
   1400041fb:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   1400041fe:	81 e7 00 60 00 00    	and    edi,0x6000
   140004204:	31 d2                	xor    edx,edx
   140004206:	8b 00                	mov    eax,DWORD PTR [rax]
   140004208:	89 9c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ebx
   14000420f:	48 8d 5e 01          	lea    rbx,[rsi+0x1]
   140004213:	48 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],rbp
   140004218:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   14000421c:	48 b8 ff ff ff ff fd 	movabs rax,0xfffffffdffffffff
   140004223:	ff ff ff 
   140004226:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
   14000422d:	00 
   14000422e:	31 c0                	xor    eax,eax
   140004230:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
   140004234:	c7 44 24 7c ff ff ff 	mov    DWORD PTR [rsp+0x7c],0xffffffff
   14000423b:	ff 
   14000423c:	66 89 84 24 88 00 00 	mov    WORD PTR [rsp+0x88],ax
   140004243:	00 
   140004244:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],0x0
   14000424b:	00 00 00 00 
   14000424f:	66 89 94 24 90 00 00 	mov    WORD PTR [rsp+0x90],dx
   140004256:	00 
   140004257:	c7 84 24 94 00 00 00 	mov    DWORD PTR [rsp+0x94],0x0
   14000425e:	00 00 00 00 
   140004262:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   140004269:	ff ff ff ff 
   14000426d:	85 c9                	test   ecx,ecx
   14000426f:	0f 84 da 00 00 00    	je     14000434f <__mingw_pformat+0x17f>
   140004275:	4c 8d 2d a4 50 00 00 	lea    r13,[rip+0x50a4]        # 140009320 <.rdata+0x20>
   14000427c:	eb 1b                	jmp    140004299 <__mingw_pformat+0xc9>
   14000427e:	66 90                	xchg   ax,ax
   140004280:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004285:	e8 86 e5 ff ff       	call   140002810 <__pformat_putc>
   14000428a:	0f be 0b             	movsx  ecx,BYTE PTR [rbx]
   14000428d:	48 83 c3 01          	add    rbx,0x1
   140004291:	85 c9                	test   ecx,ecx
   140004293:	0f 84 af 00 00 00    	je     140004348 <__mingw_pformat+0x178>
   140004299:	83 f9 25             	cmp    ecx,0x25
   14000429c:	75 e2                	jne    140004280 <__mingw_pformat+0xb0>
   14000429e:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400042a1:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
   1400042a5:	48 c7 44 24 7c ff ff 	mov    QWORD PTR [rsp+0x7c],0xffffffffffffffff
   1400042ac:	ff ff 
   1400042ae:	84 c0                	test   al,al
   1400042b0:	0f 84 92 00 00 00    	je     140004348 <__mingw_pformat+0x178>
   1400042b6:	48 89 de             	mov    rsi,rbx
   1400042b9:	4c 8d 54 24 7c       	lea    r10,[rsp+0x7c]
   1400042be:	45 31 ff             	xor    r15d,r15d
   1400042c1:	45 31 f6             	xor    r14d,r14d
   1400042c4:	41 bb 03 00 00 00    	mov    r11d,0x3
   1400042ca:	8d 50 e0             	lea    edx,[rax-0x20]
   1400042cd:	48 8d 6e 01          	lea    rbp,[rsi+0x1]
   1400042d1:	0f be c8             	movsx  ecx,al
   1400042d4:	80 fa 5a             	cmp    dl,0x5a
   1400042d7:	77 17                	ja     1400042f0 <__mingw_pformat+0x120>
   1400042d9:	0f b6 d2             	movzx  edx,dl
   1400042dc:	49 63 54 95 00       	movsxd rdx,DWORD PTR [r13+rdx*4+0x0]
   1400042e1:	4c 01 ea             	add    rdx,r13
   1400042e4:	ff e2                	jmp    rdx
   1400042e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400042ed:	00 00 00 
   1400042f0:	83 e8 30             	sub    eax,0x30
   1400042f3:	3c 09                	cmp    al,0x9
   1400042f5:	0f 87 ad 06 00 00    	ja     1400049a8 <__mingw_pformat+0x7d8>
   1400042fb:	41 83 fe 03          	cmp    r14d,0x3
   1400042ff:	0f 87 a3 06 00 00    	ja     1400049a8 <__mingw_pformat+0x7d8>
   140004305:	45 85 f6             	test   r14d,r14d
   140004308:	0f 85 63 06 00 00    	jne    140004971 <__mingw_pformat+0x7a1>
   14000430e:	41 be 01 00 00 00    	mov    r14d,0x1
   140004314:	4d 85 d2             	test   r10,r10
   140004317:	0f 84 ab 04 00 00    	je     1400047c8 <__mingw_pformat+0x5f8>
   14000431d:	41 8b 02             	mov    eax,DWORD PTR [r10]
   140004320:	85 c0                	test   eax,eax
   140004322:	0f 88 56 06 00 00    	js     14000497e <__mingw_pformat+0x7ae>
   140004328:	8d 04 80             	lea    eax,[rax+rax*4]
   14000432b:	8d 44 41 d0          	lea    eax,[rcx+rax*2-0x30]
   14000432f:	41 89 02             	mov    DWORD PTR [r10],eax
   140004332:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004336:	48 89 ee             	mov    rsi,rbp
   140004339:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004340:	84 c0                	test   al,al
   140004342:	75 86                	jne    1400042ca <__mingw_pformat+0xfa>
   140004344:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004348:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [rsp+0x94]
   14000434f:	89 c8                	mov    eax,ecx
   140004351:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
   140004358:	5b                   	pop    rbx
   140004359:	5e                   	pop    rsi
   14000435a:	5f                   	pop    rdi
   14000435b:	5d                   	pop    rbp
   14000435c:	41 5c                	pop    r12
   14000435e:	41 5d                	pop    r13
   140004360:	41 5e                	pop    r14
   140004362:	41 5f                	pop    r15
   140004364:	c3                   	ret    
   140004365:	0f 1f 00             	nop    DWORD PTR [rax]
   140004368:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   14000436d:	41 83 ff 03          	cmp    r15d,0x3
   140004371:	0f 84 0c 07 00 00    	je     140004a83 <__mingw_pformat+0x8b3>
   140004377:	45 8b 0c 24          	mov    r9d,DWORD PTR [r12]
   14000437b:	41 83 ff 02          	cmp    r15d,0x2
   14000437f:	74 14                	je     140004395 <__mingw_pformat+0x1c5>
   140004381:	41 83 ff 01          	cmp    r15d,0x1
   140004385:	0f 84 4a 06 00 00    	je     1400049d5 <__mingw_pformat+0x805>
   14000438b:	41 83 ff 05          	cmp    r15d,0x5
   14000438f:	75 04                	jne    140004395 <__mingw_pformat+0x1c5>
   140004391:	45 0f b6 c9          	movzx  r9d,r9b
   140004395:	4c 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],r9
   14000439a:	83 f9 75             	cmp    ecx,0x75
   14000439d:	0f 84 ee 06 00 00    	je     140004a91 <__mingw_pformat+0x8c1>
   1400043a3:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   1400043a8:	4c 89 ca             	mov    rdx,r9
   1400043ab:	49 89 dc             	mov    r12,rbx
   1400043ae:	48 89 eb             	mov    rbx,rbp
   1400043b1:	e8 fa f3 ff ff       	call   1400037b0 <__pformat_xint.isra.0>
   1400043b6:	e9 cf fe ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400043bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400043c0:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400043c4:	41 bf 03 00 00 00    	mov    r15d,0x3
   1400043ca:	48 89 ee             	mov    rsi,rbp
   1400043cd:	41 be 04 00 00 00    	mov    r14d,0x4
   1400043d3:	e9 68 ff ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400043d8:	81 4c 24 78 80 00 00 	or     DWORD PTR [rsp+0x78],0x80
   1400043df:	00 
   1400043e0:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   1400043e5:	41 83 ff 03          	cmp    r15d,0x3
   1400043e9:	0f 84 86 06 00 00    	je     140004a75 <__mingw_pformat+0x8a5>
   1400043ef:	49 63 0c 24          	movsxd rcx,DWORD PTR [r12]
   1400043f3:	41 83 ff 02          	cmp    r15d,0x2
   1400043f7:	74 14                	je     14000440d <__mingw_pformat+0x23d>
   1400043f9:	41 83 ff 01          	cmp    r15d,0x1
   1400043fd:	0f 84 e0 05 00 00    	je     1400049e3 <__mingw_pformat+0x813>
   140004403:	41 83 ff 05          	cmp    r15d,0x5
   140004407:	75 04                	jne    14000440d <__mingw_pformat+0x23d>
   140004409:	48 0f be c9          	movsx  rcx,cl
   14000440d:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
   140004412:	48 89 c8             	mov    rax,rcx
   140004415:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000441a:	49 89 dc             	mov    r12,rbx
   14000441d:	48 89 eb             	mov    rbx,rbp
   140004420:	48 c1 f8 3f          	sar    rax,0x3f
   140004424:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   140004429:	e8 02 ed ff ff       	call   140003130 <__pformat_int.isra.0>
   14000442e:	e9 57 fe ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004433:	41 83 ef 02          	sub    r15d,0x2
   140004437:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
   14000443b:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   140004440:	41 83 ff 01          	cmp    r15d,0x1
   140004444:	0f 86 d5 04 00 00    	jbe    14000491f <__mingw_pformat+0x74f>
   14000444a:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000444f:	49 89 dc             	mov    r12,rbx
   140004452:	48 89 eb             	mov    rbx,rbp
   140004455:	e8 36 e6 ff ff       	call   140002a90 <__pformat_puts>
   14000445a:	e9 2b fe ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   14000445f:	41 83 ef 02          	sub    r15d,0x2
   140004463:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
   140004467:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   14000446c:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004473:	ff ff ff ff 
   140004477:	41 83 ff 01          	cmp    r15d,0x1
   14000447b:	0f 86 62 02 00 00    	jbe    1400046e3 <__mingw_pformat+0x513>
   140004481:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
   140004486:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   14000448b:	88 44 24 60          	mov    BYTE PTR [rsp+0x60],al
   14000448f:	49 89 dc             	mov    r12,rbx
   140004492:	ba 01 00 00 00       	mov    edx,0x1
   140004497:	48 89 eb             	mov    rbx,rbp
   14000449a:	e8 01 e5 ff ff       	call   1400029a0 <__pformat_putchars>
   14000449f:	e9 e6 fd ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400044a4:	45 85 f6             	test   r14d,r14d
   1400044a7:	0f 85 1b 03 00 00    	jne    1400047c8 <__mingw_pformat+0x5f8>
   1400044ad:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400044b1:	81 4c 24 78 00 04 00 	or     DWORD PTR [rsp+0x78],0x400
   1400044b8:	00 
   1400044b9:	48 89 ee             	mov    rsi,rbp
   1400044bc:	e9 7f fe ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400044c1:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400044c5:	3c 36                	cmp    al,0x36
   1400044c7:	0f 84 85 05 00 00    	je     140004a52 <__mingw_pformat+0x882>
   1400044cd:	3c 33                	cmp    al,0x33
   1400044cf:	0f 84 c9 04 00 00    	je     14000499e <__mingw_pformat+0x7ce>
   1400044d5:	48 89 ee             	mov    rsi,rbp
   1400044d8:	41 bf 03 00 00 00    	mov    r15d,0x3
   1400044de:	41 be 04 00 00 00    	mov    r14d,0x4
   1400044e4:	e9 57 fe ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400044e9:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400044ed:	83 4c 24 78 04       	or     DWORD PTR [rsp+0x78],0x4
   1400044f2:	48 89 ee             	mov    rsi,rbp
   1400044f5:	41 be 04 00 00 00    	mov    r14d,0x4
   1400044fb:	e9 40 fe ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004500:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004504:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   140004508:	49 83 c4 08          	add    r12,0x8
   14000450c:	83 c8 20             	or     eax,0x20
   14000450f:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004513:	a8 04                	test   al,0x4
   140004515:	0f 84 3c 02 00 00    	je     140004757 <__mingw_pformat+0x587>
   14000451b:	db 2a                	fld    TBYTE PTR [rdx]
   14000451d:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   140004522:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004527:	48 89 eb             	mov    rbx,rbp
   14000452a:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000452e:	e8 2d eb ff ff       	call   140003060 <__pformat_float>
   140004533:	e9 52 fd ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004538:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000453c:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   140004540:	49 83 c4 08          	add    r12,0x8
   140004544:	83 c8 20             	or     eax,0x20
   140004547:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   14000454b:	a8 04                	test   al,0x4
   14000454d:	0f 84 3c 02 00 00    	je     14000478f <__mingw_pformat+0x5bf>
   140004553:	db 2a                	fld    TBYTE PTR [rdx]
   140004555:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000455a:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000455f:	48 89 eb             	mov    rbx,rbp
   140004562:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   140004566:	e8 d5 f0 ff ff       	call   140003640 <__pformat_gfloat>
   14000456b:	e9 1a fd ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004570:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004574:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   140004578:	49 83 c4 08          	add    r12,0x8
   14000457c:	83 c8 20             	or     eax,0x20
   14000457f:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004583:	a8 04                	test   al,0x4
   140004585:	0f 84 94 01 00 00    	je     14000471f <__mingw_pformat+0x54f>
   14000458b:	db 2a                	fld    TBYTE PTR [rdx]
   14000458d:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   140004592:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004597:	48 89 eb             	mov    rbx,rbp
   14000459a:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000459e:	e8 ed ef ff ff       	call   140003590 <__pformat_efloat>
   1400045a3:	e9 e2 fc ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400045a8:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400045ac:	3c 6c                	cmp    al,0x6c
   1400045ae:	0f 84 85 04 00 00    	je     140004a39 <__mingw_pformat+0x869>
   1400045b4:	48 89 ee             	mov    rsi,rbp
   1400045b7:	41 bf 02 00 00 00    	mov    r15d,0x2
   1400045bd:	41 be 04 00 00 00    	mov    r14d,0x4
   1400045c3:	e9 78 fd ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400045c8:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400045cc:	3c 68                	cmp    al,0x68
   1400045ce:	0f 84 4c 04 00 00    	je     140004a20 <__mingw_pformat+0x850>
   1400045d4:	48 89 ee             	mov    rsi,rbp
   1400045d7:	41 bf 01 00 00 00    	mov    r15d,0x1
   1400045dd:	41 be 04 00 00 00    	mov    r14d,0x4
   1400045e3:	e9 58 fd ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400045e8:	8b 4c 24 2c          	mov    ecx,DWORD PTR [rsp+0x2c]
   1400045ec:	48 89 eb             	mov    rbx,rbp
   1400045ef:	e8 3c 2c 00 00       	call   140007230 <strerror>
   1400045f4:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400045f9:	48 89 c1             	mov    rcx,rax
   1400045fc:	e8 8f e4 ff ff       	call   140002a90 <__pformat_puts>
   140004601:	e9 84 fc ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004606:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   14000460a:	48 63 84 24 94 00 00 	movsxd rax,DWORD PTR [rsp+0x94]
   140004611:	00 
   140004612:	49 83 c4 08          	add    r12,0x8
   140004616:	41 83 ff 05          	cmp    r15d,0x5
   14000461a:	0f 84 f6 03 00 00    	je     140004a16 <__mingw_pformat+0x846>
   140004620:	41 83 ff 01          	cmp    r15d,0x1
   140004624:	0f 84 8c 04 00 00    	je     140004ab6 <__mingw_pformat+0x8e6>
   14000462a:	41 83 ff 02          	cmp    r15d,0x2
   14000462e:	74 0a                	je     14000463a <__mingw_pformat+0x46a>
   140004630:	41 83 ff 03          	cmp    r15d,0x3
   140004634:	0f 84 c3 04 00 00    	je     140004afd <__mingw_pformat+0x92d>
   14000463a:	89 02                	mov    DWORD PTR [rdx],eax
   14000463c:	48 89 eb             	mov    rbx,rbp
   14000463f:	e9 46 fc ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004644:	45 85 f6             	test   r14d,r14d
   140004647:	75 0a                	jne    140004653 <__mingw_pformat+0x483>
   140004649:	39 7c 24 78          	cmp    DWORD PTR [rsp+0x78],edi
   14000464d:	0f 84 69 03 00 00    	je     1400049bc <__mingw_pformat+0x7ec>
   140004653:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   140004657:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   14000465c:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004661:	b9 78 00 00 00       	mov    ecx,0x78
   140004666:	48 c7 44 24 68 00 00 	mov    QWORD PTR [rsp+0x68],0x0
   14000466d:	00 00 
   14000466f:	49 89 dc             	mov    r12,rbx
   140004672:	48 89 eb             	mov    rbx,rbp
   140004675:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
   14000467a:	e8 31 f1 ff ff       	call   1400037b0 <__pformat_xint.isra.0>
   14000467f:	e9 06 fc ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004684:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004688:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   14000468c:	49 83 c4 08          	add    r12,0x8
   140004690:	83 c8 20             	or     eax,0x20
   140004693:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004697:	a8 04                	test   al,0x4
   140004699:	0f 84 65 01 00 00    	je     140004804 <__mingw_pformat+0x634>
   14000469f:	db 2a                	fld    TBYTE PTR [rdx]
   1400046a1:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400046a6:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400046ab:	48 89 eb             	mov    rbx,rbp
   1400046ae:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400046b2:	e8 99 f5 ff ff       	call   140003c50 <__pformat_xldouble>
   1400046b7:	e9 ce fb ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400046bc:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400046c1:	b9 25 00 00 00       	mov    ecx,0x25
   1400046c6:	48 89 eb             	mov    rbx,rbp
   1400046c9:	e8 42 e1 ff ff       	call   140002810 <__pformat_putc>
   1400046ce:	e9 b7 fb ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400046d3:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   1400046da:	ff ff ff ff 
   1400046de:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   1400046e3:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
   1400046e7:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
   1400046ec:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   1400046f1:	49 89 dc             	mov    r12,rbx
   1400046f4:	ba 01 00 00 00       	mov    edx,0x1
   1400046f9:	48 89 eb             	mov    rbx,rbp
   1400046fc:	66 89 44 24 60       	mov    WORD PTR [rsp+0x60],ax
   140004701:	e8 6a e1 ff ff       	call   140002870 <__pformat_wputchars>
   140004706:	e9 7f fb ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   14000470b:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000470f:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   140004713:	49 83 c4 08          	add    r12,0x8
   140004717:	a8 04                	test   al,0x4
   140004719:	0f 85 6c fe ff ff    	jne    14000458b <__mingw_pformat+0x3bb>
   14000471f:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   140004724:	dd 44 24 30          	fld    QWORD PTR [rsp+0x30]
   140004728:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000472d:	48 89 eb             	mov    rbx,rbp
   140004730:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   140004735:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   140004739:	e8 52 ee ff ff       	call   140003590 <__pformat_efloat>
   14000473e:	e9 47 fb ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004743:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004747:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   14000474b:	49 83 c4 08          	add    r12,0x8
   14000474f:	a8 04                	test   al,0x4
   140004751:	0f 85 c4 fd ff ff    	jne    14000451b <__mingw_pformat+0x34b>
   140004757:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   14000475c:	dd 44 24 30          	fld    QWORD PTR [rsp+0x30]
   140004760:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004765:	48 89 eb             	mov    rbx,rbp
   140004768:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000476d:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   140004771:	e8 ea e8 ff ff       	call   140003060 <__pformat_float>
   140004776:	e9 0f fb ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   14000477b:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000477f:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   140004783:	49 83 c4 08          	add    r12,0x8
   140004787:	a8 04                	test   al,0x4
   140004789:	0f 85 c4 fd ff ff    	jne    140004553 <__mingw_pformat+0x383>
   14000478f:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   140004794:	dd 44 24 30          	fld    QWORD PTR [rsp+0x30]
   140004798:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000479d:	48 89 eb             	mov    rbx,rbp
   1400047a0:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400047a5:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400047a9:	e8 92 ee ff ff       	call   140003640 <__pformat_gfloat>
   1400047ae:	e9 d7 fa ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400047b3:	45 85 f6             	test   r14d,r14d
   1400047b6:	0f 85 aa 01 00 00    	jne    140004966 <__mingw_pformat+0x796>
   1400047bc:	81 4c 24 78 00 02 00 	or     DWORD PTR [rsp+0x78],0x200
   1400047c3:	00 
   1400047c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400047c8:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400047cc:	48 89 ee             	mov    rsi,rbp
   1400047cf:	e9 6c fb ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400047d4:	41 83 fe 01          	cmp    r14d,0x1
   1400047d8:	0f 86 13 02 00 00    	jbe    1400049f1 <__mingw_pformat+0x821>
   1400047de:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400047e2:	41 be 04 00 00 00    	mov    r14d,0x4
   1400047e8:	48 89 ee             	mov    rsi,rbp
   1400047eb:	e9 50 fb ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   1400047f0:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400047f4:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
   1400047f8:	49 83 c4 08          	add    r12,0x8
   1400047fc:	a8 04                	test   al,0x4
   1400047fe:	0f 85 9b fe ff ff    	jne    14000469f <__mingw_pformat+0x4cf>
   140004804:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   140004809:	dd 44 24 30          	fld    QWORD PTR [rsp+0x30]
   14000480d:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004812:	48 89 eb             	mov    rbx,rbp
   140004815:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000481a:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000481e:	e8 2d f4 ff ff       	call   140003c50 <__pformat_xldouble>
   140004823:	e9 62 fa ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004828:	45 85 f6             	test   r14d,r14d
   14000482b:	75 9b                	jne    1400047c8 <__mingw_pformat+0x5f8>
   14000482d:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004831:	83 4c 24 78 40       	or     DWORD PTR [rsp+0x78],0x40
   140004836:	48 89 ee             	mov    rsi,rbp
   140004839:	e9 02 fb ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   14000483e:	45 85 f6             	test   r14d,r14d
   140004841:	75 85                	jne    1400047c8 <__mingw_pformat+0x5f8>
   140004843:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004847:	81 4c 24 78 00 08 00 	or     DWORD PTR [rsp+0x78],0x800
   14000484e:	00 
   14000484f:	48 89 ee             	mov    rsi,rbp
   140004852:	e9 e9 fa ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004857:	4d 85 d2             	test   r10,r10
   14000485a:	74 82                	je     1400047de <__mingw_pformat+0x60e>
   14000485c:	41 f7 c6 fd ff ff ff 	test   r14d,0xfffffffd
   140004863:	0f 85 20 01 00 00    	jne    140004989 <__mingw_pformat+0x7b9>
   140004869:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
   14000486d:	49 8d 54 24 08       	lea    rdx,[r12+0x8]
   140004872:	41 89 02             	mov    DWORD PTR [r10],eax
   140004875:	85 c0                	test   eax,eax
   140004877:	0f 88 44 02 00 00    	js     140004ac1 <__mingw_pformat+0x8f1>
   14000487d:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004881:	49 89 d4             	mov    r12,rdx
   140004884:	48 89 ee             	mov    rsi,rbp
   140004887:	45 31 d2             	xor    r10d,r10d
   14000488a:	e9 b1 fa ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   14000488f:	45 85 f6             	test   r14d,r14d
   140004892:	0f 85 30 ff ff ff    	jne    1400047c8 <__mingw_pformat+0x5f8>
   140004898:	81 4c 24 78 00 01 00 	or     DWORD PTR [rsp+0x78],0x100
   14000489f:	00 
   1400048a0:	e9 23 ff ff ff       	jmp    1400047c8 <__mingw_pformat+0x5f8>
   1400048a5:	45 85 f6             	test   r14d,r14d
   1400048a8:	0f 85 1a ff ff ff    	jne    1400047c8 <__mingw_pformat+0x5f8>
   1400048ae:	4c 8d 4c 24 60       	lea    r9,[rsp+0x60]
   1400048b3:	4c 89 54 24 38       	mov    QWORD PTR [rsp+0x38],r10
   1400048b8:	81 4c 24 78 00 10 00 	or     DWORD PTR [rsp+0x78],0x1000
   1400048bf:	00 
   1400048c0:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
   1400048c5:	c7 44 24 60 00 00 00 	mov    DWORD PTR [rsp+0x60],0x0
   1400048cc:	00 
   1400048cd:	e8 7e 29 00 00       	call   140007250 <localeconv>
   1400048d2:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
   1400048d7:	48 8d 4c 24 5e       	lea    rcx,[rsp+0x5e]
   1400048dc:	41 b8 10 00 00 00    	mov    r8d,0x10
   1400048e2:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   1400048e6:	e8 75 2b 00 00       	call   140007460 <mbrtowc>
   1400048eb:	4c 8b 54 24 38       	mov    r10,QWORD PTR [rsp+0x38]
   1400048f0:	41 bb 03 00 00 00    	mov    r11d,0x3
   1400048f6:	85 c0                	test   eax,eax
   1400048f8:	7e 0d                	jle    140004907 <__mingw_pformat+0x737>
   1400048fa:	0f b7 54 24 5e       	movzx  edx,WORD PTR [rsp+0x5e]
   1400048ff:	66 89 94 24 90 00 00 	mov    WORD PTR [rsp+0x90],dx
   140004906:	00 
   140004907:	89 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],eax
   14000490e:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004912:	48 89 ee             	mov    rsi,rbp
   140004915:	e9 26 fa ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   14000491a:	49 8d 5c 24 08       	lea    rbx,[r12+0x8]
   14000491f:	4d 8b 24 24          	mov    r12,QWORD PTR [r12]
   140004923:	48 8d 05 e6 49 00 00 	lea    rax,[rip+0x49e6]        # 140009310 <.rdata+0x10>
   14000492a:	4d 85 e4             	test   r12,r12
   14000492d:	4c 0f 44 e0          	cmove  r12,rax
   140004931:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   140004938:	85 c0                	test   eax,eax
   14000493a:	0f 88 69 01 00 00    	js     140004aa9 <__mingw_pformat+0x8d9>
   140004940:	48 63 d0             	movsxd rdx,eax
   140004943:	4c 89 e1             	mov    rcx,r12
   140004946:	e8 95 28 00 00       	call   1400071e0 <wcsnlen>
   14000494b:	4c 89 e1             	mov    rcx,r12
   14000494e:	48 89 c2             	mov    rdx,rax
   140004951:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004956:	49 89 dc             	mov    r12,rbx
   140004959:	e8 12 df ff ff       	call   140002870 <__pformat_wputchars>
   14000495e:	48 89 eb             	mov    rbx,rbp
   140004961:	e9 24 f9 ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004966:	41 83 fe 03          	cmp    r14d,0x3
   14000496a:	77 3c                	ja     1400049a8 <__mingw_pformat+0x7d8>
   14000496c:	b9 30 00 00 00       	mov    ecx,0x30
   140004971:	41 83 fe 02          	cmp    r14d,0x2
   140004975:	45 0f 44 f3          	cmove  r14d,r11d
   140004979:	e9 96 f9 ff ff       	jmp    140004314 <__mingw_pformat+0x144>
   14000497e:	83 e9 30             	sub    ecx,0x30
   140004981:	41 89 0a             	mov    DWORD PTR [r10],ecx
   140004984:	e9 3f fe ff ff       	jmp    1400047c8 <__mingw_pformat+0x5f8>
   140004989:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000498d:	45 31 d2             	xor    r10d,r10d
   140004990:	48 89 ee             	mov    rsi,rbp
   140004993:	41 be 04 00 00 00    	mov    r14d,0x4
   140004999:	e9 a2 f9 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   14000499e:	80 7e 02 32          	cmp    BYTE PTR [rsi+0x2],0x32
   1400049a2:	0f 84 3c 01 00 00    	je     140004ae4 <__mingw_pformat+0x914>
   1400049a8:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400049ad:	b9 25 00 00 00       	mov    ecx,0x25
   1400049b2:	e8 59 de ff ff       	call   140002810 <__pformat_putc>
   1400049b7:	e9 ce f8 ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   1400049bc:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x10
   1400049c3:	10 00 00 00 
   1400049c7:	89 f8                	mov    eax,edi
   1400049c9:	80 cc 02             	or     ah,0x2
   1400049cc:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   1400049d0:	e9 7e fc ff ff       	jmp    140004653 <__mingw_pformat+0x483>
   1400049d5:	45 0f b7 c9          	movzx  r9d,r9w
   1400049d9:	4c 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],r9
   1400049de:	e9 b7 f9 ff ff       	jmp    14000439a <__mingw_pformat+0x1ca>
   1400049e3:	48 0f bf c9          	movsx  rcx,cx
   1400049e7:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
   1400049ec:	e9 21 fa ff ff       	jmp    140004412 <__mingw_pformat+0x242>
   1400049f1:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400049f5:	41 be 02 00 00 00    	mov    r14d,0x2
   1400049fb:	48 89 ee             	mov    rsi,rbp
   1400049fe:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x0
   140004a05:	00 00 00 00 
   140004a09:	4c 8d 94 24 80 00 00 	lea    r10,[rsp+0x80]
   140004a10:	00 
   140004a11:	e9 2a f9 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004a16:	88 02                	mov    BYTE PTR [rdx],al
   140004a18:	48 89 eb             	mov    rbx,rbp
   140004a1b:	e9 6a f8 ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004a20:	0f b6 46 02          	movzx  eax,BYTE PTR [rsi+0x2]
   140004a24:	41 bf 05 00 00 00    	mov    r15d,0x5
   140004a2a:	48 83 c6 02          	add    rsi,0x2
   140004a2e:	41 be 04 00 00 00    	mov    r14d,0x4
   140004a34:	e9 07 f9 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004a39:	0f b6 46 02          	movzx  eax,BYTE PTR [rsi+0x2]
   140004a3d:	41 bf 03 00 00 00    	mov    r15d,0x3
   140004a43:	48 83 c6 02          	add    rsi,0x2
   140004a47:	41 be 04 00 00 00    	mov    r14d,0x4
   140004a4d:	e9 ee f8 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004a52:	80 7e 02 34          	cmp    BYTE PTR [rsi+0x2],0x34
   140004a56:	0f 85 4c ff ff ff    	jne    1400049a8 <__mingw_pformat+0x7d8>
   140004a5c:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
   140004a60:	41 bf 03 00 00 00    	mov    r15d,0x3
   140004a66:	48 83 c6 03          	add    rsi,0x3
   140004a6a:	41 be 04 00 00 00    	mov    r14d,0x4
   140004a70:	e9 cb f8 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004a75:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
   140004a79:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
   140004a7e:	e9 8f f9 ff ff       	jmp    140004412 <__mingw_pformat+0x242>
   140004a83:	4d 8b 0c 24          	mov    r9,QWORD PTR [r12]
   140004a87:	4c 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],r9
   140004a8c:	e9 09 f9 ff ff       	jmp    14000439a <__mingw_pformat+0x1ca>
   140004a91:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004a96:	4c 89 c9             	mov    rcx,r9
   140004a99:	49 89 dc             	mov    r12,rbx
   140004a9c:	48 89 eb             	mov    rbx,rbp
   140004a9f:	e8 8c e6 ff ff       	call   140003130 <__pformat_int.isra.0>
   140004aa4:	e9 e1 f7 ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004aa9:	4c 89 e1             	mov    rcx,r12
   140004aac:	e8 5f 27 00 00       	call   140007210 <wcslen>
   140004ab1:	e9 95 fe ff ff       	jmp    14000494b <__mingw_pformat+0x77b>
   140004ab6:	66 89 02             	mov    WORD PTR [rdx],ax
   140004ab9:	48 89 eb             	mov    rbx,rbp
   140004abc:	e9 c9 f7 ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004ac1:	45 85 f6             	test   r14d,r14d
   140004ac4:	75 42                	jne    140004b08 <__mingw_pformat+0x938>
   140004ac6:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004aca:	f7 5c 24 7c          	neg    DWORD PTR [rsp+0x7c]
   140004ace:	49 89 d4             	mov    r12,rdx
   140004ad1:	48 89 ee             	mov    rsi,rbp
   140004ad4:	81 4c 24 78 00 04 00 	or     DWORD PTR [rsp+0x78],0x400
   140004adb:	00 
   140004adc:	45 31 d2             	xor    r10d,r10d
   140004adf:	e9 5c f8 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004ae4:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
   140004ae8:	41 bf 02 00 00 00    	mov    r15d,0x2
   140004aee:	48 83 c6 03          	add    rsi,0x3
   140004af2:	41 be 04 00 00 00    	mov    r14d,0x4
   140004af8:	e9 43 f8 ff ff       	jmp    140004340 <__mingw_pformat+0x170>
   140004afd:	48 89 02             	mov    QWORD PTR [rdx],rax
   140004b00:	48 89 eb             	mov    rbx,rbp
   140004b03:	e9 82 f7 ff ff       	jmp    14000428a <__mingw_pformat+0xba>
   140004b08:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004b0f:	ff ff ff ff 
   140004b13:	e9 65 fd ff ff       	jmp    14000487d <__mingw_pformat+0x6ad>
   140004b18:	90                   	nop
   140004b19:	90                   	nop
   140004b1a:	90                   	nop
   140004b1b:	90                   	nop
   140004b1c:	90                   	nop
   140004b1d:	90                   	nop
   140004b1e:	90                   	nop
   140004b1f:	90                   	nop

0000000140004b20 <__rv_alloc_D2A>:
   140004b20:	53                   	push   rbx
   140004b21:	48 83 ec 20          	sub    rsp,0x20
   140004b25:	31 db                	xor    ebx,ebx
   140004b27:	83 f9 1b             	cmp    ecx,0x1b
   140004b2a:	7e 18                	jle    140004b44 <__rv_alloc_D2A+0x24>
   140004b2c:	b8 04 00 00 00       	mov    eax,0x4
   140004b31:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004b38:	01 c0                	add    eax,eax
   140004b3a:	83 c3 01             	add    ebx,0x1
   140004b3d:	8d 50 17             	lea    edx,[rax+0x17]
   140004b40:	39 ca                	cmp    edx,ecx
   140004b42:	7c f4                	jl     140004b38 <__rv_alloc_D2A+0x18>
   140004b44:	89 d9                	mov    ecx,ebx
   140004b46:	e8 95 1b 00 00       	call   1400066e0 <__Balloc_D2A>
   140004b4b:	89 18                	mov    DWORD PTR [rax],ebx
   140004b4d:	48 83 c0 04          	add    rax,0x4
   140004b51:	48 83 c4 20          	add    rsp,0x20
   140004b55:	5b                   	pop    rbx
   140004b56:	c3                   	ret    
   140004b57:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004b5e:	00 00 

0000000140004b60 <__nrv_alloc_D2A>:
   140004b60:	57                   	push   rdi
   140004b61:	56                   	push   rsi
   140004b62:	53                   	push   rbx
   140004b63:	48 83 ec 20          	sub    rsp,0x20
   140004b67:	48 89 ce             	mov    rsi,rcx
   140004b6a:	48 89 d7             	mov    rdi,rdx
   140004b6d:	41 83 f8 1b          	cmp    r8d,0x1b
   140004b71:	7e 6d                	jle    140004be0 <__nrv_alloc_D2A+0x80>
   140004b73:	b8 04 00 00 00       	mov    eax,0x4
   140004b78:	31 db                	xor    ebx,ebx
   140004b7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004b80:	01 c0                	add    eax,eax
   140004b82:	83 c3 01             	add    ebx,0x1
   140004b85:	8d 48 17             	lea    ecx,[rax+0x17]
   140004b88:	41 39 c8             	cmp    r8d,ecx
   140004b8b:	7f f3                	jg     140004b80 <__nrv_alloc_D2A+0x20>
   140004b8d:	89 d9                	mov    ecx,ebx
   140004b8f:	e8 4c 1b 00 00       	call   1400066e0 <__Balloc_D2A>
   140004b94:	48 8d 4e 01          	lea    rcx,[rsi+0x1]
   140004b98:	89 18                	mov    DWORD PTR [rax],ebx
   140004b9a:	0f b6 16             	movzx  edx,BYTE PTR [rsi]
   140004b9d:	4c 8d 48 04          	lea    r9,[rax+0x4]
   140004ba1:	88 50 04             	mov    BYTE PTR [rax+0x4],dl
   140004ba4:	4c 89 c8             	mov    rax,r9
   140004ba7:	84 d2                	test   dl,dl
   140004ba9:	74 19                	je     140004bc4 <__nrv_alloc_D2A+0x64>
   140004bab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004bb0:	44 0f b6 01          	movzx  r8d,BYTE PTR [rcx]
   140004bb4:	48 83 c0 01          	add    rax,0x1
   140004bb8:	48 83 c1 01          	add    rcx,0x1
   140004bbc:	44 88 00             	mov    BYTE PTR [rax],r8b
   140004bbf:	45 84 c0             	test   r8b,r8b
   140004bc2:	75 ec                	jne    140004bb0 <__nrv_alloc_D2A+0x50>
   140004bc4:	48 85 ff             	test   rdi,rdi
   140004bc7:	74 03                	je     140004bcc <__nrv_alloc_D2A+0x6c>
   140004bc9:	48 89 07             	mov    QWORD PTR [rdi],rax
   140004bcc:	4c 89 c8             	mov    rax,r9
   140004bcf:	48 83 c4 20          	add    rsp,0x20
   140004bd3:	5b                   	pop    rbx
   140004bd4:	5e                   	pop    rsi
   140004bd5:	5f                   	pop    rdi
   140004bd6:	c3                   	ret    
   140004bd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004bde:	00 00 
   140004be0:	31 db                	xor    ebx,ebx
   140004be2:	eb a9                	jmp    140004b8d <__nrv_alloc_D2A+0x2d>
   140004be4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140004beb:	00 00 00 00 
   140004bef:	90                   	nop

0000000140004bf0 <__freedtoa>:
   140004bf0:	ba 01 00 00 00       	mov    edx,0x1
   140004bf5:	48 89 c8             	mov    rax,rcx
   140004bf8:	8b 49 fc             	mov    ecx,DWORD PTR [rcx-0x4]
   140004bfb:	d3 e2                	shl    edx,cl
   140004bfd:	89 48 04             	mov    DWORD PTR [rax+0x4],ecx
   140004c00:	48 8d 48 fc          	lea    rcx,[rax-0x4]
   140004c04:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
   140004c07:	e9 d4 1b 00 00       	jmp    1400067e0 <__Bfree_D2A>
   140004c0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140004c10 <__quorem_D2A>:
   140004c10:	41 57                	push   r15
   140004c12:	41 56                	push   r14
   140004c14:	41 55                	push   r13
   140004c16:	41 54                	push   r12
   140004c18:	55                   	push   rbp
   140004c19:	57                   	push   rdi
   140004c1a:	56                   	push   rsi
   140004c1b:	53                   	push   rbx
   140004c1c:	48 83 ec 38          	sub    rsp,0x38
   140004c20:	31 c0                	xor    eax,eax
   140004c22:	8b 72 14             	mov    esi,DWORD PTR [rdx+0x14]
   140004c25:	49 89 cc             	mov    r12,rcx
   140004c28:	49 89 d6             	mov    r14,rdx
   140004c2b:	39 71 14             	cmp    DWORD PTR [rcx+0x14],esi
   140004c2e:	0f 8c e4 00 00 00    	jl     140004d18 <__quorem_D2A+0x108>
   140004c34:	83 ee 01             	sub    esi,0x1
   140004c37:	48 8d 5a 18          	lea    rbx,[rdx+0x18]
   140004c3b:	48 8d 69 18          	lea    rbp,[rcx+0x18]
   140004c3f:	31 d2                	xor    edx,edx
   140004c41:	4c 63 de             	movsxd r11,esi
   140004c44:	49 c1 e3 02          	shl    r11,0x2
   140004c48:	4a 8d 3c 1b          	lea    rdi,[rbx+r11*1]
   140004c4c:	49 01 eb             	add    r11,rbp
   140004c4f:	8b 07                	mov    eax,DWORD PTR [rdi]
   140004c51:	45 8b 03             	mov    r8d,DWORD PTR [r11]
   140004c54:	8d 48 01             	lea    ecx,[rax+0x1]
   140004c57:	44 89 c0             	mov    eax,r8d
   140004c5a:	f7 f1                	div    ecx
   140004c5c:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004c60:	41 89 c5             	mov    r13d,eax
   140004c63:	41 39 c8             	cmp    r8d,ecx
   140004c66:	72 56                	jb     140004cbe <__quorem_D2A+0xae>
   140004c68:	41 89 c7             	mov    r15d,eax
   140004c6b:	49 89 da             	mov    r10,rbx
   140004c6e:	49 89 e9             	mov    r9,rbp
   140004c71:	31 c9                	xor    ecx,ecx
   140004c73:	31 d2                	xor    edx,edx
   140004c75:	0f 1f 00             	nop    DWORD PTR [rax]
   140004c78:	41 8b 02             	mov    eax,DWORD PTR [r10]
   140004c7b:	45 8b 01             	mov    r8d,DWORD PTR [r9]
   140004c7e:	49 83 c2 04          	add    r10,0x4
   140004c82:	49 83 c1 04          	add    r9,0x4
   140004c86:	49 0f af c7          	imul   rax,r15
   140004c8a:	48 01 c8             	add    rax,rcx
   140004c8d:	48 89 c1             	mov    rcx,rax
   140004c90:	89 c0                	mov    eax,eax
   140004c92:	48 01 d0             	add    rax,rdx
   140004c95:	48 c1 e9 20          	shr    rcx,0x20
   140004c99:	49 29 c0             	sub    r8,rax
   140004c9c:	4c 89 c0             	mov    rax,r8
   140004c9f:	45 89 41 fc          	mov    DWORD PTR [r9-0x4],r8d
   140004ca3:	48 c1 e8 20          	shr    rax,0x20
   140004ca7:	83 e0 01             	and    eax,0x1
   140004caa:	48 89 c2             	mov    rdx,rax
   140004cad:	4c 39 d7             	cmp    rdi,r10
   140004cb0:	73 c6                	jae    140004c78 <__quorem_D2A+0x68>
   140004cb2:	45 8b 0b             	mov    r9d,DWORD PTR [r11]
   140004cb5:	45 85 c9             	test   r9d,r9d
   140004cb8:	0f 84 9d 00 00 00    	je     140004d5b <__quorem_D2A+0x14b>
   140004cbe:	4c 89 f2             	mov    rdx,r14
   140004cc1:	4c 89 e1             	mov    rcx,r12
   140004cc4:	e8 77 20 00 00       	call   140006d40 <__cmp_D2A>
   140004cc9:	85 c0                	test   eax,eax
   140004ccb:	78 47                	js     140004d14 <__quorem_D2A+0x104>
   140004ccd:	41 8d 45 01          	lea    eax,[r13+0x1]
   140004cd1:	49 89 e8             	mov    r8,rbp
   140004cd4:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004cd8:	31 c0                	xor    eax,eax
   140004cda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004ce0:	8b 0b                	mov    ecx,DWORD PTR [rbx]
   140004ce2:	41 8b 10             	mov    edx,DWORD PTR [r8]
   140004ce5:	48 83 c3 04          	add    rbx,0x4
   140004ce9:	49 83 c0 04          	add    r8,0x4
   140004ced:	48 01 c8             	add    rax,rcx
   140004cf0:	48 29 c2             	sub    rdx,rax
   140004cf3:	48 89 d0             	mov    rax,rdx
   140004cf6:	41 89 50 fc          	mov    DWORD PTR [r8-0x4],edx
   140004cfa:	48 c1 e8 20          	shr    rax,0x20
   140004cfe:	83 e0 01             	and    eax,0x1
   140004d01:	48 39 df             	cmp    rdi,rbx
   140004d04:	73 da                	jae    140004ce0 <__quorem_D2A+0xd0>
   140004d06:	48 63 c6             	movsxd rax,esi
   140004d09:	48 8d 44 85 00       	lea    rax,[rbp+rax*4+0x0]
   140004d0e:	8b 08                	mov    ecx,DWORD PTR [rax]
   140004d10:	85 c9                	test   ecx,ecx
   140004d12:	74 25                	je     140004d39 <__quorem_D2A+0x129>
   140004d14:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
   140004d18:	48 83 c4 38          	add    rsp,0x38
   140004d1c:	5b                   	pop    rbx
   140004d1d:	5e                   	pop    rsi
   140004d1e:	5f                   	pop    rdi
   140004d1f:	5d                   	pop    rbp
   140004d20:	41 5c                	pop    r12
   140004d22:	41 5d                	pop    r13
   140004d24:	41 5e                	pop    r14
   140004d26:	41 5f                	pop    r15
   140004d28:	c3                   	ret    
   140004d29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004d30:	8b 10                	mov    edx,DWORD PTR [rax]
   140004d32:	85 d2                	test   edx,edx
   140004d34:	75 0c                	jne    140004d42 <__quorem_D2A+0x132>
   140004d36:	83 ee 01             	sub    esi,0x1
   140004d39:	48 83 e8 04          	sub    rax,0x4
   140004d3d:	48 39 c5             	cmp    rbp,rax
   140004d40:	72 ee                	jb     140004d30 <__quorem_D2A+0x120>
   140004d42:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   140004d47:	eb cb                	jmp    140004d14 <__quorem_D2A+0x104>
   140004d49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004d50:	45 8b 03             	mov    r8d,DWORD PTR [r11]
   140004d53:	45 85 c0             	test   r8d,r8d
   140004d56:	75 0c                	jne    140004d64 <__quorem_D2A+0x154>
   140004d58:	83 ee 01             	sub    esi,0x1
   140004d5b:	49 83 eb 04          	sub    r11,0x4
   140004d5f:	4c 39 dd             	cmp    rbp,r11
   140004d62:	72 ec                	jb     140004d50 <__quorem_D2A+0x140>
   140004d64:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   140004d69:	4c 89 f2             	mov    rdx,r14
   140004d6c:	4c 89 e1             	mov    rcx,r12
   140004d6f:	e8 cc 1f 00 00       	call   140006d40 <__cmp_D2A>
   140004d74:	85 c0                	test   eax,eax
   140004d76:	0f 89 51 ff ff ff    	jns    140004ccd <__quorem_D2A+0xbd>
   140004d7c:	eb 96                	jmp    140004d14 <__quorem_D2A+0x104>
   140004d7e:	90                   	nop
   140004d7f:	90                   	nop

0000000140004d80 <__gdtoa>:
   140004d80:	41 57                	push   r15
   140004d82:	41 56                	push   r14
   140004d84:	41 55                	push   r13
   140004d86:	41 54                	push   r12
   140004d88:	55                   	push   rbp
   140004d89:	57                   	push   rdi
   140004d8a:	56                   	push   rsi
   140004d8b:	53                   	push   rbx
   140004d8c:	48 81 ec 98 00 00 00 	sub    rsp,0x98
   140004d93:	0f 11 b4 24 80 00 00 	movups XMMWORD PTR [rsp+0x80],xmm6
   140004d9a:	00 
   140004d9b:	45 8b 21             	mov    r12d,DWORD PTR [r9]
   140004d9e:	44 89 e0             	mov    eax,r12d
   140004da1:	83 e0 cf             	and    eax,0xffffffcf
   140004da4:	41 89 01             	mov    DWORD PTR [r9],eax
   140004da7:	44 89 e0             	mov    eax,r12d
   140004daa:	48 89 cd             	mov    rbp,rcx
   140004dad:	89 d6                	mov    esi,edx
   140004daf:	83 e0 07             	and    eax,0x7
   140004db2:	4c 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r8
   140004db9:	00 
   140004dba:	4c 89 cf             	mov    rdi,r9
   140004dbd:	83 f8 03             	cmp    eax,0x3
   140004dc0:	0f 84 ba 02 00 00    	je     140005080 <__gdtoa+0x300>
   140004dc6:	44 89 e3             	mov    ebx,r12d
   140004dc9:	83 e3 04             	and    ebx,0x4
   140004dcc:	89 5c 24 24          	mov    DWORD PTR [rsp+0x24],ebx
   140004dd0:	0f 85 1a 02 00 00    	jne    140004ff0 <__gdtoa+0x270>
   140004dd6:	85 c0                	test   eax,eax
   140004dd8:	0f 84 72 02 00 00    	je     140005050 <__gdtoa+0x2d0>
   140004dde:	8d 50 ff             	lea    edx,[rax-0x1]
   140004de1:	31 c0                	xor    eax,eax
   140004de3:	83 fa 01             	cmp    edx,0x1
   140004de6:	0f 87 32 02 00 00    	ja     14000501e <__gdtoa+0x29e>
   140004dec:	44 8b 29             	mov    r13d,DWORD PTR [rcx]
   140004def:	b8 20 00 00 00       	mov    eax,0x20
   140004df4:	31 c9                	xor    ecx,ecx
   140004df6:	41 83 fd 20          	cmp    r13d,0x20
   140004dfa:	0f 8e b0 02 00 00    	jle    1400050b0 <__gdtoa+0x330>
   140004e00:	01 c0                	add    eax,eax
   140004e02:	83 c1 01             	add    ecx,0x1
   140004e05:	41 39 c5             	cmp    r13d,eax
   140004e08:	7f f6                	jg     140004e00 <__gdtoa+0x80>
   140004e0a:	e8 d1 18 00 00       	call   1400066e0 <__Balloc_D2A>
   140004e0f:	45 8d 55 ff          	lea    r10d,[r13-0x1]
   140004e13:	4c 8b 84 24 f0 00 00 	mov    r8,QWORD PTR [rsp+0xf0]
   140004e1a:	00 
   140004e1b:	41 c1 fa 05          	sar    r10d,0x5
   140004e1f:	49 89 c7             	mov    r15,rax
   140004e22:	48 8d 50 18          	lea    rdx,[rax+0x18]
   140004e26:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
   140004e2d:	00 
   140004e2e:	4d 63 d2             	movsxd r10,r10d
   140004e31:	49 c1 e2 02          	shl    r10,0x2
   140004e35:	4d 01 d0             	add    r8,r10
   140004e38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140004e3f:	00 
   140004e40:	8b 08                	mov    ecx,DWORD PTR [rax]
   140004e42:	48 83 c0 04          	add    rax,0x4
   140004e46:	48 83 c2 04          	add    rdx,0x4
   140004e4a:	89 4a fc             	mov    DWORD PTR [rdx-0x4],ecx
   140004e4d:	49 39 c0             	cmp    r8,rax
   140004e50:	73 ee                	jae    140004e40 <__gdtoa+0xc0>
   140004e52:	48 8b 9c 24 f0 00 00 	mov    rbx,QWORD PTR [rsp+0xf0]
   140004e59:	00 
   140004e5a:	49 83 c0 01          	add    r8,0x1
   140004e5e:	49 8d 42 04          	lea    rax,[r10+0x4]
   140004e62:	48 8d 53 01          	lea    rdx,[rbx+0x1]
   140004e66:	49 39 d0             	cmp    r8,rdx
   140004e69:	ba 04 00 00 00       	mov    edx,0x4
   140004e6e:	48 0f 42 c2          	cmovb  rax,rdx
   140004e72:	48 c1 f8 02          	sar    rax,0x2
   140004e76:	89 c3                	mov    ebx,eax
   140004e78:	49 8d 04 87          	lea    rax,[r15+rax*4]
   140004e7c:	eb 0e                	jmp    140004e8c <__gdtoa+0x10c>
   140004e7e:	66 90                	xchg   ax,ax
   140004e80:	48 83 e8 04          	sub    rax,0x4
   140004e84:	85 db                	test   ebx,ebx
   140004e86:	0f 84 34 02 00 00    	je     1400050c0 <__gdtoa+0x340>
   140004e8c:	44 8b 58 14          	mov    r11d,DWORD PTR [rax+0x14]
   140004e90:	89 da                	mov    edx,ebx
   140004e92:	83 eb 01             	sub    ebx,0x1
   140004e95:	45 85 db             	test   r11d,r11d
   140004e98:	74 e6                	je     140004e80 <__gdtoa+0x100>
   140004e9a:	48 63 db             	movsxd rbx,ebx
   140004e9d:	41 89 57 14          	mov    DWORD PTR [r15+0x14],edx
   140004ea1:	41 0f bd 44 9f 18    	bsr    eax,DWORD PTR [r15+rbx*4+0x18]
   140004ea7:	89 d3                	mov    ebx,edx
   140004ea9:	c1 e3 05             	shl    ebx,0x5
   140004eac:	83 f0 1f             	xor    eax,0x1f
   140004eaf:	29 c3                	sub    ebx,eax
   140004eb1:	4c 89 f9             	mov    rcx,r15
   140004eb4:	e8 a7 16 00 00       	call   140006560 <__trailz_D2A>
   140004eb9:	89 74 24 38          	mov    DWORD PTR [rsp+0x38],esi
   140004ebd:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   140004ec1:	85 c0                	test   eax,eax
   140004ec3:	0f 85 07 02 00 00    	jne    1400050d0 <__gdtoa+0x350>
   140004ec9:	45 8b 57 14          	mov    r10d,DWORD PTR [r15+0x14]
   140004ecd:	45 85 d2             	test   r10d,r10d
   140004ed0:	0f 84 72 01 00 00    	je     140005048 <__gdtoa+0x2c8>
   140004ed6:	48 8d 54 24 7c       	lea    rdx,[rsp+0x7c]
   140004edb:	4c 89 f9             	mov    rcx,r15
   140004ede:	e8 7d 20 00 00       	call   140006f60 <__b2d_D2A>
   140004ee3:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   140004ee7:	66 0f ef c9          	pxor   xmm1,xmm1
   140004eeb:	66 49 0f 7e c0       	movq   r8,xmm0
   140004ef0:	66 48 0f 7e c0       	movq   rax,xmm0
   140004ef5:	49 c1 e8 20          	shr    r8,0x20
   140004ef9:	01 d9                	add    ecx,ebx
   140004efb:	89 c0                	mov    eax,eax
   140004efd:	41 81 e0 ff ff 0f 00 	and    r8d,0xfffff
   140004f04:	8d 51 ff             	lea    edx,[rcx-0x1]
   140004f07:	41 81 c8 00 00 f0 3f 	or     r8d,0x3ff00000
   140004f0e:	f2 0f 2a ca          	cvtsi2sd xmm1,edx
   140004f12:	41 89 d1             	mov    r9d,edx
   140004f15:	f2 0f 59 0d 9b 45 00 	mulsd  xmm1,QWORD PTR [rip+0x459b]        # 1400094b8 <.rdata+0x28>
   140004f1c:	00 
   140004f1d:	4d 89 c2             	mov    r10,r8
   140004f20:	41 c1 f9 1f          	sar    r9d,0x1f
   140004f24:	49 c1 e2 20          	shl    r10,0x20
   140004f28:	45 89 cb             	mov    r11d,r9d
   140004f2b:	4c 09 d0             	or     rax,r10
   140004f2e:	41 31 d3             	xor    r11d,edx
   140004f31:	66 48 0f 6e c0       	movq   xmm0,rax
   140004f36:	f2 0f 5c 05 62 45 00 	subsd  xmm0,QWORD PTR [rip+0x4562]        # 1400094a0 <.rdata+0x10>
   140004f3d:	00 
   140004f3e:	45 29 cb             	sub    r11d,r9d
   140004f41:	f2 0f 59 05 5f 45 00 	mulsd  xmm0,QWORD PTR [rip+0x455f]        # 1400094a8 <.rdata+0x18>
   140004f48:	00 
   140004f49:	41 81 eb 35 04 00 00 	sub    r11d,0x435
   140004f50:	f2 0f 58 05 58 45 00 	addsd  xmm0,QWORD PTR [rip+0x4558]        # 1400094b0 <.rdata+0x20>
   140004f57:	00 
   140004f58:	f2 0f 58 c1          	addsd  xmm0,xmm1
   140004f5c:	45 85 db             	test   r11d,r11d
   140004f5f:	7e 15                	jle    140004f76 <__gdtoa+0x1f6>
   140004f61:	66 0f ef c9          	pxor   xmm1,xmm1
   140004f65:	f2 41 0f 2a cb       	cvtsi2sd xmm1,r11d
   140004f6a:	f2 0f 59 0d 4e 45 00 	mulsd  xmm1,QWORD PTR [rip+0x454e]        # 1400094c0 <.rdata+0x30>
   140004f71:	00 
   140004f72:	f2 0f 58 c1          	addsd  xmm0,xmm1
   140004f76:	66 0f ef f6          	pxor   xmm6,xmm6
   140004f7a:	f2 44 0f 2c f0       	cvttsd2si r14d,xmm0
   140004f7f:	66 0f 2f f0          	comisd xmm6,xmm0
   140004f83:	0f 87 8f 07 00 00    	ja     140005718 <__gdtoa+0x998>
   140004f89:	41 89 d3             	mov    r11d,edx
   140004f8c:	89 c0                	mov    eax,eax
   140004f8e:	41 c1 e3 14          	shl    r11d,0x14
   140004f92:	45 01 d8             	add    r8d,r11d
   140004f95:	49 c1 e0 20          	shl    r8,0x20
   140004f99:	4c 09 c0             	or     rax,r8
   140004f9c:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
   140004fa1:	49 89 c2             	mov    r10,rax
   140004fa4:	89 d8                	mov    eax,ebx
   140004fa6:	29 d0                	sub    eax,edx
   140004fa8:	44 8d 58 ff          	lea    r11d,[rax-0x1]
   140004fac:	41 83 fe 16          	cmp    r14d,0x16
   140004fb0:	0f 87 3a 01 00 00    	ja     1400050f0 <__gdtoa+0x370>
   140004fb6:	4c 8b 05 a3 47 00 00 	mov    r8,QWORD PTR [rip+0x47a3]        # 140009760 <.refptr.__tens_D2A>
   140004fbd:	49 63 d6             	movsxd rdx,r14d
   140004fc0:	66 49 0f 6e ea       	movq   xmm5,r10
   140004fc5:	f2 41 0f 10 04 d0    	movsd  xmm0,QWORD PTR [r8+rdx*8]
   140004fcb:	66 0f 2f c5          	comisd xmm0,xmm5
   140004fcf:	0f 86 cb 03 00 00    	jbe    1400053a0 <__gdtoa+0x620>
   140004fd5:	c7 44 24 68 00 00 00 	mov    DWORD PTR [rsp+0x68],0x0
   140004fdc:	00 
   140004fdd:	41 83 ee 01          	sub    r14d,0x1
   140004fe1:	e9 12 01 00 00       	jmp    1400050f8 <__gdtoa+0x378>
   140004fe6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140004fed:	00 00 00 
   140004ff0:	83 f8 04             	cmp    eax,0x4
   140004ff3:	75 4b                	jne    140005040 <__gdtoa+0x2c0>
   140004ff5:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
   140004ffc:	00 
   140004ffd:	48 8b 94 24 18 01 00 	mov    rdx,QWORD PTR [rsp+0x118]
   140005004:	00 
   140005005:	41 b8 03 00 00 00    	mov    r8d,0x3
   14000500b:	48 8d 0d 87 44 00 00 	lea    rcx,[rip+0x4487]        # 140009499 <.rdata+0x9>
   140005012:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   140005018:	e8 43 fb ff ff       	call   140004b60 <__nrv_alloc_D2A>
   14000501d:	90                   	nop
   14000501e:	0f 10 b4 24 80 00 00 	movups xmm6,XMMWORD PTR [rsp+0x80]
   140005025:	00 
   140005026:	48 81 c4 98 00 00 00 	add    rsp,0x98
   14000502d:	5b                   	pop    rbx
   14000502e:	5e                   	pop    rsi
   14000502f:	5f                   	pop    rdi
   140005030:	5d                   	pop    rbp
   140005031:	41 5c                	pop    r12
   140005033:	41 5d                	pop    r13
   140005035:	41 5e                	pop    r14
   140005037:	41 5f                	pop    r15
   140005039:	c3                   	ret    
   14000503a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005040:	31 c0                	xor    eax,eax
   140005042:	eb da                	jmp    14000501e <__gdtoa+0x29e>
   140005044:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005048:	4c 89 f9             	mov    rcx,r15
   14000504b:	e8 90 17 00 00       	call   1400067e0 <__Bfree_D2A>
   140005050:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
   140005057:	00 
   140005058:	48 8b 94 24 18 01 00 	mov    rdx,QWORD PTR [rsp+0x118]
   14000505f:	00 
   140005060:	41 b8 01 00 00 00    	mov    r8d,0x1
   140005066:	48 8d 0d 30 44 00 00 	lea    rcx,[rip+0x4430]        # 14000949d <.rdata+0xd>
   14000506d:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140005073:	e8 e8 fa ff ff       	call   140004b60 <__nrv_alloc_D2A>
   140005078:	eb a4                	jmp    14000501e <__gdtoa+0x29e>
   14000507a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005080:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
   140005087:	00 
   140005088:	48 8b 94 24 18 01 00 	mov    rdx,QWORD PTR [rsp+0x118]
   14000508f:	00 
   140005090:	41 b8 08 00 00 00    	mov    r8d,0x8
   140005096:	48 8d 0d f3 43 00 00 	lea    rcx,[rip+0x43f3]        # 140009490 <.rdata>
   14000509d:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   1400050a3:	e8 b8 fa ff ff       	call   140004b60 <__nrv_alloc_D2A>
   1400050a8:	e9 71 ff ff ff       	jmp    14000501e <__gdtoa+0x29e>
   1400050ad:	0f 1f 00             	nop    DWORD PTR [rax]
   1400050b0:	89 d9                	mov    ecx,ebx
   1400050b2:	e9 53 fd ff ff       	jmp    140004e0a <__gdtoa+0x8a>
   1400050b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400050be:	00 00 
   1400050c0:	41 c7 47 14 00 00 00 	mov    DWORD PTR [r15+0x14],0x0
   1400050c7:	00 
   1400050c8:	e9 e4 fd ff ff       	jmp    140004eb1 <__gdtoa+0x131>
   1400050cd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400050d0:	89 c2                	mov    edx,eax
   1400050d2:	4c 89 f9             	mov    rcx,r15
   1400050d5:	e8 86 13 00 00       	call   140006460 <__rshift_D2A>
   1400050da:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   1400050de:	8d 14 30             	lea    edx,[rax+rsi*1]
   1400050e1:	29 c3                	sub    ebx,eax
   1400050e3:	89 54 24 38          	mov    DWORD PTR [rsp+0x38],edx
   1400050e7:	e9 dd fd ff ff       	jmp    140004ec9 <__gdtoa+0x149>
   1400050ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400050f0:	c7 44 24 68 01 00 00 	mov    DWORD PTR [rsp+0x68],0x1
   1400050f7:	00 
   1400050f8:	c7 44 24 44 00 00 00 	mov    DWORD PTR [rsp+0x44],0x0
   1400050ff:	00 
   140005100:	45 85 db             	test   r11d,r11d
   140005103:	0f 88 f7 05 00 00    	js     140005700 <__gdtoa+0x980>
   140005109:	45 85 f6             	test   r14d,r14d
   14000510c:	0f 89 a7 02 00 00    	jns    1400053b9 <__gdtoa+0x639>
   140005112:	44 89 f0             	mov    eax,r14d
   140005115:	44 29 74 24 44       	sub    DWORD PTR [rsp+0x44],r14d
   14000511a:	f7 d8                	neg    eax
   14000511c:	44 89 74 24 50       	mov    DWORD PTR [rsp+0x50],r14d
   140005121:	45 31 f6             	xor    r14d,r14d
   140005124:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
   140005128:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x9
   14000512f:	09 
   140005130:	0f 87 9a 02 00 00    	ja     1400053d0 <__gdtoa+0x650>
   140005136:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x5
   14000513d:	05 
   14000513e:	0f 8f fc 05 00 00    	jg     140005740 <__gdtoa+0x9c0>
   140005144:	81 c1 fd 03 00 00    	add    ecx,0x3fd
   14000514a:	31 c0                	xor    eax,eax
   14000514c:	81 f9 f7 07 00 00    	cmp    ecx,0x7f7
   140005152:	0f 96 c0             	setbe  al
   140005155:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
   140005159:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x4
   140005160:	04 
   140005161:	0f 84 81 0b 00 00    	je     140005ce8 <__gdtoa+0xf68>
   140005167:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x5
   14000516e:	05 
   14000516f:	0f 84 eb 09 00 00    	je     140005b60 <__gdtoa+0xde0>
   140005175:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x2
   14000517c:	02 
   14000517d:	0f 85 e5 06 00 00    	jne    140005868 <__gdtoa+0xae8>
   140005183:	c7 44 24 48 00 00 00 	mov    DWORD PTR [rsp+0x48],0x0
   14000518a:	00 
   14000518b:	44 8b 8c 24 08 01 00 	mov    r9d,DWORD PTR [rsp+0x108]
   140005192:	00 
   140005193:	b9 01 00 00 00       	mov    ecx,0x1
   140005198:	45 85 c9             	test   r9d,r9d
   14000519b:	0f 4f 8c 24 08 01 00 	cmovg  ecx,DWORD PTR [rsp+0x108]
   1400051a2:	00 
   1400051a3:	89 4c 24 7c          	mov    DWORD PTR [rsp+0x7c],ecx
   1400051a7:	89 4c 24 6c          	mov    DWORD PTR [rsp+0x6c],ecx
   1400051ab:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
   1400051af:	89 8c 24 08 01 00 00 	mov    DWORD PTR [rsp+0x108],ecx
   1400051b6:	44 89 5c 24 58       	mov    DWORD PTR [rsp+0x58],r11d
   1400051bb:	e8 60 f9 ff ff       	call   140004b20 <__rv_alloc_D2A>
   1400051c0:	83 7c 24 28 0e       	cmp    DWORD PTR [rsp+0x28],0xe
   1400051c5:	44 0f b6 4c 24 40    	movzx  r9d,BYTE PTR [rsp+0x40]
   1400051cb:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
   1400051d0:	0f 96 c0             	setbe  al
   1400051d3:	44 8b 5c 24 58       	mov    r11d,DWORD PTR [rsp+0x58]
   1400051d8:	41 21 c1             	and    r9d,eax
   1400051db:	8b 45 0c             	mov    eax,DWORD PTR [rbp+0xc]
   1400051de:	83 e8 01             	sub    eax,0x1
   1400051e1:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
   1400051e5:	74 29                	je     140005210 <__gdtoa+0x490>
   1400051e7:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
   1400051eb:	b8 02 00 00 00       	mov    eax,0x2
   1400051f0:	85 c9                	test   ecx,ecx
   1400051f2:	0f 49 c1             	cmovns eax,ecx
   1400051f5:	41 83 e4 08          	and    r12d,0x8
   1400051f9:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
   1400051fd:	89 c1                	mov    ecx,eax
   1400051ff:	0f 84 e3 05 00 00    	je     1400057e8 <__gdtoa+0xa68>
   140005205:	b8 03 00 00 00       	mov    eax,0x3
   14000520a:	29 c8                	sub    eax,ecx
   14000520c:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
   140005210:	45 84 c9             	test   r9b,r9b
   140005213:	0f 84 cf 05 00 00    	je     1400057e8 <__gdtoa+0xa68>
   140005219:	8b 44 24 40          	mov    eax,DWORD PTR [rsp+0x40]
   14000521d:	0b 44 24 50          	or     eax,DWORD PTR [rsp+0x50]
   140005221:	0f 85 c1 05 00 00    	jne    1400057e8 <__gdtoa+0xa68>
   140005227:	44 8b 44 24 68       	mov    r8d,DWORD PTR [rsp+0x68]
   14000522c:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   140005233:	00 
   140005234:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
   14000523a:	45 85 c0             	test   r8d,r8d
   14000523d:	74 12                	je     140005251 <__gdtoa+0x4d1>
   14000523f:	f2 0f 10 25 89 42 00 	movsd  xmm4,QWORD PTR [rip+0x4289]        # 1400094d0 <.rdata+0x40>
   140005246:	00 
   140005247:	66 0f 2f e0          	comisd xmm4,xmm0
   14000524b:	0f 87 54 0e 00 00    	ja     1400060a5 <__gdtoa+0x1325>
   140005251:	66 0f 10 c8          	movupd xmm1,xmm0
   140005255:	f2 0f 58 c8          	addsd  xmm1,xmm0
   140005259:	f2 0f 58 0d 87 42 00 	addsd  xmm1,QWORD PTR [rip+0x4287]        # 1400094e8 <.rdata+0x58>
   140005260:	00 
   140005261:	66 48 0f 7e ca       	movq   rdx,xmm1
   140005266:	66 48 0f 7e c8       	movq   rax,xmm1
   14000526b:	48 c1 ea 20          	shr    rdx,0x20
   14000526f:	89 c0                	mov    eax,eax
   140005271:	81 ea 00 00 40 03    	sub    edx,0x3400000
   140005277:	48 c1 e2 20          	shl    rdx,0x20
   14000527b:	48 09 d0             	or     rax,rdx
   14000527e:	8b 54 24 28          	mov    edx,DWORD PTR [rsp+0x28]
   140005282:	85 d2                	test   edx,edx
   140005284:	0f 84 26 05 00 00    	je     1400057b0 <__gdtoa+0xa30>
   14000528a:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
   14000528f:	45 31 e4             	xor    r12d,r12d
   140005292:	48 8b 15 c7 44 00 00 	mov    rdx,QWORD PTR [rip+0x44c7]        # 140009760 <.refptr.__tens_D2A>
   140005299:	66 48 0f 6e d0       	movq   xmm2,rax
   14000529e:	41 8d 42 ff          	lea    eax,[r10-0x1]
   1400052a2:	48 98                	cdqe   
   1400052a4:	f2 0f 10 24 c2       	movsd  xmm4,QWORD PTR [rdx+rax*8]
   1400052a9:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
   1400052ad:	85 c0                	test   eax,eax
   1400052af:	0f 84 ff 0c 00 00    	je     140005fb4 <__gdtoa+0x1234>
   1400052b5:	f2 0f 10 0d 53 42 00 	movsd  xmm1,QWORD PTR [rip+0x4253]        # 140009510 <.rdata+0x80>
   1400052bc:	00 
   1400052bd:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   1400052c1:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
   1400052c6:	f2 0f 5e cc          	divsd  xmm1,xmm4
   1400052ca:	48 8d 51 01          	lea    rdx,[rcx+0x1]
   1400052ce:	f2 0f 5c ca          	subsd  xmm1,xmm2
   1400052d2:	66 0f ef d2          	pxor   xmm2,xmm2
   1400052d6:	f2 0f 2a d0          	cvtsi2sd xmm2,eax
   1400052da:	83 c0 30             	add    eax,0x30
   1400052dd:	88 01                	mov    BYTE PTR [rcx],al
   1400052df:	f2 0f 5c c2          	subsd  xmm0,xmm2
   1400052e3:	66 0f 2f c8          	comisd xmm1,xmm0
   1400052e7:	0f 87 c9 0f 00 00    	ja     1400062b6 <__gdtoa+0x1536>
   1400052ed:	f2 0f 10 25 db 41 00 	movsd  xmm4,QWORD PTR [rip+0x41db]        # 1400094d0 <.rdata+0x40>
   1400052f4:	00 
   1400052f5:	f2 0f 10 1d db 41 00 	movsd  xmm3,QWORD PTR [rip+0x41db]        # 1400094d8 <.rdata+0x48>
   1400052fc:	00 
   1400052fd:	eb 41                	jmp    140005340 <__gdtoa+0x5c0>
   1400052ff:	90                   	nop
   140005300:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   140005304:	83 c0 01             	add    eax,0x1
   140005307:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   14000530b:	44 39 d0             	cmp    eax,r10d
   14000530e:	0f 8d c5 04 00 00    	jge    1400057d9 <__gdtoa+0xa59>
   140005314:	f2 0f 59 c3          	mulsd  xmm0,xmm3
   140005318:	66 0f ef d2          	pxor   xmm2,xmm2
   14000531c:	48 83 c2 01          	add    rdx,0x1
   140005320:	f2 0f 59 cb          	mulsd  xmm1,xmm3
   140005324:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   140005328:	f2 0f 2a d0          	cvtsi2sd xmm2,eax
   14000532c:	83 c0 30             	add    eax,0x30
   14000532f:	88 42 ff             	mov    BYTE PTR [rdx-0x1],al
   140005332:	f2 0f 5c c2          	subsd  xmm0,xmm2
   140005336:	66 0f 2f c8          	comisd xmm1,xmm0
   14000533a:	0f 87 76 0f 00 00    	ja     1400062b6 <__gdtoa+0x1536>
   140005340:	66 0f 10 d4          	movupd xmm2,xmm4
   140005344:	f2 0f 5c d0          	subsd  xmm2,xmm0
   140005348:	66 0f 2f ca          	comisd xmm1,xmm2
   14000534c:	76 b2                	jbe    140005300 <__gdtoa+0x580>
   14000534e:	41 8d 44 24 01       	lea    eax,[r12+0x1]
   140005353:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   140005357:	49 89 d0             	mov    r8,rdx
   14000535a:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   14000535e:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005363:	eb 13                	jmp    140005378 <__gdtoa+0x5f8>
   140005365:	0f 1f 00             	nop    DWORD PTR [rax]
   140005368:	48 39 c2             	cmp    rdx,rax
   14000536b:	0f 84 95 0e 00 00    	je     140006206 <__gdtoa+0x1486>
   140005371:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   140005375:	49 89 d0             	mov    r8,rdx
   140005378:	49 8d 50 ff          	lea    rdx,[r8-0x1]
   14000537c:	80 f9 39             	cmp    cl,0x39
   14000537f:	74 e7                	je     140005368 <__gdtoa+0x5e8>
   140005381:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
   140005386:	83 c1 01             	add    ecx,0x1
   140005389:	88 0a                	mov    BYTE PTR [rdx],cl
   14000538b:	c7 44 24 24 20 00 00 	mov    DWORD PTR [rsp+0x24],0x20
   140005392:	00 
   140005393:	e9 15 03 00 00       	jmp    1400056ad <__gdtoa+0x92d>
   140005398:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000539f:	00 
   1400053a0:	c7 44 24 68 00 00 00 	mov    DWORD PTR [rsp+0x68],0x0
   1400053a7:	00 
   1400053a8:	c7 44 24 44 00 00 00 	mov    DWORD PTR [rsp+0x44],0x0
   1400053af:	00 
   1400053b0:	45 85 db             	test   r11d,r11d
   1400053b3:	0f 88 47 03 00 00    	js     140005700 <__gdtoa+0x980>
   1400053b9:	44 89 74 24 50       	mov    DWORD PTR [rsp+0x50],r14d
   1400053be:	45 01 f3             	add    r11d,r14d
   1400053c1:	c7 44 24 54 00 00 00 	mov    DWORD PTR [rsp+0x54],0x0
   1400053c8:	00 
   1400053c9:	e9 5a fd ff ff       	jmp    140005128 <__gdtoa+0x3a8>
   1400053ce:	66 90                	xchg   ax,ax
   1400053d0:	c7 84 24 00 01 00 00 	mov    DWORD PTR [rsp+0x100],0x0
   1400053d7:	00 00 00 00 
   1400053db:	66 0f ef c0          	pxor   xmm0,xmm0
   1400053df:	44 89 5c 24 28       	mov    DWORD PTR [rsp+0x28],r11d
   1400053e4:	f2 41 0f 2a c5       	cvtsi2sd xmm0,r13d
   1400053e9:	f2 0f 59 05 d7 40 00 	mulsd  xmm0,QWORD PTR [rip+0x40d7]        # 1400094c8 <.rdata+0x38>
   1400053f0:	00 
   1400053f1:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
   1400053f5:	83 c1 03             	add    ecx,0x3
   1400053f8:	89 4c 24 7c          	mov    DWORD PTR [rsp+0x7c],ecx
   1400053fc:	e8 1f f7 ff ff       	call   140004b20 <__rv_alloc_D2A>
   140005401:	44 8b 5c 24 28       	mov    r11d,DWORD PTR [rsp+0x28]
   140005406:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
   14000540b:	8b 45 0c             	mov    eax,DWORD PTR [rbp+0xc]
   14000540e:	83 e8 01             	sub    eax,0x1
   140005411:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
   140005415:	0f 85 3d 03 00 00    	jne    140005758 <__gdtoa+0x9d8>
   14000541b:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   14000541f:	85 c9                	test   ecx,ecx
   140005421:	0f 88 a6 0d 00 00    	js     1400061cd <__gdtoa+0x144d>
   140005427:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   14000542b:	3b 45 14             	cmp    eax,DWORD PTR [rbp+0x14]
   14000542e:	0f 8e d6 08 00 00    	jle    140005d0a <__gdtoa+0xf8a>
   140005434:	c7 84 24 08 01 00 00 	mov    DWORD PTR [rsp+0x108],0x0
   14000543b:	00 00 00 00 
   14000543f:	c7 44 24 6c ff ff ff 	mov    DWORD PTR [rsp+0x6c],0xffffffff
   140005446:	ff 
   140005447:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
   14000544e:	ff 
   14000544f:	90                   	nop
   140005450:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   140005454:	41 29 dd             	sub    r13d,ebx
   140005457:	8b 55 04             	mov    edx,DWORD PTR [rbp+0x4]
   14000545a:	41 8d 45 01          	lea    eax,[r13+0x1]
   14000545e:	44 29 e9             	sub    ecx,r13d
   140005461:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   140005465:	39 d1                	cmp    ecx,edx
   140005467:	0f 8d 03 07 00 00    	jge    140005b70 <__gdtoa+0xdf0>
   14000546d:	8b 8c 24 00 01 00 00 	mov    ecx,DWORD PTR [rsp+0x100]
   140005474:	83 e9 03             	sub    ecx,0x3
   140005477:	83 e1 fd             	and    ecx,0xfffffffd
   14000547a:	0f 84 f0 06 00 00    	je     140005b70 <__gdtoa+0xdf0>
   140005480:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
   140005484:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
   140005489:	29 d0                	sub    eax,edx
   14000548b:	83 c0 01             	add    eax,0x1
   14000548e:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x1
   140005495:	01 
   140005496:	0f 9f c1             	setg   cl
   140005499:	45 85 d2             	test   r10d,r10d
   14000549c:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   1400054a0:	0f 9f c2             	setg   dl
   1400054a3:	84 d1                	test   cl,dl
   1400054a5:	74 09                	je     1400054b0 <__gdtoa+0x730>
   1400054a7:	44 39 d0             	cmp    eax,r10d
   1400054aa:	0f 8f ce 06 00 00    	jg     140005b7e <__gdtoa+0xdfe>
   1400054b0:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
   1400054b4:	41 01 c3             	add    r11d,eax
   1400054b7:	44 8b 6c 24 54       	mov    r13d,DWORD PTR [rsp+0x54]
   1400054bc:	01 d0                	add    eax,edx
   1400054be:	89 54 24 38          	mov    DWORD PTR [rsp+0x38],edx
   1400054c2:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   1400054c6:	b9 01 00 00 00       	mov    ecx,0x1
   1400054cb:	44 89 5c 24 58       	mov    DWORD PTR [rsp+0x58],r11d
   1400054d0:	e8 2b 14 00 00       	call   140006900 <__i2b_D2A>
   1400054d5:	c7 44 24 48 01 00 00 	mov    DWORD PTR [rsp+0x48],0x1
   1400054dc:	00 
   1400054dd:	44 8b 5c 24 58       	mov    r11d,DWORD PTR [rsp+0x58]
   1400054e2:	49 89 c4             	mov    r12,rax
   1400054e5:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   1400054e9:	85 c9                	test   ecx,ecx
   1400054eb:	7e 1f                	jle    14000550c <__gdtoa+0x78c>
   1400054ed:	45 85 db             	test   r11d,r11d
   1400054f0:	7e 1a                	jle    14000550c <__gdtoa+0x78c>
   1400054f2:	44 39 d9             	cmp    ecx,r11d
   1400054f5:	89 c8                	mov    eax,ecx
   1400054f7:	41 0f 4f c3          	cmovg  eax,r11d
   1400054fb:	29 44 24 44          	sub    DWORD PTR [rsp+0x44],eax
   1400054ff:	29 c1                	sub    ecx,eax
   140005501:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   140005505:	41 29 c3             	sub    r11d,eax
   140005508:	89 4c 24 38          	mov    DWORD PTR [rsp+0x38],ecx
   14000550c:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
   140005510:	85 d2                	test   edx,edx
   140005512:	74 53                	je     140005567 <__gdtoa+0x7e7>
   140005514:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
   140005518:	85 c0                	test   eax,eax
   14000551a:	0f 84 c0 08 00 00    	je     140005de0 <__gdtoa+0x1060>
   140005520:	45 85 ed             	test   r13d,r13d
   140005523:	7e 35                	jle    14000555a <__gdtoa+0x7da>
   140005525:	4c 89 e1             	mov    rcx,r12
   140005528:	44 89 ea             	mov    edx,r13d
   14000552b:	44 89 5c 24 60       	mov    DWORD PTR [rsp+0x60],r11d
   140005530:	e8 4b 15 00 00       	call   140006a80 <__pow5mult_D2A>
   140005535:	4c 89 fa             	mov    rdx,r15
   140005538:	48 89 c1             	mov    rcx,rax
   14000553b:	49 89 c4             	mov    r12,rax
   14000553e:	e8 ed 13 00 00       	call   140006930 <__mult_D2A>
   140005543:	4c 89 f9             	mov    rcx,r15
   140005546:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
   14000554b:	e8 90 12 00 00       	call   1400067e0 <__Bfree_D2A>
   140005550:	4c 8b 7c 24 58       	mov    r15,QWORD PTR [rsp+0x58]
   140005555:	44 8b 5c 24 60       	mov    r11d,DWORD PTR [rsp+0x60]
   14000555a:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
   14000555e:	44 29 ea             	sub    edx,r13d
   140005561:	0f 85 a9 08 00 00    	jne    140005e10 <__gdtoa+0x1090>
   140005567:	b9 01 00 00 00       	mov    ecx,0x1
   14000556c:	44 89 5c 24 54       	mov    DWORD PTR [rsp+0x54],r11d
   140005571:	e8 8a 13 00 00       	call   140006900 <__i2b_D2A>
   140005576:	83 fb 01             	cmp    ebx,0x1
   140005579:	44 8b 5c 24 54       	mov    r11d,DWORD PTR [rsp+0x54]
   14000557e:	0f 94 c3             	sete   bl
   140005581:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x1
   140005588:	01 
   140005589:	49 89 c5             	mov    r13,rax
   14000558c:	0f 9e c0             	setle  al
   14000558f:	21 c3                	and    ebx,eax
   140005591:	45 85 f6             	test   r14d,r14d
   140005594:	0f 8f 66 03 00 00    	jg     140005900 <__gdtoa+0xb80>
   14000559a:	c7 44 24 54 00 00 00 	mov    DWORD PTR [rsp+0x54],0x0
   1400055a1:	00 
   1400055a2:	84 db                	test   bl,bl
   1400055a4:	0f 85 96 0b 00 00    	jne    140006140 <__gdtoa+0x13c0>
   1400055aa:	be 1f 00 00 00       	mov    esi,0x1f
   1400055af:	45 85 f6             	test   r14d,r14d
   1400055b2:	0f 85 6b 03 00 00    	jne    140005923 <__gdtoa+0xba3>
   1400055b8:	44 29 de             	sub    esi,r11d
   1400055bb:	44 8b 44 24 44       	mov    r8d,DWORD PTR [rsp+0x44]
   1400055c0:	83 ee 04             	sub    esi,0x4
   1400055c3:	83 e6 1f             	and    esi,0x1f
   1400055c6:	41 01 f0             	add    r8d,esi
   1400055c9:	89 74 24 7c          	mov    DWORD PTR [rsp+0x7c],esi
   1400055cd:	89 f2                	mov    edx,esi
   1400055cf:	45 85 c0             	test   r8d,r8d
   1400055d2:	7e 1c                	jle    1400055f0 <__gdtoa+0x870>
   1400055d4:	44 89 c2             	mov    edx,r8d
   1400055d7:	4c 89 f9             	mov    rcx,r15
   1400055da:	44 89 5c 24 44       	mov    DWORD PTR [rsp+0x44],r11d
   1400055df:	e8 2c 16 00 00       	call   140006c10 <__lshift_D2A>
   1400055e4:	8b 54 24 7c          	mov    edx,DWORD PTR [rsp+0x7c]
   1400055e8:	44 8b 5c 24 44       	mov    r11d,DWORD PTR [rsp+0x44]
   1400055ed:	49 89 c7             	mov    r15,rax
   1400055f0:	44 01 da             	add    edx,r11d
   1400055f3:	85 d2                	test   edx,edx
   1400055f5:	7e 0b                	jle    140005602 <__gdtoa+0x882>
   1400055f7:	4c 89 e9             	mov    rcx,r13
   1400055fa:	e8 11 16 00 00       	call   140006c10 <__lshift_D2A>
   1400055ff:	49 89 c5             	mov    r13,rax
   140005602:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
   140005606:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x2
   14000560d:	02 
   14000560e:	40 0f 9f c5          	setg   bpl
   140005612:	85 c0                	test   eax,eax
   140005614:	0f 85 a6 05 00 00    	jne    140005bc0 <__gdtoa+0xe40>
   14000561a:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
   14000561e:	85 c0                	test   eax,eax
   140005620:	0f 8f 1a 03 00 00    	jg     140005940 <__gdtoa+0xbc0>
   140005626:	40 84 ed             	test   bpl,bpl
   140005629:	0f 84 11 03 00 00    	je     140005940 <__gdtoa+0xbc0>
   14000562f:	44 8b 74 24 28       	mov    r14d,DWORD PTR [rsp+0x28]
   140005634:	45 85 f6             	test   r14d,r14d
   140005637:	0f 85 a1 02 00 00    	jne    1400058de <__gdtoa+0xb5e>
   14000563d:	4c 89 e9             	mov    rcx,r13
   140005640:	45 31 c0             	xor    r8d,r8d
   140005643:	ba 05 00 00 00       	mov    edx,0x5
   140005648:	e8 03 12 00 00       	call   140006850 <__multadd_D2A>
   14000564d:	4c 89 f9             	mov    rcx,r15
   140005650:	48 89 c2             	mov    rdx,rax
   140005653:	49 89 c5             	mov    r13,rax
   140005656:	e8 e5 16 00 00       	call   140006d40 <__cmp_D2A>
   14000565b:	85 c0                	test   eax,eax
   14000565d:	0f 8e 7b 02 00 00    	jle    1400058de <__gdtoa+0xb5e>
   140005663:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005667:	83 c0 02             	add    eax,0x2
   14000566a:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   14000566e:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005673:	48 83 44 24 30 01    	add    QWORD PTR [rsp+0x30],0x1
   140005679:	c6 00 31             	mov    BYTE PTR [rax],0x31
   14000567c:	c7 44 24 24 20 00 00 	mov    DWORD PTR [rsp+0x24],0x20
   140005683:	00 
   140005684:	4c 89 e9             	mov    rcx,r13
   140005687:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   14000568c:	e8 4f 11 00 00       	call   1400067e0 <__Bfree_D2A>
   140005691:	4d 85 e4             	test   r12,r12
   140005694:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   140005699:	74 12                	je     1400056ad <__gdtoa+0x92d>
   14000569b:	4c 89 e1             	mov    rcx,r12
   14000569e:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   1400056a3:	e8 38 11 00 00       	call   1400067e0 <__Bfree_D2A>
   1400056a8:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   1400056ad:	4c 89 f9             	mov    rcx,r15
   1400056b0:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   1400056b5:	e8 26 11 00 00       	call   1400067e0 <__Bfree_D2A>
   1400056ba:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
   1400056bf:	8b 5c 24 44          	mov    ebx,DWORD PTR [rsp+0x44]
   1400056c3:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
   1400056ca:	00 
   1400056cb:	48 83 bc 24 18 01 00 	cmp    QWORD PTR [rsp+0x118],0x0
   1400056d2:	00 00 
   1400056d4:	c6 06 00             	mov    BYTE PTR [rsi],0x0
   1400056d7:	89 18                	mov    DWORD PTR [rax],ebx
   1400056d9:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   1400056de:	74 0b                	je     1400056eb <__gdtoa+0x96b>
   1400056e0:	48 8b 9c 24 18 01 00 	mov    rbx,QWORD PTR [rsp+0x118]
   1400056e7:	00 
   1400056e8:	48 89 33             	mov    QWORD PTR [rbx],rsi
   1400056eb:	8b 74 24 24          	mov    esi,DWORD PTR [rsp+0x24]
   1400056ef:	09 37                	or     DWORD PTR [rdi],esi
   1400056f1:	e9 28 f9 ff ff       	jmp    14000501e <__gdtoa+0x29e>
   1400056f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400056fd:	00 00 00 
   140005700:	ba 01 00 00 00       	mov    edx,0x1
   140005705:	45 31 db             	xor    r11d,r11d
   140005708:	29 c2                	sub    edx,eax
   14000570a:	89 54 24 44          	mov    DWORD PTR [rsp+0x44],edx
   14000570e:	e9 f6 f9 ff ff       	jmp    140005109 <__gdtoa+0x389>
   140005713:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005718:	66 0f ef c9          	pxor   xmm1,xmm1
   14000571c:	f2 41 0f 2a ce       	cvtsi2sd xmm1,r14d
   140005721:	66 0f 2e c8          	ucomisd xmm1,xmm0
   140005725:	7a 06                	jp     14000572d <__gdtoa+0x9ad>
   140005727:	0f 84 5c f8 ff ff    	je     140004f89 <__gdtoa+0x209>
   14000572d:	41 83 ee 01          	sub    r14d,0x1
   140005731:	e9 53 f8 ff ff       	jmp    140004f89 <__gdtoa+0x209>
   140005736:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000573d:	00 00 00 
   140005740:	83 ac 24 00 01 00 00 	sub    DWORD PTR [rsp+0x100],0x4
   140005747:	04 
   140005748:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
   14000574f:	00 
   140005750:	e9 04 fa ff ff       	jmp    140005159 <__gdtoa+0x3d9>
   140005755:	0f 1f 00             	nop    DWORD PTR [rax]
   140005758:	c7 84 24 08 01 00 00 	mov    DWORD PTR [rsp+0x108],0x0
   14000575f:	00 00 00 00 
   140005763:	45 31 c9             	xor    r9d,r9d
   140005766:	c7 44 24 48 01 00 00 	mov    DWORD PTR [rsp+0x48],0x1
   14000576d:	00 
   14000576e:	c7 44 24 6c ff ff ff 	mov    DWORD PTR [rsp+0x6c],0xffffffff
   140005775:	ff 
   140005776:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
   14000577d:	ff 
   14000577e:	e9 64 fa ff ff       	jmp    1400051e7 <__gdtoa+0x467>
   140005783:	66 0f 10 c8          	movupd xmm1,xmm0
   140005787:	f2 0f 58 c8          	addsd  xmm1,xmm0
   14000578b:	f2 0f 58 0d 55 3d 00 	addsd  xmm1,QWORD PTR [rip+0x3d55]        # 1400094e8 <.rdata+0x58>
   140005792:	00 
   140005793:	66 48 0f 7e ca       	movq   rdx,xmm1
   140005798:	66 48 0f 7e c8       	movq   rax,xmm1
   14000579d:	48 c1 ea 20          	shr    rdx,0x20
   1400057a1:	89 c0                	mov    eax,eax
   1400057a3:	81 ea 00 00 40 03    	sub    edx,0x3400000
   1400057a9:	48 c1 e2 20          	shl    rdx,0x20
   1400057ad:	48 09 d0             	or     rax,rdx
   1400057b0:	f2 0f 5c 05 38 3d 00 	subsd  xmm0,QWORD PTR [rip+0x3d38]        # 1400094f0 <.rdata+0x60>
   1400057b7:	00 
   1400057b8:	66 48 0f 6e c8       	movq   xmm1,rax
   1400057bd:	66 0f 2f c1          	comisd xmm0,xmm1
   1400057c1:	0f 87 9d 09 00 00    	ja     140006164 <__gdtoa+0x13e4>
   1400057c7:	66 0f 57 0d 31 3d 00 	xorpd  xmm1,XMMWORD PTR [rip+0x3d31]        # 140009500 <.rdata+0x70>
   1400057ce:	00 
   1400057cf:	66 0f 2f c8          	comisd xmm1,xmm0
   1400057d3:	0f 87 ff 00 00 00    	ja     1400058d8 <__gdtoa+0xb58>
   1400057d9:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
   1400057e0:	00 
   1400057e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400057e8:	44 8b 4c 24 38       	mov    r9d,DWORD PTR [rsp+0x38]
   1400057ed:	45 85 c9             	test   r9d,r9d
   1400057f0:	0f 88 ba 00 00 00    	js     1400058b0 <__gdtoa+0xb30>
   1400057f6:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   1400057fa:	39 45 14             	cmp    DWORD PTR [rbp+0x14],eax
   1400057fd:	0f 8c ad 00 00 00    	jl     1400058b0 <__gdtoa+0xb30>
   140005803:	48 8b 15 56 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f56]        # 140009760 <.refptr.__tens_D2A>
   14000580a:	44 8b 84 24 08 01 00 	mov    r8d,DWORD PTR [rsp+0x108]
   140005811:	00 
   140005812:	48 98                	cdqe   
   140005814:	48 89 c6             	mov    rsi,rax
   140005817:	f2 0f 10 14 c2       	movsd  xmm2,QWORD PTR [rdx+rax*8]
   14000581c:	45 85 c0             	test   r8d,r8d
   14000581f:	0f 89 03 05 00 00    	jns    140005d28 <__gdtoa+0xfa8>
   140005825:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
   140005829:	85 c0                	test   eax,eax
   14000582b:	0f 8f f7 04 00 00    	jg     140005d28 <__gdtoa+0xfa8>
   140005831:	0f 85 a1 00 00 00    	jne    1400058d8 <__gdtoa+0xb58>
   140005837:	f2 0f 59 15 b1 3c 00 	mulsd  xmm2,QWORD PTR [rip+0x3cb1]        # 1400094f0 <.rdata+0x60>
   14000583e:	00 
   14000583f:	66 0f 2f 54 24 60    	comisd xmm2,QWORD PTR [rsp+0x60]
   140005845:	0f 83 8d 00 00 00    	jae    1400058d8 <__gdtoa+0xb58>
   14000584b:	83 c6 02             	add    esi,0x2
   14000584e:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005853:	45 31 ed             	xor    r13d,r13d
   140005856:	45 31 e4             	xor    r12d,r12d
   140005859:	89 74 24 44          	mov    DWORD PTR [rsp+0x44],esi
   14000585d:	e9 11 fe ff ff       	jmp    140005673 <__gdtoa+0x8f3>
   140005862:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005868:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x3
   14000586f:	03 
   140005870:	0f 85 65 fb ff ff    	jne    1400053db <__gdtoa+0x65b>
   140005876:	c7 44 24 48 00 00 00 	mov    DWORD PTR [rsp+0x48],0x0
   14000587d:	00 
   14000587e:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005882:	03 84 24 08 01 00 00 	add    eax,DWORD PTR [rsp+0x108]
   140005889:	89 44 24 6c          	mov    DWORD PTR [rsp+0x6c],eax
   14000588d:	83 c0 01             	add    eax,0x1
   140005890:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
   140005894:	85 c0                	test   eax,eax
   140005896:	0f 8e 5c 04 00 00    	jle    140005cf8 <__gdtoa+0xf78>
   14000589c:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   1400058a0:	89 c1                	mov    ecx,eax
   1400058a2:	e9 0f f9 ff ff       	jmp    1400051b6 <__gdtoa+0x436>
   1400058a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400058ae:	00 00 
   1400058b0:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   1400058b4:	85 c9                	test   ecx,ecx
   1400058b6:	0f 85 94 fb ff ff    	jne    140005450 <__gdtoa+0x6d0>
   1400058bc:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
   1400058c0:	44 8b 6c 24 54       	mov    r13d,DWORD PTR [rsp+0x54]
   1400058c5:	45 31 e4             	xor    r12d,r12d
   1400058c8:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
   1400058cc:	e9 14 fc ff ff       	jmp    1400054e5 <__gdtoa+0x765>
   1400058d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400058d8:	45 31 ed             	xor    r13d,r13d
   1400058db:	45 31 e4             	xor    r12d,r12d
   1400058de:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [rsp+0x108]
   1400058e5:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   1400058ec:	00 
   1400058ed:	f7 d8                	neg    eax
   1400058ef:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   1400058f3:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   1400058f8:	e9 87 fd ff ff       	jmp    140005684 <__gdtoa+0x904>
   1400058fd:	0f 1f 00             	nop    DWORD PTR [rax]
   140005900:	4c 89 e9             	mov    rcx,r13
   140005903:	44 89 f2             	mov    edx,r14d
   140005906:	e8 75 11 00 00       	call   140006a80 <__pow5mult_D2A>
   14000590b:	84 db                	test   bl,bl
   14000590d:	44 8b 5c 24 54       	mov    r11d,DWORD PTR [rsp+0x54]
   140005912:	49 89 c5             	mov    r13,rax
   140005915:	0f 85 a2 08 00 00    	jne    1400061bd <__gdtoa+0x143d>
   14000591b:	c7 44 24 54 00 00 00 	mov    DWORD PTR [rsp+0x54],0x0
   140005922:	00 
   140005923:	41 8b 45 14          	mov    eax,DWORD PTR [r13+0x14]
   140005927:	83 e8 01             	sub    eax,0x1
   14000592a:	48 98                	cdqe   
   14000592c:	41 0f bd 74 85 18    	bsr    esi,DWORD PTR [r13+rax*4+0x18]
   140005932:	83 f6 1f             	xor    esi,0x1f
   140005935:	e9 7e fc ff ff       	jmp    1400055b8 <__gdtoa+0x838>
   14000593a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005940:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005944:	8b 6c 24 48          	mov    ebp,DWORD PTR [rsp+0x48]
   140005948:	83 c0 01             	add    eax,0x1
   14000594b:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   14000594f:	85 ed                	test   ebp,ebp
   140005951:	0f 84 c9 02 00 00    	je     140005c20 <__gdtoa+0xea0>
   140005957:	8b 54 24 38          	mov    edx,DWORD PTR [rsp+0x38]
   14000595b:	01 f2                	add    edx,esi
   14000595d:	85 d2                	test   edx,edx
   14000595f:	7e 0b                	jle    14000596c <__gdtoa+0xbec>
   140005961:	4c 89 e1             	mov    rcx,r12
   140005964:	e8 a7 12 00 00       	call   140006c10 <__lshift_D2A>
   140005969:	49 89 c4             	mov    r12,rax
   14000596c:	8b 5c 24 54          	mov    ebx,DWORD PTR [rsp+0x54]
   140005970:	4d 89 e6             	mov    r14,r12
   140005973:	85 db                	test   ebx,ebx
   140005975:	0f 85 88 07 00 00    	jne    140006103 <__gdtoa+0x1383>
   14000597b:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005980:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005987:	00 
   140005988:	48 89 bc 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdi
   14000598f:	00 
   140005990:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
   140005995:	e9 aa 00 00 00       	jmp    140005a44 <__gdtoa+0xcc4>
   14000599a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400059a0:	48 89 c1             	mov    rcx,rax
   1400059a3:	e8 38 0e 00 00       	call   1400067e0 <__Bfree_D2A>
   1400059a8:	b8 01 00 00 00       	mov    eax,0x1
   1400059ad:	85 f6                	test   esi,esi
   1400059af:	0f 88 f0 04 00 00    	js     140005ea5 <__gdtoa+0x1125>
   1400059b5:	0b b4 24 00 01 00 00 	or     esi,DWORD PTR [rsp+0x100]
   1400059bc:	75 11                	jne    1400059cf <__gdtoa+0xc4f>
   1400059be:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
   1400059c5:	00 
   1400059c6:	f6 06 01             	test   BYTE PTR [rsi],0x1
   1400059c9:	0f 84 d6 04 00 00    	je     140005ea5 <__gdtoa+0x1125>
   1400059cf:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
   1400059d4:	48 8d 6e 01          	lea    rbp,[rsi+0x1]
   1400059d8:	85 c0                	test   eax,eax
   1400059da:	7e 0b                	jle    1400059e7 <__gdtoa+0xc67>
   1400059dc:	83 7c 24 40 02       	cmp    DWORD PTR [rsp+0x40],0x2
   1400059e1:	0f 85 95 07 00 00    	jne    14000617c <__gdtoa+0x13fc>
   1400059e7:	88 5d ff             	mov    BYTE PTR [rbp-0x1],bl
   1400059ea:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
   1400059ee:	39 44 24 7c          	cmp    DWORD PTR [rsp+0x7c],eax
   1400059f2:	0f 84 b2 07 00 00    	je     1400061aa <__gdtoa+0x142a>
   1400059f8:	4c 89 f9             	mov    rcx,r15
   1400059fb:	45 31 c0             	xor    r8d,r8d
   1400059fe:	ba 0a 00 00 00       	mov    edx,0xa
   140005a03:	e8 48 0e 00 00       	call   140006850 <__multadd_D2A>
   140005a08:	45 31 c0             	xor    r8d,r8d
   140005a0b:	ba 0a 00 00 00       	mov    edx,0xa
   140005a10:	4c 89 e1             	mov    rcx,r12
   140005a13:	49 89 c7             	mov    r15,rax
   140005a16:	4d 39 f4             	cmp    r12,r14
   140005a19:	0f 84 29 01 00 00    	je     140005b48 <__gdtoa+0xdc8>
   140005a1f:	e8 2c 0e 00 00       	call   140006850 <__multadd_D2A>
   140005a24:	4c 89 f1             	mov    rcx,r14
   140005a27:	45 31 c0             	xor    r8d,r8d
   140005a2a:	ba 0a 00 00 00       	mov    edx,0xa
   140005a2f:	49 89 c4             	mov    r12,rax
   140005a32:	e8 19 0e 00 00       	call   140006850 <__multadd_D2A>
   140005a37:	49 89 c6             	mov    r14,rax
   140005a3a:	83 44 24 7c 01       	add    DWORD PTR [rsp+0x7c],0x1
   140005a3f:	48 89 6c 24 38       	mov    QWORD PTR [rsp+0x38],rbp
   140005a44:	4c 89 ea             	mov    rdx,r13
   140005a47:	4c 89 f9             	mov    rcx,r15
   140005a4a:	e8 c1 f1 ff ff       	call   140004c10 <__quorem_D2A>
   140005a4f:	4c 89 e2             	mov    rdx,r12
   140005a52:	4c 89 f9             	mov    rcx,r15
   140005a55:	89 c7                	mov    edi,eax
   140005a57:	8d 58 30             	lea    ebx,[rax+0x30]
   140005a5a:	e8 e1 12 00 00       	call   140006d40 <__cmp_D2A>
   140005a5f:	4c 89 f2             	mov    rdx,r14
   140005a62:	4c 89 e9             	mov    rcx,r13
   140005a65:	89 c6                	mov    esi,eax
   140005a67:	e8 24 13 00 00       	call   140006d90 <__diff_D2A>
   140005a6c:	44 8b 58 10          	mov    r11d,DWORD PTR [rax+0x10]
   140005a70:	45 85 db             	test   r11d,r11d
   140005a73:	0f 85 27 ff ff ff    	jne    1400059a0 <__gdtoa+0xc20>
   140005a79:	48 89 c2             	mov    rdx,rax
   140005a7c:	4c 89 f9             	mov    rcx,r15
   140005a7f:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
   140005a84:	e8 b7 12 00 00       	call   140006d40 <__cmp_D2A>
   140005a89:	4c 8b 44 24 48       	mov    r8,QWORD PTR [rsp+0x48]
   140005a8e:	89 c5                	mov    ebp,eax
   140005a90:	4c 89 c1             	mov    rcx,r8
   140005a93:	e8 48 0d 00 00       	call   1400067e0 <__Bfree_D2A>
   140005a98:	89 e8                	mov    eax,ebp
   140005a9a:	0b 84 24 00 01 00 00 	or     eax,DWORD PTR [rsp+0x100]
   140005aa1:	0f 85 ac 09 00 00    	jne    140006453 <__gdtoa+0x16d3>
   140005aa7:	48 8b 94 24 f0 00 00 	mov    rdx,QWORD PTR [rsp+0xf0]
   140005aae:	00 
   140005aaf:	8b 12                	mov    edx,DWORD PTR [rdx]
   140005ab1:	89 54 24 48          	mov    DWORD PTR [rsp+0x48],edx
   140005ab5:	83 e2 01             	and    edx,0x1
   140005ab8:	0b 54 24 40          	or     edx,DWORD PTR [rsp+0x40]
   140005abc:	0f 85 eb fe ff ff    	jne    1400059ad <__gdtoa+0xc2d>
   140005ac2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
   140005ac7:	89 7c 24 28          	mov    DWORD PTR [rsp+0x28],edi
   140005acb:	48 8b bc 24 f8 00 00 	mov    rdi,QWORD PTR [rsp+0xf8]
   140005ad2:	00 
   140005ad3:	48 8d 6a 01          	lea    rbp,[rdx+0x1]
   140005ad7:	83 fb 39             	cmp    ebx,0x39
   140005ada:	0f 84 99 07 00 00    	je     140006279 <__gdtoa+0x14f9>
   140005ae0:	85 f6                	test   esi,esi
   140005ae2:	0f 8e 48 09 00 00    	jle    140006430 <__gdtoa+0x16b0>
   140005ae8:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
   140005aec:	b8 20 00 00 00       	mov    eax,0x20
   140005af1:	83 c3 31             	add    ebx,0x31
   140005af4:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
   140005af9:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
   140005afd:	88 1e                	mov    BYTE PTR [rsi],bl
   140005aff:	4c 89 e6             	mov    rsi,r12
   140005b02:	4d 89 f4             	mov    r12,r14
   140005b05:	0f 1f 00             	nop    DWORD PTR [rax]
   140005b08:	4c 89 e9             	mov    rcx,r13
   140005b0b:	e8 d0 0c 00 00       	call   1400067e0 <__Bfree_D2A>
   140005b10:	4d 85 e4             	test   r12,r12
   140005b13:	0f 84 e7 02 00 00    	je     140005e00 <__gdtoa+0x1080>
   140005b19:	48 85 f6             	test   rsi,rsi
   140005b1c:	0f 84 85 07 00 00    	je     1400062a7 <__gdtoa+0x1527>
   140005b22:	4c 39 e6             	cmp    rsi,r12
   140005b25:	0f 84 7c 07 00 00    	je     1400062a7 <__gdtoa+0x1527>
   140005b2b:	48 89 f1             	mov    rcx,rsi
   140005b2e:	e8 ad 0c 00 00       	call   1400067e0 <__Bfree_D2A>
   140005b33:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005b38:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
   140005b3d:	e9 59 fb ff ff       	jmp    14000569b <__gdtoa+0x91b>
   140005b42:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005b48:	e8 03 0d 00 00       	call   140006850 <__multadd_D2A>
   140005b4d:	49 89 c4             	mov    r12,rax
   140005b50:	49 89 c6             	mov    r14,rax
   140005b53:	e9 e2 fe ff ff       	jmp    140005a3a <__gdtoa+0xcba>
   140005b58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140005b5f:	00 
   140005b60:	c7 44 24 48 01 00 00 	mov    DWORD PTR [rsp+0x48],0x1
   140005b67:	00 
   140005b68:	e9 11 fd ff ff       	jmp    14000587e <__gdtoa+0xafe>
   140005b6d:	0f 1f 00             	nop    DWORD PTR [rax]
   140005b70:	83 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x1
   140005b77:	01 
   140005b78:	0f 8e 32 f9 ff ff    	jle    1400054b0 <__gdtoa+0x730>
   140005b7e:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
   140005b82:	8b 4c 24 54          	mov    ecx,DWORD PTR [rsp+0x54]
   140005b86:	83 e8 01             	sub    eax,0x1
   140005b89:	39 c1                	cmp    ecx,eax
   140005b8b:	0f 8c 99 02 00 00    	jl     140005e2a <__gdtoa+0x10aa>
   140005b91:	29 c1                	sub    ecx,eax
   140005b93:	41 89 cd             	mov    r13d,ecx
   140005b96:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
   140005b9a:	85 c0                	test   eax,eax
   140005b9c:	0f 88 ea 04 00 00    	js     14000608c <__gdtoa+0x130c>
   140005ba2:	8b 4c 24 44          	mov    ecx,DWORD PTR [rsp+0x44]
   140005ba6:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   140005baa:	41 01 c3             	add    r11d,eax
   140005bad:	01 c8                	add    eax,ecx
   140005baf:	89 4c 24 38          	mov    DWORD PTR [rsp+0x38],ecx
   140005bb3:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   140005bb7:	e9 0a f9 ff ff       	jmp    1400054c6 <__gdtoa+0x746>
   140005bbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005bc0:	4c 89 ea             	mov    rdx,r13
   140005bc3:	4c 89 f9             	mov    rcx,r15
   140005bc6:	e8 75 11 00 00       	call   140006d40 <__cmp_D2A>
   140005bcb:	85 c0                	test   eax,eax
   140005bcd:	0f 89 47 fa ff ff    	jns    14000561a <__gdtoa+0x89a>
   140005bd3:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005bd7:	45 31 c0             	xor    r8d,r8d
   140005bda:	4c 89 f9             	mov    rcx,r15
   140005bdd:	ba 0a 00 00 00       	mov    edx,0xa
   140005be2:	8d 58 ff             	lea    ebx,[rax-0x1]
   140005be5:	e8 66 0c 00 00       	call   140006850 <__multadd_D2A>
   140005bea:	49 89 c7             	mov    r15,rax
   140005bed:	8b 44 24 6c          	mov    eax,DWORD PTR [rsp+0x6c]
   140005bf1:	85 c0                	test   eax,eax
   140005bf3:	0f 9e c0             	setle  al
   140005bf6:	21 c5                	and    ebp,eax
   140005bf8:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
   140005bfc:	85 c0                	test   eax,eax
   140005bfe:	0f 85 34 07 00 00    	jne    140006338 <__gdtoa+0x15b8>
   140005c04:	40 84 ed             	test   bpl,bpl
   140005c07:	0f 85 89 06 00 00    	jne    140006296 <__gdtoa+0x1516>
   140005c0d:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005c11:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   140005c15:	8b 44 24 6c          	mov    eax,DWORD PTR [rsp+0x6c]
   140005c19:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
   140005c1d:	0f 1f 00             	nop    DWORD PTR [rax]
   140005c20:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005c27:	00 
   140005c28:	48 8b 6c 24 30       	mov    rbp,QWORD PTR [rsp+0x30]
   140005c2d:	8b 74 24 28          	mov    esi,DWORD PTR [rsp+0x28]
   140005c31:	eb 1d                	jmp    140005c50 <__gdtoa+0xed0>
   140005c33:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005c38:	4c 89 f9             	mov    rcx,r15
   140005c3b:	45 31 c0             	xor    r8d,r8d
   140005c3e:	ba 0a 00 00 00       	mov    edx,0xa
   140005c43:	e8 08 0c 00 00       	call   140006850 <__multadd_D2A>
   140005c48:	83 44 24 7c 01       	add    DWORD PTR [rsp+0x7c],0x1
   140005c4d:	49 89 c7             	mov    r15,rax
   140005c50:	4c 89 ea             	mov    rdx,r13
   140005c53:	4c 89 f9             	mov    rcx,r15
   140005c56:	48 83 c5 01          	add    rbp,0x1
   140005c5a:	e8 b1 ef ff ff       	call   140004c10 <__quorem_D2A>
   140005c5f:	8d 58 30             	lea    ebx,[rax+0x30]
   140005c62:	88 5d ff             	mov    BYTE PTR [rbp-0x1],bl
   140005c65:	39 74 24 7c          	cmp    DWORD PTR [rsp+0x7c],esi
   140005c69:	7c cd                	jl     140005c38 <__gdtoa+0xeb8>
   140005c6b:	31 f6                	xor    esi,esi
   140005c6d:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
   140005c71:	85 c9                	test   ecx,ecx
   140005c73:	0f 84 e0 01 00 00    	je     140005e59 <__gdtoa+0x10d9>
   140005c79:	41 8b 47 14          	mov    eax,DWORD PTR [r15+0x14]
   140005c7d:	0f b6 55 ff          	movzx  edx,BYTE PTR [rbp-0x1]
   140005c81:	83 f9 02             	cmp    ecx,0x2
   140005c84:	0f 84 05 02 00 00    	je     140005e8f <__gdtoa+0x110f>
   140005c8a:	83 f8 01             	cmp    eax,0x1
   140005c8d:	7f 08                	jg     140005c97 <__gdtoa+0xf17>
   140005c8f:	41 8b 4f 18          	mov    ecx,DWORD PTR [r15+0x18]
   140005c93:	85 c9                	test   ecx,ecx
   140005c95:	74 40                	je     140005cd7 <__gdtoa+0xf57>
   140005c97:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
   140005c9c:	eb 12                	jmp    140005cb0 <__gdtoa+0xf30>
   140005c9e:	66 90                	xchg   ax,ax
   140005ca0:	48 39 c8             	cmp    rax,rcx
   140005ca3:	0f 84 96 01 00 00    	je     140005e3f <__gdtoa+0x10bf>
   140005ca9:	0f b6 50 ff          	movzx  edx,BYTE PTR [rax-0x1]
   140005cad:	48 89 c5             	mov    rbp,rax
   140005cb0:	48 8d 45 ff          	lea    rax,[rbp-0x1]
   140005cb4:	80 fa 39             	cmp    dl,0x39
   140005cb7:	74 e7                	je     140005ca0 <__gdtoa+0xf20>
   140005cb9:	83 c2 01             	add    edx,0x1
   140005cbc:	c7 44 24 24 20 00 00 	mov    DWORD PTR [rsp+0x24],0x20
   140005cc3:	00 
   140005cc4:	88 10                	mov    BYTE PTR [rax],dl
   140005cc6:	e9 3d fe ff ff       	jmp    140005b08 <__gdtoa+0xd88>
   140005ccb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005cd0:	0f b6 55 fe          	movzx  edx,BYTE PTR [rbp-0x2]
   140005cd4:	48 89 c5             	mov    rbp,rax
   140005cd7:	48 8d 45 ff          	lea    rax,[rbp-0x1]
   140005cdb:	80 fa 30             	cmp    dl,0x30
   140005cde:	74 f0                	je     140005cd0 <__gdtoa+0xf50>
   140005ce0:	e9 23 fe ff ff       	jmp    140005b08 <__gdtoa+0xd88>
   140005ce5:	0f 1f 00             	nop    DWORD PTR [rax]
   140005ce8:	c7 44 24 48 01 00 00 	mov    DWORD PTR [rsp+0x48],0x1
   140005cef:	00 
   140005cf0:	e9 96 f4 ff ff       	jmp    14000518b <__gdtoa+0x40b>
   140005cf5:	0f 1f 00             	nop    DWORD PTR [rax]
   140005cf8:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005cff:	00 
   140005d00:	b9 01 00 00 00       	mov    ecx,0x1
   140005d05:	e9 ac f4 ff ff       	jmp    1400051b6 <__gdtoa+0x436>
   140005d0a:	48 63 44 24 50       	movsxd rax,DWORD PTR [rsp+0x50]
   140005d0f:	48 8b 15 4a 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3a4a]        # 140009760 <.refptr.__tens_D2A>
   140005d16:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
   140005d1d:	ff 
   140005d1e:	f2 0f 10 14 c2       	movsd  xmm2,QWORD PTR [rdx+rax*8]
   140005d23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005d28:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
   140005d2e:	44 8b 44 24 50       	mov    r8d,DWORD PTR [rsp+0x50]
   140005d33:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005d3a:	00 
   140005d3b:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
   140005d40:	66 0f 10 c8          	movupd xmm1,xmm0
   140005d44:	41 83 c0 01          	add    r8d,0x1
   140005d48:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005d4c:	44 89 44 24 44       	mov    DWORD PTR [rsp+0x44],r8d
   140005d51:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140005d55:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005d59:	66 0f ef c9          	pxor   xmm1,xmm1
   140005d5d:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140005d61:	8d 48 30             	lea    ecx,[rax+0x30]
   140005d64:	88 0e                	mov    BYTE PTR [rsi],cl
   140005d66:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005d6a:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140005d6e:	66 0f 2e c6          	ucomisd xmm0,xmm6
   140005d72:	0f 8b 64 06 00 00    	jnp    1400063dc <__gdtoa+0x165c>
   140005d78:	f2 0f 10 1d 58 37 00 	movsd  xmm3,QWORD PTR [rip+0x3758]        # 1400094d8 <.rdata+0x48>
   140005d7f:	00 
   140005d80:	8b 4c 24 7c          	mov    ecx,DWORD PTR [rsp+0x7c]
   140005d84:	3b 4c 24 28          	cmp    ecx,DWORD PTR [rsp+0x28]
   140005d88:	0f 84 fa 01 00 00    	je     140005f88 <__gdtoa+0x1208>
   140005d8e:	f2 0f 59 c3          	mulsd  xmm0,xmm3
   140005d92:	83 c1 01             	add    ecx,0x1
   140005d95:	48 83 c2 01          	add    rdx,0x1
   140005d99:	89 4c 24 7c          	mov    DWORD PTR [rsp+0x7c],ecx
   140005d9d:	66 0f 10 c8          	movupd xmm1,xmm0
   140005da1:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005da5:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005da9:	66 0f ef c9          	pxor   xmm1,xmm1
   140005dad:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140005db1:	8d 48 30             	lea    ecx,[rax+0x30]
   140005db4:	88 4a ff             	mov    BYTE PTR [rdx-0x1],cl
   140005db7:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005dbb:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140005dbf:	66 0f 2e c6          	ucomisd xmm0,xmm6
   140005dc3:	7a bb                	jp     140005d80 <__gdtoa+0x1000>
   140005dc5:	75 b9                	jne    140005d80 <__gdtoa+0x1000>
   140005dc7:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005dcc:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   140005dd1:	e9 d7 f8 ff ff       	jmp    1400056ad <__gdtoa+0x92d>
   140005dd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140005ddd:	00 00 00 
   140005de0:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
   140005de4:	4c 89 f9             	mov    rcx,r15
   140005de7:	44 89 5c 24 58       	mov    DWORD PTR [rsp+0x58],r11d
   140005dec:	e8 8f 0c 00 00       	call   140006a80 <__pow5mult_D2A>
   140005df1:	44 8b 5c 24 58       	mov    r11d,DWORD PTR [rsp+0x58]
   140005df6:	49 89 c7             	mov    r15,rax
   140005df9:	e9 69 f7 ff ff       	jmp    140005567 <__gdtoa+0x7e7>
   140005dfe:	66 90                	xchg   ax,ax
   140005e00:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005e05:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
   140005e0a:	e9 9e f8 ff ff       	jmp    1400056ad <__gdtoa+0x92d>
   140005e0f:	90                   	nop
   140005e10:	4c 89 f9             	mov    rcx,r15
   140005e13:	44 89 5c 24 54       	mov    DWORD PTR [rsp+0x54],r11d
   140005e18:	e8 63 0c 00 00       	call   140006a80 <__pow5mult_D2A>
   140005e1d:	44 8b 5c 24 54       	mov    r11d,DWORD PTR [rsp+0x54]
   140005e22:	49 89 c7             	mov    r15,rax
   140005e25:	e9 3d f7 ff ff       	jmp    140005567 <__gdtoa+0x7e7>
   140005e2a:	89 c2                	mov    edx,eax
   140005e2c:	2b 54 24 54          	sub    edx,DWORD PTR [rsp+0x54]
   140005e30:	45 31 ed             	xor    r13d,r13d
   140005e33:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
   140005e37:	41 01 d6             	add    r14d,edx
   140005e3a:	e9 57 fd ff ff       	jmp    140005b96 <__gdtoa+0xe16>
   140005e3f:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005e44:	83 44 24 44 01       	add    DWORD PTR [rsp+0x44],0x1
   140005e49:	c7 44 24 24 20 00 00 	mov    DWORD PTR [rsp+0x24],0x20
   140005e50:	00 
   140005e51:	c6 00 31             	mov    BYTE PTR [rax],0x31
   140005e54:	e9 af fc ff ff       	jmp    140005b08 <__gdtoa+0xd88>
   140005e59:	4c 89 f9             	mov    rcx,r15
   140005e5c:	ba 01 00 00 00       	mov    edx,0x1
   140005e61:	e8 aa 0d 00 00       	call   140006c10 <__lshift_D2A>
   140005e66:	4c 89 ea             	mov    rdx,r13
   140005e69:	48 89 c1             	mov    rcx,rax
   140005e6c:	49 89 c7             	mov    r15,rax
   140005e6f:	e8 cc 0e 00 00       	call   140006d40 <__cmp_D2A>
   140005e74:	0f b6 55 ff          	movzx  edx,BYTE PTR [rbp-0x1]
   140005e78:	85 c0                	test   eax,eax
   140005e7a:	0f 8f 17 fe ff ff    	jg     140005c97 <__gdtoa+0xf17>
   140005e80:	75 09                	jne    140005e8b <__gdtoa+0x110b>
   140005e82:	83 e3 01             	and    ebx,0x1
   140005e85:	0f 85 0c fe ff ff    	jne    140005c97 <__gdtoa+0xf17>
   140005e8b:	41 8b 47 14          	mov    eax,DWORD PTR [r15+0x14]
   140005e8f:	83 f8 01             	cmp    eax,0x1
   140005e92:	0f 8e d1 04 00 00    	jle    140006369 <__gdtoa+0x15e9>
   140005e98:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   140005e9f:	00 
   140005ea0:	e9 32 fe ff ff       	jmp    140005cd7 <__gdtoa+0xf57>
   140005ea5:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
   140005eaa:	44 8b 54 24 40       	mov    r10d,DWORD PTR [rsp+0x40]
   140005eaf:	89 7c 24 28          	mov    DWORD PTR [rsp+0x28],edi
   140005eb3:	48 8b bc 24 f8 00 00 	mov    rdi,QWORD PTR [rsp+0xf8]
   140005eba:	00 
   140005ebb:	48 83 c6 01          	add    rsi,0x1
   140005ebf:	48 89 f5             	mov    rbp,rsi
   140005ec2:	45 85 d2             	test   r10d,r10d
   140005ec5:	0f 84 55 03 00 00    	je     140006220 <__gdtoa+0x14a0>
   140005ecb:	41 83 7f 14 01       	cmp    DWORD PTR [r15+0x14],0x1
   140005ed0:	0f 8e bd 04 00 00    	jle    140006393 <__gdtoa+0x1613>
   140005ed6:	83 7c 24 40 02       	cmp    DWORD PTR [rsp+0x40],0x2
   140005edb:	0f 84 85 03 00 00    	je     140006266 <__gdtoa+0x14e6>
   140005ee1:	48 89 bc 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdi
   140005ee8:	00 
   140005ee9:	4c 89 f7             	mov    rdi,r14
   140005eec:	4c 8b 74 24 38       	mov    r14,QWORD PTR [rsp+0x38]
   140005ef1:	eb 4d                	jmp    140005f40 <__gdtoa+0x11c0>
   140005ef3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005ef8:	88 5e ff             	mov    BYTE PTR [rsi-0x1],bl
   140005efb:	45 31 c0             	xor    r8d,r8d
   140005efe:	48 89 f9             	mov    rcx,rdi
   140005f01:	ba 0a 00 00 00       	mov    edx,0xa
   140005f06:	49 89 f6             	mov    r14,rsi
   140005f09:	e8 42 09 00 00       	call   140006850 <__multadd_D2A>
   140005f0e:	49 39 fc             	cmp    r12,rdi
   140005f11:	4c 89 f9             	mov    rcx,r15
   140005f14:	ba 0a 00 00 00       	mov    edx,0xa
   140005f19:	4c 0f 44 e0          	cmove  r12,rax
   140005f1d:	45 31 c0             	xor    r8d,r8d
   140005f20:	48 89 c5             	mov    rbp,rax
   140005f23:	48 83 c6 01          	add    rsi,0x1
   140005f27:	e8 24 09 00 00       	call   140006850 <__multadd_D2A>
   140005f2c:	4c 89 ea             	mov    rdx,r13
   140005f2f:	48 89 ef             	mov    rdi,rbp
   140005f32:	48 89 c1             	mov    rcx,rax
   140005f35:	49 89 c7             	mov    r15,rax
   140005f38:	e8 d3 ec ff ff       	call   140004c10 <__quorem_D2A>
   140005f3d:	8d 58 30             	lea    ebx,[rax+0x30]
   140005f40:	48 89 fa             	mov    rdx,rdi
   140005f43:	4c 89 e9             	mov    rcx,r13
   140005f46:	48 89 f5             	mov    rbp,rsi
   140005f49:	e8 f2 0d 00 00       	call   140006d40 <__cmp_D2A>
   140005f4e:	85 c0                	test   eax,eax
   140005f50:	7f a6                	jg     140005ef8 <__gdtoa+0x1178>
   140005f52:	4c 89 74 24 38       	mov    QWORD PTR [rsp+0x38],r14
   140005f57:	49 89 fe             	mov    r14,rdi
   140005f5a:	48 8b bc 24 f8 00 00 	mov    rdi,QWORD PTR [rsp+0xf8]
   140005f61:	00 
   140005f62:	83 fb 39             	cmp    ebx,0x39
   140005f65:	0f 84 0e 03 00 00    	je     140006279 <__gdtoa+0x14f9>
   140005f6b:	c7 44 24 24 20 00 00 	mov    DWORD PTR [rsp+0x24],0x20
   140005f72:	00 
   140005f73:	4c 89 e6             	mov    rsi,r12
   140005f76:	83 c3 01             	add    ebx,0x1
   140005f79:	4d 89 f4             	mov    r12,r14
   140005f7c:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
   140005f81:	88 18                	mov    BYTE PTR [rax],bl
   140005f83:	e9 80 fb ff ff       	jmp    140005b08 <__gdtoa+0xd88>
   140005f88:	8b 74 24 40          	mov    esi,DWORD PTR [rsp+0x40]
   140005f8c:	85 f6                	test   esi,esi
   140005f8e:	0f 84 68 03 00 00    	je     1400062fc <__gdtoa+0x157c>
   140005f94:	83 fe 01             	cmp    esi,0x1
   140005f97:	0f 84 e5 03 00 00    	je     140006382 <__gdtoa+0x1602>
   140005f9d:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140005fa2:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   140005fa7:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   140005fae:	00 
   140005faf:	e9 f9 f6 ff ff       	jmp    1400056ad <__gdtoa+0x92d>
   140005fb4:	f2 0f 59 e2          	mulsd  xmm4,xmm2
   140005fb8:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   140005fbd:	66 0f 10 c8          	movupd xmm1,xmm0
   140005fc1:	45 31 c0             	xor    r8d,r8d
   140005fc4:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005fcb:	00 
   140005fcc:	f2 0f 10 15 04 35 00 	movsd  xmm2,QWORD PTR [rip+0x3504]        # 1400094d8 <.rdata+0x48>
   140005fd3:	00 
   140005fd4:	eb 18                	jmp    140005fee <__gdtoa+0x126e>
   140005fd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140005fdd:	00 00 00 
   140005fe0:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005fe4:	83 c1 01             	add    ecx,0x1
   140005fe7:	45 89 c8             	mov    r8d,r9d
   140005fea:	89 4c 24 7c          	mov    DWORD PTR [rsp+0x7c],ecx
   140005fee:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005ff2:	85 c0                	test   eax,eax
   140005ff4:	74 0f                	je     140006005 <__gdtoa+0x1285>
   140005ff6:	66 0f ef db          	pxor   xmm3,xmm3
   140005ffa:	45 89 c8             	mov    r8d,r9d
   140005ffd:	f2 0f 2a d8          	cvtsi2sd xmm3,eax
   140006001:	f2 0f 5c cb          	subsd  xmm1,xmm3
   140006005:	48 83 c2 01          	add    rdx,0x1
   140006009:	83 c0 30             	add    eax,0x30
   14000600c:	88 42 ff             	mov    BYTE PTR [rdx-0x1],al
   14000600f:	8b 4c 24 7c          	mov    ecx,DWORD PTR [rsp+0x7c]
   140006013:	44 39 d1             	cmp    ecx,r10d
   140006016:	75 c8                	jne    140005fe0 <__gdtoa+0x1260>
   140006018:	89 c1                	mov    ecx,eax
   14000601a:	45 84 c0             	test   r8b,r8b
   14000601d:	75 04                	jne    140006023 <__gdtoa+0x12a3>
   14000601f:	66 0f 10 c8          	movupd xmm1,xmm0
   140006023:	f2 0f 10 05 e5 34 00 	movsd  xmm0,QWORD PTR [rip+0x34e5]        # 140009510 <.rdata+0x80>
   14000602a:	00 
   14000602b:	66 0f 10 d4          	movupd xmm2,xmm4
   14000602f:	f2 0f 58 d0          	addsd  xmm2,xmm0
   140006033:	66 0f 2f ca          	comisd xmm1,xmm2
   140006037:	0f 87 a9 02 00 00    	ja     1400062e6 <__gdtoa+0x1566>
   14000603d:	f2 0f 5c c4          	subsd  xmm0,xmm4
   140006041:	66 0f 2f c1          	comisd xmm0,xmm1
   140006045:	0f 86 8e f7 ff ff    	jbe    1400057d9 <__gdtoa+0xa59>
   14000604b:	66 0f 2e ce          	ucomisd xmm1,xmm6
   14000604f:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140006054:	7a 06                	jp     14000605c <__gdtoa+0x12dc>
   140006056:	0f 84 a3 03 00 00    	je     1400063ff <__gdtoa+0x167f>
   14000605c:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   140006063:	00 
   140006064:	45 8d 44 24 01       	lea    r8d,[r12+0x1]
   140006069:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006070:	48 89 d1             	mov    rcx,rdx
   140006073:	48 8d 52 ff          	lea    rdx,[rdx-0x1]
   140006077:	80 79 ff 30          	cmp    BYTE PTR [rcx-0x1],0x30
   14000607b:	74 f3                	je     140006070 <__gdtoa+0x12f0>
   14000607d:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
   140006082:	44 89 44 24 44       	mov    DWORD PTR [rsp+0x44],r8d
   140006087:	e9 21 f6 ff ff       	jmp    1400056ad <__gdtoa+0x92d>
   14000608c:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
   140006090:	2b 44 24 28          	sub    eax,DWORD PTR [rsp+0x28]
   140006094:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   14000609b:	00 
   14000609c:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
   1400060a0:	e9 21 f4 ff ff       	jmp    1400054c6 <__gdtoa+0x746>
   1400060a5:	8b 4c 24 28          	mov    ecx,DWORD PTR [rsp+0x28]
   1400060a9:	85 c9                	test   ecx,ecx
   1400060ab:	0f 84 d2 f6 ff ff    	je     140005783 <__gdtoa+0xa03>
   1400060b1:	44 8b 54 24 6c       	mov    r10d,DWORD PTR [rsp+0x6c]
   1400060b6:	45 85 d2             	test   r10d,r10d
   1400060b9:	0f 8e 1a f7 ff ff    	jle    1400057d9 <__gdtoa+0xa59>
   1400060bf:	f2 0f 59 05 11 34 00 	mulsd  xmm0,QWORD PTR [rip+0x3411]        # 1400094d8 <.rdata+0x48>
   1400060c6:	00 
   1400060c7:	f2 0f 10 0d 11 34 00 	movsd  xmm1,QWORD PTR [rip+0x3411]        # 1400094e0 <.rdata+0x50>
   1400060ce:	00 
   1400060cf:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   1400060d5:	f2 0f 59 c8          	mulsd  xmm1,xmm0
   1400060d9:	f2 0f 58 0d 07 34 00 	addsd  xmm1,QWORD PTR [rip+0x3407]        # 1400094e8 <.rdata+0x58>
   1400060e0:	00 
   1400060e1:	66 48 0f 7e ca       	movq   rdx,xmm1
   1400060e6:	66 48 0f 7e c8       	movq   rax,xmm1
   1400060eb:	48 c1 ea 20          	shr    rdx,0x20
   1400060ef:	89 c0                	mov    eax,eax
   1400060f1:	81 ea 00 00 40 03    	sub    edx,0x3400000
   1400060f7:	48 c1 e2 20          	shl    rdx,0x20
   1400060fb:	48 09 d0             	or     rax,rdx
   1400060fe:	e9 8f f1 ff ff       	jmp    140005292 <__gdtoa+0x512>
   140006103:	41 8b 4c 24 08       	mov    ecx,DWORD PTR [r12+0x8]
   140006108:	e8 d3 05 00 00       	call   1400066e0 <__Balloc_D2A>
   14000610d:	49 8d 54 24 10       	lea    rdx,[r12+0x10]
   140006112:	49 89 c6             	mov    r14,rax
   140006115:	48 8d 48 10          	lea    rcx,[rax+0x10]
   140006119:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
   14000611e:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   140006125:	00 
   140006126:	e8 15 11 00 00       	call   140007240 <memcpy>
   14000612b:	4c 89 f1             	mov    rcx,r14
   14000612e:	ba 01 00 00 00       	mov    edx,0x1
   140006133:	e8 d8 0a 00 00       	call   140006c10 <__lshift_D2A>
   140006138:	49 89 c6             	mov    r14,rax
   14000613b:	e9 3b f8 ff ff       	jmp    14000597b <__gdtoa+0xbfb>
   140006140:	8b 45 04             	mov    eax,DWORD PTR [rbp+0x4]
   140006143:	83 c0 01             	add    eax,0x1
   140006146:	39 f0                	cmp    eax,esi
   140006148:	0f 8d 5c f4 ff ff    	jge    1400055aa <__gdtoa+0x82a>
   14000614e:	83 44 24 44 01       	add    DWORD PTR [rsp+0x44],0x1
   140006153:	41 83 c3 01          	add    r11d,0x1
   140006157:	c7 44 24 54 01 00 00 	mov    DWORD PTR [rsp+0x54],0x1
   14000615e:	00 
   14000615f:	e9 46 f4 ff ff       	jmp    1400055aa <__gdtoa+0x82a>
   140006164:	c7 44 24 44 02 00 00 	mov    DWORD PTR [rsp+0x44],0x2
   14000616b:	00 
   14000616c:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140006171:	45 31 ed             	xor    r13d,r13d
   140006174:	45 31 e4             	xor    r12d,r12d
   140006177:	e9 f7 f4 ff ff       	jmp    140005673 <__gdtoa+0x8f3>
   14000617c:	48 8b bc 24 f8 00 00 	mov    rdi,QWORD PTR [rsp+0xf8]
   140006183:	00 
   140006184:	83 fb 39             	cmp    ebx,0x39
   140006187:	0f 84 ec 00 00 00    	je     140006279 <__gdtoa+0x14f9>
   14000618d:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
   140006192:	83 c3 01             	add    ebx,0x1
   140006195:	4c 89 e6             	mov    rsi,r12
   140006198:	c7 44 24 24 20 00 00 	mov    DWORD PTR [rsp+0x24],0x20
   14000619f:	00 
   1400061a0:	4d 89 f4             	mov    r12,r14
   1400061a3:	88 18                	mov    BYTE PTR [rax],bl
   1400061a5:	e9 5e f9 ff ff       	jmp    140005b08 <__gdtoa+0xd88>
   1400061aa:	4c 89 e6             	mov    rsi,r12
   1400061ad:	48 8b bc 24 f8 00 00 	mov    rdi,QWORD PTR [rsp+0xf8]
   1400061b4:	00 
   1400061b5:	4d 89 f4             	mov    r12,r14
   1400061b8:	e9 b0 fa ff ff       	jmp    140005c6d <__gdtoa+0xeed>
   1400061bd:	8b 45 04             	mov    eax,DWORD PTR [rbp+0x4]
   1400061c0:	83 c0 01             	add    eax,0x1
   1400061c3:	39 c6                	cmp    esi,eax
   1400061c5:	0f 8e 50 f7 ff ff    	jle    14000591b <__gdtoa+0xb9b>
   1400061cb:	eb 81                	jmp    14000614e <__gdtoa+0x13ce>
   1400061cd:	41 29 dd             	sub    r13d,ebx
   1400061d0:	8b 55 04             	mov    edx,DWORD PTR [rbp+0x4]
   1400061d3:	c7 84 24 08 01 00 00 	mov    DWORD PTR [rsp+0x108],0x0
   1400061da:	00 00 00 00 
   1400061de:	41 8d 45 01          	lea    eax,[r13+0x1]
   1400061e2:	44 29 e9             	sub    ecx,r13d
   1400061e5:	c7 44 24 6c ff ff ff 	mov    DWORD PTR [rsp+0x6c],0xffffffff
   1400061ec:	ff 
   1400061ed:	89 44 24 7c          	mov    DWORD PTR [rsp+0x7c],eax
   1400061f1:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
   1400061f8:	ff 
   1400061f9:	39 d1                	cmp    ecx,edx
   1400061fb:	0f 8c 6c f2 ff ff    	jl     14000546d <__gdtoa+0x6ed>
   140006201:	e9 aa f2 ff ff       	jmp    1400054b0 <__gdtoa+0x730>
   140006206:	83 44 24 44 01       	add    DWORD PTR [rsp+0x44],0x1
   14000620b:	48 89 c2             	mov    rdx,rax
   14000620e:	b9 31 00 00 00       	mov    ecx,0x31
   140006213:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
   140006218:	c6 00 30             	mov    BYTE PTR [rax],0x30
   14000621b:	e9 69 f1 ff ff       	jmp    140005389 <__gdtoa+0x609>
   140006220:	85 c0                	test   eax,eax
   140006222:	7e 37                	jle    14000625b <__gdtoa+0x14db>
   140006224:	4c 89 f9             	mov    rcx,r15
   140006227:	ba 01 00 00 00       	mov    edx,0x1
   14000622c:	e8 df 09 00 00       	call   140006c10 <__lshift_D2A>
   140006231:	4c 89 ea             	mov    rdx,r13
   140006234:	48 89 c1             	mov    rcx,rax
   140006237:	49 89 c7             	mov    r15,rax
   14000623a:	e8 01 0b 00 00       	call   140006d40 <__cmp_D2A>
   14000623f:	85 c0                	test   eax,eax
   140006241:	0f 8e a0 01 00 00    	jle    1400063e7 <__gdtoa+0x1667>
   140006247:	83 fb 39             	cmp    ebx,0x39
   14000624a:	74 2d                	je     140006279 <__gdtoa+0x14f9>
   14000624c:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
   140006250:	c7 44 24 40 20 00 00 	mov    DWORD PTR [rsp+0x40],0x20
   140006257:	00 
   140006258:	83 c3 31             	add    ebx,0x31
   14000625b:	41 83 7f 14 01       	cmp    DWORD PTR [r15+0x14],0x1
   140006260:	0f 8e 5a 01 00 00    	jle    1400063c0 <__gdtoa+0x1640>
   140006266:	4c 89 e6             	mov    rsi,r12
   140006269:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   140006270:	00 
   140006271:	4d 89 f4             	mov    r12,r14
   140006274:	e9 03 fd ff ff       	jmp    140005f7c <__gdtoa+0x11fc>
   140006279:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
   14000627e:	4c 89 e6             	mov    rsi,r12
   140006281:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
   140006286:	4d 89 f4             	mov    r12,r14
   140006289:	ba 39 00 00 00       	mov    edx,0x39
   14000628e:	c6 00 39             	mov    BYTE PTR [rax],0x39
   140006291:	e9 1a fa ff ff       	jmp    140005cb0 <__gdtoa+0xf30>
   140006296:	8b 44 24 6c          	mov    eax,DWORD PTR [rsp+0x6c]
   14000629a:	89 5c 24 50          	mov    DWORD PTR [rsp+0x50],ebx
   14000629e:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
   1400062a2:	e9 88 f3 ff ff       	jmp    14000562f <__gdtoa+0x8af>
   1400062a7:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   1400062ac:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
   1400062b1:	e9 e5 f3 ff ff       	jmp    14000569b <__gdtoa+0x91b>
   1400062b6:	66 0f 2e c6          	ucomisd xmm0,xmm6
   1400062ba:	41 8d 44 24 01       	lea    eax,[r12+0x1]
   1400062bf:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   1400062c3:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   1400062c8:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
   1400062cd:	0f 8a d4 fc ff ff    	jp     140005fa7 <__gdtoa+0x1227>
   1400062d3:	0f 85 ce fc ff ff    	jne    140005fa7 <__gdtoa+0x1227>
   1400062d9:	c7 44 24 24 00 00 00 	mov    DWORD PTR [rsp+0x24],0x0
   1400062e0:	00 
   1400062e1:	e9 c7 f3 ff ff       	jmp    1400056ad <__gdtoa+0x92d>
   1400062e6:	41 8d 44 24 01       	lea    eax,[r12+0x1]
   1400062eb:	49 89 d0             	mov    r8,rdx
   1400062ee:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   1400062f2:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   1400062f7:	e9 7c f0 ff ff       	jmp    140005378 <__gdtoa+0x5f8>
   1400062fc:	f2 0f 58 c0          	addsd  xmm0,xmm0
   140006300:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   140006304:	66 0f 2f c2          	comisd xmm0,xmm2
   140006308:	0f 87 a5 00 00 00    	ja     1400063b3 <__gdtoa+0x1633>
   14000630e:	66 0f 2e c2          	ucomisd xmm0,xmm2
   140006312:	0f 8a f9 00 00 00    	jp     140006411 <__gdtoa+0x1691>
   140006318:	0f 85 f3 00 00 00    	jne    140006411 <__gdtoa+0x1691>
   14000631e:	a8 01                	test   al,0x1
   140006320:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   140006325:	0f 85 4a f0 ff ff    	jne    140005375 <__gdtoa+0x5f5>
   14000632b:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   140006332:	00 
   140006333:	e9 38 fd ff ff       	jmp    140006070 <__gdtoa+0x12f0>
   140006338:	4c 89 e1             	mov    rcx,r12
   14000633b:	45 31 c0             	xor    r8d,r8d
   14000633e:	ba 0a 00 00 00       	mov    edx,0xa
   140006343:	e8 08 05 00 00       	call   140006850 <__multadd_D2A>
   140006348:	49 89 c4             	mov    r12,rax
   14000634b:	40 84 ed             	test   bpl,bpl
   14000634e:	0f 85 42 ff ff ff    	jne    140006296 <__gdtoa+0x1516>
   140006354:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140006358:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   14000635c:	8b 44 24 6c          	mov    eax,DWORD PTR [rsp+0x6c]
   140006360:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
   140006364:	e9 ee f5 ff ff       	jmp    140005957 <__gdtoa+0xbd7>
   140006369:	41 8b 47 18          	mov    eax,DWORD PTR [r15+0x18]
   14000636d:	85 c0                	test   eax,eax
   14000636f:	b8 10 00 00 00       	mov    eax,0x10
   140006374:	0f 44 44 24 24       	cmove  eax,DWORD PTR [rsp+0x24]
   140006379:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
   14000637d:	e9 55 f9 ff ff       	jmp    140005cd7 <__gdtoa+0xf57>
   140006382:	0f b6 4a ff          	movzx  ecx,BYTE PTR [rdx-0x1]
   140006386:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   14000638b:	49 89 d0             	mov    r8,rdx
   14000638e:	e9 e5 ef ff ff       	jmp    140005378 <__gdtoa+0x5f8>
   140006393:	45 8b 4f 18          	mov    r9d,DWORD PTR [r15+0x18]
   140006397:	45 85 c9             	test   r9d,r9d
   14000639a:	0f 85 36 fb ff ff    	jne    140005ed6 <__gdtoa+0x1156>
   1400063a0:	85 c0                	test   eax,eax
   1400063a2:	0f 8f 7c fe ff ff    	jg     140006224 <__gdtoa+0x14a4>
   1400063a8:	4c 89 e6             	mov    rsi,r12
   1400063ab:	4d 89 f4             	mov    r12,r14
   1400063ae:	e9 c9 fb ff ff       	jmp    140005f7c <__gdtoa+0x11fc>
   1400063b3:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   1400063b8:	49 89 d0             	mov    r8,rdx
   1400063bb:	e9 b8 ef ff ff       	jmp    140005378 <__gdtoa+0x5f8>
   1400063c0:	45 8b 47 18          	mov    r8d,DWORD PTR [r15+0x18]
   1400063c4:	4c 89 e6             	mov    rsi,r12
   1400063c7:	4d 89 f4             	mov    r12,r14
   1400063ca:	45 85 c0             	test   r8d,r8d
   1400063cd:	74 54                	je     140006423 <__gdtoa+0x16a3>
   1400063cf:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   1400063d6:	00 
   1400063d7:	e9 a0 fb ff ff       	jmp    140005f7c <__gdtoa+0x11fc>
   1400063dc:	0f 84 e5 f9 ff ff    	je     140005dc7 <__gdtoa+0x1047>
   1400063e2:	e9 91 f9 ff ff       	jmp    140005d78 <__gdtoa+0xff8>
   1400063e7:	75 09                	jne    1400063f2 <__gdtoa+0x1672>
   1400063e9:	f6 c3 01             	test   bl,0x1
   1400063ec:	0f 85 55 fe ff ff    	jne    140006247 <__gdtoa+0x14c7>
   1400063f2:	c7 44 24 40 20 00 00 	mov    DWORD PTR [rsp+0x40],0x20
   1400063f9:	00 
   1400063fa:	e9 5c fe ff ff       	jmp    14000625b <__gdtoa+0x14db>
   1400063ff:	c7 44 24 24 00 00 00 	mov    DWORD PTR [rsp+0x24],0x0
   140006406:	00 
   140006407:	45 8d 44 24 01       	lea    r8d,[r12+0x1]
   14000640c:	e9 5f fc ff ff       	jmp    140006070 <__gdtoa+0x12f0>
   140006411:	c7 44 24 24 10 00 00 	mov    DWORD PTR [rsp+0x24],0x10
   140006418:	00 
   140006419:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
   14000641e:	e9 4d fc ff ff       	jmp    140006070 <__gdtoa+0x12f0>
   140006423:	8b 44 24 40          	mov    eax,DWORD PTR [rsp+0x40]
   140006427:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
   14000642b:	e9 4c fb ff ff       	jmp    140005f7c <__gdtoa+0x11fc>
   140006430:	41 83 7f 14 01       	cmp    DWORD PTR [r15+0x14],0x1
   140006435:	7e 0a                	jle    140006441 <__gdtoa+0x16c1>
   140006437:	b8 10 00 00 00       	mov    eax,0x10
   14000643c:	e9 b3 f6 ff ff       	jmp    140005af4 <__gdtoa+0xd74>
   140006441:	41 83 7f 18 00       	cmp    DWORD PTR [r15+0x18],0x0
   140006446:	ba 10 00 00 00       	mov    edx,0x10
   14000644b:	0f 45 c2             	cmovne eax,edx
   14000644e:	e9 a1 f6 ff ff       	jmp    140005af4 <__gdtoa+0xd74>
   140006453:	89 e8                	mov    eax,ebp
   140006455:	e9 53 f5 ff ff       	jmp    1400059ad <__gdtoa+0xc2d>
   14000645a:	90                   	nop
   14000645b:	90                   	nop
   14000645c:	90                   	nop
   14000645d:	90                   	nop
   14000645e:	90                   	nop
   14000645f:	90                   	nop

0000000140006460 <__rshift_D2A>:
   140006460:	41 54                	push   r12
   140006462:	55                   	push   rbp
   140006463:	57                   	push   rdi
   140006464:	56                   	push   rsi
   140006465:	53                   	push   rbx
   140006466:	48 63 59 14          	movsxd rbx,DWORD PTR [rcx+0x14]
   14000646a:	89 d5                	mov    ebp,edx
   14000646c:	49 89 ca             	mov    r10,rcx
   14000646f:	c1 fd 05             	sar    ebp,0x5
   140006472:	39 eb                	cmp    ebx,ebp
   140006474:	7e 7a                	jle    1400064f0 <__rshift_D2A+0x90>
   140006476:	4c 8d 61 18          	lea    r12,[rcx+0x18]
   14000647a:	48 63 ed             	movsxd rbp,ebp
   14000647d:	4d 8d 1c 9c          	lea    r11,[r12+rbx*4]
   140006481:	49 8d 34 ac          	lea    rsi,[r12+rbp*4]
   140006485:	83 e2 1f             	and    edx,0x1f
   140006488:	0f 84 82 00 00 00    	je     140006510 <__rshift_D2A+0xb0>
   14000648e:	8b 06                	mov    eax,DWORD PTR [rsi]
   140006490:	89 d1                	mov    ecx,edx
   140006492:	bf 20 00 00 00       	mov    edi,0x20
   140006497:	4c 8d 46 04          	lea    r8,[rsi+0x4]
   14000649b:	29 d7                	sub    edi,edx
   14000649d:	d3 e8                	shr    eax,cl
   14000649f:	41 89 c1             	mov    r9d,eax
   1400064a2:	4d 39 c3             	cmp    r11,r8
   1400064a5:	0f 86 9d 00 00 00    	jbe    140006548 <__rshift_D2A+0xe8>
   1400064ab:	4c 89 e6             	mov    rsi,r12
   1400064ae:	66 90                	xchg   ax,ax
   1400064b0:	41 8b 00             	mov    eax,DWORD PTR [r8]
   1400064b3:	89 f9                	mov    ecx,edi
   1400064b5:	48 83 c6 04          	add    rsi,0x4
   1400064b9:	49 83 c0 04          	add    r8,0x4
   1400064bd:	d3 e0                	shl    eax,cl
   1400064bf:	89 d1                	mov    ecx,edx
   1400064c1:	44 09 c8             	or     eax,r9d
   1400064c4:	89 46 fc             	mov    DWORD PTR [rsi-0x4],eax
   1400064c7:	45 8b 48 fc          	mov    r9d,DWORD PTR [r8-0x4]
   1400064cb:	41 d3 e9             	shr    r9d,cl
   1400064ce:	4d 39 c3             	cmp    r11,r8
   1400064d1:	77 dd                	ja     1400064b0 <__rshift_D2A+0x50>
   1400064d3:	48 29 eb             	sub    rbx,rbp
   1400064d6:	49 8d 44 9c fc       	lea    rax,[r12+rbx*4-0x4]
   1400064db:	44 89 08             	mov    DWORD PTR [rax],r9d
   1400064de:	45 85 c9             	test   r9d,r9d
   1400064e1:	74 4a                	je     14000652d <__rshift_D2A+0xcd>
   1400064e3:	48 83 c0 04          	add    rax,0x4
   1400064e7:	eb 44                	jmp    14000652d <__rshift_D2A+0xcd>
   1400064e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400064f0:	41 c7 42 14 00 00 00 	mov    DWORD PTR [r10+0x14],0x0
   1400064f7:	00 
   1400064f8:	41 c7 42 18 00 00 00 	mov    DWORD PTR [r10+0x18],0x0
   1400064ff:	00 
   140006500:	5b                   	pop    rbx
   140006501:	5e                   	pop    rsi
   140006502:	5f                   	pop    rdi
   140006503:	5d                   	pop    rbp
   140006504:	41 5c                	pop    r12
   140006506:	c3                   	ret    
   140006507:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000650e:	00 00 
   140006510:	4c 89 e7             	mov    rdi,r12
   140006513:	49 39 f3             	cmp    r11,rsi
   140006516:	76 d8                	jbe    1400064f0 <__rshift_D2A+0x90>
   140006518:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000651f:	00 
   140006520:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006521:	49 39 f3             	cmp    r11,rsi
   140006524:	77 fa                	ja     140006520 <__rshift_D2A+0xc0>
   140006526:	48 29 eb             	sub    rbx,rbp
   140006529:	49 8d 04 9c          	lea    rax,[r12+rbx*4]
   14000652d:	4c 29 e0             	sub    rax,r12
   140006530:	48 c1 f8 02          	sar    rax,0x2
   140006534:	41 89 42 14          	mov    DWORD PTR [r10+0x14],eax
   140006538:	85 c0                	test   eax,eax
   14000653a:	74 bc                	je     1400064f8 <__rshift_D2A+0x98>
   14000653c:	5b                   	pop    rbx
   14000653d:	5e                   	pop    rsi
   14000653e:	5f                   	pop    rdi
   14000653f:	5d                   	pop    rbp
   140006540:	41 5c                	pop    r12
   140006542:	c3                   	ret    
   140006543:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006548:	41 89 42 18          	mov    DWORD PTR [r10+0x18],eax
   14000654c:	85 c0                	test   eax,eax
   14000654e:	74 a0                	je     1400064f0 <__rshift_D2A+0x90>
   140006550:	4c 89 e0             	mov    rax,r12
   140006553:	eb 8e                	jmp    1400064e3 <__rshift_D2A+0x83>
   140006555:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000655c:	00 00 00 00 

0000000140006560 <__trailz_D2A>:
   140006560:	45 31 c0             	xor    r8d,r8d
   140006563:	48 63 51 14          	movsxd rdx,DWORD PTR [rcx+0x14]
   140006567:	48 8d 41 18          	lea    rax,[rcx+0x18]
   14000656b:	48 8d 0c 90          	lea    rcx,[rax+rdx*4]
   14000656f:	48 39 c8             	cmp    rax,rcx
   140006572:	72 19                	jb     14000658d <__trailz_D2A+0x2d>
   140006574:	eb 29                	jmp    14000659f <__trailz_D2A+0x3f>
   140006576:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000657d:	00 00 00 
   140006580:	48 83 c0 04          	add    rax,0x4
   140006584:	41 83 c0 20          	add    r8d,0x20
   140006588:	48 39 c1             	cmp    rcx,rax
   14000658b:	76 12                	jbe    14000659f <__trailz_D2A+0x3f>
   14000658d:	8b 10                	mov    edx,DWORD PTR [rax]
   14000658f:	85 d2                	test   edx,edx
   140006591:	74 ed                	je     140006580 <__trailz_D2A+0x20>
   140006593:	48 39 c1             	cmp    rcx,rax
   140006596:	76 07                	jbe    14000659f <__trailz_D2A+0x3f>
   140006598:	f3 0f bc d2          	tzcnt  edx,edx
   14000659c:	41 01 d0             	add    r8d,edx
   14000659f:	44 89 c0             	mov    eax,r8d
   1400065a2:	c3                   	ret    
   1400065a3:	90                   	nop
   1400065a4:	90                   	nop
   1400065a5:	90                   	nop
   1400065a6:	90                   	nop
   1400065a7:	90                   	nop
   1400065a8:	90                   	nop
   1400065a9:	90                   	nop
   1400065aa:	90                   	nop
   1400065ab:	90                   	nop
   1400065ac:	90                   	nop
   1400065ad:	90                   	nop
   1400065ae:	90                   	nop
   1400065af:	90                   	nop

00000001400065b0 <dtoa_lock>:
   1400065b0:	56                   	push   rsi
   1400065b1:	53                   	push   rbx
   1400065b2:	48 83 ec 28          	sub    rsp,0x28
   1400065b6:	8b 05 34 65 00 00    	mov    eax,DWORD PTR [rip+0x6534]        # 14000caf0 <dtoa_CS_init>
   1400065bc:	89 ce                	mov    esi,ecx
   1400065be:	83 f8 02             	cmp    eax,0x2
   1400065c1:	74 7b                	je     14000663e <dtoa_lock+0x8e>
   1400065c3:	85 c0                	test   eax,eax
   1400065c5:	74 39                	je     140006600 <dtoa_lock+0x50>
   1400065c7:	83 f8 01             	cmp    eax,0x1
   1400065ca:	75 23                	jne    1400065ef <dtoa_lock+0x3f>
   1400065cc:	48 8b 1d 49 6c 00 00 	mov    rbx,QWORD PTR [rip+0x6c49]        # 14000d21c <__imp_Sleep>
   1400065d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400065d8:	b9 01 00 00 00       	mov    ecx,0x1
   1400065dd:	ff d3                	call   rbx
   1400065df:	8b 05 0b 65 00 00    	mov    eax,DWORD PTR [rip+0x650b]        # 14000caf0 <dtoa_CS_init>
   1400065e5:	83 f8 01             	cmp    eax,0x1
   1400065e8:	74 ee                	je     1400065d8 <dtoa_lock+0x28>
   1400065ea:	83 f8 02             	cmp    eax,0x2
   1400065ed:	74 4f                	je     14000663e <dtoa_lock+0x8e>
   1400065ef:	48 83 c4 28          	add    rsp,0x28
   1400065f3:	5b                   	pop    rbx
   1400065f4:	5e                   	pop    rsi
   1400065f5:	c3                   	ret    
   1400065f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400065fd:	00 00 00 
   140006600:	b8 01 00 00 00       	mov    eax,0x1
   140006605:	87 05 e5 64 00 00    	xchg   DWORD PTR [rip+0x64e5],eax        # 14000caf0 <dtoa_CS_init>
   14000660b:	85 c0                	test   eax,eax
   14000660d:	75 51                	jne    140006660 <dtoa_lock+0xb0>
   14000660f:	48 8b 1d de 6b 00 00 	mov    rbx,QWORD PTR [rip+0x6bde]        # 14000d1f4 <__imp_InitializeCriticalSection>
   140006616:	48 8d 0d e3 64 00 00 	lea    rcx,[rip+0x64e3]        # 14000cb00 <dtoa_CritSec>
   14000661d:	ff d3                	call   rbx
   14000661f:	48 8d 0d 02 65 00 00 	lea    rcx,[rip+0x6502]        # 14000cb28 <dtoa_CritSec+0x28>
   140006626:	ff d3                	call   rbx
   140006628:	48 8d 0d 61 00 00 00 	lea    rcx,[rip+0x61]        # 140006690 <dtoa_lock_cleanup>
   14000662f:	e8 dc ae ff ff       	call   140001510 <atexit>
   140006634:	c7 05 b2 64 00 00 02 	mov    DWORD PTR [rip+0x64b2],0x2        # 14000caf0 <dtoa_CS_init>
   14000663b:	00 00 00 
   14000663e:	48 63 ce             	movsxd rcx,esi
   140006641:	48 8d 05 b8 64 00 00 	lea    rax,[rip+0x64b8]        # 14000cb00 <dtoa_CritSec>
   140006648:	48 8d 14 89          	lea    rdx,[rcx+rcx*4]
   14000664c:	48 8d 0c d0          	lea    rcx,[rax+rdx*8]
   140006650:	48 83 c4 28          	add    rsp,0x28
   140006654:	5b                   	pop    rbx
   140006655:	5e                   	pop    rsi
   140006656:	48 ff 25 7f 6b 00 00 	rex.W jmp QWORD PTR [rip+0x6b7f]        # 14000d1dc <__imp_EnterCriticalSection>
   14000665d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006660:	83 f8 02             	cmp    eax,0x2
   140006663:	74 1b                	je     140006680 <dtoa_lock+0xd0>
   140006665:	8b 05 85 64 00 00    	mov    eax,DWORD PTR [rip+0x6485]        # 14000caf0 <dtoa_CS_init>
   14000666b:	83 f8 01             	cmp    eax,0x1
   14000666e:	0f 84 58 ff ff ff    	je     1400065cc <dtoa_lock+0x1c>
   140006674:	e9 71 ff ff ff       	jmp    1400065ea <dtoa_lock+0x3a>
   140006679:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006680:	c7 05 66 64 00 00 02 	mov    DWORD PTR [rip+0x6466],0x2        # 14000caf0 <dtoa_CS_init>
   140006687:	00 00 00 
   14000668a:	eb b2                	jmp    14000663e <dtoa_lock+0x8e>
   14000668c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140006690 <dtoa_lock_cleanup>:
   140006690:	53                   	push   rbx
   140006691:	48 83 ec 20          	sub    rsp,0x20
   140006695:	b8 03 00 00 00       	mov    eax,0x3
   14000669a:	87 05 50 64 00 00    	xchg   DWORD PTR [rip+0x6450],eax        # 14000caf0 <dtoa_CS_init>
   1400066a0:	83 f8 02             	cmp    eax,0x2
   1400066a3:	74 0b                	je     1400066b0 <dtoa_lock_cleanup+0x20>
   1400066a5:	48 83 c4 20          	add    rsp,0x20
   1400066a9:	5b                   	pop    rbx
   1400066aa:	c3                   	ret    
   1400066ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400066b0:	48 8b 1d 1d 6b 00 00 	mov    rbx,QWORD PTR [rip+0x6b1d]        # 14000d1d4 <__IAT_start__>
   1400066b7:	48 8d 0d 42 64 00 00 	lea    rcx,[rip+0x6442]        # 14000cb00 <dtoa_CritSec>
   1400066be:	ff d3                	call   rbx
   1400066c0:	48 8d 0d 61 64 00 00 	lea    rcx,[rip+0x6461]        # 14000cb28 <dtoa_CritSec+0x28>
   1400066c7:	48 89 d8             	mov    rax,rbx
   1400066ca:	48 83 c4 20          	add    rsp,0x20
   1400066ce:	5b                   	pop    rbx
   1400066cf:	48 ff e0             	rex.W jmp rax
   1400066d2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400066d9:	00 00 00 00 
   1400066dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400066e0 <__Balloc_D2A>:
   1400066e0:	56                   	push   rsi
   1400066e1:	53                   	push   rbx
   1400066e2:	48 83 ec 38          	sub    rsp,0x38
   1400066e6:	89 cb                	mov    ebx,ecx
   1400066e8:	31 c9                	xor    ecx,ecx
   1400066ea:	e8 c1 fe ff ff       	call   1400065b0 <dtoa_lock>
   1400066ef:	83 fb 09             	cmp    ebx,0x9
   1400066f2:	7e 4c                	jle    140006740 <__Balloc_D2A+0x60>
   1400066f4:	89 d9                	mov    ecx,ebx
   1400066f6:	be 01 00 00 00       	mov    esi,0x1
   1400066fb:	d3 e6                	shl    esi,cl
   1400066fd:	8d 46 ff             	lea    eax,[rsi-0x1]
   140006700:	48 98                	cdqe   
   140006702:	48 8d 0c 85 27 00 00 	lea    rcx,[rax*4+0x27]
   140006709:	00 
   14000670a:	48 b8 f8 ff ff ff 07 	movabs rax,0x7fffffff8
   140006711:	00 00 00 
   140006714:	48 21 c1             	and    rcx,rax
   140006717:	e8 2c 0b 00 00       	call   140007248 <malloc>
   14000671c:	48 85 c0             	test   rax,rax
   14000671f:	74 17                	je     140006738 <__Balloc_D2A+0x58>
   140006721:	83 3d c8 63 00 00 02 	cmp    DWORD PTR [rip+0x63c8],0x2        # 14000caf0 <dtoa_CS_init>
   140006728:	89 58 08             	mov    DWORD PTR [rax+0x8],ebx
   14000672b:	89 70 0c             	mov    DWORD PTR [rax+0xc],esi
   14000672e:	74 33                	je     140006763 <__Balloc_D2A+0x83>
   140006730:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
   140006737:	00 
   140006738:	48 83 c4 38          	add    rsp,0x38
   14000673c:	5b                   	pop    rbx
   14000673d:	5e                   	pop    rsi
   14000673e:	c3                   	ret    
   14000673f:	90                   	nop
   140006740:	48 8d 15 59 63 00 00 	lea    rdx,[rip+0x6359]        # 14000caa0 <freelist>
   140006747:	48 63 cb             	movsxd rcx,ebx
   14000674a:	48 8b 04 ca          	mov    rax,QWORD PTR [rdx+rcx*8]
   14000674e:	48 85 c0             	test   rax,rax
   140006751:	74 2d                	je     140006780 <__Balloc_D2A+0xa0>
   140006753:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   140006756:	83 3d 93 63 00 00 02 	cmp    DWORD PTR [rip+0x6393],0x2        # 14000caf0 <dtoa_CS_init>
   14000675d:	4c 89 04 ca          	mov    QWORD PTR [rdx+rcx*8],r8
   140006761:	75 cd                	jne    140006730 <__Balloc_D2A+0x50>
   140006763:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   140006768:	48 8d 0d 91 63 00 00 	lea    rcx,[rip+0x6391]        # 14000cb00 <dtoa_CritSec>
   14000676f:	ff 15 8f 6a 00 00    	call   QWORD PTR [rip+0x6a8f]        # 14000d204 <__imp_LeaveCriticalSection>
   140006775:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   14000677a:	eb b4                	jmp    140006730 <__Balloc_D2A+0x50>
   14000677c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006780:	89 d9                	mov    ecx,ebx
   140006782:	be 01 00 00 00       	mov    esi,0x1
   140006787:	48 8b 05 f2 18 00 00 	mov    rax,QWORD PTR [rip+0x18f2]        # 140008080 <pmem_next>
   14000678e:	d3 e6                	shl    esi,cl
   140006790:	48 8d 0d 09 5a 00 00 	lea    rcx,[rip+0x5a09]        # 14000c1a0 <private_mem>
   140006797:	8d 56 ff             	lea    edx,[rsi-0x1]
   14000679a:	49 89 c1             	mov    r9,rax
   14000679d:	48 63 d2             	movsxd rdx,edx
   1400067a0:	49 29 c9             	sub    r9,rcx
   1400067a3:	48 8d 14 95 27 00 00 	lea    rdx,[rdx*4+0x27]
   1400067aa:	00 
   1400067ab:	4c 89 c9             	mov    rcx,r9
   1400067ae:	48 c1 ea 03          	shr    rdx,0x3
   1400067b2:	48 c1 f9 03          	sar    rcx,0x3
   1400067b6:	89 d2                	mov    edx,edx
   1400067b8:	48 01 d1             	add    rcx,rdx
   1400067bb:	48 81 f9 20 01 00 00 	cmp    rcx,0x120
   1400067c2:	0f 87 2c ff ff ff    	ja     1400066f4 <__Balloc_D2A+0x14>
   1400067c8:	48 8d 14 d0          	lea    rdx,[rax+rdx*8]
   1400067cc:	48 89 15 ad 18 00 00 	mov    QWORD PTR [rip+0x18ad],rdx        # 140008080 <pmem_next>
   1400067d3:	e9 49 ff ff ff       	jmp    140006721 <__Balloc_D2A+0x41>
   1400067d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400067df:	00 

00000001400067e0 <__Bfree_D2A>:
   1400067e0:	41 54                	push   r12
   1400067e2:	48 83 ec 20          	sub    rsp,0x20
   1400067e6:	49 89 cc             	mov    r12,rcx
   1400067e9:	48 85 c9             	test   rcx,rcx
   1400067ec:	74 3a                	je     140006828 <__Bfree_D2A+0x48>
   1400067ee:	83 79 08 09          	cmp    DWORD PTR [rcx+0x8],0x9
   1400067f2:	7e 0c                	jle    140006800 <__Bfree_D2A+0x20>
   1400067f4:	48 83 c4 20          	add    rsp,0x20
   1400067f8:	41 5c                	pop    r12
   1400067fa:	e9 61 0a 00 00       	jmp    140007260 <free>
   1400067ff:	90                   	nop
   140006800:	31 c9                	xor    ecx,ecx
   140006802:	e8 a9 fd ff ff       	call   1400065b0 <dtoa_lock>
   140006807:	49 63 54 24 08       	movsxd rdx,DWORD PTR [r12+0x8]
   14000680c:	48 8d 05 8d 62 00 00 	lea    rax,[rip+0x628d]        # 14000caa0 <freelist>
   140006813:	83 3d d6 62 00 00 02 	cmp    DWORD PTR [rip+0x62d6],0x2        # 14000caf0 <dtoa_CS_init>
   14000681a:	48 8b 0c d0          	mov    rcx,QWORD PTR [rax+rdx*8]
   14000681e:	4c 89 24 d0          	mov    QWORD PTR [rax+rdx*8],r12
   140006822:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
   140006826:	74 08                	je     140006830 <__Bfree_D2A+0x50>
   140006828:	48 83 c4 20          	add    rsp,0x20
   14000682c:	41 5c                	pop    r12
   14000682e:	c3                   	ret    
   14000682f:	90                   	nop
   140006830:	48 8d 0d c9 62 00 00 	lea    rcx,[rip+0x62c9]        # 14000cb00 <dtoa_CritSec>
   140006837:	48 83 c4 20          	add    rsp,0x20
   14000683b:	41 5c                	pop    r12
   14000683d:	48 ff 25 c0 69 00 00 	rex.W jmp QWORD PTR [rip+0x69c0]        # 14000d204 <__imp_LeaveCriticalSection>
   140006844:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000684b:	00 00 00 00 
   14000684f:	90                   	nop

0000000140006850 <__multadd_D2A>:
   140006850:	41 55                	push   r13
   140006852:	41 54                	push   r12
   140006854:	56                   	push   rsi
   140006855:	53                   	push   rbx
   140006856:	48 83 ec 28          	sub    rsp,0x28
   14000685a:	8b 71 14             	mov    esi,DWORD PTR [rcx+0x14]
   14000685d:	49 89 cc             	mov    r12,rcx
   140006860:	49 63 d8             	movsxd rbx,r8d
   140006863:	48 63 d2             	movsxd rdx,edx
   140006866:	31 c9                	xor    ecx,ecx
   140006868:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000686f:	00 
   140006870:	41 8b 44 8c 18       	mov    eax,DWORD PTR [r12+rcx*4+0x18]
   140006875:	48 0f af c2          	imul   rax,rdx
   140006879:	48 01 d8             	add    rax,rbx
   14000687c:	41 89 44 8c 18       	mov    DWORD PTR [r12+rcx*4+0x18],eax
   140006881:	48 89 c3             	mov    rbx,rax
   140006884:	48 83 c1 01          	add    rcx,0x1
   140006888:	48 c1 eb 20          	shr    rbx,0x20
   14000688c:	39 ce                	cmp    esi,ecx
   14000688e:	7f e0                	jg     140006870 <__multadd_D2A+0x20>
   140006890:	4d 89 e5             	mov    r13,r12
   140006893:	48 85 db             	test   rbx,rbx
   140006896:	74 1a                	je     1400068b2 <__multadd_D2A+0x62>
   140006898:	41 39 74 24 0c       	cmp    DWORD PTR [r12+0xc],esi
   14000689d:	7e 21                	jle    1400068c0 <__multadd_D2A+0x70>
   14000689f:	48 63 c6             	movsxd rax,esi
   1400068a2:	83 c6 01             	add    esi,0x1
   1400068a5:	4d 89 e5             	mov    r13,r12
   1400068a8:	41 89 5c 84 18       	mov    DWORD PTR [r12+rax*4+0x18],ebx
   1400068ad:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   1400068b2:	4c 89 e8             	mov    rax,r13
   1400068b5:	48 83 c4 28          	add    rsp,0x28
   1400068b9:	5b                   	pop    rbx
   1400068ba:	5e                   	pop    rsi
   1400068bb:	41 5c                	pop    r12
   1400068bd:	41 5d                	pop    r13
   1400068bf:	c3                   	ret    
   1400068c0:	41 8b 44 24 08       	mov    eax,DWORD PTR [r12+0x8]
   1400068c5:	8d 48 01             	lea    ecx,[rax+0x1]
   1400068c8:	e8 13 fe ff ff       	call   1400066e0 <__Balloc_D2A>
   1400068cd:	49 89 c5             	mov    r13,rax
   1400068d0:	48 85 c0             	test   rax,rax
   1400068d3:	74 dd                	je     1400068b2 <__multadd_D2A+0x62>
   1400068d5:	48 8d 48 10          	lea    rcx,[rax+0x10]
   1400068d9:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
   1400068de:	49 8d 54 24 10       	lea    rdx,[r12+0x10]
   1400068e3:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   1400068ea:	00 
   1400068eb:	e8 50 09 00 00       	call   140007240 <memcpy>
   1400068f0:	4c 89 e1             	mov    rcx,r12
   1400068f3:	4d 89 ec             	mov    r12,r13
   1400068f6:	e8 e5 fe ff ff       	call   1400067e0 <__Bfree_D2A>
   1400068fb:	eb a2                	jmp    14000689f <__multadd_D2A+0x4f>
   1400068fd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006900 <__i2b_D2A>:
   140006900:	53                   	push   rbx
   140006901:	48 83 ec 20          	sub    rsp,0x20
   140006905:	89 cb                	mov    ebx,ecx
   140006907:	b9 01 00 00 00       	mov    ecx,0x1
   14000690c:	e8 cf fd ff ff       	call   1400066e0 <__Balloc_D2A>
   140006911:	48 85 c0             	test   rax,rax
   140006914:	74 0a                	je     140006920 <__i2b_D2A+0x20>
   140006916:	89 58 18             	mov    DWORD PTR [rax+0x18],ebx
   140006919:	c7 40 14 01 00 00 00 	mov    DWORD PTR [rax+0x14],0x1
   140006920:	48 83 c4 20          	add    rsp,0x20
   140006924:	5b                   	pop    rbx
   140006925:	c3                   	ret    
   140006926:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000692d:	00 00 00 

0000000140006930 <__mult_D2A>:
   140006930:	41 57                	push   r15
   140006932:	41 56                	push   r14
   140006934:	41 55                	push   r13
   140006936:	41 54                	push   r12
   140006938:	55                   	push   rbp
   140006939:	57                   	push   rdi
   14000693a:	56                   	push   rsi
   14000693b:	53                   	push   rbx
   14000693c:	48 83 ec 28          	sub    rsp,0x28
   140006940:	48 63 69 14          	movsxd rbp,DWORD PTR [rcx+0x14]
   140006944:	48 63 7a 14          	movsxd rdi,DWORD PTR [rdx+0x14]
   140006948:	49 89 cd             	mov    r13,rcx
   14000694b:	49 89 d7             	mov    r15,rdx
   14000694e:	39 fd                	cmp    ebp,edi
   140006950:	7c 0e                	jl     140006960 <__mult_D2A+0x30>
   140006952:	89 f8                	mov    eax,edi
   140006954:	49 89 cf             	mov    r15,rcx
   140006957:	48 63 fd             	movsxd rdi,ebp
   14000695a:	49 89 d5             	mov    r13,rdx
   14000695d:	48 63 e8             	movsxd rbp,eax
   140006960:	31 c9                	xor    ecx,ecx
   140006962:	8d 1c 2f             	lea    ebx,[rdi+rbp*1]
   140006965:	41 39 5f 0c          	cmp    DWORD PTR [r15+0xc],ebx
   140006969:	0f 9c c1             	setl   cl
   14000696c:	41 03 4f 08          	add    ecx,DWORD PTR [r15+0x8]
   140006970:	e8 6b fd ff ff       	call   1400066e0 <__Balloc_D2A>
   140006975:	49 89 c4             	mov    r12,rax
   140006978:	48 85 c0             	test   rax,rax
   14000697b:	0f 84 e4 00 00 00    	je     140006a65 <__mult_D2A+0x135>
   140006981:	48 8d 70 18          	lea    rsi,[rax+0x18]
   140006985:	48 63 c3             	movsxd rax,ebx
   140006988:	48 8d 04 86          	lea    rax,[rsi+rax*4]
   14000698c:	48 89 f1             	mov    rcx,rsi
   14000698f:	48 39 c6             	cmp    rsi,rax
   140006992:	73 13                	jae    1400069a7 <__mult_D2A+0x77>
   140006994:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006998:	c7 01 00 00 00 00    	mov    DWORD PTR [rcx],0x0
   14000699e:	48 83 c1 04          	add    rcx,0x4
   1400069a2:	48 39 c8             	cmp    rax,rcx
   1400069a5:	77 f1                	ja     140006998 <__mult_D2A+0x68>
   1400069a7:	4d 8d 55 18          	lea    r10,[r13+0x18]
   1400069ab:	4d 8d 77 18          	lea    r14,[r15+0x18]
   1400069af:	49 8d 2c aa          	lea    rbp,[r10+rbp*4]
   1400069b3:	49 8d 3c be          	lea    rdi,[r14+rdi*4]
   1400069b7:	49 39 ea             	cmp    r10,rbp
   1400069ba:	0f 83 84 00 00 00    	jae    140006a44 <__mult_D2A+0x114>
   1400069c0:	48 89 fa             	mov    rdx,rdi
   1400069c3:	4c 29 fa             	sub    rdx,r15
   1400069c6:	49 83 c7 19          	add    r15,0x19
   1400069ca:	48 83 ea 19          	sub    rdx,0x19
   1400069ce:	48 c1 ea 02          	shr    rdx,0x2
   1400069d2:	4c 39 ff             	cmp    rdi,r15
   1400069d5:	4c 8d 2c 95 04 00 00 	lea    r13,[rdx*4+0x4]
   1400069dc:	00 
   1400069dd:	ba 04 00 00 00       	mov    edx,0x4
   1400069e2:	4c 0f 42 ea          	cmovb  r13,rdx
   1400069e6:	eb 11                	jmp    1400069f9 <__mult_D2A+0xc9>
   1400069e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400069ef:	00 
   1400069f0:	48 83 c6 04          	add    rsi,0x4
   1400069f4:	4c 39 d5             	cmp    rbp,r10
   1400069f7:	76 4b                	jbe    140006a44 <__mult_D2A+0x114>
   1400069f9:	45 8b 1a             	mov    r11d,DWORD PTR [r10]
   1400069fc:	49 83 c2 04          	add    r10,0x4
   140006a00:	45 85 db             	test   r11d,r11d
   140006a03:	74 eb                	je     1400069f0 <__mult_D2A+0xc0>
   140006a05:	49 89 f0             	mov    r8,rsi
   140006a08:	4c 89 f1             	mov    rcx,r14
   140006a0b:	45 31 c9             	xor    r9d,r9d
   140006a0e:	66 90                	xchg   ax,ax
   140006a10:	8b 11                	mov    edx,DWORD PTR [rcx]
   140006a12:	45 8b 38             	mov    r15d,DWORD PTR [r8]
   140006a15:	48 83 c1 04          	add    rcx,0x4
   140006a19:	49 83 c0 04          	add    r8,0x4
   140006a1d:	49 0f af d3          	imul   rdx,r11
   140006a21:	4c 01 fa             	add    rdx,r15
   140006a24:	4c 01 ca             	add    rdx,r9
   140006a27:	49 89 d1             	mov    r9,rdx
   140006a2a:	41 89 50 fc          	mov    DWORD PTR [r8-0x4],edx
   140006a2e:	49 c1 e9 20          	shr    r9,0x20
   140006a32:	48 39 cf             	cmp    rdi,rcx
   140006a35:	77 d9                	ja     140006a10 <__mult_D2A+0xe0>
   140006a37:	46 89 0c 2e          	mov    DWORD PTR [rsi+r13*1],r9d
   140006a3b:	48 83 c6 04          	add    rsi,0x4
   140006a3f:	4c 39 d5             	cmp    rbp,r10
   140006a42:	77 b5                	ja     1400069f9 <__mult_D2A+0xc9>
   140006a44:	85 db                	test   ebx,ebx
   140006a46:	7f 0d                	jg     140006a55 <__mult_D2A+0x125>
   140006a48:	eb 16                	jmp    140006a60 <__mult_D2A+0x130>
   140006a4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006a50:	83 eb 01             	sub    ebx,0x1
   140006a53:	74 0b                	je     140006a60 <__mult_D2A+0x130>
   140006a55:	8b 50 fc             	mov    edx,DWORD PTR [rax-0x4]
   140006a58:	48 83 e8 04          	sub    rax,0x4
   140006a5c:	85 d2                	test   edx,edx
   140006a5e:	74 f0                	je     140006a50 <__mult_D2A+0x120>
   140006a60:	41 89 5c 24 14       	mov    DWORD PTR [r12+0x14],ebx
   140006a65:	4c 89 e0             	mov    rax,r12
   140006a68:	48 83 c4 28          	add    rsp,0x28
   140006a6c:	5b                   	pop    rbx
   140006a6d:	5e                   	pop    rsi
   140006a6e:	5f                   	pop    rdi
   140006a6f:	5d                   	pop    rbp
   140006a70:	41 5c                	pop    r12
   140006a72:	41 5d                	pop    r13
   140006a74:	41 5e                	pop    r14
   140006a76:	41 5f                	pop    r15
   140006a78:	c3                   	ret    
   140006a79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140006a80 <__pow5mult_D2A>:
   140006a80:	41 55                	push   r13
   140006a82:	41 54                	push   r12
   140006a84:	57                   	push   rdi
   140006a85:	56                   	push   rsi
   140006a86:	53                   	push   rbx
   140006a87:	48 83 ec 20          	sub    rsp,0x20
   140006a8b:	89 d0                	mov    eax,edx
   140006a8d:	49 89 cd             	mov    r13,rcx
   140006a90:	89 d3                	mov    ebx,edx
   140006a92:	83 e0 03             	and    eax,0x3
   140006a95:	0f 85 c5 00 00 00    	jne    140006b60 <__pow5mult_D2A+0xe0>
   140006a9b:	c1 fb 02             	sar    ebx,0x2
   140006a9e:	4d 89 ec             	mov    r12,r13
   140006aa1:	74 57                	je     140006afa <__pow5mult_D2A+0x7a>
   140006aa3:	48 8b 3d d6 56 00 00 	mov    rdi,QWORD PTR [rip+0x56d6]        # 14000c180 <p5s>
   140006aaa:	48 85 ff             	test   rdi,rdi
   140006aad:	0f 84 e2 00 00 00    	je     140006b95 <__pow5mult_D2A+0x115>
   140006ab3:	4d 89 ec             	mov    r12,r13
   140006ab6:	4c 8d 2d 6b 60 00 00 	lea    r13,[rip+0x606b]        # 14000cb28 <dtoa_CritSec+0x28>
   140006abd:	eb 10                	jmp    140006acf <__pow5mult_D2A+0x4f>
   140006abf:	90                   	nop
   140006ac0:	d1 fb                	sar    ebx,1
   140006ac2:	74 36                	je     140006afa <__pow5mult_D2A+0x7a>
   140006ac4:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006ac7:	48 85 f6             	test   rsi,rsi
   140006aca:	74 44                	je     140006b10 <__pow5mult_D2A+0x90>
   140006acc:	48 89 f7             	mov    rdi,rsi
   140006acf:	f6 c3 01             	test   bl,0x1
   140006ad2:	74 ec                	je     140006ac0 <__pow5mult_D2A+0x40>
   140006ad4:	48 89 fa             	mov    rdx,rdi
   140006ad7:	4c 89 e1             	mov    rcx,r12
   140006ada:	e8 51 fe ff ff       	call   140006930 <__mult_D2A>
   140006adf:	48 89 c6             	mov    rsi,rax
   140006ae2:	48 85 c0             	test   rax,rax
   140006ae5:	0f 84 98 00 00 00    	je     140006b83 <__pow5mult_D2A+0x103>
   140006aeb:	4c 89 e1             	mov    rcx,r12
   140006aee:	49 89 f4             	mov    r12,rsi
   140006af1:	e8 ea fc ff ff       	call   1400067e0 <__Bfree_D2A>
   140006af6:	d1 fb                	sar    ebx,1
   140006af8:	75 ca                	jne    140006ac4 <__pow5mult_D2A+0x44>
   140006afa:	4c 89 e0             	mov    rax,r12
   140006afd:	48 83 c4 20          	add    rsp,0x20
   140006b01:	5b                   	pop    rbx
   140006b02:	5e                   	pop    rsi
   140006b03:	5f                   	pop    rdi
   140006b04:	41 5c                	pop    r12
   140006b06:	41 5d                	pop    r13
   140006b08:	c3                   	ret    
   140006b09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006b10:	b9 01 00 00 00       	mov    ecx,0x1
   140006b15:	e8 96 fa ff ff       	call   1400065b0 <dtoa_lock>
   140006b1a:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006b1d:	48 85 f6             	test   rsi,rsi
   140006b20:	74 1e                	je     140006b40 <__pow5mult_D2A+0xc0>
   140006b22:	83 3d c7 5f 00 00 02 	cmp    DWORD PTR [rip+0x5fc7],0x2        # 14000caf0 <dtoa_CS_init>
   140006b29:	75 a1                	jne    140006acc <__pow5mult_D2A+0x4c>
   140006b2b:	4c 89 e9             	mov    rcx,r13
   140006b2e:	ff 15 d0 66 00 00    	call   QWORD PTR [rip+0x66d0]        # 14000d204 <__imp_LeaveCriticalSection>
   140006b34:	eb 96                	jmp    140006acc <__pow5mult_D2A+0x4c>
   140006b36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140006b3d:	00 00 00 
   140006b40:	48 89 fa             	mov    rdx,rdi
   140006b43:	48 89 f9             	mov    rcx,rdi
   140006b46:	e8 e5 fd ff ff       	call   140006930 <__mult_D2A>
   140006b4b:	48 89 07             	mov    QWORD PTR [rdi],rax
   140006b4e:	48 89 c6             	mov    rsi,rax
   140006b51:	48 85 c0             	test   rax,rax
   140006b54:	74 2d                	je     140006b83 <__pow5mult_D2A+0x103>
   140006b56:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   140006b5d:	eb c3                	jmp    140006b22 <__pow5mult_D2A+0xa2>
   140006b5f:	90                   	nop
   140006b60:	83 e8 01             	sub    eax,0x1
   140006b63:	48 8d 15 b6 29 00 00 	lea    rdx,[rip+0x29b6]        # 140009520 <p05.57590>
   140006b6a:	45 31 c0             	xor    r8d,r8d
   140006b6d:	48 98                	cdqe   
   140006b6f:	8b 14 82             	mov    edx,DWORD PTR [rdx+rax*4]
   140006b72:	e8 d9 fc ff ff       	call   140006850 <__multadd_D2A>
   140006b77:	49 89 c5             	mov    r13,rax
   140006b7a:	48 85 c0             	test   rax,rax
   140006b7d:	0f 85 18 ff ff ff    	jne    140006a9b <__pow5mult_D2A+0x1b>
   140006b83:	45 31 e4             	xor    r12d,r12d
   140006b86:	4c 89 e0             	mov    rax,r12
   140006b89:	48 83 c4 20          	add    rsp,0x20
   140006b8d:	5b                   	pop    rbx
   140006b8e:	5e                   	pop    rsi
   140006b8f:	5f                   	pop    rdi
   140006b90:	41 5c                	pop    r12
   140006b92:	41 5d                	pop    r13
   140006b94:	c3                   	ret    
   140006b95:	b9 01 00 00 00       	mov    ecx,0x1
   140006b9a:	e8 11 fa ff ff       	call   1400065b0 <dtoa_lock>
   140006b9f:	48 8b 3d da 55 00 00 	mov    rdi,QWORD PTR [rip+0x55da]        # 14000c180 <p5s>
   140006ba6:	48 85 ff             	test   rdi,rdi
   140006ba9:	74 1f                	je     140006bca <__pow5mult_D2A+0x14a>
   140006bab:	83 3d 3e 5f 00 00 02 	cmp    DWORD PTR [rip+0x5f3e],0x2        # 14000caf0 <dtoa_CS_init>
   140006bb2:	0f 85 fb fe ff ff    	jne    140006ab3 <__pow5mult_D2A+0x33>
   140006bb8:	48 8d 0d 69 5f 00 00 	lea    rcx,[rip+0x5f69]        # 14000cb28 <dtoa_CritSec+0x28>
   140006bbf:	ff 15 3f 66 00 00    	call   QWORD PTR [rip+0x663f]        # 14000d204 <__imp_LeaveCriticalSection>
   140006bc5:	e9 e9 fe ff ff       	jmp    140006ab3 <__pow5mult_D2A+0x33>
   140006bca:	b9 01 00 00 00       	mov    ecx,0x1
   140006bcf:	e8 0c fb ff ff       	call   1400066e0 <__Balloc_D2A>
   140006bd4:	48 89 c7             	mov    rdi,rax
   140006bd7:	48 85 c0             	test   rax,rax
   140006bda:	74 1e                	je     140006bfa <__pow5mult_D2A+0x17a>
   140006bdc:	48 b8 01 00 00 00 71 	movabs rax,0x27100000001
   140006be3:	02 00 00 
   140006be6:	48 89 3d 93 55 00 00 	mov    QWORD PTR [rip+0x5593],rdi        # 14000c180 <p5s>
   140006bed:	48 89 47 14          	mov    QWORD PTR [rdi+0x14],rax
   140006bf1:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
   140006bf8:	eb b1                	jmp    140006bab <__pow5mult_D2A+0x12b>
   140006bfa:	48 c7 05 7b 55 00 00 	mov    QWORD PTR [rip+0x557b],0x0        # 14000c180 <p5s>
   140006c01:	00 00 00 00 
   140006c05:	45 31 e4             	xor    r12d,r12d
   140006c08:	e9 ed fe ff ff       	jmp    140006afa <__pow5mult_D2A+0x7a>
   140006c0d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006c10 <__lshift_D2A>:
   140006c10:	41 56                	push   r14
   140006c12:	41 55                	push   r13
   140006c14:	41 54                	push   r12
   140006c16:	55                   	push   rbp
   140006c17:	57                   	push   rdi
   140006c18:	56                   	push   rsi
   140006c19:	53                   	push   rbx
   140006c1a:	48 83 ec 20          	sub    rsp,0x20
   140006c1e:	49 89 cc             	mov    r12,rcx
   140006c21:	89 d6                	mov    esi,edx
   140006c23:	8b 49 08             	mov    ecx,DWORD PTR [rcx+0x8]
   140006c26:	41 89 d6             	mov    r14d,edx
   140006c29:	41 8b 5c 24 14       	mov    ebx,DWORD PTR [r12+0x14]
   140006c2e:	c1 fe 05             	sar    esi,0x5
   140006c31:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140006c36:	01 f3                	add    ebx,esi
   140006c38:	8d 6b 01             	lea    ebp,[rbx+0x1]
   140006c3b:	39 c5                	cmp    ebp,eax
   140006c3d:	7e 0a                	jle    140006c49 <__lshift_D2A+0x39>
   140006c3f:	90                   	nop
   140006c40:	01 c0                	add    eax,eax
   140006c42:	83 c1 01             	add    ecx,0x1
   140006c45:	39 c5                	cmp    ebp,eax
   140006c47:	7f f7                	jg     140006c40 <__lshift_D2A+0x30>
   140006c49:	e8 92 fa ff ff       	call   1400066e0 <__Balloc_D2A>
   140006c4e:	49 89 c5             	mov    r13,rax
   140006c51:	48 85 c0             	test   rax,rax
   140006c54:	0f 84 ba 00 00 00    	je     140006d14 <__lshift_D2A+0x104>
   140006c5a:	48 8d 78 18          	lea    rdi,[rax+0x18]
   140006c5e:	85 f6                	test   esi,esi
   140006c60:	7e 24                	jle    140006c86 <__lshift_D2A+0x76>
   140006c62:	8d 56 ff             	lea    edx,[rsi-0x1]
   140006c65:	49 89 f8             	mov    r8,rdi
   140006c68:	48 8d 44 90 1c       	lea    rax,[rax+rdx*4+0x1c]
   140006c6d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006c70:	49 83 c0 04          	add    r8,0x4
   140006c74:	41 c7 40 fc 00 00 00 	mov    DWORD PTR [r8-0x4],0x0
   140006c7b:	00 
   140006c7c:	49 39 c0             	cmp    r8,rax
   140006c7f:	75 ef                	jne    140006c70 <__lshift_D2A+0x60>
   140006c81:	48 8d 7c 97 04       	lea    rdi,[rdi+rdx*4+0x4]
   140006c86:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
   140006c8b:	49 8d 74 24 18       	lea    rsi,[r12+0x18]
   140006c90:	48 8d 04 86          	lea    rax,[rsi+rax*4]
   140006c94:	41 83 e6 1f          	and    r14d,0x1f
   140006c98:	0f 84 92 00 00 00    	je     140006d30 <__lshift_D2A+0x120>
   140006c9e:	41 ba 20 00 00 00    	mov    r10d,0x20
   140006ca4:	49 89 f9             	mov    r9,rdi
   140006ca7:	45 31 c0             	xor    r8d,r8d
   140006caa:	45 29 f2             	sub    r10d,r14d
   140006cad:	0f 1f 00             	nop    DWORD PTR [rax]
   140006cb0:	8b 16                	mov    edx,DWORD PTR [rsi]
   140006cb2:	44 89 f1             	mov    ecx,r14d
   140006cb5:	49 83 c1 04          	add    r9,0x4
   140006cb9:	48 83 c6 04          	add    rsi,0x4
   140006cbd:	d3 e2                	shl    edx,cl
   140006cbf:	89 d1                	mov    ecx,edx
   140006cc1:	44 09 c1             	or     ecx,r8d
   140006cc4:	41 89 49 fc          	mov    DWORD PTR [r9-0x4],ecx
   140006cc8:	44 8b 46 fc          	mov    r8d,DWORD PTR [rsi-0x4]
   140006ccc:	44 89 d1             	mov    ecx,r10d
   140006ccf:	41 d3 e8             	shr    r8d,cl
   140006cd2:	48 39 f0             	cmp    rax,rsi
   140006cd5:	77 d9                	ja     140006cb0 <__lshift_D2A+0xa0>
   140006cd7:	48 89 c2             	mov    rdx,rax
   140006cda:	49 8d 4c 24 19       	lea    rcx,[r12+0x19]
   140006cdf:	4c 29 e2             	sub    rdx,r12
   140006ce2:	48 83 ea 19          	sub    rdx,0x19
   140006ce6:	48 c1 ea 02          	shr    rdx,0x2
   140006cea:	48 39 c8             	cmp    rax,rcx
   140006ced:	b8 04 00 00 00       	mov    eax,0x4
   140006cf2:	48 8d 14 95 04 00 00 	lea    rdx,[rdx*4+0x4]
   140006cf9:	00 
   140006cfa:	48 0f 42 d0          	cmovb  rdx,rax
   140006cfe:	45 85 c0             	test   r8d,r8d
   140006d01:	0f 45 dd             	cmovne ebx,ebp
   140006d04:	44 89 04 17          	mov    DWORD PTR [rdi+rdx*1],r8d
   140006d08:	41 89 5d 14          	mov    DWORD PTR [r13+0x14],ebx
   140006d0c:	4c 89 e1             	mov    rcx,r12
   140006d0f:	e8 cc fa ff ff       	call   1400067e0 <__Bfree_D2A>
   140006d14:	4c 89 e8             	mov    rax,r13
   140006d17:	48 83 c4 20          	add    rsp,0x20
   140006d1b:	5b                   	pop    rbx
   140006d1c:	5e                   	pop    rsi
   140006d1d:	5f                   	pop    rdi
   140006d1e:	5d                   	pop    rbp
   140006d1f:	41 5c                	pop    r12
   140006d21:	41 5d                	pop    r13
   140006d23:	41 5e                	pop    r14
   140006d25:	c3                   	ret    
   140006d26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140006d2d:	00 00 00 
   140006d30:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006d31:	48 39 f0             	cmp    rax,rsi
   140006d34:	76 d2                	jbe    140006d08 <__lshift_D2A+0xf8>
   140006d36:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006d37:	48 39 f0             	cmp    rax,rsi
   140006d3a:	77 f4                	ja     140006d30 <__lshift_D2A+0x120>
   140006d3c:	eb ca                	jmp    140006d08 <__lshift_D2A+0xf8>
   140006d3e:	66 90                	xchg   ax,ax

0000000140006d40 <__cmp_D2A>:
   140006d40:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140006d44:	44 8b 49 14          	mov    r9d,DWORD PTR [rcx+0x14]
   140006d48:	41 29 c1             	sub    r9d,eax
   140006d4b:	75 37                	jne    140006d84 <__cmp_D2A+0x44>
   140006d4d:	4c 8d 04 85 00 00 00 	lea    r8,[rax*4+0x0]
   140006d54:	00 
   140006d55:	48 83 c1 18          	add    rcx,0x18
   140006d59:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
   140006d5d:	4a 8d 54 02 18       	lea    rdx,[rdx+r8*1+0x18]
   140006d62:	eb 09                	jmp    140006d6d <__cmp_D2A+0x2d>
   140006d64:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006d68:	48 39 c1             	cmp    rcx,rax
   140006d6b:	73 17                	jae    140006d84 <__cmp_D2A+0x44>
   140006d6d:	48 83 e8 04          	sub    rax,0x4
   140006d71:	48 83 ea 04          	sub    rdx,0x4
   140006d75:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
   140006d78:	44 39 10             	cmp    DWORD PTR [rax],r10d
   140006d7b:	74 eb                	je     140006d68 <__cmp_D2A+0x28>
   140006d7d:	45 19 c9             	sbb    r9d,r9d
   140006d80:	41 83 c9 01          	or     r9d,0x1
   140006d84:	44 89 c8             	mov    eax,r9d
   140006d87:	c3                   	ret    
   140006d88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006d8f:	00 

0000000140006d90 <__diff_D2A>:
   140006d90:	41 55                	push   r13
   140006d92:	41 54                	push   r12
   140006d94:	55                   	push   rbp
   140006d95:	57                   	push   rdi
   140006d96:	56                   	push   rsi
   140006d97:	53                   	push   rbx
   140006d98:	48 83 ec 28          	sub    rsp,0x28
   140006d9c:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140006da0:	8b 79 14             	mov    edi,DWORD PTR [rcx+0x14]
   140006da3:	48 89 ce             	mov    rsi,rcx
   140006da6:	48 89 d3             	mov    rbx,rdx
   140006da9:	29 c7                	sub    edi,eax
   140006dab:	0f 85 5f 01 00 00    	jne    140006f10 <__diff_D2A+0x180>
   140006db1:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   140006db8:	00 
   140006db9:	48 8d 49 18          	lea    rcx,[rcx+0x18]
   140006dbd:	48 8d 04 11          	lea    rax,[rcx+rdx*1]
   140006dc1:	48 8d 54 13 18       	lea    rdx,[rbx+rdx*1+0x18]
   140006dc6:	eb 11                	jmp    140006dd9 <__diff_D2A+0x49>
   140006dc8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006dcf:	00 
   140006dd0:	48 39 c1             	cmp    rcx,rax
   140006dd3:	0f 83 57 01 00 00    	jae    140006f30 <__diff_D2A+0x1a0>
   140006dd9:	48 83 e8 04          	sub    rax,0x4
   140006ddd:	48 83 ea 04          	sub    rdx,0x4
   140006de1:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
   140006de4:	44 39 10             	cmp    DWORD PTR [rax],r10d
   140006de7:	74 e7                	je     140006dd0 <__diff_D2A+0x40>
   140006de9:	0f 82 2c 01 00 00    	jb     140006f1b <__diff_D2A+0x18b>
   140006def:	8b 4e 08             	mov    ecx,DWORD PTR [rsi+0x8]
   140006df2:	e8 e9 f8 ff ff       	call   1400066e0 <__Balloc_D2A>
   140006df7:	48 85 c0             	test   rax,rax
   140006dfa:	0f 84 03 01 00 00    	je     140006f03 <__diff_D2A+0x173>
   140006e00:	48 63 56 14          	movsxd rdx,DWORD PTR [rsi+0x14]
   140006e04:	4c 8d 66 18          	lea    r12,[rsi+0x18]
   140006e08:	89 78 10             	mov    DWORD PTR [rax+0x10],edi
   140006e0b:	4c 8d 68 18          	lea    r13,[rax+0x18]
   140006e0f:	41 b9 18 00 00 00    	mov    r9d,0x18
   140006e15:	45 31 c0             	xor    r8d,r8d
   140006e18:	49 89 d2             	mov    r10,rdx
   140006e1b:	49 8d 3c 94          	lea    rdi,[r12+rdx*4]
   140006e1f:	48 63 53 14          	movsxd rdx,DWORD PTR [rbx+0x14]
   140006e23:	48 8d 6c 93 18       	lea    rbp,[rbx+rdx*4+0x18]
   140006e28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006e2f:	00 
   140006e30:	42 8b 0c 0e          	mov    ecx,DWORD PTR [rsi+r9*1]
   140006e34:	42 8b 14 0b          	mov    edx,DWORD PTR [rbx+r9*1]
   140006e38:	4c 29 c1             	sub    rcx,r8
   140006e3b:	48 29 d1             	sub    rcx,rdx
   140006e3e:	42 89 0c 08          	mov    DWORD PTR [rax+r9*1],ecx
   140006e42:	49 89 c8             	mov    r8,rcx
   140006e45:	49 83 c1 04          	add    r9,0x4
   140006e49:	41 89 cb             	mov    r11d,ecx
   140006e4c:	49 c1 e8 20          	shr    r8,0x20
   140006e50:	49 8d 14 19          	lea    rdx,[r9+rbx*1]
   140006e54:	41 83 e0 01          	and    r8d,0x1
   140006e58:	48 39 d5             	cmp    rbp,rdx
   140006e5b:	77 d3                	ja     140006e30 <__diff_D2A+0xa0>
   140006e5d:	48 89 ea             	mov    rdx,rbp
   140006e60:	4c 8d 4b 19          	lea    r9,[rbx+0x19]
   140006e64:	48 29 da             	sub    rdx,rbx
   140006e67:	bb 00 00 00 00       	mov    ebx,0x0
   140006e6c:	48 83 ea 19          	sub    rdx,0x19
   140006e70:	48 89 d1             	mov    rcx,rdx
   140006e73:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
   140006e77:	48 c1 e9 02          	shr    rcx,0x2
   140006e7b:	4c 39 cd             	cmp    rbp,r9
   140006e7e:	48 0f 42 d3          	cmovb  rdx,rbx
   140006e82:	48 8d 0c 8d 04 00 00 	lea    rcx,[rcx*4+0x4]
   140006e89:	00 
   140006e8a:	4c 01 ea             	add    rdx,r13
   140006e8d:	4c 39 cd             	cmp    rbp,r9
   140006e90:	41 b9 04 00 00 00    	mov    r9d,0x4
   140006e96:	49 0f 42 c9          	cmovb  rcx,r9
   140006e9a:	49 01 cc             	add    r12,rcx
   140006e9d:	49 01 cd             	add    r13,rcx
   140006ea0:	4c 39 e7             	cmp    rdi,r12
   140006ea3:	76 3d                	jbe    140006ee2 <__diff_D2A+0x152>
   140006ea5:	4d 89 e9             	mov    r9,r13
   140006ea8:	4c 89 e1             	mov    rcx,r12
   140006eab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006eb0:	8b 11                	mov    edx,DWORD PTR [rcx]
   140006eb2:	48 83 c1 04          	add    rcx,0x4
   140006eb6:	49 83 c1 04          	add    r9,0x4
   140006eba:	4c 29 c2             	sub    rdx,r8
   140006ebd:	49 89 d0             	mov    r8,rdx
   140006ec0:	41 89 51 fc          	mov    DWORD PTR [r9-0x4],edx
   140006ec4:	41 89 d3             	mov    r11d,edx
   140006ec7:	49 c1 e8 20          	shr    r8,0x20
   140006ecb:	41 83 e0 01          	and    r8d,0x1
   140006ecf:	48 39 cf             	cmp    rdi,rcx
   140006ed2:	77 dc                	ja     140006eb0 <__diff_D2A+0x120>
   140006ed4:	48 8d 57 ff          	lea    rdx,[rdi-0x1]
   140006ed8:	4c 29 e2             	sub    rdx,r12
   140006edb:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
   140006edf:	4c 01 ea             	add    rdx,r13
   140006ee2:	45 85 db             	test   r11d,r11d
   140006ee5:	75 18                	jne    140006eff <__diff_D2A+0x16f>
   140006ee7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006eee:	00 00 
   140006ef0:	8b 4a fc             	mov    ecx,DWORD PTR [rdx-0x4]
   140006ef3:	48 83 ea 04          	sub    rdx,0x4
   140006ef7:	41 83 ea 01          	sub    r10d,0x1
   140006efb:	85 c9                	test   ecx,ecx
   140006efd:	74 f1                	je     140006ef0 <__diff_D2A+0x160>
   140006eff:	44 89 50 14          	mov    DWORD PTR [rax+0x14],r10d
   140006f03:	48 83 c4 28          	add    rsp,0x28
   140006f07:	5b                   	pop    rbx
   140006f08:	5e                   	pop    rsi
   140006f09:	5f                   	pop    rdi
   140006f0a:	5d                   	pop    rbp
   140006f0b:	41 5c                	pop    r12
   140006f0d:	41 5d                	pop    r13
   140006f0f:	c3                   	ret    
   140006f10:	bf 00 00 00 00       	mov    edi,0x0
   140006f15:	0f 89 d4 fe ff ff    	jns    140006def <__diff_D2A+0x5f>
   140006f1b:	48 89 f0             	mov    rax,rsi
   140006f1e:	bf 01 00 00 00       	mov    edi,0x1
   140006f23:	48 89 de             	mov    rsi,rbx
   140006f26:	48 89 c3             	mov    rbx,rax
   140006f29:	e9 c1 fe ff ff       	jmp    140006def <__diff_D2A+0x5f>
   140006f2e:	66 90                	xchg   ax,ax
   140006f30:	31 c9                	xor    ecx,ecx
   140006f32:	e8 a9 f7 ff ff       	call   1400066e0 <__Balloc_D2A>
   140006f37:	48 85 c0             	test   rax,rax
   140006f3a:	74 c7                	je     140006f03 <__diff_D2A+0x173>
   140006f3c:	48 c7 40 14 01 00 00 	mov    QWORD PTR [rax+0x14],0x1
   140006f43:	00 
   140006f44:	48 83 c4 28          	add    rsp,0x28
   140006f48:	5b                   	pop    rbx
   140006f49:	5e                   	pop    rsi
   140006f4a:	5f                   	pop    rdi
   140006f4b:	5d                   	pop    rbp
   140006f4c:	41 5c                	pop    r12
   140006f4e:	41 5d                	pop    r13
   140006f50:	c3                   	ret    
   140006f51:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140006f58:	00 00 00 00 
   140006f5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140006f60 <__b2d_D2A>:
   140006f60:	41 54                	push   r12
   140006f62:	53                   	push   rbx
   140006f63:	48 63 41 14          	movsxd rax,DWORD PTR [rcx+0x14]
   140006f67:	4c 8d 59 18          	lea    r11,[rcx+0x18]
   140006f6b:	49 89 d4             	mov    r12,rdx
   140006f6e:	b9 20 00 00 00       	mov    ecx,0x20
   140006f73:	4d 8d 0c 83          	lea    r9,[r11+rax*4]
   140006f77:	89 c8                	mov    eax,ecx
   140006f79:	45 8b 41 fc          	mov    r8d,DWORD PTR [r9-0x4]
   140006f7d:	4d 8d 51 fc          	lea    r10,[r9-0x4]
   140006f81:	41 0f bd d0          	bsr    edx,r8d
   140006f85:	83 f2 1f             	xor    edx,0x1f
   140006f88:	29 d0                	sub    eax,edx
   140006f8a:	41 89 04 24          	mov    DWORD PTR [r12],eax
   140006f8e:	83 fa 0a             	cmp    edx,0xa
   140006f91:	0f 8e 89 00 00 00    	jle    140007020 <__b2d_D2A+0xc0>
   140006f97:	83 ea 0b             	sub    edx,0xb
   140006f9a:	4d 39 d3             	cmp    r11,r10
   140006f9d:	73 61                	jae    140007000 <__b2d_D2A+0xa0>
   140006f9f:	45 8b 51 f8          	mov    r10d,DWORD PTR [r9-0x8]
   140006fa3:	85 d2                	test   edx,edx
   140006fa5:	74 60                	je     140007007 <__b2d_D2A+0xa7>
   140006fa7:	89 cb                	mov    ebx,ecx
   140006fa9:	44 89 c0             	mov    eax,r8d
   140006fac:	89 d1                	mov    ecx,edx
   140006fae:	45 89 d0             	mov    r8d,r10d
   140006fb1:	29 d3                	sub    ebx,edx
   140006fb3:	d3 e0                	shl    eax,cl
   140006fb5:	89 d9                	mov    ecx,ebx
   140006fb7:	41 d3 e8             	shr    r8d,cl
   140006fba:	89 d1                	mov    ecx,edx
   140006fbc:	49 8d 51 f8          	lea    rdx,[r9-0x8]
   140006fc0:	44 09 c0             	or     eax,r8d
   140006fc3:	41 d3 e2             	shl    r10d,cl
   140006fc6:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   140006fcb:	48 c1 e0 20          	shl    rax,0x20
   140006fcf:	49 39 d3             	cmp    r11,rdx
   140006fd2:	73 0b                	jae    140006fdf <__b2d_D2A+0x7f>
   140006fd4:	41 8b 51 f4          	mov    edx,DWORD PTR [r9-0xc]
   140006fd8:	89 d9                	mov    ecx,ebx
   140006fda:	d3 ea                	shr    edx,cl
   140006fdc:	41 09 d2             	or     r10d,edx
   140006fdf:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
   140006fe6:	ff ff ff 
   140006fe9:	48 21 d0             	and    rax,rdx
   140006fec:	4c 09 d0             	or     rax,r10
   140006fef:	66 48 0f 6e c0       	movq   xmm0,rax
   140006ff4:	5b                   	pop    rbx
   140006ff5:	41 5c                	pop    r12
   140006ff7:	c3                   	ret    
   140006ff8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006fff:	00 
   140007000:	45 31 d2             	xor    r10d,r10d
   140007003:	85 d2                	test   edx,edx
   140007005:	75 59                	jne    140007060 <__b2d_D2A+0x100>
   140007007:	44 89 c0             	mov    eax,r8d
   14000700a:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   14000700f:	48 c1 e0 20          	shl    rax,0x20
   140007013:	4c 09 d0             	or     rax,r10
   140007016:	66 48 0f 6e c0       	movq   xmm0,rax
   14000701b:	5b                   	pop    rbx
   14000701c:	41 5c                	pop    r12
   14000701e:	c3                   	ret    
   14000701f:	90                   	nop
   140007020:	b9 0b 00 00 00       	mov    ecx,0xb
   140007025:	44 89 c0             	mov    eax,r8d
   140007028:	31 db                	xor    ebx,ebx
   14000702a:	29 d1                	sub    ecx,edx
   14000702c:	d3 e8                	shr    eax,cl
   14000702e:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   140007033:	48 c1 e0 20          	shl    rax,0x20
   140007037:	4d 39 d3             	cmp    r11,r10
   14000703a:	73 06                	jae    140007042 <__b2d_D2A+0xe2>
   14000703c:	41 8b 59 f8          	mov    ebx,DWORD PTR [r9-0x8]
   140007040:	d3 eb                	shr    ebx,cl
   140007042:	8d 4a 15             	lea    ecx,[rdx+0x15]
   140007045:	41 d3 e0             	shl    r8d,cl
   140007048:	41 09 d8             	or     r8d,ebx
   14000704b:	4c 09 c0             	or     rax,r8
   14000704e:	66 48 0f 6e c0       	movq   xmm0,rax
   140007053:	5b                   	pop    rbx
   140007054:	41 5c                	pop    r12
   140007056:	c3                   	ret    
   140007057:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000705e:	00 00 
   140007060:	44 89 c0             	mov    eax,r8d
   140007063:	89 d1                	mov    ecx,edx
   140007065:	45 31 d2             	xor    r10d,r10d
   140007068:	d3 e0                	shl    eax,cl
   14000706a:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   14000706f:	48 c1 e0 20          	shl    rax,0x20
   140007073:	e9 67 ff ff ff       	jmp    140006fdf <__b2d_D2A+0x7f>
   140007078:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000707f:	00 

0000000140007080 <__d2b_D2A>:
   140007080:	57                   	push   rdi
   140007081:	56                   	push   rsi
   140007082:	53                   	push   rbx
   140007083:	48 83 ec 20          	sub    rsp,0x20
   140007087:	b9 01 00 00 00       	mov    ecx,0x1
   14000708c:	66 48 0f 7e c3       	movq   rbx,xmm0
   140007091:	48 89 d7             	mov    rdi,rdx
   140007094:	4c 89 c6             	mov    rsi,r8
   140007097:	e8 44 f6 ff ff       	call   1400066e0 <__Balloc_D2A>
   14000709c:	48 85 c0             	test   rax,rax
   14000709f:	0f 84 8f 00 00 00    	je     140007134 <__d2b_D2A+0xb4>
   1400070a5:	48 89 d9             	mov    rcx,rbx
   1400070a8:	48 89 da             	mov    rdx,rbx
   1400070ab:	48 c1 e9 20          	shr    rcx,0x20
   1400070af:	41 89 ca             	mov    r10d,ecx
   1400070b2:	c1 e9 14             	shr    ecx,0x14
   1400070b5:	41 81 e2 ff ff 0f 00 	and    r10d,0xfffff
   1400070bc:	45 89 d1             	mov    r9d,r10d
   1400070bf:	41 81 c9 00 00 10 00 	or     r9d,0x100000
   1400070c6:	81 e1 ff 07 00 00    	and    ecx,0x7ff
   1400070cc:	45 0f 45 d1          	cmovne r10d,r9d
   1400070d0:	41 89 c8             	mov    r8d,ecx
   1400070d3:	85 db                	test   ebx,ebx
   1400070d5:	74 69                	je     140007140 <__d2b_D2A+0xc0>
   1400070d7:	45 31 c9             	xor    r9d,r9d
   1400070da:	f3 44 0f bc cb       	tzcnt  r9d,ebx
   1400070df:	44 89 c9             	mov    ecx,r9d
   1400070e2:	d3 ea                	shr    edx,cl
   1400070e4:	45 85 c9             	test   r9d,r9d
   1400070e7:	74 15                	je     1400070fe <__d2b_D2A+0x7e>
   1400070e9:	b9 20 00 00 00       	mov    ecx,0x20
   1400070ee:	44 89 d3             	mov    ebx,r10d
   1400070f1:	44 29 c9             	sub    ecx,r9d
   1400070f4:	d3 e3                	shl    ebx,cl
   1400070f6:	44 89 c9             	mov    ecx,r9d
   1400070f9:	09 da                	or     edx,ebx
   1400070fb:	41 d3 ea             	shr    r10d,cl
   1400070fe:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
   140007101:	31 d2                	xor    edx,edx
   140007103:	45 85 d2             	test   r10d,r10d
   140007106:	0f 95 c2             	setne  dl
   140007109:	44 89 50 1c          	mov    DWORD PTR [rax+0x1c],r10d
   14000710d:	83 c2 01             	add    edx,0x1
   140007110:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
   140007113:	45 85 c0             	test   r8d,r8d
   140007116:	75 4c                	jne    140007164 <__d2b_D2A+0xe4>
   140007118:	48 63 ca             	movsxd rcx,edx
   14000711b:	c1 e2 05             	shl    edx,0x5
   14000711e:	41 81 e9 32 04 00 00 	sub    r9d,0x432
   140007125:	0f bd 4c 88 14       	bsr    ecx,DWORD PTR [rax+rcx*4+0x14]
   14000712a:	44 89 0f             	mov    DWORD PTR [rdi],r9d
   14000712d:	83 f1 1f             	xor    ecx,0x1f
   140007130:	29 ca                	sub    edx,ecx
   140007132:	89 16                	mov    DWORD PTR [rsi],edx
   140007134:	48 83 c4 20          	add    rsp,0x20
   140007138:	5b                   	pop    rbx
   140007139:	5e                   	pop    rsi
   14000713a:	5f                   	pop    rdi
   14000713b:	c3                   	ret    
   14000713c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007140:	31 c9                	xor    ecx,ecx
   140007142:	44 89 d2             	mov    edx,r10d
   140007145:	c7 40 14 01 00 00 00 	mov    DWORD PTR [rax+0x14],0x1
   14000714c:	f3 41 0f bc ca       	tzcnt  ecx,r10d
   140007151:	d3 ea                	shr    edx,cl
   140007153:	44 8d 49 20          	lea    r9d,[rcx+0x20]
   140007157:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
   14000715a:	ba 01 00 00 00       	mov    edx,0x1
   14000715f:	45 85 c0             	test   r8d,r8d
   140007162:	74 b4                	je     140007118 <__d2b_D2A+0x98>
   140007164:	43 8d 94 08 cd fb ff 	lea    edx,[r8+r9*1-0x433]
   14000716b:	ff 
   14000716c:	89 17                	mov    DWORD PTR [rdi],edx
   14000716e:	ba 35 00 00 00       	mov    edx,0x35
   140007173:	44 29 ca             	sub    edx,r9d
   140007176:	89 16                	mov    DWORD PTR [rsi],edx
   140007178:	48 83 c4 20          	add    rsp,0x20
   14000717c:	5b                   	pop    rbx
   14000717d:	5e                   	pop    rsi
   14000717e:	5f                   	pop    rdi
   14000717f:	c3                   	ret    

0000000140007180 <__strcp_D2A>:
   140007180:	48 89 c8             	mov    rax,rcx
   140007183:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
   140007187:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   14000718a:	88 10                	mov    BYTE PTR [rax],dl
   14000718c:	84 d2                	test   dl,dl
   14000718e:	74 11                	je     1400071a1 <__strcp_D2A+0x21>
   140007190:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
   140007193:	48 83 c0 01          	add    rax,0x1
   140007197:	48 83 c1 01          	add    rcx,0x1
   14000719b:	88 10                	mov    BYTE PTR [rax],dl
   14000719d:	84 d2                	test   dl,dl
   14000719f:	75 ef                	jne    140007190 <__strcp_D2A+0x10>
   1400071a1:	c3                   	ret    
   1400071a2:	90                   	nop
   1400071a3:	90                   	nop
   1400071a4:	90                   	nop
   1400071a5:	90                   	nop
   1400071a6:	90                   	nop
   1400071a7:	90                   	nop
   1400071a8:	90                   	nop
   1400071a9:	90                   	nop
   1400071aa:	90                   	nop
   1400071ab:	90                   	nop
   1400071ac:	90                   	nop
   1400071ad:	90                   	nop
   1400071ae:	90                   	nop
   1400071af:	90                   	nop

00000001400071b0 <strnlen>:
   1400071b0:	45 31 c0             	xor    r8d,r8d
   1400071b3:	48 89 c8             	mov    rax,rcx
   1400071b6:	48 85 d2             	test   rdx,rdx
   1400071b9:	75 14                	jne    1400071cf <strnlen+0x1f>
   1400071bb:	eb 17                	jmp    1400071d4 <strnlen+0x24>
   1400071bd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400071c0:	48 83 c0 01          	add    rax,0x1
   1400071c4:	49 89 c0             	mov    r8,rax
   1400071c7:	49 29 c8             	sub    r8,rcx
   1400071ca:	49 39 d0             	cmp    r8,rdx
   1400071cd:	73 05                	jae    1400071d4 <strnlen+0x24>
   1400071cf:	80 38 00             	cmp    BYTE PTR [rax],0x0
   1400071d2:	75 ec                	jne    1400071c0 <strnlen+0x10>
   1400071d4:	4c 89 c0             	mov    rax,r8
   1400071d7:	c3                   	ret    
   1400071d8:	90                   	nop
   1400071d9:	90                   	nop
   1400071da:	90                   	nop
   1400071db:	90                   	nop
   1400071dc:	90                   	nop
   1400071dd:	90                   	nop
   1400071de:	90                   	nop
   1400071df:	90                   	nop

00000001400071e0 <wcsnlen>:
   1400071e0:	31 c0                	xor    eax,eax
   1400071e2:	48 85 d2             	test   rdx,rdx
   1400071e5:	75 12                	jne    1400071f9 <wcsnlen+0x19>
   1400071e7:	eb 17                	jmp    140007200 <wcsnlen+0x20>
   1400071e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400071f0:	48 83 c0 01          	add    rax,0x1
   1400071f4:	48 39 c2             	cmp    rdx,rax
   1400071f7:	74 07                	je     140007200 <wcsnlen+0x20>
   1400071f9:	66 83 3c 41 00       	cmp    WORD PTR [rcx+rax*2],0x0
   1400071fe:	75 f0                	jne    1400071f0 <wcsnlen+0x10>
   140007200:	c3                   	ret    
   140007201:	90                   	nop
   140007202:	90                   	nop
   140007203:	90                   	nop
   140007204:	90                   	nop
   140007205:	90                   	nop
   140007206:	90                   	nop
   140007207:	90                   	nop
   140007208:	90                   	nop
   140007209:	90                   	nop
   14000720a:	90                   	nop
   14000720b:	90                   	nop
   14000720c:	90                   	nop
   14000720d:	90                   	nop
   14000720e:	90                   	nop
   14000720f:	90                   	nop

0000000140007210 <wcslen>:
   140007210:	ff 25 46 61 00 00    	jmp    QWORD PTR [rip+0x6146]        # 14000d35c <__imp_wcslen>
   140007216:	90                   	nop
   140007217:	90                   	nop

0000000140007218 <vfprintf>:
   140007218:	ff 25 36 61 00 00    	jmp    QWORD PTR [rip+0x6136]        # 14000d354 <__imp_vfprintf>
   14000721e:	90                   	nop
   14000721f:	90                   	nop

0000000140007220 <strncmp>:
   140007220:	ff 25 26 61 00 00    	jmp    QWORD PTR [rip+0x6126]        # 14000d34c <__imp_strncmp>
   140007226:	90                   	nop
   140007227:	90                   	nop

0000000140007228 <strlen>:
   140007228:	ff 25 16 61 00 00    	jmp    QWORD PTR [rip+0x6116]        # 14000d344 <__imp_strlen>
   14000722e:	90                   	nop
   14000722f:	90                   	nop

0000000140007230 <strerror>:
   140007230:	ff 25 06 61 00 00    	jmp    QWORD PTR [rip+0x6106]        # 14000d33c <__imp_strerror>
   140007236:	90                   	nop
   140007237:	90                   	nop

0000000140007238 <signal>:
   140007238:	ff 25 f6 60 00 00    	jmp    QWORD PTR [rip+0x60f6]        # 14000d334 <__imp_signal>
   14000723e:	90                   	nop
   14000723f:	90                   	nop

0000000140007240 <memcpy>:
   140007240:	ff 25 e6 60 00 00    	jmp    QWORD PTR [rip+0x60e6]        # 14000d32c <__imp_memcpy>
   140007246:	90                   	nop
   140007247:	90                   	nop

0000000140007248 <malloc>:
   140007248:	ff 25 d6 60 00 00    	jmp    QWORD PTR [rip+0x60d6]        # 14000d324 <__imp_malloc>
   14000724e:	90                   	nop
   14000724f:	90                   	nop

0000000140007250 <localeconv>:
   140007250:	ff 25 c6 60 00 00    	jmp    QWORD PTR [rip+0x60c6]        # 14000d31c <__imp_localeconv>
   140007256:	90                   	nop
   140007257:	90                   	nop

0000000140007258 <fwrite>:
   140007258:	ff 25 b6 60 00 00    	jmp    QWORD PTR [rip+0x60b6]        # 14000d314 <__imp_fwrite>
   14000725e:	90                   	nop
   14000725f:	90                   	nop

0000000140007260 <free>:
   140007260:	ff 25 a6 60 00 00    	jmp    QWORD PTR [rip+0x60a6]        # 14000d30c <__imp_free>
   140007266:	90                   	nop
   140007267:	90                   	nop

0000000140007268 <fputc>:
   140007268:	ff 25 96 60 00 00    	jmp    QWORD PTR [rip+0x6096]        # 14000d304 <__imp_fputc>
   14000726e:	90                   	nop
   14000726f:	90                   	nop

0000000140007270 <fprintf>:
   140007270:	ff 25 86 60 00 00    	jmp    QWORD PTR [rip+0x6086]        # 14000d2fc <__imp_fprintf>
   140007276:	90                   	nop
   140007277:	90                   	nop

0000000140007278 <exit>:
   140007278:	ff 25 76 60 00 00    	jmp    QWORD PTR [rip+0x6076]        # 14000d2f4 <__imp_exit>
   14000727e:	90                   	nop
   14000727f:	90                   	nop

0000000140007280 <calloc>:
   140007280:	ff 25 66 60 00 00    	jmp    QWORD PTR [rip+0x6066]        # 14000d2ec <__imp_calloc>
   140007286:	90                   	nop
   140007287:	90                   	nop

0000000140007288 <abort>:
   140007288:	ff 25 56 60 00 00    	jmp    QWORD PTR [rip+0x6056]        # 14000d2e4 <__imp_abort>
   14000728e:	90                   	nop
   14000728f:	90                   	nop

0000000140007290 <_onexit>:
   140007290:	ff 25 3e 60 00 00    	jmp    QWORD PTR [rip+0x603e]        # 14000d2d4 <__imp__onexit>
   140007296:	90                   	nop
   140007297:	90                   	nop

0000000140007298 <_initterm>:
   140007298:	ff 25 26 60 00 00    	jmp    QWORD PTR [rip+0x6026]        # 14000d2c4 <__imp__initterm>
   14000729e:	90                   	nop
   14000729f:	90                   	nop

00000001400072a0 <_errno>:
   1400072a0:	ff 25 0e 60 00 00    	jmp    QWORD PTR [rip+0x600e]        # 14000d2b4 <__imp__errno>
   1400072a6:	90                   	nop
   1400072a7:	90                   	nop

00000001400072a8 <_cexit>:
   1400072a8:	ff 25 f6 5f 00 00    	jmp    QWORD PTR [rip+0x5ff6]        # 14000d2a4 <__imp__cexit>
   1400072ae:	90                   	nop
   1400072af:	90                   	nop

00000001400072b0 <_amsg_exit>:
   1400072b0:	ff 25 e6 5f 00 00    	jmp    QWORD PTR [rip+0x5fe6]        # 14000d29c <__imp__amsg_exit>
   1400072b6:	90                   	nop
   1400072b7:	90                   	nop

00000001400072b8 <__setusermatherr>:
   1400072b8:	ff 25 ce 5f 00 00    	jmp    QWORD PTR [rip+0x5fce]        # 14000d28c <__imp___setusermatherr>
   1400072be:	90                   	nop
   1400072bf:	90                   	nop

00000001400072c0 <__set_app_type>:
   1400072c0:	ff 25 be 5f 00 00    	jmp    QWORD PTR [rip+0x5fbe]        # 14000d284 <__imp___set_app_type>
   1400072c6:	90                   	nop
   1400072c7:	90                   	nop

00000001400072c8 <__lconv_init>:
   1400072c8:	ff 25 ae 5f 00 00    	jmp    QWORD PTR [rip+0x5fae]        # 14000d27c <__imp___lconv_init>
   1400072ce:	90                   	nop
   1400072cf:	90                   	nop

00000001400072d0 <__getmainargs>:
   1400072d0:	ff 25 8e 5f 00 00    	jmp    QWORD PTR [rip+0x5f8e]        # 14000d264 <__imp___getmainargs>
   1400072d6:	90                   	nop
   1400072d7:	90                   	nop

00000001400072d8 <__C_specific_handler>:
   1400072d8:	ff 25 6e 5f 00 00    	jmp    QWORD PTR [rip+0x5f6e]        # 14000d24c <__imp___C_specific_handler>
   1400072de:	90                   	nop
   1400072df:	90                   	nop

00000001400072e0 <__mbrtowc_cp>:
   1400072e0:	57                   	push   rdi
   1400072e1:	53                   	push   rbx
   1400072e2:	48 83 ec 48          	sub    rsp,0x48
   1400072e6:	48 89 cf             	mov    rdi,rcx
   1400072e9:	48 89 d3             	mov    rbx,rdx
   1400072ec:	48 85 d2             	test   rdx,rdx
   1400072ef:	0f 84 33 01 00 00    	je     140007428 <__mbrtowc_cp+0x148>
   1400072f5:	4d 85 c0             	test   r8,r8
   1400072f8:	0f 84 33 01 00 00    	je     140007431 <__mbrtowc_cp+0x151>
   1400072fe:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140007301:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   140007304:	41 c7 01 00 00 00 00 	mov    DWORD PTR [r9],0x0
   14000730b:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
   14000730f:	84 d2                	test   dl,dl
   140007311:	0f 84 a1 00 00 00    	je     1400073b8 <__mbrtowc_cp+0xd8>
   140007317:	83 bc 24 88 00 00 00 	cmp    DWORD PTR [rsp+0x88],0x1
   14000731e:	01 
   14000731f:	76 77                	jbe    140007398 <__mbrtowc_cp+0xb8>
   140007321:	84 c0                	test   al,al
   140007323:	0f 85 a7 00 00 00    	jne    1400073d0 <__mbrtowc_cp+0xf0>
   140007329:	4c 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],r9
   14000732e:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   140007335:	4c 89 44 24 70       	mov    QWORD PTR [rsp+0x70],r8
   14000733a:	ff 15 bc 5e 00 00    	call   QWORD PTR [rip+0x5ebc]        # 14000d1fc <__imp_IsDBCSLeadByteEx>
   140007340:	85 c0                	test   eax,eax
   140007342:	74 54                	je     140007398 <__mbrtowc_cp+0xb8>
   140007344:	4c 8b 44 24 70       	mov    r8,QWORD PTR [rsp+0x70]
   140007349:	4c 8b 4c 24 78       	mov    r9,QWORD PTR [rsp+0x78]
   14000734e:	49 83 f8 01          	cmp    r8,0x1
   140007352:	0f 86 f5 00 00 00    	jbe    14000744d <__mbrtowc_cp+0x16d>
   140007358:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000735d:	41 b9 02 00 00 00    	mov    r9d,0x2
   140007363:	49 89 d8             	mov    r8,rbx
   140007366:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   14000736d:	00 
   14000736e:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   140007375:	ba 08 00 00 00       	mov    edx,0x8
   14000737a:	ff 15 8c 5e 00 00    	call   QWORD PTR [rip+0x5e8c]        # 14000d20c <__imp_MultiByteToWideChar>
   140007380:	85 c0                	test   eax,eax
   140007382:	0f 84 b0 00 00 00    	je     140007438 <__mbrtowc_cp+0x158>
   140007388:	b8 02 00 00 00       	mov    eax,0x2
   14000738d:	48 83 c4 48          	add    rsp,0x48
   140007391:	5b                   	pop    rbx
   140007392:	5f                   	pop    rdi
   140007393:	c3                   	ret    
   140007394:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007398:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   14000739f:	85 c0                	test   eax,eax
   1400073a1:	75 4d                	jne    1400073f0 <__mbrtowc_cp+0x110>
   1400073a3:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400073a6:	66 89 07             	mov    WORD PTR [rdi],ax
   1400073a9:	b8 01 00 00 00       	mov    eax,0x1
   1400073ae:	48 83 c4 48          	add    rsp,0x48
   1400073b2:	5b                   	pop    rbx
   1400073b3:	5f                   	pop    rdi
   1400073b4:	c3                   	ret    
   1400073b5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400073b8:	31 d2                	xor    edx,edx
   1400073ba:	31 c0                	xor    eax,eax
   1400073bc:	66 89 11             	mov    WORD PTR [rcx],dx
   1400073bf:	48 83 c4 48          	add    rsp,0x48
   1400073c3:	5b                   	pop    rbx
   1400073c4:	5f                   	pop    rdi
   1400073c5:	c3                   	ret    
   1400073c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400073cd:	00 00 00 
   1400073d0:	88 54 24 3d          	mov    BYTE PTR [rsp+0x3d],dl
   1400073d4:	41 b9 02 00 00 00    	mov    r9d,0x2
   1400073da:	4c 8d 44 24 3c       	lea    r8,[rsp+0x3c]
   1400073df:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   1400073e6:	00 
   1400073e7:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
   1400073ec:	eb 80                	jmp    14000736e <__mbrtowc_cp+0x8e>
   1400073ee:	66 90                	xchg   ax,ax
   1400073f0:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   1400073f7:	00 
   1400073f8:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   1400073ff:	49 89 d8             	mov    r8,rbx
   140007402:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007408:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000740d:	ba 08 00 00 00       	mov    edx,0x8
   140007412:	ff 15 f4 5d 00 00    	call   QWORD PTR [rip+0x5df4]        # 14000d20c <__imp_MultiByteToWideChar>
   140007418:	85 c0                	test   eax,eax
   14000741a:	74 1c                	je     140007438 <__mbrtowc_cp+0x158>
   14000741c:	b8 01 00 00 00       	mov    eax,0x1
   140007421:	eb 9c                	jmp    1400073bf <__mbrtowc_cp+0xdf>
   140007423:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007428:	31 c0                	xor    eax,eax
   14000742a:	48 83 c4 48          	add    rsp,0x48
   14000742e:	5b                   	pop    rbx
   14000742f:	5f                   	pop    rdi
   140007430:	c3                   	ret    
   140007431:	b8 fe ff ff ff       	mov    eax,0xfffffffe
   140007436:	eb 87                	jmp    1400073bf <__mbrtowc_cp+0xdf>
   140007438:	e8 63 fe ff ff       	call   1400072a0 <_errno>
   14000743d:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   140007443:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140007448:	e9 72 ff ff ff       	jmp    1400073bf <__mbrtowc_cp+0xdf>
   14000744d:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   140007450:	41 88 01             	mov    BYTE PTR [r9],al
   140007453:	b8 fe ff ff ff       	mov    eax,0xfffffffe
   140007458:	e9 62 ff ff ff       	jmp    1400073bf <__mbrtowc_cp+0xdf>
   14000745d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140007460 <mbrtowc>:
   140007460:	41 55                	push   r13
   140007462:	41 54                	push   r12
   140007464:	57                   	push   rdi
   140007465:	56                   	push   rsi
   140007466:	53                   	push   rbx
   140007467:	48 83 ec 40          	sub    rsp,0x40
   14000746b:	31 c0                	xor    eax,eax
   14000746d:	49 89 cc             	mov    r12,rcx
   140007470:	48 85 c9             	test   rcx,rcx
   140007473:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007478:	48 8d 44 24 3e       	lea    rax,[rsp+0x3e]
   14000747d:	4c 89 cb             	mov    rbx,r9
   140007480:	4c 0f 44 e0          	cmove  r12,rax
   140007484:	49 89 d5             	mov    r13,rdx
   140007487:	4c 89 c6             	mov    rsi,r8
   14000748a:	e8 e9 04 00 00       	call   140007978 <___mb_cur_max_func>
   14000748f:	89 c7                	mov    edi,eax
   140007491:	e8 ea 04 00 00       	call   140007980 <___lc_codepage_func>
   140007496:	48 85 db             	test   rbx,rbx
   140007499:	89 7c 24 28          	mov    DWORD PTR [rsp+0x28],edi
   14000749d:	49 89 f0             	mov    r8,rsi
   1400074a0:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   1400074a4:	4c 8d 0d bd 56 00 00 	lea    r9,[rip+0x56bd]        # 14000cb68 <internal_mbstate.57695>
   1400074ab:	4c 89 ea             	mov    rdx,r13
   1400074ae:	4c 89 e1             	mov    rcx,r12
   1400074b1:	4c 0f 45 cb          	cmovne r9,rbx
   1400074b5:	e8 26 fe ff ff       	call   1400072e0 <__mbrtowc_cp>
   1400074ba:	48 98                	cdqe   
   1400074bc:	48 83 c4 40          	add    rsp,0x40
   1400074c0:	5b                   	pop    rbx
   1400074c1:	5e                   	pop    rsi
   1400074c2:	5f                   	pop    rdi
   1400074c3:	41 5c                	pop    r12
   1400074c5:	41 5d                	pop    r13
   1400074c7:	c3                   	ret    
   1400074c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400074cf:	00 

00000001400074d0 <mbsrtowcs>:
   1400074d0:	41 56                	push   r14
   1400074d2:	41 55                	push   r13
   1400074d4:	41 54                	push   r12
   1400074d6:	55                   	push   rbp
   1400074d7:	57                   	push   rdi
   1400074d8:	56                   	push   rsi
   1400074d9:	53                   	push   rbx
   1400074da:	48 83 ec 40          	sub    rsp,0x40
   1400074de:	48 8d 05 7f 56 00 00 	lea    rax,[rip+0x567f]        # 14000cb64 <internal_mbstate.57706>
   1400074e5:	4d 89 cd             	mov    r13,r9
   1400074e8:	4d 85 c9             	test   r9,r9
   1400074eb:	49 89 ce             	mov    r14,rcx
   1400074ee:	48 89 d3             	mov    rbx,rdx
   1400074f1:	4c 0f 44 e8          	cmove  r13,rax
   1400074f5:	4c 89 c6             	mov    rsi,r8
   1400074f8:	e8 83 04 00 00       	call   140007980 <___lc_codepage_func>
   1400074fd:	89 c5                	mov    ebp,eax
   1400074ff:	e8 74 04 00 00       	call   140007978 <___mb_cur_max_func>
   140007504:	89 c7                	mov    edi,eax
   140007506:	48 85 db             	test   rbx,rbx
   140007509:	0f 84 c1 00 00 00    	je     1400075d0 <mbsrtowcs+0x100>
   14000750f:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007512:	48 85 d2             	test   rdx,rdx
   140007515:	0f 84 b5 00 00 00    	je     1400075d0 <mbsrtowcs+0x100>
   14000751b:	4d 85 f6             	test   r14,r14
   14000751e:	74 70                	je     140007590 <mbsrtowcs+0xc0>
   140007520:	45 31 e4             	xor    r12d,r12d
   140007523:	48 85 f6             	test   rsi,rsi
   140007526:	75 1f                	jne    140007547 <mbsrtowcs+0x77>
   140007528:	eb 4a                	jmp    140007574 <mbsrtowcs+0xa4>
   14000752a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140007530:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007533:	48 98                	cdqe   
   140007535:	49 83 c6 02          	add    r14,0x2
   140007539:	49 01 c4             	add    r12,rax
   14000753c:	48 01 c2             	add    rdx,rax
   14000753f:	48 89 13             	mov    QWORD PTR [rbx],rdx
   140007542:	4c 39 e6             	cmp    rsi,r12
   140007545:	76 2d                	jbe    140007574 <mbsrtowcs+0xa4>
   140007547:	89 7c 24 28          	mov    DWORD PTR [rsp+0x28],edi
   14000754b:	49 89 f0             	mov    r8,rsi
   14000754e:	4d 89 e9             	mov    r9,r13
   140007551:	4c 89 f1             	mov    rcx,r14
   140007554:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
   140007558:	4d 29 e0             	sub    r8,r12
   14000755b:	e8 80 fd ff ff       	call   1400072e0 <__mbrtowc_cp>
   140007560:	85 c0                	test   eax,eax
   140007562:	7f cc                	jg     140007530 <mbsrtowcs+0x60>
   140007564:	49 39 f4             	cmp    r12,rsi
   140007567:	73 0b                	jae    140007574 <mbsrtowcs+0xa4>
   140007569:	85 c0                	test   eax,eax
   14000756b:	75 07                	jne    140007574 <mbsrtowcs+0xa4>
   14000756d:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   140007574:	4c 89 e0             	mov    rax,r12
   140007577:	48 83 c4 40          	add    rsp,0x40
   14000757b:	5b                   	pop    rbx
   14000757c:	5e                   	pop    rsi
   14000757d:	5f                   	pop    rdi
   14000757e:	5d                   	pop    rbp
   14000757f:	41 5c                	pop    r12
   140007581:	41 5d                	pop    r13
   140007583:	41 5e                	pop    r14
   140007585:	c3                   	ret    
   140007586:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000758d:	00 00 00 
   140007590:	31 c0                	xor    eax,eax
   140007592:	41 89 fe             	mov    r14d,edi
   140007595:	48 8d 74 24 3e       	lea    rsi,[rsp+0x3e]
   14000759a:	45 31 e4             	xor    r12d,r12d
   14000759d:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   1400075a2:	eb 0c                	jmp    1400075b0 <mbsrtowcs+0xe0>
   1400075a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400075a8:	48 98                	cdqe   
   1400075aa:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   1400075ad:	49 01 c4             	add    r12,rax
   1400075b0:	89 7c 24 28          	mov    DWORD PTR [rsp+0x28],edi
   1400075b4:	4c 01 e2             	add    rdx,r12
   1400075b7:	4d 89 e9             	mov    r9,r13
   1400075ba:	4d 89 f0             	mov    r8,r14
   1400075bd:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
   1400075c1:	48 89 f1             	mov    rcx,rsi
   1400075c4:	e8 17 fd ff ff       	call   1400072e0 <__mbrtowc_cp>
   1400075c9:	85 c0                	test   eax,eax
   1400075cb:	7f db                	jg     1400075a8 <mbsrtowcs+0xd8>
   1400075cd:	eb a5                	jmp    140007574 <mbsrtowcs+0xa4>
   1400075cf:	90                   	nop
   1400075d0:	45 31 e4             	xor    r12d,r12d
   1400075d3:	eb 9f                	jmp    140007574 <mbsrtowcs+0xa4>
   1400075d5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400075dc:	00 00 00 00 

00000001400075e0 <mbrlen>:
   1400075e0:	41 54                	push   r12
   1400075e2:	57                   	push   rdi
   1400075e3:	56                   	push   rsi
   1400075e4:	53                   	push   rbx
   1400075e5:	48 83 ec 48          	sub    rsp,0x48
   1400075e9:	31 c0                	xor    eax,eax
   1400075eb:	49 89 cc             	mov    r12,rcx
   1400075ee:	48 89 d6             	mov    rsi,rdx
   1400075f1:	4c 89 c3             	mov    rbx,r8
   1400075f4:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   1400075f9:	e8 7a 03 00 00       	call   140007978 <___mb_cur_max_func>
   1400075fe:	89 c7                	mov    edi,eax
   140007600:	e8 7b 03 00 00       	call   140007980 <___lc_codepage_func>
   140007605:	48 85 db             	test   rbx,rbx
   140007608:	89 7c 24 28          	mov    DWORD PTR [rsp+0x28],edi
   14000760c:	49 89 f0             	mov    r8,rsi
   14000760f:	48 8d 15 4a 55 00 00 	lea    rdx,[rip+0x554a]        # 14000cb60 <s_mbstate.57722>
   140007616:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   14000761a:	48 8d 4c 24 3e       	lea    rcx,[rsp+0x3e]
   14000761f:	48 0f 44 da          	cmove  rbx,rdx
   140007623:	4c 89 e2             	mov    rdx,r12
   140007626:	49 89 d9             	mov    r9,rbx
   140007629:	e8 b2 fc ff ff       	call   1400072e0 <__mbrtowc_cp>
   14000762e:	48 98                	cdqe   
   140007630:	48 83 c4 48          	add    rsp,0x48
   140007634:	5b                   	pop    rbx
   140007635:	5e                   	pop    rsi
   140007636:	5f                   	pop    rdi
   140007637:	41 5c                	pop    r12
   140007639:	c3                   	ret    
   14000763a:	90                   	nop
   14000763b:	90                   	nop
   14000763c:	90                   	nop
   14000763d:	90                   	nop
   14000763e:	90                   	nop
   14000763f:	90                   	nop

0000000140007640 <__wcrtomb_cp>:
   140007640:	48 83 ec 58          	sub    rsp,0x58
   140007644:	48 89 c8             	mov    rax,rcx
   140007647:	66 89 54 24 68       	mov    WORD PTR [rsp+0x68],dx
   14000764c:	44 89 c1             	mov    ecx,r8d
   14000764f:	45 85 c0             	test   r8d,r8d
   140007652:	75 1c                	jne    140007670 <__wcrtomb_cp+0x30>
   140007654:	66 81 fa ff 00       	cmp    dx,0xff
   140007659:	77 59                	ja     1400076b4 <__wcrtomb_cp+0x74>
   14000765b:	88 10                	mov    BYTE PTR [rax],dl
   14000765d:	b8 01 00 00 00       	mov    eax,0x1
   140007662:	48 83 c4 58          	add    rsp,0x58
   140007666:	c3                   	ret    
   140007667:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000766e:	00 00 
   140007670:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
   140007675:	44 89 4c 24 28       	mov    DWORD PTR [rsp+0x28],r9d
   14000767a:	4c 8d 44 24 68       	lea    r8,[rsp+0x68]
   14000767f:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007685:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
   14000768a:	31 d2                	xor    edx,edx
   14000768c:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [rsp+0x4c],0x0
   140007693:	00 
   140007694:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
   14000769b:	00 00 
   14000769d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400076a2:	ff 15 94 5b 00 00    	call   QWORD PTR [rip+0x5b94]        # 14000d23c <__imp_WideCharToMultiByte>
   1400076a8:	85 c0                	test   eax,eax
   1400076aa:	74 08                	je     1400076b4 <__wcrtomb_cp+0x74>
   1400076ac:	8b 54 24 4c          	mov    edx,DWORD PTR [rsp+0x4c]
   1400076b0:	85 d2                	test   edx,edx
   1400076b2:	74 ae                	je     140007662 <__wcrtomb_cp+0x22>
   1400076b4:	e8 e7 fb ff ff       	call   1400072a0 <_errno>
   1400076b9:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   1400076bf:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400076c4:	48 83 c4 58          	add    rsp,0x58
   1400076c8:	c3                   	ret    
   1400076c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400076d0 <wcrtomb>:
   1400076d0:	41 54                	push   r12
   1400076d2:	56                   	push   rsi
   1400076d3:	53                   	push   rbx
   1400076d4:	48 83 ec 30          	sub    rsp,0x30
   1400076d8:	48 85 c9             	test   rcx,rcx
   1400076db:	49 89 cc             	mov    r12,rcx
   1400076de:	48 8d 44 24 2b       	lea    rax,[rsp+0x2b]
   1400076e3:	89 d3                	mov    ebx,edx
   1400076e5:	4c 0f 44 e0          	cmove  r12,rax
   1400076e9:	e8 8a 02 00 00       	call   140007978 <___mb_cur_max_func>
   1400076ee:	89 c6                	mov    esi,eax
   1400076f0:	e8 8b 02 00 00       	call   140007980 <___lc_codepage_func>
   1400076f5:	0f b7 d3             	movzx  edx,bx
   1400076f8:	41 89 f1             	mov    r9d,esi
   1400076fb:	4c 89 e1             	mov    rcx,r12
   1400076fe:	41 89 c0             	mov    r8d,eax
   140007701:	e8 3a ff ff ff       	call   140007640 <__wcrtomb_cp>
   140007706:	48 98                	cdqe   
   140007708:	48 83 c4 30          	add    rsp,0x30
   14000770c:	5b                   	pop    rbx
   14000770d:	5e                   	pop    rsi
   14000770e:	41 5c                	pop    r12
   140007710:	c3                   	ret    
   140007711:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140007718:	00 00 00 00 
   14000771c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140007720 <wcsrtombs>:
   140007720:	41 56                	push   r14
   140007722:	41 55                	push   r13
   140007724:	41 54                	push   r12
   140007726:	55                   	push   rbp
   140007727:	57                   	push   rdi
   140007728:	56                   	push   rsi
   140007729:	53                   	push   rbx
   14000772a:	48 83 ec 30          	sub    rsp,0x30
   14000772e:	45 31 f6             	xor    r14d,r14d
   140007731:	49 89 d4             	mov    r12,rdx
   140007734:	48 89 cb             	mov    rbx,rcx
   140007737:	4c 89 c5             	mov    rbp,r8
   14000773a:	e8 41 02 00 00       	call   140007980 <___lc_codepage_func>
   14000773f:	89 c7                	mov    edi,eax
   140007741:	e8 32 02 00 00       	call   140007978 <___mb_cur_max_func>
   140007746:	49 8b 34 24          	mov    rsi,QWORD PTR [r12]
   14000774a:	41 89 c5             	mov    r13d,eax
   14000774d:	48 85 f6             	test   rsi,rsi
   140007750:	74 4d                	je     14000779f <wcsrtombs+0x7f>
   140007752:	48 85 db             	test   rbx,rbx
   140007755:	74 61                	je     1400077b8 <wcsrtombs+0x98>
   140007757:	48 85 ed             	test   rbp,rbp
   14000775a:	75 27                	jne    140007783 <wcsrtombs+0x63>
   14000775c:	e9 8f 00 00 00       	jmp    1400077f0 <wcsrtombs+0xd0>
   140007761:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140007768:	48 98                	cdqe   
   14000776a:	48 01 c3             	add    rbx,rax
   14000776d:	49 01 c6             	add    r14,rax
   140007770:	80 7b ff 00          	cmp    BYTE PTR [rbx-0x1],0x0
   140007774:	0f 84 86 00 00 00    	je     140007800 <wcsrtombs+0xe0>
   14000777a:	48 83 c6 02          	add    rsi,0x2
   14000777e:	4c 39 f5             	cmp    rbp,r14
   140007781:	76 6d                	jbe    1400077f0 <wcsrtombs+0xd0>
   140007783:	0f b7 16             	movzx  edx,WORD PTR [rsi]
   140007786:	45 89 e9             	mov    r9d,r13d
   140007789:	41 89 f8             	mov    r8d,edi
   14000778c:	48 89 d9             	mov    rcx,rbx
   14000778f:	e8 ac fe ff ff       	call   140007640 <__wcrtomb_cp>
   140007794:	85 c0                	test   eax,eax
   140007796:	7f d0                	jg     140007768 <wcsrtombs+0x48>
   140007798:	49 c7 c6 ff ff ff ff 	mov    r14,0xffffffffffffffff
   14000779f:	4c 89 f0             	mov    rax,r14
   1400077a2:	48 83 c4 30          	add    rsp,0x30
   1400077a6:	5b                   	pop    rbx
   1400077a7:	5e                   	pop    rsi
   1400077a8:	5f                   	pop    rdi
   1400077a9:	5d                   	pop    rbp
   1400077aa:	41 5c                	pop    r12
   1400077ac:	41 5d                	pop    r13
   1400077ae:	41 5e                	pop    r14
   1400077b0:	c3                   	ret    
   1400077b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400077b8:	48 8d 6c 24 2b       	lea    rbp,[rsp+0x2b]
   1400077bd:	eb 17                	jmp    1400077d6 <wcsrtombs+0xb6>
   1400077bf:	90                   	nop
   1400077c0:	48 63 d0             	movsxd rdx,eax
   1400077c3:	83 e8 01             	sub    eax,0x1
   1400077c6:	48 98                	cdqe   
   1400077c8:	49 01 d6             	add    r14,rdx
   1400077cb:	80 7c 04 2b 00       	cmp    BYTE PTR [rsp+rax*1+0x2b],0x0
   1400077d0:	74 3e                	je     140007810 <wcsrtombs+0xf0>
   1400077d2:	48 83 c6 02          	add    rsi,0x2
   1400077d6:	0f b7 16             	movzx  edx,WORD PTR [rsi]
   1400077d9:	45 89 e9             	mov    r9d,r13d
   1400077dc:	41 89 f8             	mov    r8d,edi
   1400077df:	48 89 e9             	mov    rcx,rbp
   1400077e2:	e8 59 fe ff ff       	call   140007640 <__wcrtomb_cp>
   1400077e7:	85 c0                	test   eax,eax
   1400077e9:	7f d5                	jg     1400077c0 <wcsrtombs+0xa0>
   1400077eb:	eb ab                	jmp    140007798 <wcsrtombs+0x78>
   1400077ed:	0f 1f 00             	nop    DWORD PTR [rax]
   1400077f0:	49 89 34 24          	mov    QWORD PTR [r12],rsi
   1400077f4:	eb a9                	jmp    14000779f <wcsrtombs+0x7f>
   1400077f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400077fd:	00 00 00 
   140007800:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
   140007807:	00 
   140007808:	49 83 ee 01          	sub    r14,0x1
   14000780c:	eb 91                	jmp    14000779f <wcsrtombs+0x7f>
   14000780e:	66 90                	xchg   ax,ax
   140007810:	49 83 ee 01          	sub    r14,0x1
   140007814:	eb 89                	jmp    14000779f <wcsrtombs+0x7f>
   140007816:	90                   	nop
   140007817:	90                   	nop
   140007818:	90                   	nop
   140007819:	90                   	nop
   14000781a:	90                   	nop
   14000781b:	90                   	nop
   14000781c:	90                   	nop
   14000781d:	90                   	nop
   14000781e:	90                   	nop
   14000781f:	90                   	nop

0000000140007820 <__acrt_iob_func>:
   140007820:	53                   	push   rbx
   140007821:	48 83 ec 20          	sub    rsp,0x20
   140007825:	89 cb                	mov    ebx,ecx
   140007827:	e8 44 01 00 00       	call   140007970 <__iob_func>
   14000782c:	89 d9                	mov    ecx,ebx
   14000782e:	48 8d 14 49          	lea    rdx,[rcx+rcx*2]
   140007832:	48 c1 e2 04          	shl    rdx,0x4
   140007836:	48 01 d0             	add    rax,rdx
   140007839:	48 83 c4 20          	add    rsp,0x20
   14000783d:	5b                   	pop    rbx
   14000783e:	c3                   	ret    
   14000783f:	90                   	nop

0000000140007840 <_get_invalid_parameter_handler>:
   140007840:	48 8b 05 29 53 00 00 	mov    rax,QWORD PTR [rip+0x5329]        # 14000cb70 <handler>
   140007847:	c3                   	ret    
   140007848:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000784f:	00 

0000000140007850 <_set_invalid_parameter_handler>:
   140007850:	48 89 c8             	mov    rax,rcx
   140007853:	48 87 05 16 53 00 00 	xchg   QWORD PTR [rip+0x5316],rax        # 14000cb70 <handler>
   14000785a:	c3                   	ret    
   14000785b:	90                   	nop
   14000785c:	90                   	nop
   14000785d:	90                   	nop
   14000785e:	90                   	nop
   14000785f:	90                   	nop

0000000140007860 <_lock_file>:
   140007860:	53                   	push   rbx
   140007861:	48 83 ec 20          	sub    rsp,0x20
   140007865:	48 89 cb             	mov    rbx,rcx
   140007868:	31 c9                	xor    ecx,ecx
   14000786a:	e8 b1 ff ff ff       	call   140007820 <__acrt_iob_func>
   14000786f:	48 39 c3             	cmp    rbx,rax
   140007872:	72 0f                	jb     140007883 <_lock_file+0x23>
   140007874:	b9 13 00 00 00       	mov    ecx,0x13
   140007879:	e8 a2 ff ff ff       	call   140007820 <__acrt_iob_func>
   14000787e:	48 39 c3             	cmp    rbx,rax
   140007881:	76 15                	jbe    140007898 <_lock_file+0x38>
   140007883:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   140007887:	48 83 c4 20          	add    rsp,0x20
   14000788b:	5b                   	pop    rbx
   14000788c:	48 ff 25 49 59 00 00 	rex.W jmp QWORD PTR [rip+0x5949]        # 14000d1dc <__imp_EnterCriticalSection>
   140007893:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007898:	31 c9                	xor    ecx,ecx
   14000789a:	e8 81 ff ff ff       	call   140007820 <__acrt_iob_func>
   14000789f:	48 89 da             	mov    rdx,rbx
   1400078a2:	48 29 c2             	sub    rdx,rax
   1400078a5:	48 89 d0             	mov    rax,rdx
   1400078a8:	48 c1 f8 04          	sar    rax,0x4
   1400078ac:	69 c0 ab aa aa aa    	imul   eax,eax,0xaaaaaaab
   1400078b2:	8d 48 10             	lea    ecx,[rax+0x10]
   1400078b5:	e8 ae 00 00 00       	call   140007968 <_lock>
   1400078ba:	81 4b 18 00 80 00 00 	or     DWORD PTR [rbx+0x18],0x8000
   1400078c1:	48 83 c4 20          	add    rsp,0x20
   1400078c5:	5b                   	pop    rbx
   1400078c6:	c3                   	ret    
   1400078c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400078ce:	00 00 

00000001400078d0 <_unlock_file>:
   1400078d0:	53                   	push   rbx
   1400078d1:	48 83 ec 20          	sub    rsp,0x20
   1400078d5:	48 89 cb             	mov    rbx,rcx
   1400078d8:	31 c9                	xor    ecx,ecx
   1400078da:	e8 41 ff ff ff       	call   140007820 <__acrt_iob_func>
   1400078df:	48 39 c3             	cmp    rbx,rax
   1400078e2:	72 0f                	jb     1400078f3 <_unlock_file+0x23>
   1400078e4:	b9 13 00 00 00       	mov    ecx,0x13
   1400078e9:	e8 32 ff ff ff       	call   140007820 <__acrt_iob_func>
   1400078ee:	48 39 c3             	cmp    rbx,rax
   1400078f1:	76 15                	jbe    140007908 <_unlock_file+0x38>
   1400078f3:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   1400078f7:	48 83 c4 20          	add    rsp,0x20
   1400078fb:	5b                   	pop    rbx
   1400078fc:	48 ff 25 01 59 00 00 	rex.W jmp QWORD PTR [rip+0x5901]        # 14000d204 <__imp_LeaveCriticalSection>
   140007903:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007908:	81 63 18 ff 7f ff ff 	and    DWORD PTR [rbx+0x18],0xffff7fff
   14000790f:	31 c9                	xor    ecx,ecx
   140007911:	e8 0a ff ff ff       	call   140007820 <__acrt_iob_func>
   140007916:	48 29 c3             	sub    rbx,rax
   140007919:	48 c1 fb 04          	sar    rbx,0x4
   14000791d:	69 db ab aa aa aa    	imul   ebx,ebx,0xaaaaaaab
   140007923:	8d 4b 10             	lea    ecx,[rbx+0x10]
   140007926:	48 83 c4 20          	add    rsp,0x20
   14000792a:	5b                   	pop    rbx
   14000792b:	e9 30 00 00 00       	jmp    140007960 <_unlock>

0000000140007930 <__p__acmdln>:
   140007930:	48 8b 05 c9 1d 00 00 	mov    rax,QWORD PTR [rip+0x1dc9]        # 140009700 <.refptr.__imp__acmdln>
   140007937:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000793a:	c3                   	ret    
   14000793b:	90                   	nop
   14000793c:	90                   	nop
   14000793d:	90                   	nop
   14000793e:	90                   	nop
   14000793f:	90                   	nop

0000000140007940 <__p__commode>:
   140007940:	48 8b 05 c9 1d 00 00 	mov    rax,QWORD PTR [rip+0x1dc9]        # 140009710 <.refptr.__imp__commode>
   140007947:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000794a:	c3                   	ret    
   14000794b:	90                   	nop
   14000794c:	90                   	nop
   14000794d:	90                   	nop
   14000794e:	90                   	nop
   14000794f:	90                   	nop

0000000140007950 <__p__fmode>:
   140007950:	48 8b 05 c9 1d 00 00 	mov    rax,QWORD PTR [rip+0x1dc9]        # 140009720 <.refptr.__imp__fmode>
   140007957:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000795a:	c3                   	ret    
   14000795b:	90                   	nop
   14000795c:	90                   	nop
   14000795d:	90                   	nop
   14000795e:	90                   	nop
   14000795f:	90                   	nop

0000000140007960 <_unlock>:
   140007960:	ff 25 76 59 00 00    	jmp    QWORD PTR [rip+0x5976]        # 14000d2dc <__imp__unlock>
   140007966:	90                   	nop
   140007967:	90                   	nop

0000000140007968 <_lock>:
   140007968:	ff 25 5e 59 00 00    	jmp    QWORD PTR [rip+0x595e]        # 14000d2cc <__imp__lock>
   14000796e:	90                   	nop
   14000796f:	90                   	nop

0000000140007970 <__iob_func>:
   140007970:	ff 25 fe 58 00 00    	jmp    QWORD PTR [rip+0x58fe]        # 14000d274 <__imp___iob_func>
   140007976:	90                   	nop
   140007977:	90                   	nop

0000000140007978 <___mb_cur_max_func>:
   140007978:	ff 25 de 58 00 00    	jmp    QWORD PTR [rip+0x58de]        # 14000d25c <__imp____mb_cur_max_func>
   14000797e:	90                   	nop
   14000797f:	90                   	nop

0000000140007980 <___lc_codepage_func>:
   140007980:	ff 25 ce 58 00 00    	jmp    QWORD PTR [rip+0x58ce]        # 14000d254 <__imp____lc_codepage_func>
   140007986:	90                   	nop
   140007987:	90                   	nop
   140007988:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000798f:	00 

0000000140007990 <WideCharToMultiByte>:
   140007990:	ff 25 a6 58 00 00    	jmp    QWORD PTR [rip+0x58a6]        # 14000d23c <__imp_WideCharToMultiByte>
   140007996:	90                   	nop
   140007997:	90                   	nop

0000000140007998 <VirtualQuery>:
   140007998:	ff 25 96 58 00 00    	jmp    QWORD PTR [rip+0x5896]        # 14000d234 <__imp_VirtualQuery>
   14000799e:	90                   	nop
   14000799f:	90                   	nop

00000001400079a0 <VirtualProtect>:
   1400079a0:	ff 25 86 58 00 00    	jmp    QWORD PTR [rip+0x5886]        # 14000d22c <__imp_VirtualProtect>
   1400079a6:	90                   	nop
   1400079a7:	90                   	nop

00000001400079a8 <TlsGetValue>:
   1400079a8:	ff 25 76 58 00 00    	jmp    QWORD PTR [rip+0x5876]        # 14000d224 <__imp_TlsGetValue>
   1400079ae:	90                   	nop
   1400079af:	90                   	nop

00000001400079b0 <Sleep>:
   1400079b0:	ff 25 66 58 00 00    	jmp    QWORD PTR [rip+0x5866]        # 14000d21c <__imp_Sleep>
   1400079b6:	90                   	nop
   1400079b7:	90                   	nop

00000001400079b8 <SetUnhandledExceptionFilter>:
   1400079b8:	ff 25 56 58 00 00    	jmp    QWORD PTR [rip+0x5856]        # 14000d214 <__imp_SetUnhandledExceptionFilter>
   1400079be:	90                   	nop
   1400079bf:	90                   	nop

00000001400079c0 <MultiByteToWideChar>:
   1400079c0:	ff 25 46 58 00 00    	jmp    QWORD PTR [rip+0x5846]        # 14000d20c <__imp_MultiByteToWideChar>
   1400079c6:	90                   	nop
   1400079c7:	90                   	nop

00000001400079c8 <LeaveCriticalSection>:
   1400079c8:	ff 25 36 58 00 00    	jmp    QWORD PTR [rip+0x5836]        # 14000d204 <__imp_LeaveCriticalSection>
   1400079ce:	90                   	nop
   1400079cf:	90                   	nop

00000001400079d0 <IsDBCSLeadByteEx>:
   1400079d0:	ff 25 26 58 00 00    	jmp    QWORD PTR [rip+0x5826]        # 14000d1fc <__imp_IsDBCSLeadByteEx>
   1400079d6:	90                   	nop
   1400079d7:	90                   	nop

00000001400079d8 <InitializeCriticalSection>:
   1400079d8:	ff 25 16 58 00 00    	jmp    QWORD PTR [rip+0x5816]        # 14000d1f4 <__imp_InitializeCriticalSection>
   1400079de:	90                   	nop
   1400079df:	90                   	nop

00000001400079e0 <GetStartupInfoA>:
   1400079e0:	ff 25 06 58 00 00    	jmp    QWORD PTR [rip+0x5806]        # 14000d1ec <__imp_GetStartupInfoA>
   1400079e6:	90                   	nop
   1400079e7:	90                   	nop

00000001400079e8 <GetLastError>:
   1400079e8:	ff 25 f6 57 00 00    	jmp    QWORD PTR [rip+0x57f6]        # 14000d1e4 <__imp_GetLastError>
   1400079ee:	90                   	nop
   1400079ef:	90                   	nop

00000001400079f0 <EnterCriticalSection>:
   1400079f0:	ff 25 e6 57 00 00    	jmp    QWORD PTR [rip+0x57e6]        # 14000d1dc <__imp_EnterCriticalSection>
   1400079f6:	90                   	nop
   1400079f7:	90                   	nop

00000001400079f8 <DeleteCriticalSection>:
   1400079f8:	ff 25 d6 57 00 00    	jmp    QWORD PTR [rip+0x57d6]        # 14000d1d4 <__IAT_start__>
   1400079fe:	90                   	nop
   1400079ff:	90                   	nop

0000000140007a00 <register_frame_ctor>:
   140007a00:	e9 2b 9b ff ff       	jmp    140001530 <__gcc_register_frame>
   140007a05:	90                   	nop
   140007a06:	90                   	nop
   140007a07:	90                   	nop
   140007a08:	90                   	nop
   140007a09:	90                   	nop
   140007a0a:	90                   	nop
   140007a0b:	90                   	nop
   140007a0c:	90                   	nop
   140007a0d:	90                   	nop
   140007a0e:	90                   	nop
   140007a0f:	90                   	nop

0000000140007a10 <__CTOR_LIST__>:
   140007a10:	ff                   	(bad)  
   140007a11:	ff                   	(bad)  
   140007a12:	ff                   	(bad)  
   140007a13:	ff                   	(bad)  
   140007a14:	ff                   	(bad)  
   140007a15:	ff                   	(bad)  
   140007a16:	ff                   	(bad)  
   140007a17:	ff                   	.byte 0xff

0000000140007a18 <.ctors.65535>:
   140007a18:	00 7a 00             	add    BYTE PTR [rdx+0x0],bh
   140007a1b:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140007a28 <__DTOR_LIST__>:
   140007a28:	ff                   	(bad)  
   140007a29:	ff                   	(bad)  
   140007a2a:	ff                   	(bad)  
   140007a2b:	ff                   	(bad)  
   140007a2c:	ff                   	(bad)  
   140007a2d:	ff                   	(bad)  
   140007a2e:	ff                   	(bad)  
   140007a2f:	ff 00                	inc    DWORD PTR [rax]
   140007a31:	00 00                	add    BYTE PTR [rax],al
   140007a33:	00 00                	add    BYTE PTR [rax],al
   140007a35:	00 00                	add    BYTE PTR [rax],al
	...
