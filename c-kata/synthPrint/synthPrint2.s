	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_synthGcd               ## -- Begin function synthGcd
	.p2align	4, 0x90
_synthGcd:                              ## @synthGcd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB0_4
## %bb.1:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB0_3
## %bb.2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_synthGcd
	jmp	LBB0_14
LBB0_3:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	_synthGcd
	jmp	LBB0_14
LBB0_4:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB0_6
## %bb.5:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_synthGcd
	jmp	LBB0_14
LBB0_6:
	jmp	LBB0_7
LBB0_7:
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	jb	LBB0_10
## %bb.8:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jge	LBB0_11
## %bb.9:
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_strlen
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	jne	LBB0_11
LBB0_10:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	_synthGcd
	jmp	LBB0_14
LBB0_11:
	movq	-24(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_13
## %bb.12:
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	jmp	LBB0_14
LBB0_13:
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$2, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_synthDiv
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_synthMult
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_synthSub
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_synthGcd
	movq	-32(%rbp), %rdi
	callq	_free
LBB0_14:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_synthDiv               ## -- Begin function synthDiv
	.p2align	4, 0x90
_synthDiv:                              ## @synthDiv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB1_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB1_33
LBB1_2:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB1_6
## %bb.3:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB1_5
## %bb.4:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_synthDiv
	jmp	LBB1_33
LBB1_5:
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$3, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	_synthDiv
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	___strcat_chk
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_free
	jmp	LBB1_33
LBB1_6:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB1_8
## %bb.7:
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$3, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_synthDiv
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-40(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB1_33
LBB1_8:
	jmp	LBB1_9
LBB1_9:
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jb	LBB1_12
## %bb.10:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jge	LBB1_13
## %bb.11:
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jne	LBB1_13
LBB1_12:
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
	jmp	LBB1_33
LBB1_13:
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	___strcpy_chk
	movq	-56(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	___strcpy_chk
	movq	-64(%rbp), %rcx
	movb	$0, (%rcx)
	movb	$0, -65(%rbp)
	movl	$0, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	subq	%rax, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -168(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-176(%rbp), %rdx        ## 8-byte Reload
	subq	%rax, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	leaq	L_.str.4(%rip), %rsi
	callq	_synthPow
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_synthMult
LBB1_14:                                ## =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	_strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-184(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	movb	$1, %dl
	movb	%dl, -185(%rbp)         ## 1-byte Spill
	ja	LBB1_18
## %bb.15:                              ##   in Loop: Header=BB1_14 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movb	%al, -186(%rbp)         ## 1-byte Spill
	callq	_strcmp
	cmpl	$0, %eax
	movb	-186(%rbp), %cl         ## 1-byte Reload
	movb	%cl, -187(%rbp)         ## 1-byte Spill
	jl	LBB1_17
## %bb.16:                              ##   in Loop: Header=BB1_14 Depth=1
	movq	-48(%rbp), %rdi
	callq	_strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-200(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -187(%rbp)         ## 1-byte Spill
LBB1_17:                                ##   in Loop: Header=BB1_14 Depth=1
	movb	-187(%rbp), %al         ## 1-byte Reload
	movb	%al, -185(%rbp)         ## 1-byte Spill
LBB1_18:                                ##   in Loop: Header=BB1_14 Depth=1
	movb	-185(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_19
	jmp	LBB1_20
LBB1_19:                                ##   in Loop: Header=BB1_14 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	_synthSub
	jmp	LBB1_14
LBB1_20:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %r8d
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-64(%rbp), %rcx
	movb	$0, 1(%rcx)
	cmpl	$0, -72(%rbp)
	je	LBB1_22
## %bb.21:
	movq	$-1, %rdx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	___strcat_chk
LBB1_22:
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
LBB1_23:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_25 Depth 2
	cmpl	$0, -76(%rbp)
	jl	LBB1_32
## %bb.24:                              ##   in Loop: Header=BB1_23 Depth=1
	movl	$0, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-76(%rbp), %edx
	leaq	L_.str.4(%rip), %rsi
	callq	_synthPow
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_synthMult
LBB1_25:                                ##   Parent Loop BB1_23 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rdi
	callq	_strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-208(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	movb	$1, %dl
	movb	%dl, -209(%rbp)         ## 1-byte Spill
	ja	LBB1_29
## %bb.26:                              ##   in Loop: Header=BB1_25 Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movb	%al, -210(%rbp)         ## 1-byte Spill
	callq	_strcmp
	cmpl	$0, %eax
	movb	-210(%rbp), %cl         ## 1-byte Reload
	movb	%cl, -211(%rbp)         ## 1-byte Spill
	jl	LBB1_28
## %bb.27:                              ##   in Loop: Header=BB1_25 Depth=2
	movq	-48(%rbp), %rdi
	callq	_strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-224(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -211(%rbp)         ## 1-byte Spill
LBB1_28:                                ##   in Loop: Header=BB1_25 Depth=2
	movb	-211(%rbp), %al         ## 1-byte Reload
	movb	%al, -209(%rbp)         ## 1-byte Spill
LBB1_29:                                ##   in Loop: Header=BB1_25 Depth=2
	movb	-209(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_30
	jmp	LBB1_31
LBB1_30:                                ##   in Loop: Header=BB1_25 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	_synthSub
	jmp	LBB1_25
LBB1_31:                                ##   in Loop: Header=BB1_23 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %r8d
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	$-1, %rdx
	movq	-64(%rbp), %rcx
	movb	$0, 1(%rcx)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	%eax, -228(%rbp)        ## 4-byte Spill
	callq	___strcat_chk
	movl	-76(%rbp), %r8d
	addl	$-1, %r8d
	movl	%r8d, -76(%rbp)
	jmp	LBB1_23
LBB1_32:
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	___strcpy_chk
	movq	-64(%rbp), %rdi
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	_free
	movq	-48(%rbp), %rdi
	callq	_free
	movq	-56(%rbp), %rdi
	callq	_free
LBB1_33:
	addq	$240, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function synthMult
LCPI2_0:
	.quad	4666722622711529472     ## double 9999
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_synthMult
	.p2align	4, 0x90
_synthMult:                             ## @synthMult
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              ## imm = 0x150
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB2_2
## %bb.1:
	movq	-32(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB2_3
LBB2_2:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
	jmp	LBB2_69
LBB2_3:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB2_7
## %bb.4:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB2_6
## %bb.5:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_synthMult
	jmp	LBB2_69
LBB2_6:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-200(%rbp), %rcx        ## 8-byte Reload
	imulq	%rax, %rcx
	addq	$2, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	_synthMult
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-40(%rbp), %rdi
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB2_69
LBB2_7:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB2_9
## %bb.8:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-224(%rbp), %rcx        ## 8-byte Reload
	imulq	%rax, %rcx
	addq	$2, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_synthMult
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-48(%rbp), %rdi
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB2_69
LBB2_9:
	jmp	LBB2_10
LBB2_10:
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$4, -76(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -72(%rbp)
	movl	$0, -80(%rbp)
LBB2_11:                                ## =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB2_14
## %bb.12:                              ##   in Loop: Header=BB2_11 Depth=1
	movq	-72(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movb	$0, (%rax,%rcx)
## %bb.13:                              ##   in Loop: Header=BB2_11 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	LBB2_11
LBB2_14:
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
                                        ## implicit-def: $rdx
	movl	%eax, %edx
	sarl	$31, %ecx
	shrl	$30, %ecx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
	leal	-1(%rdx,%rsi), %eax
	sarl	$2, %eax
	incl	%eax
	movl	%eax, %edx
	movq	%rsp, %rsi
	movq	%rsi, -88(%rbp)
	leaq	15(%rdx,%rdx,4), %rsi
	movabsq	$68719476720, %rdi      ## imm = 0xFFFFFFFF0
	andq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -248(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-248(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -96(%rbp)
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
LBB2_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_17 Depth 2
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	LBB2_22
## %bb.16:                              ##   in Loop: Header=BB2_15 Depth=1
	movl	$0, -108(%rbp)
LBB2_17:                                ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$5, -108(%rbp)
	jge	LBB2_20
## %bb.18:                              ##   in Loop: Header=BB2_17 Depth=2
	movslq	-104(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movslq	-108(%rbp), %rax
	movb	$0, (%rcx,%rax)
## %bb.19:                              ##   in Loop: Header=BB2_17 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	LBB2_17
LBB2_20:                                ##   in Loop: Header=BB2_15 Depth=1
	jmp	LBB2_21
LBB2_21:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	LBB2_15
LBB2_22:
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
                                        ## implicit-def: $rdx
	movl	%eax, %edx
	sarl	$31, %ecx
	shrl	$30, %ecx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
	leal	-1(%rdx,%rsi), %eax
	sarl	$2, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	15(%rdx,%rdx,4), %rsi
	movabsq	$68719476720, %rdi      ## imm = 0xFFFFFFFF0
	andq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -264(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-264(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -120(%rbp)
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	$0, -128(%rbp)
LBB2_23:                                ## =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	LBB2_29
## %bb.24:                              ##   in Loop: Header=BB2_23 Depth=1
	movl	-128(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -276(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	-276(%rbp), %ecx        ## 4-byte Reload
	cmpl	%eax, %ecx
	je	LBB2_26
## %bb.25:                              ##   in Loop: Header=BB2_23 Depth=1
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-128(%rbp), %rsi
	imulq	$5, %rsi, %rsi
	movq	-272(%rbp), %rdi        ## 8-byte Reload
	addq	%rsi, %rdi
	movq	-24(%rbp), %rsi
	movslq	-52(%rbp), %r8
	addq	%r8, %rsi
	movl	-128(%rbp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movslq	%eax, %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	$4, %edx
	callq	___strncpy_chk
	movslq	-128(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	movq	-272(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 4(%rdx)
	jmp	LBB2_27
LBB2_26:                                ##   in Loop: Header=BB2_23 Depth=1
	movq	$-1, %rcx
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$5, %rdx, %rdx
	movq	-272(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	-24(%rbp), %rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	$4, %edx
	callq	___strncpy_chk
	movl	-124(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rcx
	imulq	$5, %rcx, %rcx
	movq	-272(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movl	-52(%rbp), %r8d
	movl	-124(%rbp), %r9d
	subl	$1, %r9d
	shll	$2, %r9d
	subl	%r9d, %r8d
	movslq	%r8d, %rcx
	movb	$0, (%rdx,%rcx)
LBB2_27:                                ##   in Loop: Header=BB2_23 Depth=1
	jmp	LBB2_28
LBB2_28:                                ##   in Loop: Header=BB2_23 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	LBB2_23
LBB2_29:
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
                                        ## implicit-def: $rdx
	movl	%eax, %edx
	sarl	$31, %ecx
	shrl	$30, %ecx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
	leal	-1(%rdx,%rsi), %eax
	sarl	$2, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	15(%rdx,%rdx,4), %rsi
	movabsq	$68719476720, %rdi      ## imm = 0xFFFFFFFF0
	andq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -288(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-288(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -136(%rbp)
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	$0, -144(%rbp)
LBB2_30:                                ## =>This Inner Loop Header: Depth=1
	movl	-144(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	LBB2_36
## %bb.31:                              ##   in Loop: Header=BB2_30 Depth=1
	movl	-144(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	LBB2_33
## %bb.32:                              ##   in Loop: Header=BB2_30 Depth=1
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-144(%rbp), %rsi
	imulq	$5, %rsi, %rsi
	movq	-296(%rbp), %rdi        ## 8-byte Reload
	addq	%rsi, %rdi
	movq	-32(%rbp), %rsi
	movslq	-56(%rbp), %r8
	addq	%r8, %rsi
	movl	-144(%rbp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movslq	%eax, %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	$4, %edx
	callq	___strncpy_chk
	movslq	-144(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	movq	-296(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 4(%rdx)
	jmp	LBB2_34
LBB2_33:                                ##   in Loop: Header=BB2_30 Depth=1
	movq	$-1, %rcx
	movl	-140(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$5, %rdx, %rdx
	movq	-296(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	-32(%rbp), %rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	$4, %edx
	callq	___strncpy_chk
	movl	-140(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rcx
	imulq	$5, %rcx, %rcx
	movq	-296(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movl	-56(%rbp), %r8d
	movl	-140(%rbp), %r9d
	subl	$1, %r9d
	shll	$2, %r9d
	subl	%r9d, %r8d
	movslq	%r8d, %rcx
	movb	$0, (%rdx,%rcx)
LBB2_34:                                ##   in Loop: Header=BB2_30 Depth=1
	jmp	LBB2_35
LBB2_35:                                ##   in Loop: Header=BB2_30 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	LBB2_30
LBB2_36:
	movq	$0, -152(%rbp)
	movl	$0, -164(%rbp)
LBB2_37:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_39 Depth 2
	movl	-164(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	LBB2_47
## %bb.38:                              ##   in Loop: Header=BB2_37 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -168(%rbp)
LBB2_39:                                ##   Parent Loop BB2_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-168(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	LBB2_45
## %bb.40:                              ##   in Loop: Header=BB2_39 Depth=2
	movl	-164(%rbp), %eax
	subl	-168(%rbp), %eax
	cmpl	$0, %eax
	jl	LBB2_42
## %bb.41:                              ##   in Loop: Header=BB2_39 Depth=2
	movl	-164(%rbp), %eax
	subl	-168(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	LBB2_43
LBB2_42:                                ##   in Loop: Header=BB2_39 Depth=2
	jmp	LBB2_44
LBB2_43:                                ##   in Loop: Header=BB2_39 Depth=2
	movslq	-168(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-272(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movslq	%eax, %rcx
	movl	-164(%rbp), %eax
	subl	-168(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$5, %rdx, %rdx
	movq	-296(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rcx, -304(%rbp)        ## 8-byte Spill
	callq	_atoi
	movslq	%eax, %rcx
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	imulq	%rcx, %rdx
	addq	-160(%rbp), %rdx
	movq	%rdx, -160(%rbp)
LBB2_44:                                ##   in Loop: Header=BB2_39 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	LBB2_39
LBB2_45:                                ##   in Loop: Header=BB2_37 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-160(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdx, -312(%rbp)        ## 8-byte Spill
	movl	%ecx, %edx
	movl	$10000, %edi            ## imm = 0x2710
	divq	%rdi
	movq	%rax, -152(%rbp)
	movslq	-164(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %r8         ## 8-byte Reload
	addq	%rax, %r8
	movq	-160(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	movq	%r8, %rdi
	movq	-312(%rbp), %r8         ## 8-byte Reload
	movq	%rdx, -320(%rbp)        ## 8-byte Spill
	movq	%r8, %rdx
	leaq	L_.str.7(%rip), %rcx
	movq	-320(%rbp), %r8         ## 8-byte Reload
	movb	$0, %al
	callq	___sprintf_chk
## %bb.46:                              ##   in Loop: Header=BB2_37 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	LBB2_37
LBB2_47:
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -184(%rbp)
LBB2_48:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_59 Depth 2
	cmpl	$0, -184(%rbp)
	jl	LBB2_66
## %bb.49:                              ##   in Loop: Header=BB2_48 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	leaq	L_.str(%rip), %rsi
	movq	%rcx, %rdi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB2_52
## %bb.50:                              ##   in Loop: Header=BB2_48 Depth=1
	cmpl	$0, -176(%rbp)
	jne	LBB2_52
## %bb.51:                              ##   in Loop: Header=BB2_48 Depth=1
	jmp	LBB2_65
LBB2_52:                                ##   in Loop: Header=BB2_48 Depth=1
	cmpl	$0, -176(%rbp)
	jne	LBB2_54
## %bb.53:                              ##   in Loop: Header=BB2_48 Depth=1
	movl	-184(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	$1, -176(%rbp)
LBB2_54:                                ##   in Loop: Header=BB2_48 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	cmpl	$1000, %eax             ## imm = 0x3E8
	jge	LBB2_64
## %bb.55:                              ##   in Loop: Header=BB2_48 Depth=1
	movl	-184(%rbp), %eax
	cmpl	-180(%rbp), %eax
	je	LBB2_64
## %bb.56:                              ##   in Loop: Header=BB2_48 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	leaq	L_.str(%rip), %rsi
	movq	%rcx, %rdi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB2_58
## %bb.57:                              ##   in Loop: Header=BB2_48 Depth=1
	movq	$-1, %rdx
	movq	-72(%rbp), %rdi
	leaq	L_.str.10(%rip), %rsi
	callq	___strcat_chk
	jmp	LBB2_63
LBB2_58:                                ##   in Loop: Header=BB2_48 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movsd	LCPI2_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	_log10
	cvttsd2si	%xmm0, %eax
	movl	%eax, -172(%rbp)
	movl	$0, -188(%rbp)
LBB2_59:                                ##   Parent Loop BB2_48 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	LBB2_62
## %bb.60:                              ##   in Loop: Header=BB2_59 Depth=2
	movq	$-1, %rdx
	movq	-72(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcat_chk
## %bb.61:                              ##   in Loop: Header=BB2_59 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	LBB2_59
LBB2_62:                                ##   in Loop: Header=BB2_48 Depth=1
	jmp	LBB2_63
LBB2_63:                                ##   in Loop: Header=BB2_48 Depth=1
	jmp	LBB2_64
LBB2_64:                                ##   in Loop: Header=BB2_48 Depth=1
	movq	$-1, %rdx
	movq	-72(%rbp), %rdi
	movslq	-184(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rsi
	callq	___strcat_chk
LBB2_65:                                ##   in Loop: Header=BB2_48 Depth=1
	movl	-184(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -184(%rbp)
	jmp	LBB2_48
LBB2_66:
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB2_68
## %bb.67:
	movq	$-1, %rdx
	movq	-72(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
LBB2_68:
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	___strcpy_chk
	movq	-72(%rbp), %rdi
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	callq	_free
	movq	-88(%rbp), %rax
	movq	%rax, %rsp
LBB2_69:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_71
## %bb.70:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB2_71:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function synthSub
LCPI3_0:
	.quad	4741671816358002688     ## double 999999999
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_synthSub
	.p2align	4, 0x90
_synthSub:                              ## @synthSub
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              ## imm = 0x170
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB3_2
## %bb.1:
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	jmp	LBB3_79
LBB3_2:
	movq	-32(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB3_4
## %bb.3:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	___strcpy_chk
	jmp	LBB3_79
LBB3_4:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB3_10
## %bb.5:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB3_9
## %bb.6:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-208(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	addq	$3, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_synthSub
	movq	-40(%rbp), %rax
	movsbl	(%rax), %r8d
	cmpl	$45, %r8d
	jne	LBB3_8
## %bb.7:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	___strcpy_chk
	jmp	LBB3_79
LBB3_8:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-40(%rbp), %rdi
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB3_79
LBB3_9:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-232(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	addq	$3, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	_synthAdd
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-48(%rbp), %rdi
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB3_79
LBB3_10:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB3_12
## %bb.11:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_synthAdd
	jmp	LBB3_79
LBB3_12:
	jmp	LBB3_13
LBB3_13:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-256(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jb	LBB3_16
## %bb.14:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-264(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jne	LBB3_17
## %bb.15:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jge	LBB3_17
LBB3_16:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-272(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	addq	$3, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_synthSub
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -280(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-56(%rbp), %rdi
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB3_79
LBB3_17:
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
LBB3_18:                                ## =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB3_21
## %bb.19:                              ##   in Loop: Header=BB3_18 Depth=1
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movb	$0, (%rax,%rcx)
## %bb.20:                              ##   in Loop: Header=BB3_18 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB3_18
LBB3_21:
	movl	-68(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	imulq	$954437177, %rcx, %rcx  ## imm = 0x38E38E39
	movq	%rcx, %rdx
	sarq	$33, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$63, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rdi,%rsi), %eax
	movl	%eax, %esi
	movq	%rsp, %rdi
	movq	%rdi, -96(%rbp)
	leaq	(%rsi,%rsi,4), %rdi
	leaq	15(%rdi,%rdi), %rdi
	movabsq	$137438953456, %r8      ## imm = 0x1FFFFFFFF0
	andq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rsi, -296(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-296(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	%rax, -304(%rbp)        ## 8-byte Spill
LBB3_22:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_24 Depth 2
	movl	-108(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, -308(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	-308(%rbp), %ecx        ## 4-byte Reload
	cmpl	%eax, %ecx
	jge	LBB3_29
## %bb.23:                              ##   in Loop: Header=BB3_22 Depth=1
	movl	$0, -112(%rbp)
LBB3_24:                                ##   Parent Loop BB3_22 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$10, -112(%rbp)
	jge	LBB3_27
## %bb.25:                              ##   in Loop: Header=BB3_24 Depth=2
	movslq	-108(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movslq	-112(%rbp), %rax
	movb	$0, (%rcx,%rax)
## %bb.26:                              ##   in Loop: Header=BB3_24 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	LBB3_24
LBB3_27:                                ##   in Loop: Header=BB3_22 Depth=1
	jmp	LBB3_28
LBB3_28:                                ##   in Loop: Header=BB3_22 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	LBB3_22
LBB3_29:
	movl	-60(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	imulq	$954437177, %rcx, %rcx  ## imm = 0x38E38E39
	movq	%rcx, %rdx
	sarq	$33, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$63, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rdi,%rsi), %eax
	movl	%eax, %esi
	leaq	(%rsi,%rsi,4), %rdi
	leaq	15(%rdi,%rdi), %rdi
	movabsq	$137438953456, %r8      ## imm = 0x1FFFFFFFF0
	andq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rsi, -320(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-320(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -120(%rbp)
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	$0, -128(%rbp)
LBB3_30:                                ## =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	LBB3_36
## %bb.31:                              ##   in Loop: Header=BB3_30 Depth=1
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	LBB3_33
## %bb.32:                              ##   in Loop: Header=BB3_30 Depth=1
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-128(%rbp), %rsi
	imulq	$10, %rsi, %rsi
	movq	-328(%rbp), %rdi        ## 8-byte Reload
	addq	%rsi, %rdi
	movq	-24(%rbp), %rsi
	movslq	-60(%rbp), %r8
	addq	%r8, %rsi
	movl	-128(%rbp), %eax
	addl	$1, %eax
	imull	$9, %eax, %eax
	movslq	%eax, %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	$9, %edx
	callq	___strncpy_chk
	movslq	-128(%rbp), %rcx
	imulq	$10, %rcx, %rcx
	movq	-328(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 9(%rdx)
	jmp	LBB3_34
LBB3_33:                                ##   in Loop: Header=BB3_30 Depth=1
	movq	$-1, %rcx
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$10, %rdx, %rdx
	movq	-328(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	-24(%rbp), %rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	$9, %edx
	callq	___strncpy_chk
	movl	-124(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rcx
	imulq	$10, %rcx, %rcx
	movq	-328(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movl	-60(%rbp), %r8d
	movl	-124(%rbp), %r9d
	subl	$1, %r9d
	imull	$9, %r9d, %r9d
	subl	%r9d, %r8d
	movslq	%r8d, %rcx
	movb	$0, (%rdx,%rcx)
LBB3_34:                                ##   in Loop: Header=BB3_30 Depth=1
	jmp	LBB3_35
LBB3_35:                                ##   in Loop: Header=BB3_30 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	LBB3_30
LBB3_36:
	movl	-64(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	imulq	$954437177, %rcx, %rcx  ## imm = 0x38E38E39
	movq	%rcx, %rdx
	sarq	$33, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$63, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rdi,%rsi), %eax
	movl	%eax, %esi
	leaq	(%rsi,%rsi,4), %rdi
	leaq	15(%rdi,%rdi), %rdi
	movabsq	$137438953456, %r8      ## imm = 0x1FFFFFFFF0
	andq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rsi, -336(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-336(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -136(%rbp)
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -344(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	$0, -144(%rbp)
LBB3_37:                                ## =>This Inner Loop Header: Depth=1
	movl	-144(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	LBB3_43
## %bb.38:                              ##   in Loop: Header=BB3_37 Depth=1
	movl	-144(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	LBB3_40
## %bb.39:                              ##   in Loop: Header=BB3_37 Depth=1
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-144(%rbp), %rsi
	imulq	$10, %rsi, %rsi
	movq	-344(%rbp), %rdi        ## 8-byte Reload
	addq	%rsi, %rdi
	movq	-32(%rbp), %rsi
	movslq	-64(%rbp), %r8
	addq	%r8, %rsi
	movl	-144(%rbp), %eax
	addl	$1, %eax
	imull	$9, %eax, %eax
	movslq	%eax, %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	$9, %edx
	callq	___strncpy_chk
	movslq	-144(%rbp), %rcx
	imulq	$10, %rcx, %rcx
	movq	-344(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 9(%rdx)
	jmp	LBB3_41
LBB3_40:                                ##   in Loop: Header=BB3_37 Depth=1
	movq	$-1, %rcx
	movl	-140(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$10, %rdx, %rdx
	movq	-344(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	-32(%rbp), %rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	$9, %edx
	callq	___strncpy_chk
	movl	-140(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rcx
	imulq	$10, %rcx, %rcx
	movq	-344(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movl	-64(%rbp), %r8d
	movl	-140(%rbp), %r9d
	subl	$1, %r9d
	imull	$9, %r9d, %r9d
	subl	%r9d, %r8d
	movslq	%r8d, %rcx
	movb	$0, (%rdx,%rcx)
LBB3_41:                                ##   in Loop: Header=BB3_37 Depth=1
	jmp	LBB3_42
LBB3_42:                                ##   in Loop: Header=BB3_37 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	LBB3_37
LBB3_43:
	movl	$0, -164(%rbp)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -168(%rbp)
LBB3_44:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_50 Depth 2
	cmpl	$0, -168(%rbp)
	jl	LBB3_57
## %bb.45:                              ##   in Loop: Header=BB3_44 Depth=1
	movl	-168(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	LBB3_47
## %bb.46:                              ##   in Loop: Header=BB3_44 Depth=1
	movslq	-168(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movslq	%eax, %rcx
	movq	%rcx, -160(%rbp)
	jmp	LBB3_48
LBB3_47:                                ##   in Loop: Header=BB3_44 Depth=1
	movslq	-168(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movslq	%eax, %rcx
	movslq	-168(%rbp), %rdx
	imulq	$10, %rdx, %rdx
	movq	-344(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rcx, -352(%rbp)        ## 8-byte Spill
	callq	_atoi
	movslq	%eax, %rcx
	movq	-352(%rbp), %rdx        ## 8-byte Reload
	subq	%rcx, %rdx
	movq	%rdx, -160(%rbp)
LBB3_48:                                ##   in Loop: Header=BB3_44 Depth=1
	cmpq	$0, -160(%rbp)
	jge	LBB3_55
## %bb.49:                              ##   in Loop: Header=BB3_44 Depth=1
	movl	$1, -164(%rbp)
	movq	-160(%rbp), %rax
	addq	$1000000000, %rax       ## imm = 0x3B9ACA00
	movq	%rax, -160(%rbp)
	movl	-168(%rbp), %ecx
	addl	-164(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rdi
	callq	_atoi
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
LBB3_50:                                ##   Parent Loop BB3_44 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	$0, -152(%rbp)
	movb	%al, -353(%rbp)         ## 1-byte Spill
	jne	LBB3_52
## %bb.51:                              ##   in Loop: Header=BB3_50 Depth=2
	movl	-124(%rbp), %eax
	movl	-168(%rbp), %ecx
	addl	-164(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%dl
	movb	%dl, -353(%rbp)         ## 1-byte Spill
LBB3_52:                                ##   in Loop: Header=BB3_50 Depth=2
	movb	-353(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_53
	jmp	LBB3_54
LBB3_53:                                ##   in Loop: Header=BB3_50 Depth=2
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	-168(%rbp), %eax
	addl	-164(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$10, %rcx, %rcx
	movq	-304(%rbp), %rdi        ## 8-byte Reload
	addq	%rcx, %rdi
	movb	$0, (%rdi)
	movl	-168(%rbp), %eax
	addl	-164(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$10, %rcx, %rcx
	movq	-304(%rbp), %rdi        ## 8-byte Reload
	addq	%rcx, %rdi
	leaq	L_.str.8(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movl	-168(%rbp), %esi
	addl	-164(%rbp), %esi
	movslq	%esi, %rcx
	imulq	$10, %rcx, %rcx
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 9(%rdx)
	movl	-164(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -164(%rbp)
	movl	-168(%rbp), %esi
	addl	-164(%rbp), %esi
	movslq	%esi, %rcx
	imulq	$10, %rcx, %rcx
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	movl	%eax, -360(%rbp)        ## 4-byte Spill
	callq	_atoi
	movslq	%eax, %rcx
	movq	%rcx, -152(%rbp)
	jmp	LBB3_50
LBB3_54:                                ##   in Loop: Header=BB3_44 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	-168(%rbp), %eax
	addl	-164(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$10, %rcx, %rcx
	movq	-304(%rbp), %rdi        ## 8-byte Reload
	addq	%rcx, %rdi
	movb	$0, (%rdi)
	movl	-168(%rbp), %eax
	addl	-164(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$10, %rcx, %rcx
	movq	-304(%rbp), %rdi        ## 8-byte Reload
	addq	%rcx, %rdi
	movq	-152(%rbp), %rcx
	subq	$1, %rcx
	leaq	L_.str.7(%rip), %r8
	movq	%rcx, -368(%rbp)        ## 8-byte Spill
	movq	%r8, %rcx
	movq	-368(%rbp), %r8         ## 8-byte Reload
	movb	$0, %al
	callq	___sprintf_chk
LBB3_55:                                ##   in Loop: Header=BB3_44 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movslq	-168(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movb	$0, (%rcx)
	movslq	-168(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	-160(%rbp), %r8
	movq	%rcx, %rdi
	leaq	L_.str.7(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
## %bb.56:                              ##   in Loop: Header=BB3_44 Depth=1
	movl	-168(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -168(%rbp)
	jmp	LBB3_44
LBB3_57:
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	movl	%eax, -184(%rbp)
LBB3_58:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_69 Depth 2
	cmpl	$0, -184(%rbp)
	jl	LBB3_76
## %bb.59:                              ##   in Loop: Header=BB3_58 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	leaq	L_.str(%rip), %rsi
	movq	%rcx, %rdi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB3_62
## %bb.60:                              ##   in Loop: Header=BB3_58 Depth=1
	cmpl	$0, -176(%rbp)
	jne	LBB3_62
## %bb.61:                              ##   in Loop: Header=BB3_58 Depth=1
	jmp	LBB3_75
LBB3_62:                                ##   in Loop: Header=BB3_58 Depth=1
	cmpl	$0, -176(%rbp)
	jne	LBB3_64
## %bb.63:                              ##   in Loop: Header=BB3_58 Depth=1
	movl	-184(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	$1, -176(%rbp)
LBB3_64:                                ##   in Loop: Header=BB3_58 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	cmpl	$100000000, %eax        ## imm = 0x5F5E100
	jge	LBB3_74
## %bb.65:                              ##   in Loop: Header=BB3_58 Depth=1
	movl	-184(%rbp), %eax
	cmpl	-180(%rbp), %eax
	je	LBB3_74
## %bb.66:                              ##   in Loop: Header=BB3_58 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	leaq	L_.str(%rip), %rsi
	movq	%rcx, %rdi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB3_68
## %bb.67:                              ##   in Loop: Header=BB3_58 Depth=1
	movq	$-1, %rdx
	movq	-80(%rbp), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	___strcat_chk
	jmp	LBB3_73
LBB3_68:                                ##   in Loop: Header=BB3_58 Depth=1
	movslq	-184(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movsd	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	_log10
	cvttsd2si	%xmm0, %eax
	movl	%eax, -172(%rbp)
	movl	$0, -188(%rbp)
LBB3_69:                                ##   Parent Loop BB3_58 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	LBB3_72
## %bb.70:                              ##   in Loop: Header=BB3_69 Depth=2
	movq	$-1, %rdx
	movq	-80(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcat_chk
## %bb.71:                              ##   in Loop: Header=BB3_69 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	LBB3_69
LBB3_72:                                ##   in Loop: Header=BB3_58 Depth=1
	jmp	LBB3_73
LBB3_73:                                ##   in Loop: Header=BB3_58 Depth=1
	jmp	LBB3_74
LBB3_74:                                ##   in Loop: Header=BB3_58 Depth=1
	movq	$-1, %rdx
	movq	-80(%rbp), %rdi
	movslq	-184(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rsi
	callq	___strcat_chk
LBB3_75:                                ##   in Loop: Header=BB3_58 Depth=1
	movl	-184(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -184(%rbp)
	jmp	LBB3_58
LBB3_76:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	___strcpy_chk
	movq	-80(%rbp), %rcx
	movsbl	(%rcx), %r8d
	cmpl	$0, %r8d
	jne	LBB3_78
## %bb.77:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
LBB3_78:
	movq	-80(%rbp), %rdi
	callq	_free
	movq	-96(%rbp), %rax
	movq	%rax, %rsp
LBB3_79:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB3_81
## %bb.80:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB3_81:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function synthPow
LCPI4_0:
	.quad	4621256167635550208     ## double 9
LCPI4_1:
	.quad	4890909195324358656     ## double 9.2233720368547758E+18
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_synthPow
	.p2align	4, 0x90
_synthPow:                              ## @synthPow
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	-44(%rbp), %edx
	movq	%rax, %rsi
	callq	_synthPow
	jmp	LBB4_13
LBB4_2:
	cmpl	$0, -44(%rbp)
	jg	LBB4_4
## %bb.3:
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	___strcpy_chk
	jmp	LBB4_13
LBB4_4:
	movq	-40(%rbp), %rdi
	callq	_atoi
	movsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	movsd	%xmm0, -80(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	_log10
	movsd	-80(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	LBB4_6
## %bb.5:
	movl	$1, -48(%rbp)
LBB4_6:
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB4_8
## %bb.7:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-40(%rbp), %rdi
	movl	%esi, -84(%rbp)         ## 4-byte Spill
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	callq	_atoi
	cvtsi2sd	%eax, %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	_pow
	movsd	LCPI4_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdx ## imm = 0x8000000000000000
	xorq	%rdx, %rcx
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %r8
	movl	-84(%rbp), %esi         ## 4-byte Reload
	movq	-96(%rbp), %rdx         ## 8-byte Reload
	leaq	L_.str.7(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	jmp	LBB4_13
LBB4_8:
	movq	-40(%rbp), %rdi
	callq	_atoi
	cvtsi2sd	%eax, %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	callq	_pow
	movsd	LCPI4_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdx ## imm = 0x8000000000000000
	xorq	%rdx, %rcx
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %edx
	callq	_synthPow
	movl	$0, -68(%rbp)
LBB4_9:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -68(%rbp)
	jge	LBB4_12
## %bb.10:                              ##   in Loop: Header=BB4_9 Depth=1
	movslq	-68(%rbp), %rax
	movb	$0, -19(%rbp,%rax)
## %bb.11:                              ##   in Loop: Header=BB4_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB4_9
LBB4_12:
	xorl	%esi, %esi
	leaq	-19(%rbp), %rdi
	movq	-64(%rbp), %r8
	movl	$11, %edx
	leaq	L_.str.7(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	leaq	-19(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	callq	_synthMult
LBB4_13:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_15
## %bb.14:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB4_15:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function synthAdd
LCPI5_0:
	.quad	4741671816358002688     ## double 999999999
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_synthAdd
	.p2align	4, 0x90
_synthAdd:                              ## @synthAdd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_2
## %bb.1:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	___strcpy_chk
	jmp	LBB5_78
LBB5_2:
	movq	-24(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_4
## %bb.3:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	___strcpy_chk
	jmp	LBB5_78
LBB5_4:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB5_8
## %bb.5:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB5_7
## %bb.6:
	movq	-24(%rbp), %rdi
	callq	_strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-184(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	addq	$3, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_synthAdd
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	___strcpy_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	callq	___strcat_chk
	movq	-40(%rbp), %rdi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	_free
	jmp	LBB5_78
LBB5_7:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_synthSub
	jmp	LBB5_78
LBB5_8:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	LBB5_10
## %bb.9:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	_synthSub
	jmp	LBB5_78
LBB5_10:
	jmp	LBB5_11
LBB5_11:
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	LBB5_13
## %bb.12:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB5_14
LBB5_13:
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
LBB5_14:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
LBB5_15:                                ## =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB5_18
## %bb.16:                              ##   in Loop: Header=BB5_15 Depth=1
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movb	$0, (%rax,%rcx)
## %bb.17:                              ##   in Loop: Header=BB5_15 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB5_15
LBB5_18:
	movl	-52(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	imulq	$954437177, %rcx, %rcx  ## imm = 0x38E38E39
	movq	%rcx, %rdx
	sarq	$33, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$63, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rdi,%rsi), %eax
	movl	%eax, %esi
	movq	%rsp, %rdi
	movq	%rdi, -80(%rbp)
	leaq	(%rsi,%rsi,4), %rdi
	leaq	15(%rdi,%rdi), %rdi
	movabsq	$137438953456, %r8      ## imm = 0x1FFFFFFFF0
	andq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rsi, -208(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-208(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -88(%rbp)
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
LBB5_19:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_21 Depth 2
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	LBB5_26
## %bb.20:                              ##   in Loop: Header=BB5_19 Depth=1
	movl	$0, -100(%rbp)
LBB5_21:                                ##   Parent Loop BB5_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$10, -100(%rbp)
	jge	LBB5_24
## %bb.22:                              ##   in Loop: Header=BB5_21 Depth=2
	movslq	-96(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movslq	-100(%rbp), %rax
	movb	$0, (%rcx,%rax)
## %bb.23:                              ##   in Loop: Header=BB5_21 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB5_21
LBB5_24:                                ##   in Loop: Header=BB5_19 Depth=1
	jmp	LBB5_25
LBB5_25:                                ##   in Loop: Header=BB5_19 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	LBB5_19
LBB5_26:
	movl	-44(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	imulq	$954437177, %rcx, %rcx  ## imm = 0x38E38E39
	movq	%rcx, %rdx
	sarq	$33, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$63, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rdi,%rsi), %eax
	movl	%eax, %esi
	leaq	(%rsi,%rsi,4), %rdi
	leaq	15(%rdi,%rdi), %rdi
	movabsq	$137438953456, %r8      ## imm = 0x1FFFFFFFF0
	andq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rsi, -224(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-224(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -112(%rbp)
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	$0, -120(%rbp)
LBB5_27:                                ## =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	LBB5_33
## %bb.28:                              ##   in Loop: Header=BB5_27 Depth=1
	movl	-120(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	LBB5_30
## %bb.29:                              ##   in Loop: Header=BB5_27 Depth=1
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-120(%rbp), %rsi
	imulq	$10, %rsi, %rsi
	movq	-232(%rbp), %rdi        ## 8-byte Reload
	addq	%rsi, %rdi
	movq	-24(%rbp), %rsi
	movslq	-44(%rbp), %r8
	addq	%r8, %rsi
	movl	-120(%rbp), %eax
	addl	$1, %eax
	imull	$9, %eax, %eax
	movslq	%eax, %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	$9, %edx
	callq	___strncpy_chk
	movslq	-120(%rbp), %rcx
	imulq	$10, %rcx, %rcx
	movq	-232(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 9(%rdx)
	jmp	LBB5_31
LBB5_30:                                ##   in Loop: Header=BB5_27 Depth=1
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cltd
	movl	$9, %esi
	idivl	%esi
	movslq	%eax, %rdi
	imulq	$10, %rdi, %rdi
	movq	-232(%rbp), %r8         ## 8-byte Reload
	addq	%rdi, %r8
	movq	-24(%rbp), %rsi
	movq	%r8, %rdi
	movl	$9, %r8d
	movq	%r8, %rdx
	callq	___strncpy_chk
	movl	-116(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rcx
	imulq	$10, %rcx, %rcx
	movq	-232(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movl	-44(%rbp), %r9d
	movl	-116(%rbp), %r10d
	subl	$1, %r10d
	imull	$9, %r10d, %r10d
	subl	%r10d, %r9d
	movslq	%r9d, %rcx
	movb	$0, (%rdx,%rcx)
LBB5_31:                                ##   in Loop: Header=BB5_27 Depth=1
	jmp	LBB5_32
LBB5_32:                                ##   in Loop: Header=BB5_27 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	LBB5_27
LBB5_33:
	movl	-48(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	imulq	$954437177, %rcx, %rcx  ## imm = 0x38E38E39
	movq	%rcx, %rdx
	sarq	$33, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$63, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rdi,%rsi), %eax
	movl	%eax, %esi
	leaq	(%rsi,%rsi,4), %rdi
	leaq	15(%rdi,%rdi), %rdi
	movabsq	$137438953456, %r8      ## imm = 0x1FFFFFFFF0
	andq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rsi, -240(%rbp)        ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-240(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -128(%rbp)
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$9, %ecx
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	$0, -136(%rbp)
LBB5_34:                                ## =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	LBB5_40
## %bb.35:                              ##   in Loop: Header=BB5_34 Depth=1
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	LBB5_37
## %bb.36:                              ##   in Loop: Header=BB5_34 Depth=1
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-136(%rbp), %rsi
	imulq	$10, %rsi, %rsi
	movq	-248(%rbp), %rdi        ## 8-byte Reload
	addq	%rsi, %rdi
	movq	-32(%rbp), %rsi
	movslq	-48(%rbp), %r8
	addq	%r8, %rsi
	movl	-136(%rbp), %eax
	addl	$1, %eax
	imull	$9, %eax, %eax
	movslq	%eax, %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	$9, %edx
	callq	___strncpy_chk
	movslq	-136(%rbp), %rcx
	imulq	$10, %rcx, %rcx
	movq	-248(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movb	$0, 9(%rdx)
	jmp	LBB5_38
LBB5_37:                                ##   in Loop: Header=BB5_34 Depth=1
	movq	$-1, %rcx
	movl	-48(%rbp), %eax
	subl	$1, %eax
	cltd
	movl	$9, %esi
	idivl	%esi
	movslq	%eax, %rdi
	imulq	$10, %rdi, %rdi
	movq	-248(%rbp), %r8         ## 8-byte Reload
	addq	%rdi, %r8
	movq	-32(%rbp), %rsi
	movq	%r8, %rdi
	movl	$9, %r8d
	movq	%r8, %rdx
	callq	___strncpy_chk
	movl	-132(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rcx
	imulq	$10, %rcx, %rcx
	movq	-248(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	movl	-48(%rbp), %r9d
	movl	-132(%rbp), %r10d
	subl	$1, %r10d
	imull	$9, %r10d, %r10d
	subl	%r10d, %r9d
	movslq	%r9d, %rcx
	movb	$0, (%rdx,%rcx)
LBB5_38:                                ##   in Loop: Header=BB5_34 Depth=1
	jmp	LBB5_39
LBB5_39:                                ##   in Loop: Header=BB5_34 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	LBB5_34
LBB5_40:
	movq	$0, -144(%rbp)
	movl	$0, -156(%rbp)
LBB5_41:                                ## =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	LBB5_54
## %bb.42:                              ##   in Loop: Header=BB5_41 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -144(%rbp)
	movl	-156(%rbp), %ecx
	cmpl	-116(%rbp), %ecx
	jl	LBB5_45
## %bb.43:                              ##   in Loop: Header=BB5_41 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	LBB5_45
## %bb.44:                              ##   in Loop: Header=BB5_41 Depth=1
	movq	-152(%rbp), %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)
	jmp	LBB5_52
LBB5_45:                                ##   in Loop: Header=BB5_41 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	LBB5_47
## %bb.46:                              ##   in Loop: Header=BB5_41 Depth=1
	movslq	-156(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-248(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	jmp	LBB5_51
LBB5_47:                                ##   in Loop: Header=BB5_41 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	LBB5_49
## %bb.48:                              ##   in Loop: Header=BB5_41 Depth=1
	movslq	-156(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-232(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	jmp	LBB5_50
LBB5_49:                                ##   in Loop: Header=BB5_41 Depth=1
	movslq	-156(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-232(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movslq	%eax, %rcx
	movslq	-156(%rbp), %rdx
	imulq	$10, %rdx, %rdx
	movq	-248(%rbp), %rsi        ## 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rcx, -256(%rbp)        ## 8-byte Spill
	callq	_atoi
	movslq	%eax, %rcx
	movq	-256(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	addq	-152(%rbp), %rdx
	movq	%rdx, -152(%rbp)
LBB5_50:                                ##   in Loop: Header=BB5_41 Depth=1
	jmp	LBB5_51
LBB5_51:                                ##   in Loop: Header=BB5_41 Depth=1
	jmp	LBB5_52
LBB5_52:                                ##   in Loop: Header=BB5_41 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-152(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdx, -264(%rbp)        ## 8-byte Spill
	movl	%ecx, %edx
	movl	$1000000000, %edi       ## imm = 0x3B9ACA00
	divq	%rdi
	movq	%rax, -144(%rbp)
	movslq	-156(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %r8         ## 8-byte Reload
	addq	%rax, %r8
	movq	-152(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	movq	%r8, %rdi
	movq	-264(%rbp), %r8         ## 8-byte Reload
	movq	%rdx, -272(%rbp)        ## 8-byte Spill
	movq	%r8, %rdx
	leaq	L_.str.7(%rip), %rcx
	movq	-272(%rbp), %r8         ## 8-byte Reload
	movb	$0, %al
	callq	___sprintf_chk
## %bb.53:                              ##   in Loop: Header=BB5_41 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	LBB5_41
LBB5_54:
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$10, %rcx, %rcx
	movq	-216(%rbp), %rdx        ## 8-byte Reload
	addq	%rcx, %rdx
	leaq	L_.str.3(%rip), %rdi
	movq	%rdx, %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_56
## %bb.55:
	movq	$-1, %rdx
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$10, %rcx, %rcx
	movq	-216(%rbp), %rsi        ## 8-byte Reload
	addq	%rcx, %rsi
	movq	%rsi, %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
LBB5_56:
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -172(%rbp)
LBB5_57:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_68 Depth 2
	cmpl	$0, -172(%rbp)
	jl	LBB5_75
## %bb.58:                              ##   in Loop: Header=BB5_57 Depth=1
	movslq	-172(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	leaq	L_.str(%rip), %rsi
	movq	%rcx, %rdi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_61
## %bb.59:                              ##   in Loop: Header=BB5_57 Depth=1
	cmpl	$0, -164(%rbp)
	jne	LBB5_61
## %bb.60:                              ##   in Loop: Header=BB5_57 Depth=1
	jmp	LBB5_74
LBB5_61:                                ##   in Loop: Header=BB5_57 Depth=1
	cmpl	$0, -164(%rbp)
	jne	LBB5_63
## %bb.62:                              ##   in Loop: Header=BB5_57 Depth=1
	movl	-172(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	$1, -164(%rbp)
LBB5_63:                                ##   in Loop: Header=BB5_57 Depth=1
	movslq	-172(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	cmpl	$100000000, %eax        ## imm = 0x5F5E100
	jge	LBB5_73
## %bb.64:                              ##   in Loop: Header=BB5_57 Depth=1
	movl	-172(%rbp), %eax
	cmpl	-168(%rbp), %eax
	je	LBB5_73
## %bb.65:                              ##   in Loop: Header=BB5_57 Depth=1
	movslq	-172(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	leaq	L_.str(%rip), %rsi
	movq	%rcx, %rdi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_67
## %bb.66:                              ##   in Loop: Header=BB5_57 Depth=1
	movq	$-1, %rdx
	movq	-64(%rbp), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	___strcat_chk
	jmp	LBB5_72
LBB5_67:                                ##   in Loop: Header=BB5_57 Depth=1
	movslq	-172(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_atoi
	movsd	LCPI5_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	_log10
	cvttsd2si	%xmm0, %eax
	movl	%eax, -160(%rbp)
	movl	$0, -176(%rbp)
LBB5_68:                                ##   Parent Loop BB5_57 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-176(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	LBB5_71
## %bb.69:                              ##   in Loop: Header=BB5_68 Depth=2
	movq	$-1, %rdx
	movq	-64(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcat_chk
## %bb.70:                              ##   in Loop: Header=BB5_68 Depth=2
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	LBB5_68
LBB5_71:                                ##   in Loop: Header=BB5_57 Depth=1
	jmp	LBB5_72
LBB5_72:                                ##   in Loop: Header=BB5_57 Depth=1
	jmp	LBB5_73
LBB5_73:                                ##   in Loop: Header=BB5_57 Depth=1
	movq	$-1, %rdx
	movq	-64(%rbp), %rdi
	movslq	-172(%rbp), %rax
	imulq	$10, %rax, %rax
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rsi
	callq	___strcat_chk
LBB5_74:                                ##   in Loop: Header=BB5_57 Depth=1
	movl	-172(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -172(%rbp)
	jmp	LBB5_57
LBB5_75:
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	LBB5_77
## %bb.76:
	movq	$-1, %rdx
	movq	-64(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
LBB5_77:
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	___strcpy_chk
	movq	-64(%rbp), %rdi
	movq	%rax, -280(%rbp)        ## 8-byte Spill
	callq	_free
	movq	-80(%rbp), %rax
	movq	%rax, %rsp
LBB5_78:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB5_80
## %bb.79:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB5_80:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function synthPrint
LCPI6_0:
	.quad	4611686018427387904     ## double 2
LCPI6_1:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_synthPrint
	.p2align	4, 0x90
_synthPrint:                            ## @synthPrint
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              ## imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB6_2
## %bb.1:
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str.12(%rip), %rsi
	movl	%eax, -212(%rbp)        ## 4-byte Spill
	callq	___strcpy_chk
	movl	$1, -4(%rbp)
	jmp	LBB6_92
LBB6_2:
	movq	-24(%rbp), %rdi
	callq	_strlen
	subq	$1, %rax
	shrq	$2, %rax
	addq	$1, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
	movl	$0, -52(%rbp)
LBB6_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_5 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_12
## %bb.4:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	$13, %edi
	callq	_malloc
	movq	-40(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	-40(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movb	$0, (%rax)
	movq	$0, -48(%rbp)
	movl	$0, -56(%rbp)
LBB6_5:                                 ##   Parent Loop BB6_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$4, -56(%rbp)
	jge	LBB6_10
## %bb.6:                               ##   in Loop: Header=BB6_5 Depth=2
	movq	-48(%rbp), %rax
	shlq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	subl	-56(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-224(%rbp), %rdx        ## 8-byte Reload
	cmpq	%rax, %rdx
	jae	LBB6_8
## %bb.7:                               ##   in Loop: Header=BB6_5 Depth=2
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	subl	-56(%rbp), %ecx
	movslq	%ecx, %rdx
	movsbq	(%rax,%rdx), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
LBB6_8:                                 ##   in Loop: Header=BB6_5 Depth=2
	jmp	LBB6_9
LBB6_9:                                 ##   in Loop: Header=BB6_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB6_5
LBB6_10:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-40(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-48(%rbp), %r8
	leaq	L_.str.13(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-40(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movb	$0, 12(%rcx)
## %bb.11:                              ##   in Loop: Header=BB6_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB6_3
LBB6_12:
	leaq	L_.str.14(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movsd	LCPI6_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI6_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	movsd	%xmm0, -232(%rbp)       ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movl	%eax, -236(%rbp)        ## 4-byte Spill
	movsd	%xmm1, -248(%rbp)       ## 8-byte Spill
	callq	_log10
	movsd	-248(%rbp), %xmm1       ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-232(%rbp), %xmm2       ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rcx
	shlq	$0, %rcx
	movslq	-60(%rbp), %rdx
	imulq	%rdx, %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -72(%rbp)
	movslq	-28(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
LBB6_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_15 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_37
## %bb.14:                              ##   in Loop: Header=BB6_13 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$3, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	-80(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movl	$0, -88(%rbp)
LBB6_15:                                ##   Parent Loop BB6_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB6_33
## %bb.16:                              ##   in Loop: Header=BB6_15 Depth=2
	movl	-88(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	LBB6_18
## %bb.17:                              ##   in Loop: Header=BB6_15 Depth=2
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	-80(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-88(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	jmp	LBB6_19
LBB6_18:                                ##   in Loop: Header=BB6_15 Depth=2
	movl	-60(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	-80(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-88(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
LBB6_19:                                ##   in Loop: Header=BB6_15 Depth=2
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-88(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movb	$0, (%rax)
	movl	-88(%rbp), %edx
	cmpl	-28(%rbp), %edx
	jne	LBB6_21
## %bb.20:                              ##   in Loop: Header=BB6_15 Depth=2
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-88(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-40(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	___strcpy_chk
	jmp	LBB6_31
LBB6_21:                                ##   in Loop: Header=BB6_15 Depth=2
	cmpl	$0, -88(%rbp)
	jne	LBB6_23
## %bb.22:                              ##   in Loop: Header=BB6_15 Depth=2
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-88(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	___strcpy_chk
	jmp	LBB6_30
LBB6_23:                                ##   in Loop: Header=BB6_15 Depth=2
	cmpl	$0, -84(%rbp)
	jne	LBB6_25
## %bb.24:                              ##   in Loop: Header=BB6_15 Depth=2
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-88(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
	jmp	LBB6_29
LBB6_25:                                ##   in Loop: Header=BB6_15 Depth=2
	cmpl	$1, -88(%rbp)
	jne	LBB6_27
## %bb.26:                              ##   in Loop: Header=BB6_15 Depth=2
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-88(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	-84(%rbp), %r8d
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	jmp	LBB6_28
LBB6_27:                                ##   in Loop: Header=BB6_15 Depth=2
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-88(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-88(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rdx
	callq	_synthMult
LBB6_28:                                ##   in Loop: Header=BB6_15 Depth=2
	jmp	LBB6_29
LBB6_29:                                ##   in Loop: Header=BB6_15 Depth=2
	jmp	LBB6_30
LBB6_30:                                ##   in Loop: Header=BB6_15 Depth=2
	jmp	LBB6_31
LBB6_31:                                ##   in Loop: Header=BB6_15 Depth=2
	jmp	LBB6_32
LBB6_32:                                ##   in Loop: Header=BB6_15 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	LBB6_15
LBB6_33:                                ##   in Loop: Header=BB6_13 Depth=1
	movl	-84(%rbp), %eax
	cltd
	movl	$5, %ecx
	idivl	%ecx
	cmpl	$4, %edx
	jne	LBB6_35
## %bb.34:                              ##   in Loop: Header=BB6_13 Depth=1
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_35:                                ##   in Loop: Header=BB6_13 Depth=1
	jmp	LBB6_36
LBB6_36:                                ##   in Loop: Header=BB6_13 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB6_13
LBB6_37:
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$0, %rdx
	movq	%rdx, %rdi
	movl	%eax, -252(%rbp)        ## 4-byte Spill
	callq	_malloc
	movq	%rax, -96(%rbp)
	movslq	-60(%rbp), %rax
	shlq	$0, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
LBB6_38:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_40 Depth 2
                                        ##       Child Loop BB6_44 Depth 3
	movl	-108(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB6_53
## %bb.39:                              ##   in Loop: Header=BB6_38 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
LBB6_40:                                ##   Parent Loop BB6_38 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_44 Depth 3
	movl	-112(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_49
## %bb.41:                              ##   in Loop: Header=BB6_40 Depth=2
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-80(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthDiv
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthMult
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB6_43
## %bb.42:
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -4(%rbp)
	jmp	LBB6_92
LBB6_43:                                ##   in Loop: Header=BB6_40 Depth=2
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
	movl	-108(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -116(%rbp)
LBB6_44:                                ##   Parent Loop BB6_38 Depth=1
                                        ##     Parent Loop BB6_40 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB6_47
## %bb.45:                              ##   in Loop: Header=BB6_44 Depth=3
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-116(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthMult
	movq	-80(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-116(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-80(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-116(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-104(%rbp), %rdx
	callq	_synthSub
## %bb.46:                              ##   in Loop: Header=BB6_44 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB6_44
LBB6_47:                                ##   in Loop: Header=BB6_40 Depth=2
	jmp	LBB6_48
LBB6_48:                                ##   in Loop: Header=BB6_40 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	LBB6_40
LBB6_49:                                ##   in Loop: Header=BB6_38 Depth=1
	movl	-108(%rbp), %eax
	cltd
	movl	$5, %ecx
	idivl	%ecx
	cmpl	$4, %edx
	jne	LBB6_51
## %bb.50:                              ##   in Loop: Header=BB6_38 Depth=1
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_51:                                ##   in Loop: Header=BB6_38 Depth=1
	jmp	LBB6_52
LBB6_52:                                ##   in Loop: Header=BB6_38 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	LBB6_38
LBB6_53:
	movslq	-60(%rbp), %rax
	shlq	$0, %rax
	shlq	$1, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	___strcpy_chk
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -132(%rbp)
LBB6_54:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_56 Depth 2
	cmpl	$0, -132(%rbp)
	jl	LBB6_65
## %bb.55:                              ##   in Loop: Header=BB6_54 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
LBB6_56:                                ##   Parent Loop BB6_54 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB6_63
## %bb.57:                              ##   in Loop: Header=BB6_56 Depth=2
	cmpl	$0, -132(%rbp)
	jne	LBB6_61
## %bb.58:                              ##   in Loop: Header=BB6_56 Depth=2
	cmpl	$1, -136(%rbp)
	jle	LBB6_61
## %bb.59:                              ##   in Loop: Header=BB6_56 Depth=2
	movl	-136(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_61
## %bb.60:                              ##   in Loop: Header=BB6_56 Depth=2
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-136(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
LBB6_61:                                ##   in Loop: Header=BB6_56 Depth=2
	movq	-80(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-136(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-80(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-136(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-128(%rbp), %rdx
	callq	_synthMult
## %bb.62:                              ##   in Loop: Header=BB6_56 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	LBB6_56
LBB6_63:                                ##   in Loop: Header=BB6_54 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-104(%rbp), %rdi
	movl	-132(%rbp), %r8d
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-128(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	%eax, -256(%rbp)        ## 4-byte Spill
	callq	_synthMult
## %bb.64:                              ##   in Loop: Header=BB6_54 Depth=1
	movl	-132(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -132(%rbp)
	jmp	LBB6_54
LBB6_65:
	leaq	L_.str.18(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-60(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	shlq	$0, %rdx
	movslq	-60(%rbp), %rsi
	imulq	%rsi, %rdx
	movq	%rdx, %rdi
	movl	%eax, -260(%rbp)        ## 4-byte Spill
	callq	_malloc
	movq	%rax, -144(%rbp)
	movl	-60(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rax
	shlq	$0, %rax
	movslq	-60(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -152(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$1, %rax
	movslq	-60(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -160(%rbp)
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -164(%rbp)
LBB6_66:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_68 Depth 2
	cmpl	$1, -164(%rbp)
	jl	LBB6_75
## %bb.67:                              ##   in Loop: Header=BB6_66 Depth=1
	movl	-164(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -168(%rbp)
LBB6_68:                                ##   Parent Loop BB6_66 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$1, -168(%rbp)
	jl	LBB6_71
## %bb.69:                              ##   in Loop: Header=BB6_68 Depth=2
	movq	-144(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthMult
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-80(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthMult
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	_synthSub
	movq	-72(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthAdd
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-80(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	callq	_synthDiv
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movslq	-168(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
## %bb.70:                              ##   in Loop: Header=BB6_68 Depth=2
	movl	-168(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -168(%rbp)
	jmp	LBB6_68
LBB6_71:                                ##   in Loop: Header=BB6_66 Depth=1
	movl	-164(%rbp), %eax
	cltd
	movl	$5, %ecx
	idivl	%ecx
	cmpl	$4, %edx
	jne	LBB6_73
## %bb.72:                              ##   in Loop: Header=BB6_66 Depth=1
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_73:                                ##   in Loop: Header=BB6_66 Depth=1
	jmp	LBB6_74
LBB6_74:                                ##   in Loop: Header=BB6_66 Depth=1
	movl	-164(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -164(%rbp)
	jmp	LBB6_66
LBB6_75:
	movslq	-28(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -176(%rbp)
	movl	$0, -180(%rbp)
LBB6_76:                                ## =>This Inner Loop Header: Depth=1
	movl	-180(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_79
## %bb.77:                              ##   in Loop: Header=BB6_76 Depth=1
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	imull	$5, %eax, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	-176(%rbp), %rcx
	movslq	-180(%rbp), %rsi
	movq	%rax, (%rcx,%rsi,8)
	movq	-176(%rbp), %rax
	movslq	-180(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
## %bb.78:                              ##   in Loop: Header=BB6_76 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	LBB6_76
LBB6_79:
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	imull	$5, %eax, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -192(%rbp)
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	$-1, %rdx
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	___strcpy_chk
	movq	-200(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movl	$0, (%rcx,%rdx,4)
	leaq	L_.str.19(%rip), %rdi
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	movb	$0, %al
	callq	_printf
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str.20(%rip), %rsi
	movl	%eax, -276(%rbp)        ## 4-byte Spill
	callq	___strcpy_chk
	movl	-28(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -204(%rbp)
LBB6_80:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_82 Depth 2
	cmpl	$0, -204(%rbp)
	jl	LBB6_91
## %bb.81:                              ##   in Loop: Header=BB6_80 Depth=1
	movl	$0, -208(%rbp)
LBB6_82:                                ##   Parent Loop BB6_80 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB6_85
## %bb.83:                              ##   in Loop: Header=BB6_82 Depth=2
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-192(%rbp), %rdi
	movl	-208(%rbp), %r8d
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-192(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	%eax, -280(%rbp)        ## 4-byte Spill
	callq	_synthPow
	movq	-192(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movslq	-204(%rbp), %r9
	movq	(%rcx,%r9,8), %rcx
	movslq	-28(%rbp), %r9
	movq	(%rcx,%r9,8), %rdx
	callq	_synthMult
	movq	-176(%rbp), %rcx
	movslq	-208(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	-176(%rbp), %rcx
	movslq	-208(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	-192(%rbp), %rdx
	callq	_synthAdd
## %bb.84:                              ##   in Loop: Header=BB6_82 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	LBB6_82
LBB6_85:                                ##   in Loop: Header=BB6_80 Depth=1
	movq	-80(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movl	-204(%rbp), %edx
	leaq	L_.str.21(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movslq	-204(%rbp), %r8
	movq	(%rcx,%r8,8), %rcx
	movslq	-28(%rbp), %r8
	movq	(%rcx,%r8,8), %r8
	movl	-204(%rbp), %r9d
	leaq	L_.str.21(%rip), %rcx
	movl	%eax, -284(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	___sprintf_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	%eax, -288(%rbp)        ## 4-byte Spill
	callq	___strcat_chk
	cmpl	$0, -204(%rbp)
	je	LBB6_89
## %bb.86:                              ##   in Loop: Header=BB6_80 Depth=1
	movq	-80(%rbp), %rax
	movl	-204(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-28(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	LBB6_88
## %bb.87:                              ##   in Loop: Header=BB6_80 Depth=1
	leaq	L_.str.22(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str.22(%rip), %rsi
	movl	%eax, -292(%rbp)        ## 4-byte Spill
	callq	___strcat_chk
LBB6_88:                                ##   in Loop: Header=BB6_80 Depth=1
	jmp	LBB6_89
LBB6_89:                                ##   in Loop: Header=BB6_80 Depth=1
	jmp	LBB6_90
LBB6_90:                                ##   in Loop: Header=BB6_80 Depth=1
	movl	-204(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB6_80
LBB6_91:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	leaq	L_.str.23(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %r8
	leaq	L_.str.24(%rip), %rcx
	movl	%eax, -296(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	___sprintf_chk
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	%eax, -300(%rbp)        ## 4-byte Spill
	callq	___strcat_chk
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -312(%rbp)        ## 8-byte Spill
	callq	_free
	movq	-72(%rbp), %rdi
	callq	_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-96(%rbp), %rdi
	callq	_free
	movq	-104(%rbp), %rdi
	callq	_free
	movq	-144(%rbp), %rdi
	callq	_free
	movq	-152(%rbp), %rdi
	callq	_free
	movq	-160(%rbp), %rdi
	callq	_free
	movq	-128(%rbp), %rdi
	callq	_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-192(%rbp), %rdi
	callq	_free
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movl	$0, -4(%rbp)
LBB6_92:
	movl	-4(%rbp), %eax
	addq	$320, %rsp              ## imm = 0x140
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_evaluatePoly           ## -- Begin function evaluatePoly
	.p2align	4, 0x90
_evaluatePoly:                          ## @evaluatePoly
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              ## imm = 0x110
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	shlq	$0, %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	shlq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_strlen
	shlq	$1, %rax
	addq	$1, %rax
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jae	LBB7_4
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	$0, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB7_1
LBB7_4:
	movq	$-1, %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	___strcpy_chk
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movl	$0, -52(%rbp)
LBB7_5:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jae	LBB7_10
## %bb.6:                               ##   in Loop: Header=BB7_5 Depth=1
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$47, %edx
	jne	LBB7_8
## %bb.7:
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	jmp	LBB7_10
LBB7_8:                                 ##   in Loop: Header=BB7_5 Depth=1
	jmp	LBB7_9
LBB7_9:                                 ##   in Loop: Header=BB7_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB7_5
LBB7_10:
	movq	-16(%rbp), %rdi
	callq	_strlen
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$45, %edx
	je	LBB7_12
## %bb.11:
	movl	$1, -76(%rbp)
	jmp	LBB7_13
LBB7_12:
	movl	$0, -76(%rbp)
LBB7_13:
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
LBB7_14:                                ## =>This Inner Loop Header: Depth=1
	movslq	-84(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	callq	_strlen
	addq	$1, %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rax, %rcx
	jae	LBB7_29
## %bb.15:                              ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$45, %edx
	jne	LBB7_17
## %bb.16:                              ##   in Loop: Header=BB7_14 Depth=1
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	leaq	L_.str.25(%rip), %rsi
	callq	___strcat_chk
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	movq	%rcx, -192(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-192(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	addq	$-1, %rcx
	movq	-64(%rbp), %rax
	movslq	-76(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movl	-76(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -76(%rbp)
	jmp	LBB7_28
LBB7_17:                                ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$43, %edx
	jne	LBB7_19
## %bb.18:                              ##   in Loop: Header=BB7_14 Depth=1
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	leaq	L_.str.26(%rip), %rsi
	callq	___strcat_chk
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	movq	%rcx, -208(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-208(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movslq	-76(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movl	-76(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -76(%rbp)
	jmp	LBB7_28
LBB7_19:                                ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$42, %edx
	je	LBB7_22
## %bb.20:                              ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$120, %edx
	je	LBB7_22
## %bb.21:                              ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$40, %edx
	jne	LBB7_23
LBB7_22:                                ##   in Loop: Header=BB7_14 Depth=1
	jmp	LBB7_28
LBB7_23:                                ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$94, %edx
	jne	LBB7_25
## %bb.24:                              ##   in Loop: Header=BB7_14 Depth=1
	movq	$-1, %rdx
	movq	-32(%rbp), %rdi
	leaq	L_.str.26(%rip), %rsi
	callq	___strcat_chk
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	movq	%rcx, -224(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-224(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movslq	-80(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movl	-80(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -80(%rbp)
	jmp	LBB7_28
LBB7_25:                                ##   in Loop: Header=BB7_14 Depth=1
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$41, %edx
	jne	LBB7_27
## %bb.26:
	jmp	LBB7_29
LBB7_27:                                ##   in Loop: Header=BB7_14 Depth=1
	movq	$-1, %rcx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$1, %edx
	callq	___strncat_chk
LBB7_28:                                ##   in Loop: Header=BB7_14 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB7_14
LBB7_29:
	movq	-32(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -88(%rbp)
	movl	$0, -92(%rbp)
LBB7_30:                                ## =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	LBB7_35
## %bb.31:                              ##   in Loop: Header=BB7_30 Depth=1
	movq	-32(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$32, %edx
	jne	LBB7_33
## %bb.32:                              ##   in Loop: Header=BB7_30 Depth=1
	movq	-32(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movb	$0, (%rax,%rcx)
LBB7_33:                                ##   in Loop: Header=BB7_30 Depth=1
	jmp	LBB7_34
LBB7_34:                                ##   in Loop: Header=BB7_30 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	LBB7_30
LBB7_35:
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -120(%rbp)
	movl	-76(%rbp), %ecx
	incl	%ecx
	movl	%ecx, %eax
	movq	%rsp, %rdx
	movq	%rdx, -128(%rbp)
	leaq	15(,%rax,4), %rdx
	andq	$-16, %rdx
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	movq	%rdx, %rax
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-232(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -136(%rbp)
	movslq	-76(%rbp), %rsi
	movl	$0, (%rax,%rsi,4)
	movl	$0, -140(%rbp)
	movq	%rax, -240(%rbp)        ## 8-byte Spill
LBB7_36:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_38 Depth 2
	movl	-140(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	LBB7_43
## %bb.37:                              ##   in Loop: Header=BB7_36 Depth=1
	movq	$-1, %rdx
	movq	-104(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	___strcpy_chk
	movl	$0, -144(%rbp)
LBB7_38:                                ##   Parent Loop BB7_36 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-144(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	LBB7_41
## %bb.39:                              ##   in Loop: Header=BB7_38 Depth=2
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	-112(%rbp), %rdi
	movl	-140(%rbp), %r8d
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-112(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movslq	-144(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rdi, -248(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -252(%rbp)        ## 4-byte Spill
	movq	%rsi, -264(%rbp)        ## 8-byte Spill
	callq	_atoi
	movq	-248(%rbp), %rdi        ## 8-byte Reload
	movq	-264(%rbp), %rsi        ## 8-byte Reload
	movl	%eax, %edx
	callq	_synthPow
	movq	-112(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movslq	-144(%rbp), %r9
	movq	(%rcx,%r9,8), %rdx
	callq	_synthMult
	movq	-104(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	_synthAdd
## %bb.40:                              ##   in Loop: Header=BB7_38 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	LBB7_38
LBB7_41:                                ##   in Loop: Header=BB7_36 Depth=1
	movq	-104(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	_synthDiv
	movq	-104(%rbp), %rdi
	callq	_atoi
	movslq	-140(%rbp), %rcx
	movq	-240(%rbp), %rdx        ## 8-byte Reload
	movl	%eax, (%rdx,%rcx,4)
## %bb.42:                              ##   in Loop: Header=BB7_36 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	LBB7_36
LBB7_43:
	movq	-240(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rsi
	leaq	L_.str.27(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB7_45
## %bb.44:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB7_45:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$500, -28(%rbp)         ## imm = 0x1F4
	leaq	L_.str.28(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpl	$1, -8(%rbp)
	jne	LBB8_2
## %bb.1:
	leaq	L_.str.29(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-40(%rbp), %rdi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_evaluatePoly
	leaq	L_.str.30(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -4(%rbp)
	jmp	LBB8_5
LBB8_2:
	cmpl	$2, -8(%rbp)
	jne	LBB8_4
## %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_strlen
	shrq	$2, %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_strlen
	addq	$9, %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	imulq	%rax, %rcx
	imulq	$10, %rcx, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_synthPrint
	movq	-40(%rbp), %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_evaluatePoly
	movl	$0, -4(%rbp)
	jmp	LBB8_5
LBB8_4:
	leaq	L_.str.31(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, -4(%rbp)
LBB8_5:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0"

L_.str.1:                               ## @.str.1
	.asciz	"\nCannot Divide by 0\n"

L_.str.2:                               ## @.str.2
	.asciz	"-"

L_.str.3:                               ## @.str.3
	.space	1

L_.str.4:                               ## @.str.4
	.asciz	"10"

L_.str.5:                               ## @.str.5
	.asciz	"%d"

L_.str.6:                               ## @.str.6
	.asciz	"1"

L_.str.7:                               ## @.str.7
	.asciz	"%llu"

L_.str.8:                               ## @.str.8
	.asciz	"999999999"

L_.str.9:                               ## @.str.9
	.asciz	"00000000"

L_.str.10:                              ## @.str.10
	.asciz	"000"

L_.str.11:                              ## @.str.11
	.asciz	"Please give synthPrint more than an empty string\n"

L_.str.12:                              ## @.str.12
	.asciz	"(0*x^0)/1"

L_.str.13:                              ## @.str.13
	.asciz	"%lld"

L_.str.14:                              ## @.str.14
	.asciz	"Calculating Vandermonde Matrix:"

L_.str.15:                              ## @.str.15
	.asciz	"."

L_.str.16:                              ## @.str.16
	.asciz	"\nPreforming Gaussian Elimination:"

L_.str.17:                              ## @.str.17
	.asciz	"Division resulted in non-integer division\n"

L_.str.18:                              ## @.str.18
	.asciz	"\nPreforming Backwards Substitution:"

L_.str.19:                              ## @.str.19
	.asciz	"\nFinal polynomial:\n\n("

L_.str.20:                              ## @.str.20
	.asciz	"("

L_.str.21:                              ## @.str.21
	.asciz	"%s*x^%d"

L_.str.22:                              ## @.str.22
	.asciz	"+"

L_.str.23:                              ## @.str.23
	.asciz	")/%s\n\n\n"

L_.str.24:                              ## @.str.24
	.asciz	")/%s"

L_.str.25:                              ## @.str.25
	.asciz	" -"

L_.str.26:                              ## @.str.26
	.asciz	" "

L_.str.27:                              ## @.str.27
	.asciz	"Evaluation: %s\n"

L_.str.28:                              ## @.str.28
	.asciz	"(-231141499234927*x^19+41554173858361399*x^18-3462368741427304200*x^17+177467792699570622726*x^16-6263128643183892175290*x^15+161403835784721303137298*x^14-3143127942378482927353420*x^13+47215657394540875385877472*x^12-553628276823359788916800623*x^11+5094369839393912516827143327*x^10-36787216989583880294994360660*x^9+207398433530047226694542261778*x^8-903162746119513927453859608576*x^7+2985076636639063120952048227456*x^6-7288577265343427251438848016320*x^5+12609957441921499132559970501024*x^4-14443930072042563802418261731584*x^3+9671759205616941083588795051520*x^2-2806180535751299758783336550400*x^1+66116150357502642388992000*x^0)/121645100408832000"

L_.str.29:                              ## @.str.29
	.asciz	"\n"

L_.str.30:                              ## @.str.30
	.asciz	"\nIf you want to change the input at the terminal, add it as a second argument \"./synthPrint2.exe <string>\"\n\n"

L_.str.31:                              ## @.str.31
	.asciz	"You need to give less than 3 arguments\n"


.subsections_via_symbols
