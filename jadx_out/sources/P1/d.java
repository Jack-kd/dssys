package P1;

import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/* loaded from: classes5.dex */
public class d extends b {

    /* renamed from: g, reason: collision with root package name */
    public final Map f461g = new HashMap();

    @Override // N1.n
    public void A(HttpSession httpSession) {
        String strJ = J(httpSession.getId());
        WeakReference weakReference = new WeakReference(httpSession);
        synchronized (this) {
            try {
                Set hashSet = (Set) this.f461g.get(strJ);
                if (hashSet == null) {
                    hashSet = new HashSet();
                    this.f461g.put(strJ, hashSet);
                }
                hashSet.add(weakReference);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // N1.n
    public void G(HttpSession httpSession) {
        String strJ = J(httpSession.getId());
        synchronized (this) {
            try {
                Collection collection = (Collection) this.f461g.get(strJ);
                if (collection != null) {
                    Iterator it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        HttpSession httpSession2 = (HttpSession) ((WeakReference) it.next()).get();
                        if (httpSession2 == null) {
                            it.remove();
                        } else if (httpSession2 == httpSession) {
                            it.remove();
                            break;
                        }
                    }
                    if (collection.isEmpty()) {
                        this.f461g.remove(strJ);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // N1.n
    public String J(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    @Override // P1.b, org.eclipse.jetty.util.component.a
    public void doStart() {
        super.doStart();
    }

    @Override // P1.b, org.eclipse.jetty.util.component.a
    public void doStop() {
        this.f461g.clear();
        super.doStop();
    }

    @Override // N1.n
    public String o(String str, HttpServletRequest httpServletRequest) {
        String str2 = httpServletRequest == null ? null : (String) httpServletRequest.getAttribute("org.eclipse.jetty.ajp.JVMRoute");
        if (str2 != null) {
            return str + '.' + str2;
        }
        if (this.f429d == null) {
            return str;
        }
        return str + '.' + this.f429d;
    }

    @Override // N1.n
    public void p(String str) {
        Collection collection;
        synchronized (this) {
            collection = (Collection) this.f461g.remove(str);
        }
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                a aVar = (a) ((WeakReference) it.next()).get();
                if (aVar != null && aVar.x()) {
                    aVar.v();
                }
            }
            collection.clear();
        }
    }

    @Override // N1.n
    public boolean u(String str) {
        boolean zContainsKey;
        synchronized (this) {
            zContainsKey = this.f461g.containsKey(str);
        }
        return zContainsKey;
    }
}
