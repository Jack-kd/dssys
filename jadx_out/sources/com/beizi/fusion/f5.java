package com.beizi.fusion;

import android.graphics.Rect;
import android.view.View;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.Format;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class f5 {

    /* renamed from: a, reason: collision with root package name */
    private View f13836a;

    /* renamed from: b, reason: collision with root package name */
    private ri f13837b;

    /* renamed from: c, reason: collision with root package name */
    private bo f13838c;

    /* renamed from: d, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f13839d;

    /* renamed from: e, reason: collision with root package name */
    private Runnable f13840e;

    /* renamed from: f, reason: collision with root package name */
    private DecimalFormatSymbols f13841f = new DecimalFormatSymbols(Locale.ENGLISH);

    /* renamed from: g, reason: collision with root package name */
    private Format f13842g = new DecimalFormat("0.00", this.f13841f);

    /* renamed from: h, reason: collision with root package name */
    private boolean f13843h = false;

    /* renamed from: i, reason: collision with root package name */
    private boolean f13844i = false;

    public class a implements Runnable {

        /* renamed from: com.beizi.fusion.f5$a$a, reason: collision with other inner class name */
        public class RunnableC0157a implements Runnable {

            /* renamed from: com.beizi.fusion.f5$a$a$a, reason: collision with other inner class name */
            public class RunnableC0158a implements Runnable {
                public RunnableC0158a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (f5.this.f13837b != null) {
                        f5.this.f13837b.onAdShown();
                    }
                }
            }

            public RunnableC0157a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (f5.this.f13843h || f5.this.a(10)) {
                    if (!f5.this.f13843h && f5.this.f13838c != null) {
                        f5.this.f13843h = true;
                        f5.this.f13838c.a();
                    }
                    if (!f5.this.f13844i && f5.this.a(50)) {
                        f5.this.f13844i = true;
                        if (f5.this.f13839d != null) {
                            f5.this.f13839d.remove(f5.this.f13840e);
                            f5.this.f13839d = null;
                        }
                        if (f5.this.f13836a != null) {
                            f5.this.f13836a.post(new RunnableC0158a());
                        }
                    }
                }
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f5.this.f13840e = new RunnableC0157a();
            f5.this.f13839d = x3.c().d();
            if (f5.this.f13839d == null) {
                return;
            }
            f5.this.f13839d.scheduleWithFixedDelay(f5.this.f13840e, 0L, 250L, TimeUnit.MILLISECONDS);
        }
    }

    public f5(View view, ri riVar, bo boVar) {
        this.f13836a = view;
        this.f13837b = riVar;
        this.f13838c = boVar;
        b();
    }

    private void b() {
        View view = this.f13836a;
        if (view == null) {
            return;
        }
        view.post(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2) {
        try {
            View view = this.f13836a;
            if (view != null && view.getVisibility() == 0 && this.f13836a.getParent() != null) {
                Rect rect = new Rect();
                if (!this.f13836a.getGlobalVisibleRect(rect)) {
                    return false;
                }
                int iHeight = rect.height() * rect.width();
                int height = this.f13836a.getHeight() * this.f13836a.getWidth();
                return height > 0 && iHeight * 100 >= i2 * height;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void a() {
        Runnable runnable;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f13839d;
            if (scheduledThreadPoolExecutor != null && (runnable = this.f13840e) != null) {
                scheduledThreadPoolExecutor.remove(runnable);
            }
            this.f13838c = null;
            this.f13837b = null;
            this.f13836a = null;
            this.f13839d = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
