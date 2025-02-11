
build/Process.so:     file format pei-x86-64


Disassembly of section .text:

000000028bd91000 <pre_c_init>:
   28bd91000:	48 8d 0d f9 5f 00 00 	lea    0x5ff9(%rip),%rcx        # 28bd97000 <__bss_start__>
   28bd91007:	e9 74 1a 00 00       	jmp    28bd92a80 <_initialize_onexit_table>
   28bd9100c:	0f 1f 40 00          	nopl   0x0(%rax)

000000028bd91010 <_CRT_INIT>:
   28bd91010:	41 55                	push   %r13
   28bd91012:	41 54                	push   %r12
   28bd91014:	55                   	push   %rbp
   28bd91015:	57                   	push   %rdi
   28bd91016:	56                   	push   %rsi
   28bd91017:	53                   	push   %rbx
   28bd91018:	48 83 ec 28          	sub    $0x28,%rsp
   28bd9101c:	49 89 cc             	mov    %rcx,%r12
   28bd9101f:	4d 89 c5             	mov    %r8,%r13
   28bd91022:	85 d2                	test   %edx,%edx
   28bd91024:	75 7a                	jne    28bd910a0 <_CRT_INIT+0x90>
   28bd91026:	8b 15 ec 5f 00 00    	mov    0x5fec(%rip),%edx        # 28bd97018 <__proc_attached>
   28bd9102c:	31 c0                	xor    %eax,%eax
   28bd9102e:	85 d2                	test   %edx,%edx
   28bd91030:	7e 5e                	jle    28bd91090 <_CRT_INIT+0x80>
   28bd91032:	83 ea 01             	sub    $0x1,%edx
   28bd91035:	48 8b 1d 04 32 00 00 	mov    0x3204(%rip),%rbx        # 28bd94240 <.refptr.__native_startup_lock>
   28bd9103c:	45 31 e4             	xor    %r12d,%r12d
   28bd9103f:	bf 01 00 00 00       	mov    $0x1,%edi
   28bd91044:	89 15 ce 5f 00 00    	mov    %edx,0x5fce(%rip)        # 28bd97018 <__proc_attached>
   28bd9104a:	48 8b 2d d3 80 00 00 	mov    0x80d3(%rip),%rbp        # 28bd99124 <__imp_Sleep>
   28bd91051:	eb 0c                	jmp    28bd9105f <_CRT_INIT+0x4f>
   28bd91053:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd91058:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   28bd9105d:	ff d5                	call   *%rbp
   28bd9105f:	4c 89 e0             	mov    %r12,%rax
   28bd91062:	f0 48 0f b1 3b       	lock cmpxchg %rdi,(%rbx)
   28bd91067:	48 89 c6             	mov    %rax,%rsi
   28bd9106a:	48 85 c0             	test   %rax,%rax
   28bd9106d:	75 e9                	jne    28bd91058 <_CRT_INIT+0x48>
   28bd9106f:	48 8b 3d da 31 00 00 	mov    0x31da(%rip),%rdi        # 28bd94250 <.refptr.__native_startup_state>
   28bd91076:	8b 07                	mov    (%rdi),%eax
   28bd91078:	83 f8 02             	cmp    $0x2,%eax
   28bd9107b:	0f 84 ef 00 00 00    	je     28bd91170 <_CRT_INIT+0x160>
   28bd91081:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   28bd91086:	e8 e5 19 00 00       	call   28bd92a70 <_amsg_exit>
   28bd9108b:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91090:	48 83 c4 28          	add    $0x28,%rsp
   28bd91094:	5b                   	pop    %rbx
   28bd91095:	5e                   	pop    %rsi
   28bd91096:	5f                   	pop    %rdi
   28bd91097:	5d                   	pop    %rbp
   28bd91098:	41 5c                	pop    %r12
   28bd9109a:	41 5d                	pop    %r13
   28bd9109c:	c3                   	ret    
   28bd9109d:	0f 1f 00             	nopl   (%rax)
   28bd910a0:	83 fa 01             	cmp    $0x1,%edx
   28bd910a3:	0f 85 af 00 00 00    	jne    28bd91158 <_CRT_INIT+0x148>
   28bd910a9:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   28bd910b0:	00 00 
   28bd910b2:	48 8b 1d 87 31 00 00 	mov    0x3187(%rip),%rbx        # 28bd94240 <.refptr.__native_startup_lock>
   28bd910b9:	48 8b 70 08          	mov    0x8(%rax),%rsi
   28bd910bd:	31 ff                	xor    %edi,%edi
   28bd910bf:	48 8b 2d 5e 80 00 00 	mov    0x805e(%rip),%rbp        # 28bd99124 <__imp_Sleep>
   28bd910c6:	eb 18                	jmp    28bd910e0 <_CRT_INIT+0xd0>
   28bd910c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd910cf:	00 
   28bd910d0:	48 39 c6             	cmp    %rax,%rsi
   28bd910d3:	0f 84 b7 00 00 00    	je     28bd91190 <_CRT_INIT+0x180>
   28bd910d9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   28bd910de:	ff d5                	call   *%rbp
   28bd910e0:	48 89 f8             	mov    %rdi,%rax
   28bd910e3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   28bd910e8:	48 85 c0             	test   %rax,%rax
   28bd910eb:	75 e3                	jne    28bd910d0 <_CRT_INIT+0xc0>
   28bd910ed:	31 ff                	xor    %edi,%edi
   28bd910ef:	48 8b 35 5a 31 00 00 	mov    0x315a(%rip),%rsi        # 28bd94250 <.refptr.__native_startup_state>
   28bd910f6:	8b 06                	mov    (%rsi),%eax
   28bd910f8:	83 f8 01             	cmp    $0x1,%eax
   28bd910fb:	0f 84 ef 00 00 00    	je     28bd911f0 <_CRT_INIT+0x1e0>
   28bd91101:	8b 06                	mov    (%rsi),%eax
   28bd91103:	85 c0                	test   %eax,%eax
   28bd91105:	0f 84 a5 00 00 00    	je     28bd911b0 <_CRT_INIT+0x1a0>
   28bd9110b:	8b 06                	mov    (%rsi),%eax
   28bd9110d:	83 f8 01             	cmp    $0x1,%eax
   28bd91110:	0f 84 ba 00 00 00    	je     28bd911d0 <_CRT_INIT+0x1c0>
   28bd91116:	85 ff                	test   %edi,%edi
   28bd91118:	0f 84 82 00 00 00    	je     28bd911a0 <_CRT_INIT+0x190>
   28bd9111e:	48 8b 05 eb 30 00 00 	mov    0x30eb(%rip),%rax        # 28bd94210 <.refptr.__dyn_tls_init_callback>
   28bd91125:	48 8b 00             	mov    (%rax),%rax
   28bd91128:	48 85 c0             	test   %rax,%rax
   28bd9112b:	74 0d                	je     28bd9113a <_CRT_INIT+0x12a>
   28bd9112d:	4d 89 e8             	mov    %r13,%r8
   28bd91130:	ba 02 00 00 00       	mov    $0x2,%edx
   28bd91135:	4c 89 e1             	mov    %r12,%rcx
   28bd91138:	ff d0                	call   *%rax
   28bd9113a:	83 05 d7 5e 00 00 01 	addl   $0x1,0x5ed7(%rip)        # 28bd97018 <__proc_attached>
   28bd91141:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91146:	48 83 c4 28          	add    $0x28,%rsp
   28bd9114a:	5b                   	pop    %rbx
   28bd9114b:	5e                   	pop    %rsi
   28bd9114c:	5f                   	pop    %rdi
   28bd9114d:	5d                   	pop    %rbp
   28bd9114e:	41 5c                	pop    %r12
   28bd91150:	41 5d                	pop    %r13
   28bd91152:	c3                   	ret    
   28bd91153:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd91158:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd9115d:	48 83 c4 28          	add    $0x28,%rsp
   28bd91161:	5b                   	pop    %rbx
   28bd91162:	5e                   	pop    %rsi
   28bd91163:	5f                   	pop    %rdi
   28bd91164:	5d                   	pop    %rbp
   28bd91165:	41 5c                	pop    %r12
   28bd91167:	41 5d                	pop    %r13
   28bd91169:	c3                   	ret    
   28bd9116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd91170:	48 8d 0d 89 5e 00 00 	lea    0x5e89(%rip),%rcx        # 28bd97000 <__bss_start__>
   28bd91177:	e8 14 1a 00 00       	call   28bd92b90 <_execute_onexit_table>
   28bd9117c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
   28bd91182:	48 87 33             	xchg   %rsi,(%rbx)
   28bd91185:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd9118a:	e9 01 ff ff ff       	jmp    28bd91090 <_CRT_INIT+0x80>
   28bd9118f:	90                   	nop
   28bd91190:	bf 01 00 00 00       	mov    $0x1,%edi
   28bd91195:	e9 55 ff ff ff       	jmp    28bd910ef <_CRT_INIT+0xdf>
   28bd9119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd911a0:	31 c0                	xor    %eax,%eax
   28bd911a2:	48 87 03             	xchg   %rax,(%rbx)
   28bd911a5:	e9 74 ff ff ff       	jmp    28bd9111e <_CRT_INIT+0x10e>
   28bd911aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd911b0:	48 8b 15 d9 30 00 00 	mov    0x30d9(%rip),%rdx        # 28bd94290 <.refptr.__xi_z>
   28bd911b7:	48 8b 0d c2 30 00 00 	mov    0x30c2(%rip),%rcx        # 28bd94280 <.refptr.__xi_a>
   28bd911be:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   28bd911c4:	e8 9f 18 00 00       	call   28bd92a68 <_initterm>
   28bd911c9:	e9 3d ff ff ff       	jmp    28bd9110b <_CRT_INIT+0xfb>
   28bd911ce:	66 90                	xchg   %ax,%ax
   28bd911d0:	48 8b 15 99 30 00 00 	mov    0x3099(%rip),%rdx        # 28bd94270 <.refptr.__xc_z>
   28bd911d7:	48 8b 0d 82 30 00 00 	mov    0x3082(%rip),%rcx        # 28bd94260 <.refptr.__xc_a>
   28bd911de:	e8 85 18 00 00       	call   28bd92a68 <_initterm>
   28bd911e3:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   28bd911e9:	e9 28 ff ff ff       	jmp    28bd91116 <_CRT_INIT+0x106>
   28bd911ee:	66 90                	xchg   %ax,%ax
   28bd911f0:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   28bd911f5:	e8 76 18 00 00       	call   28bd92a70 <_amsg_exit>
   28bd911fa:	e9 0c ff ff ff       	jmp    28bd9110b <_CRT_INIT+0xfb>
   28bd911ff:	90                   	nop

000000028bd91200 <__DllMainCRTStartup>:
   28bd91200:	41 56                	push   %r14
   28bd91202:	41 55                	push   %r13
   28bd91204:	41 54                	push   %r12
   28bd91206:	56                   	push   %rsi
   28bd91207:	53                   	push   %rbx
   28bd91208:	48 83 ec 20          	sub    $0x20,%rsp
   28bd9120c:	48 8b 35 1d 30 00 00 	mov    0x301d(%rip),%rsi        # 28bd94230 <.refptr.__native_dllmain_reason>
   28bd91213:	49 89 cd             	mov    %rcx,%r13
   28bd91216:	89 16                	mov    %edx,(%rsi)
   28bd91218:	41 89 d4             	mov    %edx,%r12d
   28bd9121b:	4c 89 c3             	mov    %r8,%rbx
   28bd9121e:	85 d2                	test   %edx,%edx
   28bd91220:	75 5e                	jne    28bd91280 <__DllMainCRTStartup+0x80>
   28bd91222:	8b 05 f0 5d 00 00    	mov    0x5df0(%rip),%eax        # 28bd97018 <__proc_attached>
   28bd91228:	85 c0                	test   %eax,%eax
   28bd9122a:	74 35                	je     28bd91261 <__DllMainCRTStartup+0x61>
   28bd9122c:	e8 5f 0e 00 00       	call   28bd92090 <_pei386_runtime_relocator>
   28bd91231:	49 89 d8             	mov    %rbx,%r8
   28bd91234:	31 d2                	xor    %edx,%edx
   28bd91236:	4c 89 e9             	mov    %r13,%rcx
   28bd91239:	e8 e2 17 00 00       	call   28bd92a20 <DllMain>
   28bd9123e:	49 89 d8             	mov    %rbx,%r8
   28bd91241:	44 89 e2             	mov    %r12d,%edx
   28bd91244:	4c 89 e9             	mov    %r13,%rcx
   28bd91247:	e8 c4 17 00 00       	call   28bd92a10 <DllEntryPoint>
   28bd9124c:	49 89 d8             	mov    %rbx,%r8
   28bd9124f:	44 89 e2             	mov    %r12d,%edx
   28bd91252:	4c 89 e9             	mov    %r13,%rcx
   28bd91255:	41 89 c6             	mov    %eax,%r14d
   28bd91258:	e8 b3 fd ff ff       	call   28bd91010 <_CRT_INIT>
   28bd9125d:	85 c0                	test   %eax,%eax
   28bd9125f:	75 03                	jne    28bd91264 <__DllMainCRTStartup+0x64>
   28bd91261:	45 31 f6             	xor    %r14d,%r14d
   28bd91264:	44 89 f0             	mov    %r14d,%eax
   28bd91267:	c7 06 ff ff ff ff    	movl   $0xffffffff,(%rsi)
   28bd9126d:	48 83 c4 20          	add    $0x20,%rsp
   28bd91271:	5b                   	pop    %rbx
   28bd91272:	5e                   	pop    %rsi
   28bd91273:	41 5c                	pop    %r12
   28bd91275:	41 5d                	pop    %r13
   28bd91277:	41 5e                	pop    %r14
   28bd91279:	c3                   	ret    
   28bd9127a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd91280:	e8 0b 0e 00 00       	call   28bd92090 <_pei386_runtime_relocator>
   28bd91285:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
   28bd9128a:	49 89 d8             	mov    %rbx,%r8
   28bd9128d:	44 89 e2             	mov    %r12d,%edx
   28bd91290:	4c 89 e9             	mov    %r13,%rcx
   28bd91293:	83 f8 01             	cmp    $0x1,%eax
   28bd91296:	77 70                	ja     28bd91308 <__DllMainCRTStartup+0x108>
   28bd91298:	e8 73 fd ff ff       	call   28bd91010 <_CRT_INIT>
   28bd9129d:	85 c0                	test   %eax,%eax
   28bd9129f:	74 c0                	je     28bd91261 <__DllMainCRTStartup+0x61>
   28bd912a1:	49 89 d8             	mov    %rbx,%r8
   28bd912a4:	44 89 e2             	mov    %r12d,%edx
   28bd912a7:	4c 89 e9             	mov    %r13,%rcx
   28bd912aa:	e8 61 17 00 00       	call   28bd92a10 <DllEntryPoint>
   28bd912af:	41 89 c6             	mov    %eax,%r14d
   28bd912b2:	85 c0                	test   %eax,%eax
   28bd912b4:	74 6a                	je     28bd91320 <__DllMainCRTStartup+0x120>
   28bd912b6:	41 83 fc 01          	cmp    $0x1,%r12d
   28bd912ba:	75 70                	jne    28bd9132c <__DllMainCRTStartup+0x12c>
   28bd912bc:	e8 4f 0a 00 00       	call   28bd91d10 <__main>
   28bd912c1:	49 89 d8             	mov    %rbx,%r8
   28bd912c4:	ba 01 00 00 00       	mov    $0x1,%edx
   28bd912c9:	4c 89 e9             	mov    %r13,%rcx
   28bd912cc:	e8 4f 17 00 00       	call   28bd92a20 <DllMain>
   28bd912d1:	41 89 c6             	mov    %eax,%r14d
   28bd912d4:	85 c0                	test   %eax,%eax
   28bd912d6:	75 8c                	jne    28bd91264 <__DllMainCRTStartup+0x64>
   28bd912d8:	49 89 d8             	mov    %rbx,%r8
   28bd912db:	31 d2                	xor    %edx,%edx
   28bd912dd:	4c 89 e9             	mov    %r13,%rcx
   28bd912e0:	e8 3b 17 00 00       	call   28bd92a20 <DllMain>
   28bd912e5:	49 89 d8             	mov    %rbx,%r8
   28bd912e8:	31 d2                	xor    %edx,%edx
   28bd912ea:	4c 89 e9             	mov    %r13,%rcx
   28bd912ed:	e8 1e 17 00 00       	call   28bd92a10 <DllEntryPoint>
   28bd912f2:	49 89 d8             	mov    %rbx,%r8
   28bd912f5:	31 d2                	xor    %edx,%edx
   28bd912f7:	4c 89 e9             	mov    %r13,%rcx
   28bd912fa:	e8 11 fd ff ff       	call   28bd91010 <_CRT_INIT>
   28bd912ff:	e9 60 ff ff ff       	jmp    28bd91264 <__DllMainCRTStartup+0x64>
   28bd91304:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd91308:	e8 13 17 00 00       	call   28bd92a20 <DllMain>
   28bd9130d:	41 89 c6             	mov    %eax,%r14d
   28bd91310:	41 83 fc 03          	cmp    $0x3,%r12d
   28bd91314:	0f 85 4a ff ff ff    	jne    28bd91264 <__DllMainCRTStartup+0x64>
   28bd9131a:	e9 1f ff ff ff       	jmp    28bd9123e <__DllMainCRTStartup+0x3e>
   28bd9131f:	90                   	nop
   28bd91320:	41 83 fc 01          	cmp    $0x1,%r12d
   28bd91324:	0f 85 37 ff ff ff    	jne    28bd91261 <__DllMainCRTStartup+0x61>
   28bd9132a:	eb c6                	jmp    28bd912f2 <__DllMainCRTStartup+0xf2>
   28bd9132c:	49 89 d8             	mov    %rbx,%r8
   28bd9132f:	ba 02 00 00 00       	mov    $0x2,%edx
   28bd91334:	4c 89 e9             	mov    %r13,%rcx
   28bd91337:	e8 e4 16 00 00       	call   28bd92a20 <DllMain>
   28bd9133c:	41 89 c6             	mov    %eax,%r14d
   28bd9133f:	e9 20 ff ff ff       	jmp    28bd91264 <__DllMainCRTStartup+0x64>
   28bd91344:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd9134b:	00 00 00 00 
   28bd9134f:	90                   	nop

000000028bd91350 <DllMainCRTStartup>:
   28bd91350:	48 8b 05 49 2f 00 00 	mov    0x2f49(%rip),%rax        # 28bd942a0 <.refptr.mingw_app_type>
   28bd91357:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   28bd9135d:	e9 9e fe ff ff       	jmp    28bd91200 <__DllMainCRTStartup>
   28bd91362:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd91369:	00 00 00 00 
   28bd9136d:	0f 1f 00             	nopl   (%rax)

