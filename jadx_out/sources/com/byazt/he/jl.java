package com.byazt.he;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2022, 19})
@ATSKeep
/* loaded from: classes2.dex */
public class jl implements gu, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile gu f20677l;

    public jl(gu guVar) {
        this.f20677l = guVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return this.f20677l.getCustomAppList();
        }
        if (iIntValue == 2) {
            return this.f20677l.getCustomDevImeis();
        }
        if (iIntValue == 3) {
            return Boolean.valueOf(this.f20677l.isCanUseOaid());
        }
        if (iIntValue == 4) {
            return Boolean.valueOf(this.f20677l.isLimitPersonalAds());
        }
        if (iIntValue != 5) {
            return null;
        }
        return Boolean.valueOf(this.f20677l.isProgrammaticRecommend());
    }

    @Override // com.byazt.he.gu
    public List getCustomAppList() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (List) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.gu
    public List getCustomDevImeis() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (List) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.gu
    public boolean isCanUseOaid() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.gu
    public boolean isLimitPersonalAds() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.gu
    public boolean isProgrammaticRecommend() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public jl(Function function) {
        this.hp = function;
    }
}
