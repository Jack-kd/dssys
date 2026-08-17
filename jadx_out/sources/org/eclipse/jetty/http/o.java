package org.eclipse.jetty.http;

import java.io.UnsupportedEncodingException;
import java.net.URI;

/* loaded from: classes5.dex */
public class o {

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f52333p = new byte[0];

    /* renamed from: c, reason: collision with root package name */
    public String f52336c;

    /* renamed from: d, reason: collision with root package name */
    public int f52337d;

    /* renamed from: e, reason: collision with root package name */
    public int f52338e;

    /* renamed from: f, reason: collision with root package name */
    public int f52339f;

    /* renamed from: g, reason: collision with root package name */
    public int f52340g;

    /* renamed from: h, reason: collision with root package name */
    public int f52341h;

    /* renamed from: i, reason: collision with root package name */
    public int f52342i;

    /* renamed from: j, reason: collision with root package name */
    public int f52343j;

    /* renamed from: k, reason: collision with root package name */
    public int f52344k;

    /* renamed from: l, reason: collision with root package name */
    public int f52345l;

    /* renamed from: m, reason: collision with root package name */
    public int f52346m;

    /* renamed from: a, reason: collision with root package name */
    public boolean f52334a = false;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f52335b = f52333p;

    /* renamed from: n, reason: collision with root package name */
    public boolean f52347n = false;

    /* renamed from: o, reason: collision with root package name */
    public final org.eclipse.jetty.util.q f52348o = new org.eclipse.jetty.util.q(64);

    public o() {
    }

    public void a() {
        this.f52346m = 0;
        this.f52345l = 0;
        this.f52344k = 0;
        this.f52343j = 0;
        this.f52342i = 0;
        this.f52340g = 0;
        this.f52339f = 0;
        this.f52338e = 0;
        this.f52337d = 0;
        this.f52335b = f52333p;
        this.f52336c = "";
        this.f52347n = false;
    }

    public String b() {
        int i2 = this.f52342i;
        int i3 = this.f52346m;
        if (i2 == i3) {
            return null;
        }
        return o(i2, i3 - i2);
    }

