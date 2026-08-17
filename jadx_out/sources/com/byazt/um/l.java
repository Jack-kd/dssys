package com.byazt.um;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 18, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f26264l;

    public l(hp hpVar) {
        this.f26264l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                this.f26264l.setRootDir((String) sparseArray.get(1));
                return null;
            case 2:
                return this.f26264l.getRewardFullCacheDir();
            case 3:
                return this.f26264l.getBrandCacheDir();
            case 4:
                return this.f26264l.getSplashCacheDir();
            case 5:
                return this.f26264l.getOtherCacheDir();
            case 6:
                this.f26264l.clearCache();
                return null;
            case 7:
                Object kVar = sparseArray.get(1);
                if (kVar != null) {
                    kVar = new k((Function) kVar);
                }
                return Boolean.valueOf(this.f26264l.isVideoCached((zy) kVar));
            case 8:
                Object kVar2 = sparseArray.get(1);
                if (kVar2 != null) {
                    kVar2 = new k((Function) kVar2);
                }
                return Long.valueOf(this.f26264l.getCachedSize((zy) kVar2));
            default:
                return null;
        }
    }

    @Override // com.byazt.um.hp
    public void clearCache() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.hp
    public String getBrandCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.hp
    public long getCachedSize(zy zyVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(1, zyVar);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.um.hp
    public String getOtherCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.hp
    public String getRewardFullCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.hp
    public String getSplashCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.hp
    public boolean isVideoCached(zy zyVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(1, zyVar);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.hp
    public void setRootDir(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    public l(Function function) {
        this.hp = function;
    }
}
