package com.byazt.yf;

import android.util.Pair;
import android.util.SparseArray;
import com.byazt.wi.j;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1247, 34})
/* loaded from: classes3.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final Map<String, Supplier<?>> hp;

    /* renamed from: l, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f27905l;

    @com.byazt.kj.hp(hp = {0, 1, 1247, 123})
    public static class hp {
        public static final l hp = new l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a() {
        return com.byazt.di.hp.jl().n().eb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object as() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object b() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().yr());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object cx() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().rz());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object d() {
        return Double.valueOf(com.byazt.di.hp.jl().l().u());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object di() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object dy() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().di());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object e() {
        return com.byazt.di.hp.jl().n().jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object eb() {
        return com.byazt.di.hp.jl().n().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object ec() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().pu());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object f() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().e());
    }

    public static l getInstance() {
        return hp.hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object gu() {
        return com.byazt.di.hp.jl().n().l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object hp() {
        return com.byazt.di.l.l().k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object hq() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().hq());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object j() {
        com.byazt.xob.hp.hp().jx();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object jl() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object jx() {
        return Integer.valueOf(com.byazt.di.l.l().rk());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object k() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().ms());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object kg() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().zy());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object ky() {
        return com.byazt.di.hp.jl().l().sz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object l() {
        return Integer.valueOf(com.byazt.di.l.l().wt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lv() {
        return com.byazt.di.hp.jl().l().cx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object m() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().gu());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object mp() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().jl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object ms() {
        return com.byazt.di.hp.jl().l().vv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object n() {
        return com.byazt.di.hp.jl().l().jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object ns() {
        return com.byazt.di.hp.jl().l().l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object nu() {
        return com.byazt.di.hp.jl().l().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object o() {
        return Double.valueOf(com.byazt.di.hp.jl().l().xs());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object pu() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q() {
        return com.byazt.di.hp.jl().n().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r() {
        return com.byazt.di.hp.jl().l().ns();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object rz() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object s() {
        return Integer.valueOf(com.byazt.di.hp.jl().n().w());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object sz() {
        return com.byazt.di.hp.jl().l().kg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object u() {
        return com.byazt.di.hp.jl().l().ky();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object ud() {
        return Integer.valueOf(com.byazt.di.hp.jl().l().wv());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object v() {
        return com.byazt.di.hp.jl().l().xh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object vv() {
        return com.byazt.di.hp.jl().l().mp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object w() {
        return com.byazt.di.hp.jl().n().hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object wv() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().eb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object xh() {
        return com.byazt.di.hp.jl().l().ec();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object xs() {
        return com.byazt.di.hp.jl().l().m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object yr() {
        return Boolean.valueOf(com.byazt.di.hp.jl().l().s());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object zy() {
        return com.byazt.di.hp.jl().l().as();
    }

    public void reportRequestResult(String str, Object obj, boolean z2) {
        if (this.f27905l != null) {
            j jVarHp = j.hp();
            jVarHp.hp(10012).hp(Void.class);
            jVarHp.hp(20012, new Pair(str, obj));
            jVarHp.hp(20017, Boolean.valueOf(z2));
            this.f27905l.apply(jVarHp.l());
        }
    }

    public void setQATool(Function<SparseArray<Object>, Object> function) {
        this.f27905l = function;
    }

    private l() {
        HashMap map = new HashMap();
        this.hp = map;
        map.put("PluginInitConfig.isCanUseLocation", new Supplier() { // from class: g0.a
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.rz();
            }
        });
        map.put("PluginInitConfig.isCanUsePhoneState", new Supplier() { // from class: g0.c
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.yr();
            }
        });
        map.put("PluginInitConfig.isCanUseWriteExternal", new Supplier() { // from class: g0.o
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.f();
            }
        });
        map.put("PluginInitConfig.appList", new Supplier() { // from class: g0.A
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.m();
            }
        });
        map.put("PluginInitConfig.isCanUseMacAddress", new Supplier() { // from class: g0.G
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.mp();
            }
        });
        map.put("PluginInitConfig.isCanUseAndroidId", new Supplier() { // from class: g0.I
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.kg();
            }
        });
        map.put("PluginInitConfig.isProgrammaticRecommend", new Supplier() { // from class: g0.J
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.as();
            }
        });
        map.put("PluginInitConfig.getDevImei", new Supplier() { // from class: g0.K
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.ms();
            }
        });
        map.put("PluginInitConfig.getDevImeis", new Supplier() { // from class: g0.L
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.xh();
            }
        });
        map.put("PluginInitConfig.getAndroidId", new Supplier() { // from class: g0.M
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.ky();
            }
        });
        map.put("PluginInitConfig.isCanUseOaid", new Supplier() { // from class: g0.l
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.pu();
            }
        });
        map.put("PluginInitConfig.getDevOaid", new Supplier() { // from class: g0.w
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.r();
            }
        });
        map.put("PluginInitConfig.getMacAddress", new Supplier() { // from class: g0.H
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.lv();
            }
        });
        map.put("PluginInitConfig.isCanUseWifiState", new Supplier() { // from class: g0.N
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.dy();
            }
        });
        map.put("PluginInitConfig.getAppList", new Supplier() { // from class: g0.O
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.nu();
            }
        });
        map.put("PluginInitConfig.getAgeGroup", new Supplier() { // from class: g0.P
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.ud();
            }
        });
        map.put("PluginInitConfig.isCustom", new Supplier() { // from class: g0.Q
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.hq();
            }
        });
        map.put("PluginInitConfig.isLimitPersonalAds", new Supplier() { // from class: g0.S
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.wv();
            }
        });
        map.put("PluginInitConfig.getLatitude", new Supplier() { // from class: g0.T
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.d();
            }
        });
        map.put("PluginInitConfig.getLongitude", new Supplier() { // from class: g0.b
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.o();
            }
        });
        map.put("PluginInitConfig.isWxInstalled", new Supplier() { // from class: g0.d
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.di();
            }
        });
        map.put("PluginInitConfig.isSupportH265", new Supplier() { // from class: g0.e
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.b();
            }
        });
        map.put("PluginInitConfig.isSupportSplashZoomout", new Supplier() { // from class: g0.f
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.cx();
            }
        });
        map.put("PluginInitConfig.getAppId", new Supplier() { // from class: g0.g
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.ns();
            }
        });
        map.put("PluginInitConfig.getAppName", new Supplier() { // from class: g0.h
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.n();
            }
        });
        map.put("PluginInitConfig.getLocalExtra", new Supplier() { // from class: g0.i
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.sz();
            }
        });
        map.put("PluginInitConfig.getHttps", new Supplier() { // from class: g0.j
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.ec();
            }
        });
        map.put("PluginInitConfig.getCustomLocalConfig", new Supplier() { // from class: g0.k
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.vv();
            }
        });
        map.put("PluginInitConfig.getOpensdkVer", new Supplier() { // from class: g0.m
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.xs();
            }
        });
        map.put("PluginInitConfig.getWxAppId", new Supplier() { // from class: g0.n
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.u();
            }
        });
        map.put("PluginInitConfig.getPublisherDid", new Supplier() { // from class: g0.p
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.v();
            }
        });
        map.put("PluginInitConfig.isOpenAdnTest", new Supplier() { // from class: g0.q
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.k();
            }
        });
        map.put("PluginInitConfig.getMediationConfigUserInfoForSegment", new Supplier() { // from class: g0.r
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.zy();
            }
        });
        map.put("PluginInitConfig.isCanUsePermissionRecordAudio", new Supplier() { // from class: g0.s
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.jl();
            }
        });
        map.put("GMConfigUserInfoForSegment.getUserId", new Supplier() { // from class: g0.t
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.gu();
            }
        });
        map.put("GMConfigUserInfoForSegment.getChannel", new Supplier() { // from class: g0.u
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.e();
            }
        });
        map.put("GMConfigUserInfoForSegment.getSubChannel", new Supplier() { // from class: g0.v
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.q();
            }
        });
        map.put("GMConfigUserInfoForSegment.getAge", new Supplier() { // from class: g0.x
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.s();
            }
        });
        map.put("GMConfigUserInfoForSegment.getGender", new Supplier() { // from class: g0.y
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.eb();
            }
        });
        map.put("GMConfigUserInfoForSegment.getUserValueGroup", new Supplier() { // from class: g0.z
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.a();
            }
        });
        map.put("GMConfigUserInfoForSegment.getCustomInfos", new Supplier() { // from class: g0.B
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.w();
            }
        });
        map.put("AdCacheManager.clearCache", new Supplier() { // from class: g0.C
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.j();
            }
        });
        map.put("TTSdkSettings.getIsLimitPersonalAds", new Supplier() { // from class: g0.D
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.jx();
            }
        });
        map.put("TTSdkSettings.getIsLimitProgrammaticRecommend", new Supplier() { // from class: g0.E
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.l();
            }
        });
        map.put("TTSdkSettings.getEtag", new Supplier() { // from class: g0.F
            @Override // java.util.function.Supplier
            public final Object get() {
                return com.byazt.yf.l.hp();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T hp(Object obj, Class<T> cls, T t2) {
        return cls.isInstance(obj) ? obj : t2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        int iIntValue = ((Integer) hp(sparseArray.get(-99999987), Integer.class, 0)).intValue();
        hp(sparseArray.get(-99999985), Class.class, null);
        if (iIntValue == 10007) {
            Supplier<?> supplier = this.hp.get((String) hp(sparseArray.get(20007), String.class, ""));
            if (supplier != null) {
                return supplier.get();
            }
        } else if (iIntValue != 10011) {
            switch (iIntValue) {
                case 10013:
                    JSONObject jSONObject = (JSONObject) hp(sparseArray.get(20013), JSONObject.class, null);
                    if (jSONObject != null) {
                        com.byazt.di.l.l().hp(jSONObject);
                        break;
                    }
                    break;
                case 10014:
                    return com.byazt.dl.j.hp().hp(((Integer) hp(sparseArray.get(20015), Integer.class, -1)).intValue(), (String) hp(sparseArray.get(20016), String.class, ""));
                case 10015:
                    return Integer.valueOf(com.byazt.xob.hp.hp().l((String) hp(sparseArray.get(20018), String.class, "")));
            }
        } else {
            JSONArray jSONArray = (JSONArray) hp(sparseArray.get(20011), JSONArray.class, null);
            if (jSONArray != null) {
                com.byazt.dl.j.hp().hp(jSONArray, false, false);
            }
        }
        return null;
    }
}
