package com.byazt.sf;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, 38})
@ATSKeep
/* loaded from: classes3.dex */
public class j implements jx, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile jx f25450l;

    public j(jx jxVar) {
        this.f25450l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f25450l != null ? this.f25450l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f25450l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.sf.jx
    public void init(Context context, Function function) {
        if (this.f25450l != null) {
            this.f25450l.init(context, function);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, function);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.sf.jx
    public boolean isPitayaEnvAvailable() {
        if (this.f25450l != null) {
            return this.f25450l.isPitayaEnvAvailable();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.sf.jx
    public boolean isPitayaInitSuccess() {
        if (this.f25450l != null) {
            return this.f25450l.isPitayaInitSuccess();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.sf.jx
    public void onAppLogEvent(String str, JSONObject jSONObject) {
        if (this.f25450l != null) {
            this.f25450l.onAppLogEvent(str, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.sf.jx
    public void queryPackage(String str, Function function) {
        if (this.f25450l != null) {
            this.f25450l.queryPackage(str, function);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, function);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.sf.jx
    public void runTask(String str, JSONObject jSONObject, Function function) {
        if (this.f25450l != null) {
            this.f25450l.runTask(str, jSONObject, function);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, function);
        this.hp.apply(sparseArray);
    }

    public j(Function function) {
        this.hp = function;
    }
}
