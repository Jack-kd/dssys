package com.byazt.qk;

import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 64, 150})
/* loaded from: classes3.dex */
public class q {
    public static void hp(final String str, final String str2, final mp mpVar) {
        final long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        com.byazt.lf.k.hp().hp(new com.byazt.fq.hp() { // from class: com.byazt.qk.q.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp(q.hp(str)).jx(str2).a(ky.xs(mpVar)).hp("dynamic_backup_render_new");
                lVarHp.hp(jCurrentTimeMillis);
                return lVarHp;
            }
        }, "dynamic_backup_render_new");
    }

    public static void hp(final int i2, final String str, final String str2, final mp mpVar) {
        com.byazt.lf.k.hp().w(new com.byazt.fq.hp() { // from class: com.byazt.qk.q.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp(q.hp(str)).jx(str2).a(ky.xs(mpVar)).l(i2).eb(com.byazt.jz.eb.hp(i2));
            }
        });
    }

    public static int hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return 5;
        }
        str.getClass();
        switch (str) {
        }
        return 5;
    }
}
