package com.beizi.fusion;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.text.TextUtils;
import com.beizi.fusion.ld;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
class lh implements md {

    /* renamed from: c, reason: collision with root package name */
    private final Context f14868c;

    /* renamed from: d, reason: collision with root package name */
    private ld f14869d;

    /* renamed from: e, reason: collision with root package name */
    private ld f14870e;

    /* renamed from: a, reason: collision with root package name */
    private final String f14866a = "scope_loc";

    /* renamed from: b, reason: collision with root package name */
    private final String f14867b = "loc_last";

    /* renamed from: f, reason: collision with root package name */
    private boolean f14871f = false;

    /* renamed from: g, reason: collision with root package name */
    private boolean f14872g = false;

    /* renamed from: h, reason: collision with root package name */
    private long f14873h = 0;

    /* renamed from: i, reason: collision with root package name */
    private boolean f14874i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f14875j = false;

    public static class b implements ld {

        /* renamed from: a, reason: collision with root package name */
        private final Location f14876a;

        @Override // com.beizi.fusion.ld
        public double a() {
            return this.f14876a.getLatitude();
        }

        @Override // com.beizi.fusion.ld
        public double b() {
            return this.f14876a.getLongitude();
        }

        @Override // com.beizi.fusion.ld
        public ld.a c() {
            return ld.a.WGS_84;
        }

        @Override // com.beizi.fusion.ld
        public long d() {
            return this.f14876a.getTime();
        }

        private b(Location location) {
            this.f14876a = location;
        }
    }

    public lh(Context context) {
        this.f14868c = context.getApplicationContext();
    }

    private ld c(LocationManager locationManager) {
        return this.f14874i ? a(locationManager) : b(locationManager);
    }

    private boolean d() {
        return cl.b(this.f14868c, com.kuaishou.weapon.p0.g.f31166h);
    }

    private boolean e() {
        return cl.b(this.f14868c, com.kuaishou.weapon.p0.g.f31165g);
    }

    private boolean f() {
        if (this.f14868c != null) {
            return e() || d();
        }
        return false;
    }

    @Override // com.beizi.fusion.md
    public ld a() {
        LocationManager locationManager;
        if (this.f14871f && f() && c()) {
            if (this.f14870e == null && (locationManager = (LocationManager) this.f14868c.getSystemService("location")) != null) {
                this.f14870e = c(locationManager);
            }
            ld ldVar = this.f14870e;
            if (ldVar != null) {
                return ldVar;
            }
        }
        return this.f14869d;
    }

    private ld b(LocationManager locationManager) {
        List<String> providers = locationManager.getProviders(true);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = providers.iterator();
        while (it.hasNext()) {
            Location lastKnownLocation = locationManager.getLastKnownLocation(it.next());
            if (lastKnownLocation != null) {
                arrayList.add(lastKnownLocation);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.beizi.fusion.M
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return lh.a((Location) obj, (Location) obj2);
            }
        });
        return new b((Location) arrayList.get(0));
    }

    private boolean c() {
        return System.currentTimeMillis() - t5.a(this.f14868c, "scope_loc", "loc_last", 0L) > this.f14873h;
    }

    private ld a(LocationManager locationManager) {
        Location lastKnownLocation;
        if (!this.f14872g) {
            this.f14872g = true;
            String bestProvider = locationManager.getBestProvider(new Criteria(), true);
            if (!TextUtils.isEmpty(bestProvider)) {
                lastKnownLocation = locationManager.getLastKnownLocation(bestProvider);
            } else if (e()) {
                lastKnownLocation = locationManager.getLastKnownLocation("gps");
            } else {
                lastKnownLocation = d() ? locationManager.getLastKnownLocation("network") : null;
            }
            if (lastKnownLocation != null) {
                return new b(lastKnownLocation);
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.md
    public void b() {
        this.f14871f = true;
    }

    @Override // com.beizi.fusion.md
    public void b(boolean z2) {
        this.f14874i = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Location location, Location location2) {
        return Long.compare(location2.getTime(), location.getTime());
    }

    @Override // com.beizi.fusion.md
    public void a(ld ldVar) {
        this.f14869d = ldVar;
    }

    @Override // com.beizi.fusion.md
    public void a(boolean z2) {
        this.f14875j = z2;
    }
}
