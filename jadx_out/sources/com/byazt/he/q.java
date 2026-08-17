package com.byazt.he;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2022, 150})
@ATSKeep
/* loaded from: classes2.dex */
public class q implements s, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile s f20679l;

    public q(s sVar) {
        this.f20679l = sVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (((Integer) ((SparseArray) obj).get(0)).intValue()) {
            case 1:
                return this.f20679l.getUserId();
            case 2:
                return this.f20679l.getChannel();
            case 3:
                return this.f20679l.getSubChannel();
            case 4:
                return Integer.valueOf(this.f20679l.getAge());
            case 5:
                return this.f20679l.getGender();
            case 6:
                return this.f20679l.getUserValueGroup();
            case 7:
                return this.f20679l.getCustomInfos();
            default:
                return null;
        }
    }

    @Override // com.byazt.he.s
    public int getAge() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.he.s
    public String getChannel() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.s
    public Map getCustomInfos() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (Map) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.s
    public String getGender() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.s
    public String getSubChannel() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.s
    public String getUserId() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.s
    public String getUserValueGroup() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return (String) this.hp.apply(sparseArray);
    }

    public q(Function function) {
        this.hp = function;
    }
}
