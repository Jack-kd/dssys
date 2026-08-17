package com.byazt.at;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.byazt.at.s;
import com.byazt.dt.hp;
import com.byazt.dt.u;
import com.byazt.mo.s;
import com.byazt.na.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 30})
/* loaded from: classes2.dex */
public abstract class jx implements com.byazt.fj.w, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public BlurMaskFilter f18212a;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.dt.j f18213b;
    public com.byazt.dt.s cx;

    /* renamed from: d, reason: collision with root package name */
    public List<jx> f18214d;
    public jx di;
    public final Matrix dy;
    public final RectF ec;
    public final Matrix hp;
    public boolean hq;

    /* renamed from: j, reason: collision with root package name */
    public final u f18216j;
    public final s jx;

    /* renamed from: k, reason: collision with root package name */
    public final Paint f18217k;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.na.s f18218l;
    public float lv;

    /* renamed from: n, reason: collision with root package name */
    public final RectF f18219n;
    public final String ns;
    public Paint nu;

    /* renamed from: o, reason: collision with root package name */
    public jx f18220o;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18222s;
    public final RectF sz;

    /* renamed from: u, reason: collision with root package name */
    public final Paint f18223u;
    public boolean ud;

    /* renamed from: v, reason: collision with root package name */
    public final Paint f18224v;
    public final RectF vv;

    /* renamed from: w, reason: collision with root package name */
    public float f18225w;
    public final List<com.byazt.dt.hp<?, ?>> wv;
    public final RectF xs;
    public final Paint zy;
    public final Handler eb = new Handler(Looper.getMainLooper());

    /* renamed from: q, reason: collision with root package name */
    public final Path f18221q = new Path();

    /* renamed from: e, reason: collision with root package name */
    public final Matrix f18215e = new Matrix();
    public final Matrix gu = new Matrix();
    public final Paint jl = new com.byazt.nv.hp(1);

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 16})
    /* renamed from: com.byazt.at.jx$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        /* renamed from: l, reason: collision with root package name */
        public static final /* synthetic */ int[] f18226l;

        static {
            int[] iArr = new int[s.hp.values().length];
            f18226l = iArr;
            try {
                iArr[s.hp.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18226l[s.hp.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18226l[s.hp.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18226l[s.hp.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[s.hp.values().length];
            hp = iArr2;
            try {
                iArr2[s.hp.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[s.hp.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[s.hp.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                hp[s.hp.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                hp[s.hp.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                hp[s.hp.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                hp[s.hp.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public jx(com.byazt.na.s sVar, s sVar2) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.zy = new com.byazt.nv.hp(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f18217k = new com.byazt.nv.hp(1, mode2);
        com.byazt.nv.hp hpVar = new com.byazt.nv.hp(1);
        this.f18224v = hpVar;
        this.f18223u = new com.byazt.nv.hp(PorterDuff.Mode.CLEAR);
        this.xs = new RectF();
        this.vv = new RectF();
        this.ec = new RectF();
        this.sz = new RectF();
        this.f18219n = new RectF();
        this.hp = new Matrix();
        this.wv = new ArrayList();
        this.hq = true;
        this.f18225w = 0.0f;
        this.dy = new Matrix();
        this.lv = 1.0f;
        this.f18218l = sVar;
        this.jx = sVar2;
        this.ns = sVar2.a() + "#draw";
        if (sVar2.jl() == s.l.INVERT) {
            hpVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            hpVar.setXfermode(new PorterDuffXfermode(mode));
        }
        u uVarE = sVar2.v().e();
        this.f18216j = uVarE;
        uVarE.hp((hp.InterfaceC0210hp) this);
        if (sVar2.e() != null && !sVar2.e().isEmpty()) {
            com.byazt.dt.s sVar3 = new com.byazt.dt.s(sVar2.e());
            this.cx = sVar3;
            Iterator<com.byazt.dt.hp<com.byazt.mo.k, Path>> it = sVar3.l().iterator();
            while (it.hasNext()) {
                it.next().hp(this);
            }
            for (com.byazt.dt.hp<Integer, Integer> hpVar2 : this.cx.jx()) {
                hp(hpVar2);
                hpVar2.hp(this);
            }
        }
        k();
    }

    private void k() {
        if (this.jx.j().isEmpty()) {
            l(true);
            return;
        }
        com.byazt.dt.j jVar = new com.byazt.dt.j(this.jx.j());
        this.f18213b = jVar;
        jVar.hp();
        this.f18213b.hp(new hp.InterfaceC0210hp() { // from class: com.byazt.at.jx.1
            @Override // com.byazt.dt.hp.InterfaceC0210hp
            public void hp() {
                jx jxVar = jx.this;
                jxVar.l(jxVar.f18213b.q() == 1.0f);
            }
        });
        l(this.f18213b.eb().floatValue() == 1.0f);
        hp(this.f18213b);
    }

    private boolean u() {
        if (this.cx.l().isEmpty()) {
            return false;
        }
        for (int i2 = 0; i2 < this.cx.hp().size(); i2++) {
            if (this.cx.hp().get(i2).hp() != s.hp.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void v() {
        this.f18218l.invalidateSelf();
    }

    private void xs() {
        if (this.f18214d != null) {
            return;
        }
        if (this.f18220o == null) {
            this.f18214d = Collections.EMPTY_LIST;
            return;
        }
        this.f18214d = new ArrayList();
        for (jx jxVar = this.f18220o; jxVar != null; jxVar = jxVar.f18220o) {
            this.f18214d.add(jxVar);
        }
    }

    public Matrix a() {
        return this.dy;
    }

    public boolean e() {
        return this.hq;
    }

    public String eb() {
        s sVar = this.jx;
        if (sVar != null) {
            return sVar.eb();
        }
        return null;
    }

    public String gu() {
        return this.jx.a();
    }

    @Override // com.byazt.fj.jx
    public void hp(List<com.byazt.fj.jx> list, List<com.byazt.fj.jx> list2) {
    }

    public s j() {
        return this.jx;
    }

    public com.byazt.mo.hp jl() {
        return this.jx.cx();
    }

    public boolean l() {
        return this.f18222s;
    }

    public boolean q() {
        com.byazt.dt.s sVar = this.cx;
        return (sVar == null || sVar.l().isEmpty()) ? false : true;
    }

    public float s() {
        return this.lv;
    }

    public boolean w() {
        return this.di != null;
    }

    public com.byazt.av.e zy() {
        return this.jx.b();
    }

    private void j(Canvas canvas, Matrix matrix, com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar, com.byazt.dt.hp<Integer, Integer> hpVar2) {
        com.byazt.ze.e.hp(canvas, this.xs, this.zy);
        this.f18221q.set(hpVar.eb());
        this.f18221q.transform(matrix);
        this.jl.setAlpha((int) (hpVar2.eb().intValue() * 2.55f));
        canvas.drawPath(this.f18221q, this.jl);
        canvas.restore();
    }

    private void w(Canvas canvas, Matrix matrix, com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar, com.byazt.dt.hp<Integer, Integer> hpVar2) {
        com.byazt.ze.e.hp(canvas, this.xs, this.zy);
        canvas.drawRect(this.xs, this.jl);
        this.f18217k.setAlpha((int) (hpVar2.eb().intValue() * 2.55f));
        this.f18221q.set(hpVar.eb());
        this.f18221q.transform(matrix);
        canvas.drawPath(this.f18221q, this.f18217k);
        canvas.restore();
    }

    public void jx() {
        this.f18222s = true;
    }

    public void l(jx jxVar) {
        this.f18220o = jxVar;
    }

    private void jx(float f2) {
        this.f18218l.d().jx().hp(this.jx.a(), f2);
    }

    private void l(RectF rectF, Matrix matrix) {
        if (w() && this.jx.jl() != s.l.INVERT) {
            this.sz.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.di.hp(this.sz, matrix, true);
            if (rectF.intersect(this.sz)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public void hp(Runnable runnable) {
        this.eb.post(runnable);
    }

    public static jx hp(j jVar, s sVar, com.byazt.na.s sVar2, com.byazt.na.a aVar, Context context) {
        switch (AnonymousClass2.hp[sVar.gu().ordinal()]) {
            case 1:
                return new e(sVar2, sVar, jVar, aVar);
            case 2:
                return new j(sVar2, sVar, aVar.l(sVar.eb()), aVar, context);
            case 3:
                return new gu(sVar2, sVar);
            case 4:
                if (hp(sVar2, sVar, "text:")) {
                    return new a(sVar2, sVar, context);
                }
                if (hp(sVar2, sVar, "videoview:")) {
                    q.hp hpVarHp = hp(sVar2, sVar);
                    if (hpVarHp != null) {
                        q.hp.C0316hp c0316hp = hpVarHp.hp;
                        if (c0316hp != null && c0316hp.hp > 0.0f) {
                            return new w(sVar2, sVar, context, c0316hp);
                        }
                        if (hpVarHp.f23466l) {
                            return new l(sVar2, sVar, context);
                        }
                        return new k(sVar2, sVar, context);
                    }
                    return new k(sVar2, sVar, context);
                }
                if (hp(sVar2, sVar, "animview:")) {
                    return new hp(sVar2, sVar, context);
                }
                if (hp(sVar2, sVar, "view:")) {
                    return new zy(sVar2, sVar, context);
                }
                eb ebVar = new eb(sVar2, sVar);
                ebVar.k();
                return ebVar;
            case 5:
                return new q(sVar2, sVar);
            case 6:
                return new jl(sVar2, sVar);
            default:
                com.byazt.ze.a.l("Unknown layer type " + sVar.gu());
                return null;
        }
    }

    private void jx(Canvas canvas, Matrix matrix, com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar, com.byazt.dt.hp<Integer, Integer> hpVar2) {
        com.byazt.ze.e.hp(canvas, this.xs, this.f18217k);
        canvas.drawRect(this.xs, this.jl);
        this.f18217k.setAlpha((int) (hpVar2.eb().intValue() * 2.55f));
        this.f18221q.set(hpVar.eb());
        this.f18221q.transform(matrix);
        canvas.drawPath(this.f18221q, this.f18217k);
        canvas.restore();
    }

    public void l(Canvas canvas, Matrix matrix, int i2) {
        hp(i2);
    }

    private void l(Canvas canvas, Matrix matrix, com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar, com.byazt.dt.hp<Integer, Integer> hpVar2) {
        com.byazt.ze.e.hp(canvas, this.xs, this.jl);
        canvas.drawRect(this.xs, this.jl);
        this.f18221q.set(hpVar.eb());
        this.f18221q.transform(matrix);
        this.jl.setAlpha((int) (hpVar2.eb().intValue() * 2.55f));
        canvas.drawPath(this.f18221q, this.f18217k);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z2) {
        if (z2 != this.hq) {
            this.hq = z2;
            v();
        }
    }

    public BlurMaskFilter l(float f2) {
        if (this.f18225w == f2) {
            return this.f18212a;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.f18212a = blurMaskFilter;
        this.f18225w = f2;
        return blurMaskFilter;
    }

    private static q.hp hp(com.byazt.na.s sVar, s sVar2) {
        com.byazt.na.q qVarA;
        if (sVar == null || sVar2 == null || (qVarA = sVar.a(sVar2.eb())) == null) {
            return null;
        }
        return qVarA.e();
    }

    private static boolean hp(com.byazt.na.s sVar, s sVar2, String str) {
        com.byazt.na.q qVarA;
        if (sVar == null || sVar2 == null || str == null || (qVarA = sVar.a(sVar2.eb())) == null) {
            return false;
        }
        return str.equals(qVarA.k());
    }

    public void hp(boolean z2) {
        if (z2 && this.nu == null) {
            this.nu = new com.byazt.nv.hp();
        }
        this.ud = z2;
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        v();
    }

    public void hp(jx jxVar) {
        this.di = jxVar;
    }

    public void hp(com.byazt.dt.hp<?, ?> hpVar) {
        if (hpVar == null) {
            return;
        }
        this.wv.add(hpVar);
    }

    @Override // com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        this.xs.set(0.0f, 0.0f, 0.0f, 0.0f);
        xs();
        this.hp.set(matrix);
        if (z2) {
            List<jx> list = this.f18214d;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.hp.preConcat(this.f18214d.get(size).f18216j.j());
                }
            } else {
                jx jxVar = this.f18220o;
                if (jxVar != null) {
                    this.hp.preConcat(jxVar.f18216j.j());
                }
            }
        }
        this.hp.preConcat(this.f18216j.j());
    }

    @Override // com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        Paint paint;
        Integer numEb;
        com.byazt.na.w.hp(this.ns);
        if (this.hq && !this.jx.ns()) {
            xs();
            com.byazt.na.w.hp("Layer#parentMatrix");
            this.dy.set(matrix);
            this.f18215e.reset();
            this.f18215e.set(matrix);
            for (int size = this.f18214d.size() - 1; size >= 0; size--) {
                this.f18215e.preConcat(this.f18214d.get(size).f18216j.j());
            }
            com.byazt.na.w.l("Layer#parentMatrix");
            com.byazt.dt.hp<?, Integer> hpVarHp = this.f18216j.hp();
            int iIntValue = (int) ((((i2 / 255.0f) * ((hpVarHp == null || (numEb = hpVarHp.eb()) == null) ? 100 : numEb.intValue())) / 100.0f) * 255.0f);
            if (!w() && !q()) {
                this.f18215e.preConcat(this.f18216j.j());
                com.byazt.na.w.hp("Layer#drawLayer");
                l(canvas, this.f18215e, iIntValue);
                com.byazt.na.w.l("Layer#drawLayer");
                jx(com.byazt.na.w.l(this.ns));
                return;
            }
            com.byazt.na.w.hp("Layer#computeBounds");
            hp(this.xs, this.f18215e, false);
            l(this.xs, matrix);
            this.f18215e.preConcat(this.f18216j.j());
            hp(this.xs, this.f18215e);
            this.vv.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            canvas.getMatrix(this.gu);
            if (!this.gu.isIdentity()) {
                Matrix matrix2 = this.gu;
                matrix2.invert(matrix2);
                this.gu.mapRect(this.vv);
            }
            if (!this.xs.intersect(this.vv)) {
                this.xs.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            com.byazt.na.w.l("Layer#computeBounds");
            if (this.xs.width() >= 1.0f && this.xs.height() >= 1.0f) {
                com.byazt.na.w.hp("Layer#saveLayer");
                this.jl.setAlpha(255);
                com.byazt.ze.e.hp(canvas, this.xs, this.jl);
                com.byazt.na.w.l("Layer#saveLayer");
                hp(canvas);
                com.byazt.na.w.hp("Layer#drawLayer");
                l(canvas, this.f18215e, iIntValue);
                com.byazt.na.w.l("Layer#drawLayer");
                if (q()) {
                    hp(canvas, this.f18215e);
                }
                if (w()) {
                    com.byazt.na.w.hp("Layer#drawMatte");
                    com.byazt.na.w.hp("Layer#saveLayer");
                    com.byazt.ze.e.hp(canvas, this.xs, this.f18224v, 19);
                    com.byazt.na.w.l("Layer#saveLayer");
                    hp(canvas);
                    this.di.hp(canvas, matrix, iIntValue);
                    com.byazt.na.w.hp("Layer#restoreLayer");
                    canvas.restore();
                    com.byazt.na.w.l("Layer#restoreLayer");
                    com.byazt.na.w.l("Layer#drawMatte");
                }
                com.byazt.na.w.hp("Layer#restoreLayer");
                canvas.restore();
                com.byazt.na.w.l("Layer#restoreLayer");
            }
            if (this.ud && (paint = this.nu) != null) {
                paint.setStyle(Paint.Style.STROKE);
                this.nu.setColor(-251901);
                this.nu.setStrokeWidth(4.0f);
                canvas.drawRect(this.xs, this.nu);
                this.nu.setStyle(Paint.Style.FILL);
                this.nu.setColor(1357638635);
                canvas.drawRect(this.xs, this.nu);
            }
            jx(com.byazt.na.w.l(this.ns));
            return;
        }
        com.byazt.na.w.l(this.ns);
    }

    private void hp(Canvas canvas) {
        com.byazt.na.w.hp("Layer#clearLayer");
        RectF rectF = this.xs;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f18223u);
        com.byazt.na.w.l("Layer#clearLayer");
    }

    private void hp(RectF rectF, Matrix matrix) {
        this.ec.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (q()) {
            int size = this.cx.hp().size();
            for (int i2 = 0; i2 < size; i2++) {
                com.byazt.mo.s sVar = this.cx.hp().get(i2);
                Path pathEb = this.cx.l().get(i2).eb();
                if (pathEb != null) {
                    this.f18221q.set(pathEb);
                    this.f18221q.transform(matrix);
                    int i3 = AnonymousClass2.f18226l[sVar.hp().ordinal()];
                    if (i3 == 1 || i3 == 2) {
                        return;
                    }
                    if ((i3 == 3 || i3 == 4) && sVar.j()) {
                        return;
                    }
                    this.f18221q.computeBounds(this.f18219n, false);
                    if (i2 == 0) {
                        this.ec.set(this.f18219n);
                    } else {
                        RectF rectF2 = this.ec;
                        rectF2.set(Math.min(rectF2.left, this.f18219n.left), Math.min(this.ec.top, this.f18219n.top), Math.max(this.ec.right, this.f18219n.right), Math.max(this.ec.bottom, this.f18219n.bottom));
                    }
                }
            }
            if (rectF.intersect(this.ec)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public void hp(int i2) {
        this.lv = ((this.f18216j.hp() != null ? this.f18216j.hp().eb().intValue() : 100) / 100.0f) * (i2 / 255.0f);
    }

    private void hp(Canvas canvas, Matrix matrix) {
        com.byazt.na.w.hp("Layer#saveLayer");
        com.byazt.ze.e.hp(canvas, this.xs, this.zy, 19);
        if (Build.VERSION.SDK_INT < 28) {
            hp(canvas);
        }
        com.byazt.na.w.l("Layer#saveLayer");
        for (int i2 = 0; i2 < this.cx.hp().size(); i2++) {
            com.byazt.mo.s sVar = this.cx.hp().get(i2);
            com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar = this.cx.l().get(i2);
            com.byazt.dt.hp<Integer, Integer> hpVar2 = this.cx.jx().get(i2);
            int i3 = AnonymousClass2.f18226l[sVar.hp().ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    if (i2 == 0) {
                        this.jl.setColor(-16777216);
                        this.jl.setAlpha(255);
                        canvas.drawRect(this.xs, this.jl);
                    }
                    if (sVar.j()) {
                        jx(canvas, matrix, hpVar, hpVar2);
                    } else {
                        hp(canvas, matrix, hpVar);
                    }
                } else if (i3 != 3) {
                    if (i3 == 4) {
                        if (sVar.j()) {
                            l(canvas, matrix, hpVar, hpVar2);
                        } else {
                            hp(canvas, matrix, hpVar, hpVar2);
                        }
                    }
                } else if (sVar.j()) {
                    w(canvas, matrix, hpVar, hpVar2);
                } else {
                    j(canvas, matrix, hpVar, hpVar2);
                }
            } else if (u()) {
                this.jl.setAlpha(255);
                canvas.drawRect(this.xs, this.jl);
            }
        }
        com.byazt.na.w.hp("Layer#restoreLayer");
        canvas.restore();
        com.byazt.na.w.l("Layer#restoreLayer");
    }

    private void hp(Canvas canvas, Matrix matrix, com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar, com.byazt.dt.hp<Integer, Integer> hpVar2) {
        this.f18221q.set(hpVar.eb());
        this.f18221q.transform(matrix);
        this.jl.setAlpha((int) (hpVar2.eb().intValue() * 2.55f));
        canvas.drawPath(this.f18221q, this.jl);
    }

    private void hp(Canvas canvas, Matrix matrix, com.byazt.dt.hp<com.byazt.mo.k, Path> hpVar) {
        this.f18221q.set(hpVar.eb());
        this.f18221q.transform(matrix);
        canvas.drawPath(this.f18221q, this.f18217k);
    }

    public void hp(float f2) {
        this.f18216j.hp(f2);
        if (this.cx != null) {
            for (int i2 = 0; i2 < this.cx.l().size(); i2++) {
                this.cx.l().get(i2).hp(f2);
            }
        }
        com.byazt.dt.j jVar = this.f18213b;
        if (jVar != null) {
            jVar.hp(f2);
        }
        jx jxVar = this.di;
        if (jxVar != null) {
            jxVar.hp(f2);
        }
        for (int i3 = 0; i3 < this.wv.size(); i3++) {
            this.wv.get(i3).hp(f2);
        }
    }
}
