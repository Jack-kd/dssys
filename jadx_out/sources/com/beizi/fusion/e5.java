package com.beizi.fusion;

import android.graphics.Rect;
import android.view.View;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class e5 {

    /* renamed from: a, reason: collision with root package name */
    private View f13681a;

    /* renamed from: b, reason: collision with root package name */
    private bo f13682b;

    /* renamed from: c, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f13683c;

    /* renamed from: d, reason: collision with root package name */
    private Runnable f13684d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f13685e = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((!e5.this.f13685e && !e5.this.b()) || e5.this.f13685e || e5.this.f13682b == null) {
                return;
            }
            e5.this.f13685e = true;
            e5.this.f13682b.a();
            if (e5.this.f13683c != null) {
                e5.this.f13683c.remove(e5.this.f13684d);
                e5.this.f13683c = null;
            }
        }
    }

    public e5(View view, bo boVar) {
        this.f13681a = view;
        this.f13682b = boVar;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        try {
            View view = this.f13681a;
            if (view != null && view.getVisibility() == 0 && this.f13681a.getParent() != null) {
                Rect rect = new Rect();
                if (this.f13681a.getGlobalVisibleRect(rect)) {
                    return this.f13681a.getHeight() * this.f13681a.getWidth() > 0 && rect.height() * rect.width() > 0;
                }
                return false;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void c() {
        if (this.f13681a == null) {
            return;
        }
        this.f13684d = new a();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorD = x3.c().d();
        this.f13683c = scheduledThreadPoolExecutorD;
        scheduledThreadPoolExecutorD.scheduleWithFixedDelay(this.f13684d, 0L, 100L, TimeUnit.MILLISECONDS);
    }

    public void a() {
        Runnable runnable;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f13683c;
            if (scheduledThreadPoolExecutor != null && (runnable = this.f13684d) != null) {
                scheduledThreadPoolExecutor.remove(runnable);
            }
            this.f13682b = null;
            this.f13681a = null;
            this.f13683c = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
