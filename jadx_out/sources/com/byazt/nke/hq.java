package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 158})
@ATSKeep
/* loaded from: classes3.dex */
public class hq implements wv, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile wv f23673l;

    public hq(wv wvVar) {
        this.f23673l = wvVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return this.f23673l.getCacheDir();
        }
        if (iIntValue == 2) {
            return this.f23673l.getName();
        }
        if (iIntValue == 3) {
            return Integer.valueOf(this.f23673l.getMemoryCacheSize());
        }
        if (iIntValue == 4) {
            return Integer.valueOf(this.f23673l.getRawCacheSize());
        }
        if (iIntValue != 5) {
            return null;
        }
        return this.f23673l.extra();
    }

    @Override // com.byazt.nke.wv
    public SparseArray extra() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (SparseArray) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.wv
    public String getCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.wv
    public int getMemoryCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.nke.wv
    public String getName() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.wv
    public int getRawCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    public hq(Function function) {
        this.hp = function;
    }
}
