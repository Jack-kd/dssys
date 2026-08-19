package com.byazt.m;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.t.jl;
import com.byazt.ym.a;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1097, 34})
/* loaded from: classes3.dex */
public class l {
    @NonNull
    public CopyOnWriteArrayList<com.byazt.w.hp> hp(String str, String str2) {
        CopyOnWriteArrayList<com.byazt.w.hp> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        try {
            String string = a.getKVStore(jl.getContext(), str, 0).getString(str2, "");
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    com.byazt.w.hp hpVarHp = com.byazt.w.hp.hp(jSONObject.optJSONObject(itKeys.next()));
                    if (hpVarHp != null) {
                        copyOnWriteArrayList.add(hpVarHp);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return copyOnWriteArrayList;
    }

    public void l(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a.getKVStore(jl.getContext(), str, 0).edit().putString(str2, "").apply();
    }

    public void hp(String str, String str2, CopyOnWriteArrayList<com.byazt.w.hp> copyOnWriteArrayList) throws JSONException {
        if (copyOnWriteArrayList == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<com.byazt.w.hp> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                com.byazt.w.hp next = it.next();
                if (next != null) {
                    jSONObject.put(String.valueOf(next.f26850l), next.hp());
                }
            }
        } catch (Exception unused) {
        }
        a.getKVStore(jl.getContext(), str, 0).edit().putString(str2, jSONObject.toString()).apply();
    }
}
