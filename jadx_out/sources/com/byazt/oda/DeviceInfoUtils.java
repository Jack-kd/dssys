package com.byazt.oda;

import V.b;
import V.d;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.byazt.pg.r;
import com.byazt.rx.BaseConstants;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 2485})
/* loaded from: classes3.dex */
public class DeviceInfoUtils {

    /* renamed from: a, reason: collision with root package name */
    public static volatile BroadcastReceiver f23966a = null;

    /* renamed from: e, reason: collision with root package name */
    public static volatile String f23967e = null;
    public static volatile BroadcastReceiver eb = null;
    public static volatile long gu = 0;
    public static volatile int hp = -1;

    /* renamed from: j, reason: collision with root package name */
    public static volatile boolean f23968j = false;
    public static volatile long jl = 0;
    public static volatile boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static volatile boolean f23970l = false;

    /* renamed from: q, reason: collision with root package name */
    public static volatile String f23971q = null;

    /* renamed from: s, reason: collision with root package name */
    public static volatile ContentObserver f23972s = null;

    /* renamed from: w, reason: collision with root package name */
    public static volatile boolean f23975w = true;
    public static volatile long xs;
    public static AtomicInteger zy = new AtomicInteger(-1);

    /* renamed from: k, reason: collision with root package name */
    public static AtomicBoolean f23969k = new AtomicBoolean(false);

    /* renamed from: v, reason: collision with root package name */
    public static volatile long f23974v = System.currentTimeMillis();

