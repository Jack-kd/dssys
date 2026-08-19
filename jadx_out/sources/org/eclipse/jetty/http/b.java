package org.eclipse.jetty.http;

/* loaded from: classes5.dex */
public class b extends o {

    /* renamed from: q, reason: collision with root package name */
    public final String f52161q;

    public b(String str) {
        this.f52161q = str;
    }

    @Override // org.eclipse.jetty.http.o
    public String b() {
        int i2 = this.f52342i;
        int i3 = this.f52346m;
        if (i2 == i3) {
            return null;
        }
        return org.eclipse.jetty.util.m.g(this.f52335b, i2, i3 - i2, this.f52161q);
    }

    @Override // org.eclipse.jetty.http.o
    public String c() {
        int i2 = this.f52342i;
        int i3 = this.f52343j;
        if (i2 == i3) {
            return null;
        }
        return org.eclipse.jetty.util.o.e(this.f52335b, i2, i3 - i2);
    }

    @Override // org.eclipse.jetty.http.o
    public String e() {
        int i2 = this.f52339f;
        int i3 = this.f52340g;
        if (i2 == i3) {
            return null;
        }
        return org.eclipse.jetty.util.m.g(this.f52335b, i2, i3 - i2, this.f52161q);
    }

    @Override // org.eclipse.jetty.http.o
    public String f() {
        int i2 = this.f52342i;
        int i3 = this.f52344k;
        if (i2 == i3) {
            return null;
        }
        return org.eclipse.jetty.util.m.g(this.f52335b, i2, i3 - i2, this.f52161q);
    }

    @Override // org.eclipse.jetty.http.o
    public int g() {
        int i2 = this.f52340g;
        if (i2 == this.f52342i) {
            return -1;
        }
        return org.eclipse.jetty.util.n.f(this.f52335b, i2 + 1, (r1 - i2) - 1, 10);
    }

    @Override // org.eclipse.jetty.http.o
    public String h() {
        int i2 = this.f52344k;
        if (i2 == this.f52345l) {
            return null;
        }
        return org.eclipse.jetty.util.m.g(this.f52335b, i2 + 1, (r1 - i2) - 1, this.f52161q);
    }

    @Override // org.eclipse.jetty.http.o
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
        return org.eclipse.jetty.util.m.g(this.f52335b, i2, (i3 - i2) - 1, this.f52161q);
    }

    @Override // org.eclipse.jetty.http.o
    public String toString() {
        if (this.f52336c == null) {
            byte[] bArr = this.f52335b;
            int i2 = this.f52337d;
            this.f52336c = org.eclipse.jetty.util.m.g(bArr, i2, this.f52346m - i2, this.f52161q);
        }
        return this.f52336c;
    }
}
