package com.byazt.by;

import com.byazt.jz.n;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 547, 28})
/* loaded from: classes2.dex */
public class hp {
    public final String hp;

    /* renamed from: l, reason: collision with root package name */
    public final List<String> f18692l = new ArrayList();

    public hp(String str) {
        this.hp = str;
    }

    public static void hp(String str, String str2) {
        hp hpVar = (hp) n.hp(str, hp.class);
        if (hpVar != null) {
            hpVar.hp(str2);
            return;
        }
        hp hpVar2 = new hp(str);
        hpVar2.hp(str2);
        n.hp(str, hpVar2, hp.class);
    }

    public void hp(String str) {
        this.f18692l.add(str);
    }
}
