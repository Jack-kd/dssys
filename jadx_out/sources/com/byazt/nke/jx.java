package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.io.File;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 30})
@ATSKeep
/* loaded from: classes3.dex */
public class jx implements l, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile l f23674l;

    public jx(l lVar) {
        this.f23674l = lVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (((Integer) ((SparseArray) obj).get(0)).intValue()) {
            case 1:
                return Long.valueOf(this.f23674l.getFileCacheSize());
            case 2:
                return Integer.valueOf(this.f23674l.getMemoryCacheSize());
            case 3:
                return Boolean.valueOf(this.f23674l.isMemoryCache());
            case 4:
                return Boolean.valueOf(this.f23674l.isDiskCache());
            case 5:
                return this.f23674l.getCacheDir();
            case 6:
                return Boolean.valueOf(this.f23674l.isQueryAll());
            case 7:
                return Integer.valueOf(this.f23674l.getRawMemoryCacheSize());
            case 8:
                return Boolean.valueOf(this.f23674l.isRawMemoryCache());
            default:
                return null;
        }
    }

    @Override // com.byazt.nke.l
    public File getCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (File) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.l
    public long getFileCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.nke.l
    public int getMemoryCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.nke.l
    public int getRawMemoryCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.nke.l
    public boolean isDiskCache() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.nke.l
    public boolean isMemoryCache() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.nke.l
    public boolean isQueryAll() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.nke.l
    public boolean isRawMemoryCache() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    public jx(Function function) {
        this.hp = function;
    }
}
