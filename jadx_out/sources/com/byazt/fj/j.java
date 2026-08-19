package com.byazt.fj;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.byazt.dt.hp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 38})
/* loaded from: classes2.dex */
public class j implements w, zy, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final String f19816a;

    /* renamed from: e, reason: collision with root package name */
    public List<zy> f19817e;
    public final boolean eb;
    public com.byazt.dt.u gu;
    public final Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public final Path f19818j;
    public final Matrix jx;

    /* renamed from: l, reason: collision with root package name */
    public final RectF f19819l;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.na.s f19820q;

    /* renamed from: s, reason: collision with root package name */
    public final List<jx> f19821s;

    /* renamed from: w, reason: collision with root package name */
    public final RectF f19822w;

    public j(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.u uVar, com.byazt.na.a aVar) {
        this(sVar, jxVar, uVar.hp(), uVar.jx(), hp(sVar, aVar, jxVar, uVar.l()), hp(uVar.l()));
    }

    private static List<jx> hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar, List<com.byazt.mo.jx> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            jx jxVarHp = list.get(i2).hp(sVar, aVar, jxVar);
            if (jxVarHp != null) {
                arrayList.add(jxVarHp);
            }
        }
        return arrayList;
    }

    private boolean w() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19821s.size(); i3++) {
            if ((this.f19821s.get(i3) instanceof w) && (i2 = i2 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        this.jx.reset();
        com.byazt.dt.u uVar = this.gu;
        if (uVar != null) {
            this.jx.set(uVar.j());
        }
        this.f19818j.reset();
        if (this.eb) {
            return this.f19818j;
        }
        for (int size = this.f19821s.size() - 1; size >= 0; size--) {
            jx jxVar = this.f19821s.get(size);
            if (jxVar instanceof zy) {
                this.f19818j.addPath(((zy) jxVar).j(), this.jx);
            }
        }
        return this.f19818j;
    }

    public Matrix jx() {
        com.byazt.dt.u uVar = this.gu;
        if (uVar != null) {
            return uVar.j();
        }
        this.jx.reset();
        return this.jx;
    }

    public List<zy> l() {
        if (this.f19817e == null) {
            this.f19817e = new ArrayList();
            for (int i2 = 0; i2 < this.f19821s.size(); i2++) {
                jx jxVar = this.f19821s.get(i2);
                if (jxVar instanceof zy) {
                    this.f19817e.add((zy) jxVar);
                }
            }
        }
        return this.f19817e;
    }

    public j(com.byazt.na.s sVar, com.byazt.at.jx jxVar, String str, boolean z2, List<jx> list, com.byazt.ha.jl jlVar) {
        this.hp = new com.byazt.nv.hp();
        this.f19819l = new RectF();
        this.jx = new Matrix();
        this.f19818j = new Path();
        this.f19822w = new RectF();
        this.f19816a = str;
        this.f19820q = sVar;
        this.eb = z2;
        this.f19821s = list;
        if (jlVar != null) {
            com.byazt.dt.u uVarE = jlVar.e();
            this.gu = uVarE;
            uVarE.hp(jxVar);
            this.gu.hp(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            jx jxVar2 = list.get(size);
            if (jxVar2 instanceof e) {
                arrayList.add((e) jxVar2);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((e) arrayList.get(size2)).hp(list.listIterator(list.size()));
        }
    }

    public static com.byazt.ha.jl hp(List<com.byazt.mo.jx> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.byazt.mo.jx jxVar = list.get(i2);
            if (jxVar instanceof com.byazt.ha.jl) {
                return (com.byazt.ha.jl) jxVar;
            }
        }
        return null;
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.f19820q.invalidateSelf();
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f19821s.size());
        arrayList.addAll(list);
        for (int size = this.f19821s.size() - 1; size >= 0; size--) {
            jx jxVar = this.f19821s.get(size);
            jxVar.hp(arrayList, this.f19821s.subList(0, size));
            arrayList.add(jxVar);
        }
    }

    @Override // com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        if (this.eb) {
            return;
        }
        this.jx.set(matrix);
        com.byazt.dt.u uVar = this.gu;
        if (uVar != null) {
            this.jx.preConcat(uVar.j());
            i2 = (int) (((((this.gu.hp() == null ? 100 : this.gu.hp().eb().intValue()) / 100.0f) * i2) / 255.0f) * 255.0f);
        }
        boolean z2 = this.f19820q.e() && w() && i2 != 255;
        if (z2) {
            this.f19819l.set(0.0f, 0.0f, 0.0f, 0.0f);
            hp(this.f19819l, this.jx, true);
            this.hp.setAlpha(i2);
            com.byazt.ze.e.hp(canvas, this.f19819l, this.hp);
        }
        if (z2) {
            i2 = 255;
        }
        for (int size = this.f19821s.size() - 1; size >= 0; size--) {
            jx jxVar = this.f19821s.get(size);
            if (jxVar instanceof w) {
                ((w) jxVar).hp(canvas, this.jx, i2);
            }
        }
        if (z2) {
            canvas.restore();
        }
    }

    @Override // com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        this.jx.set(matrix);
        com.byazt.dt.u uVar = this.gu;
        if (uVar != null) {
            this.jx.preConcat(uVar.j());
        }
        this.f19822w.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f19821s.size() - 1; size >= 0; size--) {
            jx jxVar = this.f19821s.get(size);
            if (jxVar instanceof w) {
                ((w) jxVar).hp(this.f19822w, this.jx, z2);
                rectF.union(this.f19822w);
            }
        }
    }
}
