package com.beizi.fusion;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.beizi.ad.model.BeiZiLocation;
import com.beizi.fusion.model.EnvInfo;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class up {

    /* renamed from: q, reason: collision with root package name */
    private static up f16522q;

    /* renamed from: e, reason: collision with root package name */
    public String f16527e;

    /* renamed from: f, reason: collision with root package name */
    public String f16528f;

    /* renamed from: h, reason: collision with root package name */
    public long f16530h;

    /* renamed from: i, reason: collision with root package name */
    private EnvInfo f16531i;

    /* renamed from: j, reason: collision with root package name */
    private Context f16532j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f16533k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f16534l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f16535m;

    /* renamed from: n, reason: collision with root package name */
    private long f16536n;

    /* renamed from: o, reason: collision with root package name */
    private long f16537o;

    /* renamed from: p, reason: collision with root package name */
    private int f16538p;

    /* renamed from: a, reason: collision with root package name */
    private n7 f16523a = n7.NET_OTHER;

    /* renamed from: b, reason: collision with root package name */
    private m7 f16524b = m7.ISP_OTHER;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16525c = true;

    /* renamed from: d, reason: collision with root package name */
    private int f16526d = -1;

    /* renamed from: g, reason: collision with root package name */
    public String f16529g = "WGS84";

    private up() {
        RequestInfo requestInfo;
        this.f16536n = 86400000L;
        Context contextN = q1.i().n();
        this.f16532j = contextN;
        if (contextN == null || (requestInfo = RequestInfo.getInstance(contextN)) == null) {
            return;
        }
        if (!requestInfo.isInit) {
            requestInfo.init();
        }
        this.f16534l = q1.i().z();
        this.f16535m = q1.i().x();
        if (this.f16534l) {
            long locationFrequency = ResponseInfo.getInstance(this.f16532j).getLocationFrequency();
            if (locationFrequency > 0) {
                this.f16536n = locationFrequency;
            }
        }
        EnvInfo envInfo = requestInfo.getEnvInfo();
        this.f16531i = envInfo;
        if (envInfo == null || !"true".equals(envInfo.isIsVpn())) {
            return;
        }
        this.f16538p = 1;
    }

    public static synchronized up a() {
        try {
            if (f16522q == null) {
                synchronized (up.class) {
                    try {
                        if (f16522q == null) {
                            f16522q = new up();
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f16522q;
    }

    private synchronized void d() {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
        }
        if (TextUtils.isEmpty(this.f16527e) && TextUtils.isEmpty(this.f16528f) && !this.f16533k) {
            this.f16533k = true;
            if (t3.a() == null || t3.a().c()) {
                Context contextG = b4.j().g();
                if (contextG.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31165g) == 0 || contextG.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31166h) == 0) {
                    if (this.f16537o == 0) {
                        this.f16537o = ((Long) go.a(this.f16532j, "LOCATION_TIME", (Object) 0L)).longValue();
                    }
                    if (this.f16537o > 0 && System.currentTimeMillis() - this.f16537o < this.f16536n) {
                        this.f16527e = (String) go.a(this.f16532j, "LOCATION_LONGITUDE", (Object) "");
                        this.f16528f = (String) go.a(this.f16532j, "LOCATION_LATITUDE", (Object) "");
                        this.f16530h = ((Long) go.a(this.f16532j, "LOCATION_TIMESTAMP", (Object) 0L)).longValue();
                        this.f16533k = false;
                        return;
                    }
                    LocationManager locationManager = (LocationManager) contextG.getSystemService("location");
                    if (locationManager == null) {
                        f();
                        this.f16533k = false;
                        return;
                    }
                    String bestProvider = locationManager.getBestProvider(new Criteria(), true);
                    if (TextUtils.isEmpty(bestProvider)) {
                        f();
                        this.f16533k = false;
                        return;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    this.f16537o = jCurrentTimeMillis;
                    go.b(this.f16532j, "LOCATION_TIME", Long.valueOf(jCurrentTimeMillis));
                    Location lastKnownLocation = locationManager.getLastKnownLocation(bestProvider);
                    if (lastKnownLocation != null) {
                        this.f16527e = String.valueOf(lastKnownLocation.getLongitude());
                        this.f16528f = String.valueOf(lastKnownLocation.getLatitude());
                        this.f16530h = lastKnownLocation.getTime();
                        go.b(this.f16532j, "LOCATION_LONGITUDE", this.f16527e);
                        go.b(this.f16532j, "LOCATION_LATITUDE", this.f16528f);
                        go.b(this.f16532j, "LOCATION_TIMESTAMP", Long.valueOf(this.f16530h));
                    } else {
                        f();
                    }
                } else {
                    f();
                }
            } else {
                f();
            }
            this.f16533k = false;
        }
    }

    private void f() {
        BeiZiLocation beiZiLocationB;
        if (t3.a() == null || (beiZiLocationB = t3.a().b()) == null) {
            return;
        }
        this.f16527e = beiZiLocationB.getLongitude();
        this.f16528f = beiZiLocationB.getLatitude();
        this.f16529g = beiZiLocationB.getType();
        this.f16530h = beiZiLocationB.getTime();
    }

    public int b() {
        return this.f16538p;
    }

    public m7 c() {
        m7 m7Var = this.f16524b;
        m7 m7Var2 = m7.ISP_OTHER;
        if (m7Var == m7Var2) {
            EnvInfo envInfo = this.f16531i;
            if (envInfo != null) {
                String isp = envInfo.getIsp();
                if ("0".equals(isp)) {
                    this.f16524b = m7.ISP_UNKNOWN;
                } else if ("1".equals(isp)) {
                    this.f16524b = m7.ISP_CN_MOBILE;
                } else if ("2".equals(isp)) {
                    this.f16524b = m7.ISP_CN_UNICOM;
                } else if ("3".equals(isp)) {
                    this.f16524b = m7.ISP_CN_TEL;
                }
            } else if (m7Var == m7Var2) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) b4.j().f13060u.getSystemService("phone");
                    if (telephonyManager != null && 5 == telephonyManager.getSimState()) {
                        String simOperator = telephonyManager.getSimOperator();
                        if (simOperator == null) {
                            this.f16524b = m7.ISP_UNKNOWN;
                        } else if (simOperator.equals("46000") || simOperator.equals("46002") || simOperator.equals("46007")) {
                            this.f16524b = m7.ISP_CN_MOBILE;
                        } else if (simOperator.equals("46001")) {
                            this.f16524b = m7.ISP_CN_UNICOM;
                        } else if (simOperator.equals("46003")) {
                            this.f16524b = m7.ISP_CN_TEL;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.f16524b;
    }

    public n7 e() {
        n7 n7Var = this.f16523a;
        n7 n7Var2 = n7.NET_OTHER;
        if (n7Var == n7Var2) {
            EnvInfo envInfo = this.f16531i;
            if (envInfo != null) {
                String net = envInfo.getNet();
                if ("1".equals(net)) {
                    this.f16523a = n7.NET_3G;
                } else if ("2".equals(net)) {
                    this.f16523a = n7.NET_4G;
                } else if ("3".equals(net)) {
                    this.f16523a = n7.NET_5G;
                } else if ("4".equals(net)) {
                    this.f16523a = n7.NET_WIFI;
                } else if ("5".equals(net)) {
                    this.f16523a = n7Var2;
                } else if ("6".equals(net)) {
                    this.f16523a = n7.NET_2G;
                }
            } else {
                this.f16523a = vp.a(b4.j().f13060u);
            }
        }
        return this.f16523a;
    }

    public void g() {
        Location lastKnownLocation;
        try {
            if (TextUtils.isEmpty(this.f16527e) && TextUtils.isEmpty(this.f16528f) && !this.f16533k) {
                if (this.f16534l) {
                    d();
                    return;
                }
                this.f16533k = true;
                if (t3.a() != null && !t3.a().c()) {
                    f();
                    return;
                }
                Context contextG = b4.j().g();
                boolean z2 = contextG.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31165g) == 0;
                boolean z3 = contextG.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31166h) == 0;
                if (!z2 && !z3) {
                    f();
                    return;
                }
                LocationManager locationManager = (LocationManager) contextG.getSystemService("location");
                if (locationManager == null) {
                    this.f16533k = false;
                    f();
                    return;
                }
                Location location = null;
                if (this.f16535m) {
                    String bestProvider = locationManager.getBestProvider(new Criteria(), true);
                    if (!TextUtils.isEmpty(bestProvider)) {
                        lastKnownLocation = locationManager.getLastKnownLocation(bestProvider);
                    } else if (z2) {
                        lastKnownLocation = locationManager.getLastKnownLocation("gps");
                    } else if (z3) {
                        lastKnownLocation = locationManager.getLastKnownLocation("network");
                    }
                    location = lastKnownLocation;
                } else {
                    Iterator<String> it = locationManager.getProviders(true).iterator();
                    while (it.hasNext()) {
                        Location lastKnownLocation2 = locationManager.getLastKnownLocation(it.next());
                        if (lastKnownLocation2 != null && (location == null || (lastKnownLocation2.getTime() > 0 && location.getTime() > 0 && lastKnownLocation2.getTime() > location.getTime()))) {
                            location = lastKnownLocation2;
                        }
                    }
                    this.f16533k = false;
                }
                if (location == null) {
                    f();
                    return;
                }
                this.f16527e = String.valueOf(location.getLongitude());
                this.f16528f = String.valueOf(location.getLatitude());
                this.f16530h = location.getTime();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
