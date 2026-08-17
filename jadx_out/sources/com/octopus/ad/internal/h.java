package com.octopus.ad.internal;

import android.graphics.Rect;
import android.view.View;
import com.octopus.ad.internal.nativead.NativeAdShownListener;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private View f34930a;

    /* renamed from: b, reason: collision with root package name */
    private NativeAdShownListener f34931b;

    /* renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f34932c;

    /* renamed from: d, reason: collision with root package name */
    private Runnable f34933d;

    public h(View view, NativeAdShownListener nativeAdShownListener) {
        this.f34930a = view;
        this.f34931b = nativeAdShownListener;
        b();
    }

    private void b() {
        this.f34933d = new Runnable() { // from class: com.octopus.ad.internal.h.1
            @Override // java.lang.Runnable
            public void run() {
                if (h.this.c()) {
                    if (h.this.f34931b != null) {
                        h.this.f34931b.onAdShown(true);
                    }
                    if (h.this.f34932c != null) {
                        h.this.f34932c.shutdownNow();
                    }
                    h.this.f34931b = null;
                    h.this.f34930a = null;
                    h.this.f34932c = null;
                }
            }
        };
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f34932c = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.octopus.ad.internal.h.2
            @Override // java.lang.Runnable
            public void run() {
                if (h.this.f34930a != null) {
                    h.this.f34930a.post(h.this.f34933d);
                }
            }
        }, 0L, 250L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        int i2;
        View view = this.f34930a;
        if (view == null || view.getVisibility() != 0 || this.f34930a.getParent() == null) {
            return false;
        }
        Rect rect = new Rect();
        this.f34930a.getLocalVisibleRect(rect);
        try {
            DecimalFormat decimalFormat = new DecimalFormat("##0.00");
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
            decimalFormatSymbols.setDecimalSeparator('.');
            decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
            if (rect.left != 0 || rect.top < 0 || rect.bottom > this.f34930a.getHeight() || Float.parseFloat(decimalFormat.format((((rect.bottom - rect.top) * rect.right) * 1.0d) / (this.f34930a.getWidth() * this.f34930a.getHeight()))) <= 0.5d) {
                if (rect.left > 0 && (i2 = rect.right) >= 0 && i2 <= this.f34930a.getWidth()) {
                    if (Float.parseFloat(decimalFormat.format((((rect.right - rect.left) * (rect.bottom - rect.top)) * 1.0d) / (this.f34930a.getWidth() * this.f34930a.getHeight()))) > 0.5d) {
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

    public static h a(View view, NativeAdShownListener nativeAdShownListener) {
        if (view == null) {
            return null;
        }
        return new h(view, nativeAdShownListener);
    }

    public void a() {
        ScheduledExecutorService scheduledExecutorService = this.f34932c;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.f34932c = null;
        }
        View view = this.f34930a;
        if (view != null) {
            view.removeCallbacks(this.f34933d);
            this.f34930a = null;
        }
        this.f34931b = null;
    }
}
