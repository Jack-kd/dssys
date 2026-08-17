package com.byazt.vn;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1312, 94})
/* loaded from: classes3.dex */
public class eb extends a {
    public eb(q qVar) {
        super(qVar);
    }

    public int[] hp(int i2) throws IOException {
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = readInt();
        }
        return iArr;
    }

    public void l(int i2, int i3) throws IOException {
        int i4 = readInt();
        if (i4 == i3 || i4 < i2) {
            l(i2, -1);
        } else if (i4 != i2) {
            throw new IOException(String.format("Expected: 0x%08x, got: 0x%08x", Integer.valueOf(i2), Integer.valueOf(i4)));
        }
    }

    @Override // com.byazt.vn.a, java.io.DataInput
    public final int skipBytes(int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int iSkipBytes = super.skipBytes(i2 - i3);
            if (iSkipBytes <= 0) {
                break;
            }
            i3 += iSkipBytes;
        }
        return i3;
    }

    public void hp() throws IOException {
        skipBytes(4);
    }

    public void hp(int i2, int i3) throws IOException {
        int i4 = readInt();
        if (i4 != i2 && i4 != i3) {
            throw new IOException(String.format("Expected: 0x%08x or 0x%08x, got: 0x%08x", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        }
    }

    public void hp(short s2) throws IOException {
        short s3 = readShort();
        if (s3 != s2) {
            throw new IOException(String.format("Expected: 0x%08x, got: 0x%08x", Short.valueOf(s2), Short.valueOf(s3)));
        }
    }

    public void hp(byte b3) throws IOException {
        byte b4 = readByte();
        if (b4 != b3) {
            throw new IOException(String.format("Expected: 0x%08x, got: 0x%08x", Byte.valueOf(b3), Byte.valueOf(b4)));
        }
    }
}
