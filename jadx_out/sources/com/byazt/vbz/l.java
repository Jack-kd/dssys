package com.byazt.vbz;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2104, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f26550l;

    public l(hp hpVar) {
        this.f26550l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f26550l != null ? this.f26550l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f26550l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.vbz.hp
    public Set getAdnKeySet() {
        if (this.f26550l != null) {
            return this.f26550l.getAdnKeySet();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (Set) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.hp
    public Map getAdnStatusMap() {
        if (this.f26550l != null) {
            return this.f26550l.getAdnStatusMap();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.hp
    public boolean getAndUpdateInitStatus(String str) {
        if (this.f26550l != null) {
            return this.f26550l.getAndUpdateInitStatus(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.vbz.hp
    public jx getDexPluginStrategy(String str) {
        if (this.f26550l != null) {
            return this.f26550l.getDexPluginStrategy(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        ?? Apply = this.hp.apply(sparseArray);
        j jVar = Apply;
        if (Apply != 0) {
            jVar = new j((Function) Apply);
        }
        return jVar;
    }

    public l(Function function) {
        this.hp = function;
    }
}
