package com.octopus.ad.internal.e;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.octopus.ad.d.i;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class h implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    private long f34910a;

    /* renamed from: b, reason: collision with root package name */
    private float f34911b;

    /* renamed from: c, reason: collision with root package name */
    private float f34912c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f34913d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f34914e = false;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f34915f;

    /* renamed from: g, reason: collision with root package name */
    private final a f34916g;

    /* renamed from: h, reason: collision with root package name */
    private final com.octopus.ad.a.d f34917h;

    public interface a {
        void a(View view, com.octopus.ad.a.d dVar);
    }

    public h(View view, boolean z2, a aVar) {
        this.f34915f = z2;
        this.f34916g = aVar;
        com.octopus.ad.a.d dVar = new com.octopus.ad.a.d(1);
        this.f34917h = dVar;
        if (view == null || view.getWidth() <= 0 || view.getHeight() <= 0) {
            dVar.e(ViewUtil.getScreenWidth(q.a().l()));
            dVar.f(ViewUtil.getScreenHeight(q.a().l()));
        } else {
            dVar.e(view.getWidth());
            dVar.f(view.getHeight());
        }
    }

    private void a(View view) {
        a aVar = this.f34916g;
        if (aVar != null) {
            aVar.a(view, this.f34917h);
        }
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f34910a = System.currentTimeMillis();
            this.f34911b = motionEvent.getX();
            this.f34912c = motionEvent.getY();
            this.f34917h.a((int) motionEvent.getRawX());
            this.f34917h.b((int) motionEvent.getRawY());
            this.f34917h.a(String.valueOf(System.currentTimeMillis()));
            this.f34917h.d(String.valueOf(System.currentTimeMillis()));
            this.f34917h.c(String.valueOf(System.currentTimeMillis() / 1000));
            this.f34913d = true;
            if (this.f34915f && !this.f34914e) {
                int iA = i.a(150) + 50;
                this.f34917h.c((int) motionEvent.getRawX());
                this.f34917h.d((int) motionEvent.getRawY());
                this.f34917h.b(String.valueOf(System.currentTimeMillis() + iA));
                a(view);
                this.f34914e = true;
            }
        } else if (action != 1) {
            if (action == 2 && this.f34913d && a(this.f34911b, this.f34912c, motionEvent.getX(), motionEvent.getY()) > 15.0f) {
                this.f34913d = false;
            }
        } else if (System.currentTimeMillis() - this.f34910a < 1000 && this.f34913d && (!this.f34915f || this.f34914e)) {
            this.f34917h.c((int) motionEvent.getRawX());
            this.f34917h.d((int) motionEvent.getRawY());
            this.f34917h.b(String.valueOf(System.currentTimeMillis()));
            a(view);
        }
        return true;
    }

    public static float a(float f2, float f3, float f4, float f5) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        return a((float) Math.sqrt((f6 * f6) + (f7 * f7)));
    }

    private static float a(float f2) {
        return f2 / q.a().s().density;
    }
}
