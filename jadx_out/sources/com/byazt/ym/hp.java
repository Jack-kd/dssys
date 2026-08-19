package com.byazt.ym;

import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.api.ATAdConst;
import com.byazt.pg.ns;
import com.umeng.analytics.pro.g;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, 28})
/* loaded from: classes3.dex */
public final class hp {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.sm.j f28054a;
    public final com.byazt.bk.hp eb;
    public q hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.sm.hp f28056j;
    public final com.byazt.sm.l jx;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.glv.hp f28059s;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.sm.jx f28060w;

    /* renamed from: l, reason: collision with root package name */
    public String f28057l = "";

    /* renamed from: q, reason: collision with root package name */
    public final Map<String, Object> f28058q = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final Set<Function> f28055e = new HashSet();
    public boolean gu = false;
    public Map<String, com.byazt.pg.hp> jl = new HashMap();

    public hp() {
        com.byazt.sm.l lVar = new com.byazt.sm.l();
        this.jx = lVar;
        this.f28060w = new com.byazt.sm.jx(this);
        this.f28056j = new com.byazt.sm.hp();
        this.eb = new com.byazt.bk.hp(this);
        this.f28054a = new com.byazt.sm.j();
        this.f28059s = new com.byazt.glv.hp(lVar, this);
    }

    public q a() {
        return this.hp;
    }

    public com.byazt.sm.l eb() {
        return this.jx;
    }

    public void hp(q qVar) {
        this.hp = qVar;
        this.f28056j.hp(qVar);
        this.f28060w.hp(qVar);
        this.eb.hp(qVar);
        this.f28054a.hp(qVar);
    }

    public com.byazt.sm.jx j() {
        return this.f28060w;
    }

    public com.byazt.sm.hp jx() {
        return this.f28056j;
    }

    public boolean l() {
        return this.gu;
    }

