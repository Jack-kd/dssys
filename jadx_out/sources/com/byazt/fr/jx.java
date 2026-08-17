package com.byazt.fr;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1204, 30})
/* loaded from: classes2.dex */
public class jx {
    public PluginValueSet hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.jt.hp f20091j = new com.byazt.jt.hp(com.byazt.di.hp.jl().r().sparseArray());
    public PluginValueSet jx;

    /* renamed from: l, reason: collision with root package name */
    public PluginValueSet f20092l;

    /* renamed from: w, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f20093w;

    private jx(SparseArray<Object> sparseArray) {
        this.f20093w = null;
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        this.hp = pluginValueSetL;
        if (pluginValueSetL != null) {
            this.jx = com.byazt.kd.j.hp(8457, pluginValueSetL);
            PluginValueSet pluginValueSetHp = com.byazt.kd.j.hp(8475, this.hp);
            this.f20092l = pluginValueSetHp;
            if (pluginValueSetHp != null) {
                this.f20093w = (Function) pluginValueSetHp.objectValue(8311, Function.class);
            }
        }
        nd();
    }

    private void hd() {
        com.byazt.aw.l.l("---------  sdk 聚合信息 start ----");
        com.byazt.aw.l.l("getHttps：" + pu());
        com.byazt.aw.l.l("getWxAppId：" + ky());
        com.byazt.aw.l.l("getPublisherDid：" + xh());
        com.byazt.aw.l.l("isOpenAdnTest：" + ms());
        com.byazt.aw.l.l("getMediationConfigUserInfoForSegment：" + as());
        com.byazt.aw.l.l("getLocalExtra：" + kg());
        com.byazt.aw.l.l("getCustomLocalConfig：" + mp());
        com.byazt.aw.l.l("getOpensdkVer：" + m());
        com.byazt.aw.l.l("isWxInstalled：" + f());
        com.byazt.aw.l.l("isSupportH265：" + yr());
        com.byazt.aw.l.l("isSupportSplashZoomout：" + rz());
        com.byazt.aw.l.l("---------  sdk 聚合信息 end ----");
    }

    public static jx hp(SparseArray<Object> sparseArray) {
        return new jx(sparseArray);
    }

    private void nd() {
        zx();
        y();
        hd();
    }

    private boolean vq() {
        PluginValueSet pluginValueSet = this.hp;
        return (pluginValueSet == null || pluginValueSet.isEmpty()) ? false : true;
    }

    private void y() {
        com.byazt.aw.l.l("---------  sdk 隐私设置 start ----");
        com.byazt.aw.l.l("isCanUseLocation：" + q());
        j jVarV = v();
        com.byazt.aw.l.l("getLocation：".concat(String.valueOf(jVarV)));
        if (jVarV != null) {
            com.byazt.aw.l.l("getLocation getLatitude：" + jVarV.hp());
            com.byazt.aw.l.l("getLocation getLongitude：" + jVarV.l());
        }
        com.byazt.aw.l.l("appList：" + gu());
        com.byazt.aw.l.l("isCanUsePhoneState：" + s());
        com.byazt.aw.l.l("isLimitPersonalAds：" + eb());
        com.byazt.aw.l.l("getDevImei：" + vv());
        com.byazt.aw.l.l("isCanUseWifiState：" + di());
        com.byazt.aw.l.l("getMacAddress：" + cx());
        com.byazt.aw.l.l("userPrivacyConfig：" + b());
        com.byazt.aw.l.l("isCanUseWriteExternal：" + e());
        com.byazt.aw.l.l("isCanUseAndroidId：" + zy());
        com.byazt.aw.l.l("getAndroidId：" + sz());
        List<String> listD = d();
        com.byazt.aw.l.l("getAppList：".concat(String.valueOf(listD)));
        if (listD != null) {
            Iterator<String> it = listD.iterator();
            while (it.hasNext()) {
                com.byazt.aw.l.l("getAppList item: ".concat(String.valueOf(it.next())));
            }
        }
        List<String> listEc = ec();
        com.byazt.aw.l.l("getDevImeis：".concat(String.valueOf(listEc)));
        if (listEc != null) {
            Iterator<String> it2 = listEc.iterator();
            while (it2.hasNext()) {
                com.byazt.aw.l.l("getDevImeis item: ".concat(String.valueOf(it2.next())));
            }
        }
        com.byazt.aw.l.l("getDevOaid：" + ns());
        com.byazt.aw.l.l("isCanUseOaid：" + n());
        com.byazt.aw.l.l("isCanUseMacAddress：" + jl());
        com.byazt.aw.l.l("isProgrammaticRecommend：" + k());
        com.byazt.aw.l.l("---------  sdk 隐私设置 end ----");
    }

    private void zx() {
        com.byazt.aw.l.l("---------  sdk 初始化信息 start ----");
        com.byazt.aw.l.l("isDebug：" + dy());
        com.byazt.aw.l.l("getClassName：" + hp());
        com.byazt.aw.l.l("getAppId：" + l());
        com.byazt.aw.l.l("getAppName：" + jx());
        com.byazt.aw.l.l("getADNName：" + j());
        com.byazt.aw.l.l("getAppKey：" + w());
        com.byazt.aw.l.l("getInitCallback：" + a());
        com.byazt.aw.l.l("getAgeGroup：" + wv());
        com.byazt.aw.l.l("isCustom：" + hq());
        com.byazt.aw.l.l("getCustomInitMap：" + ud());
        com.byazt.aw.l.l("getCustomGMConfiguration：" + nu());
        com.byazt.aw.l.l("getGromoreVersion：" + lv());
        com.byazt.aw.l.l("getMap：" + r());
        com.byazt.aw.l.l("---------  sdk 初始化信息 end ----");
    }

    public Function<SparseArray<Object>, Object> a() {
        if (vq()) {
            return (Function) this.hp.objectValue(8300, Function.class);
        }
        return null;
    }

    public Function<SparseArray<Object>, Object> as() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return (Function) pluginValueSet.objectValue(8310, Function.class);
        }
        return null;
    }

    public Map<String, Object> b() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return (Map) pluginValueSet.objectValue(8554, Map.class);
        }
        return null;
    }

    public String cx() {
        PluginValueSet pluginValueSet = this.f20092l;
        return pluginValueSet != null ? pluginValueSet.stringValue(8487) : "";
    }

    public List<String> d() {
        PluginValueSet pluginValueSetL;
        Function<SparseArray<Object>, Object> function = this.f20093w;
        return (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) ? new LinkedList() : (List) pluginValueSetL.objectValue(8476, List.class);
    }

    public boolean di() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8480);
        }
        return true;
    }

    public boolean dy() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(1);
        }
        return false;
    }

    public boolean e() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8025);
        }
        return true;
    }

    public boolean eb() {
        PluginValueSet pluginValueSetL;
        Function<SparseArray<Object>, Object> function = this.f20093w;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return false;
        }
        return pluginValueSetL.booleanValue(8027);
    }

    public List<String> ec() {
        PluginValueSet pluginValueSetL;
        Function<SparseArray<Object>, Object> function = this.f20093w;
        return (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) ? new LinkedList() : (List) pluginValueSetL.objectValue(8477, List.class);
    }

    public boolean f() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8465);
        }
        return false;
    }

    public boolean gu() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8026);
        }
        return true;
    }

    public boolean hq() {
        if (vq()) {
            return this.hp.booleanValue(8098);
        }
        return false;
    }

    public String j() {
        return vq() ? this.hp.stringValue(8003) : "";
    }

    public boolean jl() {
        return di();
    }

    public String jx() {
        return vq() ? this.hp.stringValue(8) : "";
    }

    public boolean k() {
        PluginValueSet pluginValueSetL;
        Function<SparseArray<Object>, Object> function = this.f20093w;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return true;
        }
        return pluginValueSetL.booleanValue(8028);
    }

    public Map kg() {
        PluginValueSet pluginValueSet = this.jx;
        return pluginValueSet != null ? (Map) pluginValueSet.objectValue(8462, Map.class) : new HashMap();
    }

    public String ky() {
        PluginValueSet pluginValueSet = this.jx;
        return pluginValueSet != null ? pluginValueSet.stringValue(8459) : "";
    }

    public void l(SparseArray<Object> sparseArray) {
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        this.f20092l = pluginValueSetL;
        if (pluginValueSetL != null) {
            this.f20093w = (Function) pluginValueSetL.objectValue(8311, Function.class);
        }
        y();
    }

    public String lv() {
        PluginValueSet pluginValueSet = this.hp;
        return pluginValueSet != null ? pluginValueSet.stringValue(8411) : "";
    }

    public String m() {
        PluginValueSet pluginValueSet = this.jx;
        return pluginValueSet != null ? pluginValueSet.stringValue(8464) : "";
    }

    public JSONObject mp() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return (JSONObject) pluginValueSet.objectValue(8463, JSONObject.class);
        }
        return null;
    }

    public boolean ms() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8461);
        }
        return false;
    }

    public boolean n() {
        PluginValueSet pluginValueSetL;
        Function<SparseArray<Object>, Object> function = this.f20093w;
        if (function == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return true;
        }
        return pluginValueSetL.booleanValue(8478);
    }

    public String ns() {
        PluginValueSet pluginValueSet = this.f20092l;
        return pluginValueSet != null ? pluginValueSet.stringValue(8486) : "";
    }

    public Function<SparseArray<Object>, Object> nu() {
        if (vq()) {
            return (Function) this.hp.objectValue(8401, Function.class);
        }
        return null;
    }

    public boolean o() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8549);
        }
        return true;
    }

    public boolean pu() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8458);
        }
        return false;
    }

    public boolean q() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8024);
        }
        return true;
    }

    public Map r() {
        PluginValueSet pluginValueSet = this.hp;
        return pluginValueSet != null ? (Map) pluginValueSet.objectValue(8425, Map.class) : new HashMap();
    }

    public boolean rz() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8467);
        }
        return false;
    }

    public boolean s() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8023);
        }
        return true;
    }

    public String sz() {
        PluginValueSet pluginValueSet = this.f20092l;
        return pluginValueSet != null ? pluginValueSet.stringValue(8485) : "";
    }

    public double u() {
        Function function;
        PluginValueSet pluginValueSetL;
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet == null || (function = (Function) pluginValueSet.objectValue(8312, Function.class)) == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return -1.0d;
        }
        return pluginValueSetL.doubleValue(8481);
    }

    public Map ud() {
        if (vq()) {
            return (Map) this.hp.objectValue(8400, Map.class);
        }
        return null;
    }

    public j v() {
        if (u() == -1.0d || u() == -1.0d) {
            return null;
        }
        return new j() { // from class: com.byazt.fr.jx.1
            @Override // com.byazt.fr.j
            public double hp() {
                return jx.this.u();
            }

            @Override // com.byazt.fr.j
            public double l() {
                return jx.this.xs();
            }
        };
    }

    public String vv() {
        PluginValueSet pluginValueSet = this.f20092l;
        return pluginValueSet != null ? pluginValueSet.stringValue(8484) : "";
    }

    public String w() {
        return vq() ? this.hp.stringValue(AVMDLDataLoader.KeyIsLiveWatchDurationThreshold) : "";
    }

    public int wv() {
        return this.f20091j.zy();
    }

    public String xh() {
        PluginValueSet pluginValueSet = this.jx;
        return pluginValueSet != null ? pluginValueSet.stringValue(8460) : "";
    }

    public double xs() {
        Function function;
        PluginValueSet pluginValueSetL;
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet == null || (function = (Function) pluginValueSet.objectValue(8312, Function.class)) == null || (pluginValueSetL = com.byazt.wi.jx.l(function)) == null) {
            return -1.0d;
        }
        return pluginValueSetL.doubleValue(8482);
    }

    public boolean yr() {
        PluginValueSet pluginValueSet = this.jx;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8466);
        }
        return false;
    }

    public boolean zy() {
        PluginValueSet pluginValueSet = this.f20092l;
        if (pluginValueSet != null) {
            return pluginValueSet.booleanValue(8479);
        }
        return true;
    }

    public String hp() {
        return vq() ? this.hp.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow) : "";
    }

    public String l() {
        if (vq()) {
            return this.hp.stringValue(3);
        }
        return null;
    }
}
