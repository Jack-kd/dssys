package com.byazt.gy;

import android.text.TextUtils;
import com.byazt.gy.l;
import com.byazt.ymw.e;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 776, 38})
/* loaded from: classes2.dex */
public abstract class j<T, F extends l> {
    public final Map<String, jx<T, F>> hp = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public final List<Object> f20631l = new CopyOnWriteArrayList();
    public Map<String, String> jx = new ConcurrentHashMap();

    public interface hp {
        void hp(l lVar);
    }

    public l getContext(String str) {
        jx<T, F> jxVar;
        if (str == null || (jxVar = this.hp.get(str)) == null) {
            return null;
        }
        return jxVar.getContext();
    }

    public String l(String str) {
        String str2;
        String str3 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Iterator<String> it = this.jx.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str2 = null;
                break;
            }
            String next = it.next();
            if (!TextUtils.isEmpty(next) && str.contains(next)) {
                str2 = this.jx.get(next);
                str3 = next;
                break;
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            this.jx.remove(str3);
        }
        return str2;
    }

    public void hp(String str, hp hpVar) {
        jx<T, F> jxVar;
        if (hpVar == null || str == null || (jxVar = this.hp.get(str)) == null) {
            return;
        }
        hpVar.hp(jxVar.getContext());
    }

    public final void hp(String str, a<? extends l> aVar) {
        jx<T, F> jxVar;
        if (str == null || (jxVar = this.hp.get(str)) == null) {
            return;
        }
        jxVar.hp(aVar);
    }

    private void hp(final jx<?, ?> jxVar) {
        if (jxVar == null) {
            return;
        }
        e.jx().post(new Runnable() { // from class: com.byazt.gy.j.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = j.this.f20631l.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        });
    }

    public void hp(String str, jx<T, F> jxVar) {
        if (str != null && jxVar != null) {
            this.hp.put(str, jxVar);
        }
        hp((jx<?, ?>) jxVar);
    }

    public jx<T, F> hp(String str) {
        if (str != null) {
            return this.hp.get(str);
        }
        return null;
    }

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.jx.put(str, str2);
    }
}
