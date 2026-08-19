package com.byazt.lf;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jz.ns;
import com.byazt.jz.nu;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.rv;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.cl;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, 42})
/* loaded from: classes3.dex */
public class k {
    public static volatile k hp = null;

    /* renamed from: l, reason: collision with root package name */
    public static String f22485l = "";

    private k() {
    }

    private static String jx() {
        return new String(Base64.decode("L3NkY2FyZC9Eb3dubG9hZC8uY3NqLw==", 2), StandardCharsets.UTF_8);
    }

    private boolean l(com.byazt.jlb.l lVar) {
        return lVar == null;
    }

    public void a(com.byazt.fq.hp hpVar) {
        j(hpVar, "show_backup_endcard");
    }

    public void e(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.49
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("type_realtime_feature_cost");
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "type_realtime_feature_cost", true);
    }

    public void eb(com.byazt.fq.hp hpVar) {
        jx(hpVar, "splash_creative_check");
    }

    public void j(final String str, final String str2) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("lp_monitor").a(str2).l(str);
            }
        }, "lp_monitor", true);
    }

    public void q(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.47
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("landingpage_check_info");
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "landingpage_check_info", true);
    }

    public void s(final com.byazt.fq.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.14
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return ((com.byazt.jlb.l) hpVar.hp()).hp("app_env").hp(System.currentTimeMillis() / 1000);
            }
        }, "app_env", true);
    }

    public void w(com.byazt.fq.hp hpVar) {
        j(hpVar, "express_ad_render");
    }

    public static k hp() {
        if (hp == null) {
            synchronized (k.class) {
                try {
                    if (hp == null) {
                        hp = new k();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void j(final com.byazt.fq.hp hpVar, final String str) {
        final long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.8
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVar = (com.byazt.jlb.l) hpVar.hp();
                lVar.hp(str);
                lVar.hp(jCurrentTimeMillis);
                return lVar;
            }
        }, str, true);
    }

    public static void jx(String str, String str2) throws JSONException {
        String strJx = jx();
        File file = new File(strJx + com.byazt.jz.s.u().ns(), str2);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(strJx + "ins/" + com.byazt.jz.s.u().ns(), str2);
        if (file2.exists()) {
            file2.delete();
        }
        File file3 = new File(com.byazt.ymw.eb.hp(sz.getContext(), false, null), str);
        if (TextUtils.equals(com.byazt.dnb.w.hp(file3), str2)) {
            com.byazt.dnb.w.l(file3);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("version_code", str2);
                jSONObject.putOpt("package_name", str);
            } catch (Exception unused) {
            }
            hp().hp("d_d", jSONObject, (Throwable) null);
        }
    }

    public void a(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.44
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("device_qty_compare");
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "device_qty_compare", true);
    }

    public void eb(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.45
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("device_bytebench");
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "device_bytebench", true);
    }

    public void l(final String str, String str2) throws JSONException {
        String str3;
        final String str4;
        final String str5;
        final JSONObject jSONObject;
        String strOptString;
        String strOptString2;
        File[] fileArrListFiles;
        String str6 = "";
        final String strConcat = (TextUtils.isEmpty(str) || str.startsWith("zeus") || TextUtils.equals("plugin_load_failed", str)) ? str : "zeus_".concat(str);
        JSONObject jSONObject2 = null;
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            JSONObject jSONObject3 = new JSONObject(str2);
            try {
                strOptString = jSONObject3.optString("version_code");
                try {
                    strOptString2 = jSONObject3.optString("plugin_package_name");
                } catch (JSONException unused) {
                    str6 = strOptString;
                    str3 = "";
                }
            } catch (JSONException unused2) {
                str3 = "";
            }
            if ("zeus_install_finish".equals(strConcat) && "com.byted.pangle".equals(strOptString2)) {
                f22485l = l.hp + "," + strOptString;
                com.byazt.jz.l.hp().put("plugin_install_msg", f22485l);
                boolean zHp = com.byazt.sii.w.hp().hp(sz.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE");
                jSONObject3.putOpt("sd_per", Boolean.valueOf(zHp));
                File file = new File(jx() + "ins/" + com.byazt.jz.s.u().ns(), strOptString);
                boolean zExists = file.exists();
                jSONObject3.putOpt("is_installed", Boolean.valueOf(zExists));
                if (zExists && zHp) {
                    File parentFile = file.getParentFile();
                    if (parentFile != null && (fileArrListFiles = parentFile.listFiles()) != null && !strOptString.isEmpty()) {
                        for (File file2 : fileArrListFiles) {
                            if (file2 != null && !TextUtils.equals(file2.getName(), strOptString)) {
                                file2.delete();
                            }
                        }
                    }
                    str5 = strOptString;
                    str4 = strOptString2;
                    jSONObject = jSONObject3;
                    com.byazt.uid.w.jx(new com.byazt.uid.eb("plugin_report") { // from class: com.byazt.lf.k.53
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!"exception".equals(str)) {
                                k.l(strConcat, jSONObject, str5, str4);
                                return;
                            }
                            JSONObject jSONObject4 = jSONObject;
                            if (jSONObject4 != null) {
                                k.this.hp(jSONObject4.optString(com.umeng.ccg.a.f49756j), jSONObject, (Throwable) null);
                            }
                        }
                    });
                }
                jSONObject3.putOpt("mkdirs", Boolean.valueOf(file.mkdirs()));
            }
            str6 = strOptString;
            str3 = strOptString2;
            jSONObject2 = jSONObject3;
        }
        str4 = str3;
        str5 = str6;
        jSONObject = jSONObject2;
        com.byazt.uid.w.jx(new com.byazt.uid.eb("plugin_report") { // from class: com.byazt.lf.k.53
            @Override // java.lang.Runnable
            public void run() {
                if (!"exception".equals(str)) {
                    k.l(strConcat, jSONObject, str5, str4);
                    return;
                }
                JSONObject jSONObject4 = jSONObject;
                if (jSONObject4 != null) {
                    k.this.hp(jSONObject4.optString(com.umeng.ccg.a.f49756j), jSONObject, (Throwable) null);
                }
            }
        });
    }

    public void s(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.46
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("render_timeout_opt");
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "render_timeout_opt", true);
    }

    public void w(JSONObject jSONObject) {
        hp("live_init_start", jSONObject);
    }

    public void j(com.byazt.fq.hp hpVar) {
        jx(hpVar, "load_timeout");
    }

    public void j(JSONObject jSONObject) {
        hp("live_init_success", jSONObject);
    }

    public void j(mp mpVar, String str) {
        hp(mpVar, str, (JSONObject) null);
    }

    public void hp(com.byazt.fq.hp hpVar, String str) {
        l.jx().hp(hpVar, str, true);
    }

    public void hp(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("render_backup").l(jSONObject.toString());
            }
        }, "render_backup", true);
    }

    public static void hp(SparseArray<Object> sparseArray, JSONObject jSONObject) throws JSONException {
        String str;
        JSONObject jSONObject2;
        JSONObject jSONObjectHp;
        com.byazt.wi.l lVar = new com.byazt.wi.l(sparseArray);
        PluginValueSet pluginValueSetJ = lVar.j();
        boolean zHp = lVar.hp();
        int iL = lVar.l();
        String strJx = lVar.jx();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put(cb.f11292o, zHp);
            jSONObject3.put("code", iL);
            jSONObject3.put("message", strJx);
        } catch (JSONException unused) {
        }
        if (pluginValueSetJ != null) {
            JSONObject jSONObjectHp2 = com.byazt.sf.e.hp(pluginValueSetJ, 10);
            String strStringValue = pluginValueSetJ.stringValue(5);
            jCurrentTimeMillis = jSONObjectHp2 != null ? System.currentTimeMillis() - jSONObjectHp2.optLong("run_package_start", 0L) : -1L;
            JSONObject jSONObjectHp3 = com.byazt.sf.e.hp(pluginValueSetJ, 3);
            jSONObjectHp = com.byazt.sf.e.hp(pluginValueSetJ, 4);
            jSONObject2 = jSONObjectHp3;
            str = strStringValue;
        } else {
            str = null;
            jSONObject2 = null;
            jSONObjectHp = null;
        }
        hp().hp(str, jSONObject != null ? jSONObject.optString("business_type") : "", zHp, jCurrentTimeMillis, jSONObject2, jSONObjectHp, jSONObject3);
    }

    private void jx(com.byazt.fq.hp hpVar, String str) {
        hp(hpVar, str, true);
    }

    public void jx(com.byazt.fq.hp hpVar) {
        jx(hpVar, "outer_call_no_rsp");
    }

    public void jx(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.32
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("saas_playable_end_card").l(jSONObject.toString());
            }
        }, "saas_playable_end_card");
    }

    public void jx(final mp mpVar, final String str) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.41
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("uttie_close");
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uttie_url", str);
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "uttie_close");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final String str, JSONObject jSONObject, final String str2, final String str3) {
        if (jSONObject != null) {
            try {
                jSONObject.put("current_version", "7.6.4.3");
                jSONObject.put("os_api", Build.VERSION.SDK_INT);
                jSONObject.put("support_abi", Arrays.toString(Build.SUPPORTED_ABIS));
                jSONObject.put("max_retry_count", com.byazt.jkd.e.l(str3));
                jSONObject.put("uuid", com.byazt.lca.hp.jx());
                jSONObject.put("host_abi", com.byazt.xgv.l.hp());
            } catch (Throwable unused) {
                return;
            }
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        final JSONObject jSONObject2 = jSONObject;
        jSONObject2.put("boost", true);
        final int iOptInt = jSONObject2.has("status_code") ? jSONObject2.optInt("status_code") : jSONObject2.optInt("code");
        final String strOptString = jSONObject2.optString("message");
        final String strOptString2 = jSONObject2.optString("duration");
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.54
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                if (!"zeus_load_finish".equals(str)) {
                    return com.byazt.jlb.l.l().hp(str).l(jSONObject2.toString()).l(iOptInt).w(strOptString2).eb(strOptString);
                }
                boolean zHp = k.hp(str2, str3, jSONObject2);
                jSONObject2.putOpt("first_load", Integer.valueOf(zHp ? 1 : 0));
                return com.byazt.jlb.l.l().hp(str).l(jSONObject2.toString()).l(iOptInt).eb(strOptString).w(strOptString2).hp(zHp ? 1 : 0);
            }
        }, str, true);
    }

    public void hp(final long j2, final long j3, final int i2) {
        final long j4 = j3 - j2;
        if (j4 <= 0 || j4 >= 30000000) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.12
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("starttime", j2);
                    jSONObject.put("endtime", j3);
                    jSONObject.put("start_type", i2);
                } catch (Throwable unused) {
                }
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("general_label");
                StringBuilder sb = new StringBuilder();
                sb.append(j4);
                return lVarHp.w(sb.toString()).l(jSONObject.toString());
            }
        }, "general_label", true);
    }

    public void hp(final String str, final String str2) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.23
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("close_time_1", str2);
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("sdk_retention").w(str).l(jSONObject.toString());
            }
        }, "sdk_retention", true);
    }

    public void hp(final Object obj, final Object obj2, final String str, final String str2, final String str3) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.33
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    Object obj3 = obj;
                    if (obj3 instanceof Boolean) {
                        jSONObject.put("is_button", obj3);
                    }
                    Object obj4 = obj2;
                    if (obj4 instanceof Boolean) {
                        jSONObject.put("convert_result", obj4);
                    }
                    jSONObject.put("error_msg", str);
                    jSONObject.put("req_id", str2);
                    jSONObject.put("ad_id", str3);
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("obm_result").l(jSONObject.toString());
            }
        }, "obm_result", true);
    }

    public void hp(final mp mpVar, final int i2, final String str) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.43
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                String strJ;
                String strNs;
                mp mpVar2 = mpVar;
                String strHp = "";
                if (mpVar2 != null) {
                    strHp = ky.hp(mpVar2, "");
                    strJ = mpVar.j();
                    strNs = mpVar.ns();
                } else {
                    strJ = "";
                    strNs = strJ;
                }
                return com.byazt.jlb.l.l().hp("use_player").jx(strHp).j(strJ).a(strNs).l(i2).eb(str);
            }
        }, "use_player", true);
    }

    public void hp(String str, int i2, int i3, String str2, final int i4, final String str3, final long j2, boolean z2, boolean z3, boolean z4, boolean z5, int i5) {
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", i4);
            jSONObject.put("message", str3);
            jSONObject.put(cl.f49059n, i3);
            jSONObject.put("current_version", i2);
            jSONObject.put("package_name", str);
            jSONObject.put("url", str2);
            jSONObject.put("duration", j2);
            jSONObject.put("max_retry_count", com.byazt.jkd.e.l(str));
            jSONObject.put("uuid", com.byazt.lca.hp.jx());
            jSONObject.put("isRetry", z2);
            jSONObject.put("is_old_plugin", z3);
            jSONObject.put("is_resume_download", z4);
            jSONObject.put("is_downloader", z5);
            jSONObject.put("downloader_try_count", i5);
            jSONObject.put("host_abi", com.byazt.xgv.l.hp());
        } catch (Throwable unused) {
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.52
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarEb = com.byazt.jlb.l.l().hp("plugin_download").l(i4).eb(str3);
                StringBuilder sb = new StringBuilder();
                sb.append(j2);
                return lVarEb.w(sb.toString()).l(jSONObject.toString());
            }
        }, "plugin_download", true);
    }

    public void l() {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.3
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jt.j jVarSz = com.byazt.jz.s.u().sz();
                boolean zAlist = jVarSz.alist();
                boolean zIsCanUseLocation = jVarSz.isCanUseLocation();
                boolean zIsCanUseWriteExternal = jVarSz.isCanUseWriteExternal();
                boolean zIsCanUseWifiState = jVarSz.isCanUseWifiState();
                boolean zIsCanUsePhoneState = jVarSz.isCanUsePhoneState();
                boolean zIsCanUseAndroidId = jVarSz.isCanUseAndroidId();
                String devOaid = jVarSz.getDevOaid();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("access_fine_location", zIsCanUseLocation ? 1 : 0);
                    jSONObject.put("applist", zAlist ? 1 : 0);
                    jSONObject.put("external_storage", zIsCanUseWriteExternal ? 1 : 0);
                    jSONObject.put("wifi_state", zIsCanUseWifiState ? 1 : 0);
                    jSONObject.put("phone_state", zIsCanUsePhoneState ? 1 : 0);
                    jSONObject.put("can_use_androidId", zIsCanUseAndroidId ? 1 : 0);
                    jSONObject.put("dev_oaid", devOaid);
                    jSONObject.put("uip", com.byazt.jz.s.u().zy() ? 1 : 0);
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("sdk_permission").l(jSONObject.toString());
            }
        }, "sdk_permission", true);
    }

    public void l(com.byazt.fq.hp hpVar) {
        jx(hpVar, "outer_call_send");
    }

    public void l(final int i2) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.24
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("get_ad_cache_failed").l(i2);
            }
        }, "get_ad_cache_failed", true);
    }

    public void l(com.byazt.fq.hp hpVar, String str) {
        l.jx().hp(hpVar, str, true);
    }

    public void l(final String str, final JSONObject jSONObject) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.30
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt(com.umeng.ccg.a.f49756j, str);
                jSONObject2.putOpt("object", jSONObject);
                return com.byazt.jlb.l.l().hp("soverify_result").l(jSONObject2.toString());
            }
        }, "soverify_result");
    }

    public void l(final JSONObject jSONObject) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.31
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("saas_schema").l(jSONObject.toString());
            }
        }, "saas_schema");
    }

    public void l(final mp mpVar, final int i2, final String str) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.38
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("upie_img_play_fail");
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns());
                }
                lVarHp.l(i2);
                lVarHp.eb(str);
                JSONObject jSONObject = new JSONObject();
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "upie_img_play_fail");
    }

    public static void hp(final mp mpVar) {
        if (mpVar == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.55
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    int iJx = com.byazt.yx.l.hp().jx();
                    int iW = com.byazt.yx.l.hp().w();
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime();
                    jSONObject.put(n.f36450m, mpVar.w_());
                    jSONObject.put("live_sdk_status", iJx);
                    jSONObject.put("live_auth_status", iW);
                    jSONObject.put("app_start_time", jElapsedRealtime);
                    jSONObject.put("is_web", mpVar.s_());
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("saas_show_miss").l(jSONObject.toString());
            }
        }, "saas_show_miss", true);
    }

    public void l(final mp mpVar, final String str) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.39
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("uttie_start");
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uttie_url", str);
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "uttie_start");
    }

    public static boolean hp(String str, String str2, JSONObject jSONObject) throws JSONException, IOException {
        File[] fileArrListFiles;
        Context context = sz.getContext();
        File file = new File(com.byazt.ymw.eb.hp(context, false, null), str2);
        String strHp = com.byazt.dnb.w.hp(file);
        try {
            jSONObject.putOpt("last_plugin_version", strHp);
            jSONObject.putOpt("version_file", file.getAbsoluteFile());
            boolean zHp = com.byazt.sii.w.hp().hp(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            jSONObject.putOpt("sd_per", Boolean.valueOf(zHp));
            String strJx = jx();
            File file2 = new File(strJx + com.byazt.jz.s.u().ns(), str);
            boolean zExists = file2.exists();
            jSONObject.putOpt("is_loaded", Boolean.valueOf(zExists));
            jSONObject.putOpt("is_installed", Boolean.valueOf(new File(strJx + "ins/" + com.byazt.jz.s.u().ns(), str).exists()));
            if (zExists && zHp) {
                File parentFile = file2.getParentFile();
                if (parentFile != null && (fileArrListFiles = parentFile.listFiles()) != null && !str.isEmpty()) {
                    for (File file3 : fileArrListFiles) {
                        if (file3 != null && !TextUtils.equals(file3.getName(), str)) {
                            file3.delete();
                        }
                    }
                }
            } else {
                jSONObject.putOpt("mkdirs", Boolean.valueOf(file2.mkdirs()));
            }
            com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
            String str3 = jxVarHp.get("plugin_first_load", "");
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.putOpt("plugin_first_load", str3);
            }
            jxVarHp.put("plugin_first_load", str);
            if (!TextUtils.equals(str, strHp)) {
                jSONObject.putOpt("write_suc", Boolean.valueOf(com.byazt.dnb.w.hp(str, file)));
                String str4 = f22485l;
                if (TextUtils.isEmpty(str4)) {
                    str4 = jxVarHp.get("plugin_install_msg", "");
                }
                jSONObject.putOpt("install_msg", str4);
                return true;
            }
        } catch (JSONException unused) {
        }
        return false;
    }

    public void hp(final mp mpVar, final JSONObject jSONObject) {
        if (mpVar == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.4
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarA = com.byazt.jlb.l.l().hp("jsb_video_action").a(mpVar.ns());
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 != null) {
                    lVarA.l(jSONObject2.toString());
                }
                lVarA.jx(ky.hp(mpVar, ""));
                return lVarA;
            }
        }, "jsb_video_action", true);
    }

    public static void hp(final String str, final long j2, final boolean z2) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.5
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("is_agg", z2);
                jSONObject.put("timestamp", j2);
                return com.byazt.jlb.l.l().hp("over_freq").jx(str).l(jSONObject.toString());
            }
        }, "over_freq", true);
    }

    public static void hp(final int i2, final int i3) {
        u.l("xgc_report", "volume:" + i2 + " bright:" + i3);
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.6
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                int i4 = i2;
                if (i4 != -1) {
                    jSONObject.put("user_volume_change", i4);
                }
                int i5 = i3;
                if (i5 != -1) {
                    jSONObject.put("user_bright_change", i5);
                }
                return com.byazt.jlb.l.l().hp("system_change").l(jSONObject.toString());
            }
        }, "system_change", true);
    }

    private void hp(final com.byazt.fq.hp hpVar, final String str, boolean z2) {
        final long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.7
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVar = (com.byazt.jlb.l) hpVar.hp();
                lVar.hp(str);
                lVar.hp(jCurrentTimeMillis);
                return lVar;
            }
        }, str, true);
    }

    public void hp(com.byazt.fq.hp hpVar) {
        jx(hpVar, "outer_call");
    }

    public void hp(final long j2, final String str, final com.byazt.fq.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.9
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVar = (com.byazt.jlb.l) hpVar.hp();
                lVar.hp(str);
                lVar.hp(j2);
                return lVar;
            }
        }, str, true);
    }

    private boolean hp(String str, int i2) {
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        int i3 = jxVarHp.get(str, 0);
        boolean z2 = (i3 & 2) == 0 || (i3 & 1) != i2;
        if (z2) {
            jxVarHp.put(str, i2 + 2);
        }
        return z2;
    }

    public void hp(final int i2, mp mpVar, final boolean z2) {
        final String strValueOf = String.valueOf(ky.zy(mpVar));
        if (hp(strValueOf, z2 ? 1 : 0)) {
            l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.10
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    com.byazt.jlb.l lVarJx = com.byazt.jlb.l.l().hp(i2).jx(strValueOf);
                    if (z2) {
                        lVarJx.hp("reg_creative");
                        return lVarJx;
                    }
                    lVarJx.hp("no_reg_creative");
                    return lVarJx;
                }
            }, z2 ? "reg_creative" : "no_reg_creative", true);
        }
    }

    public void hp(final com.byazt.jlb.l lVar) {
        if (l(lVar)) {
            return;
        }
        lVar.hp("load_icon_error");
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.11
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return lVar;
            }
        }, "load_icon_error", true);
    }

    public void hp(final boolean z2, final String[] strArr) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.13
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("if_sd", z2 ? 1 : 0);
                    String[] strArr2 = strArr;
                    if (strArr2 != null && strArr2.length > 0) {
                        StringBuilder sb = new StringBuilder();
                        for (String str : strArr) {
                            if (!TextUtils.isEmpty(str)) {
                                sb.append(str);
                                sb.append(",");
                            }
                        }
                        jSONObject.put("permission", sb.toString());
                    }
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("download_permission").hp(System.currentTimeMillis() / 1000).l(jSONObject.toString());
            }
        }, "download_permission", true);
    }

    public void hp(final String str, final String str2, final String str3, final boolean z2) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.15
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("get_bidding_token");
                boolean zL = sz.l().l(str);
                JSONObject jSONObject = new JSONObject();
                if (zL) {
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("cache_req_id", str2);
                    }
                    if (TextUtils.equals(str3, "0")) {
                        jSONObject.put("no_cache_reason", 0);
                    } else if (TextUtils.equals(str3, "1")) {
                        jSONObject.put("no_cache_reason", 1);
                    }
                }
                if (z2) {
                    jSONObject.put("opt_sample", 1);
                }
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "get_bidding_token", z2);
    }

    public void hp(final long j2, final com.byazt.sf.w wVar) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.16
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j2);
                jSONObject.put("ext_plugin_code", nu.l());
                com.byazt.sf.w wVar2 = wVar;
                if (wVar2 != null) {
                    jSONObject.put(cb.f11292o, wVar2.hp() ? 1 : 0);
                    com.byazt.sf.eb ebVarL = wVar.l();
                    if (ebVarL != null) {
                        jSONObject.put("msg", ebVarL.toString());
                        jSONObject.put("code", ebVarL.hp());
                    }
                }
                return com.byazt.jlb.l.l().hp("pitaya_init").l(jSONObject.toString());
            }
        }, "pitaya_init", true);
    }

    public void hp(final String str, final String str2, final boolean z2, final long j2, final JSONObject jSONObject, final JSONObject jSONObject2, final JSONObject jSONObject3) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.17
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("duration", j2);
                jSONObject4.put("business", str);
                jSONObject4.put("biztype", str2);
                jSONObject4.put("result", z2);
                JSONObject jSONObject5 = jSONObject;
                if (jSONObject5 != null) {
                    jSONObject4.put("package_info", jSONObject5.toString());
                }
                JSONObject jSONObject6 = jSONObject2;
                if (jSONObject6 != null) {
                    jSONObject4.put("error_info", jSONObject6.toString());
                }
                JSONObject jSONObject7 = jSONObject3;
                if (jSONObject7 != null) {
                    jSONObject4.put("common_info", jSONObject7.toString());
                }
                jSONObject4.put("ext_plugin_code", nu.l());
                return com.byazt.jlb.l.l().hp("pitaya_run_task").l(jSONObject4.toString());
            }
        }, "pitaya_run_task", true);
    }

    public void hp(final int i2, ns nsVar) throws JSONException {
        if (nsVar == null) {
            return;
        }
        final JSONObject jSONObjectHp = nsVar.hp(-1L);
        final long jL = nsVar.l();
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.18
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("bid_token_time");
                try {
                    jSONObjectHp.put("total", jL);
                    jSONObjectHp.put("opt_sample", 1);
                    jSONObjectHp.put("slot_type", i2);
                    lVarHp.l(jSONObjectHp.toString());
                } catch (Throwable unused) {
                }
                return lVarHp;
            }
        }, "get_bidding_token", true);
    }

    public void hp(final int i2, final long j2, final String str, final int i3) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.19
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("encrypt_track");
                try {
                    JSONObject jSONObject = new JSONObject();
                    long j3 = j2;
                    if (j3 >= 0) {
                        jSONObject.put("cost_time", j3);
                    }
                    jSONObject.put("opt_sample", 1);
                    int i4 = i2;
                    if (i4 != -1) {
                        jSONObject.put("event_res", i4);
                    }
                    int i5 = i3;
                    if (i5 != -1 && i2 == 3) {
                        jSONObject.put("armor_load_status", i5);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("type", str);
                    }
                    lVarHp.l(jSONObject.toString());
                } catch (Throwable unused) {
                }
                return lVarHp;
            }
        }, "encrypt_track", true);
    }

    public void hp(final int i2, final long j2, final Boolean bool, final String str) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.20
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("encrypt_track");
                try {
                    JSONObject jSONObject = new JSONObject();
                    long j3 = j2;
                    if (j3 >= 0) {
                        jSONObject.put("cost_time", j3);
                    }
                    Boolean bool2 = bool;
                    if (bool2 != null) {
                        jSONObject.put("init_succ", bool2.booleanValue() ? 1 : 2);
                    }
                    jSONObject.put("opt_sample", 1);
                    int i3 = i2;
                    if (i3 != -1) {
                        jSONObject.put("event_res", i3);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("type", str);
                    }
                    lVarHp.l(jSONObject.toString());
                } catch (Throwable unused) {
                }
                return lVarHp;
            }
        }, "encrypt_track", true);
    }

    public void hp(final int i2) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.21
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("has_pre_req").l(i2);
            }
        }, "has_pre_req", true);
    }

    public void hp(final int i2, final String str, final String str2, final String str3, final String str4) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.22
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("fetch_adm", i2 == 0 ? 1 : 0);
                jSONObject.put("code", i2);
                jSONObject.put("msg", str);
                jSONObject.put("material_keys", str4);
                return com.byazt.jlb.l.l().hp("fetch_adm_status").l(i2).jx(str3).a(str2).l(jSONObject.toString());
            }
        }, "fetch_adm_status", true);
    }

    public void hp(final String str) {
        if (str == null) {
            return;
        }
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.25
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("error_ad_info").hp(System.currentTimeMillis() / 1000).q(str);
            }
        }, "error_ad_info", true);
    }

    public void hp(final String str, final JSONObject jSONObject, final JSONObject jSONObject2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.26
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp(str);
                JSONObject jSONObject3 = jSONObject2;
                if (jSONObject3 != null) {
                    lVarHp.l(jSONObject3.toString());
                }
                JSONObject jSONObject4 = jSONObject;
                if (jSONObject4 != null) {
                    String strOptString = jSONObject4.optString("rit");
                    String strOptString2 = jSONObject.optString("cid");
                    int iOptInt = jSONObject.optInt("adtype");
                    String strOptString3 = jSONObject.optString("req_id");
                    String strOptString4 = jSONObject.optString("duration");
                    lVarHp.jx(strOptString);
                    lVarHp.hp(iOptInt);
                    lVarHp.j(strOptString2);
                    lVarHp.a(strOptString3);
                    lVarHp.w(strOptString4);
                }
                return lVarHp;
            }
        }, str);
    }

    public void hp(final String str, final JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.27
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp(str);
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 != null) {
                    lVarHp.l(jSONObject2.toString());
                }
                return lVarHp;
            }
        }, str);
    }

    public void hp(mp mpVar, String str) throws JSONException {
        if (mpVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("type", str);
            jSONObject.putOpt("req_id", mpVar.ns());
            jSONObject.putOpt("aid", mpVar.cx());
            jSONObject.putOpt("cid", mpVar.j());
        } catch (JSONException unused) {
        }
        hp("showTime", jSONObject, (Throwable) null);
    }

    public void hp(String str, Throwable th) {
        hp(str, (JSONObject) null, th);
    }

    public void hp(final JSONObject jSONObject, final JSONObject jSONObject2) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.28
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("request", jSONObject);
                jSONObject3.put("response", jSONObject2);
                return com.byazt.jlb.l.l().hp("device_register").l(jSONObject3.toString());
            }
        }, "device_register");
    }

    public void hp(final String str, final JSONObject jSONObject, final Throwable th) {
        if (w.hp(str, 1.0d)) {
            l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.29
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt(com.umeng.ccg.a.f49756j, str);
                    jSONObject2.putOpt("object", jSONObject);
                    Throwable th2 = th;
                    if (th2 != null) {
                        jSONObject2.putOpt("exception", Log.getStackTraceString(th2));
                    }
                    return com.byazt.jlb.l.l().hp("exception").l(jSONObject2.toString());
                }
            }, "exception");
        }
    }

    public void hp(final mp mpVar, final long j2, final boolean z2, final boolean z3) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.34
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("req_id", mpVar.ns());
                jSONObject.put("auth", z2);
                jSONObject.put("duration", j2);
                jSONObject.put("time_out", z3);
                rv rvVarC_ = mpVar.C_();
                if (rvVarC_ != null) {
                    jSONObject.put("saas_info", rvVarC_.hp());
                }
                jSONObject.put(n.f36450m, mpVar.w_());
                return com.byazt.jlb.l.l().hp("auth_time").l(jSONObject.toString());
            }
        }, "auth_time");
    }

    public void hp(final String str, final String str2, final int i2, final JSONObject jSONObject) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.35
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("event_type", str2);
                jSONObject2.putOpt(NotificationCompat.CATEGORY_EVENT, str);
                jSONObject2.putOpt("object", jSONObject);
                jSONObject2.putOpt("state", Integer.valueOf(i2));
                return com.byazt.jlb.l.l().hp("convert_event").l(jSONObject2.toString());
            }
        }, "convert_event");
    }

    public void hp(final mp mpVar, final int i2, final int i3, final View view) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.36
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().jx(String.valueOf(ky.zy(mpVar))).hp(i2).hp("register_info");
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", i3);
                jSONObject.put("targetIsNull", view == null ? 1 : 0);
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "register_info");
    }

    public void hp(final mp mpVar, final Object obj) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.37
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("upie_img_play_success");
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", obj);
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "upie_img_play_success");
    }

    public void hp(final mp mpVar, final String str, final long j2) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.40
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("uttie_played");
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uttie_url", str);
                jSONObject.put("duration", j2);
                lVarHp.l(jSONObject.toString());
                return lVarHp;
            }
        }, "uttie_played");
    }

    public void hp(final mp mpVar, final String str, final JSONObject jSONObject) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.42
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp(str);
                mp mpVar2 = mpVar;
                if (mpVar2 != null) {
                    lVarHp.a(mpVar2.ns()).s(mpVar.w_());
                }
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 != null) {
                    lVarHp.l(jSONObject2.toString());
                }
                return lVarHp;
            }
        }, str);
    }

    public static void hp(final com.byazt.jt.l lVar, final long j2, final long j3, final long j4, final int i2, final int i3, final int i4) {
        hp().eb(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.48
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                int i5 = i4 > 0 ? 2 : 1;
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("available_type", Integer.valueOf(i5));
                jSONObject.putOpt("creative_check_duration", Long.valueOf(j3));
                jSONObject.putOpt("total_duration", Long.valueOf(j4));
                jSONObject.putOpt("ad_slot_type", Integer.valueOf(i2));
                jSONObject.putOpt("check_count", Integer.valueOf(i3));
                jSONObject.putOpt("success_count", Integer.valueOf(i4));
                return com.byazt.jlb.l.l().hp(i2).jx(lVar.j()).l((int) j2).l(jSONObject.toString());
            }
        });
    }

    public void hp(final mp mpVar, final float f2, final float f3, final float f4, final float f5, final View view) {
        l(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.50
            /* JADX WARN: Removed duplicated region for block: B:22:0x0081  */
            @Override // com.byazt.fq.hp
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.byazt.jlb.hp hp() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 216
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.lf.k.AnonymousClass50.hp():com.byazt.jlb.hp");
            }
        }, "video_size_gap");
    }

    public void hp(final long j2, final long j3, final int i2, final int i3) {
        l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.lf.k.51
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("encrypt_track");
                try {
                    JSONObject jSONObject = new JSONObject();
                    long j4 = j2;
                    if (j4 >= 0) {
                        jSONObject.put("initZeusCostTime", j4);
                    }
                    long j5 = j3;
                    if (j5 > 0) {
                        jSONObject.put("loadCostTime", j5);
                    }
                    jSONObject.put("eventRes", i2);
                    jSONObject.put("eventType", i3);
                    lVarHp.l(jSONObject.toString());
                } catch (Throwable unused) {
                }
                return lVarHp;
            }
        }, "dex_adapter_track", true);
    }
}
