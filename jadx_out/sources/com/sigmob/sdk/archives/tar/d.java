package com.sigmob.sdk.archives.tar;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* loaded from: classes4.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    public static final int f35425a = 512;

    /* renamed from: b, reason: collision with root package name */
    public static final int f35426b = 10240;

    /* renamed from: c, reason: collision with root package name */
    private InputStream f35427c;

    /* renamed from: d, reason: collision with root package name */
    private OutputStream f35428d;

    /* renamed from: e, reason: collision with root package name */
    private byte[] f35429e;

    /* renamed from: f, reason: collision with root package name */
    private int f35430f;

    /* renamed from: g, reason: collision with root package name */
    private int f35431g;

    /* renamed from: h, reason: collision with root package name */
    private int f35432h;

    /* renamed from: i, reason: collision with root package name */
    private int f35433i;

    /* renamed from: j, reason: collision with root package name */
    private int f35434j;

    public d(InputStream inputStream) {
        this(inputStream, 10240);
    }

    private boolean i() throws IOException {
        if (this.f35427c == null) {
            throw new IOException("reading from an output buffer");
        }
        this.f35431g = 0;
        int i2 = this.f35432h;
        int i3 = 0;
        while (true) {
            if (i2 <= 0) {
                break;
            }
            long j2 = this.f35427c.read(this.f35429e, i3, i2);
            if (j2 != -1) {
                i3 = (int) (i3 + j2);
                i2 = (int) (i2 - j2);
            } else {
                if (i3 == 0) {
                    return false;
                }
                Arrays.fill(this.f35429e, i3, i2 + i3, (byte) 0);
            }
        }
        this.f35430f++;
        return true;
    }

    private void j() throws IOException {
        OutputStream outputStream = this.f35428d;
        if (outputStream == null) {
            throw new IOException("writing to an input buffer");
        }
        outputStream.write(this.f35429e, 0, this.f35432h);
        this.f35428d.flush();
        this.f35431g = 0;
        this.f35430f++;
        Arrays.fill(this.f35429e, (byte) 0);
    }

    public int a() {
        return this.f35432h;
    }

    public int b() {
        return this.f35433i;
    }

    public void c() throws IOException {
        if (this.f35427c == null) {
            throw new IOException("reading (via skip) from an output buffer");
        }
        if (this.f35431g < this.f35434j || i()) {
            this.f35431g++;
        }
    }

    public byte[] d() throws IOException {
        if (this.f35427c == null) {
            if (this.f35428d == null) {
                throw new IOException("input buffer is closed");
            }
            throw new IOException("reading from an output buffer");
        }
        if (this.f35431g >= this.f35434j && !i()) {
            return null;
        }
        int i2 = this.f35433i;
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f35429e, this.f35431g * i2, bArr, 0, i2);
        this.f35431g++;
        return bArr;
    }

    public int e() {
        return this.f35430f;
    }

    public int f() {
        return this.f35431g - 1;
    }

    public void g() throws IOException {
        if (this.f35428d == null) {
            throw new IOException("writing to an input buffer");
        }
        if (this.f35431g > 0) {
            j();
        }
    }

    public void h() throws IOException {
        if (this.f35428d == null) {
            InputStream inputStream = this.f35427c;
            if (inputStream != null) {
                if (inputStream != System.in) {
                    inputStream.close();
                }
                this.f35427c = null;
                return;
            }
            return;
        }
        g();
        OutputStream outputStream = this.f35428d;
        if (outputStream == System.out || outputStream == System.err) {
            return;
        }
        outputStream.close();
        this.f35428d = null;
    }

    public d(InputStream inputStream, int i2) {
        this(inputStream, i2, 512);
    }

    private void a(int i2, int i3) {
        this.f35432h = i2;
        this.f35433i = i3;
        int i4 = i2 / i3;
        this.f35434j = i4;
        this.f35429e = new byte[i2];
        if (this.f35427c != null) {
            this.f35430f = -1;
            this.f35431g = i4;
        } else {
            this.f35430f = 0;
            this.f35431g = 0;
        }
    }

    public void b(byte[] bArr) throws IOException {
        if (this.f35428d == null) {
            if (this.f35427c != null) {
                throw new IOException("writing to an input buffer");
            }
            throw new IOException("Output buffer is closed");
        }
        if (bArr.length != this.f35433i) {
            throw new IOException("record to write has length '" + bArr.length + "' which is not the record size of '" + this.f35433i + "'");
        }
        if (this.f35431g >= this.f35434j) {
            j();
        }
        byte[] bArr2 = this.f35429e;
        int i2 = this.f35431g;
        int i3 = this.f35433i;
        System.arraycopy(bArr, 0, bArr2, i2 * i3, i3);
        this.f35431g++;
    }

    public d(InputStream inputStream, int i2, int i3) {
        this.f35427c = inputStream;
        this.f35428d = null;
        a(i2, i3);
    }

    public void a(byte[] bArr, int i2) throws IOException {
        if (this.f35428d == null) {
            if (this.f35427c != null) {
                throw new IOException("writing to an input buffer");
            }
            throw new IOException("Output buffer is closed");
        }
        if (this.f35433i + i2 <= bArr.length) {
            if (this.f35431g >= this.f35434j) {
                j();
            }
            byte[] bArr2 = this.f35429e;
            int i3 = this.f35431g;
            int i4 = this.f35433i;
            System.arraycopy(bArr, i2, bArr2, i3 * i4, i4);
            this.f35431g++;
            return;
        }
        throw new IOException("record has length '" + bArr.length + "' with offset '" + i2 + "' which is less than the record size of '" + this.f35433i + "'");
    }

    public d(OutputStream outputStream) {
        this(outputStream, 10240);
    }

    public boolean a(byte[] bArr) {
        int iB = b();
        for (int i2 = 0; i2 < iB; i2++) {
            if (bArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public d(OutputStream outputStream, int i2) {
        this(outputStream, i2, 512);
    }

    public d(OutputStream outputStream, int i2, int i3) {
        this.f35427c = null;
        this.f35428d = outputStream;
        a(i2, i3);
    }
}
