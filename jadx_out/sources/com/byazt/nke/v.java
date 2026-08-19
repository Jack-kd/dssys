package com.byazt.nke;

import android.graphics.Bitmap;
import android.util.SparseArray;
import android.widget.ImageView;
import com.byazt.ym.ATSKeep;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
@ATSKeep
/* loaded from: classes3.dex */
public class v implements k, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile k f23679l;

    public v(k kVar) {
        this.f23679l = kVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                Object diVar = sparseArray.get(1);
                Object obj2 = sparseArray.get(2);
                if (diVar != null) {
                    diVar = new di((Function) diVar);
                }
                jl jlVar = this.f23679l.to((b) diVar, ((Integer) obj2).intValue());
                return jlVar != null ? new zy(jlVar) : jlVar;
            case 2:
                Object diVar2 = sparseArray.get(1);
                if (diVar2 != null) {
                    diVar2 = new di((Function) diVar2);
                }
                jl jlVar2 = this.f23679l.to((b) diVar2);
                return jlVar2 != null ? new zy(jlVar2) : jlVar2;
            case 3:
                jl jlVar3 = this.f23679l.to((ImageView) sparseArray.get(1));
                return jlVar3 != null ? new zy(jlVar3) : jlVar3;
            case 4:
                return this.f23679l.from((String) sparseArray.get(1));
            case 5:
                return this.f23679l.key((String) sparseArray.get(1));
            case 6:
                Object jxVar = sparseArray.get(1);
                if (jxVar != null) {
                    jxVar = new jx((Function) jxVar);
                }
                return this.f23679l.cache((l) jxVar);
            case 7:
                return this.f23679l.cacheDir((String) sparseArray.get(1));
            case 8:
                return this.f23679l.scaleType((ImageView.ScaleType) sparseArray.get(1));
            case 9:
                return this.f23679l.config((Bitmap.Config) sparseArray.get(1));
            case 10:
                return this.f23679l.width(((Integer) sparseArray.get(1)).intValue());
            case 11:
                return this.f23679l.height(((Integer) sparseArray.get(1)).intValue());
            case 12:
                return this.f23679l.type(((Integer) sparseArray.get(1)).intValue());
            case 13:
                Object rVar = sparseArray.get(1);
                if (rVar != null) {
                    rVar = new r((Function) rVar);
                }
                return this.f23679l.track((lv) rVar);
            case 14:
                return this.f23679l.headers(((Boolean) sparseArray.get(1)).booleanValue());
            case 15:
                return this.f23679l.requestTime(((Boolean) sparseArray.get(1)).booleanValue());
            case 16:
                return this.f23679l.runIn((ExecutorService) sparseArray.get(1));
            case 17:
                Object guVar = sparseArray.get(1);
                if (guVar != null) {
                    guVar = new gu((Function) guVar);
                }
                return this.f23679l.converter((e) guVar);
            case 18:
                return this.f23679l.maxWidth(((Integer) sparseArray.get(1)).intValue());
            case 19:
                return this.f23679l.maxHeight(((Integer) sparseArray.get(1)).intValue());
            case 20:
                return this.f23679l.sync(((Boolean) sparseArray.get(1)).booleanValue());
            case 21:
                Object nVar = sparseArray.get(1);
                if (nVar != null) {
                    nVar = new n((Function) nVar);
                }
                return this.f23679l.loadSetp((sz) nVar);
            case 22:
                return this.f23679l.isLocalRes(((Boolean) sparseArray.get(1)).booleanValue());
            default:
                return null;
        }
    }

    @Override // com.byazt.nke.k
    public k cache(l lVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        if (lVar != null) {
            lVar = new jx(lVar);
        }
        sparseArray.put(1, lVar);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k cacheDir(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k config(Bitmap.Config config) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        sparseArray.put(1, config);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k converter(e eVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        if (eVar != null) {
            eVar = new gu(eVar);
        }
        sparseArray.put(1, eVar);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k from(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k headers(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k height(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k isLocalRes(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k key(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k loadSetp(sz szVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        if (szVar != null) {
            szVar = new n(szVar);
        }
        sparseArray.put(1, szVar);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k maxHeight(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k maxWidth(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k requestTime(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k runIn(ExecutorService executorService) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, executorService);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k scaleType(ImageView.ScaleType scaleType) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        sparseArray.put(1, scaleType);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k sync(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
        return this;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.nke.k
    public jl to(ImageView imageView) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, imageView);
        ?? Apply = this.hp.apply(sparseArray);
        zy zyVar = Apply;
        if (Apply != 0) {
            zyVar = new zy((Function) Apply);
        }
        return zyVar;
    }

    @Override // com.byazt.nke.k
    public k track(lv lvVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        if (lvVar != null) {
            lvVar = new r(lvVar);
        }
        sparseArray.put(1, lvVar);
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k type(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
        return this;
    }

    @Override // com.byazt.nke.k
    public k width(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
        return this;
    }

    public v(Function function) {
        this.hp = function;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.nke.k
    public jl to(b bVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        if (bVar != null) {
            bVar = new di(bVar);
        }
        sparseArray.put(1, bVar);
        ?? Apply = this.hp.apply(sparseArray);
        zy zyVar = Apply;
        if (Apply != 0) {
            zyVar = new zy((Function) Apply);
        }
        return zyVar;
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.nke.k
    public jl to(b bVar, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (bVar != null) {
            bVar = new di(bVar);
        }
        sparseArray.put(1, bVar);
        sparseArray.put(2, Integer.valueOf(i2));
        ?? Apply = this.hp.apply(sparseArray);
        zy zyVar = Apply;
        if (Apply != 0) {
            zyVar = new zy((Function) Apply);
        }
        return zyVar;
    }
}
