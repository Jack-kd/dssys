package com.beizi.fusion;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.beizi.fusion.asnp.adn.ad.widget.activity.ASNPLandingPageActivity;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.beizi.fusion.a0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C1125a0 implements Application.ActivityLifecycleCallbacks, id {

    /* renamed from: c, reason: collision with root package name */
    private int f12596c = 0;

    /* renamed from: d, reason: collision with root package name */
    private long f12597d = 0;

    /* renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f12594a = new CopyOnWriteArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f12595b = new CopyOnWriteArrayList();

    private void b() {
        if (this.f12594a.isEmpty()) {
            return;
        }
        Iterator it = this.f12594a.iterator();
        while (it.hasNext()) {
            ((jd) it.next()).a();
        }
    }

    private void c() {
        if (!this.f12594a.isEmpty()) {
            Iterator it = this.f12594a.iterator();
            while (it.hasNext()) {
                ((jd) it.next()).b();
            }
        }
        if (this.f12595b.isEmpty()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f12597d;
        Iterator it2 = this.f12595b.iterator();
        while (it2.hasNext()) {
            ((ba) it2.next()).a(jCurrentTimeMillis);
        }
    }

    private void d(Activity activity) {
        if (this.f12594a.isEmpty()) {
            return;
        }
        Iterator it = this.f12594a.iterator();
        while (it.hasNext()) {
            ((jd) it.next()).c(activity);
        }
    }

    private void e(Activity activity) {
        if (this.f12594a.isEmpty()) {
            return;
        }
        Iterator it = this.f12594a.iterator();
        while (it.hasNext()) {
            ((jd) it.next()).d(activity);
        }
    }

    @Override // com.beizi.fusion.id
    public Application.ActivityLifecycleCallbacks a() {
        return this;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity instanceof ASNPLandingPageActivity) {
            a((ASNPLandingPageActivity) activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        c(activity);
        if (!a(activity) || this.f12596c <= 0) {
            return;
        }
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f12596c++;
        d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i2 = this.f12596c - 1;
        this.f12596c = i2;
        if (i2 < 0) {
            this.f12596c = 0;
        }
        e(activity);
        if (a(activity) || this.f12596c != 0) {
            return;
        }
        this.f12597d = System.currentTimeMillis();
        b();
    }

    private boolean a(Activity activity) {
        return C1127b0.a().b(activity.getApplicationContext());
    }

    private void a(ASNPLandingPageActivity aSNPLandingPageActivity) {
        if (this.f12594a.isEmpty()) {
            return;
        }
        Iterator it = this.f12594a.iterator();
        while (it.hasNext()) {
            ((jd) it.next()).a(aSNPLandingPageActivity);
        }
    }

    private void b(Activity activity) {
        if (this.f12594a.isEmpty()) {
            return;
        }
        Iterator it = this.f12594a.iterator();
        while (it.hasNext()) {
            ((jd) it.next()).a(activity);
        }
    }

    @Override // com.beizi.fusion.id
    public void a(jd jdVar) {
        this.f12594a.remove(jdVar);
    }

    @Override // com.beizi.fusion.id
    public void a(ba baVar) {
        this.f12595b.add(baVar);
    }

    @Override // com.beizi.fusion.id
    public void b(jd jdVar) {
        this.f12594a.add(jdVar);
    }

    private void c(Activity activity) {
        if (this.f12594a.isEmpty()) {
            return;
        }
        Iterator it = this.f12594a.iterator();
        while (it.hasNext()) {
            ((jd) it.next()).b(activity);
        }
    }

    @Override // com.beizi.fusion.id
    public void b(ba baVar) {
        this.f12595b.remove(baVar);
    }
}
