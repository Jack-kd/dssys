package com.byazt.dt;

import android.graphics.PointF;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends eb<PointF> {

    /* renamed from: j, reason: collision with root package name */
    public final PointF f19264j;

    public gu(List<com.byazt.ch.hp<PointF>> list) {
        super(list);
        this.f19264j = new PointF();
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public PointF hp(com.byazt.ch.hp<PointF> hpVar, float f2) {
        return hp(hpVar, f2, f2, f2);
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public PointF hp(com.byazt.ch.hp<PointF> hpVar, float f2, float f3, float f4) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = hpVar.hp;
        if (pointF3 == null || (pointF = hpVar.f18850l) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF4 = pointF3;
        PointF pointF5 = pointF;
        com.byazt.ch.jx<A> jxVar = this.jx;
        if (jxVar != 0 && (pointF2 = (PointF) jxVar.hp(hpVar.f18846a, hpVar.eb.floatValue(), pointF4, pointF5, f2, j(), s())) != null) {
            return pointF2;
        }
        PointF pointF6 = this.f19264j;
        float f5 = pointF4.x;
        float f6 = f5 + (f3 * (pointF5.x - f5));
        float f7 = pointF4.y;
        pointF6.set(f6, f7 + (f4 * (pointF5.y - f7)));
        return this.f19264j;
    }
}
