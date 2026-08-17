package com.byazt.fct;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.byazt.aw.w;
import com.byazt.di.l;
import com.byazt.jz.s;
import com.byazt.lsx.a;
import com.byazt.zg.b;
import com.byazt.zg.nu;
import com.byazt.zg.o;
import com.byazt.zg.xs;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 30})
/* loaded from: classes2.dex */
public class jx {
    public static long eb = 0;

    /* renamed from: j, reason: collision with root package name */
    public static volatile boolean f19689j = false;
    public static boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static long f19690l;

    /* renamed from: s, reason: collision with root package name */
    public static long f19691s;

    /* renamed from: w, reason: collision with root package name */
    public static AtomicBoolean f19692w = new AtomicBoolean(false);
    public static Runnable hp = new Runnable() { // from class: com.byazt.fct.jx.3
        @Override // java.lang.Runnable
        public void run() {
            com.byazt.aw.l.hp("TMe", "--==-- queueSize: " + ((ThreadPoolExecutor) w.a()).getQueue().size());
            w.hp(jx.hp, 5000L);
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public static final ComponentCallbacks f19688a = new ComponentCallbacks() { // from class: com.byazt.fct.jx.4
        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(@NonNull Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            com.byazt.xob.hp.hp().l();
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 219})
    public static class hp extends BroadcastReceiver {
        private hp() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || s.u().nu()) {
                return;
            }
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- event multi receiver");
            if (intent.getIntExtra("b_msg_id", -1) == 1) {
                try {
                    if (b.hp(context)) {
                        com.byazt.lsx.jx.jx();
                    } else {
                        com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- event multi receiver not in main proc");
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public interface l {
        public static final String hp = nu.hp() + ".openadsdk.permission.TT_PANGOLIN";
    }

    public static void a() {
        com.byazt.di.l.l().jx(1);
        if (!f19692w.get()) {
            w();
        }
        Context context = com.byazt.di.l.getContext();
        if (context == null) {
            return;
        }
        try {
            com.byazt.aw.l.l("TNCManager_GroMore", "尝试刷新TNC tryRefreshTNCConfig");
            com.byazt.xr.l.hp().l().hp(context, false);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ec() {
        if (com.byazt.di.l.l().kg()) {
            Map<String, String> mapMp = com.byazt.di.l.l().mp();
            a.hp((com.byazt.rt.jx) null, (com.byazt.iqm.l) null, xs.hp(), 1);
            a.hp(xs.hp(mapMp));
        }
    }

    public static String j() {
        try {
            com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(MediationConstant.ADN_PANGLE);
            return jVarHp != null ? jVarHp.getNetworkSdkPluginVersion() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean jx() {
        return f19689j;
    }

    private static void k() {
        com.byazt.htw.hp hpVarPu;
        if (!jx || (hpVarPu = com.byazt.di.hp.jl().pu()) == null) {
            return;
        }
        hpVarPu.hp();
        com.byazt.di.hp.jl().hp((com.byazt.htw.hp) null);
    }

    private static void u() {
        com.byazt.aw.l.hp(MediationConstant.TAG, "AppStateListener开始注册");
        com.byazt.zn.hp hpVarJx = s.u().jx();
        if (hpVarJx != null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "AppStateListener注册成功");
            eb = SystemClock.elapsedRealtime();
            hpVarJx.hp(new hp.l() { // from class: com.byazt.fct.jx.5
                @Override // com.byazt.zn.hp.l
                public void onAppBackground() {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j2 = com.byazt.wu.hp.w() != 2 ? jx.eb > 0 ? jElapsedRealtime - jx.eb : 0L : 0L;
                    a.l(j2);
                    com.byazt.di.hp.jl().l(j2);
                    com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- AppStateListener on background: " + j2 + ", " + com.byazt.wu.hp.w());
                    if (jElapsedRealtime - jx.f19691s < 3000) {
                        com.byazt.aw.l.l(MediationConstant.TAG, "badkground too frequently ms: " + (jElapsedRealtime - jx.f19691s));
                    } else if (com.byazt.lsx.jx.l()) {
                        long unused = jx.f19691s = jElapsedRealtime;
                        if (b.hp(com.byazt.di.l.getContext())) {
                            com.byazt.lsx.jx.jx();
                        } else {
                            jx.xs();
                        }
                    }
                }

                @Override // com.byazt.zn.hp.l
                public void onAppExit() {
                }

                @Override // com.byazt.zn.hp.l
                public void onAppForeground() {
                    int iW = com.byazt.wu.hp.w();
                    com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- AppStateListener on foreground, ".concat(String.valueOf(iW)));
                    long unused = jx.eb = SystemClock.elapsedRealtime();
                    if (iW != 2) {
                        com.byazt.xoi.hp.jx();
                    }
                }

                @Override // com.byazt.zn.hp.l
                public void onAppStart() {
                }
            });
        }
        if (com.byazt.di.hp.jl().k()) {
            try {
                com.byazt.di.l.getContext().registerReceiver(new hp(), new IntentFilter("com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"), l.hp, null);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void v() {
        Application applicationHp = l.hp.hp();
        if (applicationHp == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "lowMemoryListener注册失败, app = null");
            return;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "lowMemoryListener注册成功");
        ComponentCallbacks componentCallbacks = f19688a;
        applicationHp.unregisterComponentCallbacks(componentCallbacks);
        applicationHp.registerComponentCallbacks(componentCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void vv() {
        if (com.byazt.di.l.l().xh()) {
            ec();
        } else {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.byazt.fct.jx.6
                @Override // java.lang.Runnable
                public void run() {
                    jx.ec();
                }
            }, 2000L);
        }
    }

    public static void w() {
        Context context;
        if (f19692w.get()) {
            return;
        }
        com.byazt.aw.l.l("TNCManager_GroMore", "初始化TNC initTTAdNetTNC：supportTNC：" + com.byazt.di.l.l().as());
        if (com.byazt.di.l.l().as() && (context = com.byazt.di.l.getContext()) != null) {
            try {
                com.byazt.xr.l.hp().l().hp(context, true, (com.byazt.aq.l) new com.byazt.xr.hp(context));
            } catch (Exception unused) {
            }
            f19692w.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void xs() {
        if (com.byazt.di.l.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(nu.hp());
                intent.setAction("com.bytedance.msdk.sdkinit.EventMultiFlushReceiver");
                intent.putExtra("b_msg_id", 1);
                com.byazt.di.l.getContext().sendBroadcast(intent, l.hp);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(Context context, JSONObject jSONObject) {
        com.byazt.lsx.jx.hp(context, jSONObject);
        com.byazt.lsx.jx.hp();
    }

    public static boolean l() {
        return jx;
    }

    private static void l(final Context context, final JSONObject jSONObject) throws JSONException {
        com.byazt.aw.l.j("TTMediationSDK_SDK_Init", "msdk_init v1.............");
        hp(true);
        f19690l = SystemClock.elapsedRealtime();
        u();
        j.hp(context.getApplicationContext());
        com.byazt.owd.a.hp(jSONObject, "s-prepare");
        hp(jSONObject);
        com.byazt.owd.a.hp(jSONObject, "s-local_cfg");
        if (com.byazt.di.l.l().jx()) {
            w.hp(new Runnable() { // from class: com.byazt.fct.jx.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    jx.jx(context, jSONObject);
                    com.byazt.owd.a.hp(jSONObject, "s-adlog2");
                    com.byazt.lsx.jx.hp(com.byazt.di.l.getContext());
                }
            });
        } else {
            jx(context, jSONObject);
        }
        f19689j = true;
        com.byazt.owd.a.hp(jSONObject, "s-adlog");
        com.byazt.di.l.l().hp(true, jSONObject, new com.byazt.xzd.l() { // from class: com.byazt.fct.jx.2
            @Override // com.byazt.xzd.l
            public void hp() {
                com.byazt.di.l.l().hp((com.byazt.xzd.l) null);
                w.j(new Runnable() { // from class: com.byazt.fct.jx.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        o.hp(o.l() + 1);
                        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext());
                        jx.l(context, jx.f19690l);
                        jx.v();
                    }
                });
                jx.vv();
            }
        });
        l(jSONObject);
    }

    public static long hp() {
        return f19690l;
    }

    private static void hp(boolean z2) {
        jx = z2;
        k();
    }

    public static void hp(@NonNull com.byazt.bki.hp hpVar, Context context, JSONObject jSONObject) {
        hp(context);
        com.byazt.owd.a.hp(jSONObject, "s-init_context");
        hp(hpVar, jSONObject);
        com.byazt.owd.a.hp(jSONObject, "s-global_info_end");
        l(context, jSONObject);
    }

    @SuppressLint({"WrongConstant"})
    private static void hp(com.byazt.bki.hp hpVar, JSONObject jSONObject) throws JSONException {
        com.byazt.di.hp.jl().hp(hpVar.k());
        com.byazt.di.hp.jl().hp(System.currentTimeMillis());
        com.byazt.owd.a.hp(jSONObject, "s-global_info_1");
        com.byazt.di.hp.jl().jx(hpVar.hp());
        com.byazt.di.hp.jl().a(hpVar.l());
        com.byazt.di.hp.jl().jx(hpVar.v());
        com.byazt.di.hp.jl().w(hpVar.a().jx());
        com.byazt.di.hp.jl().a(hpVar.a().j());
        com.byazt.di.hp.jl().hp(hpVar.a().l());
        com.byazt.di.hp.jl().hp(hpVar.a().w());
        com.byazt.di.hp.jl().hp(hpVar.a().a());
        com.byazt.di.hp.jl().j(hpVar.a().hp());
        com.byazt.di.hp.jl().j(hpVar.j());
        com.byazt.di.hp.jl().l(hpVar.w());
        com.byazt.di.hp.jl().w(hpVar.a().eb());
        com.byazt.di.hp.jl().hp(hpVar.a().s());
        com.byazt.di.hp.jl().hp(hpVar.q(), true);
        com.byazt.di.hp.jl().eb(hpVar.a().q());
        com.byazt.di.hp.jl().l(hpVar.e());
        com.byazt.di.hp.jl().jx(hpVar.zy());
        com.byazt.di.hp.jl().eb(hpVar.gu());
        com.byazt.owd.a.hp(jSONObject, "s-global_info_2");
        com.byazt.di.hp.jl().hp(hpVar.jl());
        com.byazt.owd.a.hp(jSONObject, "s-global_info_3");
        com.byazt.di.hp.jl().s(hpVar.eb().l());
        com.byazt.di.hp.jl().s(hpVar.eb().hp());
        com.byazt.di.hp.jl().q(hpVar.eb().jx());
        com.byazt.di.hp.jl().e(hpVar.eb().j());
        if (hpVar.zy() != null) {
            try {
                com.byazt.di.hp.jl().hp((List<String>) hpVar.zy().get(MediationConstant.GM_EXTRA_KEY_PRIME_RIT_LIST));
            } catch (Throwable unused) {
            }
        }
        if (hpVar.s() != null) {
            com.byazt.di.hp.jl().l(hpVar.s().hp());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Context context, long j2) {
        if (!j.hp()) {
            com.byazt.aw.l.hp("TMe", "-----==---- 延时上报sdk_init");
            j.hp(j2);
        } else {
            com.byazt.aw.l.hp("TMe", "-----==---- 正常上报sdk_init");
            j.l(j2);
        }
    }

    private static void l(JSONObject jSONObject) {
        com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp(0, jSONObject);
    }

    public static void hp(SparseArray<Object> sparseArray) {
        for (com.byazt.gkj.j jVar : com.byazt.uhd.l.hp().jx()) {
            if (jVar != null) {
                try {
                    jVar.setPrivacyConfig(com.byazt.di.hp.jl().ns(), sparseArray);
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static void hp(Context context) {
        if (context != null) {
            com.byazt.di.l.hp(context);
        }
    }

    private static void hp(JSONObject jSONObject) {
        try {
            com.byazt.di.l.l().hp(true, jSONObject);
        } catch (Throwable th) {
            com.byazt.aw.l.j(MediationConstant.TAG, "InitHelper-->initSetting->loadData Exception=" + th.toString());
        }
    }
}
