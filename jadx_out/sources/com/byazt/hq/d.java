package com.byazt.hq;

import java.io.IOException;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 158, 670})
/* loaded from: classes2.dex */
public abstract class d {
    public static d hp(n nVar, String str) {
        Charset charset = com.byazt.ru.jx.f25382w;
        if (nVar != null) {
            Charset charsetJx = nVar.jx();
            if (charsetJx == null) {
                nVar = n.hp(nVar + "; charset=utf-8");
            } else {
                charset = charsetJx;
            }
        }
        return hp(nVar, str.getBytes(charset));
    }

    public abstract n hp();

    public abstract void hp(com.byazt.raq.j jVar) throws IOException;

    public long l() throws IOException {
        return -1L;
    }

    public static d hp(n nVar, byte[] bArr) {
        return hp(nVar, bArr, 0, bArr.length);
    }

    public static d hp(final n nVar, final byte[] bArr, final int i2, final int i3) {
        if (bArr != null) {
            com.byazt.ru.jx.hp(bArr.length, i2, i3);
            return new d() { // from class: com.byazt.hq.d.1
                @Override // com.byazt.hq.d
                public n hp() {
                    return nVar;
                }

                @Override // com.byazt.hq.d
                public long l() {
                    return i3;
                }

                @Override // com.byazt.hq.d
                public void hp(com.byazt.raq.j jVar) throws IOException {
                    jVar.jx(bArr, i2, i3);
                }
            };
        }
        throw new NullPointerException("content == null");
    }
}
