package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.kz.jx;
import com.byazt.ym.ATSKeep;
import java.io.File;
import java.util.Collection;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 574})
@ATSKeep
/* loaded from: classes3.dex */
public class ky implements o, Function {
    public com.byazt.kz.a loadFactory = new com.byazt.kz.a(null, com.byazt.kz.w.e());

    private void hp(Collection<? extends hp> collection, double d2) {
        if (collection == null) {
            return;
        }
        for (hp hpVar : collection) {
            if (hpVar != null) {
                hpVar.hp(d2);
            }
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object hqVar = sparseArray.get(1);
            if (hqVar != null) {
                hqVar = new hq((Function) hqVar);
            }
            k kVarFrom = from((wv) hqVar);
            return kVarFrom != null ? new v(kVarFrom) : kVarFrom;
        }
        if (iIntValue == 2) {
            Object hqVar2 = sparseArray.get(1);
            if (hqVar2 != null) {
                hqVar2 = new hq((Function) hqVar2);
            }
            clearMemoryBitmapCache((wv) hqVar2);
            return null;
        }
        if (iIntValue != 3) {
            if (iIntValue != 4) {
                return null;
            }
            clearAllMemoryCache();
            return null;
        }
        Object hqVar3 = sparseArray.get(1);
        if (hqVar3 != null) {
            hqVar3 = new hq((Function) hqVar3);
        }
        clearMemoryRawCache((wv) hqVar3);
        return null;
    }

    @Override // com.byazt.nke.o
    public void clearAllMemoryCache() {
        hp(this.loadFactory.hp(), 0.0d);
        hp(this.loadFactory.l(), 0.0d);
    }

    @Override // com.byazt.nke.o
    public void clearMemoryBitmapCache(wv wvVar) {
        nu nuVarHp;
        com.byazt.kz.a aVar = this.loadFactory;
        if (aVar == null || (nuVarHp = aVar.hp(hp(wvVar))) == null) {
            return;
        }
        nuVarHp.hp();
    }

    @Override // com.byazt.nke.o
    public void clearMemoryRawCache(wv wvVar) {
        dy dyVarL;
        com.byazt.kz.a aVar = this.loadFactory;
        if (aVar == null || (dyVarL = aVar.l(hp(wvVar))) == null) {
            return;
        }
        dyVarL.hp();
    }

    @Override // com.byazt.nke.o
    public k from(wv wvVar) {
        String cacheDir = wvVar.getCacheDir();
        String name = wvVar.getName();
        k kVarFrom = new jx.l(this.loadFactory).from(name);
        kVarFrom.key(com.byazt.os.hp.hp(cacheDir, name));
        kVarFrom.cacheDir(cacheDir);
        kVarFrom.cache(hp(wvVar));
        return kVarFrom;
    }

    private l hp(final wv wvVar) {
        return new l() { // from class: com.byazt.nke.ky.1
            @Override // com.byazt.nke.l
            public File getCacheDir() {
                return new File(wvVar.getCacheDir());
            }

            @Override // com.byazt.nke.l
            public long getFileCacheSize() {
                return 0L;
            }

            @Override // com.byazt.nke.l
            public int getMemoryCacheSize() {
                return wvVar.getMemoryCacheSize();
            }

            @Override // com.byazt.nke.l
            public int getRawMemoryCacheSize() {
                return wvVar.getRawCacheSize();
            }

            @Override // com.byazt.nke.l
            public boolean isDiskCache() {
                return false;
            }

            @Override // com.byazt.nke.l
            public boolean isMemoryCache() {
                return wvVar.getMemoryCacheSize() > 0;
            }

            @Override // com.byazt.nke.l
            public boolean isQueryAll() {
                return false;
            }

            @Override // com.byazt.nke.l
            public boolean isRawMemoryCache() {
                return wvVar.getRawCacheSize() > 0;
            }
        };
    }
}
