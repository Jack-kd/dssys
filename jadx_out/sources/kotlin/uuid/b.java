package kotlin.uuid;

import kotlin.jvm.internal.j;
import kotlin.text.g;

/* loaded from: classes5.dex */
public abstract class b extends a {
    public static final void d(long j2, byte[] dst, int i2, int i3, int i4) {
        j.e(dst, "dst");
        int i5 = 7 - i3;
        int i6 = 8 - i4;
        if (i6 > i5) {
            return;
        }
        while (true) {
            int i7 = g.a()[(int) ((j2 >> (i5 << 3)) & 255)];
            int i8 = i2 + 1;
            dst[i2] = (byte) (i7 >> 8);
            i2 += 2;
            dst[i8] = (byte) i7;
            if (i5 == i6) {
                return;
            } else {
                i5--;
            }
        }
    }

    public static final void e(byte[] bArr, int i2, long j2) {
        j.e(bArr, "<this>");
        int i3 = 7;
        while (-1 < i3) {
            bArr[i2] = (byte) (j2 >> (i3 << 3));
            i3--;
            i2++;
        }
    }
}
