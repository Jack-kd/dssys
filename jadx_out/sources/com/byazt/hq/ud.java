package com.byazt.hq;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 158, 591})
/* loaded from: classes2.dex */
public abstract class ud implements Closeable {
    private Charset eb() {
        n nVarHp = hp();
        return nVarHp != null ? nVarHp.hp(com.byazt.ru.jx.f25382w) : com.byazt.ru.jx.f25382w;
    }

    public static ud hp(n nVar, byte[] bArr) {
        return hp(nVar, bArr.length, new com.byazt.raq.jx().jx(bArr));
    }

    public final String a() throws IOException {
        com.byazt.raq.w wVarJx = jx();
        try {
            String strHp = wVarJx.hp(com.byazt.ru.jx.hp(wVarJx, eb()));
            com.byazt.ru.jx.hp(wVarJx);
            return strHp;
        } catch (OutOfMemoryError unused) {
            com.byazt.ru.jx.hp(wVarJx);
            return null;
        } catch (Throwable th) {
            com.byazt.ru.jx.hp(wVarJx);
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.byazt.ru.jx.hp(jx());
    }

    public abstract n hp();

    public final InputStream j() {
        return jx().a();
    }

    public abstract com.byazt.raq.w jx();

    public abstract long l();

    public final byte[] w() throws IOException {
        long jL = l();
        if (jL > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(jL)));
        }
        com.byazt.raq.w wVarJx = jx();
        try {
            byte[] bArrXs = wVarJx.xs();
            com.byazt.ru.jx.hp(wVarJx);
            if (jL == -1 || jL == bArrXs.length) {
                return bArrXs;
            }
            throw new IOException("Content-Length (" + jL + ") and stream length (" + bArrXs.length + ") disagree");
        } catch (Throwable th) {
            com.byazt.ru.jx.hp(wVarJx);
            throw th;
        }
    }

    public static ud hp(final n nVar, final long j2, final com.byazt.raq.w wVar) {
        if (wVar != null) {
            return new ud() { // from class: com.byazt.hq.ud.1
                @Override // com.byazt.hq.ud
                public n hp() {
                    return nVar;
                }

                @Override // com.byazt.hq.ud
                public com.byazt.raq.w jx() {
                    return wVar;
                }

                @Override // com.byazt.hq.ud
                public long l() {
                    return j2;
                }
            };
        }
        throw new NullPointerException("source == null");
    }
}
