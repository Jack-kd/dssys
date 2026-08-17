package com.byazt.mey;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 589, 34})
/* loaded from: classes3.dex */
public class l {
    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.a aVar, boolean z2) {
        com.byazt.aqw.l lVarWv;
        if (hpVar != null && (lVarWv = hpVar.wv()) != null && lVarWv.e() == null) {
            com.byazt.aw.l.j("TMe", "使用聚合信息流广告自渲染模版混用场景时，需设置MediationNativeToBannerListener监听回调否则会影响相关功能使用，具体可以参考接入文档，若不能及时设置，建议修改瀑布流配置为模版信息流广告暂不进行混用。");
        }
        new com.byazt.mz.w(context, hpVar, aVar, z2).hp();
    }

    public static void l(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.j jVar) {
        new com.byazt.xc.eb(context, hpVar, jVar).hp();
    }

    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.jx jxVar, boolean z2) {
        new com.byazt.mz.a(context, hpVar, jxVar, z2).hp();
    }

    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.l lVar) {
        new com.byazt.wr.jx(context, hpVar, lVar).hp();
    }

    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.eb ebVar) {
        new com.byazt.hs.jx(context, hpVar, ebVar).hp();
    }

    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.ys.hp hpVar2, boolean z2) {
        new com.byazt.ji.jx(context, hpVar, hpVar2, z2).hp();
    }

    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.mx.hp hpVar2, com.byazt.p000if.hp hpVar3, boolean z2) {
        com.byazt.nj.jx jxVar = new com.byazt.nj.jx(context, hpVar, hpVar3, z2);
        if (hpVar2 != null && hpVar2.q() != 0) {
            jxVar.hp(hpVar2.q());
        } else {
            jxVar.hp();
        }
    }

    public static void hp(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.j jVar) {
        new com.byazt.xc.jx(context, hpVar, jVar).hp();
    }
}
