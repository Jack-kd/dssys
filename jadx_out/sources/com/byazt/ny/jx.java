package com.byazt.ny;

import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.ymw.di;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1653, 30})
/* loaded from: classes3.dex */
public class jx extends hp {
    /* JADX INFO: Access modifiers changed from: private */
    public di hp() {
        di diVar = new di(sz.getContext(), 1, s.u().j());
        boolean zHp = diVar.hp(0);
        hp(zHp ? 1 : 0, System.currentTimeMillis(), 0L);
        try {
            diVar.l(0);
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public void hp(JSONObject jSONObject, int i2) {
        if (System.currentTimeMillis() - com.byazt.cqt.hp.hp().l() > hp(i2)) {
            com.byazt.dnb.s.hp(new eb("reg_sensor") { // from class: com.byazt.ny.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    jx.this.hp();
                }
            });
        }
    }
}
