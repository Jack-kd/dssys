package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.io.InputStream;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 301})
@ATSKeep
/* loaded from: classes3.dex */
public class cx implements ns, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile ns f23669l;

    public cx(ns nsVar) {
        this.f23669l = nsVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f23669l != null ? this.f23669l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f23669l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.nke.ns
    public void clearAllCache() {
        if (this.f23669l != null) {
            this.f23669l.clearAllCache();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.ns
    public void clearCache(double d2) {
        if (this.f23669l != null) {
            this.f23669l.clearCache(d2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Double.valueOf(d2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.ns
    public void clearDiskCache(double d2) {
        if (this.f23669l != null) {
            this.f23669l.clearDiskCache(d2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Double.valueOf(d2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.ns
    public void clearMemoryCache(double d2) {
        if (this.f23669l != null) {
            this.f23669l.clearMemoryCache(d2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Double.valueOf(d2));
        this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.nke.ns
    public k from(String str) {
        if (this.f23669l != null) {
            return this.f23669l.from(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        ?? Apply = this.hp.apply(sparseArray);
        v vVar = Apply;
        if (Apply != 0) {
            vVar = new v((Function) Apply);
        }
        return vVar;
    }

    @Override // com.byazt.nke.ns
    public InputStream getCacheStream(String str, String str2) {
        if (this.f23669l != null) {
            return this.f23669l.getCacheStream(str, str2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (InputStream) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.ns
    public InputStream getDiskCacheStream(String str, String str2, String str3) {
        if (this.f23669l != null) {
            return this.f23669l.getDiskCacheStream(str, str2, str3);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        return (InputStream) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.ns
    public boolean hasDiskCache(String str, String str2, String str3) {
        if (this.f23669l != null) {
            return this.f23669l.hasDiskCache(str, str2, str3);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public cx(Function function) {
        this.hp = function;
    }
}
