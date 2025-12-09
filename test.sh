#!/bin/bash
# Compile
make

# Create a dummy secret
echo "This is a secret message" > secret.txt

# Run Encode
./stego -e sample.bmp secret.txt output.bmp

# Run Decode
./stego -d output.bmp

# Compare
if diff secret.txt decoded.txt > /dev/null; then
    echo "✅ Success: Decoded data matches original."
else
    echo "❌ Fail: Data corruption detected."
fi

# Cleanup
rm output.bmp decoded.txt secret.txt
