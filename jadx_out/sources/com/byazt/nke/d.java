package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 670})
@ATSKeep
/* loaded from: classes3.dex */
public class d implements o, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile o f23670l;

    public d(o oVar) {
        this.f23670l = oVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f23670l != null ? this.f23670l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f23670l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.nke.o
    public void clearAllMemoryCache() {
        if (this.f23670l != null) {
            this.f23670l.clearAllMemoryCache();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.o
    public void clearMemoryBitmapCache(wv wvVar) {
        if (this.f23670l != null) {
            this.f23670l.clearMemoryBitmapCache(wvVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        if (wvVar != null) {
            wvVar = new hq(wvVar);
        }
        sparseArray.put(1, wvVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.o
    public void clearMemoryRawCache(wv wvVar) {
        if (this.f23670l != null) {
            this.f23670l.clearMemoryRawCache(wvVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        if (wvVar != null) {
            wvVar = new hq(wvVar);
        }
        sparseArray.put(1, wvVar);
        this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.nke.o
    public k from(wv wvVar) {
        if (this.f23670l != null) {
            return this.f23670l.from(wvVar);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (wvVar != null) {
            wvVar = new hq(wvVar);
        }
        sparseArray.put(1, wvVar);
        ?? Apply = this.hp.apply(sparseArray);
        v vVar = Apply;
        if (Apply != 0) {
            vVar = new v((Function) Apply);
        }
        return vVar;
    }

    public d(Function function) {
        this.hp = function;
    }
}
