package com.octopus.ad.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.octopus.ad.internal.nativead.NativeAdShownListener;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private View f34924a;

    /* renamed from: b, reason: collision with root package name */
    private NativeAdShownListener f34925b;

    /* renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f34926c;

    /* renamed from: d, reason: collision with root package name */
    private Runnable f34927d;

    public g(View view, NativeAdShownListener nativeAdShownListener) {
        this.f34924a = view;
        this.f34925b = nativeAdShownListener;
        b();
    }

    public static g a(View view, NativeAdShownListener nativeAdShownListener) {
        if (view == null) {
            return null;
        }
        return new g(view, nativeAdShownListener);
    }

    private void b() {
        this.f34927d = new Runnable() { // from class: com.octopus.ad.internal.g.1
            @Override // java.lang.Runnable
            public void run() {
                boolean zC = g.this.c();
                if (g.this.f34925b != null) {
                    g.this.f34925b.onAdShown(zC);
                }
            }
        };
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f34926c = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.octopus.ad.internal.g.2
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.f34924a != null) {
                    g.this.f34924a.post(g.this.f34927d);
                }
            }
        }, 0L, 250L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        int i2;
        View view = this.f34924a;
        if (view == null || view.getVisibility() != 0 || this.f34924a.getParent() == null) {
            return false;
        }
        try {
            if (!a(this.f34924a)) {
                return false;
            }
            Rect rect = new Rect();
            this.f34924a.getLocalVisibleRect(rect);
            DecimalFormat decimalFormat = new DecimalFormat("##0.00");
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
            decimalFormatSymbols.setDecimalSeparator('.');
            decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
            if (rect.left != 0 || rect.top < 0 || rect.bottom > this.f34924a.getHeight() || Float.parseFloat(decimalFormat.format((((rect.bottom - rect.top) * rect.right) * 1.0d) / (this.f34924a.getWidth() * this.f34924a.getHeight()))) <= 0.5d) {
                if (rect.left > 0 && (i2 = rect.right) >= 0 && i2 <= this.f34924a.getWidth()) {
                    if (Float.parseFloat(decimalFormat.format((((rect.right - rect.left) * (rect.bottom - rect.top)) * 1.0d) / (this.f34924a.getWidth() * this.f34924a.getHeight()))) > 0.5d) {
                    }
                }
                return false;
            }
            return true;
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            return true;
        }
    }

    public void a() {
        ScheduledExecutorService scheduledExecutorService = this.f34926c;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        this.f34925b = null;
        this.f34924a = null;
        this.f34926c = null;
    }

    public static boolean a(View view) {
        Context context;
        if (view == null) {
            return false;
        }
        try {
            Object parent = view.getParent();
            if (parent != null) {
                context = ((View) parent).getContext();
            } else {
                context = view.getContext();
            }
            if (!(context instanceof Activity)) {
                return false;
            }
            String simpleName = ((Activity) context).getClass().getSimpleName();
            String strA = com.octopus.ad.d.g.a(context).f34025a.a();
            return strA == null || simpleName.equals(strA);
        } catch (Exception unused) {
            return false;
        }
    }
}
