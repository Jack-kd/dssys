package com.byazt.gb;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 861, 38})
/* loaded from: classes2.dex */
public class j {
    public InputStream hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f20370l;

    public j() {
    }

    public final void hp(InputStream inputStream, boolean z2) {
        this.hp = inputStream;
        this.f20370l = z2;
        this.jx = 0;
    }

    public final void jx(int i2) throws IOException {
        if (i2 > 0) {
            long j2 = i2;
            long jSkip = this.hp.skip(j2);
            this.jx = (int) (this.jx + jSkip);
            if (jSkip != j2) {
                throw new EOFException();
            }
        }
    }

    public final int l() throws IOException {
        return hp(4);
    }

    public j(InputStream inputStream, boolean z2) {
        hp(inputStream, z2);
    }

    public final int[] l(int i2) throws IOException {
        int[] iArr = new int[i2];
        hp(iArr, 0, i2);
        return iArr;
    }

    public final void hp() throws IOException {
        InputStream inputStream = this.hp;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            hp(null, false);
        }
    }

    public final void jx() throws IOException {
        jx(4);
    }

    public final int hp(int i2) throws IOException {
        if (i2 >= 0 && i2 <= 4) {
            int i3 = 0;
            if (this.f20370l) {
                for (int i4 = (i2 - 1) * 8; i4 >= 0; i4 -= 8) {
                    int i5 = this.hp.read();
                    if (i5 == -1) {
                        throw new EOFException();
                    }
                    this.jx++;
                    i3 |= i5 << i4;
                }
                return i3;
            }
            int i6 = i2 * 8;
            int i7 = 0;
            while (i3 != i6) {
                int i8 = this.hp.read();
                if (i8 == -1) {
                    throw new EOFException();
                }
                this.jx++;
                i7 |= i8 << i3;
                i3 += 8;
            }
            return i7;
        }
        throw new IllegalArgumentException();
    }

    public final void hp(int[] iArr, int i2, int i3) throws IOException {
        while (i3 > 0) {
            iArr[i2] = l();
            i3--;
            i2++;
        }
    }
}
