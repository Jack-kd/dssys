package com.sigmob.sdk.base.views.gif;

import com.czhj.sdk.logger.SigmobLog;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes4.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37044a = "GifHeaderParser";

    /* renamed from: b, reason: collision with root package name */
    private static final int f37045b = 2;

    /* renamed from: c, reason: collision with root package name */
    private static final int f37046c = 10;

    /* renamed from: d, reason: collision with root package name */
    private static final int f37047d = 256;

    /* renamed from: e, reason: collision with root package name */
    private final byte[] f37048e = new byte[256];

    /* renamed from: f, reason: collision with root package name */
    private int f37049f = 0;

    /* renamed from: g, reason: collision with root package name */
    private c f37050g;

    /* renamed from: h, reason: collision with root package name */
    private ByteBuffer f37051h;

    private void b(int i2) {
        boolean z2 = false;
        while (!z2 && !d() && this.f37050g.f37034d <= i2) {
            int iE = e();
            if (iE == 33) {
                int iE2 = e();
                if (iE2 != 1) {
                    if (iE2 == 249) {
                        this.f37050g.f37033c = new b();
                        i();
                    } else if (iE2 != 254 && iE2 == 255) {
                        g();
                        String str = "";
                        for (int i3 = 0; i3 < 11; i3++) {
                            str = str + ((char) this.f37048e[i3]);
                        }
                        if (str.equals("NETSCAPE2.0")) {
                            l();
                        }
                    }
                }
                o();
            } else if (iE == 44) {
                c cVar = this.f37050g;
                if (cVar.f37033c == null) {
                    cVar.f37033c = new b();
                }
                f();
            } else if (iE != 59) {
                this.f37050g.f37042l = 1;
            } else {
                z2 = true;
            }
        }
    }

    private boolean d() {
        return this.f37050g.f37042l != 0;
    }

    private int e() {
        try {
            return this.f37051h.get() & 255;
        } catch (Exception unused) {
            this.f37050g.f37042l = 1;
            return 0;
        }
    }

    private void f() {
        this.f37050g.f37033c.f37024e = m();
        this.f37050g.f37033c.f37025f = m();
        this.f37050g.f37033c.f37026g = m();
        this.f37050g.f37033c.f37027h = m();
        int iE = e();
        boolean z2 = (iE & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iE & 7) + 1);
        b bVar = this.f37050g.f37033c;
        bVar.f37023d = (iE & 64) != 0;
        if (z2) {
            bVar.f37028i = a(iPow);
        } else {
            bVar.f37028i = null;
        }
        this.f37050g.f37033c.f37020a = this.f37051h.position();
        p();
        if (d()) {
            return;
        }
        c cVar = this.f37050g;
        cVar.f37034d++;
        cVar.f37035e.add(cVar.f37033c);
    }

    private int g() {
        int iE = e();
        this.f37049f = iE;
        int i2 = 0;
        if (iE > 0) {
            while (true) {
                try {
                    int i3 = this.f37049f;
                    if (i2 >= i3) {
                        break;
                    }
                    int i4 = i3 - i2;
                    this.f37051h.get(this.f37048e, i2, i4);
                    i2 += i4;
                } catch (Exception unused) {
                    this.f37050g.f37042l = 1;
                }
            }
        }
        return i2;
    }

    private void h() {
        b(Integer.MAX_VALUE);
    }

    private void i() {
        e();
        int iE = e();
        b bVar = this.f37050g.f37033c;
        int i2 = (iE & 28) >> 2;
        bVar.f37022c = i2;
        if (i2 == 0) {
            bVar.f37022c = 1;
        }
        bVar.f37030k = (iE & 1) != 0;
        int iM = m();
        if (iM < 2) {
            iM = 10;
        }
        b bVar2 = this.f37050g.f37033c;
        bVar2.f37021b = iM * 10;
        bVar2.f37029j = e();
        e();
    }

    private void j() {
        String str = "";
        for (int i2 = 0; i2 < 6; i2++) {
            str = str + ((char) e());
        }
        if (!str.startsWith("GIF")) {
            this.f37050g.f37042l = 1;
            return;
        }
        k();
        if (!this.f37050g.f37037g || d()) {
            return;
        }
        c cVar = this.f37050g;
        cVar.f37036f = a(cVar.f37038h);
        c cVar2 = this.f37050g;
        cVar2.f37031a = cVar2.f37036f[cVar2.f37032b];
    }

    private void k() {
        this.f37050g.f37043m = m();
        this.f37050g.f37039i = m();
        int iE = e();
        c cVar = this.f37050g;
        cVar.f37037g = (iE & 128) != 0;
        cVar.f37038h = 2 << (iE & 7);
        cVar.f37032b = e();
        this.f37050g.f37041k = e();
    }

    private void l() {
        do {
            g();
            byte[] bArr = this.f37048e;
            if (bArr[0] == 1) {
                int i2 = bArr[1] & 255;
                int i3 = bArr[2] & 255;
                c cVar = this.f37050g;
                int i4 = (i3 << 8) | i2;
                cVar.f37040j = i4;
                if (i4 == 0) {
                    cVar.f37040j = -1;
                }
            }
            if (this.f37049f <= 0) {
                return;
            }
        } while (!d());
    }

    private int m() {
        return this.f37051h.getShort();
    }

    private void n() {
        this.f37051h = null;
        Arrays.fill(this.f37048e, (byte) 0);
        this.f37050g = new c();
        this.f37049f = 0;
    }

    private void o() {
        int iE;
        do {
            try {
                iE = e();
                ByteBuffer byteBuffer = this.f37051h;
                byteBuffer.position(byteBuffer.position() + iE);
            } catch (IllegalArgumentException unused) {
                return;
            }
        } while (iE > 0);
    }

    private void p() {
        e();
        o();
    }

    public d a(ByteBuffer byteBuffer) {
        n();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f37051h = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.f37051h.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public c c() {
        if (this.f37051h == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (d()) {
            return this.f37050g;
        }
        j();
        if (!d()) {
            h();
            c cVar = this.f37050g;
            if (cVar.f37034d < 0) {
                cVar.f37042l = 1;
            }
        }
        return this.f37050g;
    }

    public d a(byte[] bArr) {
        if (bArr != null) {
            a(ByteBuffer.wrap(bArr));
            return this;
        }
        this.f37051h = null;
        this.f37050g.f37042l = 2;
        return this;
    }

    public boolean b() {
        j();
        if (!d()) {
            b(2);
        }
        return this.f37050g.f37034d > 1;
    }

    public void a() {
        this.f37051h = null;
        this.f37050g = null;
    }

    private int[] a(int i2) {
        byte[] bArr = new byte[i2 * 3];
        int[] iArr = null;
        try {
            this.f37051h.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = bArr[i4] & 255;
                int i6 = i4 + 2;
                int i7 = bArr[i4 + 1] & 255;
                i4 += 3;
                int i8 = i3 + 1;
                iArr[i3] = (i7 << 8) | (i5 << 16) | (-16777216) | (bArr[i6] & 255);
                i3 = i8;
            }
            return iArr;
        } catch (BufferUnderflowException e2) {
            SigmobLog.d("Format Error Reading Color Table", e2);
            this.f37050g.f37042l = 1;
            return iArr;
        }
    }
}
