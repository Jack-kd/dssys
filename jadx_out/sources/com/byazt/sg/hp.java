package com.byazt.sg;

import android.text.TextUtils;
import com.byazt.gg.a;
import com.byazt.xs.jx;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1083, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.ov.hp {
    public hp(jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
    }

    @Override // com.byazt.ov.hp
    public void hp() throws NumberFormatException {
        Object obj;
        jx jxVar;
        jx jxVarL;
        int i2;
        int i3;
        Map<String, Object> map = this.f24188a;
        if (map == null || map.size() <= 0 || (obj = this.f24188a.get("id")) == null) {
            return;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf) || (jxVarL = (jxVar = this.jx).l(jxVar)) == null) {
            return;
        }
        jx jxVarJ = jxVarL.j(strValueOf);
        if (jxVarJ instanceof com.byazt.tz.hp) {
            com.byazt.tz.hp hpVar = (com.byazt.tz.hp) jxVarJ;
            int i4 = 3;
            try {
                i2 = Integer.parseInt(String.valueOf(this.f24188a.get("col")));
                try {
                    i4 = Integer.parseInt(String.valueOf(this.f24188a.get("row")));
                    i3 = Integer.parseInt(String.valueOf(this.f24188a.get("duration")));
                } catch (Exception unused) {
                    i3 = 600;
                    hpVar.hp(i2, i4, i3);
                }
            } catch (Exception unused2) {
                i2 = 4;
            }
            hpVar.hp(i2, i4, i3);
        }
    }
}
