package com.byazt.bry;

import com.byazt.raq.e;
import com.byazt.raq.jl;
import com.byazt.raq.w;
import com.byazt.ru.jx;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1974, 28})
/* loaded from: classes2.dex */
public final class hp {
    public byte[] eb;

    /* renamed from: s, reason: collision with root package name */
    public byte[] f18655s;
    public static final byte[] hp = {42};

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f18653l = new String[0];
    public static final String[] jx = {"*"};

    /* renamed from: j, reason: collision with root package name */
    public static final hp f18652j = new hp();

    /* renamed from: w, reason: collision with root package name */
    public final AtomicBoolean f18656w = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final CountDownLatch f18654a = new CountDownLatch(1);

    public static hp hp() {
        return f18652j;
    }

    private void jx() throws IOException {
        InputStream resourceAsStream = hp.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        w wVarHp = jl.hp(new e(jl.hp(resourceAsStream)));
        try {
            byte[] bArr = new byte[wVarHp.e()];
            wVarHp.hp(bArr);
            byte[] bArr2 = new byte[wVarHp.e()];
            wVarHp.hp(bArr2);
            synchronized (this) {
                this.eb = bArr;
                this.f18655s = bArr2;
            }
            this.f18654a.countDown();
        } finally {
            jx.hp(wVarHp);
        }
    }

    private void l() {
        boolean z2 = false;
        while (true) {
            try {
                try {
                    jx();
                    break;
                } catch (InterruptedIOException unused) {
                    z2 = true;
                } catch (IOException e2) {
                    com.byazt.ksw.w.l().hp(5, "Failed to read public suffix list", e2);
                    if (!z2) {
                        return;
                    }
                }
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (!z2) {
            return;
        }
        Thread.currentThread().interrupt();
    }

    public String hp(String str) throws InterruptedException {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrHp = hp(strArrSplit);
        if (strArrSplit.length == strArrHp.length && strArrHp[0].charAt(0) != '!') {
            return null;
        }
        if (strArrHp[0].charAt(0) == '!') {
            length = strArrSplit.length;
            length2 = strArrHp.length;
        } else {
            length = strArrSplit.length;
            length2 = strArrHp.length + 1;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i2 = length - length2; i2 < strArrSplit2.length; i2++) {
            sb.append(strArrSplit2[i2]);
            sb.append('.');
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private String[] hp(String[] strArr) throws InterruptedException {
        String str;
        String strHp;
        String strHp2;
        int i2 = 0;
        if (!this.f18656w.get() && this.f18656w.compareAndSet(false, true)) {
            l();
        } else {
            try {
                this.f18654a.await();
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this) {
            if (this.eb == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i3 = 0; i3 < strArr.length; i3++) {
            bArr[i3] = strArr[i3].getBytes(jx.f25382w);
        }
        int i4 = 0;
        while (true) {
            str = null;
            if (i4 >= length) {
                strHp = null;
                break;
            }
            strHp = hp(this.eb, bArr, i4);
            if (strHp != null) {
                break;
            }
            i4++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i5 = 0; i5 < bArr2.length - 1; i5++) {
                bArr2[i5] = hp;
                strHp2 = hp(this.eb, bArr2, i5);
                if (strHp2 != null) {
                    break;
                }
            }
            strHp2 = null;
        } else {
            strHp2 = null;
        }
        if (strHp2 != null) {
            while (true) {
                if (i2 >= length - 1) {
                    break;
                }
                String strHp3 = hp(this.f18655s, bArr, i2);
                if (strHp3 != null) {
                    str = strHp3;
                    break;
                }
                i2++;
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        }
        if (strHp == null && strHp2 == null) {
            return jx;
        }
        String[] strArrSplit = strHp != null ? strHp.split("\\.") : f18653l;
        String[] strArrSplit2 = strHp2 != null ? strHp2.split("\\.") : f18653l;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    private static String hp(byte[] bArr, byte[][] bArr2, int i2) {
        int i3;
        boolean z2;
        int i4;
        int i5;
        int length = bArr.length;
        int i6 = 0;
        while (i6 < length) {
            int i7 = (i6 + length) / 2;
            while (i7 >= 0 && bArr[i7] != 10) {
                i7--;
            }
            int i8 = i7 + 1;
            int i9 = 1;
            while (true) {
                i3 = i8 + i9;
                if (bArr[i3] == 10) {
                    break;
                }
                i9++;
            }
            int i10 = i3 - i8;
            int i11 = i2;
            boolean z3 = false;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (z3) {
                    i4 = 46;
                    z2 = false;
                } else {
                    z2 = z3;
                    i4 = bArr2[i11][i12] & 255;
                }
                i5 = i4 - (bArr[i8 + i13] & 255);
                if (i5 != 0) {
                    break;
                }
                i13++;
                i12++;
                if (i13 == i10) {
                    break;
                }
                if (bArr2[i11].length != i12) {
                    z3 = z2;
                } else {
                    if (i11 == bArr2.length - 1) {
                        break;
                    }
                    i11++;
                    i12 = -1;
                    z3 = true;
                }
            }
            if (i5 >= 0) {
                if (i5 <= 0) {
                    int i14 = i10 - i13;
                    int length2 = bArr2[i11].length - i12;
                    while (true) {
                        i11++;
                        if (i11 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i11].length;
                    }
                    if (length2 >= i14) {
                        if (length2 <= i14) {
                            return new String(bArr, i8, i10, jx.f25382w);
                        }
                    }
                }
                i6 = i3 + 1;
            }
            length = i7;
        }
        return null;
    }
}
