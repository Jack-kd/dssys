package com.byazt.jde;

import android.content.Context;
import com.byazt.qt.a;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 250, 34})
/* loaded from: classes.dex */
public class l {
    public static com.byazt.ruu.jx hp;

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.ruu.j f21437l;

    public static void hp() {
        if (f21437l == null) {
            f21437l = new com.byazt.ruu.j() { // from class: com.byazt.jde.l.1
                @Override // com.byazt.ruu.j
                public int hp(Context context, float f2) {
                    return xh.jx(context, f2);
                }
            };
        }
        if (hp == null) {
            hp = new com.byazt.ruu.jx() { // from class: com.byazt.jde.l.2
                @Override // com.byazt.ruu.jx
                public void hp(com.byazt.bl.l lVar, a aVar) {
                    com.byazt.jdb.j.hp(lVar, aVar);
                }

                @Override // com.byazt.ruu.jx
                public void hp(Context context, com.byazt.bl.l lVar, String str) {
                    com.byazt.jdb.j.hp(lVar.j(), lVar.w(), lVar.s(), str);
                }
            };
        }
        com.byazt.ruu.hp.hp(hp, f21437l);
    }
}
