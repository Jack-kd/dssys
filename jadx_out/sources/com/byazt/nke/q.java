package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 150})
@ATSKeep
/* loaded from: classes3.dex */
public class q implements s, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile s f23677l;

    public q(s sVar) {
        this.f23677l = sVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return Long.valueOf(this.f23677l.getStartRequestTime());
        }
        if (iIntValue == 2) {
            return Long.valueOf(this.f23677l.getFirstFrameTime());
        }
        if (iIntValue != 3) {
            return null;
        }
        return Long.valueOf(this.f23677l.getEndRequestTime());
    }

    @Override // com.byazt.nke.s
    public long getEndRequestTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.nke.s
    public long getFirstFrameTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.nke.s
    public long getStartRequestTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    public q(Function function) {
        this.hp = function;
    }
}
