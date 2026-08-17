package com.byazt.vg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1750, 34})
/* loaded from: classes3.dex */
public class l {
    public InputStream hp;

    /* renamed from: l, reason: collision with root package name */
    public int f26564l;

    public l(InputStream inputStream) {
        hp(inputStream);
    }

    public final void hp(InputStream inputStream) {
        this.hp = inputStream;
        this.f26564l = 0;
    }

    public final void jx() throws IOException {
        long jSkip = this.hp.skip(4L);
        this.f26564l = (int) (this.f26564l + jSkip);
        if (jSkip != 4) {
            throw new EOFException();
        }
    }

    public final int l() throws IOException {
        int i2 = 0;
        for (int i3 = 0; i3 != 32; i3 += 8) {
            int i4 = this.hp.read();
            if (i4 == -1) {
                throw new EOFException();
            }
            this.f26564l++;
            i2 |= i4 << i3;
        }
        return i2;
    }

    public final void hp() throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            hp((InputStream) null);
        }
    }

    public void l(int i2) throws IOException {
        int iL = l();
        if (iL != i2) {
            throw new IOException(String.format("Expected: 0x%08x got: 0x%08x", Integer.valueOf(i2), Integer.valueOf(iL)));
        }
    }

    public final int[] hp(int i2) throws IOException {
        int[] iArr = new int[i2];
        int i3 = 0;
        while (i2 > 0) {
            iArr[i3] = l();
            i2--;
            i3++;
        }
        return iArr;
    }
}
