package com.anythink.core.common.v.a;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class f {

    /* renamed from: c, reason: collision with root package name */
    private static String f7996c = "f";

    /* renamed from: a, reason: collision with root package name */
    final int f7997a;

    /* renamed from: b, reason: collision with root package name */
    final ViewTreeObserver.OnPreDrawListener f7998b;

    /* renamed from: d, reason: collision with root package name */
    private int f7999d;

    /* renamed from: e, reason: collision with root package name */
    private final ArrayList<View> f8000e;

    /* renamed from: f, reason: collision with root package name */
    private long f8001f;

    /* renamed from: g, reason: collision with root package name */
    private final Map<View, a> f8002g;

    /* renamed from: h, reason: collision with root package name */
    private final b f8003h;

    /* renamed from: i, reason: collision with root package name */
    private d f8004i;

    /* renamed from: j, reason: collision with root package name */
    private final c f8005j;

    /* renamed from: k, reason: collision with root package name */
    private final Handler f8006k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f8007l;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        int f8009a;

        /* renamed from: b, reason: collision with root package name */
        int f8010b;

        /* renamed from: c, reason: collision with root package name */
        long f8011c;

        /* renamed from: d, reason: collision with root package name */
        View f8012d;

        /* renamed from: e, reason: collision with root package name */
        Integer f8013e;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static String f8014a = "b";

        /* renamed from: b, reason: collision with root package name */
        private final Rect f8015b;

        /* renamed from: c, reason: collision with root package name */
        private int f8016c;

        public b() {
            this.f8015b = new Rect();
            this.f8016c = 1;
        }

        private static boolean a(long j2, int i2) {
            return SystemClock.uptimeMillis() - j2 >= ((long) i2);
        }

        public final boolean a(View view, View view2, int i2, Integer num) {
            if (view2 != null && view != null) {
                try {
                    if (view.getParent() != null && view2.getWindowVisibility() == 0) {
                        if ((this.f8016c == 1 && !view2.hasWindowFocus()) || !view2.getGlobalVisibleRect(this.f8015b)) {
                            return false;
                        }
                        long jHeight = this.f8015b.height() * this.f8015b.width();
                        long height = view2.getHeight() * view2.getWidth();
                        if (height <= 0) {
                            return false;
                        }
                        if ((num == null || num.intValue() <= 0 || jHeight >= num.intValue()) && jHeight * 100 >= i2 * height) {
                            return view2.isShown();
                        }
                        return false;
                    }
                } catch (Throwable th) {
                    Log.e(f8014a, "checkVisibilityPercent error: " + th.getMessage());
                    th.printStackTrace();
                }
            }
            return false;
        }

        public b(int i2) {
            this.f8015b = new Rect();
            this.f8016c = i2;
        }

        private static int a(View view) {
            try {
                view.getGlobalVisibleRect(new Rect());
                return (int) ((((r0.height() * r0.width()) * 1.0d) / (view.getHeight() * view.getWidth())) * 100.0d);
            } catch (Throwable unused) {
                return 100;
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        private final ArrayList<View> f8019c = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        private final ArrayList<View> f8018b = new ArrayList<>();

        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (Map.Entry entry : f.this.f8002g.entrySet()) {
                View view = (View) entry.getKey();
                int i2 = ((a) entry.getValue()).f8009a;
                int i3 = ((a) entry.getValue()).f8010b;
                Integer num = ((a) entry.getValue()).f8013e;
                View view2 = ((a) entry.getValue()).f8012d;
                if (f.this.f8003h.a(view2, view, i2, num)) {
                    this.f8018b.add(view);
                    try {
                        view.getViewTreeObserver().removeOnPreDrawListener(f.this.f7998b);
                    } catch (Throwable unused) {
                    }
                } else if (!f.this.f8003h.a(view2, view, i3, null)) {
                    this.f8019c.add(view);
                }
            }
            if (f.this.f8004i != null) {
                f.this.f8004i.a(this.f8018b);
            }
            this.f8018b.clear();
            this.f8019c.clear();
            f.d(f.this);
        }
    }

    public interface d {
        void a(List<View> list);
    }

    public f(int i2) {
        this(new WeakHashMap(10), new b(i2), new Handler(Looper.getMainLooper()));
    }

    public static /* synthetic */ boolean d(f fVar) {
        fVar.f8007l = false;
        return false;
    }

    public final void a(d dVar) {
        this.f8004i = dVar;
    }

    public final void b() {
        a();
        this.f8004i = null;
    }

    public final void c() {
        if (this.f8007l) {
            return;
        }
        this.f8007l = true;
        this.f8006k.postDelayed(this.f8005j, this.f7999d);
    }

    private void a(View view, View view2, int i2, Integer num) {
        a(view, view2, i2, i2, num);
    }

    public f() {
        this(new WeakHashMap(10), new b(1), new Handler(Looper.getMainLooper()));
        this.f7999d = 50;
    }

    public final void a(View view, View view2, int i2, int i3, Integer num) {
        try {
            if (a(view2.getContext(), view2)) {
                a aVar = this.f8002g.get(view2);
                if (aVar == null) {
                    aVar = new a();
                    this.f8002g.put(view2, aVar);
                    c();
                }
                int iMin = Math.min(i3, i2);
                aVar.f8012d = view;
                aVar.f8009a = i2;
                aVar.f8010b = iMin;
                aVar.f8011c = this.f8001f;
                aVar.f8013e = num;
                view2.getViewTreeObserver().addOnPreDrawListener(this.f7998b);
                long j2 = this.f8001f;
                long j3 = 1 + j2;
                this.f8001f = j3;
                if (j3 % 50 == 0) {
                    a(j2 - 49);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private f(Map<View, a> map, b bVar, Handler handler) {
        this.f7999d = 100;
        this.f7997a = 50;
        this.f8001f = 0L;
        this.f8002g = map;
        this.f8003h = bVar;
        this.f8006k = handler;
        this.f8005j = new c();
        this.f8000e = new ArrayList<>(50);
        this.f7998b = new ViewTreeObserver.OnPreDrawListener() { // from class: com.anythink.core.common.v.a.f.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                f.this.c();
                return true;
            }
        };
    }

    private void a(long j2) {
        for (Map.Entry<View, a> entry : this.f8002g.entrySet()) {
            if (entry.getValue().f8011c < j2) {
                this.f8000e.add(entry.getKey());
            }
        }
        ArrayList<View> arrayList = this.f8000e;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            View view = arrayList.get(i2);
            i2++;
            a(view);
        }
        this.f8000e.clear();
    }

    public final void a(View view) {
        this.f8002g.remove(view);
    }

    public final void a() {
        this.f8002g.clear();
        this.f8006k.removeMessages(0);
        this.f8007l = false;
    }

    private static boolean a(Context context, View view) {
        View rootView;
        View viewFindViewById = null;
        View viewFindViewById2 = !(context instanceof Activity) ? null : ((Activity) context).getWindow().getDecorView().findViewById(R.id.content);
        if (view != null && (rootView = view.getRootView()) != null && (viewFindViewById = rootView.findViewById(R.id.content)) == null) {
            viewFindViewById = rootView;
        }
        if (viewFindViewById2 == null) {
            viewFindViewById2 = viewFindViewById;
        }
        return viewFindViewById2 != null && viewFindViewById2.getViewTreeObserver().isAlive();
    }

    private void a(View view, int i2, Integer num) {
        a(view, view, i2, i2, num);
    }
}
