package com.byazt.oa;

import android.text.TextUtils;
import com.byazt.oa.ec;
import com.byazt.oa.j;
import com.byazt.oa.n;
import com.byazt.oa.ns;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 149, 94})
/* loaded from: classes3.dex */
public class eb implements ns.hp {

    /* renamed from: e, reason: collision with root package name */
    public final com.byazt.oa.hp f23887e;
    public final zy eb;
    public final s hp;

    /* renamed from: l, reason: collision with root package name */
    public final sz f23889l;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f23890q;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f23891s;
    public final Map<String, l> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, j.l> f23888j = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public final List<u> f23892w = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final Set<j> f23886a = new HashSet();

    @com.byazt.kj.hp(hp = {0, 1, 149, 131})
    public static final class hp {
        public boolean hp;

        /* renamed from: l, reason: collision with root package name */
        public String f23895l;

        private hp(boolean z2, String str) {
            this.hp = z2;
            this.f23895l = str;
        }
    }

    public eb(e eVar, com.byazt.oa.hp hpVar, n nVar) {
        this.f23887e = hpVar;
        this.hp = eVar.f23878j;
        sz szVar = new sz(nVar, eVar.jl, eVar.zy);
        this.f23889l = szVar;
        szVar.hp(this);
        szVar.hp(eVar.f23883u);
        this.eb = eVar.f23881q;
        this.f23891s = eVar.f23882s;
        this.f23890q = eVar.f23884v;
    }

    private cx l(String str, l lVar) {
        return this.f23890q ? cx.PRIVATE : this.f23889l.hp(this.f23891s, str, lVar);
    }

    public hp hp(u uVar, a aVar) throws Exception {
        l lVar = this.jx.get(uVar.f23918j);
        if (lVar != null) {
            try {
                cx cxVarL = l(aVar.f23871l, lVar);
                aVar.f23870j = cxVarL;
                if (cxVarL == null) {
                    throw new vv(-1);
                }
                if (lVar instanceof w) {
                    return hp(uVar, (w) lVar, aVar);
                }
                if (lVar instanceof jx) {
                    return hp(uVar, (jx) lVar, cxVarL);
                }
            } catch (n.hp e2) {
                q.hp("No remote permission config fetched, call pending: ".concat(String.valueOf(uVar)), e2);
                this.f23892w.add(uVar);
                return new hp(false, b.hp());
            }
        }
        j.l lVar2 = this.f23888j.get(uVar.f23918j);
        if (lVar2 == null) {
            return null;
        }
        j jVarHp = lVar2.hp();
        jVarHp.hp(uVar.f23918j);
        cx cxVarL2 = l(aVar.f23871l, jVarHp);
        aVar.f23870j = cxVarL2;
        if (cxVarL2 != null) {
            return hp(uVar, jVarHp, aVar);
        }
        jVarHp.w();
        throw new vv(-1);
    }

    public void hp(String str, w<?, ?> wVar) {
        wVar.hp(str);
        this.jx.put(str, wVar);
    }

    public void hp(String str, j.l lVar) {
        this.f23888j.put(str, lVar);
    }

    public boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.jx.containsKey(str)) {
            return true;
        }
        return this.f23888j.containsKey(str);
    }

    public void hp() {
        Iterator<j> it = this.f23886a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f23886a.clear();
        this.jx.clear();
        this.f23888j.clear();
        this.f23889l.l(this);
    }

    private hp hp(u uVar, w wVar, a aVar) throws Exception {
        return new hp(true, b.hp(this.hp.hp((s) wVar.hp(hp(uVar.f23921w, (l) wVar), aVar))));
    }

    private hp hp(final u uVar, final j jVar, a aVar) throws Exception {
        this.f23886a.add(jVar);
        jVar.hp(hp(uVar.f23921w, jVar), aVar, new j.hp() { // from class: com.byazt.oa.eb.1
            @Override // com.byazt.oa.j.hp
            public void hp(Object obj) {
                if (eb.this.f23887e == null) {
                    return;
                }
                eb.this.f23887e.l(b.hp(eb.this.hp.hp((s) obj)), uVar);
                eb.this.f23886a.remove(jVar);
            }

            @Override // com.byazt.oa.j.hp
            public void hp(Throwable th) {
                if (eb.this.f23887e == null) {
                    return;
                }
                eb.this.f23887e.l(b.hp(th), uVar);
                eb.this.f23886a.remove(jVar);
            }
        });
        return new hp(false, b.hp());
    }

    private hp hp(final u uVar, jx jxVar, cx cxVar) throws Exception {
        new ec(uVar.f23918j, cxVar, new ec.hp() { // from class: com.byazt.oa.eb.2
        });
        return new hp(false, b.hp());
    }

    private Object hp(String str, l lVar) throws JSONException {
        return this.hp.hp(str, hp(lVar)[0]);
    }

    private static Type[] hp(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }
}
