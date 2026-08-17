package com.anythink.core.common.d;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2432a = "AdLifecycleManager";

    /* renamed from: c, reason: collision with root package name */
    private static volatile b f2433c = null;

    /* renamed from: f, reason: collision with root package name */
    private static final long f2434f = 500;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f2436d;

    /* renamed from: e, reason: collision with root package name */
    private String f2437e;

    /* renamed from: k, reason: collision with root package name */
    private Runnable f2442k;

    /* renamed from: g, reason: collision with root package name */
    private final Handler f2438g = new Handler(Looper.getMainLooper());

    /* renamed from: h, reason: collision with root package name */
    private int f2439h = 0;

    /* renamed from: i, reason: collision with root package name */
    private boolean f2440i = true;

    /* renamed from: j, reason: collision with root package name */
    private boolean f2441j = false;

    /* renamed from: l, reason: collision with root package name */
    private final List<Application.ActivityLifecycleCallbacks> f2443l = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final Set<WeakReference<a>> f2435b = new HashSet();

    /* renamed from: com.anythink.core.common.d.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Application.ActivityLifecycleCallbacks {
        public AnonymousClass1() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            b.this.f2437e = activity.getClass().getName();
            b.a(b.this, activity, bundle);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            b.e(b.this, activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            b.c(b.this, activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            b.this.f2437e = activity.getClass().getName();
            b.b(b.this, activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            b.this.a(activity, bundle);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            b.a(b.this);
            if (b.this.f2439h == 1 && b.this.f2440i) {
                b.this.f2440i = false;
                s.b().e(true);
            }
            b.this.f2441j = false;
            s.b().a(activity);
            b.a(b.this, activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            b.d(b.this);
            b.this.f2441j = activity.isChangingConfigurations();
            try {
                if (b.this.f2442k != null) {
                    b.this.f2438g.removeCallbacks(b.this.f2442k);
                }
                b.this.f2442k = new Runnable() { // from class: com.anythink.core.common.d.b.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (b.this.f2439h != 0 || b.this.f2441j) {
                            return;
                        }
                        b.this.f2440i = true;
                        s.b().e(false);
                    }
                };
                b.this.f2438g.postDelayed(b.this.f2442k, 500L);
            } catch (Throwable unused) {
            }
            b.d(b.this, activity);
        }
    }

    public interface a {
        void onCreate(Activity activity);

        void onDestroy(Activity activity);

        void onPause(Activity activity);

        void onResume(Activity activity);

        void onStart(Activity activity);

        void onStop(Activity activity);
    }

    public static /* synthetic */ int a(b bVar) {
        int i2 = bVar.f2439h;
        bVar.f2439h = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int d(b bVar) {
        int i2 = bVar.f2439h;
        bVar.f2439h = i2 - 1;
        return i2;
    }

    public static b c() {
        if (f2433c == null) {
            synchronized (b.class) {
                try {
                    if (f2433c == null) {
                        f2433c = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2433c;
    }

    private WeakReference<a> d(a aVar) {
        Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
        while (it.hasNext()) {
            WeakReference<a> weakReference = (WeakReference) it.next();
            if (weakReference.get() == aVar) {
                return weakReference;
            }
        }
        return null;
    }

    private void e(Activity activity) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityDestroyed(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onDestroy(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final boolean b() {
        return this.f2440i;
    }

    private void b(Application application) {
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new AnonymousClass1());
    }

    private void d(Activity activity) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityStopped(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onStop(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String a() {
        return this.f2437e;
    }

    public final void b(a aVar) {
        try {
            synchronized (this.f2435b) {
                try {
                    Iterator<WeakReference<a>> it = this.f2435b.iterator();
                    while (it.hasNext()) {
                        if (it.next().get() == aVar) {
                            it.remove();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(Application application) {
        try {
            if (this.f2436d) {
                return;
            }
            if (application != null) {
                application.registerActivityLifecycleCallbacks(new AnonymousClass1());
            }
            this.f2436d = true;
        } catch (Throwable unused) {
        }
    }

    private boolean c(a aVar) {
        try {
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() == aVar) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final void a(a aVar) {
        try {
            synchronized (this.f2435b) {
                try {
                    if (!c(aVar)) {
                        this.f2435b.add(new WeakReference<>(aVar));
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void c(Activity activity) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityResumed(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onResume(activity);
                }
            }
            com.anythink.core.common.e.a.a().a(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b(Activity activity, Bundle bundle) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityCreated(activity, bundle);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onCreate(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ void e(b bVar, Activity activity) {
        try {
            synchronized (bVar.f2443l) {
                try {
                    if (!bVar.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : bVar.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityDestroyed(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(bVar.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onDestroy(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(Activity activity) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityStarted(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onStart(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ void d(b bVar, Activity activity) {
        try {
            synchronized (bVar.f2443l) {
                try {
                    if (!bVar.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : bVar.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityStopped(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(bVar.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onStop(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b(Activity activity) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityPaused(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(this.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onPause(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ void c(b bVar, Activity activity) {
        try {
            synchronized (bVar.f2443l) {
                try {
                    if (!bVar.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : bVar.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityPaused(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(bVar.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onPause(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(Activity activity, Bundle bundle) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
                            }
                        }
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        try {
            synchronized (this.f2443l) {
                try {
                    if (!this.f2443l.contains(activityLifecycleCallbacks)) {
                        this.f2443l.add(activityLifecycleCallbacks);
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ void b(b bVar, Activity activity) {
        try {
            synchronized (bVar.f2443l) {
                try {
                    if (!bVar.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : bVar.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityResumed(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(bVar.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onResume(activity);
                }
            }
            com.anythink.core.common.e.a.a().a(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static /* synthetic */ void a(b bVar, Activity activity) {
        try {
            synchronized (bVar.f2443l) {
                try {
                    if (!bVar.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : bVar.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityStarted(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(bVar.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onStart(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ void a(b bVar, Activity activity, Bundle bundle) {
        try {
            synchronized (bVar.f2443l) {
                try {
                    if (!bVar.f2443l.isEmpty()) {
                        for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : bVar.f2443l) {
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityCreated(activity, bundle);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(bVar.f2435b).iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null) {
                    aVar.onCreate(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
