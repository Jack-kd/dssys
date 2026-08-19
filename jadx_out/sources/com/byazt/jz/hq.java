package com.byazt.jz;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, 158})
/* loaded from: classes.dex */
public class hq implements Function<SparseArray<Object>, Object> {
    public static final String GET_CONFIG_TIME_OUT_MSG = "配置未加载完成，请稍后2-5秒请求广告（修改建议：适当将请求非开屏类型广告的时机往后移）";
    public static final String NOT_INIT_TIPS_MSG = "please exec TTAdSdk.init and TTAdSdk.start before load ad";
    public static final String UNKNOWN_ERR_MSG = "未知异常";
    public volatile Context hp;

    public hq(Context context) {
        this.hp = (context == null ? sz.getContext() : context).getApplicationContext();
    }

    public static boolean canMultiThreadLoad() {
        return AdSdkInitializerHolder.isSdkInitSuccess();
    }

    public static boolean checkExpressAdParamValid(com.byazt.jt.l lVar, boolean z2) {
        if (lVar == null) {
            return false;
        }
        return (z2 && !sz.l().q(lVar.j())) || lVar.s() > 0.0f;
    }

    public static void execLoadAd(com.byazt.uid.eb ebVar, int i2) {
        if (canMultiThreadLoad()) {
            com.byazt.uid.w.j(ebVar);
        } else {
            com.byazt.uid.q.f26242l.jl().execute(ebVar);
        }
    }

    private Context getContext() {
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        return this.hp;
    }

    public void loadAdByType(int i2, PluginValueSet pluginValueSet, Function<SparseArray<Object>, Object> function) {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp(pluginValueSet);
        hpVarHp.hp(1, 0);
        PluginValueSet pluginValueSetL = hpVarHp.l();
        if (i2 == 1) {
            boolean zBooleanValue = pluginValueSetL.booleanValue(2);
            com.byazt.jt.l lVarHp = com.byazt.zn.wv.hp(i2, pluginValueSetL);
            if (zBooleanValue) {
                loadBannerExpressAd(lVarHp, new com.byazt.de.s(function));
                return;
            } else {
                loadNativeAd(i2, lVarHp, new com.byazt.de.eb(function));
                return;
            }
        }
        if (i2 == 3) {
            loadSplashAd(com.byazt.zn.wv.hp(3, pluginValueSetL), new com.byazt.de.jx(function), pluginValueSetL.intValue(3));
            return;
        }
        switch (i2) {
            case 5:
                boolean zBooleanValue2 = pluginValueSetL.booleanValue(2);
                com.byazt.jt.l lVarHp2 = com.byazt.zn.wv.hp(i2, pluginValueSetL);
                if (!zBooleanValue2) {
                    loadFeedAd(lVarHp2, new com.byazt.de.w(function));
                    break;
                } else {
                    loadNativeExpressAd(lVarHp2, new com.byazt.de.s(function));
                    break;
                }
            case 6:
                loadStream(com.byazt.zn.wv.hp(6, pluginValueSetL), new com.byazt.de.w(function));
                break;
            case 7:
                loadRewardVideoAd(com.byazt.zn.wv.hp(7, pluginValueSetL), new com.byazt.de.q(function));
                break;
            case 8:
                loadFullScreenVideoAd(com.byazt.zn.wv.hp(8, pluginValueSetL), new com.byazt.de.a(function));
                break;
            case 9:
                boolean zBooleanValue3 = pluginValueSetL.booleanValue(2);
                com.byazt.jt.l lVarHp3 = com.byazt.zn.wv.hp(9, pluginValueSetL);
                if (!zBooleanValue3) {
                    loadDrawFeedAd(lVarHp3, new com.byazt.de.j(function));
                    break;
                } else {
                    loadExpressDrawFeedAd(lVarHp3, new com.byazt.de.s(function));
                    break;
                }
        }
    }

    public void loadBannerExpressAd(com.byazt.jt.l lVar, com.byazt.p000if.a aVar) {
        com.byazt.hl.hp.j().hp(1, lVar, aVar);
    }

    public void loadDrawFeedAd(com.byazt.jt.l lVar, com.byazt.p000if.l lVar2) {
        com.byazt.jl.hp.j().hp(9, lVar, (com.byazt.jt.l) lVar2);
    }

    public void loadExpressDrawFeedAd(com.byazt.jt.l lVar, com.byazt.p000if.a aVar) {
        com.byazt.jl.hp.j().hp(9, lVar, aVar);
    }

    public void loadFeedAd(com.byazt.jt.l lVar, com.byazt.p000if.jx jxVar) {
        com.byazt.hp.hp.j().hp(5, lVar, (com.byazt.jt.l) jxVar);
    }

    public void loadFullScreenVideoAd(com.byazt.jt.l lVar, com.byazt.p000if.j jVar) {
        com.byazt.ash.l.hp().hp(lVar, new com.byazt.ash.j(jVar));
    }

    public void loadNativeAd(int i2, com.byazt.jt.l lVar, com.byazt.p000if.w wVar) {
        com.byazt.hl.hp.j().hp(i2, lVar, (com.byazt.jt.l) wVar);
    }

    public void loadNativeExpressAd(com.byazt.jt.l lVar, com.byazt.p000if.a aVar) {
        com.byazt.hp.hp.j().hp(5, lVar, aVar);
    }

    public void loadRewardVideoAd(com.byazt.jt.l lVar, com.byazt.p000if.eb ebVar) {
        com.byazt.ash.eb.hp().hp(lVar, new com.byazt.ash.j(ebVar));
    }

    public void loadSplashAd(com.byazt.jt.l lVar, com.byazt.p000if.hp hpVar, int i2) {
        com.byazt.qfg.a.hp(getContext()).hp(lVar, hpVar, i2);
    }

    public void loadStream(com.byazt.jt.l lVar, com.byazt.p000if.jx jxVar) {
        com.byazt.zwl.hp.j().hp(6, lVar, (com.byazt.jt.l) jxVar);
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            com.byazt.ymw.u.hp("apply->load with null ->SparseArray");
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999982);
        Function<SparseArray<Object>, Object> function = (Function) pluginValueSetL.objectValue(1, Function.class);
        if (function == null) {
            com.byazt.ymw.u.hp("apply->load with null callback");
            return null;
        }
        loadAdByType(iIntValue, pluginValueSetL, function);
        return null;
    }
}
