package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.ubix.ssp.ad.e.a0.s;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class o extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    com.ubix.ssp.ad.e.a f46378a;

    /* renamed from: b, reason: collision with root package name */
    private f f46379b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f46380c;

    /* renamed from: d, reason: collision with root package name */
    private s f46381d;

    /* renamed from: e, reason: collision with root package name */
    private float f46382e;

    /* renamed from: f, reason: collision with root package name */
    private float f46383f;

    /* renamed from: g, reason: collision with root package name */
    private int f46384g;

    /* renamed from: h, reason: collision with root package name */
    private int f46385h;

    /* renamed from: i, reason: collision with root package name */
    private int f46386i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f46387j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f46388k;

    /* renamed from: l, reason: collision with root package name */
    private AtomicBoolean f46389l;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = o.this;
            oVar.measure(oVar.f46385h, o.this.f46386i);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.setShakeSensor(null);
            o.this.requestLayout();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.b();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                o oVar = o.this;
                oVar.setShakeSensor(oVar.findViewById(910101));
            } catch (Exception unused) {
            }
        }
    }

    public class e implements s.e {
        public e() {
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(float f2, float f3) {
            try {
                if (!o.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(o.this.findViewById(910100), 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a(o.this)) {
                    return;
                }
                o.this.b();
                if (o.this.f46379b != null) {
                    o.this.f46379b.a(f2, f3);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(Bundle bundle) {
            if (!o.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(o.this.findViewById(910100), 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a(o.this) || o.this.f46379b == null) {
                return;
            }
            o.this.f46379b.a(bundle);
        }
    }

    public interface f {
        void a(float f2, float f3);

        void a(Bundle bundle);

        boolean a();
    }

    public o(Context context, String str, String str2, int i2, int i3, int i4, boolean z2) {
        com.ubix.ssp.ad.e.a aVar;
        int i5;
        super(context);
        this.f46378a = null;
        this.f46380c = false;
        this.f46387j = false;
        this.f46388k = false;
        this.f46389l = new AtomicBoolean(false);
        setId(910100);
        this.f46382e = i2 / 100.0f;
        this.f46383f = i3 / 100.0f;
        this.f46384g = Math.max(i4, 40);
        this.f46388k = z2;
        if (str == null && str2 == null) {
            this.f46378a = new com.ubix.ssp.ad.e.a(getContext(), 0, 0, true, false, null, null);
        } else {
            this.f46378a = new com.ubix.ssp.ad.e.a(getContext(), 0, 0, true, true, str, str2);
        }
        this.f46378a.setId(910104);
        if (this.f46388k) {
            aVar = this.f46378a;
            i5 = 4;
        } else {
            aVar = this.f46378a;
            i5 = 8;
        }
        aVar.setVisibility(i5);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(this.f46378a, layoutParams);
        setBackgroundColor(0);
        this.f46384g = (int) (this.f46384g * r.a().a(context));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new b());
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setVisibility(8);
        post(new a());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        post(new c());
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        View viewFindViewById = findViewById(910104);
        if (viewFindViewById != null) {
            float f2 = i4 - i2;
            int measuredWidth = (int) ((this.f46382e * f2) - (viewFindViewById.getMeasuredWidth() / 2));
            int measuredWidth2 = (int) ((f2 * this.f46382e) + (viewFindViewById.getMeasuredWidth() / 2));
            float f3 = (i5 - i3) * this.f46383f;
            float f4 = this.f46384g / 2;
            viewFindViewById.layout(measuredWidth, (int) (f3 - f4), measuredWidth2, (int) (f3 + f4));
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        f fVar;
        try {
            super.onMeasure(i2, i3);
            this.f46385h = i2;
            this.f46386i = i3;
            int height = (((ViewGroup) getParent()).getHeight() - ((ViewGroup) getParent()).getPaddingTop()) - ((ViewGroup) getParent()).getPaddingBottom();
            if (height < 0) {
                height = ((ViewGroup) getParent()).getHeight();
            }
            int width = (((ViewGroup) getParent()).getWidth() - ((ViewGroup) getParent()).getPaddingLeft()) - ((ViewGroup) getParent()).getPaddingRight();
            this.f46378a.a(width, this.f46384g);
            setMeasuredDimension(width, height);
            if (getVisibility() != 8 || this.f46387j || (fVar = this.f46379b) == null || fVar.a()) {
                return;
            }
            setVisibility(0);
        } catch (Throwable th) {
            th.printStackTrace();
            setMeasuredDimension(i2, i3);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        f fVar;
        super.onWindowFocusChanged(z2);
        if (!z2 || (fVar = this.f46379b) == null || !fVar.a() || this.f46381d == null) {
            return;
        }
        setVisibility(8);
        b();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            setShakeSensor(findViewById(910101));
        } else {
            b();
        }
    }

    public void setCallback(f fVar) {
        this.f46379b = fVar;
        if (this.f46388k || this.f46387j || fVar == null || fVar.a()) {
            return;
        }
        this.f46378a.setVisibility(0);
    }

    public void setShakeSensor(View view) {
        f fVar = this.f46379b;
        if (fVar != null && fVar.a() && this.f46381d != null) {
            setVisibility(8);
            return;
        }
        synchronized (this) {
            if (this.f46381d != null && !this.f46389l.get() && !this.f46380c) {
                setVisibility(0);
                this.f46389l.set(true);
                this.f46381d.a(new e());
            }
        }
    }

    public void a() {
        this.f46387j = true;
        setVisibility(8);
    }

    public void b() {
        try {
            f fVar = this.f46379b;
            if (fVar != null && fVar.a() && this.f46381d != null) {
                setVisibility(8);
            }
            s sVar = this.f46381d;
            if (sVar != null) {
                sVar.f();
            }
            AtomicBoolean atomicBoolean = this.f46389l;
            if (atomicBoolean != null) {
                atomicBoolean.set(false);
            }
            s sVar2 = this.f46381d;
            if (sVar2 != null) {
                sVar2.a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(int i2, double d2, int[] iArr, int i3, int i4, double d3, boolean z2, boolean z3) {
        try {
            this.f46381d = i2 == 1 ? new s(getContext(), d2, iArr, i4, d3, z2, z3) : new s(getContext(), d2, iArr[0], d3);
            postDelayed(new d(), 0L);
            this.f46381d.a((ImageView) findViewById(910101));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
