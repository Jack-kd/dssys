package com.ubix.ssp.ad.e.z;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.z.h;
import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public class a extends h implements View.OnClickListener {

    /* renamed from: A, reason: collision with root package name */
    int f47838A;

    /* renamed from: B, reason: collision with root package name */
    int f47839B;

    /* renamed from: h, reason: collision with root package name */
    private ImageView f47840h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f47841i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f47842j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f47843k;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f47844l;

    /* renamed from: m, reason: collision with root package name */
    private int f47845m;

    /* renamed from: n, reason: collision with root package name */
    Matrix f47846n;

    /* renamed from: o, reason: collision with root package name */
    float f47847o;

    /* renamed from: p, reason: collision with root package name */
    float f47848p;

    /* renamed from: q, reason: collision with root package name */
    long f47849q;

    /* renamed from: r, reason: collision with root package name */
    HandlerThread f47850r;

    /* renamed from: s, reason: collision with root package name */
    private Handler f47851s;

    /* renamed from: t, reason: collision with root package name */
    Bitmap f47852t;

    /* renamed from: u, reason: collision with root package name */
    private int f47853u;

    /* renamed from: v, reason: collision with root package name */
    boolean f47854v;

    /* renamed from: w, reason: collision with root package name */
    int f47855w;

    /* renamed from: x, reason: collision with root package name */
    float f47856x;

    /* renamed from: y, reason: collision with root package name */
    boolean f47857y;

    /* renamed from: z, reason: collision with root package name */
    private boolean f47858z;

    /* renamed from: com.ubix.ssp.ad.e.z.a$a, reason: collision with other inner class name */
    public class C0837a implements e.b {
        public C0837a() {
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            u.b("onResourcesLoaded");
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            u.b("onResourcesLoadFailed");
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.f47858z) {
                    return;
                }
                a aVar = a.this;
                if (aVar.f47855w == -99) {
                    aVar.f47855w = 3;
                }
                if (aVar.f47855w <= 0) {
                    aVar.f47851s.postDelayed(this, 1500L);
                    a.this.f47855w = -99;
                    return;
                }
                if (aVar.findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1) != null) {
                    a aVar2 = a.this;
                    if (aVar2.f47838A * aVar2.f47839B <= 0) {
                        aVar2.f47838A = (aVar2.findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getRight() / 3) * 2;
                        a aVar3 = a.this;
                        aVar3.f47839B = aVar3.findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getBottom() - ((a.this.findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getBottom() - a.this.findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getTop()) / 2);
                    }
                }
                a.this.postInvalidate();
                a.this.f47851s.postDelayed(this, a.this.f47853u);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public a(Context context) {
        super(context);
        this.f47846n = new Matrix();
        this.f47847o = 2.5f;
        this.f47848p = 50.0f;
        this.f47850r = new HandlerThread("ConfirmViewDraw");
        this.f47853u = 16;
        this.f47854v = false;
        this.f47855w = 3;
        this.f47856x = 0.2f;
        this.f47858z = false;
        this.f47845m = (int) (Math.min(r.a().h(context), r.a().c(context)) * 0.8d);
        this.f47840h = new ImageView(getContext());
        this.f47844l = new ImageView(getContext());
        this.f47841i = new TextView(getContext());
        this.f47842j = new TextView(getContext());
        this.f47843k = new TextView(getContext());
        this.f47840h.setId(10001);
        this.f47844l.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2);
        this.f47841i.setId(10002);
        this.f47842j.setId(10003);
        this.f47843k.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1);
        this.f47843k.setTextColor(-1);
        this.f47843k.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -12542209, 6));
        setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -1, 6));
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        d();
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f47845m * 0.8d), -2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (this.f47845m * 0.8d), -2);
        int i2 = this.f47845m;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((i2 / 3) * 2, i2 / 8);
        this.f47843k.setZ(4.0f);
        addView(this.f47840h);
        addView(this.f47841i, layoutParams);
        addView(this.f47842j, layoutParams2);
        addView(this.f47843k, layoutParams3);
        addView(this.f47844l);
        addView(b(), new ViewGroup.LayoutParams((int) (this.f47845m * 0.9d), -2));
        this.f47840h.setOnClickListener(this);
        this.f47841i.setOnClickListener(this);
        this.f47842j.setOnClickListener(this);
        this.f47843k.setOnClickListener(this);
        this.f47844l.setOnClickListener(this);
        setOnClickListener(this);
    }

    private void e() {
        try {
            if (this.f47857y) {
                this.f47858z = true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void f() {
        HandlerThread handlerThread = this.f47850r;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        this.f47851s = null;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(Dialog dialog, h.c cVar, h.b bVar) {
        this.f47967d = dialog;
        this.f47968e = cVar;
        this.f47969f = bVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float f2;
        super.dispatchDraw(canvas);
        try {
            Matrix matrix = this.f47846n;
            float f3 = this.f47847o + this.f47856x;
            matrix.setScale(f3, f3);
            if (this.f47854v) {
                this.f47856x += 0.02f;
                float f4 = this.f47848p;
                if (f4 >= 50.0f) {
                    this.f47848p = 50.0f;
                    this.f47854v = false;
                    this.f47855w--;
                } else {
                    f2 = f4 >= 40.0f ? f4 + 2.0f : f4 >= 30.0f ? f4 + 2.5f : f4 + 3.0f;
                    this.f47848p = f2;
                }
            } else {
                this.f47856x -= 0.02f;
                float f5 = this.f47848p;
                if (f5 <= 0.0f) {
                    this.f47848p = 0.0f;
                    this.f47854v = true;
                } else {
                    f2 = f5 <= 10.0f ? f5 - 2.0f : f5 <= 20.0f ? f5 - 2.5f : f5 - 3.0f;
                    this.f47848p = f2;
                }
            }
            Matrix matrix2 = this.f47846n;
            float f6 = this.f47838A;
            float f7 = this.f47848p;
            matrix2.postTranslate(f6 + f7, this.f47839B + f7);
            if (this.f47855w > 0) {
                canvas.drawBitmap(this.f47852t, this.f47846n, null);
            } else {
                canvas.drawColor(0);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void g() {
        this.f47852t = q.a(getContext(), "ubix/ic_slide_hand.webp");
        setWillNotDraw(false);
        this.f47849q = System.currentTimeMillis();
        b bVar = new b();
        this.f47850r.start();
        Handler handler = new Handler(this.f47850r.getLooper());
        this.f47851s = handler;
        handler.postDelayed(bVar, this.f47853u);
        if (findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1) != null) {
            this.f47838A = (findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getRight() / 3) * 2;
            this.f47839B = findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getBottom() - ((findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getBottom() - findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getTop()) / 2);
        }
    }

    public int getContentHeight() {
        return this.f47845m;
    }

    public int getContentWidth() {
        return this.f47845m;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0061 A[PHI: r3
      0x0061: PHI (r3v10 com.ubix.ssp.ad.e.z.h$c) = (r3v5 com.ubix.ssp.ad.e.z.h$c), (r3v14 com.ubix.ssp.ad.e.z.h$c) binds: [B:37:0x005f, B:21:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r3) {
        /*
            r2 = this;
            int r3 = r3.getId()
            r0 = 10004(0x2714, float:1.4019E-41)
            r1 = 0
            if (r3 == r0) goto L38
            r0 = 10005(0x2715, float:1.402E-41)
            if (r3 == r0) goto Le
            return
        Le:
            com.ubix.ssp.ad.e.a0.l r3 = r2.f47966c
            if (r3 == 0) goto L1d
            boolean r3 = r3.b()
            if (r3 == 0) goto L1d
            com.ubix.ssp.ad.e.a0.l r3 = r2.f47966c
            r3.a()
        L1d:
            android.app.Dialog r3 = r2.f47967d
            if (r3 == 0) goto L2c
            boolean r3 = r3.isShowing()
            if (r3 == 0) goto L2c
            android.app.Dialog r3 = r2.f47967d
            r3.dismiss()
        L2c:
            com.ubix.ssp.ad.e.z.h$c r3 = r2.f47968e
            if (r3 == 0) goto L33
            r3.a(r1)
        L33:
            com.ubix.ssp.ad.e.z.h$c r3 = r2.f47968e
            if (r3 == 0) goto L64
            goto L61
        L38:
            com.ubix.ssp.ad.e.a0.l r3 = r2.f47966c
            if (r3 == 0) goto L47
            boolean r3 = r3.b()
            if (r3 == 0) goto L47
            com.ubix.ssp.ad.e.a0.l r3 = r2.f47966c
            r3.a()
        L47:
            android.app.Dialog r3 = r2.f47967d
            if (r3 == 0) goto L56
            boolean r3 = r3.isShowing()
            if (r3 == 0) goto L56
            android.app.Dialog r3 = r2.f47967d
            r3.dismiss()
        L56:
            com.ubix.ssp.ad.e.z.h$c r3 = r2.f47968e
            if (r3 == 0) goto L5d
            r3.a(r1, r1)
        L5d:
            com.ubix.ssp.ad.e.z.h$c r3 = r2.f47968e
            if (r3 == 0) goto L64
        L61:
            r3.b(r1)
        L64:
            r2.e()
            r2.f()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.z.a.onClick(android.view.View):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
        f();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            int i12 = this.f47845m / 5;
            int id = childAt.getId();
            if (id != 920101) {
                switch (id) {
                    case 10001:
                        int i13 = this.f47845m;
                        int i14 = i13 / 8;
                        childAt.layout((i13 - i12) / 2, i14, (i13 + i12) / 2, i12 + i14);
                        continue;
                    case 10002:
                        i6 = (int) (this.f47845m * 0.1d);
                        int bottom = findViewById(10001).getBottom();
                        int i15 = this.f47845m;
                        i7 = bottom + (i15 / 14);
                        i8 = (int) (i15 * 0.9d);
                        int bottom2 = findViewById(10001).getBottom();
                        int i16 = this.f47845m;
                        i9 = bottom2 + (i16 / 14);
                        i10 = i16 / 10;
                        break;
                    case 10003:
                        i6 = (int) (this.f47845m * 0.1d);
                        int bottom3 = findViewById(10002).getBottom();
                        int i17 = this.f47845m;
                        i7 = bottom3 + (i17 / 36);
                        i8 = (int) (i17 * 0.9d);
                        int bottom4 = findViewById(10002).getBottom();
                        int i18 = this.f47845m;
                        i9 = bottom4 + (i18 / 36);
                        i10 = i18 / 4;
                        break;
                    case AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1 /* 10004 */:
                        int i19 = this.f47845m;
                        i6 = (i19 - ((i19 * 2) / 3)) / 2;
                        int bottom5 = findViewById(10003).getBottom();
                        int i20 = this.f47845m;
                        i7 = bottom5 + (i20 / 20);
                        i8 = (i20 + ((i20 * 2) / 3)) / 2;
                        int bottom6 = findViewById(10003).getBottom();
                        int i21 = this.f47845m;
                        i9 = bottom6 + (i21 / 20);
                        i10 = i21 / 8;
                        break;
                    case AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2 /* 10005 */:
                        int i22 = this.f47845m;
                        int i23 = i22 / 22;
                        int i24 = i22 - i23;
                        int i25 = i22 / 10;
                        childAt.layout(i24 - i25, i23, i24, i25 + i23);
                        continue;
                }
                childAt.layout(i6, i7, i8, i9 + i10);
            } else {
                double d2 = this.f47845m;
                int i26 = (int) (0.05d * d2);
                double measuredHeight = ((int) (d2 * 1.1d)) - childAt.getMeasuredHeight();
                double d3 = this.f47965b * 4.0d;
                double d4 = this.f47845m;
                childAt.layout(i26, (int) (measuredHeight - d3), (int) (0.95d * d4), (int) ((d4 * 1.1d) - d3));
                childAt.getLayoutParams().height = childAt.getMeasuredHeight();
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int i4 = this.f47845m;
        setMeasuredDimension(i4, (int) (i4 * 1.1d));
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void setData(Bundle bundle) {
        String strA;
        boolean z2;
        String string;
        String str;
        boolean z3 = false;
        boolean z4 = bundle.getBoolean("IS_DOWNLOAD", false);
        String string2 = bundle.getString("ICON_URL");
        String string3 = bundle.getString("TITLE");
        String string4 = bundle.getString("SUB_TITLE");
        String string5 = bundle.getString("BUTTON_TEXT");
        try {
            com.ubix.ssp.ad.e.v.e.b().a(string2, this.f47840h, -1, new C0837a());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (z4) {
            String string6 = bundle.getString("DOWNLOAD_APP_NAME");
            String string7 = bundle.getString("DOWNLOAD_APP_VERSION");
            String string8 = bundle.getString("DOWNLOAD_APP_PUBLISHER");
            String string9 = bundle.getString("DOWNLOAD_APP_ICP_NUMBER");
            String string10 = bundle.getString("DOWNLOAD_APP_SUITABLE_AGE");
            long j2 = bundle.getLong("DOWNLOAD_APP_SIZE");
            try {
                TextView textView = (TextView) findViewById(920101);
                if (textView == null) {
                    return;
                }
                String str2 = "";
                if (j2 > 0) {
                    strA = k.a(j2);
                    z3 = true;
                } else {
                    strA = "";
                }
                if (TextUtils.isEmpty(string9)) {
                    z2 = z3;
                    string = "";
                } else {
                    StringBuilder sb = new StringBuilder();
                    z2 = z3;
                    sb.append("丨备案号:");
                    sb.append(string9);
                    string = sb.toString();
                }
                if (TextUtils.isEmpty(string10)) {
                    str = "";
                } else {
                    str = "丨适用年龄:" + string10;
                }
                if (z2) {
                    str2 = "丨应用大小:" + strA;
                }
                textView.setText(new com.ubix.ssp.ad.e.f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", string6, string7, string8, string, str, str2)).a(this.f47969f));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        this.f47841i.setText(string3);
        this.f47842j.setText(string4);
        TextView textView2 = this.f47843k;
        if (TextUtils.isEmpty(string5)) {
            string5 = z4 ? "立即下载" : "查看详情";
        }
        textView2.setText(string5);
        this.f47843k.setSingleLine();
        TextView textView3 = this.f47843k;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView3.setEllipsize(truncateAt);
        this.f47841i.setEllipsize(truncateAt);
        this.f47842j.setEllipsize(truncateAt);
        this.f47843k.setGravity(17);
        this.f47841i.setMaxLines(1);
        this.f47842j.setMaxLines(3);
        this.f47841i.setTextColor(-13421773);
        this.f47842j.setTextColor(-8158333);
        this.f47841i.setGravity(17);
        this.f47842j.setGravity(17);
        this.f47841i.setTextSize(20.0f);
        this.f47842j.setTextSize(18.0f);
        this.f47844l.setImageDrawable(q.a("ubix/ic_close.webp"));
        boolean z5 = bundle.getBoolean("HAS_INDICATE");
        this.f47857y = z5;
        if (z5) {
            g();
        }
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(l lVar, h.c cVar, h.b bVar) {
        this.f47966c = lVar;
        this.f47968e = cVar;
        this.f47969f = bVar;
    }
}