000000028bd91370 <atexit>:
   28bd91370:	48 89 ca             	mov    %rcx,%rdx
   28bd91373:	48 8d 0d 86 5c 00 00 	lea    0x5c86(%rip),%rcx        # 28bd97000 <__bss_start__>
   28bd9137a:	e9 31 17 00 00       	jmp    28bd92ab0 <_register_onexit_function>
   28bd9137f:	90                   	nop

000000028bd91380 <__gcc_register_frame>:
   28bd91380:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 28bd91390 <__gcc_deregister_frame>
   28bd91387:	e9 e4 ff ff ff       	jmp    28bd91370 <atexit>
   28bd9138c:	0f 1f 40 00          	nopl   0x0(%rax)

000000028bd91390 <__gcc_deregister_frame>:
   28bd91390:	c3                   	ret    
   28bd91391:	90                   	nop
   28bd91392:	90                   	nop
   28bd91393:	90                   	nop
   28bd91394:	90                   	nop
   28bd91395:	90                   	nop
   28bd91396:	90                   	nop
   28bd91397:	90                   	nop
   28bd91398:	90                   	nop
   28bd91399:	90                   	nop
   28bd9139a:	90                   	nop
   28bd9139b:	90                   	nop
   28bd9139c:	90                   	nop
   28bd9139d:	90                   	nop
   28bd9139e:	90                   	nop
   28bd9139f:	90                   	nop

000000028bd913a0 <literal>:
   28bd913a0:	6b 65 72 6e          	imul   $0x6e,0x72(%rbp),%esp
   28bd913a4:	65 6c                	gs insb (%dx),%es:(%rdi)
   28bd913a6:	33 32                	xor    (%rdx),%esi
   28bd913a8:	2e 64 6c             	cs fs insb (%dx),%es:(%rdi)
   28bd913ab:	6c                   	insb   (%dx),%es:(%rdi)
   28bd913ac:	00 75 73             	add    %dh,0x73(%rbp)
   28bd913af:	65 72 33             	gs jb  28bd913e5 <literal+0x45>
   28bd913b2:	32 2e                	xor    (%rsi),%ch
   28bd913b4:	64 6c                	fs insb (%dx),%es:(%rdi)
   28bd913b6:	6c                   	insb   (%dx),%es:(%rdi)
   28bd913b7:	00 47 65             	add    %al,0x65(%rdi)
   28bd913ba:	74 4d                	je     28bd91409 <literal+0x69>
   28bd913bc:	6f                   	outsl  %ds:(%rsi),(%dx)
   28bd913bd:	64 75 6c             	fs jne 28bd9142c <to_literal+0x11>
   28bd913c0:	65 48 61             	gs rex.W (bad) 
   28bd913c3:	6e                   	outsb  %ds:(%rsi),(%dx)
   28bd913c4:	64 6c                	fs insb (%dx),%es:(%rdi)
   28bd913c6:	65 41 00 47 65       	add    %al,%gs:0x65(%r15)
   28bd913cb:	74 50                	je     28bd9141d <to_literal+0x2>
   28bd913cd:	72 6f                	jb     28bd9143e <to_literal+0x23>
   28bd913cf:	63 41 64             	movsxd 0x64(%rcx),%eax
   28bd913d2:	64 72 65             	fs jb  28bd9143a <to_literal+0x1f>
   28bd913d5:	73 73                	jae    28bd9144a <to_literal+0x2f>
   28bd913d7:	00 4c 6f 61          	add    %cl,0x61(%rdi,%rbp,2)
   28bd913db:	64 4c 69 62 72 61 72 	imul   $0x41797261,%fs:0x72(%rdx),%r12
   28bd913e2:	79 41 
   28bd913e4:	00 46 72             	add    %al,0x72(%rsi)
   28bd913e7:	65 65 4c 69 62 72 61 	gs imul $0x797261,%gs:0x72(%rdx),%r12
   28bd913ee:	72 79 00 
   28bd913f1:	56                   	push   %rsi
   28bd913f2:	69 72 74 75 61 6c 41 	imul   $0x416c6175,0x74(%rdx),%esi
   28bd913f9:	6c                   	insb   (%dx),%es:(%rdi)
   28bd913fa:	6c                   	insb   (%dx),%es:(%rdi)
   28bd913fb:	6f                   	outsl  %ds:(%rsi),(%dx)
   28bd913fc:	63 41 00             	movsxd 0x0(%rcx),%eax
   28bd913ff:	56                   	push   %rsi
   28bd91400:	69 72 74 75 61 6c 50 	imul   $0x506c6175,0x74(%rdx),%esi
   28bd91407:	72 6f                	jb     28bd91478 <test+0x9>
   28bd91409:	74 65                	je     28bd91470 <test+0x1>
   28bd9140b:	63 74 00 4d          	movsxd 0x4d(%rax,%rax,1),%esi
   28bd9140f:	65 73 73             	gs jae 28bd91485 <test+0x16>
   28bd91412:	61                   	(bad)  
   28bd91413:	67 65 42 6f          	rex.X outsl %gs:(%esi),(%dx)
   28bd91417:	78 41                	js     28bd9145a <to_literal+0x3f>
	...

000000028bd9141b <to_literal>:
   28bd9141b:	55                   	push   %rbp
   28bd9141c:	48 89 e5             	mov    %rsp,%rbp
   28bd9141f:	48 83 ec 10          	sub    $0x10,%rsp
   28bd91423:	89 4d 10             	mov    %ecx,0x10(%rbp)
   28bd91426:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd9142d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   28bd91434:	eb 1e                	jmp    28bd91454 <to_literal+0x39>
   28bd91436:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd9143a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9143d:	48 8d 15 5c ff ff ff 	lea    -0xa4(%rip),%rdx        # 28bd913a0 <literal>
   28bd91444:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
   28bd91448:	84 c0                	test   %al,%al
   28bd9144a:	75 ea                	jne    28bd91436 <to_literal+0x1b>
   28bd9144c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd91450:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   28bd91454:	8b 45 f8             	mov    -0x8(%rbp),%eax
   28bd91457:	39 45 10             	cmp    %eax,0x10(%rbp)
   28bd9145a:	77 de                	ja     28bd9143a <to_literal+0x1f>
   28bd9145c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9145f:	48 8d 15 3a ff ff ff 	lea    -0xc6(%rip),%rdx        # 28bd913a0 <literal>
   28bd91466:	48 01 d0             	add    %rdx,%rax
   28bd91469:	48 83 c4 10          	add    $0x10,%rsp
   28bd9146d:	5d                   	pop    %rbp
   28bd9146e:	c3                   	ret    

000000028bd9146f <test>:
   28bd9146f:	55                   	push   %rbp
   28bd91470:	53                   	push   %rbx
   28bd91471:	b8 58 11 00 00       	mov    $0x1158,%eax
   28bd91476:	e8 55 15 00 00       	call   28bd929d0 <___chkstk_ms>
   28bd9147b:	48 29 c4             	sub    %rax,%rsp
   28bd9147e:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   28bd91485:	00 
   28bd91486:	e8 5f 02 00 00       	call   28bd916ea <get_peb>
   28bd9148b:	48 89 85 b8 10 00 00 	mov    %rax,0x10b8(%rbp)
   28bd91492:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
   28bd91496:	48 8b 85 b8 10 00 00 	mov    0x10b8(%rbp),%rax
   28bd9149d:	48 89 c1             	mov    %rax,%rcx
   28bd914a0:	e8 83 04 00 00       	call   28bd91928 <build_simple_ldr>
   28bd914a5:	89 85 b4 10 00 00    	mov    %eax,0x10b4(%rbp)
   28bd914ab:	48 8b 85 e0 00 00 00 	mov    0xe0(%rbp),%rax
   28bd914b2:	48 89 85 a8 10 00 00 	mov    %rax,0x10a8(%rbp)
   28bd914b9:	48 c7 85 c8 10 00 00 	movq   $0x0,0x10c8(%rbp)
   28bd914c0:	00 00 00 00 
   28bd914c4:	b9 00 00 00 00       	mov    $0x0,%ecx
   28bd914c9:	e8 4d ff ff ff       	call   28bd9141b <to_literal>
   28bd914ce:	48 89 85 a0 10 00 00 	mov    %rax,0x10a0(%rbp)
   28bd914d5:	c7 85 c4 10 00 00 00 	movl   $0x0,0x10c4(%rbp)
   28bd914dc:	00 00 00 
   28bd914df:	e9 ac 00 00 00       	jmp    28bd91590 <test+0x121>
   28bd914e4:	48 8b 85 a0 10 00 00 	mov    0x10a0(%rbp),%rax
   28bd914eb:	48 89 c1             	mov    %rax,%rcx
   28bd914ee:	e8 0d 02 00 00       	call   28bd91700 <str_len>
   28bd914f3:	89 c3                	mov    %eax,%ebx
   28bd914f5:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
   28bd914f9:	8b 85 c4 10 00 00    	mov    0x10c4(%rbp),%eax
   28bd914ff:	48 63 d0             	movslq %eax,%rdx
   28bd91502:	48 89 d0             	mov    %rdx,%rax
   28bd91505:	48 c1 e0 05          	shl    $0x5,%rax
   28bd91509:	48 01 d0             	add    %rdx,%rax
   28bd9150c:	48 c1 e0 03          	shl    $0x3,%rax
   28bd91510:	48 01 c8             	add    %rcx,%rax
   28bd91513:	48 89 c1             	mov    %rax,%rcx
   28bd91516:	e8 e5 01 00 00       	call   28bd91700 <str_len>
   28bd9151b:	41 89 c0             	mov    %eax,%r8d
   28bd9151e:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
   28bd91522:	8b 85 c4 10 00 00    	mov    0x10c4(%rbp),%eax
   28bd91528:	48 63 d0             	movslq %eax,%rdx
   28bd9152b:	48 89 d0             	mov    %rdx,%rax
   28bd9152e:	48 c1 e0 05          	shl    $0x5,%rax
   28bd91532:	48 01 d0             	add    %rdx,%rax
   28bd91535:	48 c1 e0 03          	shl    $0x3,%rax
   28bd91539:	48 01 c1             	add    %rax,%rcx
   28bd9153c:	48 8b 85 a0 10 00 00 	mov    0x10a0(%rbp),%rax
   28bd91543:	41 89 d9             	mov    %ebx,%r9d
   28bd91546:	48 89 c2             	mov    %rax,%rdx
   28bd91549:	e8 7c 02 00 00       	call   28bd917ca <str_ends_with>
   28bd9154e:	83 f0 01             	xor    $0x1,%eax
   28bd91551:	84 c0                	test   %al,%al
   28bd91553:	75 33                	jne    28bd91588 <test+0x119>
   28bd91555:	8b 85 c4 10 00 00    	mov    0x10c4(%rbp),%eax
   28bd9155b:	48 63 d0             	movslq %eax,%rdx
   28bd9155e:	48 89 d0             	mov    %rdx,%rax
   28bd91561:	48 c1 e0 05          	shl    $0x5,%rax
   28bd91565:	48 01 d0             	add    %rdx,%rax
   28bd91568:	48 c1 e0 03          	shl    $0x3,%rax
   28bd9156c:	48 8d 80 d0 10 00 00 	lea    0x10d0(%rax),%rax
   28bd91573:	48 01 e8             	add    %rbp,%rax
   28bd91576:	48 2d f0 0f 00 00    	sub    $0xff0,%rax
   28bd9157c:	48 8b 00             	mov    (%rax),%rax
   28bd9157f:	48 89 85 c8 10 00 00 	mov    %rax,0x10c8(%rbp)
   28bd91586:	eb 01                	jmp    28bd91589 <test+0x11a>
   28bd91588:	90                   	nop
   28bd91589:	83 85 c4 10 00 00 01 	addl   $0x1,0x10c4(%rbp)
   28bd91590:	8b 85 c4 10 00 00    	mov    0x10c4(%rbp),%eax
   28bd91596:	39 85 b4 10 00 00    	cmp    %eax,0x10b4(%rbp)
   28bd9159c:	0f 87 42 ff ff ff    	ja     28bd914e4 <test+0x75>
   28bd915a2:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   28bd915a9:	00 
   28bd915aa:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
   28bd915b1:	00 
   28bd915b2:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
   28bd915b9:	00 
   28bd915ba:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   28bd915c1:	00 
   28bd915c2:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   28bd915c9:	00 
   28bd915ca:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
   28bd915d1:	00 
   28bd915d2:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
   28bd915d6:	48 8b 85 c8 10 00 00 	mov    0x10c8(%rbp),%rax
   28bd915dd:	48 89 c1             	mov    %rax,%rcx
   28bd915e0:	e8 f7 03 00 00       	call   28bd919dc <parse_kernel>
   28bd915e5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
   28bd915e9:	48 89 85 98 10 00 00 	mov    %rax,0x1098(%rbp)
   28bd915f0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   28bd915f4:	48 89 85 90 10 00 00 	mov    %rax,0x1090(%rbp)
   28bd915fb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd915ff:	48 89 85 88 10 00 00 	mov    %rax,0x1088(%rbp)
   28bd91606:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   28bd9160a:	48 89 85 80 10 00 00 	mov    %rax,0x1080(%rbp)
   28bd91611:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   28bd91615:	48 89 85 78 10 00 00 	mov    %rax,0x1078(%rbp)
   28bd9161c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   28bd91620:	48 89 85 70 10 00 00 	mov    %rax,0x1070(%rbp)
   28bd91627:	b9 01 00 00 00       	mov    $0x1,%ecx
   28bd9162c:	e8 ea fd ff ff       	call   28bd9141b <to_literal>
   28bd91631:	48 89 c2             	mov    %rax,%rdx
   28bd91634:	48 8b 85 88 10 00 00 	mov    0x1088(%rbp),%rax
   28bd9163b:	48 89 d1             	mov    %rdx,%rcx
   28bd9163e:	ff d0                	call   *%rax
   28bd91640:	48 89 85 68 10 00 00 	mov    %rax,0x1068(%rbp)
   28bd91647:	48 83 bd 68 10 00 00 	cmpq   $0x0,0x1068(%rbp)
   28bd9164e:	00 
   28bd9164f:	75 07                	jne    28bd91658 <test+0x1e9>
   28bd91651:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91656:	eb 68                	jmp    28bd916c0 <test+0x251>
   28bd91658:	b9 08 00 00 00       	mov    $0x8,%ecx
   28bd9165d:	e8 b9 fd ff ff       	call   28bd9141b <to_literal>
   28bd91662:	48 89 c2             	mov    %rax,%rdx
   28bd91665:	48 8b 85 68 10 00 00 	mov    0x1068(%rbp),%rax
   28bd9166c:	4c 8b 85 90 10 00 00 	mov    0x1090(%rbp),%r8
   28bd91673:	48 89 c1             	mov    %rax,%rcx
   28bd91676:	41 ff d0             	call   *%r8
   28bd91679:	48 89 85 60 10 00 00 	mov    %rax,0x1060(%rbp)
   28bd91680:	48 83 bd 60 10 00 00 	cmpq   $0x0,0x1060(%rbp)
   28bd91687:	00 
   28bd91688:	75 07                	jne    28bd91691 <test+0x222>
   28bd9168a:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd9168f:	eb 2f                	jmp    28bd916c0 <test+0x251>
   28bd91691:	c6 45 af 00          	movb   $0x0,-0x51(%rbp)
   28bd91695:	48 8d 55 af          	lea    -0x51(%rbp),%rdx
   28bd91699:	48 8b 85 a0 10 00 00 	mov    0x10a0(%rbp),%rax
   28bd916a0:	4c 8b 95 60 10 00 00 	mov    0x1060(%rbp),%r10
   28bd916a7:	41 b9 40 00 00 00    	mov    $0x40,%r9d
   28bd916ad:	49 89 d0             	mov    %rdx,%r8
   28bd916b0:	48 89 c2             	mov    %rax,%rdx
   28bd916b3:	b9 00 00 00 00       	mov    $0x0,%ecx
   28bd916b8:	41 ff d2             	call   *%r10
   28bd916bb:	b8 00 00 00 00       	mov    $0x0,%eax
   28bd916c0:	48 81 c4 58 11 00 00 	add    $0x1158,%rsp
   28bd916c7:	5b                   	pop    %rbx
   28bd916c8:	5d                   	pop    %rbp
   28bd916c9:	c3                   	ret    
   28bd916ca:	90                   	nop
   28bd916cb:	90                   	nop
   28bd916cc:	90                   	nop
   28bd916cd:	90                   	nop
   28bd916ce:	90                   	nop
   28bd916cf:	90                   	nop
   28bd916d0:	90                   	nop
   28bd916d1:	90                   	nop
   28bd916d2:	90                   	nop
   28bd916d3:	90                   	nop
   28bd916d4:	90                   	nop
   28bd916d5:	90                   	nop
   28bd916d6:	90                   	nop
   28bd916d7:	90                   	nop
   28bd916d8:	90                   	nop
   28bd916d9:	90                   	nop
   28bd916da:	90                   	nop
   28bd916db:	90                   	nop
   28bd916dc:	90                   	nop
   28bd916dd:	90                   	nop
   28bd916de:	90                   	nop
   28bd916df:	90                   	nop

000000028bd916e0 <get_teb>:
   28bd916e0:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   28bd916e7:	00 00 
   28bd916e9:	c3                   	ret    

000000028bd916ea <get_peb>:
   28bd916ea:	65 48 8b 04 25 60 00 	mov    %gs:0x60,%rax
   28bd916f1:	00 00 
   28bd916f3:	c3                   	ret    
   28bd916f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   28bd916fb:	00 00 00 
   28bd916fe:	66 90                	xchg   %ax,%ax

000000028bd91700 <str_len>:
   28bd91700:	55                   	push   %rbp
   28bd91701:	48 89 e5             	mov    %rsp,%rbp
   28bd91704:	48 83 ec 10          	sub    $0x10,%rsp
   28bd91708:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd9170c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd91713:	eb 04                	jmp    28bd91719 <str_len+0x19>
   28bd91715:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd91719:	8b 55 fc             	mov    -0x4(%rbp),%edx
   28bd9171c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91720:	48 01 d0             	add    %rdx,%rax
   28bd91723:	0f b6 00             	movzbl (%rax),%eax
   28bd91726:	84 c0                	test   %al,%al
   28bd91728:	75 eb                	jne    28bd91715 <str_len+0x15>
   28bd9172a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9172d:	48 83 c4 10          	add    $0x10,%rsp
   28bd91731:	5d                   	pop    %rbp
   28bd91732:	c3                   	ret    

000000028bd91733 <unicode_str_len>:
   28bd91733:	55                   	push   %rbp
   28bd91734:	48 89 e5             	mov    %rsp,%rbp
   28bd91737:	48 83 ec 10          	sub    $0x10,%rsp
   28bd9173b:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd9173f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd91746:	eb 04                	jmp    28bd9174c <unicode_str_len+0x19>
   28bd91748:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd9174c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9174f:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
   28bd91753:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91757:	48 01 d0             	add    %rdx,%rax
   28bd9175a:	0f b7 00             	movzwl (%rax),%eax
   28bd9175d:	66 85 c0             	test   %ax,%ax
   28bd91760:	75 e6                	jne    28bd91748 <unicode_str_len+0x15>
   28bd91762:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91765:	48 83 c4 10          	add    $0x10,%rsp
   28bd91769:	5d                   	pop    %rbp
   28bd9176a:	c3                   	ret    

