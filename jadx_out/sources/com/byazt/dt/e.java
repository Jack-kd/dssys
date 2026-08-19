package com.byazt.dt;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, 45})
/* loaded from: classes2.dex */
public class e extends eb<PointF> {

    /* renamed from: a, reason: collision with root package name */
    public final PathMeasure f19261a;
    public q eb;

    /* renamed from: j, reason: collision with root package name */
    public final PointF f19262j;

    /* renamed from: w, reason: collision with root package name */
    public final float[] f19263w;

    public e(List<? extends com.byazt.ch.hp<PointF>> list) {
        super(list);
        this.f19262j = new PointF();
        this.f19263w = new float[2];
        this.f19261a = new PathMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public PointF hp(com.byazt.ch.hp<PointF> hpVar, float f2) {
        float f3;
        q qVar = (q) hpVar;
        Path pathL = qVar.l();
        if (pathL == null) {
            return hpVar.hp;
        }
        com.byazt.ch.jx<A> jxVar = this.jx;
        if (jxVar != 0) {
            f3 = f2;
            PointF pointF = (PointF) jxVar.hp(qVar.f18846a, qVar.eb.floatValue(), qVar.hp, qVar.f18850l, j(), f3, s());
            if (pointF != null) {
                return pointF;
            }
        } else {
            f3 = f2;
        }
        if (this.eb != qVar) {
            this.f19261a.setPath(pathL, false);
            this.eb = qVar;
        }
        PathMeasure pathMeasure = this.f19261a;
        pathMeasure.getPosTan(pathMeasure.getLength() * f3, this.f19263w, null);
        PointF pointF2 = this.f19262j;
        float[] fArr = this.f19263w;
        pointF2.set(fArr[0], fArr[1]);
        return this.f19262j;
    }
}
