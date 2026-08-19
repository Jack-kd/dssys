package com.anythink.core.common.n.b.a.i;

import com.anythink.core.common.n.b.a.g.c;
import com.anythink.core.common.n.c.e;
import com.anythink.core.common.n.c.l;
import com.anythink.core.common.n.c.n;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f6546a = "publicsuffixes.gz";

    /* renamed from: e, reason: collision with root package name */
    private static final byte f6550e = 33;

    /* renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f6552g = new AtomicBoolean(false);

    /* renamed from: h, reason: collision with root package name */
    private final CountDownLatch f6553h = new CountDownLatch(1);

    /* renamed from: i, reason: collision with root package name */
    private byte[] f6554i;

    /* renamed from: j, reason: collision with root package name */
    private byte[] f6555j;

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f6547b = {42};

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f6548c = new String[0];

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f6549d = {"*"};

    /* renamed from: f, reason: collision with root package name */
    private static final a f6551f = new a();

    public static a a() {
        return f6551f;
    }

    private void b() {
        boolean z2 = false;
        while (true) {
            try {
                try {
                    c();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z2 = true;
                } catch (IOException e2) {
                    c.e().a(5, "Failed to read public suffix list", e2);
                    if (!z2) {
                        return;
                    }
                }
            } finally {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    private void c() {
        InputStream resourceAsStream = a.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        e eVarA = n.a(new l(n.a(resourceAsStream)));
        try {
            byte[] bArr = new byte[eVarA.m()];
            eVarA.b(bArr);
            byte[] bArr2 = new byte[eVarA.m()];
            eVarA.b(bArr2);
            eVarA.close();
            synchronized (this) {
                this.f6554i = bArr;
                this.f6555j = bArr2;
            }
            this.f6553h.countDown();
        } catch (Throwable th) {
            try {
                eVarA.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final String a(String str) throws InterruptedException {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrA = a(strArrSplit);
        if (strArrSplit.length == strArrA.length && strArrA[0].charAt(0) != '!') {
            return null;
        }
        if (strArrA[0].charAt(0) == '!') {
            length = strArrSplit.length;
            length2 = strArrA.length;
        } else {
            length = strArrSplit.length;
            length2 = strArrA.length + 1;
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

    private String[] a(String[] strArr) throws InterruptedException {
        String str;
        String strA;
        String strA2;
        String[] strArrSplit;
        String[] strArrSplit2;
        int i2 = 0;
        if (this.f6552g.get() || !this.f6552g.compareAndSet(false, true)) {
            try {
                this.f6553h.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z2 = false;
            while (true) {
                try {
                    try {
                        try {
                            c();
                            break;
                        } finally {
                            if (z2) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    } catch (IOException e2) {
                        c.e().a(5, "Failed to read public suffix list", e2);
                        if (z2) {
                        }
                    }
                } catch (InterruptedIOException unused2) {
                    Thread.interrupted();
                    z2 = true;
                }
            }
        }
        synchronized (this) {
            if (this.f6554i == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i3 = 0; i3 < strArr.length; i3++) {
            bArr[i3] = strArr[i3].getBytes(StandardCharsets.UTF_8);
        }
        int i4 = 0;
        while (true) {
            str = null;
            if (i4 >= length) {
                strA = null;
                break;
            }
            strA = a(this.f6554i, bArr, i4);
            if (strA != null) {
                break;
            }
            i4++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i5 = 0; i5 < bArr2.length - 1; i5++) {
                bArr2[i5] = f6547b;
                strA2 = a(this.f6554i, bArr2, i5);
                if (strA2 != null) {
                    break;
                }
            }
            strA2 = null;
        } else {
            strA2 = null;
        }
        if (strA2 != null) {
            while (true) {
                if (i2 >= length - 1) {
                    break;
                }
                String strA3 = a(this.f6555j, bArr, i2);
                if (strA3 != null) {
                    str = strA3;
                    break;
                }
                i2++;
            }
        }
        if (str != null) {
            return "!".concat(str).split("\\.");
        }
        if (strA == null && strA2 == null) {
            return f6549d;
        }
        if (strA != null) {
            strArrSplit = strA.split("\\.");
        } else {
            strArrSplit = f6548c;
        }
        if (strA2 != null) {
            strArrSplit2 = strA2.split("\\.");
        } else {
            strArrSplit2 = f6548c;
        }
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    private static String a(byte[] bArr, byte[][] bArr2, int i2) {
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
                            return new String(bArr, i8, i10, StandardCharsets.UTF_8);
                        }
                    }
                }
                i6 = i3 + 1;
            }
            length = i7;
        }
        return null;
    }

    private void a(byte[] bArr, byte[] bArr2) {
        this.f6554i = bArr;
        this.f6555j = bArr2;
        this.f6552g.set(true);
        this.f6553h.countDown();
    }
}
