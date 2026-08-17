package P1;

import P1.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;

/* loaded from: classes5.dex */
public abstract class a implements c.InterfaceC0009c {

    /* renamed from: o, reason: collision with root package name */
    public static final R1.c f411o = g.f483l;

    /* renamed from: a, reason: collision with root package name */
    public final c f412a;

    /* renamed from: b, reason: collision with root package name */
    public final String f413b;

    /* renamed from: c, reason: collision with root package name */
    public final String f414c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f415d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f416e;

    /* renamed from: f, reason: collision with root package name */
    public final long f417f;

    /* renamed from: g, reason: collision with root package name */
    public long f418g;

    /* renamed from: h, reason: collision with root package name */
    public long f419h;

    /* renamed from: i, reason: collision with root package name */
    public long f420i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f421j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f422k;

    /* renamed from: l, reason: collision with root package name */
    public long f423l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f424m;

    /* renamed from: n, reason: collision with root package name */
    public int f425n;

    public a(c cVar, HttpServletRequest httpServletRequest) {
        this.f415d = new HashMap();
        this.f412a = cVar;
        this.f424m = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f417f = jCurrentTimeMillis;
        String strY = cVar.f440g.y(httpServletRequest, jCurrentTimeMillis);
        this.f413b = strY;
        String strO = cVar.f440g.o(strY, httpServletRequest);
        this.f414c = strO;
        this.f419h = jCurrentTimeMillis;
        this.f420i = jCurrentTimeMillis;
        this.f425n = 1;
        int i2 = cVar.f437d;
        this.f423l = i2 > 0 ? i2 * 1000 : -1L;
        R1.c cVar2 = f411o;
        if (cVar2.f()) {
            cVar2.i("new session & id " + strO + " " + strY, new Object[0]);
        }
    }

    public void A(int i2) {
        this.f423l = i2 * 1000;
    }

    public void B(int i2) {
        synchronized (this) {
            this.f425n = i2;
        }
    }

    public void C() {
        boolean z2 = true;
        this.f412a.a0(this, true);
        synchronized (this) {
            try {
                if (this.f421j) {
                    z2 = false;
                } else if (this.f425n > 0) {
                    this.f422k = true;
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            j();
        }
    }

    public void D(String str, Object obj) {
        if (obj == null || !(obj instanceof HttpSessionBindingListener)) {
            return;
        }
        ((HttpSessionBindingListener) obj).valueUnbound(new HttpSessionBindingEvent(this, str));
    }

    public void E() {
        synchronized (this) {
            try {
                HttpSessionEvent httpSessionEvent = new HttpSessionEvent(this);
                for (Object obj : this.f415d.values()) {
                    if (obj instanceof HttpSessionActivationListener) {
                        ((HttpSessionActivationListener) obj).sessionWillPassivate(httpSessionEvent);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean b(long j2) {
        synchronized (this) {
            try {
                if (this.f421j) {
                    return false;
                }
                this.f424m = false;
                long j3 = this.f419h;
                this.f420i = j3;
                this.f419h = j2;
                long j4 = this.f423l;
                if (j4 <= 0 || j3 <= 0 || j3 + j4 >= j2) {
                    this.f425n++;
                    return true;
                }
                v();
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(String str, Object obj) {
        if (obj == null || !(obj instanceof HttpSessionBindingListener)) {
            return;
        }
        ((HttpSessionBindingListener) obj).valueBound(new HttpSessionBindingEvent(this, str));
    }

    public void d() {
        if (this.f421j) {
            throw new IllegalStateException();
        }
    }

    public void e() {
        ArrayList arrayList;
        Object objK;
        while (true) {
            Map map = this.f415d;
            if (map == null || map.size() <= 0) {
                break;
            }
            synchronized (this) {
                arrayList = new ArrayList(this.f415d.keySet());
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                String str = (String) obj;
                synchronized (this) {
                    objK = k(str, null);
                }
                D(str, objK);
                this.f412a.R(this, str, objK, null);
            }
        }
        Map map2 = this.f415d;
        if (map2 != null) {
            map2.clear();
        }
    }

    public void f() {
        synchronized (this) {
            try {
                int i2 = this.f425n - 1;
                this.f425n = i2;
                if (this.f422k && i2 <= 0) {
                    j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g() {
        synchronized (this) {
            this.f418g = this.f419h;
        }
    }

    public void h() {
        synchronized (this) {
            try {
                HttpSessionEvent httpSessionEvent = new HttpSessionEvent(this);
                for (Object obj : this.f415d.values()) {
                    if (obj instanceof HttpSessionActivationListener) {
                        ((HttpSessionActivationListener) obj).sessionDidActivate(httpSessionEvent);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Object i(String str) {
        return this.f415d.get(str);
    }

    public void j() {
        try {
            f411o.i("invalidate {}", this.f413b);
            if (x()) {
                e();
            }
            synchronized (this) {
                this.f421j = true;
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.f421j = true;
                throw th;
            }
        }
    }

    public Object k(String str, Object obj) {
        return obj == null ? this.f415d.remove(str) : this.f415d.put(str, obj);
    }

    public long l() {
        long j2;
        synchronized (this) {
            j2 = this.f419h;
        }
        return j2;
    }

    public Enumeration m() {
        Enumeration enumeration;
        synchronized (this) {
            try {
                d();
                enumeration = Collections.enumeration(this.f415d == null ? Collections.EMPTY_LIST : new ArrayList(this.f415d.keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        return enumeration;
    }

    public int n() {
        int size;
        synchronized (this) {
            d();
            size = this.f415d.size();
        }
        return size;
    }

    public String o() {
        return this.f413b;
    }

    public long p() {
        return this.f418g;
    }

    public long q() {
        return this.f417f;
    }

    public String r() {
        return this.f412a.f454u ? this.f414c : this.f413b;
    }

    public int s() {
        return (int) (this.f423l / 1000);
    }

    public String t() {
        return this.f414c;
    }

    public String toString() {
        return getClass().getName() + ":" + r() + "@" + hashCode();
    }

    public int u() {
        int i2;
        synchronized (this) {
            i2 = this.f425n;
        }
        return i2;
    }

    public void v() {
        this.f412a.a0(this, true);
        j();
    }

    public boolean w() {
        return this.f416e;
    }

    public boolean x() {
        return !this.f421j;
    }

    public void y(String str, Object obj) {
        Object objK;
        synchronized (this) {
            d();
            objK = k(str, obj);
        }
        if (obj == null || !obj.equals(objK)) {
            if (objK != null) {
                D(str, objK);
            }
            if (obj != null) {
                c(str, obj);
            }
            this.f412a.R(this, str, objK, obj);
        }
    }

    public void z(boolean z2) {
        this.f416e = z2;
    }

    public a(c cVar, long j2, long j3, String str) {
        this.f415d = new HashMap();
        this.f412a = cVar;
        this.f417f = j2;
        this.f413b = str;
        String strO = cVar.f440g.o(str, null);
        this.f414c = strO;
        this.f419h = j3;
        this.f420i = j3;
        this.f425n = 1;
        int i2 = cVar.f437d;
        this.f423l = i2 > 0 ? i2 * 1000 : -1L;
        R1.c cVar2 = f411o;
        if (cVar2.f()) {
            cVar2.i("new session " + strO + " " + str, new Object[0]);
        }
    }

    @Override // P1.c.InterfaceC0009c
    public a a() {
        return this;
    }
}
