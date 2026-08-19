package com.byazt.vbz;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2104, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements jx, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jx f26549l;

    public j(jx jxVar) {
        this.f26549l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                return this.f26549l.getInitBridge();
            case 2:
                return this.f26549l.getClassName();
            case 3:
                return this.f26549l.getAdnVersionListKey();
            case 4:
                return this.f26549l.getAdnVersion();
            case 5:
                this.f26549l.saveManager((Function) sparseArray.get(1));
                return null;
            case 6:
                return this.f26549l.getManager();
            case 7:
                this.f26549l.saveUnSupportVersion((String) sparseArray.get(1));
                return null;
            case 8:
                return this.f26549l.getUnSupportVersion();
            case 9:
                return this.f26549l.getAdnName();
            default:
                return null;
        }
    }

    @Override // com.byazt.vbz.jx
    public String getAdnName() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public String getAdnVersion() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public String getAdnVersionListKey() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public String getClassName() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public Function getInitBridge() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (Function) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public Function getManager() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return (Function) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public String getUnSupportVersion() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public void saveManager(Function function) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, function);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.vbz.jx
    public void saveUnSupportVersion(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    public j(Function function) {
        this.hp = function;
    }
}
