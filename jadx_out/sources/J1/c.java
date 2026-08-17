package J1;

import L1.d;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.jetty.client.HttpDestination;
import org.eclipse.jetty.client.i;
import org.eclipse.jetty.client.j;
import org.eclipse.jetty.util.m;

/* loaded from: classes5.dex */
public class c extends i {

    /* renamed from: n, reason: collision with root package name */
    public static final R1.c f166n = R1.b.a(c.class);

    /* renamed from: h, reason: collision with root package name */
    public HttpDestination f167h;

    /* renamed from: i, reason: collision with root package name */
    public j f168i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f169j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f170k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f171l;

    /* renamed from: m, reason: collision with root package name */
    public int f172m;

    public c(HttpDestination httpDestination, j jVar) {
        super(jVar.getEventListener(), true);
        this.f172m = 0;
        this.f167h = httpDestination;
        this.f168i = jVar;
    }

    @Override // org.eclipse.jetty.client.i, org.eclipse.jetty.client.h
    public void b() {
        this.f172m++;
        m(true);
        n(true);
        this.f169j = false;
        this.f170k = false;
        this.f171l = false;
        super.b();
    }

    @Override // org.eclipse.jetty.client.i, org.eclipse.jetty.client.h
    public void e() {
        this.f169j = true;
        if (!this.f171l) {
            R1.c cVar = f166n;
            if (cVar.f()) {
                cVar.i("onRequestComplete, delegating to super with Request complete=" + this.f169j + ", response complete=" + this.f170k + " " + this.f168i, new Object[0]);
            }
            super.e();
            return;
        }
        if (!this.f170k) {
            R1.c cVar2 = f166n;
            if (cVar2.f()) {
                cVar2.i("onRequestComplete, Response not yet complete onRequestComplete, calling super for " + this.f168i, new Object[0]);
            }
            super.e();
            return;
        }
        R1.c cVar3 = f166n;
        if (cVar3.f()) {
            cVar3.i("onRequestComplete, Both complete: Resending from onResponseComplete " + this.f168i, new Object[0]);
        }
        this.f170k = false;
        this.f169j = false;
        m(true);
        n(true);
        this.f167h.r(this.f168i);
    }

    @Override // org.eclipse.jetty.client.i, org.eclipse.jetty.client.h
    public void h(d dVar, d dVar2) {
        R1.c cVar = f166n;
        if (cVar.f()) {
            cVar.i("SecurityListener:Header: " + dVar.toString() + " / " + dVar2.toString(), new Object[0]);
        }
        if (!l() && org.eclipse.jetty.http.j.f52264d.e(dVar) == 51) {
            String string = dVar2.toString();
            p(string);
            o(string);
            this.f167h.g().j0();
        }
        super.h(dVar, dVar2);
    }

    @Override // org.eclipse.jetty.client.i, org.eclipse.jetty.client.h
    public void i(d dVar, int i2, d dVar2) {
        R1.c cVar = f166n;
        if (cVar.f()) {
            cVar.i("SecurityListener:Response Status: " + i2, new Object[0]);
        }
        if (i2 != 401 || this.f172m >= this.f167h.g().r0()) {
            n(true);
            m(true);
            this.f171l = false;
        } else {
            n(false);
            this.f171l = true;
        }
        super.i(dVar, i2, dVar2);
    }

    @Override // org.eclipse.jetty.client.i, org.eclipse.jetty.client.h
    public void k() {
        this.f170k = true;
        if (!this.f171l) {
            R1.c cVar = f166n;
            if (cVar.f()) {
                cVar.i("OnResponseComplete, delegating to super with Request complete=" + this.f169j + ", response complete=" + this.f170k + " " + this.f168i, new Object[0]);
            }
            super.k();
            return;
        }
        if (!this.f169j) {
            R1.c cVar2 = f166n;
            if (cVar2.f()) {
                cVar2.i("onResponseComplete, Request not yet complete from onResponseComplete,  calling super " + this.f168i, new Object[0]);
            }
            super.k();
            return;
        }
        R1.c cVar3 = f166n;
        if (cVar3.f()) {
            cVar3.i("onResponseComplete, Both complete: Resending from onResponseComplete" + this.f168i, new Object[0]);
        }
        this.f170k = false;
        this.f169j = false;
        n(true);
        m(true);
        this.f167h.r(this.f168i);
    }

    public Map o(String str) {
        HashMap map = new HashMap();
        StringTokenizer stringTokenizer = new StringTokenizer(str.substring(str.indexOf(" ") + 1, str.length()), ",");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            String[] strArrSplit = strNextToken.split("=");
            if (strArrSplit.length == 2) {
                map.put(strArrSplit[0].trim(), m.h(strArrSplit[1].trim()));
            } else {
                f166n.i("SecurityListener: missed scraping authentication details - " + strNextToken, new Object[0]);
            }
        }
        return map;
    }

    public String p(String str) {
        if (str.indexOf(" ") == -1) {
            return str.toString().trim();
        }
        String string = str.toString();
        return string.substring(0, string.indexOf(" ")).trim();
    }
}
