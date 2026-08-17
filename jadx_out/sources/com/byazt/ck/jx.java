package com.byazt.ck;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.mh.q;
import com.byazt.ymw.u;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1285, 30})
/* loaded from: classes2.dex */
public abstract class jx<Decoder extends q<?, ?>> extends Drawable implements q.hp, l {
    public static final String hp = "jx";

    /* renamed from: a, reason: collision with root package name */
    public final Set<Object> f18888a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18889e;
    public Bitmap eb;
    public final Set<WeakReference<Drawable.Callback>> gu;

    /* renamed from: j, reason: collision with root package name */
    public final DrawFilter f18890j;
    public boolean jl;
    public final Decoder jx;

    /* renamed from: l, reason: collision with root package name */
    public final Paint f18891l;

    /* renamed from: q, reason: collision with root package name */
    public final Runnable f18892q;

    /* renamed from: s, reason: collision with root package name */
    public final Handler f18893s;

    /* renamed from: w, reason: collision with root package name */
    public final Matrix f18894w;

    public jx(com.byazt.vj.l lVar) {
        Paint paint = new Paint();
        this.f18891l = paint;
        this.f18890j = new PaintFlagsDrawFilter(0, 3);
        this.f18894w = new Matrix();
        this.f18888a = new HashSet();
        this.f18893s = new Handler(Looper.getMainLooper()) { // from class: com.byazt.ck.jx.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                int i3 = 0;
                if (i2 == 1) {
                    ArrayList arrayList = new ArrayList(jx.this.f18888a);
                    int size = arrayList.size();
                    while (i3 < size) {
                        arrayList.get(i3);
                        i3++;
                    }
                    return;
                }
                if (i2 != 2) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList(jx.this.f18888a);
                int size2 = arrayList2.size();
                while (i3 < size2) {
                    arrayList2.get(i3);
                    i3++;
                }
            }
        };
        this.f18892q = new Runnable() { // from class: com.byazt.ck.jx.2
            @Override // java.lang.Runnable
            public void run() {
                jx.this.invalidateSelf();
            }
        };
        this.f18889e = true;
        this.gu = new HashSet();
        this.jl = false;
        paint.setAntiAlias(true);
        this.jx = (Decoder) l(lVar, this);
    }

    private void j() {
        this.jx.l(this);
        if (this.f18889e) {
            this.jx.q();
        } else {
            this.jx.w();
        }
    }

    private void jx() {
        this.jx.hp(this);
        if (this.f18889e) {
            this.jx.s();
        } else {
            if (this.jx.e()) {
                return;
            }
            this.jx.s();
        }
    }

    private void w() {
        ArrayList arrayList = new ArrayList();
        Drawable.Callback callback = getCallback();
        int i2 = 0;
        boolean z2 = false;
        for (WeakReference weakReference : new HashSet(this.gu)) {
            Drawable.Callback callback2 = (Drawable.Callback) weakReference.get();
            if (callback2 == null) {
                arrayList.add(weakReference);
            } else if (callback2 == callback) {
                z2 = true;
            } else {
                callback2.invalidateDrawable(this);
            }
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            this.gu.remove((WeakReference) obj);
        }
        if (z2) {
            return;
        }
        this.gu.add(new WeakReference<>(callback));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.eb;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.setDrawFilter(this.f18890j);
        canvas.drawBitmap(this.eb, this.f18894w, this.f18891l);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.Callback getCallback() {
        return super.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.jl) {
            return -1;
        }
        try {
            return this.jx.a().height();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.jl) {
            return -1;
        }
        try {
            return this.jx.a().width();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        Iterator it = new HashSet(this.gu).iterator();
        while (it.hasNext()) {
            Drawable.Callback callback = (Drawable.Callback) ((WeakReference) it.next()).get();
            if (callback != null && callback != getCallback()) {
                callback.invalidateDrawable(this);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.jx.e();
    }

    public abstract Decoder l(com.byazt.vj.l lVar, q.hp hpVar);

    @Override // com.byazt.mh.q.hp
    public void l(ByteBuffer byteBuffer) {
        if (isRunning()) {
            Bitmap bitmap = this.eb;
            if (bitmap == null || bitmap.isRecycled()) {
                this.eb = Bitmap.createBitmap(this.jx.a().width() / this.jx.jl(), this.jx.a().height() / this.jx.jl(), Bitmap.Config.ARGB_4444);
            }
            byteBuffer.rewind();
            if (byteBuffer.remaining() < this.eb.getByteCount()) {
                u.l(hp, "onRender:Buffer not large enough for pixels");
            } else {
                this.eb.copyPixelsFromBuffer(byteBuffer);
                this.f18893s.post(this.f18892q);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f18891l.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i2, int i3, int i4, int i5) {
        super.setBounds(i2, i3, i4, i5);
        boolean zL = this.jx.l(getBounds().width(), getBounds().height());
        this.f18894w.setScale(((getBounds().width() * 1.0f) * this.jx.jl()) / this.jx.a().width(), ((getBounds().height() * 1.0f) * this.jx.jl()) / this.jx.a().height());
        if (zL) {
            this.eb = Bitmap.createBitmap(this.jx.a().width() / this.jx.jl(), this.jx.a().height() / this.jx.jl(), Bitmap.Config.ARGB_4444);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f18891l.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        w();
        if (this.f18889e) {
            if (z2) {
                if (!isRunning()) {
                    jx();
                }
            } else if (isRunning()) {
                j();
            }
        }
        return super.setVisible(z2, z3);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.jx.e()) {
            this.jx.q();
        }
        this.jx.gu();
        jx();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        j();
    }

    @Override // com.byazt.mh.q.hp
    public void hp() {
        Message.obtain(this.f18893s, 1).sendToTarget();
    }

    @Override // com.byazt.mh.q.hp
    public void l() {
        Message.obtain(this.f18893s, 2).sendToTarget();
    }
}
