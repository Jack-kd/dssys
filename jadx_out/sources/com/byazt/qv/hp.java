package com.byazt.qv;

import com.byazt.xq.a;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1530, 28})
/* loaded from: classes3.dex */
public class hp {
    public int hp;
    public final Map<String, j> jx;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, jx> f25041l;

    @com.byazt.kj.hp(hp = {0, 1, 1530, 170})
    /* renamed from: com.byazt.qv.hp$hp, reason: collision with other inner class name */
    public static final class C0351hp {
        public static final hp hp = new hp();
    }

    public void hp(String str, jx jxVar) {
        synchronized (this.f25041l) {
            this.f25041l.put(str, jxVar);
        }
    }

    public j l(String str, List<com.byazt.fu.jx> list) {
        j jVarRemove;
        synchronized (this.jx) {
            jVarRemove = this.jx.remove(str);
        }
        if (jVarRemove == null) {
            return null;
        }
        if (a.hp(jVarRemove.a(), list)) {
            try {
                jVarRemove.w();
            } catch (InterruptedException unused) {
            }
            if (jVarRemove.s() && jVarRemove.eb()) {
                return jVarRemove;
            }
        }
        try {
            jVarRemove.j();
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private hp() {
        this.f25041l = new HashMap();
        this.jx = new LinkedHashMap(3);
        this.hp = 3;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public jx hp(String str, List<com.byazt.fu.jx> list) {
        jx jxVarRemove;
        synchronized (this.f25041l) {
            jxVarRemove = this.f25041l.remove(str);
        }
        if (jxVarRemove == null) {
            return null;
        }
        if (a.hp(jxVarRemove.s(), list)) {
            try {
                jxVarRemove.j();
            } catch (InterruptedException unused) {
            }
            if (jxVarRemove.a() && jxVarRemove.w()) {
                return jxVarRemove;
            }
        }
        try {
            jxVarRemove.jx();
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public boolean hp(String str) {
        jx jxVar = this.f25041l.get(str);
        if (jxVar != null) {
            if (jxVar.eb()) {
                return true;
            }
            if (jxVar.a() && jxVar.w()) {
                return true;
            }
        }
        return false;
    }

    public static hp hp() {
        return C0351hp.hp;
    }
}
