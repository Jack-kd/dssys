package org.eclipse.jetty.util;

import java.io.IOException;
import okio.Utf8;

/* loaded from: classes5.dex */
public abstract class Utf8Appendable {

    /* renamed from: d, reason: collision with root package name */
    public static final R1.c f52612d = R1.b.a(Utf8Appendable.class);

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f52613e = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, 11, 6, 6, 6, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f52614f = {0, 12, 24, 36, 60, 96, 84, 12, 12, 12, com.sigmob.sdk.archives.tar.e.f35442H, 72, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 12, 12, 12, 12, 12, 0, 12, 0, 12, 12, 12, 24, 12, 12, 12, 12, 12, 24, 12, 24, 12, 12, 12, 12, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 12, 12, 12, 12, 36, 12, 36, 12, 12, 12, 36, 12, 12, 12, 12, 12, 36, 12, 36, 12, 12, 12, 36, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    /* renamed from: a, reason: collision with root package name */
    public final Appendable f52615a;

    /* renamed from: b, reason: collision with root package name */
    public int f52616b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f52617c;

    public static class NotUtf8Exception extends IllegalArgumentException {
        public NotUtf8Exception(String str) {
            super("Not valid UTF8! " + str);
        }
    }

    public Utf8Appendable(Appendable appendable) {
        this.f52615a = appendable;
    }

    public void a(byte b3) {
        try {
            c(b3);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void b(byte[] bArr, int i2, int i3) {
        int i4 = i3 + i2;
        while (i2 < i4) {
            try {
                c(bArr[i2]);
                i2++;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public void c(byte b3) throws IOException {
        if (b3 > 0 && this.f52616b == 0) {
            this.f52615a.append((char) (b3 & 255));
            return;
        }
        int i2 = b3 & 255;
        byte b4 = f52613e[i2];
        int i3 = this.f52616b;
        int i4 = i3 == 0 ? (255 >> b4) & i2 : (b3 & 63) | (this.f52617c << 6);
        this.f52617c = i4;
        byte b5 = f52614f[i3 + b4];
        if (b5 == 0) {
            this.f52616b = b5;
            if (i4 < 55296) {
                this.f52615a.append((char) i4);
                return;
            }
            for (char c2 : Character.toChars(i4)) {
                this.f52615a.append(c2);
            }
            return;
        }
        if (b5 != 12) {
            this.f52616b = b5;
            return;
        }
        String str = "byte " + n.h(b3) + " in state " + (this.f52616b / 12);
        this.f52617c = 0;
        this.f52616b = 0;
        this.f52615a.append(Utf8.REPLACEMENT_CHARACTER);
        throw new NotUtf8Exception(str);
    }

    public void d() throws IOException {
        if (e()) {
            return;
        }
        this.f52617c = 0;
        this.f52616b = 0;
        try {
            this.f52615a.append(Utf8.REPLACEMENT_CHARACTER);
            throw new NotUtf8Exception("incomplete UTF8 sequence");
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean e() {
        return this.f52616b == 0;
    }

    public void f() {
        this.f52616b = 0;
    }

    public String g() throws IOException {
        if (!e()) {
            this.f52617c = 0;
            this.f52616b = 0;
            try {
                this.f52615a.append(Utf8.REPLACEMENT_CHARACTER);
                NotUtf8Exception notUtf8Exception = new NotUtf8Exception("incomplete UTF8 sequence");
                R1.c cVar = f52612d;
                cVar.g(notUtf8Exception.toString(), new Object[0]);
                cVar.a(notUtf8Exception);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.f52615a.toString();
    }
}
