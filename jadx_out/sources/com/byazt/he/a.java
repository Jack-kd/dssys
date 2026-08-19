package com.byazt.he;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2022, 54})
@ATSKeep
/* loaded from: classes2.dex */
public class a implements w, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile w f20675l;

    public a(w wVar) {
        this.f20675l = wVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return Double.valueOf(this.f20675l.getLatitude());
        }
        if (iIntValue != 2) {
            return null;
        }
        return Double.valueOf(this.f20675l.getLongitude());
    }

    @Override // com.byazt.he.w
    public double getLatitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Double) this.hp.apply(sparseArray)).doubleValue();
    }

    @Override // com.byazt.he.w
    public double getLongitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Double) this.hp.apply(sparseArray)).doubleValue();
    }

    public a(Function function) {
        this.hp = function;
    }
}
