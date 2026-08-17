package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* loaded from: classes5.dex */
public class h extends View {

    /* renamed from: A, reason: collision with root package name */
    long f46886A;

    /* renamed from: B, reason: collision with root package name */
    HandlerThread f46887B;

    /* renamed from: C, reason: collision with root package name */
    WindowManager f46888C;

    /* renamed from: a, reason: collision with root package name */
    private Paint f46889a;

    /* renamed from: b, reason: collision with root package name */
    private List<b> f46890b;

    /* renamed from: c, reason: collision with root package name */
    private Random f46891c;

    /* renamed from: d, reason: collision with root package name */
    private long f46892d;

    /* renamed from: e, reason: collision with root package name */
    private int f46893e;

    /* renamed from: f, reason: collision with root package name */
    private int f46894f;

    /* renamed from: g, reason: collision with root package name */
    private SoftReference<Bitmap> f46895g;

    /* renamed from: h, reason: collision with root package name */
    private int f46896h;

    /* renamed from: i, reason: collision with root package name */
    private int f46897i;

    /* renamed from: j, reason: collision with root package name */
    private int f46898j;

    /* renamed from: k, reason: collision with root package name */
    private int f46899k;

    /* renamed from: l, reason: collision with root package name */
    private int f46900l;

    /* renamed from: m, reason: collision with root package name */
    private Matrix f46901m;

    /* renamed from: n, reason: collision with root package name */
    boolean f46902n;

    /* renamed from: o, reason: collision with root package name */
    private long f46903o;

    /* renamed from: p, reason: collision with root package name */
    boolean f46904p;

    /* renamed from: q, reason: collision with root package name */
    final ArrayList<Integer> f46905q;

    /* renamed from: r, reason: collision with root package name */
    private int f46906r;

    /* renamed from: s, reason: collision with root package name */
    int f46907s;

    /* renamed from: t, reason: collision with root package name */
    int f46908t;

    /* renamed from: u, reason: collision with root package name */
    private long f46909u;

    /* renamed from: v, reason: collision with root package name */
    private c f46910v;

    /* renamed from: w, reason: collision with root package name */
    private int f46911w;

    /* renamed from: x, reason: collision with root package name */
    private Handler f46912x;

    /* renamed from: y, reason: collision with root package name */
    boolean f46913y;

    /* renamed from: z, reason: collision with root package name */
    boolean f46914z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            if (hVar.f46904p || hVar.f46895g == null || h.this.f46895g.get() == null || h.this.f46896h == 0) {
                return;
            }
            h.this.postInvalidate();
            if (h.this.f46898j == 0) {
                h hVar2 = h.this;
                hVar2.f46898j = hVar2.getMeasuredWidth();
                h hVar3 = h.this;
                hVar3.f46899k = hVar3.getMeasuredHeight();
                h hVar4 = h.this;
                hVar4.f46900l = Math.min(hVar4.f46898j, h.this.f46899k);
            }
            int i2 = 0;
            if (h.this.f46898j != 0) {
                int i3 = 0;
                while (i2 < h.this.f46890b.size()) {
                    b bVar = (b) h.this.f46890b.get(i2);
                    if (bVar.c() > h.this.f46899k) {
                        if (h.this.c()) {
                            bVar.f46921f = true;
                        } else {
                            h hVar5 = h.this;
                            if (!hVar5.f46914z) {
                                hVar5.b(bVar);
                            }
                        }
                    }
                    if (!h.this.f46914z) {
                        bVar.b(bVar.c() + bVar.f46918c);
                    }
                    if (bVar.f46921f) {
                        i3++;
                    }
                    i2++;
                }
                h hVar6 = h.this;
                if (!hVar6.f46914z && !hVar6.c()) {
                    h.this.a();
                }
                i2 = i3;
            }
            if (h.this.f46890b.size() != 0 && i2 == h.this.f46890b.size()) {
                return;
            }
            h.this.f46912x.postDelayed(this, h.this.f46911w);
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        private int f46916a;

        /* renamed from: b, reason: collision with root package name */
        private int f46917b;

        /* renamed from: c, reason: collision with root package name */
        private int f46918c;

