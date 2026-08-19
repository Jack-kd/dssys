package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.View;

/* loaded from: classes5.dex */
public class o extends View {

    /* renamed from: a, reason: collision with root package name */
    int f46999a;

    /* renamed from: b, reason: collision with root package name */
    int f47000b;

    /* renamed from: c, reason: collision with root package name */
    int f47001c;

    /* renamed from: d, reason: collision with root package name */
    boolean f47002d;

    /* renamed from: e, reason: collision with root package name */
    private int f47003e;

    /* renamed from: f, reason: collision with root package name */
    private int f47004f;

    /* renamed from: g, reason: collision with root package name */
    private int f47005g;

    /* renamed from: h, reason: collision with root package name */
    private float f47006h;

    /* renamed from: i, reason: collision with root package name */
    Matrix f47007i;

    /* renamed from: j, reason: collision with root package name */
    Paint f47008j;

    /* renamed from: k, reason: collision with root package name */
    float f47009k;

    /* renamed from: l, reason: collision with root package name */
    float f47010l;

    /* renamed from: m, reason: collision with root package name */
    private Bitmap f47011m;

    /* renamed from: n, reason: collision with root package name */
    private Bitmap f47012n;

    /* renamed from: o, reason: collision with root package name */
    int f47013o;

    /* renamed from: p, reason: collision with root package name */
    Matrix f47014p;

    /* renamed from: q, reason: collision with root package name */
    Matrix f47015q;

    /* renamed from: r, reason: collision with root package name */
    Matrix f47016r;

    /* renamed from: s, reason: collision with root package name */
    Matrix f47017s;

    /* renamed from: t, reason: collision with root package name */
    int f47018t;

    /* renamed from: u, reason: collision with root package name */
    boolean f47019u;

    /* renamed from: v, reason: collision with root package name */
    float f47020v;

