package com.byazt.pt;

import android.util.SparseArray;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1805, 34})
/* loaded from: classes3.dex */
public class l {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(JSONObject jSONObject) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 144101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.hp.apply(sparseArray);
    }

    public void jx(JSONObject jSONObject) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 144104);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.hp.apply(sparseArray);
    }

    public void l(JSONObject jSONObject) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 144103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.hp.apply(sparseArray);
    }

    public JSONObject hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 144102);
        sparseArray.put(-99999985, JSONObject.class);
        return (JSONObject) this.hp.apply(sparseArray);
    }

    public void l() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 144105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
