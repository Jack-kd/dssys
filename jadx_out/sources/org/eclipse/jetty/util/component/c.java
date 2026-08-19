package org.eclipse.jetty.util.component;

import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.LazyList;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    public static final R1.c f52625b = R1.b.a(c.class);

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f52626a = new CopyOnWriteArrayList();

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f52627a;

        /* renamed from: b, reason: collision with root package name */
        public final WeakReference f52628b;

        /* renamed from: c, reason: collision with root package name */
        public String f52629c;

        /* renamed from: d, reason: collision with root package name */
        public c f52630d;

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof b)) {
                b bVar = (b) obj;
                if (bVar.f52627a.get() == this.f52627a.get() && bVar.f52628b.get() == this.f52628b.get() && bVar.f52629c.equals(this.f52629c)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f52627a.hashCode() + this.f52628b.hashCode() + this.f52629c.hashCode();
        }

        public String toString() {
            return this.f52627a + "---" + this.f52629c + "-->" + this.f52628b;
        }

        public b(c cVar, Object obj, Object obj2, String str) {
            this.f52630d = cVar;
            this.f52627a = new WeakReference(obj);
            this.f52628b = new WeakReference(obj2);
            this.f52629c = str;
        }
    }

    public final void a(Object obj, Object obj2, String str) {
        R1.c cVar = f52625b;
        if (cVar.f()) {
            cVar.i("Container " + obj + " + " + obj2 + " as " + str, new Object[0]);
        }
        if (this.f52626a != null) {
            new b(obj, obj2, str);
            if (LazyList.size(this.f52626a) <= 0) {
                return;
            }
            t.f.a(LazyList.get(this.f52626a, 0));
            throw null;
        }
    }

    public void b(Object obj) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f52626a;
        if (copyOnWriteArrayList == null || LazyList.size(copyOnWriteArrayList) <= 0) {
            return;
        }
        t.f.a(LazyList.get(this.f52626a, 0));
        throw null;
    }

    public final void c(Object obj, Object obj2, String str) {
        R1.c cVar = f52625b;
        if (cVar.f()) {
            cVar.i("Container " + obj + " - " + obj2 + " as " + str, new Object[0]);
        }
        if (this.f52626a != null) {
            new b(obj, obj2, str);
            if (LazyList.size(this.f52626a) <= 0) {
                return;
            }
            t.f.a(LazyList.get(this.f52626a, 0));
            throw null;
        }
    }

    public void d(Object obj) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f52626a;
        if (copyOnWriteArrayList == null || LazyList.size(copyOnWriteArrayList) <= 0) {
            return;
        }
        t.f.a(LazyList.get(this.f52626a, 0));
        throw null;
    }

    public void update(Object obj, Object obj2, Object obj3, String str) {
        if (obj2 != null && !obj2.equals(obj3)) {
            c(obj, obj2, str);
        }
        if (obj3 == null || obj3.equals(obj2)) {
            return;
        }
        a(obj, obj3, str);
    }

    public void update(Object obj, Object obj2, Object obj3, String str, boolean z2) {
        if (obj2 != null && !obj2.equals(obj3)) {
            c(obj, obj2, str);
            if (z2) {
                d(obj2);
            }
        }
        if (obj3 == null || obj3.equals(obj2)) {
            return;
        }
        if (z2) {
            b(obj3);
        }
        a(obj, obj3, str);
    }

    public void update(Object obj, Object[] objArr, Object[] objArr2, String str) {
        update(obj, objArr, objArr2, str, false);
    }

    public void update(Object obj, Object[] objArr, Object[] objArr2, String str, boolean z2) {
        Object[] objArr3 = null;
        if (objArr2 != null) {
            Object[] objArr4 = new Object[objArr2.length];
            int length = objArr2.length;
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    break;
                }
                boolean z3 = true;
                if (objArr != null) {
                    int length2 = objArr.length;
                    while (true) {
                        int i3 = length2 - 1;
                        if (length2 <= 0) {
                            break;
                        }
                        Object obj2 = objArr2[i2];
                        if (obj2 != null && obj2.equals(objArr[i3])) {
                            objArr[i3] = null;
                            z3 = false;
                        }
                        length2 = i3;
                    }
                }
                if (z3) {
                    objArr4[i2] = objArr2[i2];
                }
                length = i2;
            }
            objArr3 = objArr4;
        }
        if (objArr != null) {
            int length3 = objArr.length;
            while (true) {
                int i4 = length3 - 1;
                if (length3 <= 0) {
                    break;
                }
                Object obj3 = objArr[i4];
                if (obj3 != null) {
                    c(obj, obj3, str);
                    if (z2) {
                        d(objArr[i4]);
                    }
                }
                length3 = i4;
            }
        }
        if (objArr3 != null) {
            for (int i5 = 0; i5 < objArr3.length; i5++) {
                Object obj4 = objArr3[i5];
                if (obj4 != null) {
                    if (z2) {
                        b(obj4);
                    }
                    a(obj, objArr3[i5], str);
                }
            }
        }
    }
}
