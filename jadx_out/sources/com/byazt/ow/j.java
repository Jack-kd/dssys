package com.byazt.ow;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1736, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements jx, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jx f24196l;

    public j(jx jxVar) {
        this.f24196l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return this.f24196l.encrypt((String) sparseArray.get(1));
        }
        if (iIntValue == 2) {
            return this.f24196l.decrypt((String) sparseArray.get(1));
        }
        if (iIntValue != 3) {
            return null;
        }
        return Integer.valueOf(this.f24196l.type());
    }

    @Override // com.byazt.ow.jx
    public String decrypt(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.jx
    public String encrypt(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.ow.jx
    public int type() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    public j(Function function) {
        this.hp = function;
    }
}
