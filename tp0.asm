
tp0:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000400710 <_init>:
  400710:	48 83 ec 08          	sub    $0x8,%rsp
  400714:	48 8b 05 dd 18 20 00 	mov    0x2018dd(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  40071b:	48 85 c0             	test   %rax,%rax
  40071e:	74 05                	je     400725 <_init+0x15>
  400720:	e8 eb 00 00 00       	callq  400810 <fwrite@plt+0x10>
  400725:	48 83 c4 08          	add    $0x8,%rsp
  400729:	c3                   	retq   

Desensamblado de la sección .plt:

0000000000400730 <__isoc99_fscanf@plt-0x10>:
  400730:	ff 35 d2 18 20 00    	pushq  0x2018d2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400736:	ff 25 d4 18 20 00    	jmpq   *0x2018d4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40073c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400740 <__isoc99_fscanf@plt>:
  400740:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400746:	68 00 00 00 00       	pushq  $0x0
  40074b:	e9 e0 ff ff ff       	jmpq   400730 <_init+0x20>

0000000000400750 <puts@plt>:
  400750:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400756:	68 01 00 00 00       	pushq  $0x1
  40075b:	e9 d0 ff ff ff       	jmpq   400730 <_init+0x20>

0000000000400760 <fclose@plt>:
  400760:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400766:	68 02 00 00 00       	pushq  $0x2
  40076b:	e9 c0 ff ff ff       	jmpq   400730 <_init+0x20>

0000000000400770 <strlen@plt>:
  400770:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400776:	68 03 00 00 00       	pushq  $0x3
  40077b:	e9 b0 ff ff ff       	jmpq   400730 <_init+0x20>

0000000000400780 <printf@plt>:
  400780:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400786:	68 04 00 00 00       	pushq  $0x4
  40078b:	e9 a0 ff ff ff       	jmpq   400730 <_init+0x20>

0000000000400790 <fputs@plt>:
  400790:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400796:	68 05 00 00 00       	pushq  $0x5
  40079b:	e9 90 ff ff ff       	jmpq   400730 <_init+0x20>

00000000004007a0 <fputc@plt>:
  4007a0:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4007a6:	68 06 00 00 00       	pushq  $0x6
  4007ab:	e9 80 ff ff ff       	jmpq   400730 <_init+0x20>

00000000004007b0 <__libc_start_main@plt>:
  4007b0:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4007b6:	68 07 00 00 00       	pushq  $0x7
  4007bb:	e9 70 ff ff ff       	jmpq   400730 <_init+0x20>

00000000004007c0 <strcmp@plt>:
  4007c0:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4007c6:	68 08 00 00 00       	pushq  $0x8
  4007cb:	e9 60 ff ff ff       	jmpq   400730 <_init+0x20>

00000000004007d0 <tolower@plt>:
  4007d0:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4007d6:	68 09 00 00 00       	pushq  $0x9
  4007db:	e9 50 ff ff ff       	jmpq   400730 <_init+0x20>

00000000004007e0 <fopen@plt>:
  4007e0:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4007e6:	68 0a 00 00 00       	pushq  $0xa
  4007eb:	e9 40 ff ff ff       	jmpq   400730 <_init+0x20>

00000000004007f0 <exit@plt>:
  4007f0:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  4007f6:	68 0b 00 00 00       	pushq  $0xb
  4007fb:	e9 30 ff ff ff       	jmpq   400730 <_init+0x20>

0000000000400800 <fwrite@plt>:
  400800:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400806:	68 0c 00 00 00       	pushq  $0xc
  40080b:	e9 20 ff ff ff       	jmpq   400730 <_init+0x20>

Desensamblado de la sección .plt.got:

0000000000400810 <.plt.got>:
  400810:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 601ff8 <_DYNAMIC+0x1d0>
  400816:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .text:

0000000000400820 <_start>:
  400820:	31 ed                	xor    %ebp,%ebp
  400822:	49 89 d1             	mov    %rdx,%r9
  400825:	5e                   	pop    %rsi
  400826:	48 89 e2             	mov    %rsp,%rdx
  400829:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40082d:	50                   	push   %rax
  40082e:	54                   	push   %rsp
  40082f:	49 c7 c0 10 0e 40 00 	mov    $0x400e10,%r8
  400836:	48 c7 c1 a0 0d 40 00 	mov    $0x400da0,%rcx
  40083d:	48 c7 c7 9b 0b 40 00 	mov    $0x400b9b,%rdi
  400844:	e8 67 ff ff ff       	callq  4007b0 <__libc_start_main@plt>
  400849:	f4                   	hlt    
  40084a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400850 <deregister_tm_clones>:
  400850:	b8 97 20 60 00       	mov    $0x602097,%eax
  400855:	55                   	push   %rbp
  400856:	48 2d 90 20 60 00    	sub    $0x602090,%rax
  40085c:	48 83 f8 0e          	cmp    $0xe,%rax
  400860:	48 89 e5             	mov    %rsp,%rbp
  400863:	76 1b                	jbe    400880 <deregister_tm_clones+0x30>
  400865:	b8 00 00 00 00       	mov    $0x0,%eax
  40086a:	48 85 c0             	test   %rax,%rax
  40086d:	74 11                	je     400880 <deregister_tm_clones+0x30>
  40086f:	5d                   	pop    %rbp
  400870:	bf 90 20 60 00       	mov    $0x602090,%edi
  400875:	ff e0                	jmpq   *%rax
  400877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40087e:	00 00 
  400880:	5d                   	pop    %rbp
  400881:	c3                   	retq   
  400882:	0f 1f 40 00          	nopl   0x0(%rax)
  400886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40088d:	00 00 00 

0000000000400890 <register_tm_clones>:
  400890:	be 90 20 60 00       	mov    $0x602090,%esi
  400895:	55                   	push   %rbp
  400896:	48 81 ee 90 20 60 00 	sub    $0x602090,%rsi
  40089d:	48 c1 fe 03          	sar    $0x3,%rsi
  4008a1:	48 89 e5             	mov    %rsp,%rbp
  4008a4:	48 89 f0             	mov    %rsi,%rax
  4008a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4008ab:	48 01 c6             	add    %rax,%rsi
  4008ae:	48 d1 fe             	sar    %rsi
  4008b1:	74 15                	je     4008c8 <register_tm_clones+0x38>
  4008b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b8:	48 85 c0             	test   %rax,%rax
  4008bb:	74 0b                	je     4008c8 <register_tm_clones+0x38>
  4008bd:	5d                   	pop    %rbp
  4008be:	bf 90 20 60 00       	mov    $0x602090,%edi
  4008c3:	ff e0                	jmpq   *%rax
  4008c5:	0f 1f 00             	nopl   (%rax)
  4008c8:	5d                   	pop    %rbp
  4008c9:	c3                   	retq   
  4008ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004008d0 <__do_global_dtors_aux>:
  4008d0:	80 3d f1 17 20 00 00 	cmpb   $0x0,0x2017f1(%rip)        # 6020c8 <completed.7585>
  4008d7:	75 11                	jne    4008ea <__do_global_dtors_aux+0x1a>
  4008d9:	55                   	push   %rbp
  4008da:	48 89 e5             	mov    %rsp,%rbp
  4008dd:	e8 6e ff ff ff       	callq  400850 <deregister_tm_clones>
  4008e2:	5d                   	pop    %rbp
  4008e3:	c6 05 de 17 20 00 01 	movb   $0x1,0x2017de(%rip)        # 6020c8 <completed.7585>
  4008ea:	f3 c3                	repz retq 
  4008ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008f0 <frame_dummy>:
  4008f0:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  4008f5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4008f9:	75 05                	jne    400900 <frame_dummy+0x10>
  4008fb:	eb 93                	jmp    400890 <register_tm_clones>
  4008fd:	0f 1f 00             	nopl   (%rax)
  400900:	b8 00 00 00 00       	mov    $0x0,%eax
  400905:	48 85 c0             	test   %rax,%rax
  400908:	74 f1                	je     4008fb <frame_dummy+0xb>
  40090a:	55                   	push   %rbp
  40090b:	48 89 e5             	mov    %rsp,%rbp
  40090e:	ff d0                	callq  *%rax
  400910:	5d                   	pop    %rbp
  400911:	e9 7a ff ff ff       	jmpq   400890 <register_tm_clones>

0000000000400916 <print_version>:
#include <ctype.h>

#define SUCCESS 0
#define VERSION "1.0"

void print_version() {
  400916:	55                   	push   %rbp
  400917:	48 89 e5             	mov    %rsp,%rbp
	printf("%s\n", VERSION);
  40091a:	bf 28 0e 40 00       	mov    $0x400e28,%edi
  40091f:	e8 2c fe ff ff       	callq  400750 <puts@plt>
}
  400924:	90                   	nop
  400925:	5d                   	pop    %rbp
  400926:	c3                   	retq   

0000000000400927 <print_usage>:


void print_usage() {
  400927:	55                   	push   %rbp
  400928:	48 89 e5             	mov    %rsp,%rbp
	printf("Usage:\n");
  40092b:	bf 2c 0e 40 00       	mov    $0x400e2c,%edi
  400930:	e8 1b fe ff ff       	callq  400750 <puts@plt>
	printf("\ttp0 -h\n");
  400935:	bf 33 0e 40 00       	mov    $0x400e33,%edi
  40093a:	e8 11 fe ff ff       	callq  400750 <puts@plt>
	printf("\ttp0 -V\n");
  40093f:	bf 3b 0e 40 00       	mov    $0x400e3b,%edi
  400944:	e8 07 fe ff ff       	callq  400750 <puts@plt>
	printf("\ttp0 [options]\n");
  400949:	bf 43 0e 40 00       	mov    $0x400e43,%edi
  40094e:	e8 fd fd ff ff       	callq  400750 <puts@plt>
	printf("Options:\n");
  400953:	bf 52 0e 40 00       	mov    $0x400e52,%edi
  400958:	e8 f3 fd ff ff       	callq  400750 <puts@plt>
	printf("\t-V, --version\tPrint version and quit.\n");
  40095d:	bf 60 0e 40 00       	mov    $0x400e60,%edi
  400962:	e8 e9 fd ff ff       	callq  400750 <puts@plt>
	printf("\t-h, --help\tPrint this information.\n");
  400967:	bf 88 0e 40 00       	mov    $0x400e88,%edi
  40096c:	e8 df fd ff ff       	callq  400750 <puts@plt>
	printf("\t-i, --input\tLocation of the input file.\n");
  400971:	bf b0 0e 40 00       	mov    $0x400eb0,%edi
  400976:	e8 d5 fd ff ff       	callq  400750 <puts@plt>
	printf("\t-o, --output\tLocation of the output file.\n");
  40097b:	bf e0 0e 40 00       	mov    $0x400ee0,%edi
  400980:	e8 cb fd ff ff       	callq  400750 <puts@plt>
	printf("Examples:\n");
  400985:	bf 0b 0f 40 00       	mov    $0x400f0b,%edi
  40098a:	e8 c1 fd ff ff       	callq  400750 <puts@plt>
	printf("\ttp0 -i ~/input -o ~/output\n");
  40098f:	bf 15 0f 40 00       	mov    $0x400f15,%edi
  400994:	e8 b7 fd ff ff       	callq  400750 <puts@plt>
}
  400999:	90                   	nop
  40099a:	5d                   	pop    %rbp
  40099b:	c3                   	retq   

000000000040099c <es_palindromo>:

int es_palindromo(char* word){
  40099c:	55                   	push   %rbp
  40099d:	48 89 e5             	mov    %rsp,%rbp
  4009a0:	53                   	push   %rbx
  4009a1:	48 83 ec 28          	sub    $0x28,%rsp
  4009a5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
	int i, j;
    int es_palindromo = 1;
  4009a9:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
	j = strlen(word)-1;
  4009b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009b4:	48 89 c7             	mov    %rax,%rdi
  4009b7:	e8 b4 fd ff ff       	callq  400770 <strlen@plt>
  4009bc:	83 e8 01             	sub    $0x1,%eax
  4009bf:	89 45 e8             	mov    %eax,-0x18(%rbp)
    for(i=0; i< (strlen(word)/2); i++, j--) {
  4009c2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4009c9:	eb 4b                	jmp    400a16 <es_palindromo+0x7a>
    	if (tolower(word[i]) != tolower(word[j])) {
  4009cb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4009ce:	48 63 d0             	movslq %eax,%rdx
  4009d1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009d5:	48 01 d0             	add    %rdx,%rax
  4009d8:	0f b6 00             	movzbl (%rax),%eax
  4009db:	0f be c0             	movsbl %al,%eax
  4009de:	89 c7                	mov    %eax,%edi
  4009e0:	e8 eb fd ff ff       	callq  4007d0 <tolower@plt>
  4009e5:	89 c3                	mov    %eax,%ebx
  4009e7:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4009ea:	48 63 d0             	movslq %eax,%rdx
  4009ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009f1:	48 01 d0             	add    %rdx,%rax
  4009f4:	0f b6 00             	movzbl (%rax),%eax
  4009f7:	0f be c0             	movsbl %al,%eax
  4009fa:	89 c7                	mov    %eax,%edi
  4009fc:	e8 cf fd ff ff       	callq  4007d0 <tolower@plt>
  400a01:	39 c3                	cmp    %eax,%ebx
  400a03:	74 09                	je     400a0e <es_palindromo+0x72>
    		es_palindromo = 0;
  400a05:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
            break;
  400a0c:	eb 22                	jmp    400a30 <es_palindromo+0x94>

int es_palindromo(char* word){
	int i, j;
    int es_palindromo = 1;
	j = strlen(word)-1;
    for(i=0; i< (strlen(word)/2); i++, j--) {
  400a0e:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  400a12:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
  400a16:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400a19:	48 63 d8             	movslq %eax,%rbx
  400a1c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a20:	48 89 c7             	mov    %rax,%rdi
  400a23:	e8 48 fd ff ff       	callq  400770 <strlen@plt>
  400a28:	48 d1 e8             	shr    %rax
  400a2b:	48 39 c3             	cmp    %rax,%rbx
  400a2e:	72 9b                	jb     4009cb <es_palindromo+0x2f>
    	if (tolower(word[i]) != tolower(word[j])) {
    		es_palindromo = 0;
            break;
        }
    }
    return es_palindromo;
  400a30:	8b 45 ec             	mov    -0x14(%rbp),%eax
}
  400a33:	48 83 c4 28          	add    $0x28,%rsp
  400a37:	5b                   	pop    %rbx
  400a38:	5d                   	pop    %rbp
  400a39:	c3                   	retq   

0000000000400a3a <handle>:

void handle(char* input_file_name, char* output_file_name) {
  400a3a:	55                   	push   %rbp
  400a3b:	48 89 e5             	mov    %rsp,%rbp
  400a3e:	48 83 ec 50          	sub    $0x50,%rsp
  400a42:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  400a46:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  400a4a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400a51:	00 00 
  400a53:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a57:	31 c0                	xor    %eax,%eax

	FILE *in_f;
	FILE *out_f;
	if (input_file_name!=NULL){
  400a59:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  400a5e:	74 5c                	je     400abc <handle+0x82>
		in_f = fopen( input_file_name, "r" );
  400a60:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400a64:	be 31 0f 40 00       	mov    $0x400f31,%esi
  400a69:	48 89 c7             	mov    %rax,%rdi
  400a6c:	e8 6f fd ff ff       	callq  4007e0 <fopen@plt>
  400a71:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		if (in_f==NULL) {fputs ("Input file not in directory",stderr); exit (1);}
  400a75:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  400a7a:	75 28                	jne    400aa4 <handle+0x6a>
  400a7c:	48 8b 05 3d 16 20 00 	mov    0x20163d(%rip),%rax        # 6020c0 <stderr@@GLIBC_2.2.5>
  400a83:	48 89 c1             	mov    %rax,%rcx
  400a86:	ba 1b 00 00 00       	mov    $0x1b,%edx
  400a8b:	be 01 00 00 00       	mov    $0x1,%esi
  400a90:	bf 33 0f 40 00       	mov    $0x400f33,%edi
  400a95:	e8 66 fd ff ff       	callq  400800 <fwrite@plt>
  400a9a:	bf 01 00 00 00       	mov    $0x1,%edi
  400a9f:	e8 4c fd ff ff       	callq  4007f0 <exit@plt>
		printf("input: %s\n", input_file_name);
  400aa4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400aa8:	48 89 c6             	mov    %rax,%rsi
  400aab:	bf 4f 0f 40 00       	mov    $0x400f4f,%edi
  400ab0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ab5:	e8 c6 fc ff ff       	callq  400780 <printf@plt>
  400aba:	eb 15                	jmp    400ad1 <handle+0x97>
	} else { 
		in_f = stdin;
  400abc:	48 8b 05 ed 15 20 00 	mov    0x2015ed(%rip),%rax        # 6020b0 <stdin@@GLIBC_2.2.5>
  400ac3:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		printf("input: terminal\n");
  400ac7:	bf 5a 0f 40 00       	mov    $0x400f5a,%edi
  400acc:	e8 7f fc ff ff       	callq  400750 <puts@plt>
	}

	if (output_file_name!=NULL && strcmp(output_file_name, "-") != 0){
  400ad1:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  400ad6:	74 42                	je     400b1a <handle+0xe0>
  400ad8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400adc:	be 6a 0f 40 00       	mov    $0x400f6a,%esi
  400ae1:	48 89 c7             	mov    %rax,%rdi
  400ae4:	e8 d7 fc ff ff       	callq  4007c0 <strcmp@plt>
  400ae9:	85 c0                	test   %eax,%eax
  400aeb:	74 2d                	je     400b1a <handle+0xe0>
		out_f = fopen( output_file_name, "w" );
  400aed:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400af1:	be 6c 0f 40 00       	mov    $0x400f6c,%esi
  400af6:	48 89 c7             	mov    %rax,%rdi
  400af9:	e8 e2 fc ff ff       	callq  4007e0 <fopen@plt>
  400afe:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		printf("output: %s\n", output_file_name);
  400b02:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400b06:	48 89 c6             	mov    %rax,%rsi
  400b09:	bf 6e 0f 40 00       	mov    $0x400f6e,%edi
  400b0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400b13:	e8 68 fc ff ff       	callq  400780 <printf@plt>
  400b18:	eb 15                	jmp    400b2f <handle+0xf5>
	}
	else {
		out_f = stdout;
  400b1a:	48 8b 05 7f 15 20 00 	mov    0x20157f(%rip),%rax        # 6020a0 <stdout@@GLIBC_2.2.5>
  400b21:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		printf("output: terminal\n");
  400b25:	bf 7a 0f 40 00       	mov    $0x400f7a,%edi
  400b2a:	e8 21 fc ff ff       	callq  400750 <puts@plt>
	}


    char word[30];
    while (fscanf(in_f, " %30s", word) == 1) {
  400b2f:	eb 35                	jmp    400b66 <handle+0x12c>
    	if (es_palindromo(word)==1){
  400b31:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400b35:	48 89 c7             	mov    %rax,%rdi
  400b38:	e8 5f fe ff ff       	callq  40099c <es_palindromo>
  400b3d:	83 f8 01             	cmp    $0x1,%eax
  400b40:	75 24                	jne    400b66 <handle+0x12c>
    		fputs(word, out_f);
  400b42:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  400b46:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400b4a:	48 89 d6             	mov    %rdx,%rsi
  400b4d:	48 89 c7             	mov    %rax,%rdi
  400b50:	e8 3b fc ff ff       	callq  400790 <fputs@plt>
    		fputs("\n", out_f);
  400b55:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400b59:	48 89 c6             	mov    %rax,%rsi
  400b5c:	bf 0a 00 00 00       	mov    $0xa,%edi
  400b61:	e8 3a fc ff ff       	callq  4007a0 <fputc@plt>
		printf("output: terminal\n");
	}


    char word[30];
    while (fscanf(in_f, " %30s", word) == 1) {
  400b66:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  400b6a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400b6e:	be 8b 0f 40 00       	mov    $0x400f8b,%esi
  400b73:	48 89 c7             	mov    %rax,%rdi
  400b76:	b8 00 00 00 00       	mov    $0x0,%eax
  400b7b:	e8 c0 fb ff ff       	callq  400740 <__isoc99_fscanf@plt>
  400b80:	83 f8 01             	cmp    $0x1,%eax
  400b83:	74 ac                	je     400b31 <handle+0xf7>
    		fputs(word, out_f);
    		fputs("\n", out_f);
    	}
    }

	fclose(in_f);
  400b85:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400b89:	48 89 c7             	mov    %rax,%rdi
  400b8c:	e8 cf fb ff ff       	callq  400760 <fclose@plt>
	// fclose(out_f);
	exit(SUCCESS);
  400b91:	bf 00 00 00 00       	mov    $0x0,%edi
  400b96:	e8 55 fc ff ff       	callq  4007f0 <exit@plt>

0000000000400b9b <main>:
}


int main(int argc, char** argv) {
  400b9b:	55                   	push   %rbp
  400b9c:	48 89 e5             	mov    %rsp,%rbp
  400b9f:	48 83 ec 10          	sub    $0x10,%rsp
  400ba3:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400ba6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)

	if(argc == 1) {
  400baa:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  400bae:	75 14                	jne    400bc4 <main+0x29>
		handle(NULL, NULL);
  400bb0:	be 00 00 00 00       	mov    $0x0,%esi
  400bb5:	bf 00 00 00 00       	mov    $0x0,%edi
  400bba:	e8 7b fe ff ff       	callq  400a3a <handle>
  400bbf:	e9 ca 01 00 00       	jmpq   400d8e <main+0x1f3>

	} else if (argc == 2) {
  400bc4:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  400bc8:	0f 85 8d 00 00 00    	jne    400c5b <main+0xc0>
		if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help")==0) {
  400bce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400bd2:	48 83 c0 08          	add    $0x8,%rax
  400bd6:	48 8b 00             	mov    (%rax),%rax
  400bd9:	be 91 0f 40 00       	mov    $0x400f91,%esi
  400bde:	48 89 c7             	mov    %rax,%rdi
  400be1:	e8 da fb ff ff       	callq  4007c0 <strcmp@plt>
  400be6:	85 c0                	test   %eax,%eax
  400be8:	74 1c                	je     400c06 <main+0x6b>
  400bea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400bee:	48 83 c0 08          	add    $0x8,%rax
  400bf2:	48 8b 00             	mov    (%rax),%rax
  400bf5:	be 94 0f 40 00       	mov    $0x400f94,%esi
  400bfa:	48 89 c7             	mov    %rax,%rdi
  400bfd:	e8 be fb ff ff       	callq  4007c0 <strcmp@plt>
  400c02:	85 c0                	test   %eax,%eax
  400c04:	75 0a                	jne    400c10 <main+0x75>
			print_usage();
  400c06:	b8 00 00 00 00       	mov    $0x0,%eax
  400c0b:	e8 17 fd ff ff       	callq  400927 <print_usage>
		}

		if(strcmp(argv[1], "-V") == 0 || strcmp(argv[1], "--version")==0) {
  400c10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c14:	48 83 c0 08          	add    $0x8,%rax
  400c18:	48 8b 00             	mov    (%rax),%rax
  400c1b:	be 9b 0f 40 00       	mov    $0x400f9b,%esi
  400c20:	48 89 c7             	mov    %rax,%rdi
  400c23:	e8 98 fb ff ff       	callq  4007c0 <strcmp@plt>
  400c28:	85 c0                	test   %eax,%eax
  400c2a:	74 20                	je     400c4c <main+0xb1>
  400c2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c30:	48 83 c0 08          	add    $0x8,%rax
  400c34:	48 8b 00             	mov    (%rax),%rax
  400c37:	be 9e 0f 40 00       	mov    $0x400f9e,%esi
  400c3c:	48 89 c7             	mov    %rax,%rdi
  400c3f:	e8 7c fb ff ff       	callq  4007c0 <strcmp@plt>
  400c44:	85 c0                	test   %eax,%eax
  400c46:	0f 85 42 01 00 00    	jne    400d8e <main+0x1f3>
			print_version();
  400c4c:	b8 00 00 00 00       	mov    $0x0,%eax
  400c51:	e8 c0 fc ff ff       	callq  400916 <print_version>
  400c56:	e9 33 01 00 00       	jmpq   400d8e <main+0x1f3>
		}

	} else if(argc == 3) {
  400c5b:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  400c5f:	75 71                	jne    400cd2 <main+0x137>
		if(strcmp(argv[1], "-i") == 0) {
  400c61:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c65:	48 83 c0 08          	add    $0x8,%rax
  400c69:	48 8b 00             	mov    (%rax),%rax
  400c6c:	be a8 0f 40 00       	mov    $0x400fa8,%esi
  400c71:	48 89 c7             	mov    %rax,%rdi
  400c74:	e8 47 fb ff ff       	callq  4007c0 <strcmp@plt>
  400c79:	85 c0                	test   %eax,%eax
  400c7b:	75 18                	jne    400c95 <main+0xfa>
			handle(argv[2], NULL);
  400c7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c81:	48 83 c0 10          	add    $0x10,%rax
  400c85:	48 8b 00             	mov    (%rax),%rax
  400c88:	be 00 00 00 00       	mov    $0x0,%esi
  400c8d:	48 89 c7             	mov    %rax,%rdi
  400c90:	e8 a5 fd ff ff       	callq  400a3a <handle>
		}

		if(strcmp(argv[1], "-o") == 0) {
  400c95:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c99:	48 83 c0 08          	add    $0x8,%rax
  400c9d:	48 8b 00             	mov    (%rax),%rax
  400ca0:	be ab 0f 40 00       	mov    $0x400fab,%esi
  400ca5:	48 89 c7             	mov    %rax,%rdi
  400ca8:	e8 13 fb ff ff       	callq  4007c0 <strcmp@plt>
  400cad:	85 c0                	test   %eax,%eax
  400caf:	0f 85 d9 00 00 00    	jne    400d8e <main+0x1f3>
			handle(NULL, argv[2]);
  400cb5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400cb9:	48 83 c0 10          	add    $0x10,%rax
  400cbd:	48 8b 00             	mov    (%rax),%rax
  400cc0:	48 89 c6             	mov    %rax,%rsi
  400cc3:	bf 00 00 00 00       	mov    $0x0,%edi
  400cc8:	e8 6d fd ff ff       	callq  400a3a <handle>
  400ccd:	e9 bc 00 00 00       	jmpq   400d8e <main+0x1f3>
		}

	} else if(argc == 5) {
  400cd2:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
  400cd6:	0f 85 b2 00 00 00    	jne    400d8e <main+0x1f3>
		if(strcmp(argv[1], "-i") == 0 && strcmp(argv[3], "-o") == 0) {
  400cdc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ce0:	48 83 c0 08          	add    $0x8,%rax
  400ce4:	48 8b 00             	mov    (%rax),%rax
  400ce7:	be a8 0f 40 00       	mov    $0x400fa8,%esi
  400cec:	48 89 c7             	mov    %rax,%rdi
  400cef:	e8 cc fa ff ff       	callq  4007c0 <strcmp@plt>
  400cf4:	85 c0                	test   %eax,%eax
  400cf6:	75 3d                	jne    400d35 <main+0x19a>
  400cf8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400cfc:	48 83 c0 18          	add    $0x18,%rax
  400d00:	48 8b 00             	mov    (%rax),%rax
  400d03:	be ab 0f 40 00       	mov    $0x400fab,%esi
  400d08:	48 89 c7             	mov    %rax,%rdi
  400d0b:	e8 b0 fa ff ff       	callq  4007c0 <strcmp@plt>
  400d10:	85 c0                	test   %eax,%eax
  400d12:	75 21                	jne    400d35 <main+0x19a>
			handle(argv[2], argv[4]);
  400d14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d18:	48 83 c0 20          	add    $0x20,%rax
  400d1c:	48 8b 10             	mov    (%rax),%rdx
  400d1f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d23:	48 83 c0 10          	add    $0x10,%rax
  400d27:	48 8b 00             	mov    (%rax),%rax
  400d2a:	48 89 d6             	mov    %rdx,%rsi
  400d2d:	48 89 c7             	mov    %rax,%rdi
  400d30:	e8 05 fd ff ff       	callq  400a3a <handle>
		}

		if(strcmp(argv[1], "-o") == 0 && strcmp(argv[3], "-i") == 0) {
  400d35:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d39:	48 83 c0 08          	add    $0x8,%rax
  400d3d:	48 8b 00             	mov    (%rax),%rax
  400d40:	be ab 0f 40 00       	mov    $0x400fab,%esi
  400d45:	48 89 c7             	mov    %rax,%rdi
  400d48:	e8 73 fa ff ff       	callq  4007c0 <strcmp@plt>
  400d4d:	85 c0                	test   %eax,%eax
  400d4f:	75 3d                	jne    400d8e <main+0x1f3>
  400d51:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d55:	48 83 c0 18          	add    $0x18,%rax
  400d59:	48 8b 00             	mov    (%rax),%rax
  400d5c:	be a8 0f 40 00       	mov    $0x400fa8,%esi
  400d61:	48 89 c7             	mov    %rax,%rdi
  400d64:	e8 57 fa ff ff       	callq  4007c0 <strcmp@plt>
  400d69:	85 c0                	test   %eax,%eax
  400d6b:	75 21                	jne    400d8e <main+0x1f3>
			handle(argv[4], argv[2]);
  400d6d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d71:	48 83 c0 10          	add    $0x10,%rax
  400d75:	48 8b 10             	mov    (%rax),%rdx
  400d78:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d7c:	48 83 c0 20          	add    $0x20,%rax
  400d80:	48 8b 00             	mov    (%rax),%rax
  400d83:	48 89 d6             	mov    %rdx,%rsi
  400d86:	48 89 c7             	mov    %rax,%rdi
  400d89:	e8 ac fc ff ff       	callq  400a3a <handle>
		}
	}

	return SUCCESS;
  400d8e:	b8 00 00 00 00       	mov    $0x0,%eax
}
  400d93:	c9                   	leaveq 
  400d94:	c3                   	retq   
  400d95:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d9c:	00 00 00 
  400d9f:	90                   	nop

0000000000400da0 <__libc_csu_init>:
  400da0:	41 57                	push   %r15
  400da2:	41 56                	push   %r14
  400da4:	41 89 ff             	mov    %edi,%r15d
  400da7:	41 55                	push   %r13
  400da9:	41 54                	push   %r12
  400dab:	4c 8d 25 5e 10 20 00 	lea    0x20105e(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400db2:	55                   	push   %rbp
  400db3:	48 8d 2d 5e 10 20 00 	lea    0x20105e(%rip),%rbp        # 601e18 <__init_array_end>
  400dba:	53                   	push   %rbx
  400dbb:	49 89 f6             	mov    %rsi,%r14
  400dbe:	49 89 d5             	mov    %rdx,%r13
  400dc1:	4c 29 e5             	sub    %r12,%rbp
  400dc4:	48 83 ec 08          	sub    $0x8,%rsp
  400dc8:	48 c1 fd 03          	sar    $0x3,%rbp
  400dcc:	e8 3f f9 ff ff       	callq  400710 <_init>
  400dd1:	48 85 ed             	test   %rbp,%rbp
  400dd4:	74 20                	je     400df6 <__libc_csu_init+0x56>
  400dd6:	31 db                	xor    %ebx,%ebx
  400dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400ddf:	00 
  400de0:	4c 89 ea             	mov    %r13,%rdx
  400de3:	4c 89 f6             	mov    %r14,%rsi
  400de6:	44 89 ff             	mov    %r15d,%edi
  400de9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400ded:	48 83 c3 01          	add    $0x1,%rbx
  400df1:	48 39 eb             	cmp    %rbp,%rbx
  400df4:	75 ea                	jne    400de0 <__libc_csu_init+0x40>
  400df6:	48 83 c4 08          	add    $0x8,%rsp
  400dfa:	5b                   	pop    %rbx
  400dfb:	5d                   	pop    %rbp
  400dfc:	41 5c                	pop    %r12
  400dfe:	41 5d                	pop    %r13
  400e00:	41 5e                	pop    %r14
  400e02:	41 5f                	pop    %r15
  400e04:	c3                   	retq   
  400e05:	90                   	nop
  400e06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e0d:	00 00 00 

0000000000400e10 <__libc_csu_fini>:
  400e10:	f3 c3                	repz retq 

Desensamblado de la sección .fini:

0000000000400e14 <_fini>:
  400e14:	48 83 ec 08          	sub    $0x8,%rsp
  400e18:	48 83 c4 08          	add    $0x8,%rsp
  400e1c:	c3                   	retq   
