package com.byazt.oa;

import android.text.TextUtils;
import com.anythink.core.common.m.f;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 149, 166})
/* loaded from: classes3.dex */
public class ns {
    public final Collection<String> hp;

    /* renamed from: j, reason: collision with root package name */
    public final Set<hp> f23912j;
    public final gu jx;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, n> f23913l;

    public interface hp {
    }

    public n hp(String str) {
        if (this.hp.contains(str) || TextUtils.equals(str, f.bU)) {
            return hp(str, null);
        }
        throw new IllegalArgumentException("Namespace: " + str + " not registered.");
    }

    public void l(hp hpVar) {
        this.f23912j.remove(hpVar);
    }

    public void hp(hp hpVar) {
        this.f23912j.add(hpVar);
    }

    private n hp(String str, JSONObject jSONObject) throws JSONException {
        n nVar = this.f23913l.get(str);
        if (nVar == null) {
            n nVar2 = new n(str, this.jx.jx(), this.jx.hp(), this.jx.l(), jSONObject);
            this.f23913l.put(str, nVar2);
            return nVar2;
        }
        if (jSONObject != null) {
            nVar.update(jSONObject);
        }
        return nVar;
    }
}
