package com.ubix.ssp.ad.k;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.C;
import com.sigmob.sdk.base.mta.PointType;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.s;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.i;
import com.ubix.ssp.ad.e.l;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.g.k.j;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class a extends com.ubix.ssp.ad.b implements View.OnClickListener, j {

    /* renamed from: A, reason: collision with root package name */
    private long f48345A;

    /* renamed from: B, reason: collision with root package name */
    private com.ubix.ssp.ad.e.a0.g f48346B;

    /* renamed from: C, reason: collision with root package name */
    private AtomicBoolean f48347C;

    /* renamed from: D, reason: collision with root package name */
    int f48348D;

    /* renamed from: E, reason: collision with root package name */
    boolean f48349E;

    /* renamed from: F, reason: collision with root package name */
    private boolean f48350F;

    /* renamed from: G, reason: collision with root package name */
    private j f48351G;

    /* renamed from: H, reason: collision with root package name */
    private int f48352H;

    /* renamed from: I, reason: collision with root package name */
    private int f48353I;

    /* renamed from: J, reason: collision with root package name */
    private int f48354J;

    /* renamed from: K, reason: collision with root package name */
    private int f48355K;

    /* renamed from: L, reason: collision with root package name */
    private String f48356L;

    /* renamed from: M, reason: collision with root package name */
    boolean f48357M;

    /* renamed from: N, reason: collision with root package name */
    boolean f48358N;

    /* renamed from: O, reason: collision with root package name */
    private boolean f48359O;

    /* renamed from: P, reason: collision with root package name */
    boolean f48360P;

    /* renamed from: Q, reason: collision with root package name */
    private int f48361Q;

    /* renamed from: R, reason: collision with root package name */
    private float f48362R;

    /* renamed from: S, reason: collision with root package name */
    private int f48363S;

    /* renamed from: T, reason: collision with root package name */
    private int f48364T;

    /* renamed from: U, reason: collision with root package name */
    private int f48365U;

    /* renamed from: V, reason: collision with root package name */
    private float f48366V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f48367W;

    /* renamed from: a0, reason: collision with root package name */
    HandlerThread f48368a0;

    /* renamed from: b0, reason: collision with root package name */
    private Handler f48369b0;

    /* renamed from: c0, reason: collision with root package name */
    Bitmap f48370c0;

    /* renamed from: d0, reason: collision with root package name */
    Matrix f48371d0;

    /* renamed from: e0, reason: collision with root package name */
    float f48372e0;

    /* renamed from: f0, reason: collision with root package name */
    float f48373f0;

    /* renamed from: g0, reason: collision with root package name */
    long f48374g0;

    /* renamed from: h0, reason: collision with root package name */
    private final int f48375h0;

    /* renamed from: i0, reason: collision with root package name */
    boolean f48376i0;

    /* renamed from: j0, reason: collision with root package name */
    int f48377j0;

    /* renamed from: k0, reason: collision with root package name */
    float f48378k0;

    /* renamed from: l, reason: collision with root package name */
    private com.ubix.ssp.ad.e.b0.g f48379l;

    /* renamed from: l0, reason: collision with root package name */
    int f48380l0;

    /* renamed from: m, reason: collision with root package name */
    private ImageView f48381m;

    /* renamed from: m0, reason: collision with root package name */
    int f48382m0;

    /* renamed from: n, reason: collision with root package name */
    private TextView f48383n;

    /* renamed from: n0, reason: collision with root package name */
    int f48384n0;

    /* renamed from: o, reason: collision with root package name */
    private TextView f48385o;

    /* renamed from: o0, reason: collision with root package name */
    private long f48386o0;

    /* renamed from: p, reason: collision with root package name */
    private ImageView f48387p;

    /* renamed from: p0, reason: collision with root package name */
    private long f48388p0;

    /* renamed from: q, reason: collision with root package name */
    private TextView f48389q;

    /* renamed from: q0, reason: collision with root package name */
    private int f48390q0;

    /* renamed from: r, reason: collision with root package name */
    private ImageView f48391r;

    /* renamed from: r0, reason: collision with root package name */
    private long f48392r0;

    /* renamed from: s, reason: collision with root package name */
    private boolean f48393s;

    /* renamed from: s0, reason: collision with root package name */
    private boolean f48394s0;

    /* renamed from: t, reason: collision with root package name */
    private boolean f48395t;

    /* renamed from: t0, reason: collision with root package name */
    private boolean f48396t0;

    /* renamed from: u, reason: collision with root package name */
    private boolean f48397u;

    /* renamed from: u0, reason: collision with root package name */
    private boolean f48398u0;

    /* renamed from: v, reason: collision with root package name */
    private boolean f48399v;

    /* renamed from: v0, reason: collision with root package name */
    private boolean f48400v0;

    /* renamed from: w, reason: collision with root package name */
    private boolean f48401w;

    /* renamed from: w0, reason: collision with root package name */
    private int f48402w0;

    /* renamed from: x, reason: collision with root package name */
    private boolean f48403x;

    /* renamed from: x0, reason: collision with root package name */
    private Bundle f48404x0;

    /* renamed from: y, reason: collision with root package name */
    private boolean f48405y;

    /* renamed from: y0, reason: collision with root package name */
    private boolean f48406y0;

    /* renamed from: z, reason: collision with root package name */
    private boolean f48407z;

    /* renamed from: com.ubix.ssp.ad.k.a$a, reason: collision with other inner class name */
    public class RunnableC0849a implements Runnable {
        public RunnableC0849a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f48351G != null) {
                a.this.f48351G.a(1, 1L, 1L);
            }
            if (a.this.f48351G != null) {
                a.this.f48351G.c(0);
            }
        }
    }

    public class b implements g.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f48409a;

        public b(long j2) {
            this.f48409a = j2;
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
            boolean z2;
            int iD;
            long j3;
            if (a.this.f48351G == null || !(a.this.f48351G instanceof com.ubix.ssp.ad.g.k.h)) {
                z2 = false;
                iD = 0;
            } else {
                boolean zA = ((com.ubix.ssp.ad.g.k.h) a.this.f48351G).a();
                a aVar = a.this;
                aVar.f48390q0 = ((com.ubix.ssp.ad.g.k.h) aVar.f48351G).c();
                z2 = zA;
                iD = ((com.ubix.ssp.ad.g.k.h) a.this.f48351G).d();
            }
            long j4 = this.f48409a;
            float f2 = j4;
            int i2 = (int) (((j4 - j2) * 100.0f) / f2);
            long j5 = (long) ((i2 / 100.0f) * f2);
            if (i2 > 99 || j2 < 100) {
                a.this.f48359O = true;
                a.this.x();
                i2 = 100;
                j3 = j4;
            } else {
                j3 = j5;
            }
            int i3 = i2;
            a.this.a(z2, iD, i3, j3, j4);
            if (a.this.f48351G != null) {
                a.this.f48351G.a(i3, j3, j4);
            }
            if (!a.this.f48359O || a.this.f48351G == null) {
                return;
            }
            a.this.f48351G.c(0);
        }
    }

    public class c implements i.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f48411a;

        public c(i iVar) {
            this.f48411a = iVar;
        }

        @Override // com.ubix.ssp.ad.e.i.a
        public void a() {
            if (a.this.f48351G != null) {
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "20");
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_TRIGGER__", "20");
                a.this.f48351G.b(0, this.f48411a, ((com.ubix.ssp.ad.b) a.this).f45638a);
            }
        }
    }

    public class d implements l.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f48413a;

        public d(l lVar) {
            this.f48413a = lVar;
        }

        @Override // com.ubix.ssp.ad.e.l.c
        public void a(HashMap<String, String> map) {
            if (a.this.f48351G != null) {
                ((com.ubix.ssp.ad.b) a.this).f45638a.putAll(map);
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "21");
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_TRIGGER__", "21");
                a.this.f48351G.b(0, this.f48413a, ((com.ubix.ssp.ad.b) a.this).f45638a);
            }
        }

        @Override // com.ubix.ssp.ad.e.l.c
        public void onClose() {
            a.this.removeView(this.f48413a);
        }
    }

    public class e implements g.b {
        public e() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
            float f2 = (400.0f - j2) / 400.0f;
            if (a.this.f48391r != null) {
                a.this.f48391r.setAlpha(f2);
            }
            a aVar = a.this;
            aVar.f48348D = (int) (f2 * 100.0f * 0.9d);
            if (aVar.f48385o != null) {
                a.this.f48385o.requestLayout();
            }
            if (a.this.f48383n != null) {
                a.this.f48383n.requestLayout();
            }
        }
    }

    public class f implements com.ubix.ssp.ad.g.k.a {
        public f() {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, View view) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void e(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void f(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void i(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            String str;
            HashMap map2;
            if (view == null || view.getId() != 500104) {
                str = "";
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "");
                map2 = ((com.ubix.ssp.ad.b) a.this).f45638a;
            } else {
                str = "2";
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "2");
                map2 = ((com.ubix.ssp.ad.b) a.this).f45638a;
            }
            map2.put("__CLICK_TRIGGER__", str);
            if (a.this.f48351G != null) {
                a.this.f48351G.b(i2, view, ((com.ubix.ssp.ad.b) a.this).f45638a);
            }
        }
    }

    public class g implements s.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f48417a;

        public g(View view) {
            this.f48417a = view;
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(float f2, float f3) {
            try {
                if (!a.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(a.this)) {
                    return;
                }
                ((com.ubix.ssp.ad.b) a.this).f45643f.f();
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "3");
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_TRIGGER__", "3");
                if (a.this.f48351G != null) {
                    a.this.f48351G.b(((com.ubix.ssp.ad.b) a.this).f45639b, this.f48417a, ((com.ubix.ssp.ad.b) a.this).f45638a);
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
                if (a.this.f48351G != null) {
                    a.this.f48351G.a(((com.ubix.ssp.ad.b) a.this).f45639b, bundle);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.f48367W) {
                    return;
                }
                a aVar = a.this;
                if (aVar.f48377j0 == -99) {
                    aVar.f48377j0 = 3;
                }
                if (aVar.f48377j0 <= 0) {
                    aVar.f48377j0 = -99;
                    aVar.f48369b0.postDelayed(this, 1500L);
                    a aVar2 = a.this;
                    int i2 = aVar2.f48384n0 - 1;
                    aVar2.f48384n0 = i2;
                    if (i2 < 1) {
                        aVar2.f48367W = true;
                        return;
                    }
                    return;
                }
                if (aVar.findViewById(500100) != null) {
                    a aVar3 = a.this;
                    if (aVar3.f48380l0 * aVar3.f48382m0 <= 0) {
                        aVar3.f48380l0 = (aVar3.findViewById(500100).getRight() / 5) * 4;
                        a aVar4 = a.this;
                        aVar4.f48382m0 = aVar4.findViewById(500100).getBottom() - ((a.this.findViewById(500100).getBottom() - a.this.findViewById(500100).getTop()) / 2);
                    }
                }
                a.this.postInvalidate();
                a.this.f48369b0.postDelayed(this, 16L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public a(Context context) {
        super(context);
        this.f48393s = true;
        this.f48395t = true;
        this.f48397u = true;
        this.f48399v = true;
        this.f48401w = true;
        this.f48403x = false;
        this.f48405y = true;
        this.f48407z = true;
        this.f48345A = -1L;
        this.f48347C = new AtomicBoolean(true);
        this.f48348D = 0;
        this.f48349E = false;
        this.f48350F = false;
        this.f48352H = -1;
        this.f48357M = false;
        this.f48358N = false;
        this.f48359O = false;
        this.f48360P = true;
        this.f48361Q = 0;
        this.f48362R = 0.05f;
        this.f48363S = 5;
        this.f48364T = 5;
        this.f48365U = 0;
        this.f48366V = 0.5625f;
        this.f48367W = false;
        this.f48368a0 = new HandlerThread("ConfirmViewDraw");
        this.f48371d0 = new Matrix();
        this.f48372e0 = 1.5f;
        this.f48373f0 = 50.0f;
        this.f48375h0 = 16;
        this.f48376i0 = false;
        this.f48377j0 = 3;
        this.f48378k0 = 0.2f;
        this.f48384n0 = 3;
        this.f48386o0 = -1L;
        this.f48390q0 = 0;
        this.f48392r0 = 0L;
        this.f48394s0 = false;
        this.f48396t0 = false;
        this.f48398u0 = false;
        this.f48400v0 = false;
        this.f48402w0 = 0;
        this.f48404x0 = null;
        this.f48406y0 = false;
    }

    private Rect d(int i2, int i3) {
        Rect rect = new Rect();
        if (i2 * i3 > 0) {
            int i4 = (int) (this.f48364T * i3 * 0.01f);
            int i5 = (int) (this.f48363S * i2 * 0.01f);
            rect.left = i5;
            rect.top = i4;
            rect.right = i2 - i5;
            rect.bottom = i3 - i4;
        }
        return rect;
    }

    private void setTimer(long j2) {
        boolean zA;
        int iD;
        if (j2 != 0) {
            if (this.f48346B != null) {
                return;
            }
            com.ubix.ssp.ad.e.a0.g gVar = new com.ubix.ssp.ad.e.a0.g(j2);
            this.f48346B = gVar;
            gVar.a(new b(j2));
            this.f48346B.e();
            return;
        }
        this.f48359O = true;
        j jVar = this.f48351G;
        if (jVar == null || !(jVar instanceof com.ubix.ssp.ad.g.k.h)) {
            zA = false;
            iD = 0;
        } else {
            zA = ((com.ubix.ssp.ad.g.k.h) jVar).a();
            iD = ((com.ubix.ssp.ad.g.k.h) this.f48351G).d();
        }
        a(zA, iD, 1, 1L, 1L);
        postDelayed(new RunnableC0849a(), 200L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float f2;
        super.dispatchDraw(canvas);
        try {
            if (this.f48370c0 == null) {
                return;
            }
            Matrix matrix = this.f48371d0;
            float f3 = this.f48372e0 + this.f48378k0;
            matrix.setScale(f3, f3);
            if (this.f48376i0) {
                this.f48378k0 += 0.02f;
                float f4 = this.f48373f0;
                if (f4 >= 50.0f) {
                    this.f48373f0 = 50.0f;
                    this.f48376i0 = false;
                    this.f48377j0--;
                } else {
                    f2 = f4 >= 40.0f ? f4 + 2.0f : f4 >= 30.0f ? f4 + 2.5f : f4 + 3.0f;
                    this.f48373f0 = f2;
                }
            } else {
                this.f48378k0 -= 0.02f;
                float f5 = this.f48373f0;
                if (f5 <= 0.0f) {
                    this.f48373f0 = 0.0f;
                    this.f48376i0 = true;
                } else {
                    f2 = f5 <= 10.0f ? f5 - 2.0f : f5 <= 20.0f ? f5 - 2.5f : f5 - 3.0f;
                    this.f48373f0 = f2;
                }
            }
            Matrix matrix2 = this.f48371d0;
            float f6 = this.f48380l0;
            float f7 = this.f48373f0;
            matrix2.postTranslate(f6 + f7, this.f48382m0 + f7);
            if (this.f48377j0 > 0) {
                canvas.drawBitmap(this.f48370c0, this.f48371d0, null);
            } else {
                canvas.drawColor(0);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!a(this.f48353I, motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        a(motionEvent);
        try {
            float fRound = Math.round(this.f45648k * 100.0f) / 100.0f;
            this.f45638a.put("__TRI_VAL__", Base64.encodeToString((fRound + "").getBytes(), 10));
        } catch (Exception unused) {
        }
        this.f45638a.put("__INSIDE_AREA__", "true");
        this.f45638a.put("__CLICK_AREA__", "11");
        this.f45638a.put("__CLICK_TRIGGER__", "11");
        j jVar = this.f48351G;
        if (jVar == null) {
            return true;
        }
        jVar.b(this.f45639b, this, this.f45638a);
        return true;
    }

    public int getAppInfoTop() {
        View viewFindViewById = findViewById(920101);
        if (viewFindViewById != null && viewFindViewById.getVisibility() != 8) {
            return viewFindViewById.getTop();
        }
        View viewFindViewById2 = findViewById(500100);
        return (viewFindViewById2 == null || viewFindViewById2.getVisibility() == 8) ? getBottom() - r.a(80.0f) : viewFindViewById2.getTop();
    }

    @Override // com.ubix.ssp.ad.b
    public com.ubix.ssp.ad.g.k.b getInterface() {
        return this.f48351G;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 500002:
                if (this.f48379l != null) {
                    setMute(!r5.f46666t);
                    break;
                }
                break;
            case 500004:
                j jVar = this.f48351G;
                if (jVar != null) {
                    jVar.e(0);
                    break;
                }
                break;
            case 500005:
                if (this.f48351G != null) {
                    this.f45638a.put("__CLICK_TRIGGER__", PointType.SIGMOB_REPORT_TRACKING);
                    this.f45638a.put("__CLICK_AREA__", PointType.SIGMOB_REPORT_TRACKING);
                    this.f48351G.b(this.f45639b, view, this.f45638a);
                    break;
                }
                break;
            case 910100:
            case 910601:
                if (this.f48351G != null) {
                    this.f45638a.put("__CLICK_TRIGGER__", "2");
                    this.f45638a.put("__CLICK_AREA__", "2");
                    this.f48351G.b(this.f45639b, view, this.f45638a);
                    break;
                }
                break;
            case 920301:
                j jVar2 = this.f48351G;
                if (jVar2 != null) {
                    jVar2.a(this.f45639b);
                    break;
                }
                break;
            default:
                this.f45638a.put("__CLICK_TRIGGER__", "");
                j jVar3 = this.f48351G;
                if (jVar3 != null) {
                    jVar3.b(this.f45639b, view, this.f45638a);
                    break;
                }
                break;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.e(0);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        int iA;
        int iA2;
        int iA3;
        int iA4;
        int i6;
        int measuredHeight;
        int iA5;
        int iA6;
        int measuredWidth;
        int iA7;
        a aVar = this;
        int i7 = i2;
        int i8 = aVar.f48352H;
        boolean z4 = i8 == 1 || i8 == 3;
        aVar.f45638a.put("__WIDTH__", aVar.getWidth() + "");
        aVar.f45638a.put("__HEIGHT__", aVar.getHeight() + "");
        aVar.f45638a.put("__IMP_AREA__", aVar.getLeft() + "_" + aVar.getTop() + "_" + aVar.getRight() + "_" + aVar.getBottom());
        HashMap<String, String> map = aVar.f45638a;
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.getLeft());
        sb.append("");
        map.put("adLeft", sb.toString());
        aVar.f45638a.put("adRight", aVar.getRight() + "");
        aVar.f45638a.put("adTop", aVar.getTop() + "");
        aVar.f45638a.put("adBottom", aVar.getBottom() + "");
        int iH = r.a().h(aVar.getContext());
        int i9 = 0;
        int top = 0;
        while (i9 < aVar.getChildCount()) {
            View childAt = aVar.getChildAt(i9);
            int id = childAt.getId();
            if (id == 500201) {
                z3 = z4;
                childAt.layout((iH - childAt.getMeasuredWidth()) / 2, 0, (childAt.getMeasuredWidth() + iH) / 2, childAt.getMeasuredHeight());
            } else if (id != 500202) {
                float f2 = 30.0f;
                switch (id) {
                    case 500001:
                        z3 = z4;
                        childAt.layout(i7, i3, i4, i5);
                        break;
                    case 500002:
                        z3 = z4;
                        if (!aVar.f48396t0) {
                            iA = r.a(10.0f);
                            iA2 = r.a(51.0f);
                            iA3 = r.a(38.0f);
                            iA4 = r.a(79.0f);
                            childAt.layout(iA, iA2, iA3, iA4);
                            break;
                        } else {
                            childAt.layout(r.a(10.0f) + r.b(26.0f), r.a(51.0f), r.a(38.0f) + r.b(26.0f), r.a(79.0f));
                            break;
                        }
                    case 500003:
                        z3 = z4;
                        iA = r.a(16.0f);
                        iA2 = aVar.getAppInfoTop() - r.a(12.0f);
                        iA3 = r.a(46.0f);
                        iA4 = aVar.getAppInfoTop();
                        childAt.layout(iA, iA2, iA3, iA4);
                        break;
                    case 500004:
                        z3 = z4;
                        iA = i4 - r.a(30.0f);
                        iA2 = r.a(55.0f);
                        iA3 = i4 - r.a(10.0f);
                        iA4 = r.a(75.0f);
                        childAt.layout(iA, iA2, iA3, iA4);
                        break;
                    case 500005:
                        z3 = z4;
                        int iA8 = i4 - (r.a(40.0f) * 2);
                        if (childAt.getMeasuredWidth() < iA8) {
                            iA8 = childAt.getMeasuredWidth();
                        }
                        childAt.layout(((i4 - r.a(10.0f)) - iA8) - aVar.f48348D, r.a(51.0f), (i4 - r.a(10.0f)) - aVar.f48348D, r.a(79.0f));
                        break;
                    case 500006:
                        z3 = z4;
                        View viewFindViewById = aVar.findViewById(500003);
                        childAt.layout(viewFindViewById.getRight(), viewFindViewById.getTop() + ((viewFindViewById.getHeight() - childAt.getMeasuredHeight()) / 2), viewFindViewById.getRight() + childAt.getMeasuredWidth(), viewFindViewById.getTop() + ((viewFindViewById.getHeight() + childAt.getMeasuredHeight()) / 2));
                        break;
                    default:
                        switch (id) {
                            case 500100:
                                z3 = z4;
                                childAt.layout(0, i5 - r.a(100.0f), i4, i5);
                                break;
                            case 900102:
                                z3 = z4;
                                try {
                                    if (aVar.f48361Q == 1) {
                                        int i10 = i4 - i7;
                                        int i11 = i5 - i3;
                                        if (!aVar.e(i10, i11)) {
                                            ((com.ubix.ssp.ad.e.t.a.e) childAt).setScaleType(ImageView.ScaleType.FIT_CENTER);
                                            Rect rectD = aVar.d(i10, i11);
                                            if (rectD.width() > 0 && rectD.height() > 0 && childAt.findViewById(900102) != null) {
                                                childAt.findViewById(900102).layout(rectD.left, rectD.top, rectD.right, rectD.bottom);
                                            }
                                        }
                                    } else {
                                        childAt.layout(i7, i3, i4, i5);
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    i9++;
                                    aVar = this;
                                    i7 = i2;
                                    z4 = z3;
                                }
                                break;
                            case 910100:
                                z3 = z4;
                                View viewFindViewById2 = aVar.findViewById(910301);
                                if (viewFindViewById2 != null) {
                                    top = viewFindViewById2.getTop();
                                }
                                int i12 = i4 - i7;
                                int measuredHeight2 = (i12 - childAt.getMeasuredHeight()) / 2;
                                int measuredHeight3 = top - childAt.getMeasuredHeight();
                                int iA9 = r.a(5.0f);
                                if (z3) {
                                    i6 = measuredHeight3 + iA9;
                                    measuredHeight = (i12 + childAt.getMeasuredHeight()) / 2;
                                    iA5 = r.a(5.0f) + top;
                                } else {
                                    i6 = measuredHeight3 - iA9;
                                    measuredHeight = (i12 + childAt.getMeasuredHeight()) / 2;
                                    iA5 = top - r.a(5.0f);
                                }
                                childAt.layout(measuredHeight2, i6, measuredHeight, iA5);
                                break;
                            case 910301:
                                try {
                                    double dA = r.a().a(aVar.getContext());
                                    double d2 = i4 - i7;
                                    double d3 = 0.8d * d2;
                                    int iMin = Math.min((int) (d3 * 0.212d), (int) (r.a().c(aVar.getContext()) * (z4 ? 0.13d : 0.15d)));
                                    int i13 = (int) ((25.0d * dA) / 2.0d);
                                    View viewFindViewById3 = aVar.findViewById(500100);
                                    int top2 = viewFindViewById3 != null ? viewFindViewById3.getTop() : 0;
                                    z3 = z4;
                                    double d4 = i13;
                                    int i14 = (int) ((0.1d * d2) - d4);
                                    try {
                                        int iA10 = ((top2 - iMin) - r.a(z3 ? 30.0f : 65.0f)) - i13;
                                        int i15 = (int) ((d2 * 0.9d) + d4);
                                        if (!z3) {
                                            f2 = 65.0f;
                                        }
                                        childAt.layout(i14, iA10, i15, (top2 - r.a(f2)) + i13);
                                        int i16 = i13 * 2;
                                        ((com.ubix.ssp.ad.e.c) childAt).a((int) (d3 + i16), iMin + i16);
                                    } catch (Exception e3) {
                                        e = e3;
                                        e.printStackTrace();
                                        i9++;
                                        aVar = this;
                                        i7 = i2;
                                        z4 = z3;
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    z3 = z4;
                                }
                            case 910601:
                                View viewFindViewById4 = aVar.findViewById(910301);
                                if (viewFindViewById4 != null) {
                                    top = viewFindViewById4.getTop();
                                }
                                int i17 = i4 - i7;
                                int measuredWidth2 = (i17 - childAt.getMeasuredWidth()) / 2;
                                int measuredHeight4 = top - childAt.getMeasuredHeight();
                                if (z4) {
                                    iA6 = measuredHeight4 + r.a(15.0f);
                                    measuredWidth = (i17 + childAt.getMeasuredWidth()) / 2;
                                    iA7 = r.a(15.0f) + top;
                                } else {
                                    iA6 = measuredHeight4 - r.a(5.0f);
                                    measuredWidth = (i17 + childAt.getMeasuredWidth()) / 2;
                                    iA7 = top - r.a(5.0f);
                                }
                                childAt.layout(measuredWidth2, iA6, measuredWidth, iA7);
                                z3 = z4;
                                break;
                            case 920101:
                                childAt.layout(r.a(16.0f), (aVar.findViewById(500100).getTop() - childAt.getMeasuredHeight()) - r.a(3.0f), i4 - r.a(16.0f), aVar.findViewById(500100).getTop() - r.a(3.0f));
                                childAt.getLayoutParams().width = (i4 - i7) - r.a(32.0f);
                                z3 = z4;
                                break;
                            case 920301:
                                childAt.layout(r.a(10.0f), r.a(51.0f), r.a(10.0f) + r.b(24.0f), r.a(51.0f) + r.b(13.0f));
                                z3 = z4;
                                break;
                            default:
                                z3 = z4;
                                break;
                        }
                        break;
                }
            } else {
                z3 = z4;
                View viewFindViewById5 = aVar.findViewById(500006);
                double d5 = iH * 0.98d;
                childAt.layout((int) d5, (viewFindViewById5.getTop() - childAt.getMeasuredHeight()) - r.a(38.0f), (int) (d5 + childAt.getMeasuredWidth()), viewFindViewById5.getTop() - r.a(38.0f));
            }
            i9++;
            aVar = this;
            i7 = i2;
            z4 = z3;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        try {
            this.f48352H = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onWindowFocusChanged(boolean r11) {
        /*
            r10 = this;
            super.onWindowFocusChanged(r11)
            com.ubix.ssp.ad.g.k.j r0 = r10.f48351G     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L3a
            boolean r1 = r0 instanceof com.ubix.ssp.ad.g.k.h     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L3a
            com.ubix.ssp.ad.g.k.h r0 = (com.ubix.ssp.ad.g.k.h) r0     // Catch: java.lang.Throwable -> L37
            boolean r0 = r0.a()     // Catch: java.lang.Throwable -> L37
            com.ubix.ssp.ad.g.k.j r1 = r10.f48351G     // Catch: java.lang.Throwable -> L37
            com.ubix.ssp.ad.g.k.h r1 = (com.ubix.ssp.ad.g.k.h) r1     // Catch: java.lang.Throwable -> L37
            int r1 = r1.c()     // Catch: java.lang.Throwable -> L37
            r10.f48390q0 = r1     // Catch: java.lang.Throwable -> L37
            com.ubix.ssp.ad.g.k.j r1 = r10.f48351G     // Catch: java.lang.Throwable -> L37
            com.ubix.ssp.ad.g.k.h r1 = (com.ubix.ssp.ad.g.k.h) r1     // Catch: java.lang.Throwable -> L37
            int r4 = r1.d()     // Catch: java.lang.Throwable -> L37
            boolean r1 = r10.f48359O     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L3a
            if (r0 == 0) goto L3a
            long r6 = r10.f48345A     // Catch: java.lang.Throwable -> L37
            r3 = 1
            r5 = 100
            r8 = r6
            r2 = r10
            r2.a(r3, r4, r5, r6, r8)     // Catch: java.lang.Throwable -> L34
            goto L3b
        L34:
            r0 = move-exception
        L35:
            r11 = r0
            goto L64
        L37:
            r0 = move-exception
            r2 = r10
            goto L35
        L3a:
            r2 = r10
        L3b:
            if (r11 == 0) goto L45
            com.ubix.ssp.ad.e.a0.g r0 = r2.f48346B     // Catch: java.lang.Throwable -> L34
            if (r0 == 0) goto L4c
            r0.d()     // Catch: java.lang.Throwable -> L34
            goto L4c
        L45:
            com.ubix.ssp.ad.e.a0.g r0 = r2.f48346B     // Catch: java.lang.Throwable -> L34
            if (r0 == 0) goto L4c
            r0.c()     // Catch: java.lang.Throwable -> L34
        L4c:
            if (r11 == 0) goto L5c
            int r11 = com.ubix.ssp.ad.d.b.f45786E     // Catch: java.lang.Throwable -> L34
            r0 = 1
            if (r11 != r0) goto L57
            boolean r11 = r2.f45641d     // Catch: java.lang.Throwable -> L34
            if (r11 != 0) goto L63
        L57:
            r11 = 0
            r10.setShakeSensor(r11)     // Catch: java.lang.Throwable -> L34
            return
        L5c:
            com.ubix.ssp.ad.e.a0.s r11 = r2.f45643f     // Catch: java.lang.Throwable -> L34
            if (r11 == 0) goto L63
            r11.f()     // Catch: java.lang.Throwable -> L34
        L63:
            return
        L64:
            r11.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.k.a.onWindowFocusChanged(boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
    @Override // com.ubix.ssp.ad.b, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onWindowVisibilityChanged(int r10) {
        /*
            r9 = this;
            super.onWindowVisibilityChanged(r10)
            com.ubix.ssp.ad.g.k.j r0 = r9.f48351G     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L3e
            boolean r1 = r0 instanceof com.ubix.ssp.ad.g.k.h     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L3e
            com.ubix.ssp.ad.g.k.h r0 = (com.ubix.ssp.ad.g.k.h) r0     // Catch: java.lang.Throwable -> L3b
            boolean r2 = r0.a()     // Catch: java.lang.Throwable -> L3b
            com.ubix.ssp.ad.g.k.j r0 = r9.f48351G     // Catch: java.lang.Throwable -> L3b
            com.ubix.ssp.ad.g.k.h r0 = (com.ubix.ssp.ad.g.k.h) r0     // Catch: java.lang.Throwable -> L3b
            int r0 = r0.c()     // Catch: java.lang.Throwable -> L3b
            r9.f48390q0 = r0     // Catch: java.lang.Throwable -> L3b
            com.ubix.ssp.ad.g.k.j r0 = r9.f48351G     // Catch: java.lang.Throwable -> L3b
            com.ubix.ssp.ad.g.k.h r0 = (com.ubix.ssp.ad.g.k.h) r0     // Catch: java.lang.Throwable -> L3b
            int r3 = r0.d()     // Catch: java.lang.Throwable -> L3b
            boolean r0 = r9.f48359O     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L29
            if (r2 != 0) goto L2e
        L29:
            int r0 = r9.f48355K     // Catch: java.lang.Throwable -> L3b
            r1 = 5
            if (r0 != r1) goto L3e
        L2e:
            long r5 = r9.f48345A     // Catch: java.lang.Throwable -> L3b
            r4 = 100
            r7 = r5
            r1 = r9
            r1.a(r2, r3, r4, r5, r7)     // Catch: java.lang.Throwable -> L38
            goto L3f
        L38:
            r0 = move-exception
        L39:
            r10 = r0
            goto L81
        L3b:
            r0 = move-exception
            r1 = r9
            goto L39
        L3e:
            r1 = r9
        L3f:
            boolean r0 = r1.f48360P     // Catch: java.lang.Throwable -> L38
            r2 = 0
            if (r0 != 0) goto L5e
            java.util.concurrent.atomic.AtomicBoolean r0 = r1.f48347C     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.get()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L5e
            boolean r0 = r9.isShown()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L5e
            java.util.concurrent.atomic.AtomicBoolean r0 = r1.f48347C     // Catch: java.lang.Throwable -> L38
            r0.set(r2)     // Catch: java.lang.Throwable -> L38
            com.ubix.ssp.ad.g.k.j r0 = r1.f48351G     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L5e
            r0.a(r2, r9)     // Catch: java.lang.Throwable -> L38
        L5e:
            if (r10 != 0) goto L6e
            int r0 = com.ubix.ssp.ad.d.b.f45786E     // Catch: java.lang.Throwable -> L38
            r3 = 1
            if (r0 != r3) goto L69
            boolean r0 = r1.f45641d     // Catch: java.lang.Throwable -> L38
            if (r0 != 0) goto L75
        L69:
            r0 = 0
            r9.setShakeSensor(r0)     // Catch: java.lang.Throwable -> L38
            goto L75
        L6e:
            com.ubix.ssp.ad.e.a0.s r0 = r1.f45643f     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L75
            r0.f()     // Catch: java.lang.Throwable -> L38
        L75:
            boolean r0 = r1.f48360P     // Catch: java.lang.Throwable -> L38
            if (r0 != 0) goto L80
            com.ubix.ssp.ad.g.k.j r0 = r1.f48351G     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L80
            r0.b(r2, r10)     // Catch: java.lang.Throwable -> L38
        L80:
            return
        L81:
            r10.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.k.a.onWindowVisibilityChanged(int):void");
    }

    @Override // com.ubix.ssp.ad.b
    public ViewGroup r() {
        return this;
    }

    @Override // com.ubix.ssp.ad.b
    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f48351G = bVar instanceof com.ubix.ssp.ad.g.k.h ? (com.ubix.ssp.ad.g.k.h) bVar : (j) bVar;
    }

    public void setIsDownloadAd(boolean z2) {
        this.f48403x = z2;
    }

    public void setMute(boolean z2) {
        this.f48379l.setMute(z2);
        if (findViewById(500002) != null) {
            ((ImageView) findViewById(500002)).setImageDrawable(q.a(z2 ? "ubix/ic_volume_off.webp" : "ubix/ic_volume_on.webp"));
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void setShakeSensor(View view) {
        super.setShakeSensor(view);
        if (this.f45643f == null || !isShown()) {
            return;
        }
        this.f45643f.a(new g(view));
    }

    public void setShowAdLogo(boolean z2) {
        this.f48397u = z2;
        if (findViewById(500003) != null) {
            findViewById(500003).setVisibility(z2 ? 0 : 8);
        }
    }

    public void setShowBanner(boolean z2) {
        this.f48401w = z2;
        if (findViewById(500100) != null) {
            findViewById(500100).setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void setShowCloseBtnDelay(int i2) {
        super.setShowCloseBtnDelay(i2);
        b(false);
    }

    public void setShowCountDown(boolean z2) {
        this.f48395t = z2;
        if (findViewById(500005) != null) {
            findViewById(500005).setVisibility(z2 ? 0 : 8);
        }
    }

    public void setShowVolumeSwitch(boolean z2) {
        this.f48393s = z2;
        if (findViewById(500002) != null) {
            findViewById(500002).setVisibility(z2 ? 0 : 8);
        }
    }

    public void setVideoDisplayType(int i2) {
        com.ubix.ssp.ad.e.b0.g gVar = this.f48379l;
        if (gVar != null) {
            gVar.setVideoImageDisplayType(i2);
        }
    }

    public void w() {
        try {
            com.ubix.ssp.ad.e.b0.g gVar = this.f48379l;
            if (gVar != null) {
                gVar.i();
                this.f48379l.p();
            }
        } catch (Exception unused) {
        }
    }

    public a(Context context, Bundle bundle) {
        super(context);
        this.f48393s = true;
        this.f48395t = true;
        this.f48397u = true;
        this.f48399v = true;
        this.f48401w = true;
        this.f48403x = false;
        this.f48405y = true;
        this.f48407z = true;
        this.f48345A = -1L;
        this.f48347C = new AtomicBoolean(true);
        this.f48348D = 0;
        this.f48349E = false;
        this.f48350F = false;
        this.f48352H = -1;
        this.f48357M = false;
        this.f48358N = false;
        this.f48359O = false;
        this.f48360P = true;
        this.f48361Q = 0;
        this.f48362R = 0.05f;
        this.f48363S = 5;
        this.f48364T = 5;
        this.f48365U = 0;
        this.f48366V = 0.5625f;
        this.f48367W = false;
        this.f48368a0 = new HandlerThread("ConfirmViewDraw");
        this.f48371d0 = new Matrix();
        this.f48372e0 = 1.5f;
        this.f48373f0 = 50.0f;
        this.f48375h0 = 16;
        this.f48376i0 = false;
        this.f48377j0 = 3;
        this.f48378k0 = 0.2f;
        this.f48384n0 = 3;
        this.f48386o0 = -1L;
        this.f48390q0 = 0;
        this.f48392r0 = 0L;
        this.f48394s0 = false;
        this.f48396t0 = false;
        this.f48398u0 = false;
        this.f48400v0 = false;
        this.f48402w0 = 0;
        this.f48404x0 = null;
        this.f48406y0 = false;
        a(context, bundle);
    }

    private void s() {
        if (this.f48401w) {
            Bundle bundle = new Bundle();
            bundle.putInt("AD_WIDTH", (int) (r.a().h(getContext()) / r.a().a(getContext())));
            bundle.putInt("AD_HEIGHT", 100);
            bundle.putInt("TEMPLATE_ID", 99001);
            com.ubix.ssp.ad.b bVarA = com.ubix.ssp.ad.b.a(getContext(), bundle, 4, false);
            bVarA.setId(500100);
            addView(bVarA);
            bVarA.setInnerListener(new f());
        }
        TextView textView = new TextView(getContext());
        this.f48383n = textView;
        textView.setMaxLines(1);
        this.f48383n.setMaxWidth(r.a().h(getContext()) - (r.a(40.0f) * 2));
        this.f48383n.setEllipsize(TextUtils.TruncateAt.END);
        this.f48383n.setId(500005);
        this.f48383n.setTextColor(-1);
        this.f48383n.setGravity(17);
        this.f48383n.setVisibility(4);
        this.f48383n.setPadding(r.a(7.0f), 0, r.a(7.0f), 0);
        if (this.f48407z) {
            Drawable drawableA = q.a("ubix/ic_reward_gift.webp");
            drawableA.setBounds(-r.a(2.0f), 0, r.a(16.0f) - r.a(2.0f), r.a(16.0f));
            this.f48383n.setCompoundDrawables(drawableA, null, null, null);
        }
        addView(this.f48383n, new RelativeLayout.LayoutParams(-2, r.a(28.0f)));
        if (this.f48405y) {
            this.f48383n.setOnClickListener(this);
        }
        if (this.f48393s) {
            ImageView imageView = new ImageView(getContext());
            this.f48381m = imageView;
            imageView.setId(500002);
            addView(this.f48381m);
            this.f48381m.setOnClickListener(this);
            this.f48381m.setVisibility(8);
        }
        if (this.f48403x) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(14);
            layoutParams.setMargins(r.a(16.0f), 0, r.a(16.0f), r.b(2.0f));
            addView(com.ubix.ssp.ad.e.f.a(getContext()), layoutParams);
        }
        if (this.f48397u) {
            ImageView imageView2 = new ImageView(getContext());
            this.f48387p = imageView2;
            imageView2.setId(500003);
            this.f48387p.setImageDrawable(q.a("ubix/ic_logo.png", this.f48398u0));
            addView(this.f48387p);
        }
        if (this.f48399v) {
            TextView textView2 = new TextView(getContext());
            this.f48389q = textView2;
            textView2.setId(500006);
            this.f48389q.setTextColor(-1);
            this.f48389q.setTextSize(6.0f);
            addView(this.f48389q);
        }
        ImageView imageView3 = new ImageView(getContext());
        this.f48391r = imageView3;
        imageView3.setId(500004);
        this.f48391r.setImageDrawable(q.a("ubix/ic_close_shade.webp"));
        this.f48391r.setAlpha(0.0f);
        this.f48391r.setVisibility(4);
        addView(this.f48391r);
        if (this.f48396t0) {
            View viewH = h();
            addView(viewH);
            viewH.setOnClickListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        try {
            this.f48367W = true;
            this.f48377j0 = 0;
            HandlerThread handlerThread = this.f48368a0;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                this.f48368a0 = null;
            }
            this.f48369b0 = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void b(int i2) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.b(i2);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void c(int i2) {
        this.f48359O = true;
        a(100, this.f48379l.getDuration(), this.f48379l.getDuration());
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.c(i2);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void e(int i2) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.e(i2);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void f(int i2) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.f(i2);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void g(int i2) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.g(i2);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void h(int i2) {
        com.ubix.ssp.ad.e.b0.g gVar;
        if (findViewById(900102) != null && (gVar = this.f48379l) != null && gVar.f46651e) {
            findViewById(900102).setVisibility(8);
        }
        if (this.f48349E) {
            return;
        }
        this.f48349E = true;
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.h(i2);
        }
        this.f48383n.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), C.ENCODING_PCM_32BIT, 72));
        if (this.f48393s) {
            this.f48381m.setVisibility(0);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void i(int i2) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.i(i2);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void j() {
        super.j();
        try {
            try {
                com.ubix.ssp.ad.e.a0.g gVar = this.f48346B;
                if (gVar != null) {
                    gVar.c();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            x();
            this.f48379l.p();
            s sVar = this.f45643f;
            if (sVar != null) {
                sVar.a();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public boolean n() {
        return (this.f48353I & 32) == 32;
    }

    public boolean t() {
        return this.f48379l.f46666t;
    }

    public void u() {
        this.f48379l.i();
    }

    public void v() {
        this.f48379l.j();
    }

    public void y() {
        HandlerThread handlerThread = this.f48368a0;
        if (handlerThread == null || handlerThread.isAlive()) {
            return;
        }
        this.f48370c0 = q.a(getContext(), "ubix/ic_slide_hand.webp");
        this.f48374g0 = System.currentTimeMillis();
        h hVar = new h();
        this.f48368a0.start();
        Handler handler = new Handler(this.f48368a0.getLooper());
        this.f48369b0 = handler;
        handler.postDelayed(hVar, 16L);
        setWillNotDraw(false);
        View viewFindViewById = findViewById(500104);
        View viewFindViewById2 = findViewById(500100);
        if (viewFindViewById2 == null || viewFindViewById == null) {
            return;
        }
        this.f48380l0 = viewFindViewById.getLeft() + (viewFindViewById.getWidth() / 2);
        this.f48382m0 = viewFindViewById2.getBottom() - (viewFindViewById2.getHeight() / 2);
    }

    private boolean e(int i2, int i3) {
        return Math.abs((this.f48366V / ((((float) i2) * 1.0f) / ((float) i3))) - 1.0f) <= this.f48362R;
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2) {
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void b(int i2, int i3) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.b(i2, i3);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void j(int i2) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.j(i2);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void a(int i2, int i3) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.a(i2, i3);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void b(int i2, View view, HashMap<String, String> map) {
        map.put("__CLICK_TRIGGER__", "");
        this.f45638a.putAll(map);
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.b(i2, this, this.f45638a);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(int i2, int i3, int i4, double d2, int i5, int[] iArr, int i6, String str, String str2, int i7, double d3, boolean z2, boolean z3) {
        View viewFindViewById;
        this.f48353I = i2;
        try {
            if (getContext() instanceof Activity) {
                this.f48352H = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getRotation();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        int i8 = this.f48352H;
        boolean z4 = i8 == 1 || i8 == 3;
        if (i2 != 2) {
            if (i2 == 3) {
                a(i2, TextUtils.isEmpty(str) ? "摇动或点击图标" : str, str2, true);
                a(false, 0, i4, 0, z4, false, d2, iArr, i6, i7, d3, z2, z3);
                viewFindViewById = findViewById(910100);
                if (viewFindViewById == null) {
                    return;
                }
            } else if (i2 == 32) {
                a(i2, false, d2, i5);
                a(i2, str, str2, true);
                return;
            } else {
                if (i2 != 33) {
                    return;
                }
                a(i2, false, d2, i5);
                a(i2, TextUtils.isEmpty(str) ? "滑动或点击图标" : str, str2, true);
                viewFindViewById = findViewById(910601);
                if (viewFindViewById == null) {
                    return;
                }
            }
            viewFindViewById.setOnClickListener(this);
            return;
        }
        a(i2, str, str2, true);
        a(false, 0, i4, 0, z4, false, d2, iArr, i6, i7, d3, z2, z3);
    }

    public void b(String str, String str2) {
        String str3 = k.f(getContext()).getPath() + ServiceReference.DELIMITER + str.hashCode();
        File fileA = com.ubix.ssp.ad.e.v.e.c().a(str);
        if (fileA != null && fileA.exists()) {
            str = str3;
        }
        this.f48379l.a(str, (String) null);
        this.f48379l.setVideoViewListener(this);
        this.f48379l.setVideoImageDisplayType(4);
        if (str2 == null || findViewById(900102) == null) {
            return;
        }
        try {
            com.ubix.ssp.ad.e.v.e.b().a(str2, (ImageView) findViewById(900102), 10, null);
        } catch (Exception unused) {
        }
    }

    private void b(boolean z2) {
        if (this.f48350F) {
            return;
        }
        this.f48350F = true;
        a(z2);
        this.f48391r.setOnClickListener(this);
    }

    @Override // com.ubix.ssp.ad.g.k.j
    public void a(int i2, long j2, long j3) {
        boolean z2;
        int iD;
        a aVar;
        int i3;
        long j4;
        long j5;
        j jVar = this.f48351G;
        if (jVar == null || !(jVar instanceof com.ubix.ssp.ad.g.k.h)) {
            z2 = false;
            iD = 0;
            aVar = this;
            i3 = i2;
            j4 = j2;
            j5 = j3;
        } else {
            boolean zA = ((com.ubix.ssp.ad.g.k.h) jVar).a();
            this.f48390q0 = ((com.ubix.ssp.ad.g.k.h) this.f48351G).c();
            z2 = zA;
            iD = ((com.ubix.ssp.ad.g.k.h) this.f48351G).d();
            i3 = i2;
            j4 = j2;
            j5 = j3;
            aVar = this;
        }
        aVar.a(z2, iD, i3, j4, j5);
        int i4 = i3;
        long j6 = j4;
        long j7 = j5;
        j jVar2 = aVar.f48351G;
        if (jVar2 != null) {
            jVar2.a(i4, j6, j7);
        }
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2, Bundle bundle) {
    }

    @Override // com.ubix.ssp.ad.b
    public boolean b(Bundle bundle) {
        TextView textView;
        this.f48404x0 = bundle;
        setMute(!bundle.getBoolean("AUTO_MUTE"));
        this.f48360P = bundle.getBoolean("IS_VIDEO");
        this.f48361Q = bundle.getInt("RENDER_MODE", 0);
        this.f48402w0 = bundle.getInt("VIDEO_ECTR", 0);
        this.f48362R = bundle.getFloat("SCALE_IGNORE_PERCENT", 0.05f);
        int i2 = bundle.getInt("SCALE_HORIZONTAL_MARGIN", 5);
        this.f48363S = i2;
        if (i2 >= 50) {
            this.f48363S = 5;
        }
        int i3 = bundle.getInt("SCALE_VERTICAL_MARGIN", 5);
        this.f48364T = i3;
        if (i3 >= 50) {
            this.f48364T = 5;
        }
        if (this.f48360P) {
            b(bundle.getString("VIDEO_URL"), bundle.getStringArray("IMAGE_URL")[0]);
        } else {
            this.f48379l.setVisibility(4);
            b(bundle.getStringArray("IMAGE_URL")[0]);
            a(bundle.getStringArray("IMAGE_URL")[0]);
            this.f48383n.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), C.ENCODING_PCM_32BIT, 72));
            setTimer(Math.max(5000L, this.f48388p0));
            findViewById(900102).setOnClickListener(this);
        }
        if (this.f48401w) {
            ((com.ubix.ssp.ad.b) findViewById(500100)).b(bundle);
        }
        setIsDownloadAd(this.f48403x);
        String string = bundle.getString("AD_SOURCE");
        if (!TextUtils.isEmpty(string) && (textView = (TextView) findViewById(500006)) != null) {
            textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
            textView.setText(string);
        }
        return true;
    }

    @Override // com.ubix.ssp.ad.g.k.b
    public void a(int i2, View view) {
        j jVar = this.f48351G;
        if (jVar != null) {
            jVar.a(i2, view);
        }
    }

    private boolean b(String str) {
        try {
            int i2 = this.f48361Q;
            if (i2 == 1) {
                Bitmap bitmapB = com.ubix.ssp.ad.e.a0.c.b(str);
                if (bitmapB != null) {
                    if (bitmapB.getHeight() != 0) {
                        this.f48366V = (bitmapB.getWidth() * 1.0f) / bitmapB.getHeight();
                    }
                    setBackground(new BitmapDrawable(bitmapB));
                }
            } else if (i2 == 2) {
                ((com.ubix.ssp.ad.e.t.a.e) findViewById(900102)).setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Context context, Bundle bundle) {
        this.f48403x = bundle.getBoolean("IS_DOWNLOAD", false);
        this.f48396t0 = bundle.getBoolean("SUPPORT_FEED_BACK");
        int i2 = bundle.getInt("COUNTDOWN_STATUS", 0);
        this.f48407z = i2 == 1 || i2 == 3;
        int i3 = 2;
        this.f48405y = i2 == 2 || i2 == 3;
        this.f48355K = bundle.getInt("REWARD_TYPE", 0);
        this.f48392r0 = bundle.getLong("REWARD_GUIDE_START_TIME");
        this.f48390q0 = (int) (bundle.getLong("REWARD_TASK_TIME") / 1000);
        this.f48354J = bundle.getInt("REWARD_PLAY_PERCENT", 90);
        this.f48388p0 = bundle.getLong("REWARD_DURATION", -1L);
        this.f48356L = bundle.getString("REWARD_DESCRIPTION", "");
        int i4 = bundle.getInt("VIDEO_RENDER_TYPE", 0);
        this.f48398u0 = bundle.getBoolean("IS_UNNAMED");
        if (i4 != 0) {
            i3 = i4;
        } else if (!com.ubix.ssp.ad.d.b.f45794a.isUseTextureView()) {
            i3 = 1;
        }
        this.f48379l = new com.ubix.ssp.ad.e.b0.g(context, i3);
        if (bundle.getInt("AD_TYPE") == 1) {
            this.f48379l.a(false);
        }
        this.f48379l.setId(500001);
        com.ubix.ssp.ad.e.t.a.e eVar = new com.ubix.ssp.ad.e.t.a.e(getContext());
        eVar.setId(900102);
        eVar.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.f48379l, new RelativeLayout.LayoutParams(-1, -1));
        addView(eVar);
        s();
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Bundle bundle) {
        View viewFindViewById;
        if (!"reward".equals(bundle.getString("type"))) {
            if (!"cancel".equals(bundle.getString("type")) || (viewFindViewById = findViewById(500202)) == null) {
                return;
            }
            ((l) viewFindViewById).a();
            return;
        }
        j jVar = this.f48351G;
        if (jVar instanceof com.ubix.ssp.ad.g.k.h) {
            boolean zA = ((com.ubix.ssp.ad.g.k.h) jVar).a();
            this.f48390q0 = ((com.ubix.ssp.ad.g.k.h) this.f48351G).c();
            int iD = ((com.ubix.ssp.ad.g.k.h) this.f48351G).d();
            long j2 = this.f48345A;
            a(zA, iD, 100, j2, j2);
        }
    }

    public void a(String str) {
        if (str == null || findViewById(900102) == null) {
            return;
        }
        try {
            com.ubix.ssp.ad.e.v.e.b().a(str, (ImageView) findViewById(900102), 10, null);
        } catch (Exception unused) {
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2) {
        try {
            s sVar = this.f45643f;
            if (sVar != null) {
                sVar.f();
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
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        boolean z2;
        String strA;
        String str7;
        String str8;
        super.a(str, str2, str3, str4, str5, str6, j2);
        TextView textView = (TextView) findViewById(920101);
        if (textView == null) {
            return;
        }
        String str9 = "";
        if (j2 > 0) {
            strA = k.a(j2);
            z2 = true;
        } else {
            z2 = false;
            strA = "";
        }
        if (TextUtils.isEmpty(str5)) {
            str7 = "";
        } else {
            str7 = "丨备案号:" + str5;
        }
        if (TextUtils.isEmpty(str6)) {
            str8 = "";
        } else {
            str8 = "丨适用年龄:" + str6;
        }
        if (z2) {
            str9 = "丨应用大小:" + strA;
        }
        textView.setText(new com.ubix.ssp.ad.e.f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", str, str2, str3, str7, str8, str9)).a(this.f48351G));
    }

    private void a(boolean z2) {
        try {
            ImageView imageView = this.f48391r;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            if (z2) {
                com.ubix.ssp.ad.e.a0.g gVar = new com.ubix.ssp.ad.e.a0.g(400L);
                gVar.a(new e());
                gVar.e();
                return;
            }
            ImageView imageView2 = this.f48391r;
            if (imageView2 != null) {
                imageView2.setAlpha(1.0f);
            }
            this.f48348D = 90;
            TextView textView = this.f48385o;
            if (textView != null) {
                textView.requestLayout();
            }
            TextView textView2 = this.f48383n;
            if (textView2 != null) {
                textView2.requestLayout();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0206  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r20, int r21, int r22, long r23, long r25) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.k.a.a(boolean, int, int, long, long):void");
    }
}
