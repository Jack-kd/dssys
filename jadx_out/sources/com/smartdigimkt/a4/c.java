package com.smartdigimkt.a4;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final h f39316a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f39317b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f39318c;

    public c(int i2) {
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        new f(i2);
        h hVar = new h(new WeakHashMap(10), new f(i2), new Handler(Looper.getMainLooper()));
        new Handler(Looper.getMainLooper());
        this(weakHashMap, weakHashMap2, hVar);
    }

    public final void a(View view, a aVar) {
        if (this.f39317b.get(view) == aVar) {
            return;
        }
        this.f39317b.remove(view);
        this.f39318c.remove(view);
        this.f39316a.f39333d.remove(view);
        if (aVar.isImpressionRecorded()) {
            return;
        }
        this.f39317b.put(view, aVar);
        h hVar = this.f39316a;
        int impressionMinPercentageViewed = aVar.getImpressionMinPercentageViewed();
        Integer impressionMinVisiblePx = aVar.getImpressionMinVisiblePx();
        hVar.getClass();
        try {
            Context context = view.getContext();
            View viewFindViewById = null;
            View viewFindViewById2 = !(context instanceof Activity) ? null : ((Activity) context).getWindow().getDecorView().findViewById(R.id.content);
            View rootView = view.getRootView();
            if (rootView != null && (viewFindViewById = rootView.findViewById(R.id.content)) == null) {
                viewFindViewById = rootView;
            }
            if (viewFindViewById2 == null) {
                viewFindViewById2 = viewFindViewById;
            }
            if (viewFindViewById2 != null && viewFindViewById2.getViewTreeObserver().isAlive()) {
                e eVar = (e) hVar.f39333d.get(view);
                if (eVar == null) {
                    eVar = new e();
                    hVar.f39333d.put(view, eVar);
                    if (!hVar.f39338i) {
                        hVar.f39338i = true;
                        hVar.f39337h.postDelayed(hVar.f39336g, 100);
                    }
                }
                int iMin = Math.min(impressionMinPercentageViewed, impressionMinPercentageViewed);
                eVar.f39323d = view;
                eVar.f39320a = impressionMinPercentageViewed;
                eVar.f39321b = iMin;
                eVar.f39322c = hVar.f39331b;
                eVar.f39324e = impressionMinVisiblePx;
                view.getViewTreeObserver().addOnPreDrawListener(hVar.f39332c);
                long j2 = hVar.f39331b;
                long j3 = 1 + j2;
                hVar.f39331b = j3;
                if (j3 % 50 == 0) {
                    hVar.a(j2 - 49);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public c(int i2, int i3) {
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        new f(i2);
        h hVar = new h(new WeakHashMap(10), new f(i2), new Handler(Looper.getMainLooper()));
        new Handler(Looper.getMainLooper());
        this(weakHashMap, weakHashMap2, hVar);
    }

    public c(WeakHashMap weakHashMap, WeakHashMap weakHashMap2, h hVar) {
        this.f39317b = weakHashMap;
        this.f39318c = weakHashMap2;
        this.f39316a = hVar;
        hVar.f39335f = new b(this);
    }

    public final void a() {
        this.f39317b.clear();
        this.f39318c.clear();
        h hVar = this.f39316a;
        hVar.f39333d.clear();
        hVar.f39337h.removeMessages(0);
        hVar.f39338i = false;
        h hVar2 = this.f39316a;
        hVar2.f39333d.clear();
        hVar2.f39337h.removeMessages(0);
        hVar2.f39338i = false;
        hVar2.f39335f = null;
    }
}
