package com.byazt.rz;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTCustomController;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 54})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: l, reason: collision with root package name */
    public static SharedPreferences f25396l;
    public static final List<Pair<String, JSONObject>> jx = new CopyOnWriteArrayList();
    public static final Map<String, String> hp = new HashMap();

    private static void j(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager == null) {
            w(str, jSONObject);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(com.umeng.ccg.a.f49772z, 1);
        bundle.putString("event_name", str);
        bundle.putString("event_extra", jSONObject.toString());
        adManager.getExtra(Bundle.class, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(int i2, String str, boolean z2, eb ebVar, Throwable th) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (ebVar != null) {
            try {
                ebVar.hp(jSONObject);
            } catch (Throwable th2) {
                hp("report_failed", null, th2);
                return;
            }
        }
        jSONObject.putOpt("code", Integer.valueOf(i2));
        jSONObject.putOpt("message", str);
        jSONObject.putOpt("is_plugin", Boolean.valueOf(z2));
        jSONObject.putOpt("api", Boolean.TRUE);
        q.hp(TTAppContextHolder.getContext());
        Plugin plugin = Zeus.getPlugin("com.byted.pangle");
        if (plugin != null) {
            jSONObject.putOpt("install_version", Integer.valueOf(plugin.getVersion()));
            jSONObject.putOpt("life_cycle", Integer.valueOf(plugin.getLifeCycle()));
        }
        jSONObject.putOpt("load_record", w.l());
        hp("init_failed", jSONObject, th);
    }

    private static void w(final String str, final JSONObject jSONObject) {
        com.byazt.wq.hp.hp().j().execute(new Runnable() { // from class: com.byazt.rz.a.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                ArrayList arrayList = new ArrayList();
                arrayList.add(a.a(str, jSONObject));
                a.l(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject a(String str, JSONObject jSONObject) throws JSONException {
        String str2 = "7.6.4.3";
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("support_abi", Arrays.toString(Build.SUPPORTED_ABIS));
            jSONObject.put("is_boost", true);
            jSONObject.put("is_only_armv8a", com.byazt.vx.jx.jx());
            jSONObject2.put("ad_sdk_version", "7.6.4.3");
            q.hp(TTAppContextHolder.getContext());
            String strHp = q.hp("com.byted.pangle");
            if (!TextUtils.isEmpty(strHp)) {
                str2 = strHp;
            }
            jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, str2);
            jSONObject2.put("timestamp", System.currentTimeMillis() / 1000);
            jSONObject2.put("is_plugin", true);
            Map<String, String> map = hp;
            jSONObject.put("appid", map.get("appid"));
            jSONObject2.put("event_extra", jSONObject.toString());
            jSONObject2.put("type", str);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("model", Build.MODEL);
            jSONObject3.put("vendor", Build.MANUFACTURER);
            jSONObject3.put("imei", map.get("imei"));
            jSONObject3.put("oaid", map.get("oaid"));
            jSONObject2.put("device_info", jSONObject3);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public static void hp(String str, JSONObject jSONObject) throws JSONException {
        if (com.byazt.ll.l.gu.equals(str)) {
            hp(str, jSONObject, null);
        } else {
            j("zeus_".concat(String.valueOf(str)), jSONObject);
        }
    }

    public static void hp() {
        List<Pair<String, JSONObject>> list = jx;
        if (list.size() <= 0) {
            return;
        }
        try {
            for (Pair<String, JSONObject> pair : list) {
                if (pair != null) {
                    j((String) pair.first, (JSONObject) pair.second);
                }
            }
            jx.clear();
        } catch (Exception unused) {
        }
    }

    public static void hp(final int i2, final String str, final boolean z2, final eb ebVar, final Throwable th) {
        if (com.byazt.ik.w.hp()) {
            return;
        }
        com.byazt.wq.hp.hp().j().execute(new Runnable() { // from class: Y.a
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                com.byazt.rz.a.l(i2, str, z2, ebVar, th);
            }
        });
    }

    public static void hp(String str, JSONObject jSONObject, Throwable th) throws JSONException {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(com.umeng.ccg.a.f49756j, str);
            jSONObject2.putOpt("object", jSONObject);
            jSONObject2.putOpt("exception", Log.getStackTraceString(th));
            w("exception", jSONObject2);
        } catch (Exception unused) {
        }
    }

    public static void l(String str, JSONObject jSONObject) {
        jx.add(new Pair<>(str, jSONObject));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(List<JSONObject> list) throws Throwable {
        if (list == null) {
            return;
        }
        if (f25396l == null) {
            f25396l = l.l(TTAppContextHolder.getContext(), "tt_sdk_settings_other", 0);
        }
        String str = String.format("https://%s%s", f25396l.getString("url_stats", "api-access.pangolin-sdk-toutiao.com"), "/api/ad/union/sdk/stats/batch/");
        JSONObject jSONObject = new JSONObject();
        try {
            List<Pair<String, JSONObject>> list2 = jx;
            if (list2.size() > 0) {
                for (Pair<String, JSONObject> pair : list2) {
                    list.add(a((String) pair.first, (JSONObject) pair.second));
                }
                jx.clear();
            }
            jSONObject.put("stats_list", new JSONArray((Collection) list));
        } catch (Exception unused) {
        }
        com.byazt.bg.jx.hp().hp(true, str, com.byazt.vx.l.hp(jSONObject).toString().getBytes());
    }

    public static void hp(AdConfig adConfig) {
        if (adConfig == null) {
            return;
        }
        Map<String, String> map = hp;
        map.put("appid", adConfig.getAppId());
        int pluginUpdateConfig = adConfig.getPluginUpdateConfig();
        map.put("plugin_update_conf", pluginUpdateConfig != 0 ? String.valueOf(pluginUpdateConfig) : "2");
        TTCustomController customController = adConfig.getCustomController();
        if (customController != null) {
            try {
                map.put("oaid", customController.getDevOaid());
                map.put("imei", customController.getDevImei());
            } catch (Exception unused) {
            }
        }
    }

    public static Map<String, String> l() {
        return hp;
    }
}
