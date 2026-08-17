package com.byazt.jkd;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.rz.PluginConstants;
import com.byazt.ymw.vv;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.as;
import com.byazt.zn.cx;
import com.byazt.zn.ec;
import com.byazt.zn.ky;
import com.byazt.zn.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bv;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s extends com.byazt.uid.eb {

    /* renamed from: j, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile s f21592j;
    public volatile Runnable eb;
    public final w hp;

    /* renamed from: l, reason: collision with root package name */
    public final Context f21594l;
    public static final AtomicLong jx = new AtomicLong(0);

    /* renamed from: w, reason: collision with root package name */
    public static boolean f21593w = true;

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f21591a = false;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public class hp extends BroadcastReceiver {
        private hp() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            int intExtra = intent.getIntExtra("b_msg_id", -1);
            if (intExtra == 1) {
                long longExtra = intent.getLongExtra("b_msg_time", -1L);
                if (longExtra > 0) {
                    s.jx.set(longExtra);
                    return;
                }
                return;
            }
            if (intExtra == 2) {
                try {
                    if (s.this.hp != null) {
                        s.this.hp.hp();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    private s(w wVar) {
        super("SdkSettingsHelper");
        this.hp = wVar == null ? sz.l() : wVar;
        Context context = sz.getContext();
        this.f21594l = context;
        if (com.byazt.ton.l.hp()) {
            try {
                context.registerReceiver(new hp(), new IntentFilter("com.bytedance.openadsdk.settingReceiver"), ky.d(), com.byazt.ymw.e.hp());
            } catch (Throwable unused) {
            }
        }
    }

    private static JSONObject e() throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectPu = com.byazt.jz.s.u().pu();
        if (jSONObjectPu == null) {
            return new JSONObject();
        }
        Iterator<String> itKeys = jSONObjectPu.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next) && (jSONObjectOptJSONObject = jSONObjectPu.optJSONObject(next)) != null) {
                try {
                    jSONObjectOptJSONObject.put("plugin_update_network", com.byazt.jz.s.u().o().hp(next));
                } catch (JSONException unused) {
                }
            }
        }
        return jSONObjectPu;
    }

    public static void jx() {
        if (sz.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(ky.s());
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 2);
                sz.getContext().sendBroadcast(intent, ky.s() + ".openadsdk.permission.TT_PANGOLIN");
            } catch (Throwable unused) {
            }
        }
    }

    private boolean q() {
        return TextUtils.isEmpty(com.byazt.jz.s.u().ns());
    }

    public static boolean w() {
        return f21591a;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.pg.jl jlVar = (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
            com.byazt.pg.jx jxVar = (com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog");
            jSONObject.put("ip", ec.hp());
            jSONObject.put("ipv6", ec.l());
            jSONObject.put("oaid", jxVar.getOAID(false));
            jSONObject.put("oaid_source", cx.hp());
            jSONObject.put("model", jlVar.getDeviceModel());
            jSONObject.put("conn_type", vv.l(this.f21594l));
            jSONObject.put(bv.f48923x, 1);
            jSONObject.put("oversea_version_type", 0);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(bv.f48924y, String.valueOf(Build.VERSION.RELEASE));
            jSONObject.put("sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("is_plugin", d.hp());
            jSONObject.put("is_boost", true);
            jSONObject.put("sdk_boost_type", com.byazt.wu.hp.w());
            jSONObject.put("download_sdk_version", com.byazt.ff.q.jx());
            jSONObject.put("package_name", ky.s());
            jSONObject.put("position", ky.j() ? 1 : 2);
            jSONObject.put("app_version", ky.e());
            jSONObject.put("app_code", ky.q());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("app_id", com.byazt.jz.s.u().ns());
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("req_sign", com.byazt.ymw.a.l(com.byazt.jz.s.u().ns() != null ? com.byazt.jz.s.u().ns().concat(String.valueOf(jCurrentTimeMillis)).concat(d.f21860w) : ""));
            ky.e();
            jSONObject.put("locale_language", jlVar.getLocalLanguage());
            jSONObject.put("channel", d.f21859s);
            jSONObject.put("applog_did", jxVar.getDid());
            jSONObject.put("can_use_sensor", com.byazt.jz.s.u().w());
            com.byazt.tn.l.hp(jSONObject);
            com.byazt.tn.l.jx(jSONObject);
            jSONObject.put("system_app", d.jx());
            if (d.hp()) {
                jSONObject.put("plugins", e());
            }
            jSONObject.put("imei", DeviceUtils.hp((Boolean) null));
            jSONObject.put(n.f36449l, 1);
            jSONObject.put("device_abi", com.byazt.xgv.l.hp());
            String strEa = com.byazt.jz.s.u().ea();
            if (!TextUtils.isEmpty(strEa)) {
                jSONObject.put("rit_list", strEa);
            }
            long jQu = sz.l().qu();
            if (jQu > 0) {
                jSONObject.put("data_time", jQu);
            }
            Object objRv = sz.l().rv();
            if (objRv != null) {
                jSONObject.put("digest", objRv);
            }
            try {
                jSONObject.put("device_score", Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", ((gu) this.hp).l())));
            } catch (Exception unused) {
                jSONObject.put("device_score", -1);
            }
            jSONObject.put("csj_type", com.byazt.jz.s.u().as() ? 1 : 0);
        } catch (Throwable unused2) {
        }
        return jSONObject;
    }

    public void j() {
        hp(false);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!vv.hp(this.f21594l)) {
            try {
                this.hp.hp();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        if (q()) {
            return;
        }
        if (!q.hp() || com.byazt.jz.vv.hp) {
            JSONObject jSONObjectA = a();
            as asVar = new as(com.byazt.cm.w.hp().l().a());
            asVar.hp(com.byazt.qxx.jx.hp(asVar, ky.gu("/api/ad/union/sdk/settings/")));
            asVar.l("User-Agent", ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getWebViewUA(false));
            asVar.l(jSONObjectA, "settings");
            com.byazt.qxx.jx.hp(jSONObjectA, 1);
            asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jkd.s.2
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    if (lVar == null || !lVar.q()) {
                        try {
                            s.this.hp.hp();
                            sz.l().ud();
                        } catch (Throwable unused2) {
                        }
                        com.byazt.jz.vv.l();
                        return;
                    }
                    try {
                        try {
                            final JSONObject jSONObject = (JSONObject) com.byazt.lca.a.hp(lVar, "settings", false).second;
                            if (jSONObject == null) {
                                return;
                            }
                            try {
                                if (!s.this.hp(jSONObject)) {
                                    return;
                                }
                            } catch (Throwable unused3) {
                            }
                            s.this.hp.hp(jSONObject);
                            if (e.jx() || e.a() || e.j()) {
                                com.byazt.xgv.jx.hp();
                            }
                            if (d.eb) {
                                s.this.hp.l(jSONObject);
                            }
                            new com.byazt.wu.l(64).hp(5).hp(new Runnable() { // from class: com.byazt.jkd.s.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    JSONArray jSONArrayOptJSONArray;
                                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("plugins");
                                    if (jSONArrayOptJSONArray2 != null) {
                                        com.byazt.oo.jx.hp().hp(jSONArrayOptJSONArray2);
                                    }
                                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
                                    if (jSONObjectOptJSONObject == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("plugins")) == null) {
                                        return;
                                    }
                                    com.byazt.oo.jx.hp().hp(jSONArrayOptJSONArray);
                                }
                            });
                            try {
                                s.this.hp.jx(jSONObject);
                                com.byazt.jz.vv.hp();
                                if (!s.f21591a) {
                                    boolean unused4 = s.f21591a = true;
                                }
                                com.byazt.jz.s.u().o().w();
                                com.byazt.nnr.hp.l();
                            } catch (Throwable th) {
                                k.hp().hp("setting_saveData_failed", s.this.hp(th), th);
                            }
                            k.hp().l();
                            if (com.byazt.ton.l.hp()) {
                                s.jx();
                            }
                            com.byazt.qxx.jx.l(jSONObject, 1);
                        } catch (Throwable th2) {
                            k.hp().hp("setting_decrypt", th2);
                        }
                    } catch (Throwable th3) {
                        k.hp().hp("setting_parse", th3);
                    }
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    try {
                        Iterator<String> itKeys = com.byazt.jz.s.u().pu().keys();
                        while (itKeys.hasNext()) {
                            com.byazt.oo.jx.hp().hp(itKeys.next(), 1007);
                        }
                    } catch (Throwable unused2) {
                    }
                    try {
                        s.this.hp.hp();
                        sz.l().ud();
                    } catch (Throwable unused3) {
                    }
                    com.byazt.jz.vv.l();
                }
            });
        }
    }

    public static void l() {
        try {
            nu.hp("tt_sdk_settings_other").clear();
            nu.hp("tt_sdk_settings_other_bst").clear();
            nu.hp("tt_sdk_settings_slot").clear();
            nu.hp("tt_sdk_settings_slot_bst").clear();
            nu.hp("tt_sdk_settings_slot_splash").clear();
            nu.hp("tt_sdk_settings_slot_splash_bst").clear();
        } catch (Throwable unused) {
        }
    }

    public static s hp(w wVar) {
        if (f21592j == null) {
            synchronized (s.class) {
                try {
                    if (f21592j == null) {
                        f21592j = new s(wVar);
                    }
                } finally {
                }
            }
        }
        return f21592j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(long j2) {
        jx.set(j2);
        if (com.byazt.ton.l.hp()) {
            hp(j2);
        }
        com.byazt.uid.w.hp(this, 10);
    }

    public static void hp(long j2) {
        if (j2 > 0 && sz.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(ky.s());
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 1);
                intent.putExtra("b_msg_time", j2);
                sz.getContext().sendBroadcast(intent, ky.d());
            } catch (Throwable unused) {
            }
        }
    }

    public void hp(boolean z2) {
        try {
            if (q()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!z2) {
                if (jCurrentTimeMillis - jx.get() < 600000) {
                    return;
                }
                l(jCurrentTimeMillis);
            } else {
                if (this.eb != null) {
                    return;
                }
                long j2 = (jx.get() + 60000) - jCurrentTimeMillis;
                if (j2 > 0) {
                    this.eb = new Runnable() { // from class: com.byazt.jkd.s.1
                        @Override // java.lang.Runnable
                        public void run() {
                            s.this.eb = null;
                            s.this.l(System.currentTimeMillis());
                        }
                    };
                    com.byazt.ymw.e.hp().postDelayed(this.eb, j2);
                } else {
                    this.eb = null;
                    l(jCurrentTimeMillis);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
            if (jSONObjectOptJSONObject != null) {
                int iOptInt = jSONObjectOptJSONObject.optInt("active_control", 1);
                q.hp(iOptInt);
                return iOptInt == 1;
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject hp(Throwable th) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (th != null) {
            int i2 = 0;
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                i2++;
                if (stackTraceElement != null) {
                    try {
                        jSONObject.putOpt(String.valueOf(i2), stackTraceElement.toString());
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONObject;
    }
}
