package com.byazt.zn;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
import android.view.accessibility.AccessibilityManager;
import com.byazt.iz.hp;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.umeng.analytics.pro.cl;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 2456})
/* loaded from: classes3.dex */
public class DeviceUtils {

    /* renamed from: a, reason: collision with root package name */
    public static volatile long f28471a = -1;

    /* renamed from: e, reason: collision with root package name */
    public static volatile BroadcastReceiver f28472e = null;
    public static volatile com.byazt.iz.hp gu = null;

    /* renamed from: j, reason: collision with root package name */
    public static volatile int f28473j = -1;
    public static volatile int jx = -1;

    /* renamed from: w, reason: collision with root package name */
    public static volatile long f28479w;
    public static final AtomicLong hp = new AtomicLong();
    public static volatile int eb = -1;

    /* renamed from: s, reason: collision with root package name */
    public static volatile boolean f28477s = false;

    /* renamed from: q, reason: collision with root package name */
    public static volatile boolean f28476q = false;
    public static String jl = "";
    public static String zy = "";

    /* renamed from: l, reason: collision with root package name */
    public static int f28475l = -1;

    /* renamed from: k, reason: collision with root package name */
    public static long f28474k = 0;

    /* renamed from: v, reason: collision with root package name */
    public static long f28478v = 0;

