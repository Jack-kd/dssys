package com.sigmob.sdk.base.views.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes4.dex */
public class e extends ImageView implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37052a = "GifDecoderView";

    /* renamed from: b, reason: collision with root package name */
    private boolean f37053b;

    /* renamed from: c, reason: collision with root package name */
    private a f37054c;

    /* renamed from: d, reason: collision with root package name */
    private b f37055d;

    /* renamed from: e, reason: collision with root package name */
    private Thread f37056e;

    /* renamed from: f, reason: collision with root package name */
    private c f37057f;

    /* renamed from: g, reason: collision with root package name */
    private long f37058g;

    /* renamed from: h, reason: collision with root package name */
    private com.sigmob.sdk.base.views.gif.a f37059h;

    /* renamed from: i, reason: collision with root package name */
    private final Handler f37060i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f37061j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f37062k;

    /* renamed from: l, reason: collision with root package name */
    private Bitmap f37063l;

    /* renamed from: m, reason: collision with root package name */
    private final Runnable f37064m;

    /* renamed from: n, reason: collision with root package name */
    private final Runnable f37065n;

    public interface a {
        void a();
    }

    public interface b {
        void a();
    }

    public interface c {
        Bitmap onFrameAvailable(Bitmap bitmap);
    }

    public e(Context context) {
        super(context);
        this.f37054c = null;
        this.f37055d = null;
        this.f37057f = null;
        this.f37058g = -1L;
        this.f37060i = new Handler(Looper.getMainLooper());
        this.f37064m = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.f37063l = null;
                e.this.f37059h = null;
                e.this.f37056e = null;
                e.this.f37062k = false;
            }
        };
        this.f37065n = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.2
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f37063l == null || e.this.f37063l.isRecycled()) {
                    return;
                }
                e eVar = e.this;
                eVar.setImageBitmap(eVar.f37063l);
            }
        };
    }

    private boolean f() {
        return (this.f37053b || this.f37061j) && this.f37059h != null && this.f37056e == null;
    }

    private void g() {
        if (f()) {
            Thread thread = new Thread(this);
            this.f37056e = thread;
            thread.start();
        }
    }

    public boolean b() {
        return this.f37053b;
    }

    public void c() {
        this.f37059h.o();
        a(0);
    }

    public void d() {
        this.f37053b = true;
        g();
    }

    public void e() {
        this.f37053b = false;
        Thread thread = this.f37056e;
        if (thread != null) {
            thread.interrupt();
            this.f37056e = null;
        }
    }

    public int getFrameCount() {
        return this.f37059h.f();
    }

    public long getFramesDisplayDuration() {
        return this.f37058g;
    }

    public int getGifHeight() {
        return this.f37059h.g();
    }

    public int getGifWidth() {
        return this.f37059h.m();
    }

    public b getOnAnimationStop() {
        return this.f37055d;
    }

    public c getOnFrameAvailable() {
        return this.f37057f;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        long jNanoTime;
        a aVar = this.f37054c;
        if (aVar != null) {
            aVar.a();
        }
        do {
            if (!this.f37053b && !this.f37061j) {
                break;
            }
            boolean zA = this.f37059h.a();
            try {
                long jNanoTime2 = System.nanoTime();
                Bitmap bitmapK = this.f37059h.k();
                this.f37063l = bitmapK;
                c cVar = this.f37057f;
                if (cVar != null) {
                    this.f37063l = cVar.onFrameAvailable(bitmapK);
                }
                jNanoTime = (System.nanoTime() - jNanoTime2) / C.MICROS_PER_SECOND;
                try {
                    this.f37060i.post(this.f37065n);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException unused) {
                }
            } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException unused2) {
                jNanoTime = 0;
            }
            this.f37061j = false;
            if (!this.f37053b || !zA) {
                this.f37053b = false;
                break;
            }
            try {
                int iJ = (int) (this.f37059h.j() - jNanoTime);
                if (iJ > 0) {
                    long j2 = this.f37058g;
                    if (j2 <= 0) {
                        j2 = iJ;
                    }
                    Thread.sleep(j2);
                }
            } catch (InterruptedException unused3) {
            }
        } while (this.f37053b);
        if (this.f37062k) {
            this.f37060i.post(this.f37064m);
        }
        this.f37056e = null;
        b bVar = this.f37055d;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void setBytes(byte[] bArr) {
        com.sigmob.sdk.base.views.gif.a aVar = new com.sigmob.sdk.base.views.gif.a();
        this.f37059h = aVar;
        try {
            aVar.a(bArr);
            if (this.f37053b) {
                g();
            } else {
                a(0);
            }
        } catch (Exception unused) {
            this.f37059h = null;
        }
    }

    public void setFramesDisplayDuration(long j2) {
        this.f37058g = j2;
    }

    public void setOnAnimationStart(a aVar) {
        this.f37054c = aVar;
    }

    public void setOnAnimationStop(b bVar) {
        this.f37055d = bVar;
    }

    public void setOnFrameAvailable(c cVar) {
        this.f37057f = cVar;
    }

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37054c = null;
        this.f37055d = null;
        this.f37057f = null;
        this.f37058g = -1L;
        this.f37060i = new Handler(Looper.getMainLooper());
        this.f37064m = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.f37063l = null;
                e.this.f37059h = null;
                e.this.f37056e = null;
                e.this.f37062k = false;
            }
        };
        this.f37065n = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.2
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f37063l == null || e.this.f37063l.isRecycled()) {
                    return;
                }
                e eVar = e.this;
                eVar.setImageBitmap(eVar.f37063l);
            }
        };
    }

    public void a() {
        this.f37053b = false;
        this.f37061j = false;
        this.f37062k = true;
        e();
        this.f37060i.post(this.f37064m);
    }

    public void a(int i2) {
        if (this.f37059h.d() == i2 || !this.f37059h.b(i2 - 1) || this.f37053b) {
            return;
        }
        this.f37061j = true;
        g();
    }
}
