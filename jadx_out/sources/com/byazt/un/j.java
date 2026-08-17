package com.byazt.un;

import android.text.TextUtils;
import com.byazt.gy.s;
import com.byazt.uid.eb;

@com.byazt.kj.hp(hp = {0, 1, 1167, 38})
/* loaded from: classes3.dex */
public class j implements com.byazt.gj.jx {
    @Override // com.byazt.gj.jx
    public void a(com.byazt.kf.jx jxVar, s sVar) {
    }

    @Override // com.byazt.gj.jx
    public void eb(com.byazt.kf.jx jxVar, s sVar) {
        if (jxVar == null || TextUtils.isEmpty(jxVar.hp)) {
            return;
        }
        final String str = jxVar.hp;
        final long jHp = sVar != null ? sVar.hp() : System.currentTimeMillis();
        com.byazt.dnb.s.hp(new eb("tmax_record_on_ad_end") { // from class: com.byazt.un.j.2
            @Override // java.lang.Runnable
            public void run() {
                a.hp().j(str, jHp);
            }
        });
    }

    @Override // com.byazt.gj.jx
    public void hp(com.byazt.kf.jx jxVar, s sVar) {
    }

    @Override // com.byazt.gj.jx
    public void j(com.byazt.kf.jx jxVar, s sVar) {
    }

    @Override // com.byazt.gj.jx
    public void jx(com.byazt.kf.jx jxVar, s sVar) {
    }

    @Override // com.byazt.gj.jx
    public void l(com.byazt.kf.jx jxVar, s sVar) {
        if (jxVar == null || TextUtils.isEmpty(jxVar.hp)) {
            return;
        }
        final String str = jxVar.hp;
        final long jHp = sVar != null ? sVar.hp() : System.currentTimeMillis();
        com.byazt.dnb.s.hp(new eb("tmax_record_on_ad_start") { // from class: com.byazt.un.j.1
            @Override // java.lang.Runnable
            public void run() {
                a.hp().jx(str, jHp);
            }
        });
    }

    @Override // com.byazt.gj.jx
    public void w(com.byazt.kf.jx jxVar, s sVar) {
    }
}
