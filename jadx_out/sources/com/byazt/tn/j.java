package com.byazt.tn;

import android.text.TextUtils;
import com.byazt.ub.w;

@com.byazt.kj.hp(hp = {0, 1, 800, 38})
/* loaded from: classes3.dex */
public class j {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public w.hp f25893l;

    public j(w.hp hpVar) {
        this.f25893l = hpVar;
        if (hpVar == null || TextUtils.isEmpty(hpVar.hp) || TextUtils.equals("00000000-0000-0000-0000-000000000000", hpVar.hp)) {
            this.hp = "error";
        }
    }

    public String getType() {
        return this.hp;
    }

    public w.hp hp() {
        return this.f25893l;
    }

    public j(String str) {
        this.hp = str;
    }
}
