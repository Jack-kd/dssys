package com.octopus.ad.internal;

import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class y {

    /* renamed from: c, reason: collision with root package name */
    private View f35068c;

    /* renamed from: e, reason: collision with root package name */
    private Runnable f35070e;

    /* renamed from: f, reason: collision with root package name */
    private ScheduledExecutorService f35071f;

    /* renamed from: a, reason: collision with root package name */
    private boolean f35066a = false;

    /* renamed from: b, reason: collision with root package name */
    private boolean f35067b = false;

    /* renamed from: d, reason: collision with root package name */
    private ArrayList<a> f35069d = new ArrayList<>();

    public interface a {
        void a(boolean z2);
    }

    private y(View view) {
        this.f35068c = view;
        b();
    }

    public void b(a aVar) {
        this.f35069d.remove(aVar);
    }

    public boolean c() {
        View view = this.f35068c;
        if (view != null && view.getVisibility() == 0 && this.f35068c.getParent() != null) {
            Rect rect = new Rect();
            if (!this.f35068c.getGlobalVisibleRect(rect)) {
                return false;
            }
            int iHeight = rect.height() * rect.width();
            int height = this.f35068c.getHeight() * this.f35068c.getWidth();
            if (height > 0 && iHeight * 100 >= height * 50) {
                return true;
            }
        }
        return false;
    }

    public void d() {
        ScheduledExecutorService scheduledExecutorService = this.f35071f;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.f35071f = null;
        }
        View view = this.f35068c;
        if (view != null) {
            view.removeCallbacks(this.f35070e);
            this.f35068c = null;
        }
        this.f35069d = null;
    }

    public static y a(View view) {
        if (view == null) {
            com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34576l, "Unable to check visibility");
            return null;
        }
        return new y(view);
    }

    public void b() {
        if (this.f35066a) {
            return;
        }
        this.f35066a = true;
        this.f35070e = new Runnable() { // from class: com.octopus.ad.internal.y.1
            @Override // java.lang.Runnable
            public void run() {
                if (y.this.f35069d != null) {
                    ArrayList arrayList = new ArrayList(y.this.f35069d);
                    int i2 = 0;
                    if (y.this.c()) {
                        int size = arrayList.size();
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            ((a) obj).a(true);
                        }
                        return;
                    }
                    int size2 = arrayList.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj2 = arrayList.get(i3);
                        i3++;
                        ((a) obj2).a(false);
                    }
                }
            }
        };
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f35071f = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.octopus.ad.internal.y.2
            @Override // java.lang.Runnable
            public void run() {
                y.this.f35068c.post(y.this.f35070e);
                if (!y.this.f35067b || y.this.f35071f == null) {
                    return;
                }
                y.this.f35071f.shutdownNow();
                y.this.f35071f = null;
            }
        }, 0L, 250L, TimeUnit.MILLISECONDS);
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f35069d.add(aVar);
        }
    }

    public void a() {
        this.f35067b = true;
    }
}
