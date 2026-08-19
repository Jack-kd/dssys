package com.smartdigimkt.c4;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: k, reason: collision with root package name */
    public static volatile c f39684k;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f39686b;

    /* renamed from: c, reason: collision with root package name */
    public volatile WeakReference f39687c;

    /* renamed from: h, reason: collision with root package name */
    public Runnable f39692h;

    /* renamed from: i, reason: collision with root package name */
    public Context f39693i;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f39688d = new Handler(Looper.getMainLooper());

    /* renamed from: e, reason: collision with root package name */
    public int f39689e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f39690f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f39691g = false;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f39694j = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f39685a = new HashSet();

    public static void a(c cVar, Activity activity) {
        cVar.getClass();
        try {
            synchronized (cVar.f39694j) {
                try {
                    if (!cVar.f39694j.isEmpty()) {
                        ArrayList arrayList = cVar.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityStopped(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(cVar.f39685a).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() != null) {
                    throw new ClassCastException();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void b(c cVar, Activity activity) {
        cVar.getClass();
        try {
            synchronized (cVar.f39694j) {
                try {
                    if (!cVar.f39694j.isEmpty()) {
                        ArrayList arrayList = cVar.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityDestroyed(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(cVar.f39685a).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() != null) {
                    throw new ClassCastException();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void c(c cVar, Activity activity) {
        cVar.getClass();
        try {
            synchronized (cVar.f39694j) {
                try {
                    if (!cVar.f39694j.isEmpty()) {
                        ArrayList arrayList = cVar.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityStarted(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(cVar.f39685a).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() != null) {
                    throw new ClassCastException();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void d(c cVar, Activity activity) {
        cVar.getClass();
        try {
            synchronized (cVar.f39694j) {
                try {
                    if (!cVar.f39694j.isEmpty()) {
                        ArrayList arrayList = cVar.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityResumed(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(cVar.f39685a).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() != null) {
                    throw new ClassCastException();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void e(c cVar, Activity activity) {
        cVar.getClass();
        try {
            synchronized (cVar.f39694j) {
                try {
                    if (!cVar.f39694j.isEmpty()) {
                        ArrayList arrayList = cVar.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityPaused(activity);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(cVar.f39685a).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() != null) {
                    throw new ClassCastException();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(c cVar, Activity activity, Bundle bundle) {
        cVar.getClass();
        try {
            synchronized (cVar.f39694j) {
                try {
                    if (!cVar.f39694j.isEmpty()) {
                        ArrayList arrayList = cVar.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
                            if (activityLifecycleCallbacks != null) {
                                activityLifecycleCallbacks.onActivityCreated(activity, bundle);
                            }
                        }
                    }
                } finally {
                }
            }
            Iterator it = new CopyOnWriteArraySet(cVar.f39685a).iterator();
            while (it.hasNext()) {
                if (((WeakReference) it.next()).get() != null) {
                    throw new ClassCastException();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(Application application) {
        try {
            if (this.f39686b) {
                return;
            }
            if (application != null) {
                this.f39693i = application.getApplicationContext();
            }
            if (application != null) {
                application.registerActivityLifecycleCallbacks(new b(this));
            }
            this.f39686b = true;
        } catch (Throwable unused) {
        }
    }

    public static c a() {
        if (f39684k == null) {
            synchronized (c.class) {
                try {
                    if (f39684k == null) {
                        f39684k = new c();
                    }
                } finally {
                }
            }
        }
        return f39684k;
    }

    public final void a(Activity activity, Bundle bundle) {
        try {
            synchronized (this.f39694j) {
                try {
                    if (!this.f39694j.isEmpty()) {
                        ArrayList arrayList = this.f39694j;
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) obj;
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
}
