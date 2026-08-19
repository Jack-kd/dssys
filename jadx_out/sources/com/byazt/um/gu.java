package com.byazt.um;

import android.util.SparseArray;
import com.byazt.um.e;
import com.byazt.ym.ATSKeep;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 18, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
@ATSKeep
/* loaded from: classes3.dex */
public class gu implements e.hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile e.hp f26260l;

    public gu(e.hp hpVar) {
        this.f26260l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object kVar = sparseArray.get(1);
            Object obj2 = sparseArray.get(2);
            if (kVar != null) {
                kVar = new k((Function) kVar);
            }
            this.f26260l.onVideoPreloadSuccess((zy) kVar, ((Integer) obj2).intValue());
            return null;
        }
        if (iIntValue == 2) {
            Object kVar2 = sparseArray.get(1);
            Object obj3 = sparseArray.get(2);
            Object obj4 = sparseArray.get(3);
            if (kVar2 != null) {
                kVar2 = new k((Function) kVar2);
            }
            this.f26260l.onVideoPreloadFail((zy) kVar2, ((Integer) obj3).intValue(), (String) obj4);
            return null;
        }
        if (iIntValue != 3) {
            return null;
        }
        Object kVar3 = sparseArray.get(1);
        Object obj5 = sparseArray.get(2);
        if (kVar3 != null) {
            kVar3 = new k((Function) kVar3);
        }
        this.f26260l.cancel((zy) kVar3, ((Integer) obj5).intValue());
        return null;
    }

    @Override // com.byazt.um.e.hp
    public void cancel(zy zyVar, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(1, zyVar);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.e.hp
    public void onVideoPreloadFail(zy zyVar, int i2, String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(1, zyVar);
        sparseArray.put(2, Integer.valueOf(i2));
        sparseArray.put(3, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.e.hp
    public void onVideoPreloadSuccess(zy zyVar, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(1, zyVar);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    public gu(Function function) {
        this.hp = function;
    }
}
