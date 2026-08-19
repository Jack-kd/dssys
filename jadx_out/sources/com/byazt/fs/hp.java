package com.byazt.fs;

import com.byazt.mg.a;
import java.io.InputStream;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 218, 28})
/* loaded from: classes2.dex */
public abstract class hp {
    public List<a.l> hp;

    /* renamed from: l, reason: collision with root package name */
    public w f20094l;

    public abstract int hp();

    public a.l hp(String str) {
        List<a.l> list;
        if (str != null && (list = this.hp) != null && list.size() > 0) {
            for (a.l lVar : this.hp) {
                if (str.equals(lVar.hp)) {
                    return lVar;
                }
            }
        }
        return null;
    }

    public abstract String hp(String str, String str2);

    public abstract InputStream j();

    public abstract List<a.l> jx();

    public abstract boolean l();

    public w w() {
        return this.f20094l;
    }
}
