package com.byazt.oda;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 28})
/* loaded from: classes3.dex */
public class hp {
    public static long hp = 1800000;

    /* renamed from: j, reason: collision with root package name */
    public static volatile long f23986j = 0;
    public static volatile com.byazt.il.hp jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static long f23987l = 60000;

    /* renamed from: w, reason: collision with root package name */
    public static volatile long f23988w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 170})
    /* renamed from: com.byazt.oda.hp$hp, reason: collision with other inner class name */
    public static class CallableC0327hp implements Callable<com.byazt.he.w> {
        public com.byazt.pg.hp hp;

        public CallableC0327hp(com.byazt.pg.hp hpVar) {
            this.hp = hpVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public com.byazt.he.w call() throws Exception {
            return this.hp.getCustomController().getTTLocation();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 255})
    public static class l implements Callable<Location> {
        public LocationManager hp;

        /* renamed from: l, reason: collision with root package name */
        public String f23992l;

        public l(LocationManager locationManager, String str) {
            this.hp = locationManager;
            this.f23992l = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Location call() throws Exception {
            System.currentTimeMillis();
            Location lastKnownLocation = this.hp.getLastKnownLocation(this.f23992l);
            System.currentTimeMillis();
            return lastKnownLocation;
        }
    }

    public static com.byazt.il.hp l(Context context, boolean z2, com.byazt.pg.hp hpVar, int i2) throws JSONException {
        if ((jx != null && !hp()) || !l()) {
            return jx;
        }
        String strJx = com.byazt.ymw.hp.jx(s.l("new_sdk_ad_location", 2147483647L, hpVar));
        if (strJx != null) {
            try {
                JSONObject jSONObject = new JSONObject(strJx);
                String strOptString = jSONObject.optString("latitude");
                String strOptString2 = jSONObject.optString("longitude");
                long jOptLong = jSONObject.optLong("lbstime");
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                    jx = new com.byazt.il.hp(Float.valueOf(strOptString).floatValue(), Float.valueOf(strOptString2).floatValue(), jOptLong);
                    f23988w = jOptLong;
                }
            } catch (Throwable unused) {
            }
            if (z2) {
                return jx;
            }
        }
        if (jx != null && !hp()) {
            return jx;
        }
        com.byazt.he.l customController = hpVar.getCustomController();
        if (customController.isCanUseLocation()) {
            f23988w = System.currentTimeMillis();
            f23986j = System.currentTimeMillis();
            hp(context, hpVar, i2);
            return jx;
        }
        com.byazt.he.w tTLocation = customController.getTTLocation();
        if (tTLocation != null) {
            f23988w = System.currentTimeMillis();
            jx = new com.byazt.il.hp((float) tTLocation.getLatitude(), (float) tTLocation.getLongitude(), System.currentTimeMillis());
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (jx != null) {
                jSONObject2.put("latitude", Float.toString(jx.hp));
                jSONObject2.put("longitude", Float.toString(jx.f21153l));
                jSONObject2.put("lbstime", jx.jx);
            }
            s.hp("new_sdk_ad_location", com.byazt.ymw.hp.l(jSONObject2.toString()), hpVar, i2);
        } catch (Exception unused2) {
        }
        return jx;
    }

    public static com.byazt.yb.hp hp(Context context, boolean z2, com.byazt.pg.hp hpVar, int i2) {
        return l(context, z2, hpVar, i2);
    }

    private static void hp(final Context context, final com.byazt.pg.hp hpVar, final int i2) {
        ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("getLocation c") { // from class: com.byazt.oda.hp.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                com.byazt.il.hp hpVarL = hp.l(context.getApplicationContext(), hpVar);
                long unused = hp.f23986j = 0L;
                if (hpVarL != null) {
                    com.byazt.il.hp unused2 = hp.jx = hpVarL;
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("latitude", Float.toString(hpVarL.hp));
                        jSONObject.put("longitude", Float.toString(hpVarL.f21153l));
                        jSONObject.put("lbstime", hpVarL.jx);
                        s.hp("new_sdk_ad_location", com.byazt.ymw.hp.l(jSONObject.toString()), hpVar, i2);
                    } catch (JSONException unused3) {
                    }
                }
            }
        });
    }

    private static boolean hp() {
        return System.currentTimeMillis() - f23988w > hp;
    }

    private static LocationManager hp(Context context) {
        try {
            return (LocationManager) context.getSystemService("location");
        } catch (Exception unused) {
            return null;
        }
    }

    private static Location hp(LocationManager locationManager) {
        Location locationHp = hp(locationManager, "gps");
        if (locationHp == null) {
            locationHp = hp(locationManager, "network");
        }
        return locationHp == null ? hp(locationManager, "passive") : locationHp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Location hp(LocationManager locationManager, String str) {
        try {
            final com.byazt.uid.a aVar = new com.byazt.uid.a(new l(locationManager, str), 1, 2);
            ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("getLastKnownLocation") { // from class: com.byazt.oda.hp.3
                @Override // java.lang.Runnable
                public void run() {
                    aVar.run();
                }
            });
            return (Location) aVar.get(1L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static com.byazt.he.w hp(com.byazt.pg.hp hpVar) {
        try {
            final com.byazt.uid.a aVar = new com.byazt.uid.a(new CallableC0327hp(hpVar), 1, 2);
            ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("getLastKnownLocation") { // from class: com.byazt.oda.hp.4
                @Override // java.lang.Runnable
                public void run() {
                    aVar.run();
                }
            });
            return (com.byazt.he.w) aVar.get(1L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean l() {
        return System.currentTimeMillis() - f23986j > f23987l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.il.hp l(final Context context, com.byazt.pg.hp hpVar) {
        com.byazt.il.hp hpVar2 = null;
        if (!hpVar.getCustomController().isCanUseLocation()) {
            try {
                com.byazt.he.w wVarHp = hp(hpVar);
                if (wVarHp != null) {
                    return new com.byazt.il.hp(Double.valueOf(wVarHp.getLatitude()).floatValue(), Double.valueOf(wVarHp.getLongitude()).floatValue(), System.currentTimeMillis());
                }
            } catch (Throwable unused) {
            }
            return null;
        }
        final LocationManager locationManagerHp = hp(context);
        if (locationManagerHp != null) {
            try {
                Location locationHp = hp(locationManagerHp);
                if (locationHp != null && l(locationHp)) {
                    hpVar2 = new com.byazt.il.hp((float) locationHp.getLatitude(), (float) locationHp.getLongitude(), System.currentTimeMillis());
                }
                com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.oda.hp.2
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.l(context, locationManagerHp);
                    }
                });
            } catch (Throwable unused2) {
            }
        }
        return hpVar2;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Context context, final LocationManager locationManager) {
        if (context == null || locationManager == null) {
            return;
        }
        final LocationListener locationListener = new LocationListener() { // from class: com.byazt.oda.hp.5
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location != null) {
                    hp.l(location);
                }
                hp.l(locationManager, this);
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
            locationManager.requestSingleUpdate(strL, locationListener, Looper.myLooper());
            com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byazt.oda.hp.6
                @Override // java.lang.Runnable
                public void run() {
                    hp.l(locationManager, locationListener);
                }
            }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
        } catch (Throwable unused) {
            l(locationManager, locationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(LocationManager locationManager, LocationListener locationListener) {
        if (locationManager == null || locationListener == null) {
            return;
        }
        try {
            locationManager.removeUpdates(locationListener);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Location location) {
        return (location.getLatitude() == 0.0d || location.getLongitude() == 0.0d) ? false : true;
    }
}
