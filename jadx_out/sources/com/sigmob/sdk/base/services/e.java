package com.sigmob.sdk.base.services;

import android.annotation.SuppressLint;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.czhj.sdk.common.ClientMetadata;
import com.sigmob.sdk.base.services.f;
import com.sigmob.sdk.base.utils.k;
import com.sigmob.sdk.base.utils.v;

/* loaded from: classes4.dex */
public class e implements f.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36549a = "e";

    /* renamed from: c, reason: collision with root package name */
    private static volatile LocationManager f36551c;

    /* renamed from: e, reason: collision with root package name */
    private g f36553e = g.STOP;

    /* renamed from: b, reason: collision with root package name */
    private static final LocationListener f36550b = new LocationListener() { // from class: com.sigmob.sdk.base.services.e.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            k.c(e.f36549a, "onLocationChanged: location = " + location.toString(), new Object[0]);
            ClientMetadata clientMetadata = ClientMetadata.getInstance();
            if (v.b(clientMetadata)) {
                clientMetadata.setLocation(location);
            }
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

    /* renamed from: d, reason: collision with root package name */
    private static String f36552d = "network";

    public e() {
        LocationManager locationManagerA;
        if (ClientMetadata.getInstance() == null || (locationManagerA = a()) == null) {
            return;
        }
        Criteria criteria = new Criteria();
        criteria.setAccuracy(2);
        criteria.setAltitudeRequired(false);
        criteria.setBearingRequired(false);
        criteria.setCostAllowed(false);
        criteria.setPowerRequirement(1);
        f36552d = locationManagerA.getBestProvider(criteria, false);
    }

    public static LocationManager a() {
        if (f36551c == null) {
            synchronized (e.class) {
                try {
                    if (f36551c == null) {
                        f36551c = ClientMetadata.getInstance().getLocationManager();
                    }
                } finally {
                }
            }
        }
        return f36551c;
    }

    @SuppressLint({"MissingPermission"})
    private void c() {
        try {
            if (v.b(f36551c)) {
                f36551c.removeUpdates(f36550b);
            }
            f36551c = null;
        } catch (Throwable th) {
            k.f(f36549a, "stopUpdateLocation: error = " + th.getMessage(), new Object[0]);
        }
    }

    @SuppressLint({"MissingPermission"})
    private void d() {
        String str;
        try {
            LocationManager locationManagerA = a();
            if (locationManagerA == null || (str = f36552d) == null || !locationManagerA.isProviderEnabled(str)) {
                return;
            }
            k.c(f36549a, "startUpdateLocation", new Object[0]);
            locationManagerA.requestLocationUpdates(f36552d, 10000L, 500.0f, f36550b);
            this.f36553e = g.RUNNING;
        } catch (Throwable th) {
            k.f(f36549a, "startUpdateLocation: error = " + th.getMessage(), new Object[0]);
        }
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public boolean e() {
        if (this.f36553e == g.RUNNING) {
            return false;
        }
        d();
        return true;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public g f() {
        return this.f36553e;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public void g() {
        if (this.f36553e == g.RUNNING) {
            c();
            this.f36553e = g.STOP;
        }
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public Error h() {
        return null;
    }
}
