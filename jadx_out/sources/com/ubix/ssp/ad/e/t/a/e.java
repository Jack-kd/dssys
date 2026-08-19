package com.ubix.ssp.ad.e.t.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.ubix.ssp.ad.e.a0.u;
import java.io.IOException;
import java.io.InputStream;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes5.dex */
public class e extends ImageView implements com.ubix.ssp.ad.e.t.a.b {

    /* renamed from: a, reason: collision with root package name */
    private com.ubix.ssp.ad.e.t.a.c f47169a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f47170b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f47171c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f47172d;

    /* renamed from: e, reason: collision with root package name */
    private int f47173e;

    /* renamed from: f, reason: collision with root package name */
    private int f47174f;

    /* renamed from: g, reason: collision with root package name */
    private Rect f47175g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f47176h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f47177i;

    /* renamed from: j, reason: collision with root package name */
    private c f47178j;

    /* renamed from: k, reason: collision with root package name */
    private d f47179k;

    /* renamed from: l, reason: collision with root package name */
    private Paint f47180l;

    /* renamed from: m, reason: collision with root package name */
    private RectF f47181m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f47182n;

    /* renamed from: o, reason: collision with root package name */
    private PorterDuffXfermode f47183o;

    /* renamed from: p, reason: collision with root package name */
    private Rect f47184p;

    /* renamed from: q, reason: collision with root package name */
    float f47185q;

    /* renamed from: r, reason: collision with root package name */
    float f47186r;

    /* renamed from: s, reason: collision with root package name */
    float f47187s;

