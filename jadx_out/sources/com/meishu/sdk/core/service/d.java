package com.meishu.sdk.core.service;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f31727a = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public static WeakReference<Activity> f31728b = null;

    /* renamed from: c, reason: collision with root package name */
    public static Runnable f31729c = null;

    /* renamed from: d, reason: collision with root package name */
    public static AtomicInteger f31730d = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    public static boolean f31731e = false;

    /* renamed from: f, reason: collision with root package name */
    public static final List<e> f31732f = Collections.synchronizedList(new ArrayList());

    public static boolean a() {
        return f31730d.get() > 0;
    }

    public static void a(e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            List<e> list = f31732f;
            if (list.contains(eVar)) {
                return;
            }
            list.add(eVar);
        } catch (Exception unused) {
        }
    }

    public static void b(e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            f31732f.remove(eVar);
        } catch (Exception unused) {
        }
    }

    public static void a(boolean z2) {
        boolean zOnAppStateUpdate;
        try {
            List<e> list = f31732f;
            if (list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList(list);
            int size = arrayList.size();
            ArrayList arrayList2 = null;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                e eVar = (e) obj;
                try {
                    zOnAppStateUpdate = eVar.onAppStateUpdate(z2);
                } catch (Throwable th) {
                    th.printStackTrace();
                    zOnAppStateUpdate = false;
                }
                if (!zOnAppStateUpdate) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(eVar);
                }
            }
            if (arrayList2 != null) {
                f31732f.removeAll(arrayList2);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
