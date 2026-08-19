package com.octopus.ad.d;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: f, reason: collision with root package name */
    private String f34032f;

    /* renamed from: i, reason: collision with root package name */
    private f f34035i;

    /* renamed from: a, reason: collision with root package name */
    private String f34027a = "OnLineStateClass";

    /* renamed from: b, reason: collision with root package name */
    private int f34028b = 0;

    /* renamed from: c, reason: collision with root package name */
    private boolean f34029c = true;

    /* renamed from: d, reason: collision with root package name */
    private boolean f34030d = false;

    /* renamed from: e, reason: collision with root package name */
    private boolean f34031e = false;

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, String> f34033g = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    private long f34034h = 0;

    public static /* synthetic */ int d(h hVar) {
        int i2 = hVar.f34028b;
        hVar.f34028b = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int h(h hVar) {
        int i2 = hVar.f34028b;
        hVar.f34028b = i2 - 1;
        return i2;
    }

    public void a(Context context) {
        Application application = (Application) context.getApplicationContext();
        this.f34034h = System.currentTimeMillis() / 1000;
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.octopus.ad.d.h.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(@NonNull Activity activity, Bundle bundle) {
                h.this.f34032f = activity.getClass().getSimpleName();
                h.this.f34033g.put(h.this.f34032f, h.this.f34032f);
                h.this.f34029c = true;
                h.this.f34030d = false;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(@NonNull Activity activity) {
                h.this.f34033g.remove(activity.getClass().getSimpleName());
                if (h.this.f34033g.isEmpty() && h.this.f34029c) {
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    if (h.this.f34035i != null) {
                        long unused = h.this.f34034h;
                        h.this.f34035i.a(jCurrentTimeMillis, h.this.f34034h);
                        h.this.f34034h = System.currentTimeMillis() / 1000;
                    }
                    h.this.f34029c = false;
                }
                if (h.this.f34033g.isEmpty()) {
                    h.this.f34031e = true;
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(@NonNull Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(@NonNull Activity activity) {
                h.this.f34030d = !activity.getClass().getSimpleName().equals(h.this.f34032f);
                h.this.f34032f = activity.getClass().getSimpleName();
                if (!h.this.f34029c || h.this.f34031e) {
                    h.this.f34031e = false;
                    if (h.this.f34035i != null) {
                        h.this.f34035i.a();
                    }
                    h.this.f34034h = System.currentTimeMillis() / 1000;
                    h.this.f34029c = true;
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(@NonNull Activity activity) {
                com.octopus.ad.d.b.f.a(h.this.f34027a, "onActivityStarted");
                h.d(h.this);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(@NonNull Activity activity) {
                com.octopus.ad.d.b.f.a(h.this.f34027a, "onActivityStopped");
                h.h(h.this);
                if (activity.getClass().getSimpleName().equals(h.this.f34032f)) {
                    if (!h.this.f34030d || h.this.f34033g.size() == 1) {
                        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                        if (h.this.f34035i != null) {
                            long unused = h.this.f34034h;
                            h.this.f34035i.a(h.this.f34034h, jCurrentTimeMillis);
                            h.this.f34034h = System.currentTimeMillis() / 1000;
                        }
                        h.this.f34029c = false;
                    }
                }
            }
        });
    }

    public String a() {
        return this.f34032f;
    }

    public void a(f fVar) {
        this.f34035i = fVar;
    }
}