000000028bd9176b <str_is_equal>:
   28bd9176b:	55                   	push   %rbp
   28bd9176c:	48 89 e5             	mov    %rsp,%rbp
   28bd9176f:	48 83 ec 10          	sub    $0x10,%rsp
   28bd91773:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd91777:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd9177b:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   28bd9177f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd91786:	eb 2f                	jmp    28bd917b7 <str_is_equal+0x4c>
   28bd91788:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9178b:	48 63 d0             	movslq %eax,%rdx
   28bd9178e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91792:	48 01 d0             	add    %rdx,%rax
   28bd91795:	0f b6 10             	movzbl (%rax),%edx
   28bd91798:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9179b:	48 63 c8             	movslq %eax,%rcx
   28bd9179e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd917a2:	48 01 c8             	add    %rcx,%rax
   28bd917a5:	0f b6 00             	movzbl (%rax),%eax
   28bd917a8:	38 c2                	cmp    %al,%dl
   28bd917aa:	74 07                	je     28bd917b3 <str_is_equal+0x48>
   28bd917ac:	b8 00 00 00 00       	mov    $0x0,%eax
   28bd917b1:	eb 11                	jmp    28bd917c4 <str_is_equal+0x59>
   28bd917b3:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd917b7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd917ba:	39 45 20             	cmp    %eax,0x20(%rbp)
   28bd917bd:	77 c9                	ja     28bd91788 <str_is_equal+0x1d>
   28bd917bf:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd917c4:	48 83 c4 10          	add    $0x10,%rsp
   28bd917c8:	5d                   	pop    %rbp
   28bd917c9:	c3                   	ret    

000000028bd917ca <str_ends_with>:
   28bd917ca:	55                   	push   %rbp
   28bd917cb:	48 89 e5             	mov    %rsp,%rbp
   28bd917ce:	48 83 ec 10          	sub    $0x10,%rsp
   28bd917d2:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd917d6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd917da:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   28bd917de:	44 89 4d 28          	mov    %r9d,0x28(%rbp)
   28bd917e2:	8b 45 20             	mov    0x20(%rbp),%eax
   28bd917e5:	2b 45 28             	sub    0x28(%rbp),%eax
   28bd917e8:	89 45 fc             	mov    %eax,-0x4(%rbp)
   28bd917eb:	eb 36                	jmp    28bd91823 <str_ends_with+0x59>
   28bd917ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd917f0:	48 63 d0             	movslq %eax,%rdx
   28bd917f3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd917f7:	48 01 d0             	add    %rdx,%rax
   28bd917fa:	0f b6 10             	movzbl (%rax),%edx
   28bd917fd:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   28bd91800:	8b 45 28             	mov    0x28(%rbp),%eax
   28bd91803:	01 c8                	add    %ecx,%eax
   28bd91805:	2b 45 20             	sub    0x20(%rbp),%eax
   28bd91808:	89 c1                	mov    %eax,%ecx
   28bd9180a:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd9180e:	48 01 c8             	add    %rcx,%rax
   28bd91811:	0f b6 00             	movzbl (%rax),%eax
   28bd91814:	38 c2                	cmp    %al,%dl
   28bd91816:	74 07                	je     28bd9181f <str_ends_with+0x55>
   28bd91818:	b8 00 00 00 00       	mov    $0x0,%eax
   28bd9181d:	eb 11                	jmp    28bd91830 <str_ends_with+0x66>
   28bd9181f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd91823:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91826:	39 45 20             	cmp    %eax,0x20(%rbp)
   28bd91829:	77 c2                	ja     28bd917ed <str_ends_with+0x23>
   28bd9182b:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91830:	48 83 c4 10          	add    $0x10,%rsp
   28bd91834:	5d                   	pop    %rbp
   28bd91835:	c3                   	ret    

000000028bd91836 <mem_copy>:
   28bd91836:	55                   	push   %rbp
   28bd91837:	48 89 e5             	mov    %rsp,%rbp
   28bd9183a:	48 83 ec 10          	sub    $0x10,%rsp
   28bd9183e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd91842:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd91846:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   28bd9184a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd91851:	eb 23                	jmp    28bd91876 <mem_copy+0x40>
   28bd91853:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91856:	48 63 d0             	movslq %eax,%rdx
   28bd91859:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd9185d:	48 01 d0             	add    %rdx,%rax
   28bd91860:	8b 55 fc             	mov    -0x4(%rbp),%edx
   28bd91863:	48 63 ca             	movslq %edx,%rcx
   28bd91866:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   28bd9186a:	48 01 ca             	add    %rcx,%rdx
   28bd9186d:	0f b6 00             	movzbl (%rax),%eax
   28bd91870:	88 02                	mov    %al,(%rdx)
   28bd91872:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd91876:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91879:	39 45 20             	cmp    %eax,0x20(%rbp)
   28bd9187c:	77 d5                	ja     28bd91853 <mem_copy+0x1d>
   28bd9187e:	90                   	nop
   28bd9187f:	90                   	nop
   28bd91880:	48 83 c4 10          	add    $0x10,%rsp
   28bd91884:	5d                   	pop    %rbp
   28bd91885:	c3                   	ret    

000000028bd91886 <str_copy>:
   28bd91886:	55                   	push   %rbp
   28bd91887:	48 89 e5             	mov    %rsp,%rbp
   28bd9188a:	48 83 ec 30          	sub    $0x30,%rsp
   28bd9188e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd91892:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd91896:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd9189a:	48 89 c1             	mov    %rax,%rcx
   28bd9189d:	e8 5e fe ff ff       	call   28bd91700 <str_len>
   28bd918a2:	89 45 fc             	mov    %eax,-0x4(%rbp)
   28bd918a5:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd918a8:	8d 50 01             	lea    0x1(%rax),%edx
   28bd918ab:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd918af:	41 89 d0             	mov    %edx,%r8d
   28bd918b2:	48 89 c2             	mov    %rax,%rdx
   28bd918b5:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   28bd918b9:	e8 78 ff ff ff       	call   28bd91836 <mem_copy>
   28bd918be:	90                   	nop
   28bd918bf:	48 83 c4 30          	add    $0x30,%rsp
   28bd918c3:	5d                   	pop    %rbp
   28bd918c4:	c3                   	ret    

000000028bd918c5 <unicode_to_asci_str>:
   28bd918c5:	55                   	push   %rbp
   28bd918c6:	48 89 e5             	mov    %rsp,%rbp
   28bd918c9:	48 83 ec 30          	sub    $0x30,%rsp
   28bd918cd:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd918d1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd918d5:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd918d9:	48 89 c1             	mov    %rax,%rcx
   28bd918dc:	e8 52 fe ff ff       	call   28bd91733 <unicode_str_len>
   28bd918e1:	89 45 f8             	mov    %eax,-0x8(%rbp)
   28bd918e4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd918eb:	eb 26                	jmp    28bd91913 <unicode_to_asci_str+0x4e>
   28bd918ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd918f0:	48 98                	cltq   
   28bd918f2:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
   28bd918f6:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd918fa:	48 01 d0             	add    %rdx,%rax
   28bd918fd:	0f b7 10             	movzwl (%rax),%edx
   28bd91900:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91903:	48 63 c8             	movslq %eax,%rcx
   28bd91906:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd9190a:	48 01 c8             	add    %rcx,%rax
   28bd9190d:	88 10                	mov    %dl,(%rax)
   28bd9190f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd91913:	8b 45 f8             	mov    -0x8(%rbp),%eax
   28bd91916:	8d 50 01             	lea    0x1(%rax),%edx
   28bd91919:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd9191c:	39 c2                	cmp    %eax,%edx
   28bd9191e:	77 cd                	ja     28bd918ed <unicode_to_asci_str+0x28>
   28bd91920:	90                   	nop
   28bd91921:	90                   	nop
   28bd91922:	48 83 c4 30          	add    $0x30,%rsp
   28bd91926:	5d                   	pop    %rbp
   28bd91927:	c3                   	ret    

000000028bd91928 <build_simple_ldr>:
   28bd91928:	55                   	push   %rbp
   28bd91929:	48 89 e5             	mov    %rsp,%rbp
   28bd9192c:	48 83 ec 40          	sub    $0x40,%rsp
   28bd91930:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd91934:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd91938:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd9193c:	48 8b 40 18          	mov    0x18(%rax),%rax
   28bd91940:	48 83 c0 20          	add    $0x20,%rax
   28bd91944:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   28bd91948:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   28bd9194c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   28bd91950:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   28bd91957:	eb 65                	jmp    28bd919be <build_simple_ldr+0x96>
   28bd91959:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   28bd9195d:	48 83 e8 10          	sub    $0x10,%rax
   28bd91961:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   28bd91965:	8b 55 f4             	mov    -0xc(%rbp),%edx
   28bd91968:	48 89 d0             	mov    %rdx,%rax
   28bd9196b:	48 c1 e0 05          	shl    $0x5,%rax
   28bd9196f:	48 01 d0             	add    %rdx,%rax
   28bd91972:	48 c1 e0 03          	shl    $0x3,%rax
   28bd91976:	48 89 c2             	mov    %rax,%rdx
   28bd91979:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd9197d:	48 01 c2             	add    %rax,%rdx
   28bd91980:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   28bd91984:	48 8b 40 30          	mov    0x30(%rax),%rax
   28bd91988:	48 89 82 00 01 00 00 	mov    %rax,0x100(%rdx)
   28bd9198f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   28bd91993:	48 8b 50 50          	mov    0x50(%rax),%rdx
   28bd91997:	8b 4d f4             	mov    -0xc(%rbp),%ecx
   28bd9199a:	48 89 c8             	mov    %rcx,%rax
   28bd9199d:	48 c1 e0 05          	shl    $0x5,%rax
   28bd919a1:	48 01 c8             	add    %rcx,%rax
   28bd919a4:	48 c1 e0 03          	shl    $0x3,%rax
   28bd919a8:	48 89 c1             	mov    %rax,%rcx
   28bd919ab:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd919af:	48 01 c8             	add    %rcx,%rax
   28bd919b2:	48 89 c1             	mov    %rax,%rcx
   28bd919b5:	e8 0b ff ff ff       	call   28bd918c5 <unicode_to_asci_str>
   28bd919ba:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   28bd919be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   28bd919c2:	48 8b 00             	mov    (%rax),%rax
   28bd919c5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   28bd919c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   28bd919cd:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   28bd919d1:	75 86                	jne    28bd91959 <build_simple_ldr+0x31>
   28bd919d3:	8b 45 f4             	mov    -0xc(%rbp),%eax
   28bd919d6:	48 83 c4 40          	add    $0x40,%rsp
   28bd919da:	5d                   	pop    %rbp
   28bd919db:	c3                   	ret    

000000028bd919dc <parse_kernel>:
   28bd919dc:	55                   	push   %rbp
   28bd919dd:	48 89 e5             	mov    %rsp,%rbp
   28bd919e0:	48 83 ec 70          	sub    $0x70,%rsp
   28bd919e4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   28bd919e8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   28bd919ec:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd919f0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   28bd919f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   28bd919f8:	0f b7 00             	movzwl (%rax),%eax
   28bd919fb:	66 3d 4d 5a          	cmp    $0x5a4d,%ax
   28bd919ff:	0f 85 43 02 00 00    	jne    28bd91c48 <parse_kernel+0x26c>
   28bd91a05:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   28bd91a09:	8b 40 3c             	mov    0x3c(%rax),%eax
   28bd91a0c:	48 63 d0             	movslq %eax,%rdx
   28bd91a0f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91a13:	48 01 d0             	add    %rdx,%rax
   28bd91a16:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   28bd91a1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   28bd91a1e:	8b 00                	mov    (%rax),%eax
   28bd91a20:	3d 50 45 00 00       	cmp    $0x4550,%eax
   28bd91a25:	0f 85 20 02 00 00    	jne    28bd91c4b <parse_kernel+0x26f>
   28bd91a2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   28bd91a2f:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
   28bd91a35:	89 c2                	mov    %eax,%edx
   28bd91a37:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91a3b:	48 01 d0             	add    %rdx,%rax
   28bd91a3e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   28bd91a42:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   28bd91a46:	8b 40 20             	mov    0x20(%rax),%eax
   28bd91a49:	89 c2                	mov    %eax,%edx
   28bd91a4b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91a4f:	48 01 d0             	add    %rdx,%rax
   28bd91a52:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   28bd91a56:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   28bd91a5a:	8b 40 24             	mov    0x24(%rax),%eax
   28bd91a5d:	89 c2                	mov    %eax,%edx
   28bd91a5f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91a63:	48 01 d0             	add    %rdx,%rax
   28bd91a66:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   28bd91a6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   28bd91a6e:	8b 40 1c             	mov    0x1c(%rax),%eax
   28bd91a71:	89 c2                	mov    %eax,%edx
   28bd91a73:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91a77:	48 01 d0             	add    %rdx,%rax
   28bd91a7a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   28bd91a7e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   28bd91a85:	e9 aa 01 00 00       	jmp    28bd91c34 <parse_kernel+0x258>
   28bd91a8a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91a8d:	48 98                	cltq   
   28bd91a8f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   28bd91a96:	00 
   28bd91a97:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   28bd91a9b:	48 01 d0             	add    %rdx,%rax
   28bd91a9e:	8b 00                	mov    (%rax),%eax
   28bd91aa0:	89 c2                	mov    %eax,%edx
   28bd91aa2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91aa6:	48 01 d0             	add    %rdx,%rax
   28bd91aa9:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   28bd91aad:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91ab0:	48 98                	cltq   
   28bd91ab2:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
   28bd91ab6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   28bd91aba:	48 01 d0             	add    %rdx,%rax
   28bd91abd:	0f b7 00             	movzwl (%rax),%eax
   28bd91ac0:	66 89 45 be          	mov    %ax,-0x42(%rbp)
   28bd91ac4:	0f b7 45 be          	movzwl -0x42(%rbp),%eax
   28bd91ac8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   28bd91acf:	00 
   28bd91ad0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   28bd91ad4:	48 01 d0             	add    %rdx,%rax
   28bd91ad7:	8b 00                	mov    (%rax),%eax
   28bd91ad9:	89 c2                	mov    %eax,%edx
   28bd91adb:	48 8b 45 10          	mov    0x10(%rbp),%rax
   28bd91adf:	48 01 d0             	add    %rdx,%rax
   28bd91ae2:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   28bd91ae6:	48 8d 0d 13 25 00 00 	lea    0x2513(%rip),%rcx        # 28bd94000 <.rdata>
   28bd91aed:	e8 0e fc ff ff       	call   28bd91700 <str_len>
   28bd91af2:	89 c2                	mov    %eax,%edx
   28bd91af4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd91af8:	41 89 d0             	mov    %edx,%r8d
   28bd91afb:	48 8d 15 fe 24 00 00 	lea    0x24fe(%rip),%rdx        # 28bd94000 <.rdata>
   28bd91b02:	48 89 c1             	mov    %rax,%rcx
   28bd91b05:	e8 61 fc ff ff       	call   28bd9176b <str_is_equal>
   28bd91b0a:	84 c0                	test   %al,%al
   28bd91b0c:	74 10                	je     28bd91b1e <parse_kernel+0x142>
   28bd91b0e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd91b12:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   28bd91b16:	48 89 10             	mov    %rdx,(%rax)
   28bd91b19:	e9 12 01 00 00       	jmp    28bd91c30 <parse_kernel+0x254>
   28bd91b1e:	48 8d 0d ec 24 00 00 	lea    0x24ec(%rip),%rcx        # 28bd94011 <.rdata+0x11>
   28bd91b25:	e8 d6 fb ff ff       	call   28bd91700 <str_len>
   28bd91b2a:	89 c2                	mov    %eax,%edx
   28bd91b2c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd91b30:	41 89 d0             	mov    %edx,%r8d
   28bd91b33:	48 8d 15 d7 24 00 00 	lea    0x24d7(%rip),%rdx        # 28bd94011 <.rdata+0x11>
   28bd91b3a:	48 89 c1             	mov    %rax,%rcx
   28bd91b3d:	e8 29 fc ff ff       	call   28bd9176b <str_is_equal>
   28bd91b42:	84 c0                	test   %al,%al
   28bd91b44:	74 11                	je     28bd91b57 <parse_kernel+0x17b>
   28bd91b46:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd91b4a:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   28bd91b4e:	48 89 50 08          	mov    %rdx,0x8(%rax)
   28bd91b52:	e9 d9 00 00 00       	jmp    28bd91c30 <parse_kernel+0x254>
   28bd91b57:	48 8d 0d c2 24 00 00 	lea    0x24c2(%rip),%rcx        # 28bd94020 <.rdata+0x20>
   28bd91b5e:	e8 9d fb ff ff       	call   28bd91700 <str_len>
   28bd91b63:	89 c2                	mov    %eax,%edx
   28bd91b65:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd91b69:	41 89 d0             	mov    %edx,%r8d
   28bd91b6c:	48 8d 15 ad 24 00 00 	lea    0x24ad(%rip),%rdx        # 28bd94020 <.rdata+0x20>
   28bd91b73:	48 89 c1             	mov    %rax,%rcx
   28bd91b76:	e8 f0 fb ff ff       	call   28bd9176b <str_is_equal>
   28bd91b7b:	84 c0                	test   %al,%al
   28bd91b7d:	74 11                	je     28bd91b90 <parse_kernel+0x1b4>
   28bd91b7f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd91b83:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   28bd91b87:	48 89 50 10          	mov    %rdx,0x10(%rax)
   28bd91b8b:	e9 a0 00 00 00       	jmp    28bd91c30 <parse_kernel+0x254>
   28bd91b90:	48 8d 0d 96 24 00 00 	lea    0x2496(%rip),%rcx        # 28bd9402d <.rdata+0x2d>
   28bd91b97:	e8 64 fb ff ff       	call   28bd91700 <str_len>
   28bd91b9c:	89 c2                	mov    %eax,%edx
   28bd91b9e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd91ba2:	41 89 d0             	mov    %edx,%r8d
   28bd91ba5:	48 8d 15 81 24 00 00 	lea    0x2481(%rip),%rdx        # 28bd9402d <.rdata+0x2d>
   28bd91bac:	48 89 c1             	mov    %rax,%rcx
   28bd91baf:	e8 b7 fb ff ff       	call   28bd9176b <str_is_equal>
   28bd91bb4:	84 c0                	test   %al,%al
   28bd91bb6:	74 0e                	je     28bd91bc6 <parse_kernel+0x1ea>
   28bd91bb8:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd91bbc:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   28bd91bc0:	48 89 50 18          	mov    %rdx,0x18(%rax)
   28bd91bc4:	eb 6a                	jmp    28bd91c30 <parse_kernel+0x254>
   28bd91bc6:	48 8d 0d 6c 24 00 00 	lea    0x246c(%rip),%rcx        # 28bd94039 <.rdata+0x39>
   28bd91bcd:	e8 2e fb ff ff       	call   28bd91700 <str_len>
   28bd91bd2:	89 c2                	mov    %eax,%edx
   28bd91bd4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd91bd8:	41 89 d0             	mov    %edx,%r8d
   28bd91bdb:	48 8d 15 57 24 00 00 	lea    0x2457(%rip),%rdx        # 28bd94039 <.rdata+0x39>
   28bd91be2:	48 89 c1             	mov    %rax,%rcx
   28bd91be5:	e8 81 fb ff ff       	call   28bd9176b <str_is_equal>
   28bd91bea:	84 c0                	test   %al,%al
   28bd91bec:	74 0e                	je     28bd91bfc <parse_kernel+0x220>
   28bd91bee:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd91bf2:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   28bd91bf6:	48 89 50 20          	mov    %rdx,0x20(%rax)
   28bd91bfa:	eb 34                	jmp    28bd91c30 <parse_kernel+0x254>
   28bd91bfc:	48 8d 0d 43 24 00 00 	lea    0x2443(%rip),%rcx        # 28bd94046 <.rdata+0x46>
   28bd91c03:	e8 f8 fa ff ff       	call   28bd91700 <str_len>
   28bd91c08:	89 c2                	mov    %eax,%edx
   28bd91c0a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   28bd91c0e:	41 89 d0             	mov    %edx,%r8d
   28bd91c11:	48 8d 15 2e 24 00 00 	lea    0x242e(%rip),%rdx        # 28bd94046 <.rdata+0x46>
   28bd91c18:	48 89 c1             	mov    %rax,%rcx
   28bd91c1b:	e8 4b fb ff ff       	call   28bd9176b <str_is_equal>
   28bd91c20:	84 c0                	test   %al,%al
   28bd91c22:	74 0c                	je     28bd91c30 <parse_kernel+0x254>
   28bd91c24:	48 8b 45 18          	mov    0x18(%rbp),%rax
   28bd91c28:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   28bd91c2c:	48 89 50 28          	mov    %rdx,0x28(%rax)
   28bd91c30:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   28bd91c34:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   28bd91c38:	8b 50 18             	mov    0x18(%rax),%edx
   28bd91c3b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   28bd91c3e:	39 c2                	cmp    %eax,%edx
   28bd91c40:	0f 87 44 fe ff ff    	ja     28bd91a8a <parse_kernel+0xae>
   28bd91c46:	eb 04                	jmp    28bd91c4c <parse_kernel+0x270>
   28bd91c48:	90                   	nop
   28bd91c49:	eb 01                	jmp    28bd91c4c <parse_kernel+0x270>
   28bd91c4b:	90                   	nop
   28bd91c4c:	48 83 c4 70          	add    $0x70,%rsp
   28bd91c50:	5d                   	pop    %rbp
   28bd91c51:	c3                   	ret    
   28bd91c52:	90                   	nop
   28bd91c53:	90                   	nop
   28bd91c54:	90                   	nop
   28bd91c55:	90                   	nop
   28bd91c56:	90                   	nop
   28bd91c57:	90                   	nop
   28bd91c58:	90                   	nop
   28bd91c59:	90                   	nop
   28bd91c5a:	90                   	nop
   28bd91c5b:	90                   	nop
   28bd91c5c:	90                   	nop
   28bd91c5d:	90                   	nop
   28bd91c5e:	90                   	nop
   28bd91c5f:	90                   	nop

