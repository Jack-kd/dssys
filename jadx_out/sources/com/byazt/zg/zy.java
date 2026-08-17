package com.byazt.zg;

@com.byazt.kj.hp(hp = {0, 1, 308, 302})
/* loaded from: classes3.dex */
public class zy {
    public static boolean hp = true;

    static {
        try {
            com.byazt.dnb.eb.hp("tobEmbedEncrypt");
        } catch (UnsatisfiedLinkError unused) {
            hp = false;
        }
    }

    public static byte[] hp(byte[] bArr, int i2) {
        com.byazt.pg.jx jxVar = (com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog");
        return jxVar != null ? jxVar.encrypt(bArr, i2) : new byte[0];
    }

    public static boolean hp() {
        com.byazt.aw.l.l("TMe", "applogSOLoadSuccess = " + hp);
        return hp;
    }
}
