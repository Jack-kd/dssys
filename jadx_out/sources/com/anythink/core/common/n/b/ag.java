package com.anythink.core.common.n.b;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes2.dex */
public abstract class ag implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    private Reader f6722a;

    public static final class a extends Reader {

        /* renamed from: a, reason: collision with root package name */
        private final com.anythink.core.common.n.c.e f6726a;

        /* renamed from: b, reason: collision with root package name */
        private final Charset f6727b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f6728c;

        /* renamed from: d, reason: collision with root package name */
        private Reader f6729d;

        public a(com.anythink.core.common.n.c.e eVar, Charset charset) {
            this.f6726a = eVar;
            this.f6727b = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.f6728c = true;
            Reader reader = this.f6729d;
            if (reader != null) {
                reader.close();
            } else {
                this.f6726a.close();
            }
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i2, int i3) throws IOException {
            if (this.f6728c) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.f6729d;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.f6726a.i(), com.anythink.core.common.n.b.a.c.a(this.f6726a, this.f6727b));
                this.f6729d = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i2, i3);
        }
    }

    private static ag a(x xVar, String str) {
        Charset charset = StandardCharsets.UTF_8;
        if (xVar != null) {
            Charset charsetA = xVar.a((Charset) null);
            if (charsetA == null) {
                xVar = x.b(xVar + "; charset=utf-8");
            } else {
                charset = charsetA;
            }
        }
        com.anythink.core.common.n.c.c cVarB = new com.anythink.core.common.n.c.c().b(str, charset);
        return a(xVar, cVarB.b(), cVarB);
    }

    private InputStream e() {
        return c().i();
    }

    private byte[] f() throws IOException {
        long jB = b();
        if (jB > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(jB)));
        }
        com.anythink.core.common.n.c.e eVarC = c();
        try {
            byte[] bArrY = eVarC.y();
            eVarC.close();
            if (jB == -1 || jB == bArrY.length) {
                return bArrY;
            }
            throw new IOException("Content-Length (" + jB + ") and stream length (" + bArrY.length + ") disagree");
        } catch (Throwable th) {
            if (eVarC != null) {
                try {
                    eVarC.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private Reader g() {
        Reader reader = this.f6722a;
        if (reader != null) {
            return reader;
        }
        a aVar = new a(c(), h());
        this.f6722a = aVar;
        return aVar;
    }

    private Charset h() {
        x xVarA = a();
        return xVarA != null ? xVarA.a(StandardCharsets.UTF_8) : StandardCharsets.UTF_8;
    }

    public abstract x a();

    public abstract long b();

    public abstract com.anythink.core.common.n.c.e c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.anythink.core.common.n.b.a.c.a(c());
    }

    public final String d() {
        com.anythink.core.common.n.c.e eVarC = c();
        try {
            String strA = eVarC.a(com.anythink.core.common.n.b.a.c.a(eVarC, h()));
            eVarC.close();
            return strA;
        } catch (Throwable th) {
            if (eVarC != null) {
                try {
                    eVarC.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static ag a(x xVar, byte[] bArr) {
        return a(xVar, bArr.length, new com.anythink.core.common.n.c.c().d(bArr));
    }

    private static ag a(x xVar, com.anythink.core.common.n.c.f fVar) {
        return a(xVar, fVar.j(), new com.anythink.core.common.n.c.c().d(fVar));
    }

    public static ag a(final x xVar, final long j2, final com.anythink.core.common.n.c.e eVar) {
        if (eVar != null) {
            return new ag() { // from class: com.anythink.core.common.n.b.ag.1
                @Override // com.anythink.core.common.n.b.ag
                public final x a() {
                    return xVar;
                }

                @Override // com.anythink.core.common.n.b.ag
                public final long b() {
                    return j2;
                }

                @Override // com.anythink.core.common.n.b.ag
                public final com.anythink.core.common.n.c.e c() {
                    return eVar;
                }
            };
        }
        throw new NullPointerException("source == null");
    }
}
