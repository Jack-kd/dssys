package com.byazt.at;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.LongSparseArray;
import com.byazt.at.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 38})
/* loaded from: classes2.dex */
public class j extends jx {

    /* renamed from: e, reason: collision with root package name */
    public final RectF f18198e;
    public com.byazt.dt.hp<Float, Float> eb;
    public final Paint gu;
    public boolean jl;

    /* renamed from: q, reason: collision with root package name */
    public final RectF f18199q;

    /* renamed from: s, reason: collision with root package name */
    public final List<jx> f18200s;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 234})
    /* renamed from: com.byazt.at.j$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[s.l.values().length];
            hp = iArr;
            try {
                iArr[s.l.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[s.l.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public j(com.byazt.na.s sVar, s sVar2, List<s> list, com.byazt.na.a aVar, Context context) {
        int i2;
        jx jxVar;
        s.l lVarJl;
        int i3;
        super(sVar, sVar2);
        this.f18200s = new ArrayList();
        this.f18199q = new RectF();
        this.f18198e = new RectF();
        this.gu = new Paint();
        this.jl = true;
        com.byazt.ha.l lVarN = sVar2.n();
        if (lVarN != null) {
            com.byazt.dt.hp<Float, Float> hpVarHp = lVarN.hp();
            this.eb = hpVarHp;
            hp(hpVarHp);
            this.eb.hp(this);
        } else {
            this.eb = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(aVar.k().size());
        int size = list.size() - 1;
        jx jxVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            s sVar3 = list.get(size);
            jx jxVarHp = jx.hp(this, sVar3, sVar, aVar, context);
            if (jxVarHp != null) {
                longSparseArray.put(jxVarHp.j().w(), jxVarHp);
                if (jxVar2 != null) {
                    jxVar2.hp(jxVarHp);
                    jxVar2 = null;
                } else {
                    this.f18200s.add(0, jxVarHp);
                    if (sVar3 != null && (lVarJl = sVar3.jl()) != null && ((i3 = AnonymousClass1.hp[lVarJl.ordinal()]) == 1 || i3 == 2)) {
                        jxVar2 = jxVarHp;
                    }
                }
            }
            size--;
        }
        for (i2 = 0; i2 < longSparseArray.size(); i2++) {
            jx jxVar3 = (jx) longSparseArray.get(longSparseArray.keyAt(i2));
            if (jxVar3 != null && (jxVar = (jx) longSparseArray.get(jxVar3.j().zy())) != null) {
                jxVar3.l(jxVar);
            }
        }
    }

    @Override // com.byazt.at.jx
    public void hp(boolean z2) {
        super.hp(z2);
        Iterator<jx> it = this.f18200s.iterator();
        while (it.hasNext()) {
            it.next().hp(z2);
        }
    }

    public List<jx> k() {
        return this.f18200s;
    }

    public void l(boolean z2) {
        this.jl = z2;
    }

    @Override // com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        super.l(canvas, matrix, i2);
        com.byazt.na.w.hp("CompositionLayer#draw");
        this.f18198e.set(0.0f, 0.0f, this.jx.s(), this.jx.q());
        matrix.mapRect(this.f18198e);
        boolean z2 = this.f18218l.e() && this.f18200s.size() > 1 && i2 != 255;
        if (z2) {
            this.gu.setAlpha(i2);
            com.byazt.ze.e.hp(canvas, this.f18198e, this.gu);
        } else {
            canvas.save();
        }
        if (z2) {
            i2 = 255;
        }
        for (int size = this.f18200s.size() - 1; size >= 0; size--) {
            if (((this.jl || !"__container".equals(this.jx.a())) && !this.f18198e.isEmpty()) ? canvas.clipRect(this.f18198e) : true) {
                this.f18200s.get(size).hp(canvas, matrix, i2);
            }
        }
        canvas.restore();
        com.byazt.na.w.l("CompositionLayer#draw");
    }

    @Override // com.byazt.at.jx, com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        super.hp(rectF, matrix, z2);
        for (int size = this.f18200s.size() - 1; size >= 0; size--) {
            this.f18199q.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f18200s.get(size).hp(this.f18199q, this.hp, true);
            rectF.union(this.f18199q);
        }
    }

    @Override // com.byazt.at.jx
    public void hp(float f2) {
        super.hp(f2);
        if (this.eb != null) {
            f2 = ((this.eb.eb().floatValue() * this.jx.hp().zy()) - this.jx.hp().a()) / (this.f18218l.d().vv() + 0.01f);
        }
        if (this.eb == null) {
            f2 -= this.jx.jx();
        }
        if (this.jx.l() != 0.0f && !"__container".equals(this.jx.a())) {
            f2 /= this.jx.l();
        }
        for (int size = this.f18200s.size() - 1; size >= 0; size--) {
            this.f18200s.get(size).hp(f2);
        }
    }
}