000000028bd91c60 <__do_global_dtors>:
   28bd91c60:	48 83 ec 28          	sub    $0x28,%rsp
   28bd91c64:	48 8b 05 a5 13 00 00 	mov    0x13a5(%rip),%rax        # 28bd93010 <p.92992>
   28bd91c6b:	48 8b 00             	mov    (%rax),%rax
   28bd91c6e:	48 85 c0             	test   %rax,%rax
   28bd91c71:	74 22                	je     28bd91c95 <__do_global_dtors+0x35>
   28bd91c73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd91c78:	ff d0                	call   *%rax
   28bd91c7a:	48 8b 05 8f 13 00 00 	mov    0x138f(%rip),%rax        # 28bd93010 <p.92992>
   28bd91c81:	48 8d 50 08          	lea    0x8(%rax),%rdx
   28bd91c85:	48 8b 40 08          	mov    0x8(%rax),%rax
   28bd91c89:	48 89 15 80 13 00 00 	mov    %rdx,0x1380(%rip)        # 28bd93010 <p.92992>
   28bd91c90:	48 85 c0             	test   %rax,%rax
   28bd91c93:	75 e3                	jne    28bd91c78 <__do_global_dtors+0x18>
   28bd91c95:	48 83 c4 28          	add    $0x28,%rsp
   28bd91c99:	c3                   	ret    
   28bd91c9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000028bd91ca0 <__do_global_ctors>:
   28bd91ca0:	56                   	push   %rsi
   28bd91ca1:	53                   	push   %rbx
   28bd91ca2:	48 83 ec 28          	sub    $0x28,%rsp
   28bd91ca6:	48 8b 15 33 25 00 00 	mov    0x2533(%rip),%rdx        # 28bd941e0 <.refptr.__CTOR_LIST__>
   28bd91cad:	48 8b 02             	mov    (%rdx),%rax
   28bd91cb0:	89 c1                	mov    %eax,%ecx
   28bd91cb2:	83 f8 ff             	cmp    $0xffffffff,%eax
   28bd91cb5:	74 39                	je     28bd91cf0 <__do_global_ctors+0x50>
   28bd91cb7:	85 c9                	test   %ecx,%ecx
   28bd91cb9:	74 20                	je     28bd91cdb <__do_global_ctors+0x3b>
   28bd91cbb:	89 c8                	mov    %ecx,%eax
   28bd91cbd:	83 e9 01             	sub    $0x1,%ecx
   28bd91cc0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   28bd91cc4:	48 29 c8             	sub    %rcx,%rax
   28bd91cc7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   28bd91ccc:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd91cd0:	ff 13                	call   *(%rbx)
   28bd91cd2:	48 83 eb 08          	sub    $0x8,%rbx
   28bd91cd6:	48 39 f3             	cmp    %rsi,%rbx
   28bd91cd9:	75 f5                	jne    28bd91cd0 <__do_global_ctors+0x30>
   28bd91cdb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 28bd91c60 <__do_global_dtors>
   28bd91ce2:	48 83 c4 28          	add    $0x28,%rsp
   28bd91ce6:	5b                   	pop    %rbx
   28bd91ce7:	5e                   	pop    %rsi
   28bd91ce8:	e9 83 f6 ff ff       	jmp    28bd91370 <atexit>
   28bd91ced:	0f 1f 00             	nopl   (%rax)
   28bd91cf0:	31 c0                	xor    %eax,%eax
   28bd91cf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd91cf8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   28bd91cfc:	89 c1                	mov    %eax,%ecx
   28bd91cfe:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   28bd91d03:	4c 89 c0             	mov    %r8,%rax
   28bd91d06:	75 f0                	jne    28bd91cf8 <__do_global_ctors+0x58>
   28bd91d08:	eb ad                	jmp    28bd91cb7 <__do_global_ctors+0x17>
   28bd91d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000028bd91d10 <__main>:
   28bd91d10:	8b 05 0a 53 00 00    	mov    0x530a(%rip),%eax        # 28bd97020 <initialized>
   28bd91d16:	85 c0                	test   %eax,%eax
   28bd91d18:	74 06                	je     28bd91d20 <__main+0x10>
   28bd91d1a:	c3                   	ret    
   28bd91d1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd91d20:	c7 05 f6 52 00 00 01 	movl   $0x1,0x52f6(%rip)        # 28bd97020 <initialized>
   28bd91d27:	00 00 00 
   28bd91d2a:	e9 71 ff ff ff       	jmp    28bd91ca0 <__do_global_ctors>
   28bd91d2f:	90                   	nop

000000028bd91d30 <__dyn_tls_dtor>:
   28bd91d30:	48 83 ec 28          	sub    $0x28,%rsp
   28bd91d34:	83 fa 03             	cmp    $0x3,%edx
   28bd91d37:	74 17                	je     28bd91d50 <__dyn_tls_dtor+0x20>
   28bd91d39:	85 d2                	test   %edx,%edx
   28bd91d3b:	74 13                	je     28bd91d50 <__dyn_tls_dtor+0x20>
   28bd91d3d:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91d42:	48 83 c4 28          	add    $0x28,%rsp
   28bd91d46:	c3                   	ret    
   28bd91d47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   28bd91d4e:	00 00 
   28bd91d50:	e8 ab 07 00 00       	call   28bd92500 <__mingw_TLScallback>
   28bd91d55:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91d5a:	48 83 c4 28          	add    $0x28,%rsp
   28bd91d5e:	c3                   	ret    
   28bd91d5f:	90                   	nop

000000028bd91d60 <__dyn_tls_init>:
   28bd91d60:	56                   	push   %rsi
   28bd91d61:	53                   	push   %rbx
   28bd91d62:	48 83 ec 28          	sub    $0x28,%rsp
   28bd91d66:	48 8b 05 63 24 00 00 	mov    0x2463(%rip),%rax        # 28bd941d0 <.refptr._CRT_MT>
   28bd91d6d:	83 38 02             	cmpl   $0x2,(%rax)
   28bd91d70:	74 06                	je     28bd91d78 <__dyn_tls_init+0x18>
   28bd91d72:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   28bd91d78:	83 fa 02             	cmp    $0x2,%edx
   28bd91d7b:	74 13                	je     28bd91d90 <__dyn_tls_init+0x30>
   28bd91d7d:	83 fa 01             	cmp    $0x1,%edx
   28bd91d80:	74 4e                	je     28bd91dd0 <__dyn_tls_init+0x70>
   28bd91d82:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91d87:	48 83 c4 28          	add    $0x28,%rsp
   28bd91d8b:	5b                   	pop    %rbx
   28bd91d8c:	5e                   	pop    %rsi
   28bd91d8d:	c3                   	ret    
   28bd91d8e:	66 90                	xchg   %ax,%ax
   28bd91d90:	48 8d 1d b9 82 00 00 	lea    0x82b9(%rip),%rbx        # 28bd9a050 <__xd_z>
   28bd91d97:	48 8d 35 b2 82 00 00 	lea    0x82b2(%rip),%rsi        # 28bd9a050 <__xd_z>
   28bd91d9e:	48 39 de             	cmp    %rbx,%rsi
   28bd91da1:	74 df                	je     28bd91d82 <__dyn_tls_init+0x22>
   28bd91da3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd91da8:	48 8b 03             	mov    (%rbx),%rax
   28bd91dab:	48 85 c0             	test   %rax,%rax
   28bd91dae:	74 02                	je     28bd91db2 <__dyn_tls_init+0x52>
   28bd91db0:	ff d0                	call   *%rax
   28bd91db2:	48 83 c3 08          	add    $0x8,%rbx
   28bd91db6:	48 39 de             	cmp    %rbx,%rsi
   28bd91db9:	75 ed                	jne    28bd91da8 <__dyn_tls_init+0x48>
   28bd91dbb:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91dc0:	48 83 c4 28          	add    $0x28,%rsp
   28bd91dc4:	5b                   	pop    %rbx
   28bd91dc5:	5e                   	pop    %rsi
   28bd91dc6:	c3                   	ret    
   28bd91dc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   28bd91dce:	00 00 
   28bd91dd0:	e8 2b 07 00 00       	call   28bd92500 <__mingw_TLScallback>
   28bd91dd5:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd91dda:	48 83 c4 28          	add    $0x28,%rsp
   28bd91dde:	5b                   	pop    %rbx
   28bd91ddf:	5e                   	pop    %rsi
   28bd91de0:	c3                   	ret    
   28bd91de1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd91de8:	00 00 00 00 
   28bd91dec:	0f 1f 40 00          	nopl   0x0(%rax)

000000028bd91df0 <__tlregdtor>:
   28bd91df0:	31 c0                	xor    %eax,%eax
   28bd91df2:	c3                   	ret    
   28bd91df3:	90                   	nop
   28bd91df4:	90                   	nop
   28bd91df5:	90                   	nop
   28bd91df6:	90                   	nop
   28bd91df7:	90                   	nop
   28bd91df8:	90                   	nop
   28bd91df9:	90                   	nop
   28bd91dfa:	90                   	nop
   28bd91dfb:	90                   	nop
   28bd91dfc:	90                   	nop
   28bd91dfd:	90                   	nop
   28bd91dfe:	90                   	nop
   28bd91dff:	90                   	nop

000000028bd91e00 <__report_error>:
   28bd91e00:	41 54                	push   %r12
   28bd91e02:	53                   	push   %rbx
   28bd91e03:	48 83 ec 38          	sub    $0x38,%rsp
   28bd91e07:	49 89 cc             	mov    %rcx,%r12
   28bd91e0a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   28bd91e0f:	b9 02 00 00 00       	mov    $0x2,%ecx
   28bd91e14:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   28bd91e19:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   28bd91e1e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   28bd91e23:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   28bd91e28:	e8 e3 0d 00 00       	call   28bd92c10 <__acrt_iob_func>
   28bd91e2d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   28bd91e33:	ba 01 00 00 00       	mov    $0x1,%edx
   28bd91e38:	48 8d 0d 81 22 00 00 	lea    0x2281(%rip),%rcx        # 28bd940c0 <.rdata>
   28bd91e3f:	49 89 c1             	mov    %rax,%r9
   28bd91e42:	e8 01 0c 00 00       	call   28bd92a48 <fwrite>
   28bd91e47:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   28bd91e4c:	b9 02 00 00 00       	mov    $0x2,%ecx
   28bd91e51:	e8 ba 0d 00 00       	call   28bd92c10 <__acrt_iob_func>
   28bd91e56:	4c 89 e2             	mov    %r12,%rdx
   28bd91e59:	48 89 c1             	mov    %rax,%rcx
   28bd91e5c:	49 89 d8             	mov    %rbx,%r8
   28bd91e5f:	e8 cc 0b 00 00       	call   28bd92a30 <vfprintf>
   28bd91e64:	e8 f7 0b 00 00       	call   28bd92a60 <abort>
   28bd91e69:	90                   	nop
   28bd91e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000028bd91e70 <__write_memory.part.0>:
   28bd91e70:	41 54                	push   %r12
   28bd91e72:	55                   	push   %rbp
   28bd91e73:	57                   	push   %rdi
   28bd91e74:	56                   	push   %rsi
   28bd91e75:	53                   	push   %rbx
   28bd91e76:	48 83 ec 50          	sub    $0x50,%rsp
   28bd91e7a:	48 63 3d d3 51 00 00 	movslq 0x51d3(%rip),%rdi        # 28bd97054 <maxSections>
   28bd91e81:	49 89 cc             	mov    %rcx,%r12
   28bd91e84:	48 89 d6             	mov    %rdx,%rsi
   28bd91e87:	4c 89 c3             	mov    %r8,%rbx
   28bd91e8a:	85 ff                	test   %edi,%edi
   28bd91e8c:	0f 8e 8e 01 00 00    	jle    28bd92020 <__write_memory.part.0+0x1b0>
   28bd91e92:	48 8b 05 bf 51 00 00 	mov    0x51bf(%rip),%rax        # 28bd97058 <the_secs>
   28bd91e99:	31 c9                	xor    %ecx,%ecx
   28bd91e9b:	48 83 c0 18          	add    $0x18,%rax
   28bd91e9f:	90                   	nop
   28bd91ea0:	48 8b 10             	mov    (%rax),%rdx
   28bd91ea3:	49 39 d4             	cmp    %rdx,%r12
   28bd91ea6:	72 14                	jb     28bd91ebc <__write_memory.part.0+0x4c>
   28bd91ea8:	4c 8b 40 08          	mov    0x8(%rax),%r8
   28bd91eac:	45 8b 40 08          	mov    0x8(%r8),%r8d
   28bd91eb0:	4c 01 c2             	add    %r8,%rdx
   28bd91eb3:	49 39 d4             	cmp    %rdx,%r12
   28bd91eb6:	0f 82 8b 00 00 00    	jb     28bd91f47 <__write_memory.part.0+0xd7>
   28bd91ebc:	83 c1 01             	add    $0x1,%ecx
   28bd91ebf:	48 83 c0 28          	add    $0x28,%rax
   28bd91ec3:	39 f9                	cmp    %edi,%ecx
   28bd91ec5:	75 d9                	jne    28bd91ea0 <__write_memory.part.0+0x30>
   28bd91ec7:	4c 89 e1             	mov    %r12,%rcx
   28bd91eca:	e8 41 08 00 00       	call   28bd92710 <__mingw_GetSectionForAddress>
   28bd91ecf:	48 89 c5             	mov    %rax,%rbp
   28bd91ed2:	48 85 c0             	test   %rax,%rax
   28bd91ed5:	0f 84 a2 01 00 00    	je     28bd9207d <__write_memory.part.0+0x20d>
   28bd91edb:	48 8b 05 76 51 00 00 	mov    0x5176(%rip),%rax        # 28bd97058 <the_secs>
   28bd91ee2:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
   28bd91ee6:	48 c1 e7 03          	shl    $0x3,%rdi
   28bd91eea:	48 01 f8             	add    %rdi,%rax
   28bd91eed:	48 89 68 20          	mov    %rbp,0x20(%rax)
   28bd91ef1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   28bd91ef7:	e8 44 09 00 00       	call   28bd92840 <_GetPEImageBase>
   28bd91efc:	8b 4d 0c             	mov    0xc(%rbp),%ecx
   28bd91eff:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   28bd91f04:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   28bd91f0a:	48 01 c1             	add    %rax,%rcx
   28bd91f0d:	48 8b 05 44 51 00 00 	mov    0x5144(%rip),%rax        # 28bd97058 <the_secs>
   28bd91f14:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
   28bd91f19:	ff 15 1d 72 00 00    	call   *0x721d(%rip)        # 28bd9913c <__imp_VirtualQuery>
   28bd91f1f:	48 85 c0             	test   %rax,%rax
   28bd91f22:	0f 84 3a 01 00 00    	je     28bd92062 <__write_memory.part.0+0x1f2>
   28bd91f28:	8b 44 24 44          	mov    0x44(%rsp),%eax
   28bd91f2c:	8d 50 c0             	lea    -0x40(%rax),%edx
   28bd91f2f:	83 e2 bf             	and    $0xffffffbf,%edx
   28bd91f32:	74 0c                	je     28bd91f40 <__write_memory.part.0+0xd0>
   28bd91f34:	8d 50 fc             	lea    -0x4(%rax),%edx
   28bd91f37:	83 e2 fb             	and    $0xfffffffb,%edx
   28bd91f3a:	0f 85 90 00 00 00    	jne    28bd91fd0 <__write_memory.part.0+0x160>
   28bd91f40:	83 05 0d 51 00 00 01 	addl   $0x1,0x510d(%rip)        # 28bd97054 <maxSections>
   28bd91f47:	83 fb 08             	cmp    $0x8,%ebx
   28bd91f4a:	73 2c                	jae    28bd91f78 <__write_memory.part.0+0x108>
   28bd91f4c:	f6 c3 04             	test   $0x4,%bl
   28bd91f4f:	0f 85 db 00 00 00    	jne    28bd92030 <__write_memory.part.0+0x1c0>
   28bd91f55:	85 db                	test   %ebx,%ebx
   28bd91f57:	74 10                	je     28bd91f69 <__write_memory.part.0+0xf9>
   28bd91f59:	0f b6 06             	movzbl (%rsi),%eax
   28bd91f5c:	41 88 04 24          	mov    %al,(%r12)
   28bd91f60:	f6 c3 02             	test   $0x2,%bl
   28bd91f63:	0f 85 e7 00 00 00    	jne    28bd92050 <__write_memory.part.0+0x1e0>
   28bd91f69:	48 83 c4 50          	add    $0x50,%rsp
   28bd91f6d:	5b                   	pop    %rbx
   28bd91f6e:	5e                   	pop    %rsi
   28bd91f6f:	5f                   	pop    %rdi
   28bd91f70:	5d                   	pop    %rbp
   28bd91f71:	41 5c                	pop    %r12
   28bd91f73:	c3                   	ret    
   28bd91f74:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd91f78:	48 8b 06             	mov    (%rsi),%rax
   28bd91f7b:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
   28bd91f80:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
   28bd91f84:	49 89 04 24          	mov    %rax,(%r12)
   28bd91f88:	89 d8                	mov    %ebx,%eax
   28bd91f8a:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
   28bd91f8f:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
   28bd91f94:	49 29 cc             	sub    %rcx,%r12
   28bd91f97:	44 01 e3             	add    %r12d,%ebx
   28bd91f9a:	4c 29 e6             	sub    %r12,%rsi
   28bd91f9d:	83 e3 f8             	and    $0xfffffff8,%ebx
   28bd91fa0:	83 fb 08             	cmp    $0x8,%ebx
   28bd91fa3:	72 c4                	jb     28bd91f69 <__write_memory.part.0+0xf9>
   28bd91fa5:	83 e3 f8             	and    $0xfffffff8,%ebx
   28bd91fa8:	31 c0                	xor    %eax,%eax
   28bd91faa:	89 c2                	mov    %eax,%edx
   28bd91fac:	83 c0 08             	add    $0x8,%eax
   28bd91faf:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
   28bd91fb3:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
   28bd91fb7:	39 d8                	cmp    %ebx,%eax
   28bd91fb9:	72 ef                	jb     28bd91faa <__write_memory.part.0+0x13a>
   28bd91fbb:	48 83 c4 50          	add    $0x50,%rsp
   28bd91fbf:	5b                   	pop    %rbx
   28bd91fc0:	5e                   	pop    %rsi
   28bd91fc1:	5f                   	pop    %rdi
   28bd91fc2:	5d                   	pop    %rbp
   28bd91fc3:	41 5c                	pop    %r12
   28bd91fc5:	c3                   	ret    
   28bd91fc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   28bd91fcd:	00 00 00 
   28bd91fd0:	83 f8 02             	cmp    $0x2,%eax
   28bd91fd3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   28bd91fd8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   28bd91fdd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   28bd91fe3:	b8 40 00 00 00       	mov    $0x40,%eax
   28bd91fe8:	44 0f 45 c0          	cmovne %eax,%r8d
   28bd91fec:	48 03 3d 65 50 00 00 	add    0x5065(%rip),%rdi        # 28bd97058 <the_secs>
   28bd91ff3:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
   28bd91ff7:	49 89 f9             	mov    %rdi,%r9
   28bd91ffa:	48 89 57 10          	mov    %rdx,0x10(%rdi)
   28bd91ffe:	ff 15 30 71 00 00    	call   *0x7130(%rip)        # 28bd99134 <__imp_VirtualProtect>
   28bd92004:	85 c0                	test   %eax,%eax
   28bd92006:	0f 85 34 ff ff ff    	jne    28bd91f40 <__write_memory.part.0+0xd0>
   28bd9200c:	ff 15 fa 70 00 00    	call   *0x70fa(%rip)        # 28bd9910c <__imp_GetLastError>
   28bd92012:	48 8d 0d 1f 21 00 00 	lea    0x211f(%rip),%rcx        # 28bd94138 <.rdata+0x78>
   28bd92019:	89 c2                	mov    %eax,%edx
   28bd9201b:	e8 e0 fd ff ff       	call   28bd91e00 <__report_error>
   28bd92020:	31 ff                	xor    %edi,%edi
   28bd92022:	e9 a0 fe ff ff       	jmp    28bd91ec7 <__write_memory.part.0+0x57>
   28bd92027:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   28bd9202e:	00 00 
   28bd92030:	8b 06                	mov    (%rsi),%eax
   28bd92032:	89 db                	mov    %ebx,%ebx
   28bd92034:	41 89 04 24          	mov    %eax,(%r12)
   28bd92038:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
   28bd9203c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
   28bd92041:	e9 23 ff ff ff       	jmp    28bd91f69 <__write_memory.part.0+0xf9>
   28bd92046:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   28bd9204d:	00 00 00 
   28bd92050:	89 db                	mov    %ebx,%ebx
   28bd92052:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
   28bd92057:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
   28bd9205d:	e9 07 ff ff ff       	jmp    28bd91f69 <__write_memory.part.0+0xf9>
   28bd92062:	48 8b 05 ef 4f 00 00 	mov    0x4fef(%rip),%rax        # 28bd97058 <the_secs>
   28bd92069:	8b 55 08             	mov    0x8(%rbp),%edx
   28bd9206c:	48 8d 0d 8d 20 00 00 	lea    0x208d(%rip),%rcx        # 28bd94100 <.rdata+0x40>
   28bd92073:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
   28bd92078:	e8 83 fd ff ff       	call   28bd91e00 <__report_error>
   28bd9207d:	4c 89 e2             	mov    %r12,%rdx
   28bd92080:	48 8d 0d 59 20 00 00 	lea    0x2059(%rip),%rcx        # 28bd940e0 <.rdata+0x20>
   28bd92087:	e8 74 fd ff ff       	call   28bd91e00 <__report_error>
   28bd9208c:	90                   	nop
   28bd9208d:	0f 1f 00             	nopl   (%rax)

