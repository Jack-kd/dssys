package com.byazt.um;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 18, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements jx, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jx f26261l;

    public j(jx jxVar) {
        this.f26261l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                return Integer.valueOf(this.f26261l.getCode());
            case 2:
                this.f26261l.setCode(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 3:
                return Integer.valueOf(this.f26261l.getExtraCode());
            case 4:
                this.f26261l.setExtraCode(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 5:
                return this.f26261l.getMsg();
            case 6:
                this.f26261l.setMsg((String) sparseArray.get(1));
                return null;
            default:
                return null;
        }
    }

    @Override // com.byazt.um.jx
    public int getCode() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.jx
    public int getExtraCode() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.jx
    public String getMsg() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.jx
    public void setCode(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.jx
    public void setExtraCode(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.jx
    public void setMsg(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    public j(Function function) {
        this.hp = function;
    }
}
