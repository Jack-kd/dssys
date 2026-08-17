package com.anythink.core.common.h;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
public final class as {

    /* renamed from: a, reason: collision with root package name */
    public String f3809a;

    /* renamed from: c, reason: collision with root package name */
    public int f3811c;

    /* renamed from: d, reason: collision with root package name */
    public com.anythink.core.common.d.c f3812d;

    /* renamed from: e, reason: collision with root package name */
    public com.anythink.core.common.n f3813e;

    /* renamed from: f, reason: collision with root package name */
    public ATAdMultipleLoadedListener f3814f;

    /* renamed from: g, reason: collision with root package name */
    public Map<String, Object> f3815g;

    /* renamed from: h, reason: collision with root package name */
    public int f3816h;

    /* renamed from: i, reason: collision with root package name */
    public d f3817i;

    /* renamed from: l, reason: collision with root package name */
    public ATAdxBidFloorInfo f3820l;

    /* renamed from: m, reason: collision with root package name */
    public final h f3821m;

    /* renamed from: p, reason: collision with root package name */
    private Context f3824p;

    /* renamed from: q, reason: collision with root package name */
    private WeakReference<Activity> f3825q;

    /* renamed from: r, reason: collision with root package name */
    private ATAdRequest f3826r;

    /* renamed from: b, reason: collision with root package name */
    public int f3810b = -1;

    /* renamed from: n, reason: collision with root package name */
    public long f3822n = 0;

    /* renamed from: o, reason: collision with root package name */
    public long f3823o = 0;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3818j = false;

    /* renamed from: k, reason: collision with root package name */
    public long f3819k = SystemClock.elapsedRealtime();

    public as() {
        h hVar = new h();
        this.f3821m = hVar;
        hVar.a(System.currentTimeMillis());
    }

    private int f() {
        return this.f3811c;
    }

    private long g() {
        return this.f3822n;
    }

    private long h() {
        return this.f3823o;
    }

    public final void a(Context context) {
        this.f3824p = com.anythink.core.common.d.s.b().g();
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) context;
        this.f3825q = new WeakReference<>(activity);
        com.anythink.core.common.d.s.b().a(activity);
    }

    public final ATAdRequest b() {
        return this.f3826r;
    }

    public final as c() {
        as asVar = new as();
        asVar.f3824p = this.f3824p;
        asVar.f3825q = this.f3825q;
        asVar.f3811c = this.f3811c;
        asVar.f3812d = this.f3812d;
        asVar.f3813e = this.f3813e;
        asVar.f3815g = this.f3815g;
        asVar.f3816h = this.f3816h;
        asVar.f3826r = this.f3826r;
        return asVar;
    }

    public final boolean d() {
        int i2 = this.f3811c;
        return i2 == 13 || i2 == 14;
    }

    public final boolean e() {
        int i2 = this.f3811c;
        return (i2 == 9 || i2 == 13 || i2 == 14) ? false : true;
    }

    private void b(long j2) {
        this.f3823o = j2;
    }

    public final Context a() {
        Activity activity;
        WeakReference<Activity> weakReference = this.f3825q;
        if (weakReference != null && (activity = weakReference.get()) != null) {
            return activity;
        }
        Activity activityN = com.anythink.core.common.d.s.b().N();
        return activityN != null ? activityN : this.f3824p;
    }

    public final void a(ATAdRequest aTAdRequest) {
        this.f3826r = aTAdRequest;
    }

    private void a(long j2) {
        this.f3822n = j2;
    }
}