    public String c() {
        int i2 = this.f52342i;
        int i3 = this.f52343j;
        if (i2 == i3) {
            return null;
        }
        int i4 = i3 - i2;
        boolean z2 = false;
        while (i2 < this.f52343j) {
            byte b3 = this.f52335b[i2];
            if (b3 == 37) {
                if (!z2) {
                    this.f52348o.f();
                    org.eclipse.jetty.util.q qVar = this.f52348o;
                    byte[] bArr = this.f52335b;
                    int i5 = this.f52342i;
                    qVar.b(bArr, i5, i2 - i5);
                    z2 = true;
                }
                int i6 = i2 + 2;
                int i7 = this.f52343j;
                if (i6 >= i7) {
                    throw new IllegalArgumentException("Bad % encoding: " + this);
                }
                byte[] bArr2 = this.f52335b;
                int i8 = i2 + 1;
                if (bArr2[i8] == 117) {
                    i2 += 5;
                    if (i2 >= i7) {
                        throw new IllegalArgumentException("Bad %u encoding: " + this);
                    }
                    try {
                        this.f52348o.h().append(new String(Character.toChars(org.eclipse.jetty.util.n.f(bArr2, i6, 4, 16))));
                    } catch (Exception e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    this.f52348o.a((byte) (org.eclipse.jetty.util.n.f(bArr2, i8, 2, 16) & 255));
                    i2 = i6;
                }
            } else if (z2) {
                this.f52348o.a(b3);
            }
            i2++;
        }
        return !z2 ? o(this.f52342i, i4) : this.f52348o.toString();
    }

    public String d(String str) throws UnsupportedEncodingException {
        int i2 = this.f52342i;
        int i3 = this.f52343j;
        byte[] bArr = null;
        if (i2 == i3) {
            return null;
        }
        int i4 = i3 - i2;
        int length = 0;
        while (true) {
            int i5 = this.f52343j;
            if (i2 >= i5) {
                if (bArr != null) {
                    return org.eclipse.jetty.util.m.g(bArr, 0, length, str);
                }
                byte[] bArr2 = this.f52335b;
                int i6 = this.f52342i;
                return org.eclipse.jetty.util.m.g(bArr2, i6, i5 - i6, str);
            }
            byte[] bArr3 = this.f52335b;
            byte b3 = bArr3[i2];
            if (b3 == 37) {
                if (bArr == null) {
                    bArr = new byte[i4];
                    System.arraycopy(bArr3, this.f52342i, bArr, 0, length);
                }
                int i7 = i2 + 2;
                int i8 = this.f52343j;
                if (i7 >= i8) {
                    throw new IllegalArgumentException("Bad % encoding: " + this);
                }
                byte[] bArr4 = this.f52335b;
                int i9 = i2 + 1;
                if (bArr4[i9] == 117) {
                    i2 += 5;
                    if (i2 >= i8) {
                        throw new IllegalArgumentException("Bad %u encoding: " + this);
                    }
                    try {
                        byte[] bytes = new String(Character.toChars(org.eclipse.jetty.util.n.f(bArr4, i7, 4, 16))).getBytes(str);
                        System.arraycopy(bytes, 0, bArr, length, bytes.length);
                        length += bytes.length;
                    } catch (Exception e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    bArr[length] = (byte) (org.eclipse.jetty.util.n.f(bArr4, i9, 2, 16) & 255);
                    i2 = i7;
                    length++;
                }
            } else if (bArr == null) {
                length++;
            } else {
                bArr[length] = b3;
                length++;
            }
            i2++;
        }
    }

    public String e() {
        int i2 = this.f52339f;
        int i3 = this.f52340g;
        if (i2 == i3) {
            return null;
        }
        return o(i2, i3 - i2);
    }

    public String f() {
        int i2 = this.f52342i;
        int i3 = this.f52344k;
        if (i2 == i3) {
            return null;
        }
        return o(i2, i3 - i2);
    }

    public int g() {
        return this.f52341h;
    }

    public String h() {
        int i2 = this.f52344k;
        if (i2 == this.f52345l) {
            return null;
        }
        return o(i2 + 1, (r1 - i2) - 1);
    }

    public String i(String str) {
        int i2 = this.f52344k;
        if (i2 == this.f52345l) {
            return null;
        }
        return org.eclipse.jetty.util.m.g(this.f52335b, i2 + 1, (r1 - i2) - 1, str);
    }

    public String j() {
        int i2 = this.f52337d;
        int i3 = this.f52338e;
        if (i2 == i3) {
            return null;
        }
        int i4 = i3 - i2;
        if (i4 == 5) {
            byte[] bArr = this.f52335b;
            if (bArr[i2] == 104 && bArr[i2 + 1] == 116 && bArr[i2 + 2] == 116 && bArr[i2 + 3] == 112) {
                return "http";
            }
        }
        if (i4 == 6) {
            byte[] bArr2 = this.f52335b;
            if (bArr2[i2] == 104 && bArr2[i2 + 1] == 116 && bArr2[i2 + 2] == 116 && bArr2[i2 + 3] == 112 && bArr2[i2 + 4] == 115) {
                return "https";
            }
        }
        return o(i2, (i3 - i2) - 1);
    }

    public void k(String str) {
        byte[] bytes = str.getBytes();
        m(bytes, 0, bytes.length);
        this.f52336c = str;
    }

    public void l(byte[] bArr, int i2, int i3) {
        this.f52336c = null;
        m(bArr, i2, i3);
    }

    public final void m(byte[] bArr, int i2, int i3) {
        char c2;
        char c3 = 0;
        this.f52347n = false;
        this.f52335b = bArr;
        int i4 = i2 + i3;
        this.f52346m = i4;
        this.f52337d = i2;
        this.f52338e = i2;
        this.f52339f = i2;
        this.f52340g = i2;
        this.f52341h = -1;
        this.f52342i = i2;
        this.f52343j = i4;
        this.f52344k = i4;
        this.f52345l = i4;
        int i5 = i2;
        int i6 = i5;
        while (i5 < i4) {
            byte[] bArr2 = this.f52335b;
            char c4 = (char) (bArr2[i5] & 255);
            int i7 = i5 + 1;
            switch (c3) {
                case 0:
                    c2 = 1;
                    if (c4 == '#') {
                        this.f52343j = i5;
                        this.f52344k = i5;
                        this.f52345l = i5;
                    } else if (c4 == '*') {
                        this.f52342i = i5;
                        i6 = i5;
                        i5 = i7;
                        c3 = '\n';
                    } else if (c4 == '/') {
                        i6 = i5;
                        i5 = i7;
                        c3 = c2;
                    } else if (c4 == ';') {
                        this.f52343j = i5;
                        i6 = i5;
                        i5 = i7;
                        c3 = '\b';
                    } else if (c4 != '?') {
                        c3 = 2;
                    } else {
                        this.f52343j = i5;
                        this.f52344k = i5;
                        i6 = i5;
                        i5 = i7;
                        c3 = '\t';
                    }
                    i6 = i5;
                    i5 = i7;
                case 1:
                    if ((this.f52334a || this.f52337d != this.f52338e) && c4 == '/') {
                        this.f52339f = i7;
                        int i8 = this.f52346m;
                        this.f52340g = i8;
                        this.f52342i = i8;
                        i5 = i7;
                        c3 = 4;
                    } else {
                        if (c4 != ';' && c4 != '?' && c4 != '#') {
                            this.f52339f = i6;
                            this.f52340g = i6;
                            i5 = i7;
                        }
                        c3 = 7;
                    }
                    break;
                case 2:
                    c2 = 1;
                    if (i3 > 6 && c4 == 't') {
                        int i9 = i2 + 3;
                        if (bArr2[i9] == 58) {
                            i7 = i2 + 4;
                        } else {
                            i9 = i2 + 4;
                            if (bArr2[i9] == 58) {
                                i7 = i2 + 5;
                            } else {
                                i9 = i2 + 5;
                                if (bArr2[i9] == 58) {
                                    i7 = i2 + 6;
                                }
                            }
                        }
                        i5 = i9;
                        c4 = ':';
                    }
                    if (c4 == '#') {
                        this.f52343j = i5;
                        this.f52344k = i5;
                        this.f52345l = i5;
                    } else if (c4 == '/') {
                        i5 = i7;
                        c3 = 7;
                    } else if (c4 == '?') {
                        this.f52343j = i5;
                        this.f52344k = i5;
                        i5 = i7;
                        c3 = '\t';
                    } else if (c4 == ':') {
                        int i10 = i7 + 1;
                        this.f52338e = i7;
                        this.f52342i = i7;
                        if (((char) (bArr2[i10] & 255)) == '/') {
                            i5 = i10;
                            i6 = i7;
                            c3 = c2;
                        } else {
                            this.f52339f = i7;
                            this.f52340g = i7;
                            i5 = i10;
                            i6 = i7;
                            c3 = 7;
                        }
                    } else if (c4 == ';') {
                        this.f52343j = i5;
                        i5 = i7;
                        c3 = '\b';
                    }
                    i5 = i7;
                    break;
                case 3:
                default:
                    i5 = i7;
                case 4:
                    if (c4 == '/') {
                        this.f52342i = i5;
                        this.f52340g = i5;
                        i6 = i5;
                        c3 = 7;
                    } else if (c4 == ':') {
                        this.f52340g = i5;
                        c3 = 6;
                    } else if (c4 == '@') {
                        this.f52339f = i7;
                    } else if (c4 == '[') {
                        c3 = 5;
                    }
                    i5 = i7;
                case 5:
                    if (c4 == '/') {
                        throw new IllegalArgumentException("No closing ']' for " + org.eclipse.jetty.util.m.g(this.f52335b, i2, i3, org.eclipse.jetty.util.o.f52684b));
                    }
                    if (c4 == ']') {
                        c3 = 4;
                    }
                    i5 = i7;
                case 6:
                    if (c4 == '/') {
                        this.f52342i = i5;
                        if (this.f52340g <= this.f52338e) {
                            this.f52340g = i5;
                        }
                        i6 = i5;
                        i5 = i7;
                        c3 = 7;
                    } else {
                        i5 = i7;
                    }
                case 7:
                    if (c4 == '#') {
                        this.f52343j = i5;
                        this.f52344k = i5;
                        this.f52345l = i5;
                    } else if (c4 == '%') {
                        this.f52347n = true;
                    } else if (c4 == ';') {
                        this.f52343j = i5;
                        c3 = '\b';
                    } else if (c4 == '?') {
                        this.f52343j = i5;
                        this.f52344k = i5;
                        c3 = '\t';
                    }
                    i5 = i7;
                case '\b':
                    if (c4 == '#') {
                        this.f52344k = i5;
                        this.f52345l = i5;
                    } else if (c4 == '?') {
                        this.f52344k = i5;
                        c3 = '\t';
                    }
                    i5 = i7;
                case '\t':
                    if (c4 == '#') {
                        this.f52345l = i5;
                    }
                    i5 = i7;
                case '\n':
                    throw new IllegalArgumentException("only '*'");
            }
        }
        int i11 = this.f52340g;
        if (i11 < this.f52342i) {
            this.f52341h = org.eclipse.jetty.util.n.f(this.f52335b, i11 + 1, (r2 - i11) - 1, 10);
        }
    }

    public void n(byte[] bArr, int i2, int i3) {
        this.f52336c = null;
        this.f52347n = false;
        this.f52335b = bArr;
        int i4 = i2 + i3;
        this.f52346m = i4;
        this.f52337d = i2;
        this.f52338e = i2;
        this.f52339f = i2;
        this.f52340g = i4;
        this.f52341h = -1;
        this.f52342i = i4;
        this.f52343j = i4;
        this.f52344k = i4;
        this.f52345l = i4;
        int i5 = i2;
        char c2 = 4;
        while (true) {
            if (i5 >= i4) {
                break;
            }
            char c3 = (char) (this.f52335b[i5] & 255);
            int i6 = i5 + 1;
            if (c2 == 4) {
                if (c3 == ':') {
                    this.f52340g = i5;
                    break;
                } else if (c3 == '[') {
                    c2 = 5;
                }
            } else if (c2 != 5) {
                continue;
            } else {
                if (c3 == '/') {
                    throw new IllegalArgumentException("No closing ']' for " + org.eclipse.jetty.util.m.g(this.f52335b, i2, i3, org.eclipse.jetty.util.o.f52684b));
                }
                if (c3 == ']') {
                    c2 = 4;
                }
            }
            i5 = i6;
        }
        int i7 = this.f52340g;
        if (i7 >= this.f52342i) {
            throw new IllegalArgumentException("No port");
        }
        this.f52341h = org.eclipse.jetty.util.n.f(this.f52335b, i7 + 1, (r10 - i7) - 1, 10);
        this.f52342i = i2;
    }

    public final String o(int i2, int i3) {
        this.f52348o.f();
        this.f52348o.b(this.f52335b, i2, i3);
        return this.f52348o.toString();
    }

    public String toString() {
        if (this.f52336c == null) {
            int i2 = this.f52337d;
            this.f52336c = o(i2, this.f52346m - i2);
        }
        return this.f52336c;
    }

    public o(URI uri) {
        k(uri.toASCIIString());
    }
}
