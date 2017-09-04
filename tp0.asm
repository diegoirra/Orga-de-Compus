
tp0:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

00000000004006d0 <_init>:
  4006d0:	48 83 ec 08          	sub    $0x8,%rsp
  4006d4:	48 8b 05 1d 19 20 00 	mov    0x20191d(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  4006db:	48 85 c0             	test   %rax,%rax
  4006de:	74 05                	je     4006e5 <_init+0x15>
  4006e0:	e8 eb 00 00 00       	callq  4007d0 <fwrite@plt+0x10>
  4006e5:	48 83 c4 08          	add    $0x8,%rsp
  4006e9:	c3                   	retq   

Desensamblado de la sección .plt:

00000000004006f0 <__isoc99_fscanf@plt-0x10>:
  4006f0:	ff 35 12 19 20 00    	pushq  0x201912(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006f6:	ff 25 14 19 20 00    	jmpq   *0x201914(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400700 <__isoc99_fscanf@plt>:
  400700:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400706:	68 00 00 00 00       	pushq  $0x0
  40070b:	e9 e0 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400710 <puts@plt>:
  400710:	ff 25 0a 19 20 00    	jmpq   *0x20190a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400716:	68 01 00 00 00       	pushq  $0x1
  40071b:	e9 d0 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400720 <fclose@plt>:
  400720:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400726:	68 02 00 00 00       	pushq  $0x2
  40072b:	e9 c0 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400730 <strlen@plt>:
  400730:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400736:	68 03 00 00 00       	pushq  $0x3
  40073b:	e9 b0 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400740 <printf@plt>:
  400740:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400746:	68 04 00 00 00       	pushq  $0x4
  40074b:	e9 a0 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400750 <fputs@plt>:
  400750:	ff 25 ea 18 20 00    	jmpq   *0x2018ea(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400756:	68 05 00 00 00       	pushq  $0x5
  40075b:	e9 90 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400760 <fputc@plt>:
  400760:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400766:	68 06 00 00 00       	pushq  $0x6
  40076b:	e9 80 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400770 <__libc_start_main@plt>:
  400770:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400776:	68 07 00 00 00       	pushq  $0x7
  40077b:	e9 70 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400780 <strcmp@plt>:
  400780:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400786:	68 08 00 00 00       	pushq  $0x8
  40078b:	e9 60 ff ff ff       	jmpq   4006f0 <_init+0x20>

0000000000400790 <tolower@plt>:
  400790:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400796:	68 09 00 00 00       	pushq  $0x9
  40079b:	e9 50 ff ff ff       	jmpq   4006f0 <_init+0x20>

00000000004007a0 <fopen@plt>:
  4007a0:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4007a6:	68 0a 00 00 00       	pushq  $0xa
  4007ab:	e9 40 ff ff ff       	jmpq   4006f0 <_init+0x20>

00000000004007b0 <exit@plt>:
  4007b0:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  4007b6:	68 0b 00 00 00       	pushq  $0xb
  4007bb:	e9 30 ff ff ff       	jmpq   4006f0 <_init+0x20>

00000000004007c0 <fwrite@plt>:
  4007c0:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  4007c6:	68 0c 00 00 00       	pushq  $0xc
  4007cb:	e9 20 ff ff ff       	jmpq   4006f0 <_init+0x20>

Desensamblado de la sección .plt.got:

00000000004007d0 <.plt.got>:
  4007d0:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 601ff8 <_DYNAMIC+0x1d0>
  4007d6:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .text:

00000000004007e0 <_start>:
  4007e0:	31 ed                	xor    %ebp,%ebp
  4007e2:	49 89 d1             	mov    %rdx,%r9
  4007e5:	5e                   	pop    %rsi
  4007e6:	48 89 e2             	mov    %rsp,%rdx
  4007e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4007ed:	50                   	push   %rax
  4007ee:	54                   	push   %rsp
  4007ef:	49 c7 c0 e0 0d 40 00 	mov    $0x400de0,%r8
  4007f6:	48 c7 c1 70 0d 40 00 	mov    $0x400d70,%rcx
  4007fd:	48 c7 c7 6e 0b 40 00 	mov    $0x400b6e,%rdi
  400804:	e8 67 ff ff ff       	callq  400770 <__libc_start_main@plt>
  400809:	f4                   	hlt    
  40080a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400810 <deregister_tm_clones>:
  400810:	b8 97 20 60 00       	mov    $0x602097,%eax
  400815:	55                   	push   %rbp
  400816:	48 2d 90 20 60 00    	sub    $0x602090,%rax
  40081c:	48 83 f8 0e          	cmp    $0xe,%rax
  400820:	48 89 e5             	mov    %rsp,%rbp
  400823:	76 1b                	jbe    400840 <deregister_tm_clones+0x30>
  400825:	b8 00 00 00 00       	mov    $0x0,%eax
  40082a:	48 85 c0             	test   %rax,%rax
  40082d:	74 11                	je     400840 <deregister_tm_clones+0x30>
  40082f:	5d                   	pop    %rbp
  400830:	bf 90 20 60 00       	mov    $0x602090,%edi
  400835:	ff e0                	jmpq   *%rax
  400837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40083e:	00 00 
  400840:	5d                   	pop    %rbp
  400841:	c3                   	retq   
  400842:	0f 1f 40 00          	nopl   0x0(%rax)
  400846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40084d:	00 00 00 

0000000000400850 <register_tm_clones>:
  400850:	be 90 20 60 00       	mov    $0x602090,%esi
  400855:	55                   	push   %rbp
  400856:	48 81 ee 90 20 60 00 	sub    $0x602090,%rsi
  40085d:	48 c1 fe 03          	sar    $0x3,%rsi
  400861:	48 89 e5             	mov    %rsp,%rbp
  400864:	48 89 f0             	mov    %rsi,%rax
  400867:	48 c1 e8 3f          	shr    $0x3f,%rax
  40086b:	48 01 c6             	add    %rax,%rsi
  40086e:	48 d1 fe             	sar    %rsi
  400871:	74 15                	je     400888 <register_tm_clones+0x38>
  400873:	b8 00 00 00 00       	mov    $0x0,%eax
  400878:	48 85 c0             	test   %rax,%rax
  40087b:	74 0b                	je     400888 <register_tm_clones+0x38>
  40087d:	5d                   	pop    %rbp
  40087e:	bf 90 20 60 00       	mov    $0x602090,%edi
  400883:	ff e0                	jmpq   *%rax
  400885:	0f 1f 00             	nopl   (%rax)
  400888:	5d                   	pop    %rbp
  400889:	c3                   	retq   
  40088a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400890 <__do_global_dtors_aux>:
  400890:	80 3d 31 18 20 00 00 	cmpb   $0x0,0x201831(%rip)        # 6020c8 <completed.7585>
  400897:	75 11                	jne    4008aa <__do_global_dtors_aux+0x1a>
  400899:	55                   	push   %rbp
  40089a:	48 89 e5             	mov    %rsp,%rbp
  40089d:	e8 6e ff ff ff       	callq  400810 <deregister_tm_clones>
  4008a2:	5d                   	pop    %rbp
  4008a3:	c6 05 1e 18 20 00 01 	movb   $0x1,0x20181e(%rip)        # 6020c8 <completed.7585>
  4008aa:	f3 c3                	repz retq 
  4008ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008b0 <frame_dummy>:
  4008b0:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  4008b5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4008b9:	75 05                	jne    4008c0 <frame_dummy+0x10>
  4008bb:	eb 93                	jmp    400850 <register_tm_clones>
  4008bd:	0f 1f 00             	nopl   (%rax)
  4008c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4008c5:	48 85 c0             	test   %rax,%rax
  4008c8:	74 f1                	je     4008bb <frame_dummy+0xb>
  4008ca:	55                   	push   %rbp
  4008cb:	48 89 e5             	mov    %rsp,%rbp
  4008ce:	ff d0                	callq  *%rax
  4008d0:	5d                   	pop    %rbp
  4008d1:	e9 7a ff ff ff       	jmpq   400850 <register_tm_clones>

00000000004008d6 <print_version>:
#include <ctype.h>

#define SUCCESS 0
#define VERSION "1.0"

void print_version() {
  4008d6:	55                   	push   %rbp
  4008d7:	48 89 e5             	mov    %rsp,%rbp
	printf("%s\n", VERSION);
  4008da:	bf f8 0d 40 00       	mov    $0x400df8,%edi
  4008df:	e8 2c fe ff ff       	callq  400710 <puts@plt>
}
  4008e4:	90                   	nop
  4008e5:	5d                   	pop    %rbp
  4008e6:	c3                   	retq   

00000000004008e7 <print_usage>:


void print_usage() {
  4008e7:	55                   	push   %rbp
  4008e8:	48 89 e5             	mov    %rsp,%rbp
	printf("Usage:\n");
  4008eb:	bf fc 0d 40 00       	mov    $0x400dfc,%edi
  4008f0:	e8 1b fe ff ff       	callq  400710 <puts@plt>
	printf("\ttp0 -h\n");
  4008f5:	bf 03 0e 40 00       	mov    $0x400e03,%edi
  4008fa:	e8 11 fe ff ff       	callq  400710 <puts@plt>
	printf("\ttp0 -V\n");
  4008ff:	bf 0b 0e 40 00       	mov    $0x400e0b,%edi
  400904:	e8 07 fe ff ff       	callq  400710 <puts@plt>
	printf("\ttp0 [options]\n");
  400909:	bf 13 0e 40 00       	mov    $0x400e13,%edi
  40090e:	e8 fd fd ff ff       	callq  400710 <puts@plt>
	printf("Options:\n");
  400913:	bf 22 0e 40 00       	mov    $0x400e22,%edi
  400918:	e8 f3 fd ff ff       	callq  400710 <puts@plt>
	printf("\t-V, --version\tPrint version and quit.\n");
  40091d:	bf 30 0e 40 00       	mov    $0x400e30,%edi
  400922:	e8 e9 fd ff ff       	callq  400710 <puts@plt>
	printf("\t-h, --help\tPrint this information.\n");
  400927:	bf 58 0e 40 00       	mov    $0x400e58,%edi
  40092c:	e8 df fd ff ff       	callq  400710 <puts@plt>
	printf("\t-i, --input\tLocation of the input file.\n");
  400931:	bf 80 0e 40 00       	mov    $0x400e80,%edi
  400936:	e8 d5 fd ff ff       	callq  400710 <puts@plt>
	printf("\t-o, --output\tLocation of the output file.\n");
  40093b:	bf b0 0e 40 00       	mov    $0x400eb0,%edi
  400940:	e8 cb fd ff ff       	callq  400710 <puts@plt>
	printf("Examples:\n");
  400945:	bf db 0e 40 00       	mov    $0x400edb,%edi
  40094a:	e8 c1 fd ff ff       	callq  400710 <puts@plt>
	printf("\ttp0 -i ~/input -o ~/output\n");
  40094f:	bf e5 0e 40 00       	mov    $0x400ee5,%edi
  400954:	e8 b7 fd ff ff       	callq  400710 <puts@plt>
}
  400959:	90                   	nop
  40095a:	5d                   	pop    %rbp
  40095b:	c3                   	retq   

000000000040095c <es_palindromo>:

int es_palindromo(char* word){
  40095c:	55                   	push   %rbp
  40095d:	48 89 e5             	mov    %rsp,%rbp
  400960:	53                   	push   %rbx
  400961:	48 83 ec 28          	sub    $0x28,%rsp
  400965:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
	int i, j;
    int es_palindromo = 1;
  400969:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
	j = strlen(word)-1;
  400970:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400974:	48 89 c7             	mov    %rax,%rdi
  400977:	e8 b4 fd ff ff       	callq  400730 <strlen@plt>
  40097c:	83 e8 01             	sub    $0x1,%eax
  40097f:	89 45 e8             	mov    %eax,-0x18(%rbp)
    for(i=0; i< (strlen(word)/2); i++, j--) {
  400982:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  400989:	eb 4b                	jmp    4009d6 <es_palindromo+0x7a>
    	if (tolower(word[i]) != tolower(word[j])) {
  40098b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40098e:	48 63 d0             	movslq %eax,%rdx
  400991:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400995:	48 01 d0             	add    %rdx,%rax
  400998:	0f b6 00             	movzbl (%rax),%eax
  40099b:	0f be c0             	movsbl %al,%eax
  40099e:	89 c7                	mov    %eax,%edi
  4009a0:	e8 eb fd ff ff       	callq  400790 <tolower@plt>
  4009a5:	89 c3                	mov    %eax,%ebx
  4009a7:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4009aa:	48 63 d0             	movslq %eax,%rdx
  4009ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009b1:	48 01 d0             	add    %rdx,%rax
  4009b4:	0f b6 00             	movzbl (%rax),%eax
  4009b7:	0f be c0             	movsbl %al,%eax
  4009ba:	89 c7                	mov    %eax,%edi
  4009bc:	e8 cf fd ff ff       	callq  400790 <tolower@plt>
  4009c1:	39 c3                	cmp    %eax,%ebx
  4009c3:	74 09                	je     4009ce <es_palindromo+0x72>
    		es_palindromo = 0;
  4009c5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
            break;
  4009cc:	eb 22                	jmp    4009f0 <es_palindromo+0x94>

int es_palindromo(char* word){
	int i, j;
    int es_palindromo = 1;
	j = strlen(word)-1;
    for(i=0; i< (strlen(word)/2); i++, j--) {
  4009ce:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  4009d2:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
  4009d6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4009d9:	48 63 d8             	movslq %eax,%rbx
  4009dc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009e0:	48 89 c7             	mov    %rax,%rdi
  4009e3:	e8 48 fd ff ff       	callq  400730 <strlen@plt>
  4009e8:	48 d1 e8             	shr    %rax
  4009eb:	48 39 c3             	cmp    %rax,%rbx
  4009ee:	72 9b                	jb     40098b <es_palindromo+0x2f>
    	if (tolower(word[i]) != tolower(word[j])) {
    		es_palindromo = 0;
            break;
        }
    }
    return es_palindromo;
  4009f0:	8b 45 ec             	mov    -0x14(%rbp),%eax
}
  4009f3:	48 83 c4 28          	add    $0x28,%rsp
  4009f7:	5b                   	pop    %rbx
  4009f8:	5d                   	pop    %rbp
  4009f9:	c3                   	retq   

00000000004009fa <handle>:

void handle(char* input_file_name, char* output_file_name) {
  4009fa:	55                   	push   %rbp
  4009fb:	48 89 e5             	mov    %rsp,%rbp
  4009fe:	48 83 ec 50          	sub    $0x50,%rsp
  400a02:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  400a06:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  400a0a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400a11:	00 00 
  400a13:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a17:	31 c0                	xor    %eax,%eax

	FILE *in_f;
	FILE *out_f;
	if (input_file_name!=NULL){
  400a19:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  400a1e:	74 63                	je     400a83 <handle+0x89>
		in_f = fopen( input_file_name, "r" );
  400a20:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400a24:	be 01 0f 40 00       	mov    $0x400f01,%esi
  400a29:	48 89 c7             	mov    %rax,%rdi
  400a2c:	e8 6f fd ff ff       	callq  4007a0 <fopen@plt>
  400a31:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		if (in_f==NULL) {fputs ("Input file not in directory",stderr); exit (1);}
  400a35:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  400a3a:	75 28                	jne    400a64 <handle+0x6a>
  400a3c:	48 8b 05 7d 16 20 00 	mov    0x20167d(%rip),%rax        # 6020c0 <stderr@@GLIBC_2.2.5>
  400a43:	48 89 c1             	mov    %rax,%rcx
  400a46:	ba 1b 00 00 00       	mov    $0x1b,%edx
  400a4b:	be 01 00 00 00       	mov    $0x1,%esi
  400a50:	bf 03 0f 40 00       	mov    $0x400f03,%edi
  400a55:	e8 66 fd ff ff       	callq  4007c0 <fwrite@plt>
  400a5a:	bf 01 00 00 00       	mov    $0x1,%edi
  400a5f:	e8 4c fd ff ff       	callq  4007b0 <exit@plt>
		printf("input: %s\n", input_file_name);
  400a64:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400a68:	48 89 c6             	mov    %rax,%rsi
  400a6b:	bf 1f 0f 40 00       	mov    $0x400f1f,%edi
  400a70:	b8 00 00 00 00       	mov    $0x0,%eax
  400a75:	e8 c6 fc ff ff       	callq  400740 <printf@plt>
	}
	else {fputs ("NO INPUT PROVIDED",stderr); exit(1);}

	if (output_file_name!=NULL && strcmp(output_file_name, "-") != 0){
  400a7a:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  400a7f:	74 6c                	je     400aed <handle+0xf3>
  400a81:	eb 28                	jmp    400aab <handle+0xb1>
	if (input_file_name!=NULL){
		in_f = fopen( input_file_name, "r" );
		if (in_f==NULL) {fputs ("Input file not in directory",stderr); exit (1);}
		printf("input: %s\n", input_file_name);
	}
	else {fputs ("NO INPUT PROVIDED",stderr); exit(1);}
  400a83:	48 8b 05 36 16 20 00 	mov    0x201636(%rip),%rax        # 6020c0 <stderr@@GLIBC_2.2.5>
  400a8a:	48 89 c1             	mov    %rax,%rcx
  400a8d:	ba 11 00 00 00       	mov    $0x11,%edx
  400a92:	be 01 00 00 00       	mov    $0x1,%esi
  400a97:	bf 2a 0f 40 00       	mov    $0x400f2a,%edi
  400a9c:	e8 1f fd ff ff       	callq  4007c0 <fwrite@plt>
  400aa1:	bf 01 00 00 00       	mov    $0x1,%edi
  400aa6:	e8 05 fd ff ff       	callq  4007b0 <exit@plt>

	if (output_file_name!=NULL && strcmp(output_file_name, "-") != 0){
  400aab:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400aaf:	be 3c 0f 40 00       	mov    $0x400f3c,%esi
  400ab4:	48 89 c7             	mov    %rax,%rdi
  400ab7:	e8 c4 fc ff ff       	callq  400780 <strcmp@plt>
  400abc:	85 c0                	test   %eax,%eax
  400abe:	74 2d                	je     400aed <handle+0xf3>
		out_f = fopen( output_file_name, "w" );
  400ac0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400ac4:	be 3e 0f 40 00       	mov    $0x400f3e,%esi
  400ac9:	48 89 c7             	mov    %rax,%rdi
  400acc:	e8 cf fc ff ff       	callq  4007a0 <fopen@plt>
  400ad1:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		printf("output: %s\n", output_file_name);
  400ad5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400ad9:	48 89 c6             	mov    %rax,%rsi
  400adc:	bf 40 0f 40 00       	mov    $0x400f40,%edi
  400ae1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ae6:	e8 55 fc ff ff       	callq  400740 <printf@plt>
  400aeb:	eb 15                	jmp    400b02 <handle+0x108>
	}
	else {
		out_f = stdout;
  400aed:	48 8b 05 ac 15 20 00 	mov    0x2015ac(%rip),%rax        # 6020a0 <stdout@@GLIBC_2.2.5>
  400af4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		printf("output: terminal\n");
  400af8:	bf 4c 0f 40 00       	mov    $0x400f4c,%edi
  400afd:	e8 0e fc ff ff       	callq  400710 <puts@plt>
	}


    char word[30];
    while (fscanf(in_f, " %30s", word) == 1) {
  400b02:	eb 35                	jmp    400b39 <handle+0x13f>
    	if (es_palindromo(word)==1){
  400b04:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400b08:	48 89 c7             	mov    %rax,%rdi
  400b0b:	e8 4c fe ff ff       	callq  40095c <es_palindromo>
  400b10:	83 f8 01             	cmp    $0x1,%eax
  400b13:	75 24                	jne    400b39 <handle+0x13f>
    		fputs(word, out_f);
  400b15:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  400b19:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400b1d:	48 89 d6             	mov    %rdx,%rsi
  400b20:	48 89 c7             	mov    %rax,%rdi
  400b23:	e8 28 fc ff ff       	callq  400750 <fputs@plt>
    		fputs("\n", out_f);
  400b28:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400b2c:	48 89 c6             	mov    %rax,%rsi
  400b2f:	bf 0a 00 00 00       	mov    $0xa,%edi
  400b34:	e8 27 fc ff ff       	callq  400760 <fputc@plt>
		printf("output: terminal\n");
	}


    char word[30];
    while (fscanf(in_f, " %30s", word) == 1) {
  400b39:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  400b3d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400b41:	be 5d 0f 40 00       	mov    $0x400f5d,%esi
  400b46:	48 89 c7             	mov    %rax,%rdi
  400b49:	b8 00 00 00 00       	mov    $0x0,%eax
  400b4e:	e8 ad fb ff ff       	callq  400700 <__isoc99_fscanf@plt>
  400b53:	83 f8 01             	cmp    $0x1,%eax
  400b56:	74 ac                	je     400b04 <handle+0x10a>
    		fputs(word, out_f);
    		fputs("\n", out_f);
    	}
    }

	fclose(in_f);
  400b58:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400b5c:	48 89 c7             	mov    %rax,%rdi
  400b5f:	e8 bc fb ff ff       	callq  400720 <fclose@plt>
	// fclose(out_f);
	exit(SUCCESS);
  400b64:	bf 00 00 00 00       	mov    $0x0,%edi
  400b69:	e8 42 fc ff ff       	callq  4007b0 <exit@plt>

0000000000400b6e <main>:
}


int main(int argc, char** argv) {
  400b6e:	55                   	push   %rbp
  400b6f:	48 89 e5             	mov    %rsp,%rbp
  400b72:	48 83 ec 10          	sub    $0x10,%rsp
  400b76:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400b79:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)

	if(argc == 1) {
  400b7d:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  400b81:	75 14                	jne    400b97 <main+0x29>
		handle(NULL, NULL);
  400b83:	be 00 00 00 00       	mov    $0x0,%esi
  400b88:	bf 00 00 00 00       	mov    $0x0,%edi
  400b8d:	e8 68 fe ff ff       	callq  4009fa <handle>
  400b92:	e9 ca 01 00 00       	jmpq   400d61 <main+0x1f3>

	} else if (argc == 2) {
  400b97:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  400b9b:	0f 85 8d 00 00 00    	jne    400c2e <main+0xc0>
		if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help")==0) {
  400ba1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ba5:	48 83 c0 08          	add    $0x8,%rax
  400ba9:	48 8b 00             	mov    (%rax),%rax
  400bac:	be 63 0f 40 00       	mov    $0x400f63,%esi
  400bb1:	48 89 c7             	mov    %rax,%rdi
  400bb4:	e8 c7 fb ff ff       	callq  400780 <strcmp@plt>
  400bb9:	85 c0                	test   %eax,%eax
  400bbb:	74 1c                	je     400bd9 <main+0x6b>
  400bbd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400bc1:	48 83 c0 08          	add    $0x8,%rax
  400bc5:	48 8b 00             	mov    (%rax),%rax
  400bc8:	be 66 0f 40 00       	mov    $0x400f66,%esi
  400bcd:	48 89 c7             	mov    %rax,%rdi
  400bd0:	e8 ab fb ff ff       	callq  400780 <strcmp@plt>
  400bd5:	85 c0                	test   %eax,%eax
  400bd7:	75 0a                	jne    400be3 <main+0x75>
			print_usage();
  400bd9:	b8 00 00 00 00       	mov    $0x0,%eax
  400bde:	e8 04 fd ff ff       	callq  4008e7 <print_usage>
		}

		if(strcmp(argv[1], "-V") == 0 || strcmp(argv[1], "--version")==0) {
  400be3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400be7:	48 83 c0 08          	add    $0x8,%rax
  400beb:	48 8b 00             	mov    (%rax),%rax
  400bee:	be 6d 0f 40 00       	mov    $0x400f6d,%esi
  400bf3:	48 89 c7             	mov    %rax,%rdi
  400bf6:	e8 85 fb ff ff       	callq  400780 <strcmp@plt>
  400bfb:	85 c0                	test   %eax,%eax
  400bfd:	74 20                	je     400c1f <main+0xb1>
  400bff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c03:	48 83 c0 08          	add    $0x8,%rax
  400c07:	48 8b 00             	mov    (%rax),%rax
  400c0a:	be 70 0f 40 00       	mov    $0x400f70,%esi
  400c0f:	48 89 c7             	mov    %rax,%rdi
  400c12:	e8 69 fb ff ff       	callq  400780 <strcmp@plt>
  400c17:	85 c0                	test   %eax,%eax
  400c19:	0f 85 42 01 00 00    	jne    400d61 <main+0x1f3>
			print_version();
  400c1f:	b8 00 00 00 00       	mov    $0x0,%eax
  400c24:	e8 ad fc ff ff       	callq  4008d6 <print_version>
  400c29:	e9 33 01 00 00       	jmpq   400d61 <main+0x1f3>
		}

	} else if(argc == 3) {
  400c2e:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  400c32:	75 71                	jne    400ca5 <main+0x137>
		if(strcmp(argv[1], "-i") == 0) {
  400c34:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c38:	48 83 c0 08          	add    $0x8,%rax
  400c3c:	48 8b 00             	mov    (%rax),%rax
  400c3f:	be 7a 0f 40 00       	mov    $0x400f7a,%esi
  400c44:	48 89 c7             	mov    %rax,%rdi
  400c47:	e8 34 fb ff ff       	callq  400780 <strcmp@plt>
  400c4c:	85 c0                	test   %eax,%eax
  400c4e:	75 18                	jne    400c68 <main+0xfa>
			handle(argv[2], NULL);
  400c50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c54:	48 83 c0 10          	add    $0x10,%rax
  400c58:	48 8b 00             	mov    (%rax),%rax
  400c5b:	be 00 00 00 00       	mov    $0x0,%esi
  400c60:	48 89 c7             	mov    %rax,%rdi
  400c63:	e8 92 fd ff ff       	callq  4009fa <handle>
		}

		if(strcmp(argv[1], "-o") == 0) {
  400c68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c6c:	48 83 c0 08          	add    $0x8,%rax
  400c70:	48 8b 00             	mov    (%rax),%rax
  400c73:	be 7d 0f 40 00       	mov    $0x400f7d,%esi
  400c78:	48 89 c7             	mov    %rax,%rdi
  400c7b:	e8 00 fb ff ff       	callq  400780 <strcmp@plt>
  400c80:	85 c0                	test   %eax,%eax
  400c82:	0f 85 d9 00 00 00    	jne    400d61 <main+0x1f3>
			handle(NULL, argv[2]);
  400c88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c8c:	48 83 c0 10          	add    $0x10,%rax
  400c90:	48 8b 00             	mov    (%rax),%rax
  400c93:	48 89 c6             	mov    %rax,%rsi
  400c96:	bf 00 00 00 00       	mov    $0x0,%edi
  400c9b:	e8 5a fd ff ff       	callq  4009fa <handle>
  400ca0:	e9 bc 00 00 00       	jmpq   400d61 <main+0x1f3>
		}

	} else if(argc == 5) {
  400ca5:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
  400ca9:	0f 85 b2 00 00 00    	jne    400d61 <main+0x1f3>
		if(strcmp(argv[1], "-i") == 0 && strcmp(argv[3], "-o") == 0) {
  400caf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400cb3:	48 83 c0 08          	add    $0x8,%rax
  400cb7:	48 8b 00             	mov    (%rax),%rax
  400cba:	be 7a 0f 40 00       	mov    $0x400f7a,%esi
  400cbf:	48 89 c7             	mov    %rax,%rdi
  400cc2:	e8 b9 fa ff ff       	callq  400780 <strcmp@plt>
  400cc7:	85 c0                	test   %eax,%eax
  400cc9:	75 3d                	jne    400d08 <main+0x19a>
  400ccb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ccf:	48 83 c0 18          	add    $0x18,%rax
  400cd3:	48 8b 00             	mov    (%rax),%rax
  400cd6:	be 7d 0f 40 00       	mov    $0x400f7d,%esi
  400cdb:	48 89 c7             	mov    %rax,%rdi
  400cde:	e8 9d fa ff ff       	callq  400780 <strcmp@plt>
  400ce3:	85 c0                	test   %eax,%eax
  400ce5:	75 21                	jne    400d08 <main+0x19a>
			handle(argv[2], argv[4]);
  400ce7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ceb:	48 83 c0 20          	add    $0x20,%rax
  400cef:	48 8b 10             	mov    (%rax),%rdx
  400cf2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400cf6:	48 83 c0 10          	add    $0x10,%rax
  400cfa:	48 8b 00             	mov    (%rax),%rax
  400cfd:	48 89 d6             	mov    %rdx,%rsi
  400d00:	48 89 c7             	mov    %rax,%rdi
  400d03:	e8 f2 fc ff ff       	callq  4009fa <handle>
		}

		if(strcmp(argv[1], "-o") == 0 && strcmp(argv[3], "-i") == 0) {
  400d08:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d0c:	48 83 c0 08          	add    $0x8,%rax
  400d10:	48 8b 00             	mov    (%rax),%rax
  400d13:	be 7d 0f 40 00       	mov    $0x400f7d,%esi
  400d18:	48 89 c7             	mov    %rax,%rdi
  400d1b:	e8 60 fa ff ff       	callq  400780 <strcmp@plt>
  400d20:	85 c0                	test   %eax,%eax
  400d22:	75 3d                	jne    400d61 <main+0x1f3>
  400d24:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d28:	48 83 c0 18          	add    $0x18,%rax
  400d2c:	48 8b 00             	mov    (%rax),%rax
  400d2f:	be 7a 0f 40 00       	mov    $0x400f7a,%esi
  400d34:	48 89 c7             	mov    %rax,%rdi
  400d37:	e8 44 fa ff ff       	callq  400780 <strcmp@plt>
  400d3c:	85 c0                	test   %eax,%eax
  400d3e:	75 21                	jne    400d61 <main+0x1f3>
			handle(argv[4], argv[2]);
  400d40:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d44:	48 83 c0 10          	add    $0x10,%rax
  400d48:	48 8b 10             	mov    (%rax),%rdx
  400d4b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d4f:	48 83 c0 20          	add    $0x20,%rax
  400d53:	48 8b 00             	mov    (%rax),%rax
  400d56:	48 89 d6             	mov    %rdx,%rsi
  400d59:	48 89 c7             	mov    %rax,%rdi
  400d5c:	e8 99 fc ff ff       	callq  4009fa <handle>
		}
	}

	return SUCCESS;
  400d61:	b8 00 00 00 00       	mov    $0x0,%eax
}
  400d66:	c9                   	leaveq 
  400d67:	c3                   	retq   
  400d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d6f:	00 

0000000000400d70 <__libc_csu_init>:
  400d70:	41 57                	push   %r15
  400d72:	41 56                	push   %r14
  400d74:	41 89 ff             	mov    %edi,%r15d
  400d77:	41 55                	push   %r13
  400d79:	41 54                	push   %r12
  400d7b:	4c 8d 25 8e 10 20 00 	lea    0x20108e(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400d82:	55                   	push   %rbp
  400d83:	48 8d 2d 8e 10 20 00 	lea    0x20108e(%rip),%rbp        # 601e18 <__init_array_end>
  400d8a:	53                   	push   %rbx
  400d8b:	49 89 f6             	mov    %rsi,%r14
  400d8e:	49 89 d5             	mov    %rdx,%r13
  400d91:	4c 29 e5             	sub    %r12,%rbp
  400d94:	48 83 ec 08          	sub    $0x8,%rsp
  400d98:	48 c1 fd 03          	sar    $0x3,%rbp
  400d9c:	e8 2f f9 ff ff       	callq  4006d0 <_init>
  400da1:	48 85 ed             	test   %rbp,%rbp
  400da4:	74 20                	je     400dc6 <__libc_csu_init+0x56>
  400da6:	31 db                	xor    %ebx,%ebx
  400da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400daf:	00 
  400db0:	4c 89 ea             	mov    %r13,%rdx
  400db3:	4c 89 f6             	mov    %r14,%rsi
  400db6:	44 89 ff             	mov    %r15d,%edi
  400db9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400dbd:	48 83 c3 01          	add    $0x1,%rbx
  400dc1:	48 39 eb             	cmp    %rbp,%rbx
  400dc4:	75 ea                	jne    400db0 <__libc_csu_init+0x40>
  400dc6:	48 83 c4 08          	add    $0x8,%rsp
  400dca:	5b                   	pop    %rbx
  400dcb:	5d                   	pop    %rbp
  400dcc:	41 5c                	pop    %r12
  400dce:	41 5d                	pop    %r13
  400dd0:	41 5e                	pop    %r14
  400dd2:	41 5f                	pop    %r15
  400dd4:	c3                   	retq   
  400dd5:	90                   	nop
  400dd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ddd:	00 00 00 

0000000000400de0 <__libc_csu_fini>:
  400de0:	f3 c3                	repz retq 

Desensamblado de la sección .fini:

0000000000400de4 <_fini>:
  400de4:	48 83 ec 08          	sub    $0x8,%rsp
  400de8:	48 83 c4 08          	add    $0x8,%rsp
  400dec:	c3                   	retq   
