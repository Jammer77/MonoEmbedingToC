#include <mono/jit/jit.h>
#include <mono/metadata/assembly.h>

int main()
{
    MonoDomain *domain;
    domain = mono_jit_init_version ("myapp", "v4.0.30319");
    assembly = mono_domain_assembly_open (domain, "file.exe");
    return 0;    
}