000000028bd92090 <_pei386_runtime_relocator>:
   28bd92090:	55                   	push   %rbp
   28bd92091:	41 57                	push   %r15
   28bd92093:	41 56                	push   %r14
   28bd92095:	41 55                	push   %r13
   28bd92097:	41 54                	push   %r12
   28bd92099:	57                   	push   %rdi
   28bd9209a:	56                   	push   %rsi
   28bd9209b:	53                   	push   %rbx
   28bd9209c:	48 83 ec 38          	sub    $0x38,%rsp
   28bd920a0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   28bd920a7:	00 
   28bd920a8:	8b 35 a2 4f 00 00    	mov    0x4fa2(%rip),%esi        # 28bd97050 <was_init.94382>
   28bd920ae:	85 f6                	test   %esi,%esi
   28bd920b0:	74 16                	je     28bd920c8 <_pei386_runtime_relocator+0x38>
   28bd920b2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
   28bd920b6:	5b                   	pop    %rbx
   28bd920b7:	5e                   	pop    %rsi
   28bd920b8:	5f                   	pop    %rdi
   28bd920b9:	41 5c                	pop    %r12
   28bd920bb:	41 5d                	pop    %r13
   28bd920bd:	41 5e                	pop    %r14
   28bd920bf:	41 5f                	pop    %r15
   28bd920c1:	5d                   	pop    %rbp
   28bd920c2:	c3                   	ret    
   28bd920c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd920c8:	c7 05 7e 4f 00 00 01 	movl   $0x1,0x4f7e(%rip)        # 28bd97050 <was_init.94382>
   28bd920cf:	00 00 00 
   28bd920d2:	e8 c9 06 00 00       	call   28bd927a0 <__mingw_GetSectionCount>
   28bd920d7:	48 98                	cltq   
   28bd920d9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   28bd920dd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   28bd920e4:	00 
   28bd920e5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   28bd920e9:	e8 e2 08 00 00       	call   28bd929d0 <___chkstk_ms>
   28bd920ee:	4c 8b 25 fb 20 00 00 	mov    0x20fb(%rip),%r12        # 28bd941f0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   28bd920f5:	48 8b 1d 04 21 00 00 	mov    0x2104(%rip),%rbx        # 28bd94200 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   28bd920fc:	c7 05 4e 4f 00 00 00 	movl   $0x0,0x4f4e(%rip)        # 28bd97054 <maxSections>
   28bd92103:	00 00 00 
   28bd92106:	48 29 c4             	sub    %rax,%rsp
   28bd92109:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   28bd9210e:	48 89 05 43 4f 00 00 	mov    %rax,0x4f43(%rip)        # 28bd97058 <the_secs>
   28bd92115:	4c 89 e0             	mov    %r12,%rax
   28bd92118:	48 29 d8             	sub    %rbx,%rax
   28bd9211b:	48 83 f8 07          	cmp    $0x7,%rax
   28bd9211f:	7e 91                	jle    28bd920b2 <_pei386_runtime_relocator+0x22>
   28bd92121:	8b 13                	mov    (%rbx),%edx
   28bd92123:	48 83 f8 0b          	cmp    $0xb,%rax
   28bd92127:	0f 8f 4b 01 00 00    	jg     28bd92278 <_pei386_runtime_relocator+0x1e8>
   28bd9212d:	85 d2                	test   %edx,%edx
   28bd9212f:	0f 85 cb 01 00 00    	jne    28bd92300 <_pei386_runtime_relocator+0x270>
   28bd92135:	8b 43 04             	mov    0x4(%rbx),%eax
   28bd92138:	85 c0                	test   %eax,%eax
   28bd9213a:	0f 85 c0 01 00 00    	jne    28bd92300 <_pei386_runtime_relocator+0x270>
   28bd92140:	8b 53 08             	mov    0x8(%rbx),%edx
   28bd92143:	83 fa 01             	cmp    $0x1,%edx
   28bd92146:	0f 85 1c 02 00 00    	jne    28bd92368 <_pei386_runtime_relocator+0x2d8>
   28bd9214c:	48 83 c3 0c          	add    $0xc,%rbx
   28bd92150:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
   28bd92154:	4c 8b 2d c5 20 00 00 	mov    0x20c5(%rip),%r13        # 28bd94220 <.refptr.__image_base__>
   28bd9215b:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   28bd92162:	ff ff ff 
   28bd92165:	4c 39 e3             	cmp    %r12,%rbx
   28bd92168:	72 3f                	jb     28bd921a9 <_pei386_runtime_relocator+0x119>
   28bd9216a:	e9 43 ff ff ff       	jmp    28bd920b2 <_pei386_runtime_relocator+0x22>
   28bd9216f:	90                   	nop
   28bd92170:	44 0f b6 01          	movzbl (%rcx),%r8d
   28bd92174:	4c 89 ff             	mov    %r15,%rdi
   28bd92177:	4d 89 c2             	mov    %r8,%r10
   28bd9217a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
   28bd92181:	45 84 c0             	test   %r8b,%r8b
   28bd92184:	4d 0f 48 c2          	cmovs  %r10,%r8
   28bd92188:	49 29 d0             	sub    %rdx,%r8
   28bd9218b:	4c 89 fa             	mov    %r15,%rdx
   28bd9218e:	4d 01 c8             	add    %r9,%r8
   28bd92191:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   28bd92195:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   28bd9219b:	e8 d0 fc ff ff       	call   28bd91e70 <__write_memory.part.0>
   28bd921a0:	48 83 c3 0c          	add    $0xc,%rbx
   28bd921a4:	4c 39 e3             	cmp    %r12,%rbx
   28bd921a7:	73 77                	jae    28bd92220 <_pei386_runtime_relocator+0x190>
   28bd921a9:	8b 13                	mov    (%rbx),%edx
   28bd921ab:	8b 4b 04             	mov    0x4(%rbx),%ecx
   28bd921ae:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
   28bd921b3:	4c 01 ea             	add    %r13,%rdx
   28bd921b6:	4c 01 e9             	add    %r13,%rcx
   28bd921b9:	4c 8b 0a             	mov    (%rdx),%r9
   28bd921bc:	41 83 f8 20          	cmp    $0x20,%r8d
   28bd921c0:	0f 84 0a 01 00 00    	je     28bd922d0 <_pei386_runtime_relocator+0x240>
   28bd921c6:	0f 87 d4 00 00 00    	ja     28bd922a0 <_pei386_runtime_relocator+0x210>
   28bd921cc:	41 83 f8 08          	cmp    $0x8,%r8d
   28bd921d0:	74 9e                	je     28bd92170 <_pei386_runtime_relocator+0xe0>
   28bd921d2:	41 83 f8 10          	cmp    $0x10,%r8d
   28bd921d6:	0f 85 75 01 00 00    	jne    28bd92351 <_pei386_runtime_relocator+0x2c1>
   28bd921dc:	44 0f b7 01          	movzwl (%rcx),%r8d
   28bd921e0:	4c 89 ff             	mov    %r15,%rdi
   28bd921e3:	4d 89 c2             	mov    %r8,%r10
   28bd921e6:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
   28bd921ed:	66 45 85 c0          	test   %r8w,%r8w
   28bd921f1:	4d 0f 48 c2          	cmovs  %r10,%r8
   28bd921f5:	48 83 c3 0c          	add    $0xc,%rbx
   28bd921f9:	49 29 d0             	sub    %rdx,%r8
   28bd921fc:	4c 89 fa             	mov    %r15,%rdx
   28bd921ff:	4d 01 c8             	add    %r9,%r8
   28bd92202:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
   28bd92206:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   28bd9220c:	e8 5f fc ff ff       	call   28bd91e70 <__write_memory.part.0>
   28bd92211:	4c 39 e3             	cmp    %r12,%rbx
   28bd92214:	72 93                	jb     28bd921a9 <_pei386_runtime_relocator+0x119>
   28bd92216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   28bd9221d:	00 00 00 
   28bd92220:	8b 05 2e 4e 00 00    	mov    0x4e2e(%rip),%eax        # 28bd97054 <maxSections>
   28bd92226:	85 c0                	test   %eax,%eax
   28bd92228:	0f 8e 84 fe ff ff    	jle    28bd920b2 <_pei386_runtime_relocator+0x22>
   28bd9222e:	4c 8b 25 ff 6e 00 00 	mov    0x6eff(%rip),%r12        # 28bd99134 <__imp_VirtualProtect>
   28bd92235:	31 db                	xor    %ebx,%ebx
   28bd92237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   28bd9223e:	00 00 
   28bd92240:	48 8b 05 11 4e 00 00 	mov    0x4e11(%rip),%rax        # 28bd97058 <the_secs>
   28bd92247:	48 01 d8             	add    %rbx,%rax
   28bd9224a:	44 8b 00             	mov    (%rax),%r8d
   28bd9224d:	45 85 c0             	test   %r8d,%r8d
   28bd92250:	74 0e                	je     28bd92260 <_pei386_runtime_relocator+0x1d0>
   28bd92252:	48 8b 50 10          	mov    0x10(%rax),%rdx
   28bd92256:	48 8b 48 08          	mov    0x8(%rax),%rcx
   28bd9225a:	49 89 f9             	mov    %rdi,%r9
   28bd9225d:	41 ff d4             	call   *%r12
   28bd92260:	83 c6 01             	add    $0x1,%esi
   28bd92263:	48 83 c3 28          	add    $0x28,%rbx
   28bd92267:	3b 35 e7 4d 00 00    	cmp    0x4de7(%rip),%esi        # 28bd97054 <maxSections>
   28bd9226d:	7c d1                	jl     28bd92240 <_pei386_runtime_relocator+0x1b0>
   28bd9226f:	e9 3e fe ff ff       	jmp    28bd920b2 <_pei386_runtime_relocator+0x22>
   28bd92274:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd92278:	85 d2                	test   %edx,%edx
   28bd9227a:	0f 85 80 00 00 00    	jne    28bd92300 <_pei386_runtime_relocator+0x270>
   28bd92280:	8b 43 04             	mov    0x4(%rbx),%eax
   28bd92283:	89 c7                	mov    %eax,%edi
   28bd92285:	0b 7b 08             	or     0x8(%rbx),%edi
   28bd92288:	0f 85 aa fe ff ff    	jne    28bd92138 <_pei386_runtime_relocator+0xa8>
   28bd9228e:	8b 53 0c             	mov    0xc(%rbx),%edx
   28bd92291:	48 83 c3 0c          	add    $0xc,%rbx
   28bd92295:	e9 93 fe ff ff       	jmp    28bd9212d <_pei386_runtime_relocator+0x9d>
   28bd9229a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd922a0:	41 83 f8 40          	cmp    $0x40,%r8d
   28bd922a4:	0f 85 a7 00 00 00    	jne    28bd92351 <_pei386_runtime_relocator+0x2c1>
   28bd922aa:	48 8b 01             	mov    (%rcx),%rax
   28bd922ad:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   28bd922b3:	4c 89 ff             	mov    %r15,%rdi
   28bd922b6:	48 29 d0             	sub    %rdx,%rax
   28bd922b9:	4c 89 fa             	mov    %r15,%rdx
   28bd922bc:	4c 01 c8             	add    %r9,%rax
   28bd922bf:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   28bd922c3:	e8 a8 fb ff ff       	call   28bd91e70 <__write_memory.part.0>
   28bd922c8:	e9 d3 fe ff ff       	jmp    28bd921a0 <_pei386_runtime_relocator+0x110>
   28bd922cd:	0f 1f 00             	nopl   (%rax)
   28bd922d0:	8b 01                	mov    (%rcx),%eax
   28bd922d2:	4c 89 ff             	mov    %r15,%rdi
   28bd922d5:	49 89 c0             	mov    %rax,%r8
   28bd922d8:	4c 09 f0             	or     %r14,%rax
   28bd922db:	45 85 c0             	test   %r8d,%r8d
   28bd922de:	49 0f 49 c0          	cmovns %r8,%rax
   28bd922e2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   28bd922e8:	48 29 d0             	sub    %rdx,%rax
   28bd922eb:	4c 89 fa             	mov    %r15,%rdx
   28bd922ee:	4c 01 c8             	add    %r9,%rax
   28bd922f1:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   28bd922f5:	e8 76 fb ff ff       	call   28bd91e70 <__write_memory.part.0>
   28bd922fa:	e9 a1 fe ff ff       	jmp    28bd921a0 <_pei386_runtime_relocator+0x110>
   28bd922ff:	90                   	nop
   28bd92300:	4c 39 e3             	cmp    %r12,%rbx
   28bd92303:	0f 83 a9 fd ff ff    	jae    28bd920b2 <_pei386_runtime_relocator+0x22>
   28bd92309:	49 83 ec 01          	sub    $0x1,%r12
   28bd9230d:	4c 8b 2d 0c 1f 00 00 	mov    0x1f0c(%rip),%r13        # 28bd94220 <.refptr.__image_base__>
   28bd92314:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   28bd92318:	49 29 dc             	sub    %rbx,%r12
   28bd9231b:	49 c1 ec 03          	shr    $0x3,%r12
   28bd9231f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
   28bd92324:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd92328:	8b 4b 04             	mov    0x4(%rbx),%ecx
   28bd9232b:	8b 03                	mov    (%rbx),%eax
   28bd9232d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   28bd92333:	48 89 fa             	mov    %rdi,%rdx
   28bd92336:	48 83 c3 08          	add    $0x8,%rbx
   28bd9233a:	4c 01 e9             	add    %r13,%rcx
   28bd9233d:	03 01                	add    (%rcx),%eax
   28bd9233f:	89 45 a8             	mov    %eax,-0x58(%rbp)
   28bd92342:	e8 29 fb ff ff       	call   28bd91e70 <__write_memory.part.0>
   28bd92347:	4c 39 e3             	cmp    %r12,%rbx
   28bd9234a:	75 dc                	jne    28bd92328 <_pei386_runtime_relocator+0x298>
   28bd9234c:	e9 cf fe ff ff       	jmp    28bd92220 <_pei386_runtime_relocator+0x190>
   28bd92351:	44 89 c2             	mov    %r8d,%edx
   28bd92354:	48 8d 0d 3d 1e 00 00 	lea    0x1e3d(%rip),%rcx        # 28bd94198 <.rdata+0xd8>
   28bd9235b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   28bd92362:	00 
   28bd92363:	e8 98 fa ff ff       	call   28bd91e00 <__report_error>
   28bd92368:	48 8d 0d f1 1d 00 00 	lea    0x1df1(%rip),%rcx        # 28bd94160 <.rdata+0xa0>
   28bd9236f:	e8 8c fa ff ff       	call   28bd91e00 <__report_error>
   28bd92374:	90                   	nop
   28bd92375:	90                   	nop
   28bd92376:	90                   	nop
   28bd92377:	90                   	nop
   28bd92378:	90                   	nop
   28bd92379:	90                   	nop
   28bd9237a:	90                   	nop
   28bd9237b:	90                   	nop
   28bd9237c:	90                   	nop
   28bd9237d:	90                   	nop
   28bd9237e:	90                   	nop
   28bd9237f:	90                   	nop

