package com.anythink.core.common.inner.mixad.f;

import android.view.MotionEvent;
import android.view.View;
import java.util.List;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static int f4756a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static int f4757b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static int f4758c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static int f4759d = 3;

    /* renamed from: e, reason: collision with root package name */
    public static int f4760e = 4;

    /* renamed from: f, reason: collision with root package name */
    public static int f4761f = 5;

    /* renamed from: g, reason: collision with root package name */
    public static int f4762g = 1;

    /* renamed from: h, reason: collision with root package name */
    public static int f4763h = 2;

    /* renamed from: i, reason: collision with root package name */
    private static final String f4764i = "b";

    /* renamed from: j, reason: collision with root package name */
    private List<View> f4765j;

    /* renamed from: k, reason: collision with root package name */
    private View f4766k;

    /* renamed from: l, reason: collision with root package name */
    private View f4767l;

    /* renamed from: m, reason: collision with root package name */
    private View f4768m;

    /* renamed from: n, reason: collision with root package name */
    private float f4769n;

    /* renamed from: o, reason: collision with root package name */
    private float f4770o;

    /* renamed from: p, reason: collision with root package name */
    private float f4771p;

    /* renamed from: q, reason: collision with root package name */
    private float f4772q;

    /* renamed from: r, reason: collision with root package name */
    private int f4773r;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private List<View> f4774a;

        /* renamed from: b, reason: collision with root package name */
        private View f4775b;

        /* renamed from: c, reason: collision with root package name */
        private View f4776c;

        /* renamed from: d, reason: collision with root package name */
        private View f4777d;

        public final a a(List<View> list) {
            this.f4774a = list;
            return this;
        }

        public final a b(View view) {
            this.f4776c = view;
            return this;
        }

        public final a c(View view) {
            this.f4777d = view;
            return this;
        }

        public final a a(View view) {
            this.f4775b = view;
            return this;
        }

        public final b a() {
            b bVar = new b((byte) 0);
            bVar.f4765j = this.f4774a;
            bVar.f4766k = this.f4775b;
            bVar.f4767l = this.f4776c;
            bVar.f4768m = this.f4777d;
            return bVar;
        }
    }

    public /* synthetic */ b(byte b3) {
        this();
    }

    private b() {
        this.f4773r = f4756a;
    }

    public final void a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f4773r = f4761f;
            this.f4770o = (int) motionEvent.getRawX();
            this.f4772q = (int) motionEvent.getRawY();
            this.f4769n = (int) motionEvent.getX();
            this.f4771p = (int) motionEvent.getY();
            return;
        }
        if (action == 1 || action == 3) {
            try {
                float f2 = this.f4770o;
                float f3 = this.f4772q;
                if (a(f2, f3, this.f4766k)) {
                    this.f4773r = f4758c;
                    return;
                }
                if (a(f2, f3, this.f4767l)) {
                    this.f4773r = f4759d;
                    return;
                }
                if (a(f2, f3, this.f4768m)) {
                    this.f4773r = f4760e;
                    return;
                }
                List<View> list = this.f4765j;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < this.f4765j.size(); i2++) {
                    if (a(f2, f3, this.f4765j.get(i2))) {
                        this.f4773r = f4757b;
                        return;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void a(float f2, float f3) {
        if (a(f2, f3, this.f4766k)) {
            this.f4773r = f4758c;
            return;
        }
        if (a(f2, f3, this.f4767l)) {
            this.f4773r = f4759d;
            return;
        }
        if (a(f2, f3, this.f4768m)) {
            this.f4773r = f4760e;
            return;
        }
        List<View> list = this.f4765j;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f4765j.size(); i2++) {
            if (a(f2, f3, this.f4765j.get(i2))) {
                this.f4773r = f4757b;
                return;
            }
        }
    }

    public final int a() {
        return this.f4773r;
    }

    private static boolean a(float f2, float f3, View view) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        float f4 = iArr[0];
        float f5 = iArr[1];
        return f2 >= f4 && f2 <= ((float) view.getWidth()) + f4 && f3 >= f5 && f3 <= ((float) view.getHeight()) + f5;
    }
}
