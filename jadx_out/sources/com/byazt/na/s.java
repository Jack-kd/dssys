package com.byazt.na;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.collection.ScatterMapKt;
import com.anythink.core.common.d.i;
import com.byazt.av.ns;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.IntRange;
import com.bytedance.component.sdk.annotation.MainThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends Drawable implements Animatable, Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    public boolean f23477a;
    public n as;

    /* renamed from: b, reason: collision with root package name */
    public boolean f23478b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public final Matrix f23479d;
    public ec di;
    public Paint dy;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList<hp> f23480e;
    public boolean eb;
    public boolean ec;
    public final ValueAnimator.AnimatorUpdateListener gu;
    public String hp;
    public Canvas hq;

    /* renamed from: j, reason: collision with root package name */
    public a f23481j;
    public com.byazt.bd.l jl;
    public sz jx;

    /* renamed from: k, reason: collision with root package name */
    public j f23482k;
    public LottieAnimationView kg;
    public RectF ky;

    /* renamed from: l, reason: collision with root package name */
    public jx f23483l;
    public Rect lv;
    public boolean mp;

    /* renamed from: ms, reason: collision with root package name */
    public Matrix f23484ms;

    /* renamed from: n, reason: collision with root package name */
    public int f23485n;
    public boolean ns;
    public RectF nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f23486o;
    public RectF pu;

    /* renamed from: q, reason: collision with root package name */
    public l f23487q;

    /* renamed from: r, reason: collision with root package name */
    public Rect f23488r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f23489s;
    public com.byazt.at.j sz;

    /* renamed from: u, reason: collision with root package name */
    public Map<String, Typeface> f23490u;
    public Rect ud;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.bd.hp f23491v;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.ze.eb f23492w;
    public Bitmap wv;
    public Matrix xh;
    public boolean xs;
    public String zy;

    public interface hp {
        void hp(a aVar);
    }

    public enum l {
        NONE,
        PLAY,
        RESUME
    }

    public s(LottieAnimationView lottieAnimationView) {
        com.byazt.ze.eb ebVar = new com.byazt.ze.eb();
        this.f23492w = ebVar;
        this.f23477a = true;
        this.eb = false;
        this.f23489s = false;
        this.f23487q = l.NONE;
        this.f23480e = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.na.s.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (s.this.sz != null) {
                    s.this.sz.hp(s.this.f23492w.a());
                }
            }
        };
        this.gu = animatorUpdateListener;
        this.vv = false;
        this.ec = true;
        this.f23485n = 255;
        this.di = ec.AUTOMATIC;
        this.f23486o = false;
        this.f23479d = new Matrix();
        this.mp = false;
        this.kg = lottieAnimationView;
        ebVar.addUpdateListener(animatorUpdateListener);
    }

    private void dy() {
        a aVar = this.f23481j;
        if (aVar == null) {
            return;
        }
        this.f23486o = this.di.hp(Build.VERSION.SDK_INT, aVar.hp(), aVar.l());
    }

    private Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private void ky() {
        if (this.hq != null) {
            return;
        }
        this.hq = new Canvas();
        this.ky = new RectF();
        this.xh = new Matrix();
        this.f23484ms = new Matrix();
        this.ud = new Rect();
        this.nu = new RectF();
        this.dy = new com.byazt.nv.hp();
        this.lv = new Rect();
        this.f23488r = new Rect();
        this.pu = new RectF();
    }

    private boolean lv() {
        return this.f23477a || this.eb;
    }

    private com.byazt.bd.hp pu() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f23491v == null) {
            com.byazt.bd.hp hpVar = new com.byazt.bd.hp(getCallback(), this.f23483l);
            this.f23491v = hpVar;
            String str = this.hp;
            if (str != null) {
                hpVar.hp(str);
            }
        }
        return this.f23491v;
    }

    private com.byazt.bd.l r() {
        a aVar = this.f23481j;
        if (aVar == null) {
            return null;
        }
        com.byazt.bd.l lVar = this.jl;
        if (lVar != null && !lVar.hp(getContext())) {
            this.jl = null;
        }
        if (this.jl == null) {
            this.jl = new com.byazt.bd.l(getCallback(), this.zy, this.f23482k, aVar.xs());
        }
        return this.jl;
    }

    private boolean xh() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        return (parent instanceof ViewGroup) && !((ViewGroup) parent).getClipChildren();
    }

    public boolean a() {
        return this.vv;
    }

    public boolean b() {
        if (isVisible()) {
            return this.f23492w.isRunning();
        }
        l lVar = this.f23487q;
        return lVar == l.PLAY || lVar == l.RESUME;
    }

    public boolean cx() {
        com.byazt.ze.eb ebVar = this.f23492w;
        if (ebVar == null) {
            return false;
        }
        return ebVar.isRunning();
    }

    public a d() {
        return this.f23481j;
    }

    public sz di() {
        return this.jx;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        w.hp("Drawable#draw");
        try {
            if (this.f23486o) {
                hp(canvas, this.sz);
            } else {
                hp(canvas);
            }
        } catch (Throwable th) {
            com.byazt.ze.a.l("Lottie crashed in draw!", th);
        }
        this.mp = false;
        w.l("Drawable#draw");
    }

    public boolean e() {
        return this.f23478b;
    }

    public ec eb() {
        return this.f23486o ? ec.SOFTWARE : ec.HARDWARE;
    }

    public void ec() {
        this.f23492w.removeAllListeners();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f23485n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        a aVar = this.f23481j;
        if (aVar == null) {
            return -1;
        }
        return aVar.j().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        a aVar = this.f23481j;
        if (aVar == null) {
            return -1;
        }
        return aVar.j().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void gu() {
        if (this.f23492w.isRunning()) {
            this.f23492w.cancel();
            if (!isVisible()) {
                this.f23487q = l.NONE;
            }
        }
        this.f23481j = null;
        com.byazt.at.j jVar = this.sz;
        if (jVar != null) {
            hp(jVar);
        }
        this.sz = null;
        this.jl = null;
        this.f23492w.s();
        invalidateSelf();
    }

    public void hq() {
        this.f23480e.clear();
        this.f23492w.zy();
        if (isVisible()) {
            return;
        }
        this.f23487q = l.NONE;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.mp) {
            return;
        }
        this.mp = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return cx();
    }

    public boolean j() {
        return this.ec;
    }

    @MainThread
    public void jl() {
        if (this.sz == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.6
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.jl();
                }
            });
            return;
        }
        dy();
        if (lv() || ns() == 0) {
            if (isVisible()) {
                this.f23492w.gu();
                this.f23487q = l.NONE;
            } else {
                this.f23487q = l.PLAY;
            }
        }
        if (lv()) {
            return;
        }
        jx((int) (xs() < 0.0f ? v() : u()));
        this.f23492w.jl();
        if (isVisible()) {
            return;
        }
        this.f23487q = l.NONE;
    }

    public com.byazt.at.j jx() {
        return this.sz;
    }

    @MainThread
    public void k() {
        if (this.sz == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.7
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.k();
                }
            });
            return;
        }
        dy();
        if (lv() || ns() == 0) {
            if (isVisible()) {
                this.f23492w.k();
                this.f23487q = l.NONE;
            } else {
                this.f23487q = l.RESUME;
            }
        }
        if (lv()) {
            return;
        }
        jx((int) (xs() < 0.0f ? v() : u()));
        this.f23492w.jl();
        if (isVisible()) {
            return;
        }
        this.f23487q = l.NONE;
    }

    @SuppressLint({"WrongConstant"})
    public int n() {
        return this.f23492w.getRepeatMode();
    }

    public int ns() {
        return this.f23492w.getRepeatCount();
    }

    public RectF nu() {
        return this.ky;
    }

    public boolean o() {
        return this.f23490u == null && this.jx == null && this.f23481j.v().size() > 0;
    }

    public vv q() {
        a aVar = this.f23481j;
        if (aVar != null) {
            return aVar.jx();
        }
        return null;
    }

    public boolean s() {
        return this.f23486o;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = ScatterMapKt.Sentinel) int i2) {
        this.f23485n = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        com.byazt.ze.a.l("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z2, z3);
        if (z2) {
            l lVar = this.f23487q;
            if (lVar == l.PLAY) {
                jl();
                return visible;
            }
            if (lVar == l.RESUME) {
                k();
                return visible;
            }
        } else {
            if (this.f23492w.isRunning()) {
                hq();
                this.f23487q = l.RESUME;
                return visible;
            }
            if (zIsVisible) {
                this.f23487q = l.NONE;
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        jl();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        zy();
    }

    public int sz() {
        return (int) this.f23492w.eb();
    }

    public float u() {
        return this.f23492w.u();
    }

    public float ud() {
        return this.f23492w.a();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public float v() {
        return this.f23492w.v();
    }

    public void vv() {
        this.f23492w.removeAllUpdateListeners();
        this.f23492w.addUpdateListener(this.gu);
    }

    public String w() {
        return this.zy;
    }

    public void wv() {
        this.f23480e.clear();
        this.f23492w.cancel();
        if (isVisible()) {
            return;
        }
        this.f23487q = l.NONE;
    }

    public float xs() {
        return this.f23492w.e();
    }

    @MainThread
    public void zy() {
        this.f23480e.clear();
        this.f23492w.jl();
        if (isVisible()) {
            return;
        }
        this.f23487q = l.NONE;
    }

    public void a(boolean z2) {
        this.f23489s = z2;
    }

    public void eb(boolean z2) {
        this.eb = z2;
    }

    public void hp(n nVar) {
        this.as = nVar;
    }

    public void j(boolean z2) {
        if (this.cx == z2) {
            return;
        }
        this.cx = z2;
        com.byazt.at.j jVar = this.sz;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    public void jx(boolean z2) {
        this.ns = z2;
        a aVar = this.f23481j;
        if (aVar != null) {
            aVar.l(z2);
        }
    }

    public LottieAnimationView l() {
        return this.kg;
    }

    public void s(boolean z2) {
        this.f23492w.jx(z2);
    }

    public void w(boolean z2) {
        this.f23478b = z2;
    }

    public q a(String str) {
        a aVar = this.f23481j;
        if (aVar == null) {
            return null;
        }
        return aVar.xs().get(str);
    }

    public void eb(String str) {
        this.hp = str;
        com.byazt.bd.hp hpVarPu = pu();
        if (hpVarPu != null) {
            hpVarPu.hp(str);
        }
    }

    public n hp() {
        return this.as;
    }

    public void l(boolean z2) {
        this.vv = z2;
    }

    public void w(int i2) {
        this.f23492w.setRepeatCount(i2);
    }

    public void hp(boolean z2, Context context) {
        if (this.xs == z2) {
            return;
        }
        this.xs = z2;
        if (this.f23481j != null) {
            hp(context);
        }
    }

    public void l(final int i2) {
        if (this.f23481j == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.10
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.l(i2);
                }
            });
        } else {
            this.f23492w.l(i2 + 0.99f);
        }
    }

    public Bitmap w(String str) {
        com.byazt.bd.l lVarR = r();
        if (lVarR != null) {
            return lVarR.hp(str);
        }
        return null;
    }

    public void jx(final String str) {
        a aVar = this.f23481j;
        if (aVar == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.13
                @Override // com.byazt.na.s.hp
                public void hp(a aVar2) {
                    s.this.jx(str);
                }
            });
            return;
        }
        com.byazt.yg.eb ebVarJx = aVar.jx(str);
        if (ebVarJx != null) {
            l((int) (ebVarJx.hp + ebVarJx.f27907l));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + i.f2495E);
    }

    public void j(final String str) {
        a aVar = this.f23481j;
        if (aVar == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.2
                @Override // com.byazt.na.s.hp
                public void hp(a aVar2) {
                    s.this.j(str);
                }
            });
            return;
        }
        com.byazt.yg.eb ebVarJx = aVar.jx(str);
        if (ebVarJx != null) {
            int i2 = (int) ebVarJx.hp;
            hp(i2, ((int) ebVarJx.f27907l) + i2);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + i.f2495E);
        }
    }

    public void l(final float f2) {
        a aVar = this.f23481j;
        if (aVar == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.11
                @Override // com.byazt.na.s.hp
                public void hp(a aVar2) {
                    s.this.l(f2);
                }
            });
        } else {
            this.f23492w.l(com.byazt.ze.q.hp(aVar.a(), this.f23481j.eb(), f2));
        }
    }

    public void hp(boolean z2) {
        if (z2 != this.ec) {
            this.ec = z2;
            com.byazt.at.j jVar = this.sz;
            if (jVar != null) {
                jVar.l(z2);
            }
            invalidateSelf();
        }
    }

    public void jx(float f2) {
        this.f23492w.jx(f2);
    }

    public void l(final String str) {
        a aVar = this.f23481j;
        if (aVar == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.12
                @Override // com.byazt.na.s.hp
                public void hp(a aVar2) {
                    s.this.l(str);
                }
            });
            return;
        }
        com.byazt.yg.eb ebVarJx = aVar.jx(str);
        if (ebVarJx != null) {
            hp((int) ebVarJx.hp);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + i.f2495E);
    }

    public void jx(final int i2) {
        if (this.f23481j == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.4
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.jx(i2);
                }
            });
        } else {
            this.f23492w.hp(i2);
        }
    }

    public void j(final float f2) {
        if (this.f23481j == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.5
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.j(f2);
                }
            });
            return;
        }
        w.hp("Drawable#setProgress");
        this.f23492w.hp(this.f23481j.hp(f2));
        w.l("Drawable#setProgress");
    }

    public void hp(String str) {
        this.zy = str;
    }

    public boolean hp(a aVar, Context context) {
        if (this.f23481j == aVar) {
            return false;
        }
        this.mp = true;
        gu();
        this.f23481j = aVar;
        hp(context);
        this.f23492w.hp(aVar);
        j(this.f23492w.getAnimatedFraction());
        Iterator it = new ArrayList(this.f23480e).iterator();
        while (it.hasNext()) {
            hp hpVar = (hp) it.next();
            if (hpVar != null) {
                hpVar.hp(aVar);
            }
            it.remove();
        }
        this.f23480e.clear();
        aVar.l(this.ns);
        dy();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void l(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f23492w.removeUpdateListener(animatorUpdateListener);
    }

    public void l(Animator.AnimatorListener animatorListener) {
        this.f23492w.removeListener(animatorListener);
    }

    private void l(int i2, int i3) {
        Bitmap bitmap = this.wv;
        if (bitmap != null && bitmap.getWidth() >= i2 && this.wv.getHeight() >= i3) {
            if (this.wv.getWidth() > i2 || this.wv.getHeight() > i3) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.wv, 0, 0, i2, i3);
                this.wv = bitmapCreateBitmap;
                this.hq.setBitmap(bitmapCreateBitmap);
                this.mp = true;
                return;
            }
            return;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        this.wv = bitmapCreateBitmap2;
        this.hq.setBitmap(bitmapCreateBitmap2);
        this.mp = true;
    }

    public void j(int i2) {
        this.f23492w.setRepeatMode(i2);
    }

    public void hp(ec ecVar) {
        this.di = ecVar;
        dy();
    }

    private void hp(Context context) {
        a aVar = this.f23481j;
        if (aVar == null) {
            return;
        }
        com.byazt.at.j jVar = this.sz;
        if (jVar != null) {
            hp(jVar);
        }
        com.byazt.at.j jVar2 = new com.byazt.at.j(this, ns.hp(aVar), aVar.k(), aVar, context);
        this.sz = jVar2;
        if (this.cx) {
            jVar2.hp(true);
        }
        this.sz.l(this.ec);
    }

    private void hp(com.byazt.at.j jVar) {
        if (jVar != null) {
            jVar.jx();
            List<com.byazt.at.jx> listK = jVar.k();
            if (listK != null) {
                for (com.byazt.at.jx jxVar : listK) {
                    if (jxVar instanceof com.byazt.at.j) {
                        hp((com.byazt.at.j) jxVar);
                    } else if (jxVar != null) {
                        jxVar.jx();
                    }
                }
            }
        }
    }

    public void hp(final int i2) {
        if (this.f23481j == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.8
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.hp(i2);
                }
            });
        } else {
            this.f23492w.hp(i2);
        }
    }

    public void hp(final float f2) {
        a aVar = this.f23481j;
        if (aVar == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.9
                @Override // com.byazt.na.s.hp
                public void hp(a aVar2) {
                    s.this.hp(f2);
                }
            });
        } else {
            hp((int) com.byazt.ze.q.hp(aVar.a(), this.f23481j.eb(), f2));
        }
    }

    public void hp(final int i2, final int i3) {
        if (this.f23481j == null) {
            this.f23480e.add(new hp() { // from class: com.byazt.na.s.3
                @Override // com.byazt.na.s.hp
                public void hp(a aVar) {
                    s.this.hp(i2, i3);
                }
            });
        } else {
            this.f23492w.hp(i2, i3 + 0.99f);
        }
    }

    public void hp(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f23492w.addUpdateListener(animatorUpdateListener);
    }

    public void hp(Animator.AnimatorListener animatorListener) {
        this.f23492w.addListener(animatorListener);
    }

    public void hp(Boolean bool) {
        this.f23477a = bool.booleanValue();
    }

    public void hp(j jVar) {
        this.f23482k = jVar;
        com.byazt.bd.l lVar = this.jl;
        if (lVar != null) {
            lVar.hp(jVar);
        }
    }

    public void hp(jx jxVar) {
        this.f23483l = jxVar;
        com.byazt.bd.hp hpVar = this.f23491v;
        if (hpVar != null) {
            hpVar.hp(jxVar);
        }
    }

    public void hp(Map<String, Typeface> map) {
        if (map == this.f23490u) {
            return;
        }
        this.f23490u = map;
        invalidateSelf();
    }

    public void hp(sz szVar) {
        this.jx = szVar;
    }

    public Bitmap hp(String str, Bitmap bitmap) {
        com.byazt.bd.l lVarR = r();
        if (lVarR == null) {
            com.byazt.ze.a.l("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapHp = lVarR.hp(str, bitmap);
        invalidateSelf();
        return bitmapHp;
    }

    public Typeface hp(com.byazt.yg.jx jxVar) {
        Map<String, Typeface> map = this.f23490u;
        if (map != null) {
            String strHp = jxVar.hp();
            if (map.containsKey(strHp)) {
                return map.get(strHp);
            }
            String strL = jxVar.l();
            if (map.containsKey(strL)) {
                return map.get(strL);
            }
            String str = jxVar.hp() + "-" + jxVar.jx();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.byazt.bd.hp hpVarPu = pu();
        if (hpVarPu != null) {
            return hpVarPu.hp(jxVar);
        }
        return null;
    }

    private void hp(Canvas canvas) {
        com.byazt.at.j jVar = this.sz;
        a aVar = this.f23481j;
        if (jVar == null || aVar == null) {
            return;
        }
        this.f23479d.reset();
        if (!getBounds().isEmpty()) {
            this.f23479d.preScale(r2.width() / aVar.j().width(), r2.height() / aVar.j().height());
            this.f23479d.preTranslate(r2.left, r2.top);
        }
        jVar.hp(canvas, this.f23479d, this.f23485n);
    }

    private void hp(Canvas canvas, com.byazt.at.j jVar) {
        if (this.f23481j == null || jVar == null) {
            return;
        }
        ky();
        canvas.getMatrix(this.xh);
        canvas.getClipBounds(this.ud);
        hp(this.ud, this.nu);
        this.xh.mapRect(this.nu);
        hp(this.nu, this.ud);
        if (this.ec) {
            this.ky.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            jVar.hp(this.ky, (Matrix) null, false);
        }
        this.xh.mapRect(this.ky);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        hp(this.ky, fWidth, fHeight);
        if (!xh()) {
            RectF rectF = this.ky;
            Rect rect = this.ud;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.ky.width());
        int iCeil2 = (int) Math.ceil(this.ky.height());
        if (iCeil == 0 || iCeil2 == 0) {
            return;
        }
        l(iCeil, iCeil2);
        if (this.mp) {
            this.f23479d.set(this.xh);
            this.f23479d.preScale(fWidth, fHeight);
            Matrix matrix = this.f23479d;
            RectF rectF2 = this.ky;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.wv.eraseColor(0);
            jVar.hp(this.hq, this.f23479d, this.f23485n);
            this.xh.invert(this.f23484ms);
            this.f23484ms.mapRect(this.pu, this.ky);
            hp(this.pu, this.f23488r);
        }
        this.lv.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.wv, this.lv, this.f23488r, this.dy);
    }

    private void hp(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void hp(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void hp(RectF rectF, float f2, float f3) {
        rectF.set(rectF.left * f2, rectF.top * f3, rectF.right * f2, rectF.bottom * f3);
    }
}