    /* renamed from: t, reason: collision with root package name */
    float f47188t;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.requestLayout();
        }
    }

    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f47190a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f47191b;

        static {
            int[] iArr = new int[d.values().length];
            f47191b = iArr;
            try {
                iArr[d.WAIT_FINISH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47191b[d.COVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47191b[d.SYNC_DECODER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f47190a = iArr2;
            try {
                iArr2[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47190a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47190a[ImageView.ScaleType.FIT_XY.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class c extends Thread {
        private c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (e.this.f47169a == null) {
                return;
            }
            while (e.this.f47171c) {
                if (e.this.f47172d) {
                    SystemClock.sleep(10L);
                } else {
                    try {
                        com.ubix.ssp.ad.e.t.a.d dVarG = e.this.f47169a.g();
                        e.this.f47170b = dVarG.f47166a;
                        long j2 = dVarG.f47167b;
                        if (j2 <= 0) {
                            j2 = 100;
                        }
                        e.this.a();
                        SystemClock.sleep(j2);
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
            }
        }

        public /* synthetic */ c(e eVar, a aVar) {
            this();
        }
    }

    public enum d {
        WAIT_FINISH(0),
        SYNC_DECODER(1),
        COVER(2);


        /* renamed from: e, reason: collision with root package name */
        final int f47197e;

        d(int i2) {
            this.f47197e = i2;
        }
    }

    public e(Context context) {
        super(context);
        this.f47169a = null;
        this.f47170b = null;
        this.f47171c = true;
        this.f47172d = false;
        this.f47173e = -1;
        this.f47174f = -1;
        this.f47175g = null;
        this.f47176h = false;
        this.f47177i = false;
        this.f47178j = null;
        this.f47179k = d.SYNC_DECODER;
        this.f47180l = new Paint(1);
        this.f47181m = new RectF();
        this.f47182n = false;
        this.f47183o = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        this.f47184p = new Rect();
        this.f47185q = 0.0f;
        this.f47186r = 0.0f;
        this.f47187s = 0.0f;
        this.f47188t = 0.0f;
    }

    private void setGifDecoderImage(InputStream inputStream) throws IOException {
        com.ubix.ssp.ad.e.t.a.c cVar = this.f47169a;
        if (cVar != null) {
            cVar.c();
            this.f47169a = null;
        }
        com.ubix.ssp.ad.e.t.a.c cVar2 = new com.ubix.ssp.ad.e.t.a.c(inputStream, this);
        this.f47169a = cVar2;
        cVar2.start();
        setBackgroundColor(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x01dc A[Catch: Exception -> 0x021b, TryCatch #0 {Exception -> 0x021b, blocks: (B:2:0x0000, B:4:0x0007, B:5:0x000f, B:8:0x0015, B:12:0x0072, B:13:0x0081, B:23:0x01d6, B:25:0x01dc, B:28:0x01ed, B:30:0x0200, B:32:0x0210, B:31:0x0209, B:27:0x01e5, B:14:0x0088, B:16:0x0091, B:18:0x012c, B:17:0x00df, B:19:0x013f, B:21:0x0147, B:22:0x018d), top: B:35:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01e5 A[Catch: Exception -> 0x021b, TryCatch #0 {Exception -> 0x021b, blocks: (B:2:0x0000, B:4:0x0007, B:5:0x000f, B:8:0x0015, B:12:0x0072, B:13:0x0081, B:23:0x01d6, B:25:0x01dc, B:28:0x01ed, B:30:0x0200, B:32:0x0210, B:31:0x0209, B:27:0x01e5, B:14:0x0088, B:16:0x0091, B:18:0x012c, B:17:0x00df, B:19:0x013f, B:21:0x0147, B:22:0x018d), top: B:35:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0200 A[Catch: Exception -> 0x021b, TryCatch #0 {Exception -> 0x021b, blocks: (B:2:0x0000, B:4:0x0007, B:5:0x000f, B:8:0x0015, B:12:0x0072, B:13:0x0081, B:23:0x01d6, B:25:0x01dc, B:28:0x01ed, B:30:0x0200, B:32:0x0210, B:31:0x0209, B:27:0x01e5, B:14:0x0088, B:16:0x0091, B:18:0x012c, B:17:0x00df, B:19:0x013f, B:21:0x0147, B:22:0x018d), top: B:35:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0209 A[Catch: Exception -> 0x021b, TryCatch #0 {Exception -> 0x021b, blocks: (B:2:0x0000, B:4:0x0007, B:5:0x000f, B:8:0x0015, B:12:0x0072, B:13:0x0081, B:23:0x01d6, B:25:0x01dc, B:28:0x01ed, B:30:0x0200, B:32:0x0210, B:31:0x0209, B:27:0x01e5, B:14:0x0088, B:16:0x0091, B:18:0x012c, B:17:0x00df, B:19:0x013f, B:21:0x0147, B:22:0x018d), top: B:35:0x0000 }] */
    @Override // android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.t.a.e.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int size;
        int size2;
        if (this.f47176h) {
            super.onMeasure(i2, i3);
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            com.ubix.ssp.ad.e.t.a.c cVar = this.f47169a;
            if (cVar == null) {
                i5 = 1;
                i4 = 1;
            } else {
                int i6 = cVar.f47140a;
                i4 = cVar.f47141b;
                i5 = i6;
            }
            int iMax = Math.max(i5 + paddingLeft + paddingRight, getSuggestedMinimumWidth());
            int iMax2 = Math.max(i4 + paddingTop + paddingBottom, getSuggestedMinimumHeight());
            int iResolveSize = View.resolveSize(iMax, i2);
            int iResolveSize2 = View.resolveSize(iMax2, i3);
            if (iResolveSize == 0 || iResolveSize2 == 0) {
                super.onMeasure(i2, i3);
                postDelayed(new a(), 500L);
            } else if (this.f47177i) {
                double dMax = 1.0d / Math.max((View.MeasureSpec.getMode(i2) == 0 || iMax <= (size2 = View.MeasureSpec.getSize(i2))) ? 1.0d : iMax / size2, (View.MeasureSpec.getMode(i3) == 0 || iMax2 <= (size = View.MeasureSpec.getSize(i3))) ? 1.0d : iMax2 / size);
                iResolveSize = (int) (iMax * dMax);
                iResolveSize2 = (int) (iMax2 * dMax);
                a(iResolveSize, iResolveSize2);
            }
            setMeasuredDimension(iResolveSize, iResolveSize2);
        }
        this.f47181m = new RectF(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setGifImage(int i2) throws IOException {
        setGifDecoderImage(getResources().openRawResource(i2));
    }

    public void setGifImageType(d dVar) {
        if (this.f47169a == null) {
            this.f47179k = dVar;
        }
    }

    public void setRoundImageBitmap(Bitmap bitmap) {
        if (!this.f47182n) {
            setImageBitmap(bitmap);
            return;
        }
        setBackgroundColor(0);
        this.f47170b = bitmap;
        a(getMeasuredWidth(), getMeasuredHeight());
        invalidate();
    }

    public void setSupportRound(boolean z2) {
        this.f47182n = z2;
    }

    public e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setGifDecoderImage(byte[] bArr) throws IOException {
        com.ubix.ssp.ad.e.t.a.c cVar = this.f47169a;
        if (cVar != null) {
            cVar.c();
            this.f47169a = null;
        }
        com.ubix.ssp.ad.e.t.a.c cVar2 = new com.ubix.ssp.ad.e.t.a.c(bArr, this);
        this.f47169a = cVar2;
        cVar2.start();
        setBackgroundColor(0);
    }

    public void setGifImage(InputStream inputStream) throws IOException {
        setGifDecoderImage(inputStream);
    }

    public e(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f47169a = null;
        this.f47170b = null;
        this.f47171c = true;
        this.f47172d = false;
        this.f47173e = -1;
        this.f47174f = -1;
        this.f47175g = null;
        this.f47176h = false;
        this.f47177i = false;
        this.f47178j = null;
        this.f47179k = d.SYNC_DECODER;
        this.f47180l = new Paint(1);
        this.f47181m = new RectF();
        this.f47182n = false;
        this.f47183o = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        this.f47184p = new Rect();
        this.f47185q = 0.0f;
        this.f47186r = 0.0f;
        this.f47187s = 0.0f;
        this.f47188t = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        postInvalidate();
    }

    public void setGifImage(byte[] bArr) {
        setGifDecoderImage(bArr);
    }

    public void a(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        this.f47173e = i2;
        this.f47174f = i3;
        Rect rect = new Rect();
        this.f47175g = rect;
        rect.left = 0;
        rect.top = 0;
        rect.right = i2;
        rect.bottom = i3;
        this.f47181m = new RectF(0.0f, 0.0f, i2, i3);
    }

    @Override // com.ubix.ssp.ad.e.t.a.b
    public void a(boolean z2, int i2) {
        if (z2) {
            if (this.f47169a == null) {
                u.d("gif parse error");
                return;
            }
            int i3 = b.f47191b[this.f47179k.ordinal()];
            a aVar = null;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        return;
                    }
                    if (i2 != 1) {
                        if (i2 != -1) {
                            if (this.f47178j == null) {
                                c cVar = new c(this, aVar);
                                this.f47178j = cVar;
                                cVar.start();
                                return;
                            }
                            return;
                        }
                    }
                    this.f47170b = this.f47169a.e();
                    a();
                    return;
                }
                if (i2 != 1) {
                    if (i2 != -1) {
                        return;
                    }
                    if (this.f47169a.d() > 1) {
                        if (this.f47178j == null) {
                            c cVar2 = new c(this, aVar);
                            this.f47178j = cVar2;
                            cVar2.start();
                            return;
                        }
                        return;
                    }
                }
                this.f47170b = this.f47169a.e();
                a();
                return;
            }
            if (i2 != -1) {
                return;
            }
            if (this.f47169a.d() > 1) {
                new c(this, aVar).start();
                return;
            }
            a();
        }
    }

    @Override // com.ubix.ssp.ad.e.t.a.b
    public void a(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        setImageBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }
}
