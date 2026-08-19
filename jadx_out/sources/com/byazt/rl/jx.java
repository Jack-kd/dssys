package com.byazt.rl;

import android.content.Context;
import com.byazt.es.s;
import com.byazt.ykc.SSWebView;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 578, 30})
/* loaded from: classes3.dex */
public class jx {
    public s hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.es.hp f25233l;

    public s hp(Context context, SSWebView sSWebView, com.byazt.es.jx jxVar, com.byazt.es.hp hpVar, Set<String> set, s.hp hpVar2) {
        com.byazt.es.hp hpVar3;
        if (this.hp == null) {
            hpVar3 = hpVar;
            s sVarHp = s.hp(context, sSWebView, jxVar, hpVar3, set, hpVar2, true);
            this.hp = sVarHp;
            sVarHp.j(false);
        } else {
            hpVar3 = hpVar;
        }
        this.f25233l = hpVar3;
        return this.hp;
    }
}
