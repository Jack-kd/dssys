package com.ubix.ssp.ad.h;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.s;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.g;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class a extends com.ubix.ssp.ad.b implements View.OnClickListener {

    /* renamed from: A, reason: collision with root package name */
    private int f47988A;

    /* renamed from: B, reason: collision with root package name */
    private int f47989B;

    /* renamed from: C, reason: collision with root package name */
    private ValueAnimator f47990C;

    /* renamed from: l, reason: collision with root package name */
    protected HashMap<String, Integer> f47991l;

    /* renamed from: m, reason: collision with root package name */
    private AtomicBoolean f47992m;

    /* renamed from: n, reason: collision with root package name */
    private com.ubix.ssp.ad.g.k.e f47993n;

    /* renamed from: o, reason: collision with root package name */
    private com.ubix.ssp.ad.h.c.b f47994o;

    /* renamed from: p, reason: collision with root package name */
    private int f47995p;

    /* renamed from: q, reason: collision with root package name */
    private int f47996q;

    /* renamed from: r, reason: collision with root package name */
    private int f47997r;

    /* renamed from: s, reason: collision with root package name */
    private int f47998s;

    /* renamed from: t, reason: collision with root package name */
    private int f47999t;

    /* renamed from: u, reason: collision with root package name */
    private float f48000u;

    /* renamed from: v, reason: collision with root package name */
    private int f48001v;

    /* renamed from: w, reason: collision with root package name */
    private int f48002w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f48003x;

    /* renamed from: y, reason: collision with root package name */
    private Rect f48004y;

    /* renamed from: z, reason: collision with root package name */
    private int f48005z;

    /* renamed from: com.ubix.ssp.ad.h.a$a, reason: collision with other inner class name */
    public class C0840a implements s.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f48006a;

        public C0840a(View view) {
            this.f48006a = view;
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(float f2, float f3) {
            try {
                if (!a.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(a.this)) {
                    return;
                }
                ((com.ubix.ssp.ad.b) a.this).f45643f.f();
                ((com.ubix.ssp.ad.b) a.this).f45643f.a();
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "3");
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_TRIGGER__", "3");
                if (a.this.f47993n != null) {
                    a.this.f47993n.b(((com.ubix.ssp.ad.b) a.this).f45639b, this.f48006a, ((com.ubix.ssp.ad.b) a.this).f45638a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(Bundle bundle) {
            try {
                if (!a.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(a.this)) {
                    return;
                }
                u.e("onSensorInfo=" + bundle.toString());
                if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__X_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__Y_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Y_MAX_ACC__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__Z_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_X__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_X__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_Y__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Y__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_Z__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__UBIX_TURN_TARGET__", bundle.getInt("__UBIX_TURN_TARGET__") + "");
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_TIME__", bundle.getLong("__TURN_TIME__") + "");
                }
                if (a.this.f47993n != null) {
                    a.this.f47993n.a(((com.ubix.ssp.ad.b) a.this).f45639b, bundle);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (a.this.f47989B != (Integer.parseInt(valueAnimator.getAnimatedValue() + "") * a.this.f47988A) / 100) {
                a.this.f47989B = (Integer.parseInt(valueAnimator.getAnimatedValue() + "") * a.this.f47988A) / 100;
                View viewFindViewById = a.this.findViewById(400001);
                if (viewFindViewById != null && (viewFindViewById instanceof TextView) && a.this.f48005z == 4) {
                    ((TextView) viewFindViewById).setText("跳过 " + (a.this.f47989B + 1));
                }
            }
            a.this.f47989B = (Integer.parseInt(valueAnimator.getAnimatedValue() + "") * a.this.f47988A) / 100;
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (a.this.f47993n != null) {
                a.this.f47993n.e(0);
            }
            try {
                if (a.this.f47990C != null) {
                    a.this.f47990C.removeAllListeners();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((com.ubix.ssp.ad.d.b.f45786E != 1 || !((com.ubix.ssp.ad.b) a.this).f45641d) && ((com.ubix.ssp.ad.b) a.this).f45643f != null) {
                a.this.setShakeSensor(null);
            }
            try {
                View viewFindViewById = a.this.findViewById(400001);
                if (viewFindViewById != null && (viewFindViewById instanceof g)) {
                    ((g) viewFindViewById).d();
                }
                if (a.this.f47990C != null) {
                    a.this.f47990C.resume();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((com.ubix.ssp.ad.d.b.f45786E != 1 || !((com.ubix.ssp.ad.b) a.this).f45641d) && ((com.ubix.ssp.ad.b) a.this).f45643f != null) {
                a.this.setShakeSensor(null);
            }
            try {
                View viewFindViewById = a.this.findViewById(400001);
                if (viewFindViewById != null && (viewFindViewById instanceof g)) {
                    ((g) viewFindViewById).d();
                }
                if (a.this.f47990C != null) {
                    a.this.f47990C.resume();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public a(Context context) {
        super(context);
        this.f47991l = new HashMap<>();
        this.f47992m = new AtomicBoolean(false);
        this.f47997r = 4;
        this.f47999t = 0;
        this.f48000u = 0.05f;
        this.f48001v = 5;
        this.f48002w = 5;
        this.f48003x = false;
        this.f48004y = new Rect();
        this.f48005z = 0;
        this.f47988A = 5;
        this.f47989B = 5;
    }

    private Rect d(int i2, int i3) {
        Rect rect = new Rect();
        if (i2 * i3 > 0) {
            int i4 = (int) (this.f48002w * i3 * 0.01f);
            int i5 = (int) (this.f48001v * i2 * 0.01f);
            rect.left = i5;
            rect.top = i4;
            rect.right = i2 - i5;
            rect.bottom = i3 - i4;
        }
        return rect;
    }

    @Override // com.ubix.ssp.ad.b, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f48003x = a(this.f47998s, motionEvent.getX(), motionEvent.getY());
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!a(this.f47998s, motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        a(motionEvent);
        HashMap<String, String> map = this.f45638a;
        map.put("__TRI_VAL__", Base64.encodeToString(((Math.round(this.f45648k * 100.0f) / 100.0f) + "").getBytes(), 10));
        this.f45638a.put("__INSIDE_AREA__", this.f48003x + "");
        this.f45638a.put("__CLICK_AREA__", "4");
        this.f45638a.put("__CLICK_TRIGGER__", "4");
        com.ubix.ssp.ad.g.k.e eVar = this.f47993n;
        if (eVar == null) {
            return true;
        }
        eVar.b(this.f45639b, this, this.f45638a);
        return true;
    }

    @Override // com.ubix.ssp.ad.b
    public com.ubix.ssp.ad.g.k.b getInterface() {
        return this.f47993n;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
        u();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        HashMap<String, String> map;
        String str;
        this.f45638a.put("__CLICK_TRIGGER__", "");
        if (view.getId() == 910301 || view.getId() == 910401) {
            if (view.getId() == 910401) {
                map = this.f45638a;
                str = this.f48003x + "";
            } else {
                map = this.f45638a;
                str = "true";
            }
            map.put("__INSIDE_AREA__", str);
            this.f45638a.put("__CLICK_AREA__", "2");
            this.f45638a.put("__CLICK_TRIGGER__", "2");
        }
        com.ubix.ssp.ad.g.k.e eVar = this.f47993n;
        if (eVar != null) {
            eVar.b(this.f45639b, view, this.f45638a);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f47991l = a(getContext(), this.f47995p, this.f47996q, this.f47994o.getRealTemplateId());
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            post(new d());
            return;
        }
        s sVar = this.f45643f;
        if (sVar != null) {
            sVar.f();
            this.f45643f.a();
        }
        try {
            View viewFindViewById = findViewById(400001);
            if (viewFindViewById != null && (viewFindViewById instanceof g)) {
                ((g) viewFindViewById).c();
            }
            ValueAnimator valueAnimator = this.f47990C;
            if (valueAnimator != null) {
                valueAnimator.pause();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b, android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            s();
            post(new e());
            return;
        }
        s sVar = this.f45643f;
        if (sVar != null) {
            sVar.f();
            this.f45643f.a();
        }
        try {
            View viewFindViewById = findViewById(400001);
            if (viewFindViewById != null && (viewFindViewById instanceof g)) {
                ((g) viewFindViewById).c();
            }
            ValueAnimator valueAnimator = this.f47990C;
            if (valueAnimator != null) {
                valueAnimator.pause();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void q() {
        View viewFindViewById = findViewById(400001);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
        }
        View viewFindViewById2 = findViewById(400002);
        if (viewFindViewById2 != null) {
            viewFindViewById2.bringToFront();
        }
        View viewFindViewById3 = findViewById(400003);
        if (viewFindViewById3 != null) {
            viewFindViewById3.bringToFront();
        }
        View viewFindViewById4 = findViewById(920301);
        if (viewFindViewById4 != null) {
            viewFindViewById4.bringToFront();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public ViewGroup r() {
        return this.f47994o;
    }

    @Override // com.ubix.ssp.ad.b
    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f47993n = (com.ubix.ssp.ad.g.k.e) bVar;
        this.f47994o.setInnerListener(bVar);
    }

    @Override // com.ubix.ssp.ad.b
    public void setShakeSensor(View view) {
        super.setShakeSensor(view);
        if (this.f45643f == null || !isShown()) {
            return;
        }
        this.f45643f.a(new C0840a(view));
    }

    @Override // com.ubix.ssp.ad.b
    public void setShowCloseBtnDelay(int i2) {
    }

    private void s() {
        if (this.f47992m.get() || !isShown()) {
            return;
        }
        this.f47992m.set(true);
        com.ubix.ssp.ad.g.k.e eVar = this.f47993n;
        if (eVar != null) {
            eVar.a(0, this);
        }
    }

    private void t() {
        if (this.f47990C != null) {
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(99, 0);
        this.f47990C = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(this.f47988A * 1000);
        this.f47990C.setInterpolator(new LinearInterpolator());
        this.f47990C.addUpdateListener(new b());
        this.f47990C.addListener(new c());
        this.f47990C.start();
    }

    private void u() {
        TextView textView;
        String str;
        try {
            if (this.f48005z != 0) {
                if (this.f47994o.getRealTemplateId() != 6004 && this.f47994o.getRealTemplateId() != 6014) {
                    return;
                }
                t();
                View viewFindViewById = findViewById(400001);
                if (viewFindViewById == null) {
                    return;
                }
                viewFindViewById.setVisibility(0);
                int i2 = this.f48005z;
                if (i2 == 2) {
                    ((g) viewFindViewById).setDuration(this.f47988A * 1000);
                    ((g) viewFindViewById).e();
                    return;
                }
                if (i2 == 3) {
                    textView = (TextView) viewFindViewById;
                    str = "跳过";
                } else {
                    if (i2 != 4) {
                        return;
                    }
                    textView = (TextView) viewFindViewById;
                    str = "跳过 " + this.f47988A;
                }
                textView.setText(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public boolean b(Bundle bundle) {
        return this.f47994o.a(bundle);
    }

    @Override // com.ubix.ssp.ad.b
    public void j() {
        super.j();
        com.ubix.ssp.ad.h.c.b bVar = this.f47994o;
        if (bVar != null) {
            bVar.a();
        }
        ValueAnimator valueAnimator = this.f47990C;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f47990C.cancel();
        }
        s sVar = this.f45643f;
        if (sVar != null) {
            sVar.a();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public boolean n() {
        return (this.f47998s & 4) == 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0060 A[PHI: r4 r12 r14
      0x0060: PHI (r4v25 int) = (r4v6 int), (r4v11 int), (r4v34 int) binds: [B:54:0x00fb, B:46:0x00cf, B:15:0x005e] A[DONT_GENERATE, DONT_INLINE]
      0x0060: PHI (r12v16 int) = (r12v4 int), (r12v7 int), (r12v21 int) binds: [B:54:0x00fb, B:46:0x00cf, B:15:0x005e] A[DONT_GENERATE, DONT_INLINE]
      0x0060: PHI (r14v23 float) = (r14v4 float), (r14v12 float), (r14v30 float) binds: [B:54:0x00fb, B:46:0x00cf, B:15:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[PHI: r4 r12 r15
      0x0066: PHI (r4v18 int) = (r4v6 int), (r4v11 int), (r4v34 int) binds: [B:54:0x00fb, B:46:0x00cf, B:15:0x005e] A[DONT_GENERATE, DONT_INLINE]
      0x0066: PHI (r12v10 int) = (r12v4 int), (r12v7 int), (r12v21 int) binds: [B:54:0x00fb, B:46:0x00cf, B:15:0x005e] A[DONT_GENERATE, DONT_INLINE]
      0x0066: PHI (r15v5 float) = (r15v2 float), (r15v4 float), (r15v9 float) binds: [B:54:0x00fb, B:46:0x00cf, B:15:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, java.lang.Integer> a(android.content.Context r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.h.a.a(android.content.Context, int, int, int):java.util.HashMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004e, code lost:
    
        if (r16.f47994o.getRealTemplateId() != 6013) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0062, code lost:
    
        if (r16.f47994o.getRealTemplateId() != 6013) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0065, code lost:
    
        a(false, false, r20, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
    
        return;
     */
    @Override // com.ubix.ssp.ad.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r17, int r18, int r19, double r20, int r22, int[] r23, int r24, java.lang.String r25, java.lang.String r26, int r27, double r28, boolean r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.h.a.a(int, int, int, double, int, int[], int, java.lang.String, java.lang.String, int, double, boolean, boolean):void");
    }

    @Override // com.ubix.ssp.ad.b
    public void a(int i2, String str, String str2, boolean z2) {
        View viewFindViewById;
        super.a(i2, str, str2, z2);
        if (this.f47994o.a(i2) && (viewFindViewById = findViewById(910301)) != null) {
            if (z2) {
                viewFindViewById.setBackgroundColor(0);
            } else {
                viewFindViewById.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#ccc9c9c9"), 72, -1));
                a(viewFindViewById);
            }
        }
        if (findViewById(400001) != null) {
            findViewById(400001).bringToFront();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Context context, Bundle bundle) {
        this.f47997r = (int) (this.f47997r * r.a().a(context));
        this.f47999t = bundle.getInt("RENDER_MODE", 0);
        this.f48000u = bundle.getFloat("SCALE_IGNORE_PERCENT", 0.05f);
        int i2 = bundle.getInt("SCALE_HORIZONTAL_MARGIN", 5);
        this.f48001v = i2;
        if (i2 >= 50) {
            this.f48001v = 5;
        }
        int i3 = bundle.getInt("SCALE_VERTICAL_MARGIN", 5);
        this.f48002w = i3;
        if (i3 >= 50) {
            this.f48002w = 5;
        }
        int i4 = bundle.getInt("AD_WIDTH");
        this.f47995p = i4;
        int i5 = bundle.getInt("AD_HEIGHT");
        this.f47996q = i5;
        HashMap<String, Integer> mapA = a(context, i4, i5, bundle.getInt("TEMPLATE_ID"));
        this.f47991l = mapA;
        bundle.putSerializable("SIZE_MAP", mapA);
        bundle.putSerializable("CLICK_MAP", this.f45638a);
        this.f48005z = bundle.getInt("SKIP_VIEW_STYLE", 0);
        this.f47988A = bundle.getInt("SKIP_COUNT_TIME", 5);
        this.f47994o = com.ubix.ssp.ad.h.c.b.a(context, bundle);
        if (bundle.getInt("TEMPLATE_ID") != this.f47994o.getRealTemplateId()) {
            HashMap<String, Integer> mapA2 = a(context, bundle.getInt("AD_WIDTH"), bundle.getInt("AD_HEIGHT"), this.f47994o.getRealTemplateId());
            this.f47991l = mapA2;
            this.f47994o.a(mapA2);
        }
        setOnClickListener(this);
        addView(this.f47994o);
    }

    @Override // com.ubix.ssp.ad.b
    public void a(View view) {
        super.a(view);
        view.setOnClickListener(this);
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2) {
        try {
            s sVar = this.f45643f;
            if (sVar != null) {
                sVar.f();
                this.f45643f.a();
            }
            View viewFindViewById = r().findViewById(910104);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
                r().removeView(viewFindViewById);
            }
            View viewFindViewById2 = r().findViewById(910301);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(8);
                r().removeView(viewFindViewById2);
            }
            a(1, 0, 0, 0.0d, 0, new int[0], 0, str, str2, 0, 0.0d, false, false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        super.a(str, str2, str3, str4, str5, str6, j2);
        this.f47994o.a(str, str2, str3, str4, str5, str6, j2);
    }

    private boolean a(float f2, int i2, int i3) {
        return Math.abs((f2 / ((((float) i2) * 1.0f) / ((float) i3))) - 1.0f) <= this.f48000u;
    }

    public boolean a(int i2, float f2, float f3) {
        getGlobalVisibleRect(new Rect());
        if (i2 == 128 || i2 == 132) {
            com.ubix.ssp.ad.e.e eVar = (com.ubix.ssp.ad.e.e) findViewById(910401);
            if (eVar != null) {
                eVar.getGlobalVisibleRect(this.f48004y);
                Rect rect = this.f48004y;
                return eVar.a(f2 - rect.left, (f3 - rect.top) + r0.top);
            }
        } else if ((i2 & 4) == 4) {
            try {
                return new Rect(this.f47991l.get("adLeft").intValue(), this.f47991l.get("adTop").intValue(), this.f47991l.get("adRight").intValue(), this.f47991l.get("adBottom").intValue()).contains((int) f2, (int) f3);
            } catch (Exception unused) {
                return true;
            }
        }
        return false;
    }
}
