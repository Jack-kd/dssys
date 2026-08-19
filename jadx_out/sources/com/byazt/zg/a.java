package com.byazt.zg;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 308, 54})
/* loaded from: classes3.dex */
public class a {
    public static long hp = 1800000;

    /* renamed from: l, reason: collision with root package name */
    public static Handler f28414l = new Handler(Looper.getMainLooper());

    @com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp implements Callable<Location> {
        public LocationManager hp;

        /* renamed from: l, reason: collision with root package name */
        public String f28418l;

        public hp(LocationManager locationManager, String str) {
            this.hp = locationManager;
            this.f28418l = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Location call() throws Exception {
            System.currentTimeMillis();
            Location lastKnownLocation = this.hp.getLastKnownLocation(this.f28418l);
            System.currentTimeMillis();
            return lastKnownLocation;
        }
    }

    private static w j(final Context context) {
        final LocationManager locationManager = (LocationManager) context.getSystemService("location");
        w wVar = null;
        if (locationManager != null) {
            try {
                Location locationHp = hp(locationManager);
                if (locationHp != null && l(locationHp)) {
                    l(context, locationHp);
                    wVar = new w((float) locationHp.getLatitude(), (float) locationHp.getLongitude());
                }
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.zg.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a.l(context, locationManager);
                        }
                    });
                    return wVar;
                }
                l(context, locationManager);
                return wVar;
            } catch (Throwable unused) {
                com.byazt.aw.l.l();
            }
        }
        return null;
    }

    @Nullable
    private static w jx(Context context) {
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(null, "gm_tt_ad_mediation_sdk_sp");
        float f2 = jxVarHp.getFloat("latitude", -1.0f);
        float f3 = jxVarHp.getFloat("longitude", -1.0f);
        if (f2 == -1.0f || f3 == -1.0f) {
            return null;
        }
        return new w(f2, f3);
    }

    private static boolean l(Context context) {
        long j2 = com.byazt.ry.j.hp(null, "gm_tt_ad_mediation_sdk_sp").getLong("lbstime", -1L);
        return j2 == -1 || System.currentTimeMillis() - j2 > hp;
    }

    private static String l(LocationManager locationManager) {
        if (locationManager.isProviderEnabled("gps")) {
            return "gps";
        }
        if (locationManager.isProviderEnabled("network")) {
            return "network";
        }
        if (locationManager.isProviderEnabled("passive")) {
            return "passive";
        }
        return null;
    }

    @Nullable
    public static w hp(Context context) {
        if (!com.byazt.di.hp.jl().ns().hp()) {
            return null;
        }
        Context context2 = context == null ? com.byazt.di.l.getContext() : context.getApplicationContext();
        if (context2 == null) {
            return null;
        }
        w wVarJx = jx(context2);
        if (!l(context2)) {
            return wVarJx;
        }
        int iHp = com.byazt.tja.l.hp(context2, g.f31165g);
        int iHp2 = com.byazt.tja.l.hp(context2, g.f31166h);
        if (iHp == 0 || iHp2 == 0) {
            return j(context2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final Context context, final LocationManager locationManager) {
        if (context == null || locationManager == null) {
            return;
        }
        final LocationListener locationListener = new LocationListener() { // from class: com.byazt.zg.a.2
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location != null && a.l(location)) {
                    a.l(context, location);
                }
                a.l(locationManager, this);
            }

            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i2, Bundle bundle) {
            }
        };
        try {
            String strL = l(locationManager);
            if (TextUtils.isEmpty(strL)) {
                return;
            }
            locationManager.requestSingleUpdate(strL, locationListener, Looper.getMainLooper());
            f28414l.postDelayed(new Runnable() { // from class: com.byazt.zg.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.l(locationManager, locationListener);
                }
            }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
        } catch (Throwable unused) {
            com.byazt.aw.l.l();
            l(locationManager, locationListener);
        }
    }

    private static Location hp(LocationManager locationManager) {
        Location locationHp = hp(locationManager, "gps");
        if (locationHp == null) {
            locationHp = hp(locationManager, "network");
        }
        return locationHp == null ? hp(locationManager, "passive") : locationHp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(LocationManager locationManager, LocationListener locationListener) {
        if (locationManager == null || locationListener == null) {
            return;
        }
        try {
            locationManager.removeUpdates(locationListener);
        } catch (Throwable unused) {
            com.byazt.aw.l.l();
        }
    }

    private static Location hp(LocationManager locationManager, String str) {
        try {
            FutureTask futureTask = new FutureTask(new hp(locationManager, str));
            com.byazt.aw.w.j(futureTask);
            return (Location) futureTask.get(1L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Context context, Location location) {
        if (l(location)) {
            com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(null, "gm_tt_ad_mediation_sdk_sp");
            jxVarHp.put("latitude", (float) location.getLatitude());
            jxVarHp.put("longitude", (float) location.getLongitude());
            jxVarHp.put("lbstime", System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Location location) {
        return (location.getLatitude() == 0.0d || location.getLongitude() == 0.0d) ? false : true;
    }
}
