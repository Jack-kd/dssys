package com.beizi.fusion;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes2.dex */
public interface lf {

    public static class a {
        public static lf a() {
            return new dq();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private long f14851a;

        /* renamed from: b, reason: collision with root package name */
        private long f14852b;

        /* renamed from: c, reason: collision with root package name */
        private float f14853c;

        /* renamed from: d, reason: collision with root package name */
        private float f14854d;

        /* renamed from: e, reason: collision with root package name */
        private float f14855e;

        /* renamed from: f, reason: collision with root package name */
        private float f14856f;

        /* renamed from: g, reason: collision with root package name */
        private float f14857g;

        /* renamed from: h, reason: collision with root package name */
        private float f14858h;

        /* renamed from: i, reason: collision with root package name */
        private float f14859i;

        /* renamed from: j, reason: collision with root package name */
        private float f14860j;

        /* renamed from: k, reason: collision with root package name */
        private float f14861k;

        /* renamed from: l, reason: collision with root package name */
        private float f14862l;

        /* renamed from: m, reason: collision with root package name */
        private int f14863m;

        /* renamed from: n, reason: collision with root package name */
        private int f14864n;

        public float a() {
            return this.f14855e;
        }

        public float b() {
            return this.f14856f;
        }

        public long c() {
            return this.f14851a;
        }

        public float d() {
            return this.f14853c;
        }

        public float e() {
            return this.f14854d;
        }

        public float f() {
            return this.f14859i;
        }

        public float g() {
            return this.f14860j;
        }

        public long h() {
            return this.f14852b;
        }

        public float i() {
            return this.f14857g;
        }

        public float j() {
            return this.f14858h;
        }

        public int k() {
            return this.f14864n;
        }

        public int l() {
            return this.f14863m;
        }

        public float m() {
            return this.f14861k;
        }

        public float n() {
            return this.f14862l;
        }

        public void o() {
            this.f14851a = System.currentTimeMillis();
        }

        public void p() {
            this.f14852b = System.currentTimeMillis();
        }

        public void a(float f2, float f3) {
            this.f14855e = f2;
            this.f14856f = f3;
        }

        public void b(float f2, float f3) {
            this.f14853c = f2;
            this.f14854d = f3;
        }

        public void c(float f2, float f3) {
            this.f14859i = f2;
            this.f14860j = f3;
        }

        public void d(float f2, float f3) {
            this.f14857g = f2;
            this.f14858h = f3;
        }

        public void a(View view) {
            this.f14861k = view.getX();
            this.f14862l = view.getY();
            this.f14863m = view.getMeasuredWidth();
            this.f14864n = view.getMeasuredHeight();
        }
    }

    b a();

    void a(MotionEvent motionEvent);

    void a(View view);

    void a(View view, int i2);

    void a(View view, View view2, MotionEvent motionEvent);
}
