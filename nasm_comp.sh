output_name="$1"
shift

for file in "$@"; do
    nasm -f elf64 "$file"
done

ld -o "$output_name" *.o