    /* renamed from: u, reason: collision with root package name */
    public static volatile float f23973u = -2.0f;
    public static long vv = 0;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME})
    public static class ScreenStatusReceiver extends BroadcastReceiver {
        public com.byazt.he.j hp;

        public ScreenStatusReceiver(com.byazt.he.j jVar) {
            this.hp = jVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.oda.DeviceInfoUtils.ScreenStatusReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    ScreenStatusReceiver screenStatusReceiver = ScreenStatusReceiver.this;
                    screenStatusReceiver.hp(intent, screenStatusReceiver.hp.j());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(final Intent intent, boolean z2) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = DeviceInfoUtils.f23975w = true;
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                boolean unused2 = DeviceInfoUtils.f23975w = false;
                if (z2) {
                    return;
                }
                ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("updateScreenStatus") { // from class: com.byazt.oda.DeviceInfoUtils.ScreenStatusReceiver.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((com.byazt.pg.w) com.byazt.ym.j.getService("armor_service")).updateScreenStatus(intent.getAction());
                    }
                });
                return;
            }
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                long unused3 = DeviceInfoUtils.f23974v = System.currentTimeMillis();
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 1222})
    public static class hp implements com.byazt.yb.jx {
        public com.byazt.he.j hp;

        public hp(com.byazt.he.j jVar) {
            this.hp = jVar;
        }

        @Override // com.byazt.yb.jx
        public void onNetworkChanged(Context context, Intent intent, boolean z2, int i2) {
            if (DeviceInfoUtils.zy.get() == i2) {
                return;
            }
            com.byazt.nr.hp.mIsNeedUpdateIp.set(true);
            DeviceInfoUtils.zy.set(i2);
            l.hp.set(true);
            DeviceInfoUtils.f23969k.set(true);
            com.byazt.pg.w wVar = (com.byazt.pg.w) com.byazt.ym.j.getService("armor_service");
            if (this.hp.j()) {
                return;
            }
            wVar.updateNetworkStatus(i2);
        }
    }

    public static boolean a(Context context) {
        if (!f23975w && SystemClock.elapsedRealtime() - vv >= 10000) {
            vv = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    f23975w = powerManager.isInteractive();
                }
            } catch (Throwable unused) {
            }
        }
        return f23975w;
    }

    public static float eb(Context context) {
        if (f23973u != -2.0f && !hp(xs, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS)) {
            return f23973u;
        }
        int i2 = -1;
        if (context != null) {
            try {
                i2 = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
            } catch (Throwable th) {
                u.l("DeviceInfoUtils", th.getMessage());
            }
        }
        if (i2 < 0) {
            f23973u = -1.0f;
        } else {
            f23973u = Math.round((i2 / 255.0f) * 10.0f) / 10.0f;
        }
        xs = System.currentTimeMillis();
        return f23973u;
    }

    public static boolean l(Context context) {
        return (context.getResources().getConfiguration().uiMode & 15) == 4;
    }

    public static void w(Context context) {
        if (f23968j && f23972s != null) {
            context.getContentResolver().unregisterContentObserver(f23972s);
        }
    }

    public static void j(Context context) {
        try {
            if (jx && eb != null) {
                context.getApplicationContext().unregisterReceiver(eb);
            }
        } catch (Throwable unused) {
        }
    }

    public static void jx(Context context) {
        try {
            if (f23970l && f23966a != null) {
                context.getApplicationContext().unregisterReceiver(f23966a);
            }
        } catch (Throwable unused) {
        }
    }

    public static long l() {
        return f23974v;
    }

    public static int hp() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    private static String l(int i2, com.byazt.pg.hp hpVar, Context context) {
        List<CellInfo> allCellInfo;
        int dbm;
        WifiInfo wifiInfoHp;
        int iJx = vv.jx(context);
        com.byazt.he.l customController = hpVar.getCustomController();
        if (iJx == 4) {
            if (i2 == 0) {
                try {
                    if (!customController.isCanUseWifiState() || (wifiInfoHp = jx.hp(hpVar, context)) == null) {
                        return "unknown";
                    }
                    return wifiInfoHp.getRssi() + "dBm";
                } catch (Throwable unused) {
                }
            }
            return "unknown";
        }
        if (customController.isCanUsePhoneState() && customController.isCanUseLocation() && i2 == 1) {
            try {
                if (jx.l(context)) {
                    TelephonyManager telephonyManagerHp = jx.hp(context);
                    int i3 = Build.VERSION.SDK_INT;
                    if (telephonyManagerHp == null || (allCellInfo = telephonyManagerHp.getAllCellInfo()) == null) {
                        return "unknown";
                    }
                    CellInfo cellInfo = allCellInfo.get(0);
                    if (cellInfo instanceof CellInfoGsm) {
                        dbm = ((CellInfoGsm) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoCdma) {
                        dbm = ((CellInfoCdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoLte) {
                        dbm = ((CellInfoLte) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        dbm = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (i3 >= 29 && V.a.a(cellInfo)) {
                        dbm = b.a(cellInfo).getCellSignalStrength().getDbm();
                    } else if (i3 >= 29 && d.a(cellInfo)) {
                        dbm = V.e.a(cellInfo).getCellSignalStrength().getDbm();
                    }
                    if (Integer.MIN_VALUE == dbm) {
                        return "unknown";
                    }
                    return dbm + "dBm";
                }
            } catch (Throwable unused2) {
            }
        }
        return "unknown";
    }

    public static int hp(Context context, boolean z2, com.byazt.pg.hp hpVar, int i2) throws JSONException {
        if (hp != -1) {
            return hp;
        }
        if (z2) {
            String strHp = s.hp("dev06", 2592000000L, hpVar);
            try {
                if (!TextUtils.isEmpty(strHp)) {
                    hp = Integer.parseInt(strHp);
                }
            } catch (Exception unused) {
            }
            if (hp != -1) {
                return hp;
            }
        }
        if (l(context)) {
            hp = 3;
        } else if (hp(context)) {
            hp = 2;
        } else {
            hp = 1;
        }
        if (z2) {
            s.hp("dev06", String.valueOf(hp), hpVar, i2);
        }
        return hp;
    }

    public static boolean hp(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static void hp(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (f23970l) {
            return;
        }
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                f23975w = powerManager.isScreenOn();
            }
        } catch (Throwable unused) {
        }
        try {
            f23966a = broadcastReceiver;
            context.getApplicationContext().registerReceiver(f23966a, intentFilter);
            f23970l = true;
        } catch (Throwable unused2) {
        }
    }

    public static boolean hp(long j2, long j3) {
        return System.currentTimeMillis() - j2 > j3;
    }

    public static String hp(int i2, com.byazt.pg.hp hpVar, Context context) {
        if (i2 == 0 && !TextUtils.isEmpty(f23971q) && !hp(gu, 60000L)) {
            return f23971q;
        }
        if (i2 == 1 && !TextUtils.isEmpty(f23967e) && !hp(jl, 60000L)) {
            return f23967e;
        }
        String strL = l(i2, hpVar, context);
        if (i2 == 0) {
            f23971q = strL;
            gu = System.currentTimeMillis();
            return strL;
        }
        if (i2 == 1) {
            f23967e = strL;
            jl = System.currentTimeMillis();
        }
        return strL;
    }
}
