package com.anythink.network.baidu.impression;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
class b {

    /* renamed from: k, reason: collision with root package name */
    private static int f9438k = 1000;

    /* renamed from: l, reason: collision with root package name */
    static final int f9439l = 50;

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<View> f9440a;

    /* renamed from: b, reason: collision with root package name */
    private long f9441b;

    /* renamed from: c, reason: collision with root package name */
    final ViewTreeObserver.OnPreDrawListener f9442c;

    /* renamed from: d, reason: collision with root package name */
    WeakReference<ViewTreeObserver> f9443d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<View, C0099b> f9444e;

    /* renamed from: f, reason: collision with root package name */
    private final c f9445f;

    /* renamed from: g, reason: collision with root package name */
    private e f9446g;

    /* renamed from: h, reason: collision with root package name */
    private final d f9447h;

    /* renamed from: i, reason: collision with root package name */
    private final Handler f9448i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f9449j;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            b.this.c();
            return true;
        }
    }

    /* renamed from: com.anythink.network.baidu.impression.b$b, reason: collision with other inner class name */
    public static class C0099b {

        /* renamed from: a, reason: collision with root package name */
        int f9451a;

        /* renamed from: b, reason: collision with root package name */
        int f9452b;

        /* renamed from: c, reason: collision with root package name */
        long f9453c;

        /* renamed from: d, reason: collision with root package name */
        View f9454d;

        /* renamed from: e, reason: collision with root package name */
        Integer f9455e;
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final Rect f9456a = new Rect();

        public boolean a(long j2, int i2) {
            return SystemClock.uptimeMillis() - j2 >= ((long) i2);
        }

        public boolean a(View view, View view2, int i2, Integer num) {
            if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || view2.getWindowVisibility() != 0 || !view2.getGlobalVisibleRect(this.f9456a)) {
                return false;
            }
            long jHeight = this.f9456a.height() * this.f9456a.width();
            long height = view2.getHeight() * view2.getWidth();
            if (height <= 0) {
                return false;
            }
            return (num == null || num.intValue() <= 0) ? jHeight * 100 >= ((long) i2) * height : jHeight >= ((long) num.intValue());
        }
    }

    public class d implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final ArrayList<View> f9458b = new ArrayList<>();

        /* renamed from: a, reason: collision with root package name */
        private final ArrayList<View> f9457a = new ArrayList<>();

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f9449j = false;
            for (Map.Entry entry : b.this.f9444e.entrySet()) {
                View view = (View) entry.getKey();
                int i2 = ((C0099b) entry.getValue()).f9451a;
                int i3 = ((C0099b) entry.getValue()).f9452b;
                Integer num = ((C0099b) entry.getValue()).f9455e;
                View view2 = ((C0099b) entry.getValue()).f9454d;
                if (b.this.f9445f.a(view2, view, i2, num)) {
                    this.f9457a.add(view);
                } else if (!b.this.f9445f.a(view2, view, i3, null)) {
                    this.f9458b.add(view);
                }
            }
            if (b.this.f9446g != null) {
                b.this.f9446g.onVisibilityChanged(this.f9457a, this.f9458b);
            }
            this.f9457a.clear();
            this.f9458b.clear();
        }
    }

    public interface e {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    public b(Context context) {
        this(context, new WeakHashMap(10), new c(), new Handler(Looper.getMainLooper()));
    }

    public void b() {
        a();
        ViewTreeObserver viewTreeObserver = this.f9443d.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f9442c);
        }
        this.f9443d.clear();
        this.f9446g = null;
    }

    public void c() {
        if (this.f9449j) {
            return;
        }
        this.f9449j = true;
        this.f9448i.postDelayed(this.f9447h, f9438k);
    }

    private void a(Context context, View view) {
        View topmostView;
        ViewTreeObserver viewTreeObserver = this.f9443d.get();
        if ((viewTreeObserver == null || !viewTreeObserver.isAlive()) && (topmostView = BDViews.getTopmostView(context, view)) != null) {
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                this.f9443d = new WeakReference<>(viewTreeObserver2);
                viewTreeObserver2.addOnPreDrawListener(this.f9442c);
            }
        }
    }

    public b(Context context, int i2) {
        this(context, new WeakHashMap(10), new c(), new Handler(Looper.getMainLooper()));
        f9438k = i2;
    }

    public b(Context context, Map<View, C0099b> map, c cVar, Handler handler) {
        this.f9441b = 0L;
        this.f9444e = map;
        this.f9445f = cVar;
        this.f9448i = handler;
        this.f9447h = new d();
        this.f9440a = new ArrayList<>(50);
        this.f9442c = new a();
        this.f9443d = new WeakReference<>(null);
        a(context, (View) null);
    }

    public void a(e eVar) {
        this.f9446g = eVar;
    }

    public void a(View view, int i2, Integer num) {
        a(view, view, i2, num);
    }

    public void a(View view, View view2, int i2, Integer num) {
        a(view, view2, i2, i2, num);
    }

    public void a(View view, View view2, int i2, int i3, Integer num) {
        try {
            a(view2.getContext(), view2);
            C0099b c0099b = this.f9444e.get(view2);
            if (c0099b == null) {
                c0099b = new C0099b();
                this.f9444e.put(view2, c0099b);
                c();
            }
            int iMin = Math.min(i3, i2);
            c0099b.f9454d = view;
            c0099b.f9451a = i2;
            c0099b.f9452b = iMin;
            long j2 = this.f9441b;
            c0099b.f9453c = j2;
            c0099b.f9455e = num;
            long j3 = 1 + j2;
            this.f9441b = j3;
            if (j3 % 50 == 0) {
                a(j2 - 49);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(long j2) {
        for (Map.Entry<View, C0099b> entry : this.f9444e.entrySet()) {
            if (entry.getValue().f9453c < j2) {
                this.f9440a.add(entry.getKey());
            }
        }
        ArrayList<View> arrayList = this.f9440a;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            View view = arrayList.get(i2);
            i2++;
            a(view);
        }
        this.f9440a.clear();
    }

    public void a(View view) {
        this.f9444e.remove(view);
    }

    public void a() {
        this.f9444e.clear();
        this.f9448i.removeMessages(0);
        this.f9449j = false;
    }
}
