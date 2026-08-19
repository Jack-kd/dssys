package com.octopus.ad.internal.c;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.model.OctLocation;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes4.dex */
public class m {
    public static void a(Context context) {
        l lVarA = l.a();
        try {
            OctLocation octLocation = lVarA.f34611b;
            OctLocation octLocation2 = null;
            if (lVarA.f34610a && (Octopus.getCustomController() == null || Octopus.getCustomController().isCanUseLocation())) {
                if (octLocation != null) {
                    octLocation2 = octLocation;
                } else if (context.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31165g) == 0 || context.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31166h) == 0) {
                    LocationManager locationManager = (LocationManager) context.getSystemService("location");
                    Iterator<String> it = locationManager.getProviders(true).iterator();
                    while (it.hasNext()) {
                        Location lastKnownLocation = locationManager.getLastKnownLocation(it.next());
                        if (lastKnownLocation != null) {
                            if (octLocation2 == null) {
                                octLocation2 = new OctLocation(lastKnownLocation.getLongitude(), lastKnownLocation.getLatitude(), 0, lastKnownLocation.getTime());
                            } else if (lastKnownLocation.getTime() > octLocation2.getTime()) {
                                octLocation2 = new OctLocation(lastKnownLocation.getLongitude(), lastKnownLocation.getLatitude(), 0, lastKnownLocation.getTime());
                            }
                        }
                    }
                } else {
                    String strB = o.b(context, "location");
                    if (!TextUtils.isEmpty(strB) && !strB.equals("{}")) {
                        octLocation2 = (OctLocation) k.a(strB, OctLocation.class);
                    }
                }
            }
            if (Octopus.getCustomController() != null && Octopus.getCustomController().getLocation() != null) {
                OctLocation location = Octopus.getCustomController().getLocation();
                if (octLocation2 == null || location.getTime() > octLocation2.getTime()) {
                    octLocation2 = location;
                }
            }
            if (octLocation2 == null || octLocation2 == octLocation) {
                return;
            }
            if (lVarA.b() <= -1) {
                lVarA.f34611b = octLocation2;
            } else {
                String str = "%." + lVarA.b() + "f";
                Locale locale = Locale.US;
                lVarA.f34611b = new OctLocation(Double.parseDouble(String.format(locale, str, Double.valueOf(octLocation2.getLongitude()))), Double.parseDouble(String.format(locale, str, Double.valueOf(octLocation2.getLatitude()))), 0, octLocation2.getTime());
            }
            String strA = k.a(lVarA.f34611b);
            if (TextUtils.isEmpty(strA) || strA.equals("{}")) {
                return;
            }
            o.a(context, "location", strA);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }
}