000000028bd92380 <__mingwthr_run_key_dtors.part.0>:
   28bd92380:	41 54                	push   %r12
   28bd92382:	57                   	push   %rdi
   28bd92383:	56                   	push   %rsi
   28bd92384:	53                   	push   %rbx
   28bd92385:	48 83 ec 28          	sub    $0x28,%rsp
   28bd92389:	48 8d 0d f0 4c 00 00 	lea    0x4cf0(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd92390:	ff 15 6e 6d 00 00    	call   *0x6d6e(%rip)        # 28bd99104 <__imp_EnterCriticalSection>
   28bd92396:	48 8b 1d c3 4c 00 00 	mov    0x4cc3(%rip),%rbx        # 28bd97060 <key_dtor_list>
   28bd9239d:	48 85 db             	test   %rbx,%rbx
   28bd923a0:	74 32                	je     28bd923d4 <__mingwthr_run_key_dtors.part.0+0x54>
   28bd923a2:	48 8b 3d 83 6d 00 00 	mov    0x6d83(%rip),%rdi        # 28bd9912c <__imp_TlsGetValue>
   28bd923a9:	48 8b 35 5c 6d 00 00 	mov    0x6d5c(%rip),%rsi        # 28bd9910c <__imp_GetLastError>
   28bd923b0:	8b 0b                	mov    (%rbx),%ecx
   28bd923b2:	ff d7                	call   *%rdi
   28bd923b4:	49 89 c4             	mov    %rax,%r12
   28bd923b7:	ff d6                	call   *%rsi
   28bd923b9:	85 c0                	test   %eax,%eax
   28bd923bb:	75 0e                	jne    28bd923cb <__mingwthr_run_key_dtors.part.0+0x4b>
   28bd923bd:	4d 85 e4             	test   %r12,%r12
   28bd923c0:	74 09                	je     28bd923cb <__mingwthr_run_key_dtors.part.0+0x4b>
   28bd923c2:	48 8b 43 08          	mov    0x8(%rbx),%rax
   28bd923c6:	4c 89 e1             	mov    %r12,%rcx
   28bd923c9:	ff d0                	call   *%rax
   28bd923cb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   28bd923cf:	48 85 db             	test   %rbx,%rbx
   28bd923d2:	75 dc                	jne    28bd923b0 <__mingwthr_run_key_dtors.part.0+0x30>
   28bd923d4:	48 8d 0d a5 4c 00 00 	lea    0x4ca5(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd923db:	48 83 c4 28          	add    $0x28,%rsp
   28bd923df:	5b                   	pop    %rbx
   28bd923e0:	5e                   	pop    %rsi
   28bd923e1:	5f                   	pop    %rdi
   28bd923e2:	41 5c                	pop    %r12
   28bd923e4:	48 ff 25 31 6d 00 00 	rex.W jmp *0x6d31(%rip)        # 28bd9911c <__imp_LeaveCriticalSection>
   28bd923eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000028bd923f0 <___w64_mingwthr_add_key_dtor>:
   28bd923f0:	57                   	push   %rdi
   28bd923f1:	56                   	push   %rsi
   28bd923f2:	53                   	push   %rbx
   28bd923f3:	48 83 ec 20          	sub    $0x20,%rsp
   28bd923f7:	8b 05 6b 4c 00 00    	mov    0x4c6b(%rip),%eax        # 28bd97068 <__mingwthr_cs_init>
   28bd923fd:	89 cf                	mov    %ecx,%edi
   28bd923ff:	48 89 d6             	mov    %rdx,%rsi
   28bd92402:	85 c0                	test   %eax,%eax
   28bd92404:	75 0a                	jne    28bd92410 <___w64_mingwthr_add_key_dtor+0x20>
   28bd92406:	48 83 c4 20          	add    $0x20,%rsp
   28bd9240a:	5b                   	pop    %rbx
   28bd9240b:	5e                   	pop    %rsi
   28bd9240c:	5f                   	pop    %rdi
   28bd9240d:	c3                   	ret    
   28bd9240e:	66 90                	xchg   %ax,%ax
   28bd92410:	ba 18 00 00 00       	mov    $0x18,%edx
   28bd92415:	b9 01 00 00 00       	mov    $0x1,%ecx
   28bd9241a:	e8 39 06 00 00       	call   28bd92a58 <calloc>
   28bd9241f:	48 89 c3             	mov    %rax,%rbx
   28bd92422:	48 85 c0             	test   %rax,%rax
   28bd92425:	74 3c                	je     28bd92463 <___w64_mingwthr_add_key_dtor+0x73>
   28bd92427:	89 38                	mov    %edi,(%rax)
   28bd92429:	48 8d 0d 50 4c 00 00 	lea    0x4c50(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd92430:	48 89 70 08          	mov    %rsi,0x8(%rax)
   28bd92434:	ff 15 ca 6c 00 00    	call   *0x6cca(%rip)        # 28bd99104 <__imp_EnterCriticalSection>
   28bd9243a:	48 8b 05 1f 4c 00 00 	mov    0x4c1f(%rip),%rax        # 28bd97060 <key_dtor_list>
   28bd92441:	48 8d 0d 38 4c 00 00 	lea    0x4c38(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd92448:	48 89 1d 11 4c 00 00 	mov    %rbx,0x4c11(%rip)        # 28bd97060 <key_dtor_list>
   28bd9244f:	48 89 43 10          	mov    %rax,0x10(%rbx)
   28bd92453:	ff 15 c3 6c 00 00    	call   *0x6cc3(%rip)        # 28bd9911c <__imp_LeaveCriticalSection>
   28bd92459:	31 c0                	xor    %eax,%eax
   28bd9245b:	48 83 c4 20          	add    $0x20,%rsp
   28bd9245f:	5b                   	pop    %rbx
   28bd92460:	5e                   	pop    %rsi
   28bd92461:	5f                   	pop    %rdi
   28bd92462:	c3                   	ret    
   28bd92463:	83 c8 ff             	or     $0xffffffff,%eax
   28bd92466:	eb 9e                	jmp    28bd92406 <___w64_mingwthr_add_key_dtor+0x16>
   28bd92468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd9246f:	00 

000000028bd92470 <___w64_mingwthr_remove_key_dtor>:
   28bd92470:	53                   	push   %rbx
   28bd92471:	48 83 ec 20          	sub    $0x20,%rsp
   28bd92475:	8b 05 ed 4b 00 00    	mov    0x4bed(%rip),%eax        # 28bd97068 <__mingwthr_cs_init>
   28bd9247b:	89 cb                	mov    %ecx,%ebx
   28bd9247d:	85 c0                	test   %eax,%eax
   28bd9247f:	75 0f                	jne    28bd92490 <___w64_mingwthr_remove_key_dtor+0x20>
   28bd92481:	31 c0                	xor    %eax,%eax
   28bd92483:	48 83 c4 20          	add    $0x20,%rsp
   28bd92487:	5b                   	pop    %rbx
   28bd92488:	c3                   	ret    
   28bd92489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   28bd92490:	48 8d 0d e9 4b 00 00 	lea    0x4be9(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd92497:	ff 15 67 6c 00 00    	call   *0x6c67(%rip)        # 28bd99104 <__imp_EnterCriticalSection>
   28bd9249d:	48 8b 0d bc 4b 00 00 	mov    0x4bbc(%rip),%rcx        # 28bd97060 <key_dtor_list>
   28bd924a4:	48 85 c9             	test   %rcx,%rcx
   28bd924a7:	74 2a                	je     28bd924d3 <___w64_mingwthr_remove_key_dtor+0x63>
   28bd924a9:	31 d2                	xor    %edx,%edx
   28bd924ab:	eb 0e                	jmp    28bd924bb <___w64_mingwthr_remove_key_dtor+0x4b>
   28bd924ad:	0f 1f 00             	nopl   (%rax)
   28bd924b0:	48 89 ca             	mov    %rcx,%rdx
   28bd924b3:	48 85 c0             	test   %rax,%rax
   28bd924b6:	74 1b                	je     28bd924d3 <___w64_mingwthr_remove_key_dtor+0x63>
   28bd924b8:	48 89 c1             	mov    %rax,%rcx
   28bd924bb:	8b 01                	mov    (%rcx),%eax
   28bd924bd:	39 d8                	cmp    %ebx,%eax
   28bd924bf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   28bd924c3:	75 eb                	jne    28bd924b0 <___w64_mingwthr_remove_key_dtor+0x40>
   28bd924c5:	48 85 d2             	test   %rdx,%rdx
   28bd924c8:	74 26                	je     28bd924f0 <___w64_mingwthr_remove_key_dtor+0x80>
   28bd924ca:	48 89 42 10          	mov    %rax,0x10(%rdx)
   28bd924ce:	e8 7d 05 00 00       	call   28bd92a50 <free>
   28bd924d3:	48 8d 0d a6 4b 00 00 	lea    0x4ba6(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd924da:	ff 15 3c 6c 00 00    	call   *0x6c3c(%rip)        # 28bd9911c <__imp_LeaveCriticalSection>
   28bd924e0:	31 c0                	xor    %eax,%eax
   28bd924e2:	48 83 c4 20          	add    $0x20,%rsp
   28bd924e6:	5b                   	pop    %rbx
   28bd924e7:	c3                   	ret    
   28bd924e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd924ef:	00 
   28bd924f0:	48 89 05 69 4b 00 00 	mov    %rax,0x4b69(%rip)        # 28bd97060 <key_dtor_list>
   28bd924f7:	eb d5                	jmp    28bd924ce <___w64_mingwthr_remove_key_dtor+0x5e>
   28bd924f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000028bd92500 <__mingw_TLScallback>:
   28bd92500:	53                   	push   %rbx
   28bd92501:	48 83 ec 20          	sub    $0x20,%rsp
   28bd92505:	83 fa 02             	cmp    $0x2,%edx
   28bd92508:	0f 84 c2 00 00 00    	je     28bd925d0 <__mingw_TLScallback+0xd0>
   28bd9250e:	77 28                	ja     28bd92538 <__mingw_TLScallback+0x38>
   28bd92510:	85 d2                	test   %edx,%edx
   28bd92512:	74 4c                	je     28bd92560 <__mingw_TLScallback+0x60>
   28bd92514:	8b 05 4e 4b 00 00    	mov    0x4b4e(%rip),%eax        # 28bd97068 <__mingwthr_cs_init>
   28bd9251a:	85 c0                	test   %eax,%eax
   28bd9251c:	74 32                	je     28bd92550 <__mingw_TLScallback+0x50>
   28bd9251e:	c7 05 40 4b 00 00 01 	movl   $0x1,0x4b40(%rip)        # 28bd97068 <__mingwthr_cs_init>
   28bd92525:	00 00 00 
   28bd92528:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd9252d:	48 83 c4 20          	add    $0x20,%rsp
   28bd92531:	5b                   	pop    %rbx
   28bd92532:	c3                   	ret    
   28bd92533:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd92538:	83 fa 03             	cmp    $0x3,%edx
   28bd9253b:	75 eb                	jne    28bd92528 <__mingw_TLScallback+0x28>
   28bd9253d:	8b 05 25 4b 00 00    	mov    0x4b25(%rip),%eax        # 28bd97068 <__mingwthr_cs_init>
   28bd92543:	85 c0                	test   %eax,%eax
   28bd92545:	74 e1                	je     28bd92528 <__mingw_TLScallback+0x28>
   28bd92547:	e8 34 fe ff ff       	call   28bd92380 <__mingwthr_run_key_dtors.part.0>
   28bd9254c:	eb da                	jmp    28bd92528 <__mingw_TLScallback+0x28>
   28bd9254e:	66 90                	xchg   %ax,%ax
   28bd92550:	48 8d 0d 29 4b 00 00 	lea    0x4b29(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd92557:	ff 15 b7 6b 00 00    	call   *0x6bb7(%rip)        # 28bd99114 <__imp_InitializeCriticalSection>
   28bd9255d:	eb bf                	jmp    28bd9251e <__mingw_TLScallback+0x1e>
   28bd9255f:	90                   	nop
   28bd92560:	8b 05 02 4b 00 00    	mov    0x4b02(%rip),%eax        # 28bd97068 <__mingwthr_cs_init>
   28bd92566:	85 c0                	test   %eax,%eax
   28bd92568:	74 05                	je     28bd9256f <__mingw_TLScallback+0x6f>
   28bd9256a:	e8 11 fe ff ff       	call   28bd92380 <__mingwthr_run_key_dtors.part.0>
   28bd9256f:	8b 05 f3 4a 00 00    	mov    0x4af3(%rip),%eax        # 28bd97068 <__mingwthr_cs_init>
   28bd92575:	83 f8 01             	cmp    $0x1,%eax
   28bd92578:	75 ae                	jne    28bd92528 <__mingw_TLScallback+0x28>
   28bd9257a:	48 8b 1d df 4a 00 00 	mov    0x4adf(%rip),%rbx        # 28bd97060 <key_dtor_list>
   28bd92581:	48 85 db             	test   %rbx,%rbx
   28bd92584:	74 1b                	je     28bd925a1 <__mingw_TLScallback+0xa1>
   28bd92586:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   28bd9258d:	00 00 00 
   28bd92590:	48 89 d9             	mov    %rbx,%rcx
   28bd92593:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   28bd92597:	e8 b4 04 00 00       	call   28bd92a50 <free>
   28bd9259c:	48 85 db             	test   %rbx,%rbx
   28bd9259f:	75 ef                	jne    28bd92590 <__mingw_TLScallback+0x90>
   28bd925a1:	48 8d 0d d8 4a 00 00 	lea    0x4ad8(%rip),%rcx        # 28bd97080 <__mingwthr_cs>
   28bd925a8:	48 c7 05 ad 4a 00 00 	movq   $0x0,0x4aad(%rip)        # 28bd97060 <key_dtor_list>
   28bd925af:	00 00 00 00 
   28bd925b3:	c7 05 ab 4a 00 00 00 	movl   $0x0,0x4aab(%rip)        # 28bd97068 <__mingwthr_cs_init>
   28bd925ba:	00 00 00 
   28bd925bd:	ff 15 39 6b 00 00    	call   *0x6b39(%rip)        # 28bd990fc <__IAT_start__>
   28bd925c3:	e9 60 ff ff ff       	jmp    28bd92528 <__mingw_TLScallback+0x28>
   28bd925c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd925cf:	00 
   28bd925d0:	e8 eb 03 00 00       	call   28bd929c0 <_fpreset>
   28bd925d5:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd925da:	48 83 c4 20          	add    $0x20,%rsp
   28bd925de:	5b                   	pop    %rbx
   28bd925df:	c3                   	ret    

000000028bd925e0 <_ValidateImageBase.part.0>:
   28bd925e0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   28bd925e4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
   28bd925e8:	31 c0                	xor    %eax,%eax
   28bd925ea:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   28bd925f0:	75 0b                	jne    28bd925fd <_ValidateImageBase.part.0+0x1d>
   28bd925f2:	31 c0                	xor    %eax,%eax
   28bd925f4:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   28bd925fa:	0f 94 c0             	sete   %al
   28bd925fd:	c3                   	ret    
   28bd925fe:	66 90                	xchg   %ax,%ax

000000028bd92600 <_ValidateImageBase>:
   28bd92600:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   28bd92605:	75 09                	jne    28bd92610 <_ValidateImageBase+0x10>
   28bd92607:	eb d7                	jmp    28bd925e0 <_ValidateImageBase.part.0>
   28bd92609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   28bd92610:	31 c0                	xor    %eax,%eax
   28bd92612:	c3                   	ret    
   28bd92613:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd9261a:	00 00 00 00 
   28bd9261e:	66 90                	xchg   %ax,%ax

000000028bd92620 <_FindPESection>:
   28bd92620:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   28bd92624:	48 01 c1             	add    %rax,%rcx
   28bd92627:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   28bd9262b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   28bd92630:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   28bd92634:	85 c9                	test   %ecx,%ecx
   28bd92636:	74 2d                	je     28bd92665 <_FindPESection+0x45>
   28bd92638:	83 e9 01             	sub    $0x1,%ecx
   28bd9263b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   28bd9263f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   28bd92644:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd92648:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   28bd9264c:	4c 89 c1             	mov    %r8,%rcx
   28bd9264f:	49 39 d0             	cmp    %rdx,%r8
   28bd92652:	77 08                	ja     28bd9265c <_FindPESection+0x3c>
   28bd92654:	03 48 08             	add    0x8(%rax),%ecx
   28bd92657:	48 39 d1             	cmp    %rdx,%rcx
   28bd9265a:	77 0b                	ja     28bd92667 <_FindPESection+0x47>
   28bd9265c:	48 83 c0 28          	add    $0x28,%rax
   28bd92660:	4c 39 c8             	cmp    %r9,%rax
   28bd92663:	75 e3                	jne    28bd92648 <_FindPESection+0x28>
   28bd92665:	31 c0                	xor    %eax,%eax
   28bd92667:	c3                   	ret    
   28bd92668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd9266f:	00 

000000028bd92670 <_FindPESectionByName>:
   28bd92670:	41 54                	push   %r12
   28bd92672:	56                   	push   %rsi
   28bd92673:	53                   	push   %rbx
   28bd92674:	48 83 ec 20          	sub    $0x20,%rsp
   28bd92678:	48 89 cb             	mov    %rcx,%rbx
   28bd9267b:	e8 c0 03 00 00       	call   28bd92a40 <strlen>
   28bd92680:	48 83 f8 08          	cmp    $0x8,%rax
   28bd92684:	77 7a                	ja     28bd92700 <_FindPESectionByName+0x90>
   28bd92686:	48 8b 0d 93 1b 00 00 	mov    0x1b93(%rip),%rcx        # 28bd94220 <.refptr.__image_base__>
   28bd9268d:	45 31 e4             	xor    %r12d,%r12d
   28bd92690:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   28bd92695:	75 57                	jne    28bd926ee <_FindPESectionByName+0x7e>
   28bd92697:	e8 44 ff ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd9269c:	85 c0                	test   %eax,%eax
   28bd9269e:	74 4e                	je     28bd926ee <_FindPESectionByName+0x7e>
   28bd926a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   28bd926a4:	48 01 c1             	add    %rax,%rcx
   28bd926a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   28bd926ab:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
   28bd926b0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   28bd926b4:	85 c0                	test   %eax,%eax
   28bd926b6:	74 48                	je     28bd92700 <_FindPESectionByName+0x90>
   28bd926b8:	83 e8 01             	sub    $0x1,%eax
   28bd926bb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   28bd926bf:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   28bd926c4:	eb 13                	jmp    28bd926d9 <_FindPESectionByName+0x69>
   28bd926c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   28bd926cd:	00 00 00 
   28bd926d0:	49 83 c4 28          	add    $0x28,%r12
   28bd926d4:	49 39 f4             	cmp    %rsi,%r12
   28bd926d7:	74 27                	je     28bd92700 <_FindPESectionByName+0x90>
   28bd926d9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   28bd926df:	48 89 da             	mov    %rbx,%rdx
   28bd926e2:	4c 89 e1             	mov    %r12,%rcx
   28bd926e5:	e8 4e 03 00 00       	call   28bd92a38 <strncmp>
   28bd926ea:	85 c0                	test   %eax,%eax
   28bd926ec:	75 e2                	jne    28bd926d0 <_FindPESectionByName+0x60>
   28bd926ee:	4c 89 e0             	mov    %r12,%rax
   28bd926f1:	48 83 c4 20          	add    $0x20,%rsp
   28bd926f5:	5b                   	pop    %rbx
   28bd926f6:	5e                   	pop    %rsi
   28bd926f7:	41 5c                	pop    %r12
   28bd926f9:	c3                   	ret    
   28bd926fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   28bd92700:	45 31 e4             	xor    %r12d,%r12d
   28bd92703:	4c 89 e0             	mov    %r12,%rax
   28bd92706:	48 83 c4 20          	add    $0x20,%rsp
   28bd9270a:	5b                   	pop    %rbx
   28bd9270b:	5e                   	pop    %rsi
   28bd9270c:	41 5c                	pop    %r12
   28bd9270e:	c3                   	ret    
   28bd9270f:	90                   	nop

000000028bd92710 <__mingw_GetSectionForAddress>:
   28bd92710:	48 83 ec 28          	sub    $0x28,%rsp
   28bd92714:	4c 8b 15 05 1b 00 00 	mov    0x1b05(%rip),%r10        # 28bd94220 <.refptr.__image_base__>
   28bd9271b:	45 31 c0             	xor    %r8d,%r8d
   28bd9271e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
   28bd92724:	49 89 c9             	mov    %rcx,%r9
   28bd92727:	75 60                	jne    28bd92789 <__mingw_GetSectionForAddress+0x79>
   28bd92729:	4c 89 d1             	mov    %r10,%rcx
   28bd9272c:	e8 af fe ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd92731:	85 c0                	test   %eax,%eax
   28bd92733:	74 54                	je     28bd92789 <__mingw_GetSectionForAddress+0x79>
   28bd92735:	49 63 42 3c          	movslq 0x3c(%r10),%rax
   28bd92739:	4c 89 c9             	mov    %r9,%rcx
   28bd9273c:	4c 29 d1             	sub    %r10,%rcx
   28bd9273f:	49 01 c2             	add    %rax,%r10
   28bd92742:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
   28bd92747:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
   28bd9274c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
   28bd92751:	85 c0                	test   %eax,%eax
   28bd92753:	74 31                	je     28bd92786 <__mingw_GetSectionForAddress+0x76>
   28bd92755:	83 e8 01             	sub    $0x1,%eax
   28bd92758:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   28bd9275c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
   28bd92761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   28bd92768:	41 8b 50 0c          	mov    0xc(%r8),%edx
   28bd9276c:	48 89 d0             	mov    %rdx,%rax
   28bd9276f:	48 39 d1             	cmp    %rdx,%rcx
   28bd92772:	72 09                	jb     28bd9277d <__mingw_GetSectionForAddress+0x6d>
   28bd92774:	41 03 40 08          	add    0x8(%r8),%eax
   28bd92778:	48 39 c1             	cmp    %rax,%rcx
   28bd9277b:	72 0c                	jb     28bd92789 <__mingw_GetSectionForAddress+0x79>
   28bd9277d:	49 83 c0 28          	add    $0x28,%r8
   28bd92781:	4d 39 c8             	cmp    %r9,%r8
   28bd92784:	75 e2                	jne    28bd92768 <__mingw_GetSectionForAddress+0x58>
   28bd92786:	45 31 c0             	xor    %r8d,%r8d
   28bd92789:	4c 89 c0             	mov    %r8,%rax
   28bd9278c:	48 83 c4 28          	add    $0x28,%rsp
   28bd92790:	c3                   	ret    
   28bd92791:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd92798:	00 00 00 00 
   28bd9279c:	0f 1f 40 00          	nopl   0x0(%rax)

000000028bd927a0 <__mingw_GetSectionCount>:
   28bd927a0:	48 83 ec 28          	sub    $0x28,%rsp
   28bd927a4:	48 8b 0d 75 1a 00 00 	mov    0x1a75(%rip),%rcx        # 28bd94220 <.refptr.__image_base__>
   28bd927ab:	31 c0                	xor    %eax,%eax
   28bd927ad:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   28bd927b2:	75 12                	jne    28bd927c6 <__mingw_GetSectionCount+0x26>
   28bd927b4:	e8 27 fe ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd927b9:	85 c0                	test   %eax,%eax
   28bd927bb:	74 09                	je     28bd927c6 <__mingw_GetSectionCount+0x26>
   28bd927bd:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   28bd927c1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
   28bd927c6:	48 83 c4 28          	add    $0x28,%rsp
   28bd927ca:	c3                   	ret    
   28bd927cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000028bd927d0 <_FindPESectionExec>:
   28bd927d0:	48 83 ec 28          	sub    $0x28,%rsp
   28bd927d4:	45 31 c0             	xor    %r8d,%r8d
   28bd927d7:	49 89 c9             	mov    %rcx,%r9
   28bd927da:	48 8b 0d 3f 1a 00 00 	mov    0x1a3f(%rip),%rcx        # 28bd94220 <.refptr.__image_base__>
   28bd927e1:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   28bd927e6:	75 4c                	jne    28bd92834 <_FindPESectionExec+0x64>
   28bd927e8:	e8 f3 fd ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd927ed:	85 c0                	test   %eax,%eax
   28bd927ef:	74 43                	je     28bd92834 <_FindPESectionExec+0x64>
   28bd927f1:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   28bd927f5:	48 01 c1             	add    %rax,%rcx
   28bd927f8:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   28bd927fc:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
   28bd92801:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
   28bd92805:	85 c0                	test   %eax,%eax
   28bd92807:	74 28                	je     28bd92831 <_FindPESectionExec+0x61>
   28bd92809:	83 e8 01             	sub    $0x1,%eax
   28bd9280c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   28bd92810:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
   28bd92815:	0f 1f 00             	nopl   (%rax)
   28bd92818:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
   28bd9281d:	74 09                	je     28bd92828 <_FindPESectionExec+0x58>
   28bd9281f:	4d 85 c9             	test   %r9,%r9
   28bd92822:	74 10                	je     28bd92834 <_FindPESectionExec+0x64>
   28bd92824:	49 83 e9 01          	sub    $0x1,%r9
   28bd92828:	49 83 c0 28          	add    $0x28,%r8
   28bd9282c:	49 39 c0             	cmp    %rax,%r8
   28bd9282f:	75 e7                	jne    28bd92818 <_FindPESectionExec+0x48>
   28bd92831:	45 31 c0             	xor    %r8d,%r8d
   28bd92834:	4c 89 c0             	mov    %r8,%rax
   28bd92837:	48 83 c4 28          	add    $0x28,%rsp
   28bd9283b:	c3                   	ret    
   28bd9283c:	0f 1f 40 00          	nopl   0x0(%rax)

000000028bd92840 <_GetPEImageBase>:
   28bd92840:	48 83 ec 28          	sub    $0x28,%rsp
   28bd92844:	48 8b 0d d5 19 00 00 	mov    0x19d5(%rip),%rcx        # 28bd94220 <.refptr.__image_base__>
   28bd9284b:	45 31 c0             	xor    %r8d,%r8d
   28bd9284e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   28bd92853:	75 0b                	jne    28bd92860 <_GetPEImageBase+0x20>
   28bd92855:	e8 86 fd ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd9285a:	85 c0                	test   %eax,%eax
   28bd9285c:	4c 0f 45 c1          	cmovne %rcx,%r8
   28bd92860:	4c 89 c0             	mov    %r8,%rax
   28bd92863:	48 83 c4 28          	add    $0x28,%rsp
   28bd92867:	c3                   	ret    
   28bd92868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd9286f:	00 

000000028bd92870 <_IsNonwritableInCurrentImage>:
   28bd92870:	48 83 ec 28          	sub    $0x28,%rsp
   28bd92874:	4c 8b 0d a5 19 00 00 	mov    0x19a5(%rip),%r9        # 28bd94220 <.refptr.__image_base__>
   28bd9287b:	31 c0                	xor    %eax,%eax
   28bd9287d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
   28bd92883:	49 89 c8             	mov    %rcx,%r8
   28bd92886:	75 57                	jne    28bd928df <_IsNonwritableInCurrentImage+0x6f>
   28bd92888:	4c 89 c9             	mov    %r9,%rcx
   28bd9288b:	e8 50 fd ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd92890:	85 c0                	test   %eax,%eax
   28bd92892:	74 4b                	je     28bd928df <_IsNonwritableInCurrentImage+0x6f>
   28bd92894:	49 63 41 3c          	movslq 0x3c(%r9),%rax
   28bd92898:	4c 89 c1             	mov    %r8,%rcx
   28bd9289b:	4c 29 c9             	sub    %r9,%rcx
   28bd9289e:	49 01 c1             	add    %rax,%r9
   28bd928a1:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
   28bd928a6:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
   28bd928ab:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
   28bd928b0:	85 d2                	test   %edx,%edx
   28bd928b2:	74 29                	je     28bd928dd <_IsNonwritableInCurrentImage+0x6d>
   28bd928b4:	83 ea 01             	sub    $0x1,%edx
   28bd928b7:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   28bd928bb:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   28bd928c0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   28bd928c4:	4c 89 c2             	mov    %r8,%rdx
   28bd928c7:	4c 39 c1             	cmp    %r8,%rcx
   28bd928ca:	72 08                	jb     28bd928d4 <_IsNonwritableInCurrentImage+0x64>
   28bd928cc:	03 50 08             	add    0x8(%rax),%edx
   28bd928cf:	48 39 d1             	cmp    %rdx,%rcx
   28bd928d2:	72 14                	jb     28bd928e8 <_IsNonwritableInCurrentImage+0x78>
   28bd928d4:	48 83 c0 28          	add    $0x28,%rax
   28bd928d8:	4c 39 c8             	cmp    %r9,%rax
   28bd928db:	75 e3                	jne    28bd928c0 <_IsNonwritableInCurrentImage+0x50>
   28bd928dd:	31 c0                	xor    %eax,%eax
   28bd928df:	48 83 c4 28          	add    $0x28,%rsp
   28bd928e3:	c3                   	ret    
   28bd928e4:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd928e8:	8b 40 24             	mov    0x24(%rax),%eax
   28bd928eb:	f7 d0                	not    %eax
   28bd928ed:	c1 e8 1f             	shr    $0x1f,%eax
   28bd928f0:	48 83 c4 28          	add    $0x28,%rsp
   28bd928f4:	c3                   	ret    
   28bd928f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd928fc:	00 00 00 00 

000000028bd92900 <__mingw_enum_import_library_names>:
   28bd92900:	48 83 ec 28          	sub    $0x28,%rsp
   28bd92904:	4c 8b 1d 15 19 00 00 	mov    0x1915(%rip),%r11        # 28bd94220 <.refptr.__image_base__>
   28bd9290b:	45 31 c9             	xor    %r9d,%r9d
   28bd9290e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   28bd92914:	41 89 c8             	mov    %ecx,%r8d
   28bd92917:	75 5f                	jne    28bd92978 <__mingw_enum_import_library_names+0x78>
   28bd92919:	4c 89 d9             	mov    %r11,%rcx
   28bd9291c:	e8 bf fc ff ff       	call   28bd925e0 <_ValidateImageBase.part.0>
   28bd92921:	85 c0                	test   %eax,%eax
   28bd92923:	74 53                	je     28bd92978 <__mingw_enum_import_library_names+0x78>
   28bd92925:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
   28bd92929:	4c 01 d9             	add    %r11,%rcx
   28bd9292c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
   28bd92932:	85 c0                	test   %eax,%eax
   28bd92934:	74 42                	je     28bd92978 <__mingw_enum_import_library_names+0x78>
   28bd92936:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
   28bd9293a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
   28bd9293f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   28bd92943:	85 c9                	test   %ecx,%ecx
   28bd92945:	74 31                	je     28bd92978 <__mingw_enum_import_library_names+0x78>
   28bd92947:	83 e9 01             	sub    $0x1,%ecx
   28bd9294a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   28bd9294e:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
   28bd92953:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   28bd92958:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   28bd9295c:	4c 89 c9             	mov    %r9,%rcx
   28bd9295f:	4c 39 c8             	cmp    %r9,%rax
   28bd92962:	72 08                	jb     28bd9296c <__mingw_enum_import_library_names+0x6c>
   28bd92964:	03 4a 08             	add    0x8(%rdx),%ecx
   28bd92967:	48 39 c8             	cmp    %rcx,%rax
   28bd9296a:	72 14                	jb     28bd92980 <__mingw_enum_import_library_names+0x80>
   28bd9296c:	48 83 c2 28          	add    $0x28,%rdx
   28bd92970:	4c 39 d2             	cmp    %r10,%rdx
   28bd92973:	75 e3                	jne    28bd92958 <__mingw_enum_import_library_names+0x58>
   28bd92975:	45 31 c9             	xor    %r9d,%r9d
   28bd92978:	4c 89 c8             	mov    %r9,%rax
   28bd9297b:	48 83 c4 28          	add    $0x28,%rsp
   28bd9297f:	c3                   	ret    
   28bd92980:	4c 01 d8             	add    %r11,%rax
   28bd92983:	eb 0b                	jmp    28bd92990 <__mingw_enum_import_library_names+0x90>
   28bd92985:	0f 1f 00             	nopl   (%rax)
   28bd92988:	41 83 e8 01          	sub    $0x1,%r8d
   28bd9298c:	48 83 c0 14          	add    $0x14,%rax
   28bd92990:	8b 48 04             	mov    0x4(%rax),%ecx
   28bd92993:	85 c9                	test   %ecx,%ecx
   28bd92995:	75 07                	jne    28bd9299e <__mingw_enum_import_library_names+0x9e>
   28bd92997:	8b 50 0c             	mov    0xc(%rax),%edx
   28bd9299a:	85 d2                	test   %edx,%edx
   28bd9299c:	74 d7                	je     28bd92975 <__mingw_enum_import_library_names+0x75>
   28bd9299e:	45 85 c0             	test   %r8d,%r8d
   28bd929a1:	7f e5                	jg     28bd92988 <__mingw_enum_import_library_names+0x88>
   28bd929a3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   28bd929a7:	4d 01 d9             	add    %r11,%r9
   28bd929aa:	4c 89 c8             	mov    %r9,%rax
   28bd929ad:	48 83 c4 28          	add    $0x28,%rsp
   28bd929b1:	c3                   	ret    
   28bd929b2:	90                   	nop
   28bd929b3:	90                   	nop
   28bd929b4:	90                   	nop
   28bd929b5:	90                   	nop
   28bd929b6:	90                   	nop
   28bd929b7:	90                   	nop
   28bd929b8:	90                   	nop
   28bd929b9:	90                   	nop
   28bd929ba:	90                   	nop
   28bd929bb:	90                   	nop
   28bd929bc:	90                   	nop
   28bd929bd:	90                   	nop
   28bd929be:	90                   	nop
   28bd929bf:	90                   	nop

000000028bd929c0 <_fpreset>:
   28bd929c0:	db e3                	fninit 
   28bd929c2:	c3                   	ret    
   28bd929c3:	90                   	nop
   28bd929c4:	90                   	nop
   28bd929c5:	90                   	nop
   28bd929c6:	90                   	nop
   28bd929c7:	90                   	nop
   28bd929c8:	90                   	nop
   28bd929c9:	90                   	nop
   28bd929ca:	90                   	nop
   28bd929cb:	90                   	nop
   28bd929cc:	90                   	nop
   28bd929cd:	90                   	nop
   28bd929ce:	90                   	nop
   28bd929cf:	90                   	nop

000000028bd929d0 <___chkstk_ms>:
   28bd929d0:	51                   	push   %rcx
   28bd929d1:	50                   	push   %rax
   28bd929d2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   28bd929d8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   28bd929dd:	72 19                	jb     28bd929f8 <___chkstk_ms+0x28>
   28bd929df:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   28bd929e6:	48 83 09 00          	orq    $0x0,(%rcx)
   28bd929ea:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   28bd929f0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   28bd929f6:	77 e7                	ja     28bd929df <___chkstk_ms+0xf>
   28bd929f8:	48 29 c1             	sub    %rax,%rcx
   28bd929fb:	48 83 09 00          	orq    $0x0,(%rcx)
   28bd929ff:	58                   	pop    %rax
   28bd92a00:	59                   	pop    %rcx
   28bd92a01:	c3                   	ret    
   28bd92a02:	90                   	nop
   28bd92a03:	90                   	nop
   28bd92a04:	90                   	nop
   28bd92a05:	90                   	nop
   28bd92a06:	90                   	nop
   28bd92a07:	90                   	nop
   28bd92a08:	90                   	nop
   28bd92a09:	90                   	nop
   28bd92a0a:	90                   	nop
   28bd92a0b:	90                   	nop
   28bd92a0c:	90                   	nop
   28bd92a0d:	90                   	nop
   28bd92a0e:	90                   	nop
   28bd92a0f:	90                   	nop

000000028bd92a10 <DllEntryPoint>:
   28bd92a10:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd92a15:	c3                   	ret    
   28bd92a16:	90                   	nop
   28bd92a17:	90                   	nop
   28bd92a18:	90                   	nop
   28bd92a19:	90                   	nop
   28bd92a1a:	90                   	nop
   28bd92a1b:	90                   	nop
   28bd92a1c:	90                   	nop
   28bd92a1d:	90                   	nop
   28bd92a1e:	90                   	nop
   28bd92a1f:	90                   	nop

000000028bd92a20 <DllMain>:
   28bd92a20:	b8 01 00 00 00       	mov    $0x1,%eax
   28bd92a25:	c3                   	ret    
   28bd92a26:	90                   	nop
   28bd92a27:	90                   	nop
   28bd92a28:	90                   	nop
   28bd92a29:	90                   	nop
   28bd92a2a:	90                   	nop
   28bd92a2b:	90                   	nop
   28bd92a2c:	90                   	nop
   28bd92a2d:	90                   	nop
   28bd92a2e:	90                   	nop
   28bd92a2f:	90                   	nop

000000028bd92a30 <vfprintf>:
   28bd92a30:	ff 25 76 67 00 00    	jmp    *0x6776(%rip)        # 28bd991ac <__imp_vfprintf>
   28bd92a36:	90                   	nop
   28bd92a37:	90                   	nop

000000028bd92a38 <strncmp>:
   28bd92a38:	ff 25 66 67 00 00    	jmp    *0x6766(%rip)        # 28bd991a4 <__imp_strncmp>
   28bd92a3e:	90                   	nop
   28bd92a3f:	90                   	nop

000000028bd92a40 <strlen>:
   28bd92a40:	ff 25 56 67 00 00    	jmp    *0x6756(%rip)        # 28bd9919c <__imp_strlen>
   28bd92a46:	90                   	nop
   28bd92a47:	90                   	nop

000000028bd92a48 <fwrite>:
   28bd92a48:	ff 25 3e 67 00 00    	jmp    *0x673e(%rip)        # 28bd9918c <__imp_fwrite>
   28bd92a4e:	90                   	nop
   28bd92a4f:	90                   	nop

000000028bd92a50 <free>:
   28bd92a50:	ff 25 2e 67 00 00    	jmp    *0x672e(%rip)        # 28bd99184 <__imp_free>
   28bd92a56:	90                   	nop
   28bd92a57:	90                   	nop

000000028bd92a58 <calloc>:
   28bd92a58:	ff 25 1e 67 00 00    	jmp    *0x671e(%rip)        # 28bd9917c <__imp_calloc>
   28bd92a5e:	90                   	nop
   28bd92a5f:	90                   	nop

000000028bd92a60 <abort>:
   28bd92a60:	ff 25 0e 67 00 00    	jmp    *0x670e(%rip)        # 28bd99174 <__imp_abort>
   28bd92a66:	90                   	nop
   28bd92a67:	90                   	nop

000000028bd92a68 <_initterm>:
   28bd92a68:	ff 25 ee 66 00 00    	jmp    *0x66ee(%rip)        # 28bd9915c <__imp__initterm>
   28bd92a6e:	90                   	nop
   28bd92a6f:	90                   	nop

000000028bd92a70 <_amsg_exit>:
   28bd92a70:	ff 25 de 66 00 00    	jmp    *0x66de(%rip)        # 28bd99154 <__imp__amsg_exit>
   28bd92a76:	90                   	nop
   28bd92a77:	90                   	nop
   28bd92a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd92a7f:	00 

000000028bd92a80 <_initialize_onexit_table>:
   28bd92a80:	48 85 c9             	test   %rcx,%rcx
   28bd92a83:	74 1a                	je     28bd92a9f <_initialize_onexit_table+0x1f>
   28bd92a85:	31 c0                	xor    %eax,%eax
   28bd92a87:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   28bd92a8e:	00 
   28bd92a8f:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   28bd92a96:	00 
   28bd92a97:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
   28bd92a9e:	c3                   	ret    
   28bd92a9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   28bd92aa4:	c3                   	ret    
   28bd92aa5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd92aac:	00 00 00 00 

000000028bd92ab0 <_register_onexit_function>:
   28bd92ab0:	55                   	push   %rbp
   28bd92ab1:	57                   	push   %rdi
   28bd92ab2:	56                   	push   %rsi
   28bd92ab3:	53                   	push   %rbx
   28bd92ab4:	48 83 ec 28          	sub    $0x28,%rsp
   28bd92ab8:	48 89 cb             	mov    %rcx,%rbx
   28bd92abb:	48 89 d7             	mov    %rdx,%rdi
   28bd92abe:	48 85 c9             	test   %rcx,%rcx
   28bd92ac1:	0f 84 a4 00 00 00    	je     28bd92b6b <_register_onexit_function+0xbb>
   28bd92ac7:	b9 08 00 00 00       	mov    $0x8,%ecx
   28bd92acc:	e8 6f 01 00 00       	call   28bd92c40 <_lock>
   28bd92ad1:	48 83 3b 00          	cmpq   $0x0,(%rbx)
   28bd92ad5:	74 69                	je     28bd92b40 <_register_onexit_function+0x90>
   28bd92ad7:	48 8b 43 08          	mov    0x8(%rbx),%rax
   28bd92adb:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   28bd92adf:	48 39 c2             	cmp    %rax,%rdx
   28bd92ae2:	74 24                	je     28bd92b08 <_register_onexit_function+0x58>
   28bd92ae4:	48 8d 50 08          	lea    0x8(%rax),%rdx
   28bd92ae8:	b9 08 00 00 00       	mov    $0x8,%ecx
   28bd92aed:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   28bd92af1:	48 89 38             	mov    %rdi,(%rax)
   28bd92af4:	e8 3f 01 00 00       	call   28bd92c38 <_unlock>
   28bd92af9:	31 c0                	xor    %eax,%eax
   28bd92afb:	48 83 c4 28          	add    $0x28,%rsp
   28bd92aff:	5b                   	pop    %rbx
   28bd92b00:	5e                   	pop    %rsi
   28bd92b01:	5f                   	pop    %rdi
   28bd92b02:	5d                   	pop    %rbp
   28bd92b03:	c3                   	ret    
   28bd92b04:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd92b08:	48 8b 0b             	mov    (%rbx),%rcx
   28bd92b0b:	48 29 c8             	sub    %rcx,%rax
   28bd92b0e:	48 89 c2             	mov    %rax,%rdx
   28bd92b11:	48 89 c6             	mov    %rax,%rsi
   28bd92b14:	48 c1 fa 03          	sar    $0x3,%rdx
   28bd92b18:	48 c1 e2 04          	shl    $0x4,%rdx
   28bd92b1c:	48 89 d5             	mov    %rdx,%rbp
   28bd92b1f:	e8 0c 01 00 00       	call   28bd92c30 <realloc>
   28bd92b24:	48 89 c2             	mov    %rax,%rdx
   28bd92b27:	48 85 c0             	test   %rax,%rax
   28bd92b2a:	74 46                	je     28bd92b72 <_register_onexit_function+0xc2>
   28bd92b2c:	48 01 ea             	add    %rbp,%rdx
   28bd92b2f:	48 89 03             	mov    %rax,(%rbx)
   28bd92b32:	48 8d 04 30          	lea    (%rax,%rsi,1),%rax
   28bd92b36:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   28bd92b3a:	eb a8                	jmp    28bd92ae4 <_register_onexit_function+0x34>
   28bd92b3c:	0f 1f 40 00          	nopl   0x0(%rax)
   28bd92b40:	ba 08 00 00 00       	mov    $0x8,%edx
   28bd92b45:	b9 20 00 00 00       	mov    $0x20,%ecx
   28bd92b4a:	e8 09 ff ff ff       	call   28bd92a58 <calloc>
   28bd92b4f:	48 89 03             	mov    %rax,(%rbx)
   28bd92b52:	48 85 c0             	test   %rax,%rax
   28bd92b55:	74 1b                	je     28bd92b72 <_register_onexit_function+0xc2>
   28bd92b57:	48 8d 90 00 01 00 00 	lea    0x100(%rax),%rdx
   28bd92b5e:	48 89 43 08          	mov    %rax,0x8(%rbx)
   28bd92b62:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   28bd92b66:	e9 74 ff ff ff       	jmp    28bd92adf <_register_onexit_function+0x2f>
   28bd92b6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   28bd92b70:	eb 89                	jmp    28bd92afb <_register_onexit_function+0x4b>
   28bd92b72:	b9 08 00 00 00       	mov    $0x8,%ecx
   28bd92b77:	e8 bc 00 00 00       	call   28bd92c38 <_unlock>
   28bd92b7c:	83 c8 ff             	or     $0xffffffff,%eax
   28bd92b7f:	e9 77 ff ff ff       	jmp    28bd92afb <_register_onexit_function+0x4b>
   28bd92b84:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   28bd92b8b:	00 00 00 00 
   28bd92b8f:	90                   	nop

000000028bd92b90 <_execute_onexit_table>:
   28bd92b90:	41 54                	push   %r12
   28bd92b92:	56                   	push   %rsi
   28bd92b93:	53                   	push   %rbx
   28bd92b94:	48 83 ec 20          	sub    $0x20,%rsp
   28bd92b98:	48 89 ce             	mov    %rcx,%rsi
   28bd92b9b:	b9 08 00 00 00       	mov    $0x8,%ecx
   28bd92ba0:	e8 9b 00 00 00       	call   28bd92c40 <_lock>
   28bd92ba5:	4c 8b 26             	mov    (%rsi),%r12
   28bd92ba8:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
   28bd92bac:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
   28bd92bb3:	00 
   28bd92bb4:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
   28bd92bbb:	00 
   28bd92bbc:	b9 08 00 00 00       	mov    $0x8,%ecx
   28bd92bc1:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
   28bd92bc8:	e8 6b 00 00 00       	call   28bd92c38 <_unlock>
   28bd92bcd:	4d 85 e4             	test   %r12,%r12
   28bd92bd0:	74 24                	je     28bd92bf6 <_execute_onexit_table+0x66>
   28bd92bd2:	48 83 eb 08          	sub    $0x8,%rbx
   28bd92bd6:	49 39 dc             	cmp    %rbx,%r12
   28bd92bd9:	77 13                	ja     28bd92bee <_execute_onexit_table+0x5e>
   28bd92bdb:	48 8b 03             	mov    (%rbx),%rax
   28bd92bde:	48 85 c0             	test   %rax,%rax
   28bd92be1:	74 ef                	je     28bd92bd2 <_execute_onexit_table+0x42>
   28bd92be3:	ff d0                	call   *%rax
   28bd92be5:	48 83 eb 08          	sub    $0x8,%rbx
   28bd92be9:	49 39 dc             	cmp    %rbx,%r12
   28bd92bec:	76 ed                	jbe    28bd92bdb <_execute_onexit_table+0x4b>
   28bd92bee:	4c 89 e1             	mov    %r12,%rcx
   28bd92bf1:	e8 5a fe ff ff       	call   28bd92a50 <free>
   28bd92bf6:	31 c0                	xor    %eax,%eax
   28bd92bf8:	48 83 c4 20          	add    $0x20,%rsp
   28bd92bfc:	5b                   	pop    %rbx
   28bd92bfd:	5e                   	pop    %rsi
   28bd92bfe:	41 5c                	pop    %r12
   28bd92c00:	c3                   	ret    
   28bd92c01:	90                   	nop
   28bd92c02:	90                   	nop
   28bd92c03:	90                   	nop
   28bd92c04:	90                   	nop
   28bd92c05:	90                   	nop
   28bd92c06:	90                   	nop
   28bd92c07:	90                   	nop
   28bd92c08:	90                   	nop
   28bd92c09:	90                   	nop
   28bd92c0a:	90                   	nop
   28bd92c0b:	90                   	nop
   28bd92c0c:	90                   	nop
   28bd92c0d:	90                   	nop
   28bd92c0e:	90                   	nop
   28bd92c0f:	90                   	nop

000000028bd92c10 <__acrt_iob_func>:
   28bd92c10:	53                   	push   %rbx
   28bd92c11:	48 83 ec 20          	sub    $0x20,%rsp
   28bd92c15:	89 cb                	mov    %ecx,%ebx
   28bd92c17:	e8 2c 00 00 00       	call   28bd92c48 <__iob_func>
   28bd92c1c:	89 d9                	mov    %ebx,%ecx
   28bd92c1e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   28bd92c22:	48 c1 e2 04          	shl    $0x4,%rdx
   28bd92c26:	48 01 d0             	add    %rdx,%rax
   28bd92c29:	48 83 c4 20          	add    $0x20,%rsp
   28bd92c2d:	5b                   	pop    %rbx
   28bd92c2e:	c3                   	ret    
   28bd92c2f:	90                   	nop

000000028bd92c30 <realloc>:
   28bd92c30:	ff 25 5e 65 00 00    	jmp    *0x655e(%rip)        # 28bd99194 <__imp_realloc>
   28bd92c36:	90                   	nop
   28bd92c37:	90                   	nop

000000028bd92c38 <_unlock>:
   28bd92c38:	ff 25 2e 65 00 00    	jmp    *0x652e(%rip)        # 28bd9916c <__imp__unlock>
   28bd92c3e:	90                   	nop
   28bd92c3f:	90                   	nop

000000028bd92c40 <_lock>:
   28bd92c40:	ff 25 1e 65 00 00    	jmp    *0x651e(%rip)        # 28bd99164 <__imp__lock>
   28bd92c46:	90                   	nop
   28bd92c47:	90                   	nop

000000028bd92c48 <__iob_func>:
   28bd92c48:	ff 25 fe 64 00 00    	jmp    *0x64fe(%rip)        # 28bd9914c <__imp___iob_func>
   28bd92c4e:	90                   	nop
   28bd92c4f:	90                   	nop

000000028bd92c50 <VirtualQuery>:
   28bd92c50:	ff 25 e6 64 00 00    	jmp    *0x64e6(%rip)        # 28bd9913c <__imp_VirtualQuery>
   28bd92c56:	90                   	nop
   28bd92c57:	90                   	nop

000000028bd92c58 <VirtualProtect>:
   28bd92c58:	ff 25 d6 64 00 00    	jmp    *0x64d6(%rip)        # 28bd99134 <__imp_VirtualProtect>
   28bd92c5e:	90                   	nop
   28bd92c5f:	90                   	nop

000000028bd92c60 <TlsGetValue>:
   28bd92c60:	ff 25 c6 64 00 00    	jmp    *0x64c6(%rip)        # 28bd9912c <__imp_TlsGetValue>
   28bd92c66:	90                   	nop
   28bd92c67:	90                   	nop

000000028bd92c68 <Sleep>:
   28bd92c68:	ff 25 b6 64 00 00    	jmp    *0x64b6(%rip)        # 28bd99124 <__imp_Sleep>
   28bd92c6e:	90                   	nop
   28bd92c6f:	90                   	nop

000000028bd92c70 <LeaveCriticalSection>:
   28bd92c70:	ff 25 a6 64 00 00    	jmp    *0x64a6(%rip)        # 28bd9911c <__imp_LeaveCriticalSection>
   28bd92c76:	90                   	nop
   28bd92c77:	90                   	nop

000000028bd92c78 <InitializeCriticalSection>:
   28bd92c78:	ff 25 96 64 00 00    	jmp    *0x6496(%rip)        # 28bd99114 <__imp_InitializeCriticalSection>
   28bd92c7e:	90                   	nop
   28bd92c7f:	90                   	nop

000000028bd92c80 <GetLastError>:
   28bd92c80:	ff 25 86 64 00 00    	jmp    *0x6486(%rip)        # 28bd9910c <__imp_GetLastError>
   28bd92c86:	90                   	nop
   28bd92c87:	90                   	nop

000000028bd92c88 <EnterCriticalSection>:
   28bd92c88:	ff 25 76 64 00 00    	jmp    *0x6476(%rip)        # 28bd99104 <__imp_EnterCriticalSection>
   28bd92c8e:	90                   	nop
   28bd92c8f:	90                   	nop

000000028bd92c90 <DeleteCriticalSection>:
   28bd92c90:	ff 25 66 64 00 00    	jmp    *0x6466(%rip)        # 28bd990fc <__IAT_start__>
   28bd92c96:	90                   	nop
   28bd92c97:	90                   	nop
   28bd92c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   28bd92c9f:	00 

000000028bd92ca0 <register_frame_ctor>:
   28bd92ca0:	e9 db e6 ff ff       	jmp    28bd91380 <__gcc_register_frame>
   28bd92ca5:	90                   	nop
   28bd92ca6:	90                   	nop
   28bd92ca7:	90                   	nop
   28bd92ca8:	90                   	nop
   28bd92ca9:	90                   	nop
   28bd92caa:	90                   	nop
   28bd92cab:	90                   	nop
   28bd92cac:	90                   	nop
   28bd92cad:	90                   	nop
   28bd92cae:	90                   	nop
   28bd92caf:	90                   	nop

000000028bd92cb0 <__CTOR_LIST__>:
   28bd92cb0:	ff                   	(bad)  
   28bd92cb1:	ff                   	(bad)  
   28bd92cb2:	ff                   	(bad)  
   28bd92cb3:	ff                   	(bad)  
   28bd92cb4:	ff                   	(bad)  
   28bd92cb5:	ff                   	(bad)  
   28bd92cb6:	ff                   	(bad)  
   28bd92cb7:	ff                   	.byte 0xff

000000028bd92cb8 <.ctors.65535>:
   28bd92cb8:	a0 2c d9 8b 02 00 00 	movabs 0x28bd92c,%al
   28bd92cbf:	00 00 
   28bd92cc1:	00 00                	add    %al,(%rax)
   28bd92cc3:	00 00                	add    %al,(%rax)
   28bd92cc5:	00 00                	add    %al,(%rax)
	...

000000028bd92cc8 <__DTOR_LIST__>:
   28bd92cc8:	ff                   	(bad)  
   28bd92cc9:	ff                   	(bad)  
   28bd92cca:	ff                   	(bad)  
   28bd92ccb:	ff                   	(bad)  
   28bd92ccc:	ff                   	(bad)  
   28bd92ccd:	ff                   	(bad)  
   28bd92cce:	ff                   	(bad)  
   28bd92ccf:	ff 00                	incl   (%rax)
   28bd92cd1:	00 00                	add    %al,(%rax)
   28bd92cd3:	00 00                	add    %al,(%rax)
   28bd92cd5:	00 00                	add    %al,(%rax)
	...
