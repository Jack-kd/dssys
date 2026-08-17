package com.sigmob.sdk.base.common;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* renamed from: com.sigmob.sdk.base.common.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1248c extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: b, reason: collision with root package name */
    private static final int f35837b = 4;

    /* renamed from: c, reason: collision with root package name */
    private static final float f35838c = 100.0f;

    /* renamed from: d, reason: collision with root package name */
    private static final float f35839d = 100.0f;

    /* renamed from: a, reason: collision with root package name */
    boolean f35840a;

    /* renamed from: e, reason: collision with root package name */
    private final BaseAdUnit f35841e;

    /* renamed from: f, reason: collision with root package name */
    private float f35842f;

    /* renamed from: g, reason: collision with root package name */
    private float f35843g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f35844h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f35845i;

    /* renamed from: j, reason: collision with root package name */
    private int f35846j;

    /* renamed from: k, reason: collision with root package name */
    private float f35847k;

    /* renamed from: l, reason: collision with root package name */
    private a f35848l = a.UNSET;

    /* renamed from: m, reason: collision with root package name */
    private View f35849m;

    /* renamed from: com.sigmob.sdk.base.common.c$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35850a;

        static {
            int[] iArr = new int[a.values().length];
            f35850a = iArr;
            try {
                iArr[a.UNSET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35850a[a.GOING_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35850a[a.GOING_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35850a[a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.c$a */
    public enum a {
        UNSET,
        GOING_RIGHT,
        GOING_LEFT,
        FINISHED,
        FAILED
    }

    public C1248c(View view, BaseAdUnit baseAdUnit) {
        this.f35842f = 100.0f;
        if (view != null && view.getWidth() > 0) {
            this.f35842f = Math.min(100.0f, view.getWidth() / 3.0f);
        }
        this.f35840a = false;
        this.f35849m = view;
        this.f35841e = baseAdUnit;
    }

    private void e() {
        int i2 = this.f35846j + 1;
        this.f35846j = i2;
        if (i2 >= 4) {
            this.f35848l = a.FINISHED;
        }
    }

    private boolean f(float f2) {
        return f2 > this.f35843g;
    }

    private boolean g(float f2) {
        return f2 < this.f35843g;
    }

    public void a() {
        a aVar = a.UNSET;
        b();
    }

    public void b() {
        this.f35846j = 0;
        this.f35848l = a.UNSET;
    }

    public void c() {
        this.f35840a = false;
    }

    public boolean d() {
        return this.f35840a;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        if (motionEvent == null || motionEvent2 == null) {
            return false;
        }
        if (this.f35848l == a.FINISHED) {
            return super.onScroll(motionEvent, motionEvent2, f2, f3);
        }
        if (a(motionEvent, motionEvent2)) {
            this.f35848l = a.FAILED;
        } else {
            int i2 = AnonymousClass1.f35850a[this.f35848l.ordinal()];
            if (i2 == 1) {
                this.f35847k = motionEvent.getX();
                a(motionEvent2.getX());
            } else if (i2 == 2) {
                b(motionEvent2.getX());
            } else if (i2 == 3) {
                c(motionEvent2.getX());
            }
            this.f35843g = motionEvent2.getX();
        }
        return super.onScroll(motionEvent, motionEvent2, f2, f3);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f35840a = true;
        return super.onSingleTapUp(motionEvent);
    }

    private void a(float f2) {
        if (f2 > this.f35847k) {
            this.f35848l = a.GOING_RIGHT;
        }
    }

    private void b(float f2) {
        if (d(f2) && g(f2)) {
            this.f35848l = a.GOING_LEFT;
            this.f35847k = f2;
        }
    }

    private void c(float f2) {
        if (e(f2) && f(f2)) {
            this.f35848l = a.GOING_RIGHT;
            this.f35847k = f2;
        }
    }

    private boolean d(float f2) {
        if (this.f35845i) {
            return true;
        }
        if (f2 < this.f35847k + this.f35842f) {
            return false;
        }
        this.f35844h = false;
        this.f35845i = true;
        return true;
    }

    private boolean e(float f2) {
        if (this.f35844h) {
            return true;
        }
        if (f2 > this.f35847k - this.f35842f) {
            return false;
        }
        this.f35845i = false;
        this.f35844h = true;
        e();
        return true;
    }

    private boolean a(MotionEvent motionEvent, MotionEvent motionEvent2) {
        if (motionEvent != null && motionEvent2 != null) {
            if (Math.abs(motionEvent2.getY() - motionEvent.getY()) > 100.0f) {
                return true;
            }
        }
        return false;
    }
}
