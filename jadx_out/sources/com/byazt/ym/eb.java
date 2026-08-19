package com.byazt.ym;

import android.util.SparseArray;
import com.byazt.pg.ns;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, 94})
@ATSKeep
/* loaded from: classes3.dex */
public class eb implements ns, Function {
    public final SparseArray<Object> hp = new SparseArray<>();

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return getData(((Integer) sparseArray.get(1)).intValue());
        }
        if (iIntValue == 2) {
            Object obj2 = sparseArray.get(1);
            setData(((Integer) obj2).intValue(), sparseArray.get(2));
            return null;
        }
        if (iIntValue == 3) {
            Object obj3 = sparseArray.get(1);
            Object lVar = sparseArray.get(2);
            if (lVar != null) {
                lVar = new com.byazt.ow.l((Function) lVar);
            }
            return getData(((Integer) obj3).intValue(), (com.byazt.ow.hp) lVar);
        }
        if (iIntValue != 4) {
            return null;
        }
        Object obj4 = sparseArray.get(1);
        Object obj5 = sparseArray.get(2);
        Object lVar2 = sparseArray.get(3);
        if (lVar2 != null) {
            lVar2 = new com.byazt.ow.l((Function) lVar2);
        }
        setData(((Integer) obj4).intValue(), obj5, (com.byazt.ow.hp) lVar2);
        return null;
    }

    @Override // com.byazt.pg.ns
    public synchronized Object getData(int i2) {
        return this.hp.get(i2);
    }

    @Override // com.byazt.pg.ns
    public synchronized void setData(int i2, Object obj) {
        this.hp.put(i2, obj);
    }

    @Override // com.byazt.pg.ns
    public synchronized Object getData(int i2, com.byazt.ow.hp hpVar) {
        Object obj = this.hp.get(i2);
        if (hpVar == null) {
            return obj;
        }
        if (obj == null) {
            return null;
        }
        return hpVar.convert(obj);
    }

    @Override // com.byazt.pg.ns
    public synchronized void setData(int i2, Object obj, com.byazt.ow.hp hpVar) {
        if (hpVar == null) {
            this.hp.put(i2, obj);
        } else {
            if (obj != null) {
                this.hp.put(i2, hpVar.convert(obj));
            }
        }
    }
}
