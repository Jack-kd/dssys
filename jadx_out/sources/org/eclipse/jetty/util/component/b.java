package org.eclipse.jetty.util.component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public abstract class b extends org.eclipse.jetty.util.component.a implements d, e {

    /* renamed from: d, reason: collision with root package name */
    public static final R1.c f52619d = R1.b.a(b.class);

    /* renamed from: b, reason: collision with root package name */
    public final List f52620b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public boolean f52621c = false;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        public final Object f52622a;

        /* renamed from: b, reason: collision with root package name */
        public volatile boolean f52623b = true;

        public a(Object obj) {
            this.f52622a = obj;
        }

        public String toString() {
            return "{" + this.f52622a + "," + this.f52623b + "}";
        }
    }

    public static void S(Appendable appendable, String str, Collection... collectionArr) {
        if (collectionArr.length == 0) {
            return;
        }
        int size = 0;
        for (Collection collection : collectionArr) {
            size += collection.size();
        }
        if (size == 0) {
            return;
        }
        int i2 = 0;
        for (Collection collection2 : collectionArr) {
            for (Object obj : collection2) {
                i2++;
                appendable.append(str).append(" +- ");
                if (obj instanceof e) {
                    e eVar = (e) obj;
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(i2 == size ? "    " : " |  ");
                    eVar.m(appendable, sb.toString());
                } else {
                    T(appendable, obj);
                }
            }
            if (i2 != size) {
                appendable.append(str).append(" |\n");
            }
        }
    }

    public static void T(Appendable appendable, Object obj) throws IOException {
        try {
            if (obj instanceof f) {
                appendable.append(String.valueOf(obj)).append(" - ").append(org.eclipse.jetty.util.component.a.getState((f) obj)).append("\n");
            } else {
                appendable.append(String.valueOf(obj)).append("\n");
            }
        } catch (Throwable th) {
            appendable.append(" => ").append(th.toString()).append('\n');
        }
    }

    public boolean P(Object obj) {
        return Q(obj, ((obj instanceof f) && ((f) obj).isStarted()) ? false : true);
    }

    public boolean Q(Object obj, boolean z2) {
        if (R(obj)) {
            return false;
        }
        a aVar = new a(obj);
        aVar.f52623b = z2;
        this.f52620b.add(aVar);
        if (!(obj instanceof f)) {
            return true;
        }
        f fVar = (f) obj;
        if (!z2 || !this.f52621c) {
            return true;
        }
        try {
            fVar.start();
            return true;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean R(Object obj) {
        Iterator it = this.f52620b.iterator();
        while (it.hasNext()) {
            if (((a) it.next()).f52622a == obj) {
                return true;
            }
        }
        return false;
    }

    public void U() {
        try {
            m(System.err, "");
        } catch (IOException e2) {
            f52619d.e(e2);
        }
    }

    public void V(Appendable appendable) throws IOException {
        appendable.append(String.valueOf(this)).append(" - ").append(getState()).append("\n");
    }

    public Object W(Class cls) {
        for (a aVar : this.f52620b) {
            if (cls.isInstance(aVar.f52622a)) {
                return aVar.f52622a;
            }
        }
        return null;
    }

    public Collection X() {
        return Y(Object.class);
    }

    public List Y(Class cls) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : this.f52620b) {
            if (cls.isInstance(aVar.f52622a)) {
                arrayList.add(aVar.f52622a);
            }
        }
        return arrayList;
    }

    public boolean Z(Object obj) {
        for (a aVar : this.f52620b) {
            if (aVar.f52622a == obj) {
                this.f52620b.remove(aVar);
                return true;
            }
        }
        return false;
    }

    public void destroy() {
        ArrayList arrayList = new ArrayList(this.f52620b);
        Collections.reverse(arrayList);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            a aVar = (a) obj;
            if ((aVar.f52622a instanceof d) && aVar.f52623b) {
                ((d) aVar.f52622a).destroy();
            }
        }
        this.f52620b.clear();
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        for (a aVar : this.f52620b) {
            if (aVar.f52623b) {
                Object obj = aVar.f52622a;
                if (obj instanceof f) {
                    f fVar = (f) obj;
                    if (!fVar.isRunning()) {
                        fVar.start();
                    }
                }
            }
        }
        this.f52621c = true;
        super.doStart();
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() {
        int i2 = 0;
        this.f52621c = false;
        super.doStop();
        ArrayList arrayList = new ArrayList(this.f52620b);
        Collections.reverse(arrayList);
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            a aVar = (a) obj;
            if (aVar.f52623b) {
                Object obj2 = aVar.f52622a;
                if (obj2 instanceof f) {
                    f fVar = (f) obj2;
                    if (fVar.isRunning()) {
                        fVar.stop();
                    }
                }
            }
        }
    }

    public void m(Appendable appendable, String str) throws IOException {
        V(appendable);
        int size = this.f52620b.size();
        if (size == 0) {
            return;
        }
        int i2 = 0;
        for (a aVar : this.f52620b) {
            i2++;
            appendable.append(str).append(" +- ");
            if (aVar.f52623b) {
                Object obj = aVar.f52622a;
                if (obj instanceof e) {
                    e eVar = (e) obj;
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(i2 == size ? "    " : " |  ");
                    eVar.m(appendable, sb.toString());
                } else {
                    T(appendable, obj);
                }
            } else {
                T(appendable, aVar.f52622a);
            }
        }
        if (i2 != size) {
            appendable.append(str).append(" |\n");
        }
    }
}
