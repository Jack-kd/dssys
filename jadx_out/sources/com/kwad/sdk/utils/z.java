package com.kwad.sdk.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class z {
    private static boolean bpe;
    private static com.kwad.sdk.utils.d.a bpf = new com.kwad.sdk.utils.d.a();

    @SuppressLint({"MissingPermission"})
    private static com.kwad.sdk.internal.api.a a(Context context, LocationManager locationManager) {
        try {
            if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f31165g) != 0) {
                return null;
            }
            Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
            if (lastKnownLocation == null) {
                bpe = true;
            }
            return com.kwad.sdk.internal.api.a.a(lastKnownLocation);
        } catch (Exception e2) {
            bpe = true;
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    private static com.kwad.sdk.internal.api.a b(Context context, LocationManager locationManager) {
        try {
            if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f31165g) != 0 && ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f31166h) != 0) {
                return null;
            }
            Location lastKnownLocation = locationManager.getLastKnownLocation("network");
            if (lastKnownLocation == null) {
                bpe = true;
            }
            return com.kwad.sdk.internal.api.a.a(lastKnownLocation);
        } catch (Exception e2) {
            bpe = true;
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    private static com.kwad.sdk.internal.api.a c(Context context, LocationManager locationManager) {
        try {
            if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f31166h) != 0) {
                return null;
            }
            Location lastKnownLocation = locationManager.getLastKnownLocation("passive");
            if (lastKnownLocation == null) {
                bpe = true;
            }
            return com.kwad.sdk.internal.api.a.a(lastKnownLocation);
        } catch (Exception e2) {
            bpe = true;
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return null;
        }
    }

    @Nullable
    public static com.kwad.sdk.utils.d.a dg(Context context) {
        com.kwad.sdk.utils.d.a aVar;
        com.kwad.sdk.internal.api.a aVarWf;
        com.kwad.sdk.utils.d.a aVar2 = new com.kwad.sdk.utils.d.a();
        if (be.readLocationDisable() && (aVarWf = be.Wf()) != null) {
            aVar2.bsT = aVarWf;
            aVar2.type = 1;
            return aVar2;
        }
        if (bpe || (!((aVar = bpf) == null || aVar.bsT == null) || context == null)) {
            return bpf;
        }
        if (!be.readLocationDisable() && !((com.kwad.sdk.service.a.h) ServiceProvider.get(com.kwad.sdk.service.a.h.class)).ao(64L)) {
            try {
                LocationManager locationManager = (LocationManager) context.getSystemService("location");
                if (locationManager.isProviderEnabled("gps")) {
                    bpf.bsT = a(context, locationManager);
                }
                if (bpf == null && locationManager.isProviderEnabled("network")) {
                    bpf.bsT = b(context, locationManager);
                }
                if (bpf == null && locationManager.isProviderEnabled("passive")) {
                    bpf.bsT = c(context, locationManager);
                }
                com.kwad.sdk.utils.d.a aVar3 = bpf;
                aVar3.type = 0;
                return aVar3;
            } catch (Exception e2) {
                bpe = true;
                com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            }
        }
        return null;
    }
}