    public com.byazt.sm.j w() {
        return this.f28054a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T hp(java.lang.String r9, com.byazt.pg.hp r10, boolean r11) {
        /*
            r8 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            r1 = 0
            if (r0 == 0) goto L16
            com.byazt.ym.q r10 = r8.hp
            if (r10 == 0) goto L15
            java.lang.RuntimeException r11 = new java.lang.RuntimeException
            java.lang.String r0 = "null key"
            r11.<init>(r0)
            r10.hp(r9, r11)
        L15:
            return r1
        L16:
            com.byazt.sm.l r0 = r8.jx
            com.byazt.ym.gu r3 = r0.hp(r9)
            if (r3 != 0) goto L1f
            return r1
        L1f:
            java.lang.Object r0 = r3.hp(r10)
            if (r0 == 0) goto L26
            return r0
        L26:
            int r2 = r3.jx
            if (r2 >= 0) goto L2b
            return r1
        L2b:
            java.lang.String r1 = "m_d_s"
            boolean r1 = r1.equals(r9)
            if (r1 != 0) goto L3e
            java.lang.String r1 = "m_s"
            boolean r1 = r1.equals(r9)
            if (r1 == 0) goto L3c
            goto L3e
        L3c:
            r1 = 0
            goto L3f
        L3e:
            r1 = 1
        L3f:
            if (r1 == 0) goto L4a
            java.util.Map<java.lang.String, java.lang.Object> r0 = r8.f28058q
            java.lang.Object r0 = r0.get(r9)
            if (r0 == 0) goto L4a
            return r0
        L4a:
            monitor-enter(r3)
            if (r1 != 0) goto L72
            boolean r2 = r3.f28053w     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L72
            com.byazt.sm.j r2 = r8.f28054a     // Catch: java.lang.Throwable -> L6f
            android.util.Pair r2 = r2.hp(r3, r10)     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L72
            java.lang.Object r5 = r2.second     // Catch: java.lang.Throwable -> L6f
            if (r5 == 0) goto L72
            r4 = r2
            com.byazt.sm.jx r2 = r8.f28060w     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r0 = r4.first     // Catch: java.lang.Throwable -> L6f
            r6 = r0
            java.util.function.Function r6 = (java.util.function.Function) r6     // Catch: java.lang.Throwable -> L6f
            r7 = 1
            r4 = r10
            java.lang.Object r0 = r2.hp(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L73
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            return r0
        L6f:
            r0 = move-exception
            r9 = r0
            goto La8
        L72:
            r4 = r10
        L73:
            com.byazt.sm.hp r10 = r8.f28056j     // Catch: java.lang.Throwable -> L6f
            android.util.Pair r10 = r10.hp(r3, r4, r11)     // Catch: java.lang.Throwable -> L6f
            if (r10 == 0) goto L81
            java.lang.Object r2 = r10.second     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L81
            r5 = r2
            goto L82
        L81:
            r5 = r0
        L82:
            if (r5 == 0) goto La6
            if (r1 == 0) goto L8c
            java.util.Map<java.lang.String, java.lang.Object> r10 = r8.f28058q     // Catch: java.lang.Throwable -> L6f
            r10.put(r9, r5)     // Catch: java.lang.Throwable -> L6f
            goto L99
        L8c:
            boolean r9 = r3.f28053w     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto L99
            com.byazt.sm.j r9 = r8.f28054a     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r10 = r10.first     // Catch: java.lang.Throwable -> L6f
            java.util.function.Function r10 = (java.util.function.Function) r10     // Catch: java.lang.Throwable -> L6f
            r9.hp(r3, r4, r5, r10)     // Catch: java.lang.Throwable -> L6f
        L99:
            com.byazt.sm.jx r2 = r8.f28060w     // Catch: java.lang.Throwable -> L6f
            r6 = 0
            r7 = 1
            java.lang.Object r9 = r2.hp(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L6f
            if (r11 == 0) goto La6
            if (r9 == 0) goto La6
            r5 = r9
        La6:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            return r5
        La8:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ym.hp.hp(java.lang.String, com.byazt.pg.hp, boolean):java.lang.Object");
    }

    public Object hp(String str, com.byazt.pg.hp hpVar, Object obj, Function function) {
        return this.f28060w.hp(this.jx.hp(str), hpVar, obj, function, true);
    }

    @Deprecated
    public void hp(List<String> list) {
        this.eb.hp(list);
    }

    public void hp(j jVar, Function function) {
        if (function == jVar) {
            q qVar = this.hp;
            if (qVar != null) {
                qVar.hp(4, "regSelf", new RuntimeException());
                return;
            }
            return;
        }
        if (jVar.getClass().getClassLoader() == function.getClass().getClassLoader()) {
            q qVar2 = this.hp;
            if (qVar2 != null) {
                qVar2.hp(3, "two main service bridge registered", new RuntimeException());
                return;
            }
            return;
        }
        if (this.f28055e.contains(function)) {
            return;
        }
        boolean zBooleanValue = com.byazt.glv.hp.hp(function).booleanValue();
        if (zBooleanValue && this.gu) {
            q qVar3 = this.hp;
            if (qVar3 != null) {
                qVar3.hp(1, "two main service bridge registered", null);
                return;
            }
            return;
        }
        this.eb.hp(function, zBooleanValue);
        gu[] guVarArrHp = this.jx.hp();
        if (guVarArrHp == null || guVarArrHp.length == 0) {
            return;
        }
        com.byazt.vde.hp hpVar = new com.byazt.vde.hp(this.hp);
        for (gu guVar : guVarArrHp) {
            if (guVar.f28053w) {
                if (hpVar.hp(guVar, function) && !zBooleanValue) {
                    hpVar.hp(guVar, this, function);
                }
                if (zBooleanValue) {
                    synchronized (guVar) {
                        this.f28054a.hp(guVar, this);
                    }
                } else {
                    continue;
                }
            }
        }
        if (this.gu) {
            for (Function function2 : this.f28055e) {
                function2.apply(function);
                function.apply(function2);
            }
            this.f28055e.size();
        } else if (zBooleanValue) {
            function.apply(jVar);
        }
        synchronized (this.f28055e) {
            this.f28055e.add(function);
        }
    }

    public Map<String, Object> hp() {
        if (this.gu) {
            return this.f28058q;
        }
        return Collections.EMPTY_MAP;
    }

    public Object hp(Object obj) {
        if (obj instanceof SparseArray) {
            return this.f28059s.hp((SparseArray) obj);
        }
        return null;
    }

    public Object hp(String str, com.byazt.pg.hp hpVar) {
        Function functionL;
        synchronized (this.f28055e) {
            try {
                Object obj = null;
                for (Function function : this.f28055e) {
                    Object objHp = com.byazt.glv.hp.hp(function, str, hpVar);
                    if (objHp != null) {
                        if ((objHp instanceof Function) && (functionL = com.byazt.glv.hp.l((Function) objHp)) != null) {
                            objHp = functionL;
                        }
                        return hp(str, hpVar, objHp, function);
                    }
                    obj = objHp;
                }
                return obj;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int hp(Function function) {
        Object objApply = function.apply(0);
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    public void hp(boolean z2) {
        this.gu = z2;
        if (z2) {
            j.getService("m_d_s");
            j.getService(ATAdConst.KEY.M_S);
        }
    }

    public com.byazt.pg.hp hp(String str) {
        SparseArray sparseArray;
        com.byazt.pg.hp hpVarHp;
        if (TextUtils.isEmpty(str)) {
            str = this.f28057l;
        } else if (TextUtils.isEmpty(this.f28057l)) {
            this.f28057l = str;
        }
        com.byazt.pg.hp hpVar = this.jl.get(str);
        if (hpVar != null) {
            return hpVar;
        }
        this.jx.hp(g.f49337X);
        ns nsVar = (ns) j.getService("m_d_s");
        Object data = nsVar.getData(-2);
        if (data instanceof SparseArray) {
            sparseArray = (SparseArray) data;
        } else {
            sparseArray = new SparseArray();
            nsVar.setData(-2, sparseArray);
        }
        Object obj = sparseArray.get(str.hashCode());
        if (obj instanceof com.byazt.pg.hp) {
            hpVarHp = (com.byazt.pg.hp) obj;
        } else {
            hpVarHp = this.f28056j.hp(str);
        }
        this.jl.put(str, hpVarHp);
        return hpVarHp;
    }
}
