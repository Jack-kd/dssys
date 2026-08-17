package com.byazt.jz;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.byazt.pu.TTDownloadField;
import com.byazt.rz.PluginConstants;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 38})
/* loaded from: classes.dex */
public class j {
    public static String hp = "AppEnvironment";

    /* renamed from: j, reason: collision with root package name */
    public boolean f21889j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, String> f21890l;

    /* renamed from: w, reason: collision with root package name */
    public String f21891w;

    @com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public static final j hp = new j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            Context context = sz.getContext();
            if (context == null) {
                return null;
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4111);
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null) {
                jSONObject.put("application_name", applicationInfo.name);
            }
            jSONObject.put("app_id", s.u().ns());
            if (packageInfo != null) {
                ActivityInfo[] activityInfoArr = packageInfo.activities;
                String[] strArr = packageInfo.requestedPermissions;
                ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (activityInfoArr != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        jSONArray.put(activityInfo.name);
                    }
                    jSONObject.put("activities", jSONArray);
                }
                if (strArr != null) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (String str : strArr) {
                        jSONArray2.put(str);
                    }
                    jSONObject.put("permissions", jSONArray2);
                }
                if (activityInfoArr2 != null) {
                    JSONArray jSONArray3 = new JSONArray();
                    for (ActivityInfo activityInfo2 : activityInfoArr2) {
                        jSONArray3.put(activityInfo2.name);
                    }
                    jSONObject.put("receivers", jSONArray3);
                }
                if (serviceInfoArr != null) {
                    JSONArray jSONArray4 = new JSONArray();
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        jSONArray4.put(serviceInfo.name);
                    }
                    jSONObject.put("services", jSONArray4);
                }
                if (providerInfoArr != null) {
                    JSONArray jSONArray5 = new JSONArray();
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        jSONArray5.put(providerInfo.name);
                    }
                    jSONObject.put("providers", jSONArray5);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    private String j() {
        try {
            String strHp = com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", com.byazt.el.hp.j());
            if (!TextUtils.isEmpty(strHp) && !"-1".equals(strHp.trim())) {
                return String.valueOf(Math.round(Double.parseDouble(strHp) * 10.0d) / 10.0d);
            }
            return "-1";
        } catch (Throwable unused) {
            return "-1";
        }
    }

    private void w() {
        Runtime runtime = Runtime.getRuntime();
        float fMaxMemory = (float) ((runtime.maxMemory() * 1.0d) / 1048576.0d);
        float f2 = (float) ((runtime.totalMemory() * 1.0d) / 1048576.0d);
        ActivityManager activityManager = (ActivityManager) sz.getContext().getSystemService(TTDownloadField.TT_ACTIVITY);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        com.byazt.ymw.u.l(hp, "系统是否处于低内存运行：" + memoryInfo.lowMemory);
        com.byazt.ymw.u.l(hp, "maxMemory: ".concat(String.valueOf(fMaxMemory)));
        com.byazt.ymw.u.l(hp, "totalMemory: ".concat(String.valueOf(f2)));
        com.byazt.ymw.u.l(hp, "freeMemory: ".concat(String.valueOf((float) ((runtime.freeMemory() * 1.0d) / 1048576.0d))));
        int i2 = (int) ((f2 / fMaxMemory) * 100.0f);
        com.byazt.ymw.u.l(hp, "totalMaxRate: ".concat(String.valueOf(i2)));
        this.f21890l.put("low_memory", String.valueOf(memoryInfo.lowMemory));
        this.f21890l.put("total_max_memory_rate", String.valueOf(i2));
    }

    public void jx(String str) {
        this.f21890l.put("show_ad_info", str);
    }

    public void l(String str) {
        this.f21890l.put("request_ad_info", str);
    }

    private j() {
        this.f21891w = "";
        HashMap map = new HashMap();
        this.f21890l = map;
        map.put("ad_style", "default");
        this.f21890l.put("ad_id", "default");
        this.f21890l.put("rit", "default");
        this.f21890l.put("request_id", "default");
        this.f21890l.put("ad_slot_type", "default");
        this.f21890l.put("net_type", "default");
        this.f21890l.put("low_memory", "default");
        this.f21890l.put("total_max_memory_rate", "default");
        this.f21890l.put("commit_hash", "d9c97feb3c");
        this.f21890l.put("branch", "");
        this.f21890l.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
        this.f21890l.put("sdk_api_version", d.f21860w);
        this.f21890l.put("csj_app_id", s.u().ns());
        this.f21890l.put("setting_ab_version", com.byazt.lca.w.hp().w());
        this.f21890l.put("device_score", j());
        this.jx = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "tt_sp_app_env").get("last_app_env_time", 0L);
        this.f21889j = false;
    }

    public void jx() {
        if (this.f21889j || ky.hp(this.jx, System.currentTimeMillis())) {
            return;
        }
        this.f21889j = true;
        com.byazt.lf.k.hp().s(new com.byazt.fq.hp() { // from class: com.byazt.jz.j.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                j.this.f21889j = false;
                com.byazt.jlb.l<com.byazt.jlb.l> lVarL = com.byazt.jlb.l.l();
                JSONObject jSONObjectA = j.this.a();
                if (jSONObjectA != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    j.this.jx = jCurrentTimeMillis;
                    com.byazt.ry.j.hp(com.byazt.el.hp.j(), "tt_sp_app_env").put("last_app_env_time", jCurrentTimeMillis);
                    lVarL.l(jSONObjectA.toString());
                }
                return lVarL;
            }
        });
    }

    public void l(mp mpVar) {
        if (mpVar == null) {
            return;
        }
        this.f21890l.put("ad_id", mpVar.j());
        Map<String, String> map = this.f21890l;
        StringBuilder sb = new StringBuilder();
        sb.append(ky.zy(mpVar));
        map.put("rit", sb.toString());
        this.f21890l.put("request_id", ky.xs(mpVar));
        Map<String, String> map2 = this.f21890l;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ky.jl(mpVar));
        map2.put("ad_slot_type", sb2.toString());
        this.f21890l.put("net_type", com.byazt.ymw.vv.eb(sz.getContext()));
        if (com.byazt.zn.n.l(mpVar)) {
            this.f21890l.put("ad_style", "is_playable");
        }
        w();
    }

    public static j hp() {
        return hp.hp;
    }

    public void hp(mp mpVar) {
        if (mpVar == null) {
            return;
        }
        String strHb = mpVar.hb();
        Map<String, String> map = this.f21890l;
        if (TextUtils.isEmpty(strHb)) {
            strHb = "";
        }
        map.put("ad_info", strHb);
    }

    public void hp(String str) {
        this.f21890l.put("dynamic_ptpl_id", str);
    }

    public Map<String, String> l() {
        return this.f21890l;
    }
}
