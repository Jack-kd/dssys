package com.byazt.yb;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1520, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f27876l;

    public l(hp hpVar) {
        this.f27876l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return Float.valueOf(this.f27876l.getLatitude());
        }
        if (iIntValue == 2) {
            return Float.valueOf(this.f27876l.getLongitude());
        }
        if (iIntValue != 3) {
            return null;
        }
        return Long.valueOf(this.f27876l.getLastTime());
    }

    @Override // com.byazt.yb.hp
    public long getLastTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.yb.hp
    public float getLatitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.yb.hp
    public float getLongitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Float) this.hp.apply(sparseArray)).floatValue();
    }

    public l(Function function) {
        this.hp = function;
    }
}
