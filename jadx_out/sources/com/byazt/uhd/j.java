package com.byazt.uhd;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.core.api.ATAdConst;
import com.byazt.lf.k;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 935, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.hde.j implements com.byazt.gkj.j {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.bki.jx f26170a;
    public jx hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f26172l;

    /* renamed from: w, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f26174w;

    /* renamed from: j, reason: collision with root package name */
    public List<com.byazt.gkj.jx> f26171j = new CopyOnWriteArrayList();
    public long eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public int f26173s = 0;

    public j() {
        jx jxVarHp = jx.hp(com.byazt.di.hp.jl().r());
        this.hp = jxVarHp;
        this.f26172l = jxVarHp.hp();
    }

    public static String getAdaperManagerName(String str) {
        str.getClass();
        switch (str) {
            case "sigmob":
                return "a.b.c.d.e.f.sob.SobFunction";
            case "xiaomi":
                return "a.b.c.d.e.f.xmi.XmiFunction";
            case "ks":
                return "a.b.c.d.e.f.kou.KouFunction";
            case "gdt":
                return "a.b.c.d.e.f.gng.GngFunction";
            case "baidu":
                return "a.b.c.d.e.f.bdu.BduFunction";
            case "unity":
                return "a.b.c.d.e.f.uty.UtyFunction";
            case "mintegral":
                return "a.b.c.d.e.f.mal.MalFunction";
            default:
                return null;
        }
    }

    public static JSONObject getAdnAdapterVersion() {
        com.byazt.ctq.jx jxVarW = com.byazt.lto.hp.w();
        if (jxVarW != null) {
            String string = jxVarW.getString("gm_adapter_version_list", null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    return new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
        }
        return null;
    }

    public static String getClassName(String str) {
        str.getClass();
        switch (str) {
            case "klevin":
                return MediationConstant.KLEVIN_ADN_CLASS_NAME;
            case "sigmob":
                return MediationConstant.SIGMOB_ADN_CLASS_NAME;
            case "xiaomi":
                return MediationConstant.XIAOMI_ADN_CLASS_NAME;
            case "ks":
                return MediationConstant.KS_ADN_CLASS_NAME;
            case "gdt":
                return MediationConstant.GDT_ADN_CLASS_NAME;
            case "baidu":
                return MediationConstant.BAIDU_ADN_CLASS_NAME;
            case "unity":
                return MediationConstant.UNITY_ADN_CLASS_NAME;
            case "mintegral":
                return MediationConstant.MINTEGRAL_ADN_CLASS_NAME;
            default:
                return null;
        }
    }

    private void hp(String str, String str2) {
        if (str != null) {
            str.equals(MediationConstant.ADN_GDT);
        }
    }

    private void j() {
        Iterator<com.byazt.gkj.jx> it = this.f26171j.iterator();
        while (it.hasNext()) {
            it.next().hp();
        }
        this.f26171j.clear();
    }

    private void jx() {
        String strJx = com.byazt.owd.l.jx();
        if (TextUtils.isEmpty(getAdapterVersion())) {
            com.byazt.aw.l.j("TTMediationSDK_SDK_Init", getAdNetworkName() + "版本号：" + getNetworkSdkVersion() + " , ***" + getAdNetworkName() + "Adapter未接入，请检查***, 聚合版本号：" + strJx);
            return;
        }
        com.byazt.aw.l.l("TTMediationSDK_SDK_Init", getAdNetworkName() + "版本号：" + getNetworkSdkVersion() + " , " + getAdNetworkName() + "Adapter版本号：" + getAdapterVersion() + " , 聚合版本号：" + strJx);
    }

    private void l() {
        com.byazt.aw.l.l("TTMediationSDK_SDK_Init", getAdNetworkName() + "版本号：" + getNetworkSdkVersion() + " , 聚合版本号：" + com.byazt.owd.l.jx());
    }

    private void w() {
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.uhd.j.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ctq.jx jxVarW;
                JSONObject jSONObjectL = com.byazt.bcj.l.l();
                if (jSONObjectL == null || (jxVarW = com.byazt.lto.hp.w()) == null) {
                    return;
                }
                jxVarW.put("gm_adapter_version_list", jSONObjectL.toString());
            }
        });
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 8122) {
            this.f26174w = (Function) pluginValueSet.objectValue(AVMDLDataLoader.KeyIsLiveContainerString, Function.class);
            j();
        } else if (i2 == 8123) {
            SparseArray sparseArray = (SparseArray) pluginValueSet.objectValue(-99999979, SparseArray.class);
            if (sparseArray == null) {
                sparseArray = (SparseArray) pluginValueSet.objectValue(-999902, SparseArray.class);
            }
            if (sparseArray == null) {
                sparseArray = (SparseArray) pluginValueSet.objectValue(8022, SparseArray.class);
            }
            if (sparseArray != null) {
                PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp((SparseArray<Object>) sparseArray).l();
                hp(new com.byazt.dq.hp(pluginValueSetL.intValue(-999900), pluginValueSetL.stringValue(-999901)));
                return null;
            }
        } else if (i2 == 8212) {
            if (this.f26170a != null) {
                this.f26170a.hp(pluginValueSet.intValue(8095));
            }
        } else if (i2 == 8266) {
            this.f26174w = (Function) pluginValueSet.objectValue(AVMDLDataLoader.KeyIsLiveContainerString, Function.class);
            w();
        } else if (i2 == 8270) {
            this.f26173s = pluginValueSet.intValue(8557);
            this.eb = pluginValueSet.longValue(8556) - pluginValueSet.longValue(8555);
        }
        return null;
    }

    @Override // com.byazt.gkj.j
    public void checkVersion() {
        try {
            if (com.byazt.ami.w.jx(getAdNetworkName()) != null) {
                l();
            } else {
                jx();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.gkj.j
    public void clearInitStatus() {
        this.f26173s = 0;
        this.eb = 0L;
    }

    public String getAdNetworkName() {
        return this.jx;
    }

    @Override // com.byazt.gkj.j
    public String getAdapterVersion() {
        Function<SparseArray<Object>, Object> function = this.f26174w;
        if (function != null) {
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsLiveLoaderP2pEnable).hp(String.class).l());
            if (objApply instanceof String) {
                return (String) objApply;
            }
        }
        return "";
    }

    @Override // com.byazt.gkj.j
    public String getBiddingToken(Context context, Map<String, Object> map) {
        if (this.f26174w != null) {
            Object objApply = this.f26174w.apply(com.byazt.wi.j.hp().hp(8102).hp(String.class).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).hp(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).l());
            if (objApply instanceof String) {
                return (String) objApply;
            }
        }
        return null;
    }

    @Override // com.byazt.gkj.j
    public Map<String, Object> getBiddingTokenMap(Context context, Map<String, Object> map) {
        if (this.f26174w != null) {
            Object objApply = this.f26174w.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsLiveGetLoaderType).hp(String.class).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).hp(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).l());
            if (objApply instanceof Map) {
                return (Map) objApply;
            }
        }
        return null;
    }

    public String getGroMoreSdkVersion() {
        Function<SparseArray<Object>, Object> function = this.f26174w;
        if (function != null) {
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(8105).hp(String.class).l());
            if (objApply instanceof String) {
                return (String) objApply;
            }
        }
        return "";
    }

    public Map<String, String> getMsdkRequestOptions() {
        return null;
    }

    @Override // com.byazt.gkj.j
    public String getNetworkSdkPluginVersion() {
        return null;
    }

    @Override // com.byazt.gkj.j
    public String getNetworkSdkVersion() {
        try {
            Function<SparseArray<Object>, Object> function = this.f26174w;
            if (function != null) {
                Object objApply = function.apply(com.byazt.wi.j.hp().hp(8104).hp(String.class).l());
                if (objApply instanceof String) {
                    return (String) objApply;
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    @Override // com.byazt.gkj.l
    public void initAdn(@NonNull Context context, @NonNull Map<String, Object> map, @NonNull com.byazt.gkj.jx jxVar) {
        int i2;
        long jCurrentTimeMillis;
        Function<SparseArray<Object>, Object> functionJx;
        if (!this.f26171j.contains(jxVar)) {
            this.f26171j.add(jxVar);
        }
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        w.hp(jVarHp);
        jVarHp.hp(3, map.get("app_id"));
        jVarHp.hp(8550, Boolean.valueOf(com.byazt.jz.s.u().rz()));
        jVarHp.hp(8, com.byazt.di.hp.jl().ec());
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveWatchDurationThreshold, map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY));
        String str = (String) map.get(MediationConstant.EXTRA_ADN_NAME);
        this.jx = str;
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, getClassName(str));
        jVarHp.hp(8560, getAdaperManagerName(this.jx));
        jVarHp.hp(8003, map.get(MediationConstant.EXTRA_ADN_NAME));
        jVarHp.hp(8410, "5.3.20.1.0");
        jVarHp.hp(8411, com.byazt.rt.l.jx());
        jVarHp.hp(8413, "9.4503.0");
        jVarHp.hp(8414, "4.680.1550.0");
        jVarHp.hp(8417, "4.25.14.0");
        jVarHp.hp(8558, "5.3.3.8");
        jVarHp.hp(7, Integer.valueOf(hp()));
        jVarHp.hp(8425, map);
        jVarHp.hp(8300, this);
        hp(this.jx, "initAdn name: " + this.jx);
        int i3 = 0;
        try {
            if (com.byazt.vbz.w.hp(this.jx) && com.byazt.vbz.w.w() == 2 && com.byazt.ami.w.jx(this.jx) == null) {
                jCurrentTimeMillis = System.currentTimeMillis();
                com.byazt.ami.w.j(this.jx);
            } else {
                jCurrentTimeMillis = -1;
            }
            functionJx = com.byazt.ami.w.jx(this.jx);
            hp(this.jx, "initAdn: dexBridge: ".concat(String.valueOf(functionJx)));
            if (com.byazt.ami.w.hp(this.jx)) {
                com.byazt.vbz.w.hp(this.jx, "dex_status", functionJx == null ? 10000 : 20000);
                if (com.byazt.vbz.w.w() == 2 && jCurrentTimeMillis != -1) {
                    k.hp().hp(0L, System.currentTimeMillis() - jCurrentTimeMillis, 1, 2);
                }
            }
            i2 = 1;
        } catch (Throwable unused) {
        }
        if (functionJx != null) {
            hp(this.jx, "initAdn: 走dexpl的ADN初始化");
            jVarHp.hp(8563, com.byazt.ami.w.hp(this.jx, "adn_init"));
            try {
                this.f26174w = functionJx;
                functionJx.apply(com.byazt.wi.j.hp().hp(8240).hp(Void.class).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).hp(8424, jVarHp.l()).l());
                com.byazt.vbz.w.hp(this.jx, "dex_status", KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
            } catch (Throwable unused2) {
            }
            com.byazt.vbz.w.hp(this.jx, "adn_init", i2);
        }
        hp(this.jx, "initAdn: 走Adapter aar的ADN初始化");
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveLoaderEnable).hp(Boolean.class);
        Boolean bool = (Boolean) this.f26172l.apply(jVarHp.l());
        if (bool != null && bool.booleanValue()) {
        }
        i2 = i3;
        com.byazt.vbz.w.hp(this.jx, "adn_init", i2);
        i3 = 1;
        i2 = i3;
        com.byazt.vbz.w.hp(this.jx, "adn_init", i2);
    }

    @Override // com.byazt.gkj.j
    public long initDuration() {
        return this.eb;
    }

    @Override // com.byazt.gkj.j
    public int initStatus() {
        return this.f26173s;
    }

    public void initializeNetwork(@NonNull Context context, @Nullable Map<String, Object> map, @NonNull com.byazt.gkj.w wVar) {
    }

    public boolean isNewInitFunction() {
        return false;
    }

    public void setMsdkRequestOptions(Map<String, String> map) {
    }

    @Override // com.byazt.gkj.j
    public void setPrivacyConfig(com.byazt.bki.k kVar, SparseArray<Object> sparseArray) {
        Function<SparseArray<Object>, Object> function = this.f26174w;
        if (function == null || kVar == null) {
            return;
        }
        function.apply(com.byazt.wi.j.hp().hp(8124).hp(Void.class).hp(8517, sparseArray).l());
    }

    @Override // com.byazt.gkj.j
    public void setThemeStatus(Map<String, Object> map) {
        Function<SparseArray<Object>, Object> function = this.f26174w;
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(8242).hp(Void.class).hp(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).l());
        }
    }

    @Override // com.byazt.gkj.j
    public int showOpenOrInstallAppDialog(com.byazt.bki.jx jxVar) {
        Function<SparseArray<Object>, Object> function = this.f26174w;
        if (function != null) {
            this.f26170a = jxVar;
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(8126).hp(Integer.class).l());
            if (objApply != null) {
                return ((Integer) objApply).intValue();
            }
        }
        return 0;
    }

    private int hp() {
        com.byazt.fr.jx jxVarL = com.byazt.di.hp.jl().l();
        if (jxVarL != null) {
            return jxVarL.wv();
        }
        return 0;
    }

    private void hp(com.byazt.dq.hp hpVar) {
        Iterator<com.byazt.gkj.jx> it = this.f26171j.iterator();
        while (it.hasNext()) {
            it.next().hp(hpVar);
        }
        this.f26171j.clear();
    }
}
