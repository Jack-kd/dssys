package com.byazt.dhy;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1799, 34})
@ATSKeep
/* loaded from: classes2.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f19129l;

    public l(hp hpVar) {
        this.f19129l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) throws JSONException {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.f19129l.onSend((JSONObject) sparseArray.get(1));
        return null;
    }

    @Override // com.byazt.dhy.hp
    public void onSend(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, jSONObject);
        this.hp.apply(sparseArray);
    }

    public l(Function function) {
        this.hp = function;
    }
}
