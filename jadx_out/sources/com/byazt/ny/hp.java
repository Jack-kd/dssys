package com.byazt.ny;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1653, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hp(int r4) {
        /*
            r3 = this;
            com.byazt.jkd.gu r0 = com.byazt.jz.sz.l()
            org.json.JSONObject r0 = r0.h()
            if (r0 == 0) goto L25
            boolean r1 = r3.l(r4)
            r2 = 0
            if (r1 == 0) goto L18
            java.lang.String r4 = "explicit_interval"
            int r4 = r0.optInt(r4, r2)
            goto L26
        L18:
            boolean r4 = r3.jx(r4)
            if (r4 == 0) goto L25
            java.lang.String r4 = "ambiguous_interval"
            int r4 = r0.optInt(r4, r2)
            goto L26
        L25:
            r4 = -1
        L26:
            r0 = 86400000(0x5265c00, float:7.82218E-36)
            if (r4 <= r0) goto L2c
            return r0
        L2c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ny.hp.hp(int):int");
    }

    public boolean jx(int i2) {
        return i2 == 2 || i2 == 3;
    }

    public boolean l(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public void hp(int i2, long j2, long j3) {
        com.byazt.cqt.hp hpVarHp = com.byazt.cqt.hp.hp();
        hpVarHp.hp(i2);
        hpVarHp.hp(j2, j3);
    }

    public int hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("delay", 200);
        }
        return 200;
    }
}