    /* renamed from: w, reason: collision with root package name */
    int f47021w;

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:17:0x004e, B:19:0x006d, B:20:0x0072, B:22:0x007a, B:24:0x0084, B:25:0x008a, B:26:0x008f, B:28:0x009a, B:29:0x00a1, B:31:0x00aa, B:33:0x00b4, B:9:0x0019, B:13:0x002f, B:12:0x0026, B:14:0x0035, B:16:0x0048, B:15:0x003f), top: B:37:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x007a A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:17:0x004e, B:19:0x006d, B:20:0x0072, B:22:0x007a, B:24:0x0084, B:25:0x008a, B:26:0x008f, B:28:0x009a, B:29:0x00a1, B:31:0x00aa, B:33:0x00b4, B:9:0x0019, B:13:0x002f, B:12:0x0026, B:14:0x0035, B:16:0x0048, B:15:0x003f), top: B:37:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x009a A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:17:0x004e, B:19:0x006d, B:20:0x0072, B:22:0x007a, B:24:0x0084, B:25:0x008a, B:26:0x008f, B:28:0x009a, B:29:0x00a1, B:31:0x00aa, B:33:0x00b4, B:9:0x0019, B:13:0x002f, B:12:0x0026, B:14:0x0035, B:16:0x0048, B:15:0x003f), top: B:37:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00aa A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:17:0x004e, B:19:0x006d, B:20:0x0072, B:22:0x007a, B:24:0x0084, B:25:0x008a, B:26:0x008f, B:28:0x009a, B:29:0x00a1, B:31:0x00aa, B:33:0x00b4, B:9:0x0019, B:13:0x002f, B:12:0x0026, B:14:0x0035, B:16:0x0048, B:15:0x003f), top: B:37:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00b4 A[Catch: all -> 0x0023, TRY_LEAVE, TryCatch #0 {all -> 0x0023, blocks: (B:2:0x0000, B:17:0x004e, B:19:0x006d, B:20:0x0072, B:22:0x007a, B:24:0x0084, B:25:0x008a, B:26:0x008f, B:28:0x009a, B:29:0x00a1, B:31:0x00aa, B:33:0x00b4, B:9:0x0019, B:13:0x002f, B:12:0x0026, B:14:0x0035, B:16:0x0048, B:15:0x003f), top: B:37:0x0000 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 190
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.o.a.run():void");
        }
    }

    public o(Context context, boolean z2) {
        super(context);
        this.f46999a = 0;
        this.f47000b = 0;
        this.f47001c = 28;
        this.f47005g = 1;
        this.f47006h = 1.0f;
        this.f47007i = new Matrix();
        this.f47008j = new Paint(1);
        this.f47011m = null;
        this.f47012n = null;
        this.f47014p = new Matrix();
        this.f47015q = new Matrix();
        this.f47016r = new Matrix();
        this.f47017s = new Matrix();
        this.f47018t = 60;
        this.f47019u = false;
        this.f47020v = 1.0f;
        this.f47021w = 0;
        this.f47011m = q.a(context, "ubix/ic_slide_right_down.webp");
        this.f47012n = q.a(context, "ubix/ic_slide_hand2.webp", -45, false);
        if (!z2) {
            this.f47018t = (int) (com.ubix.ssp.ad.e.a0.r.a().a(context) * 20.0f);
            int iA = (int) (com.ubix.ssp.ad.e.a0.r.a().a(context) * 180.0f);
            this.f47003e = iA;
            this.f47004f = iA;
            this.f47013o = (iA - (this.f47011m.getWidth() * 2)) / 2;
            this.f47006h = (this.f47004f / 2.0f) / this.f47011m.getWidth();
            this.f47009k = this.f47004f / 2;
            float width = (this.f47003e - this.f47011m.getWidth()) / 2;
            this.f47010l = width;
            this.f47007i.setTranslate(this.f47009k, width);
            return;
        }
        this.f47019u = true;
        this.f47020v = 0.7f;
        this.f47001c = 60;
        int iA2 = (int) (com.ubix.ssp.ad.e.a0.r.a().a(getContext()) * 120.0f);
        this.f47003e = iA2;
        this.f47004f = iA2;
        this.f47013o = (iA2 - (this.f47011m.getWidth() * 2)) / 2;
        this.f47006h = (this.f47004f / 2.0f) / this.f47011m.getWidth();
        float f2 = this.f47004f / 2;
        this.f47009k = f2;
        float f3 = this.f47003e / 2;
        this.f47010l = f3;
        int i2 = this.f47013o;
        this.f47021w = i2;
        this.f47013o = i2 * 2;
        this.f47007i.setTranslate(f2, f3);
        Matrix matrix = this.f47007i;
        float f4 = this.f47020v;
        matrix.preScale(f4, f4);
    }

    public static /* synthetic */ int b(o oVar) {
        int i2 = oVar.f47005g;
        oVar.f47005g = i2 + 1;
        return i2;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.rotate(45.0f, this.f47004f / 2, this.f47003e / 2);
        this.f47014p.setRotate(180.0f);
        Matrix matrix = this.f47014p;
        float f2 = this.f47020v;
        matrix.preScale(f2, f2);
        this.f47014p.postTranslate(this.f47011m.getWidth() + this.f47018t, this.f47011m.getHeight() + this.f47018t);
        canvas.drawBitmap(this.f47011m, this.f47014p, null);
        this.f47015q.setRotate(90.0f);
        Matrix matrix2 = this.f47015q;
        float f3 = this.f47020v;
        matrix2.preScale(f3, f3);
        this.f47015q.postTranslate((this.f47011m.getWidth() - this.f47021w) + this.f47018t, (this.f47013o + (this.f47011m.getHeight() * this.f47006h)) - this.f47018t);
        canvas.drawBitmap(this.f47011m, this.f47015q, null);
        this.f47016r.setRotate(270.0f);
        Matrix matrix3 = this.f47016r;
        float f4 = this.f47020v;
        matrix3.preScale(f4, f4);
        this.f47016r.postTranslate((this.f47013o + (this.f47011m.getWidth() * this.f47006h)) - this.f47018t, (this.f47011m.getHeight() - this.f47021w) + this.f47018t);
        canvas.drawBitmap(this.f47011m, this.f47016r, null);
        this.f47017s.setRotate(0.0f);
        Matrix matrix4 = this.f47017s;
        float f5 = this.f47020v;
        matrix4.preScale(f5, f5);
        this.f47017s.postTranslate((this.f47013o + (this.f47011m.getWidth() * this.f47006h)) - this.f47018t, (this.f47013o + (this.f47011m.getHeight() * this.f47006h)) - this.f47018t);
        canvas.drawBitmap(this.f47011m, this.f47017s, null);
        canvas.drawBitmap(this.f47012n, this.f47007i, this.f47008j);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(this.f47004f, this.f47003e);
    }

    public void a() {
        setWillNotDraw(false);
        postDelayed(new a(), 16L);
    }
}