    @com.byazt.kj.hp(hp = {0, 1, 442, 2414})
    public static class DeviceStatusBroadCastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            if (intent == null) {
                return;
            }
            com.byazt.ymw.e.jx().post(new Runnable() { // from class: com.byazt.zn.DeviceUtils.DeviceStatusBroadCastReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    DeviceStatusBroadCastReceiver.this.hp(intent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(Intent intent) {
            int intExtra = -1;
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("present", false);
                if (booleanExtra) {
                    int intExtra2 = intent.getIntExtra("status", -1);
                    if (intExtra2 == -1) {
                        hp.hp = intExtra2;
                    } else if (intExtra2 == 2) {
                        hp.hp = 1;
                    } else {
                        hp.hp = 0;
                    }
                } else {
                    hp.hp = 2;
                }
                hp.f28481l = (intent.getIntExtra("level", -1) * 100) / intent.getIntExtra("scale", -1);
                if (!com.byazt.jz.s.u().nu()) {
                    com.byazt.eq.l.hp(booleanExtra);
                }
            }
            try {
                intExtra = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1);
            } catch (Exception unused) {
            }
            if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) && intExtra == 3) {
                com.byazt.ymw.e.hp().post(new com.byazt.uid.eb("tt_vol") { // from class: com.byazt.zn.DeviceUtils.DeviceStatusBroadCastReceiver.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AudioManager audioManager = (AudioManager) com.byazt.jz.sz.getContext().getSystemService(MediaFormat.KEY_AUDIO);
                            if (audioManager == null) {
                                return;
                            }
                            int streamVolume = audioManager.getStreamVolume(3);
                            if (streamVolume != DeviceUtils.eb) {
                                com.byazt.rdt.jx.hp().hp(streamVolume);
                            }
                            if (DeviceUtils.eb != -1) {
                                int i2 = streamVolume == 0 ? 0 : streamVolume - DeviceUtils.eb > 0 ? 2 : 1;
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (jCurrentTimeMillis - DeviceUtils.f28478v > 1000) {
                                    com.byazt.lf.k.hp(i2, -1);
                                }
                                long unused2 = DeviceUtils.f28478v = jCurrentTimeMillis;
                            }
                            int unused3 = DeviceUtils.eb = streamVolume;
                        } catch (Exception unused4) {
                        }
                    }
                });
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 442, 2237})
    public static class hp {
        public static int hp = -1;

        /* renamed from: l, reason: collision with root package name */
        public static float f28481l;

        public static int hp(Context context) {
            com.byazt.eq.l.hp(context);
            return hp;
        }

        public static float l(Context context) {
            com.byazt.eq.l.l(context);
            return f28481l;
        }
    }

    public static int a() {
        if (f28473j != -1 && !hp(f28479w, 60000L)) {
            return f28473j;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.byazt.jz.sz.getContext().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        f28473j = accessibilityManager.isEnabled() ? 1 : 0;
        f28479w = System.currentTimeMillis();
        return f28473j;
    }

    public static int e() {
        if (eb >= 0) {
            return eb;
        }
        try {
            AudioManager audioManager = (AudioManager) com.byazt.jz.sz.getContext().getSystemService(MediaFormat.KEY_AUDIO);
            if (audioManager == null) {
                return 0;
            }
            int streamVolume = audioManager.getStreamVolume(3);
            com.byazt.rdt.jx.hp().l(streamVolume);
            eb = streamVolume;
            return eb;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void eb() throws IOException {
        if (com.byazt.jz.sz.getContext() != null) {
            int iZy = ky.zy();
            com.byazt.lca.j.hp().hp("cpu_cnt", iZy);
            ky.hp = iZy;
            int iJx = ky.jx(ky.zy());
            com.byazt.lca.j.hp().hp("cpu_max_freq", iJx);
            ky.f28538l = iJx;
            int iJ = ky.j(ky.zy());
            com.byazt.lca.j.hp().hp("cpu_min_freq", iJ);
            ky.jx = iJ;
            String strQ = ky.q("MemTotal");
            if (strQ != null) {
                com.byazt.lca.j.hp().hp("total_memory", strQ);
                ky.f28536j = strQ;
            }
            long jVv = ky.vv();
            com.byazt.lca.j.hp().hp("internal_storage", jVv);
            ky.f28543w = jVv;
            long jHp = com.byazt.ymw.xs.hp();
            com.byazt.lca.j.hp().hp("free_storage", jHp);
            ky.f28534a = jHp;
            long jN = ky.n();
            com.byazt.lca.j.hp().hp("sdcard_storage", jN);
            ky.eb = jN;
            boolean zCx = ky.cx();
            com.byazt.lca.j.hp().hp("is_root", zCx ? 1 : 0);
            ky.f28540s = zCx ? 1 : 0;
        }
    }

    public static void gu() {
        try {
            if (f28477s && f28472e != null) {
                com.byazt.jz.sz.getContext().getApplicationContext().unregisterReceiver(f28472e);
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean hp() {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).isScreenOn();
    }

    public static int j() {
        int iL = com.byazt.ymw.vv.l(com.byazt.jz.sz.getContext());
        jx = iL;
        return iL;
    }

    public static void jl() {
        if (f28476q && gu != null) {
            gu.l();
        }
    }

    public static long q() {
        return f28471a != -1 ? f28471a : com.byazt.lca.j.hp().l("dev19", -1L);
    }

    public static int s() {
        return (int) (com.byazt.jz.sz.getContext().getResources().getConfiguration().fontScale * 16.0f);
    }

    public static float w() {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getScreenBright();
    }

    public static String hp(Boolean bool) {
        String imei = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getImei(bool);
        String str = zy;
        if (str != null && str.equals(imei)) {
            return imei;
        }
        zy = imei;
        com.byazt.oz.jx.l(6, imei);
        return imei;
    }

    public static void jx() {
        j();
        w();
        a();
        hp(0);
        hp(1);
        ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getNewIpAddrs(false);
        ec.l((String) null);
    }

    public static void j(Context context) {
        if (!f28477s) {
            try {
                f28472e = new DeviceStatusBroadCastReceiver();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                context.getApplicationContext().registerReceiver(f28472e, intentFilter);
                f28477s = true;
            } catch (Throwable unused) {
            }
        }
        if (f28476q) {
            return;
        }
        com.byazt.iz.hp hpVar = new com.byazt.iz.hp(com.byazt.jz.sz.getContext(), com.byazt.ymw.e.l(), new hp.InterfaceC0277hp() { // from class: com.byazt.zn.DeviceUtils.1
            @Override // com.byazt.iz.hp.InterfaceC0277hp
            public void hp(int i2) {
                boolean zJx = DeviceUtils.jx(com.byazt.jz.sz.getContext());
                int i3 = DeviceUtils.f28475l;
                if (i3 == -1) {
                    DeviceUtils.f28475l = i2;
                    return;
                }
                int i4 = i3 - i2;
                DeviceUtils.f28475l = i2;
                if (!zJx) {
                    if (i2 != -1) {
                        com.byazt.lf.k.hp(-1, i4 > 0 ? 1 : 2);
                    }
                    com.byazt.rdt.jx.hp().hp(true);
                } else if (Math.abs(i4) > 20) {
                    int i5 = i4 > 0 ? 1 : 2;
                    com.byazt.rdt.jx.hp().hp(true);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - DeviceUtils.f28474k > 1000) {
                        com.byazt.lf.k.hp(-1, i5);
                    }
                    long unused2 = DeviceUtils.f28474k = jCurrentTimeMillis;
                }
            }
        });
        gu = hpVar;
        hpVar.hp();
        f28476q = true;
    }

    public static String l() {
        String androidId = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getAndroidId();
        String str = jl;
        if (str != null && str.equals(androidId)) {
            return androidId;
        }
        jl = androidId;
        com.byazt.oz.jx.l(9, androidId);
        return androidId;
    }

    public static boolean hp(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static void hp(JSONObject jSONObject) throws JSONException {
        if (gu.l()) {
            jSONObject.putOpt("os_new", "harmony");
            jSONObject.putOpt("harmonyos_api", gu.w());
            jSONObject.putOpt("harmonyos_version", gu.a());
            jSONObject.putOpt("harmonyos_release_type", gu.eb());
            jSONObject.putOpt("harmonyos_build_version", gu.s());
            jSONObject.putOpt("pure_mode", Integer.valueOf(gu.hp(com.byazt.jz.sz.getContext()) ? 1 : 2));
        } else {
            jSONObject.putOpt("os_new", "android");
        }
        jSONObject.putOpt("rom_name", Build.BRAND);
    }

    public static boolean l(Context context) {
        return (context.getResources().getConfiguration().uiMode & 15) == 4;
    }

    private static void l(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("package_name", ky.s());
            jSONObject.put("version_code", ky.q());
            jSONObject.put(cl.f49059n, ky.e());
        } catch (Exception unused) {
        }
    }

    public static boolean jx(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness_mode") == 1;
        } catch (Settings.SettingNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static String hp(int i2) {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getNetworkSignalType(i2);
    }

    public static boolean hp(long j2, long j3) {
        return System.currentTimeMillis() - j2 > j3;
    }

    public static JSONObject hp(int i2, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", com.byazt.jz.s.u().ns());
            jSONObject.put("name", com.byazt.jz.s.u().cx());
            l(jSONObject);
            com.byazt.tn.l.l(jSONObject);
            jSONObject.put("is_paid_app", com.byazt.jz.s.u().b());
            if (!com.byazt.lca.j.hp().eb(i2)) {
                jSONObject.put("network_speed", com.byazt.cm.hp.hp());
            }
            jSONObject.put("apk_sign", com.byazt.ij.hp.gu());
            jSONObject.put("useful_open_sdk", com.byazt.kfd.j.jx().l());
            jSONObject.put("real_app_name", com.byazt.ij.hp.e());
            jSONObject.put("app_cold_startup_time", com.byazt.mb.jx.jx().hp());
            jSONObject.put("sdk_init_timestamp", com.byazt.mb.jx.jx().l());
            if (z2) {
                jSONObject.put("session_ad_index", hp.addAndGet(1L));
                if (com.byazt.jz.sz.l().tq()) {
                    long jJx = com.byazt.mb.hp.jx();
                    jSONObject.put("app_total_7_duration", com.byazt.mb.hp.j() + jJx);
                    jSONObject.put("app_use_7_duration", jJx);
                    jSONObject.put("start_session", com.byazt.mb.hp.w());
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void hp(long j2) {
        if (j2 == -1 || f28471a == j2) {
            return;
        }
        f28471a = j2;
        com.byazt.lca.j.hp().hp("dev19", j2);
    }
}