        /* renamed from: d, reason: collision with root package name */
        private float f46919d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f46920e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f46921f = false;

        /* renamed from: g, reason: collision with root package name */
        private int f46922g;

        public b(int i2) {
            this.f46919d = 4.0f;
            this.f46920e = false;
            this.f46922g = i2;
            float f2 = (float) ((((h.this.f46900l * 1.0f) / h.this.f46906r) * 0.8d) / h.this.f46896h);
            this.f46919d = f2;
            this.f46919d = (float) (f2 - ((h.this.f46891c.nextInt(3) * 0.1d) - 0.1d));
            this.f46920e = true;
        }

        public int a() {
            return (int) (h.this.f46896h * this.f46919d);
        }

        public int b() {
            return this.f46922g;
        }

        public int c() {
            return this.f46917b;
        }

        public void a(int i2) {
            this.f46922g = i2;
        }

        public void b(int i2) {
            this.f46917b = i2;
        }
    }

    public interface c {
        void a();
    }

    public h(Context context) {
        super(context);
        this.f46891c = new Random();
        this.f46892d = 0L;
        this.f46893e = 0;
        this.f46894f = 12;
        this.f46901m = new Matrix();
        this.f46905q = new ArrayList<>();
        this.f46906r = 3;
        this.f46908t = -1;
        this.f46911w = 16;
        this.f46913y = false;
        this.f46914z = false;
        this.f46886A = 0L;
        this.f46887B = new HandlerThread("JoyfulDraw");
        this.f46888C = null;
        this.f46888C = (WindowManager) getContext().getSystemService("window");
        setWillNotDraw(true);
        this.f46890b = new ArrayList();
        this.f46889a = new Paint(1);
        this.f46909u = System.currentTimeMillis();
    }

    private int getRandomStage() {
        if (this.f46908t == -1) {
            Collections.shuffle(this.f46905q);
        }
        if (this.f46907s >= this.f46906r) {
            this.f46907s = 0;
            Collections.shuffle(this.f46905q);
        }
        ArrayList<Integer> arrayList = this.f46905q;
        int i2 = this.f46907s;
        this.f46907s = i2 + 1;
        return arrayList.get(i2).intValue();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f46904p = false;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (int i2 = 0; i2 < this.f46890b.size(); i2++) {
            try {
                b bVar = this.f46890b.get(i2);
                if (!bVar.f46921f && this.f46895g.get() != null && !this.f46895g.get().isRecycled()) {
                    this.f46901m.setScale(bVar.f46919d, bVar.f46919d);
                    this.f46901m.postTranslate(bVar.f46916a, bVar.f46917b);
                    canvas.drawBitmap(this.f46895g.get(), this.f46901m, this.f46889a);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        d();
        int i4 = this.f46898j;
        int i5 = this.f46899k;
        if (i4 * i5 != 0) {
            setMeasuredDimension(i4, i5);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        d();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f46902n) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 1) {
            return a((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (!z2) {
            this.f46914z = true;
            this.f46886A = System.currentTimeMillis();
            return;
        }
        this.f46914z = false;
        if (0 != this.f46886A) {
            this.f46909u += System.currentTimeMillis() - this.f46886A;
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z2) {
        this.f46902n = z2;
    }

    public void setDuration(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.f46892d = i2 * 1000;
    }

    public void setItemClickListener(c cVar) {
        this.f46910v = cVar;
    }

    public void setMaxStage(int i2) {
        this.f46906r = i2;
        this.f46905q.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            this.f46905q.add(Integer.valueOf(i3));
        }
    }

    public void setResource(int i2) {
        this.f46895g = i2 != 2 ? i2 != 3 ? new SoftReference<>(q.a(getContext(), "ubix/joy_default.webp")) : new SoftReference<>(q.a(getContext(), "ubix/joy_double_eleven.webp")) : new SoftReference<>(q.a(getContext(), "ubix/joy_six_one_eight.webp"));
        if (this.f46895g.get() != null) {
            this.f46896h = this.f46895g.get().getWidth();
            this.f46897i = this.f46895g.get().getHeight();
        }
    }

    private void d() {
        int iMin;
        try {
            if (this.f46888C == null) {
                this.f46888C = (WindowManager) getContext().getSystemService("window");
            }
            int orientation = this.f46888C.getDefaultDisplay().getOrientation();
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                if (viewGroup.getWidth() != 0) {
                    measuredWidth = viewGroup.getWidth();
                }
                if (viewGroup.getHeight() != 0) {
                    measuredHeight = viewGroup.getHeight();
                }
            }
            if (orientation == 1 || orientation == 3) {
                this.f46898j = Math.max(measuredWidth, measuredHeight);
                iMin = Math.min(measuredWidth, measuredHeight);
            } else {
                this.f46898j = Math.min(measuredWidth, measuredHeight);
                iMin = Math.max(measuredWidth, measuredHeight);
            }
            this.f46899k = iMin;
            this.f46900l = Math.min(this.f46898j, iMin);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void e() {
        setWillNotDraw(false);
        this.f46909u = System.currentTimeMillis();
        a aVar = new a();
        this.f46887B.start();
        Handler handler = new Handler(this.f46887B.getLooper());
        this.f46912x = handler;
        handler.postDelayed(aVar, this.f46911w);
    }

    public void setResource(String str) {
        try {
            com.ubix.ssp.ad.e.v.e.b().c(str);
            SoftReference<Bitmap> softReference = new SoftReference<>(com.ubix.ssp.ad.e.v.e.b().b(str));
            this.f46895g = softReference;
            if (softReference.get() != null) {
                this.f46896h = this.f46895g.get().getWidth();
                this.f46897i = this.f46895g.get().getHeight();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (System.currentTimeMillis() - this.f46903o >= 350 && this.f46890b.size() < this.f46894f) {
            this.f46903o = System.currentTimeMillis();
            int randomStage = getRandomStage();
            if (this.f46908t == randomStage) {
                randomStage = getRandomStage();
            }
            b bVar = new b(randomStage);
            a(bVar);
            this.f46890b.add(bVar);
            this.f46908t = randomStage;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        if (!this.f46913y && (this.f46892d <= 0 || System.currentTimeMillis() - this.f46909u <= this.f46892d)) {
            return false;
        }
        this.f46913y = true;
        return true;
    }

    public void b() {
        this.f46904p = true;
        try {
            HandlerThread handlerThread = this.f46887B;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                this.f46887B = null;
            }
            this.f46912x = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(b bVar) {
        if (bVar == null) {
            return;
        }
        try {
            int i2 = this.f46898j / this.f46906r;
            int iB = (bVar.b() * i2) + this.f46891c.nextInt(i2);
            if (iB < 0) {
                iB = 0;
            }
            int iA = bVar.a() + iB;
            int i3 = this.f46898j;
            if (iA > i3) {
                iB = i3 - bVar.a();
            }
            if (bVar.a() + iB > (bVar.b() + 1) * i2) {
                iB = ((bVar.b() + 1) * i2) - bVar.a();
            }
            bVar.f46916a = iB;
            bVar.f46917b = bVar.a() * (-1);
            bVar.f46918c = Math.max(this.f46891c.nextInt(16), 13);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(b bVar) {
        if (System.currentTimeMillis() - this.f46903o >= 350 && this.f46890b.size() >= this.f46894f) {
            this.f46903o = System.currentTimeMillis();
            int randomStage = bVar.f46922g;
            if (this.f46908t == randomStage) {
                randomStage = getRandomStage();
            }
            bVar.a(randomStage);
            a(bVar);
            this.f46908t = randomStage;
        }
    }

    private boolean a(int i2, int i3) {
        if (!this.f46902n) {
            return false;
        }
        int size = this.f46890b.size();
        for (int i4 = 0; i4 < size; i4++) {
            b bVar = this.f46890b.get(i4);
            if (new Rect(bVar.f46916a, bVar.f46917b, bVar.f46916a + bVar.a(), bVar.f46917b + bVar.a()).contains(i2, i3)) {
                c cVar = this.f46910v;
                if (cVar == null) {
                    return true;
                }
                cVar.a();
                return true;
            }
        }
        return false;
    }
}
