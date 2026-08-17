package com.smartdigimkt.z;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class e implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c, reason: collision with root package name */
    public int f45281c;

    /* renamed from: b, reason: collision with root package name */
    public boolean f45280b = false;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f45279a = new ConcurrentHashMap(3);

    public final void a(int i2, Activity activity) {
        if (i2 == 2) {
            int i3 = this.f45281c;
            this.f45281c = activity != null ? activity.hashCode() : i3;
            if (i3 == 0) {
                com.smartdigimkt.x.l.a().b(true);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (this.f45281c != 0 || activity == null) {
                return;
            }
            this.f45281c = activity.hashCode();
            return;
        }
        if (i2 == 4 && activity != null && activity.hashCode() == this.f45281c) {
            this.f45281c = 0;
            com.smartdigimkt.x.l.a().b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        com.smartdigimkt.x.l.a().f45045m = true;
        a(3, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.x.l lVarA = com.smartdigimkt.x.l.a();
        int iA = 1;
        boolean z2 = !lVarA.f45044l && lVarA.f45045m;
        com.smartdigimkt.a0.j jVar = lVarA.f45043k;
        if (jVar != null) {
            com.smartdigimkt.a0.k kVar = jVar.f39245d;
            String str = kVar.f39218a;
            if (z2) {
                WeakReference weakReference = kVar.f39248j;
                View view = weakReference != null ? (View) weakReference.get() : null;
                if (view == null) {
                    String str2 = jVar.f39245d.f39218a;
                } else {
                    com.smartdigimkt.a4.c cVar = jVar.f39245d.f39246h;
                    if (cVar != null) {
                        cVar.a();
                        jVar.f39245d.f39246h = null;
                    }
                    com.smartdigimkt.a0.i iVar = new com.smartdigimkt.a0.i(jVar);
                    com.smartdigimkt.m3.c cVar2 = jVar.f39245d.f39220c;
                    if (cVar2 != null && (eVar = cVar2.f41832w) != null) {
                        iA = eVar.a();
                    }
                    com.smartdigimkt.a0.k kVar2 = jVar.f39245d;
                    view.getContext();
                    kVar2.f39246h = new com.smartdigimkt.a4.c(iA, 0);
                    jVar.f39245d.f39246h.a(view, iVar);
                }
            } else {
                com.smartdigimkt.y3.h.a(kVar.f39221d, kVar.f39220c, jVar.f39243b, jVar.f39242a, 3);
            }
            lVarA.f45043k = null;
        }
        lVarA.f45045m = false;
        lVarA.f45044l = false;
        com.smartdigimkt.x.l.a().a(activity);
        a(2, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        int iHashCode;
        ConcurrentHashMap concurrentHashMap = this.f45279a;
        if (activity == null) {
            iHashCode = 0;
        } else {
            try {
                try {
                    iHashCode = System.identityHashCode(activity);
                } catch (Throwable unused) {
                    iHashCode = activity.hashCode();
                }
            } catch (Throwable unused2) {
            }
        }
        concurrentHashMap.put(Integer.valueOf(iHashCode), Boolean.TRUE);
        a(1, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        int iHashCode;
        int iHashCode2;
        com.smartdigimkt.x.l.a().f45044l = true;
        ConcurrentHashMap concurrentHashMap = this.f45279a;
        int i2 = 0;
        if (activity == null) {
            iHashCode = 0;
        } else {
            try {
                try {
                    iHashCode = System.identityHashCode(activity);
                } catch (Throwable unused) {
                    iHashCode = activity.hashCode();
                }
            } catch (Throwable unused2) {
            }
        }
        boolean zContainsKey = concurrentHashMap.containsKey(Integer.valueOf(iHashCode));
        if (!this.f45280b && !zContainsKey) {
            this.f45280b = true;
        }
        if (zContainsKey) {
            try {
                ConcurrentHashMap concurrentHashMap2 = this.f45279a;
                if (activity != null) {
                    try {
                        try {
                            iHashCode2 = System.identityHashCode(activity);
                        } catch (Throwable unused3) {
                            iHashCode2 = activity.hashCode();
                        }
                        i2 = iHashCode2;
                    } catch (Throwable unused4) {
                    }
                }
                concurrentHashMap2.remove(Integer.valueOf(i2));
            } catch (Throwable unused5) {
            }
        }
        a(4, activity);
    }
}
