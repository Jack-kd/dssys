package com.byazt.oda;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 150})
/* loaded from: classes3.dex */
public class q {
    public static volatile long hp = 0;
    public static volatile int jx = 60000;

    /* renamed from: l, reason: collision with root package name */
    public static volatile int f24014l = -1;

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicBoolean f24013j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public static final Map<com.byazt.yb.jx, Object> f24016w = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public static AtomicBoolean f24012a = new AtomicBoolean(false);
    public static final Object eb = new Object();

    /* renamed from: s, reason: collision with root package name */
    public static com.byazt.yb.w f24015s = null;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 3})
    public static class hp extends BroadcastReceiver {
        private hp() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z2 = false;
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            if (q.f24016w != null && q.f24016w.size() > 0) {
                z2 = true;
            }
            q.l(context, intent, z2, booleanExtra);
        }
    }

    private static int jx(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        com.byazt.yb.w wVar = f24015s;
                        return (wVar == null || !wVar.hp(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !("TD-SCDMA".equalsIgnoreCase(subtypeName) || "WCDMA".equalsIgnoreCase(subtypeName) || "CDMA2000".equalsIgnoreCase(subtypeName))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(Context context) {
        f24014l = jx(context);
        hp = SystemClock.elapsedRealtime();
        return f24014l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final Context context, final Intent intent, final boolean z2, final boolean z3) {
        if (!z2 && z3) {
            f24014l = 0;
        } else if (f24013j.compareAndSet(false, true)) {
            ((r) com.byazt.ym.j.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.oda.q.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = q.f24014l = z3 ? 0 : q.l(context);
                    if (z2) {
                        q.l(context, intent, q.f24014l, z3);
                    }
                    q.f24013j.set(false);
                }
            });
        }
    }

    public static void hp(com.byazt.yb.w wVar) {
        f24015s = wVar;
    }

    public static void hp(com.byazt.yb.jx jxVar, Context context) {
        if (jxVar == null) {
            return;
        }
        if (!f24012a.get()) {
            try {
                context.registerReceiver(new hp(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                f24012a.set(true);
            } catch (Throwable unused) {
            }
        }
        f24016w.put(jxVar, eb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Context context, Intent intent, int i2, boolean z2) {
        Map<com.byazt.yb.jx, Object> map = f24016w;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (com.byazt.yb.jx jxVar : map.keySet()) {
            if (jxVar != null) {
                jxVar.onNetworkChanged(context, intent, !z2, i2);
            }
        }
    }

    public static void hp(com.byazt.yb.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        f24016w.remove(jxVar);
    }

    public static int hp(Context context, long j2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (hp + j2 <= jElapsedRealtime) {
            return l(context);
        }
        if (f24014l == -1) {
            return l(context);
        }
        if (jElapsedRealtime - hp >= jx) {
            l(context, (Intent) null, false, false);
        }
        return f24014l;
    }
}
