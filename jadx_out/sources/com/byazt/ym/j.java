package com.byazt.ym;

import com.byazt.jz.d;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, 38})
/* loaded from: classes3.dex */
public final class j implements Function<Object, Object> {
    public static final String TAG = "AutoService";

    /* renamed from: l, reason: collision with root package name */
    public static j f28061l;
    public int jx = d.f21857l;
    public final hp hp = new hp();

    private j() {
    }

    public static com.byazt.pg.hp getAppContext(String str) {
        return getInstance().hp.hp(str);
    }

    public static j getInstance() {
        j jVar = f28061l;
        if (jVar != null) {
            return jVar;
        }
        synchronized (j.class) {
            try {
                if (f28061l == null) {
                    System.currentTimeMillis();
                    f28061l = new j();
                    System.currentTimeMillis();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f28061l;
    }

    public static <T> T getService(Class<T> cls) {
        throw new RuntimeException("not support");
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        String str;
        try {
            if (obj == null) {
                return Collections.unmodifiableMap(this.hp.hp());
            }
            if (obj instanceof Function) {
                this.hp.hp(this, (Function) obj);
            } else {
                if (obj instanceof String) {
                    return this.hp.hp(String.valueOf(obj), null, false);
                }
                if (obj instanceof Integer) {
                    return Integer.valueOf(this.jx);
                }
            }
            return this.hp.hp(obj);
        } catch (Exception e2) {
            q qVarA = this.hp.a();
            if (qVarA != null) {
                if (obj == null) {
                    str = "";
                } else {
                    str = obj.getClass().getName() + " " + obj;
                }
                qVarA.hp(0, str, e2);
            }
            return null;
        }
    }

    public int getVersion() {
        return this.jx;
    }

    @Deprecated
    public void setForbiddenReuseList(List<String> list) {
        this.hp.hp(list);
    }

    public void setListener(q qVar) {
        this.hp.hp(qVar);
    }

    public static <T> T getService(Class<T> cls, com.byazt.pg.hp hpVar) {
        throw new RuntimeException("not support");
    }

    public static <T> T getService(String str) {
        return (T) getService(str, (com.byazt.pg.hp) null);
    }

    public static <T> T getService(String str, com.byazt.pg.hp hpVar) {
        hp hpVar2 = getInstance().hp;
        T t2 = (T) hpVar2.hp(str, hpVar, true);
        return t2 == null ? (T) hpVar2.hp(str, hpVar) : t2;
    }
}
