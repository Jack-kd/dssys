package org.eclipse.jetty.http;

import L1.e;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.util.StringMap;

/* loaded from: classes5.dex */
public class g {

    /* renamed from: c, reason: collision with root package name */
    public static final R1.c f52182c = R1.b.a(g.class);

    /* renamed from: d, reason: collision with root package name */
    public static final TimeZone f52183d;

    /* renamed from: e, reason: collision with root package name */
    public static final L1.f f52184e;

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f52185f;

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f52186g;

    /* renamed from: h, reason: collision with root package name */
    public static final ThreadLocal f52187h;

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f52188i;

    /* renamed from: j, reason: collision with root package name */
    public static final ThreadLocal f52189j;

    /* renamed from: k, reason: collision with root package name */
    public static final String f52190k;

    /* renamed from: l, reason: collision with root package name */
    public static final L1.d f52191l;

    /* renamed from: m, reason: collision with root package name */
    public static final String f52192m;

    /* renamed from: n, reason: collision with root package name */
    public static ConcurrentMap f52193n;

    /* renamed from: o, reason: collision with root package name */
    public static int f52194o;

    /* renamed from: p, reason: collision with root package name */
    public static final Float f52195p;

    /* renamed from: q, reason: collision with root package name */
    public static final Float f52196q;

    /* renamed from: r, reason: collision with root package name */
    public static final StringMap f52197r;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f52198a = new ArrayList(20);

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f52199b = new HashMap(32);

    public static class a extends ThreadLocal {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c initialValue() {
            return new c(null);
        }
    }

    public static class b extends ThreadLocal {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d initialValue() {
            return new d(null);
        }
    }

    public static final class e {

        /* renamed from: a, reason: collision with root package name */
        public L1.d f52203a;

        /* renamed from: b, reason: collision with root package name */
        public L1.d f52204b;

        /* renamed from: c, reason: collision with root package name */
        public e f52205c;

        public /* synthetic */ e(L1.d dVar, L1.d dVar2, a aVar) {
            this(dVar, dVar2);
        }

        public long e() {
            return L1.g.i(this.f52204b);
        }

        public String f() {
            return L1.g.f(this.f52203a);
        }

        public int g() {
            return j.f52264d.e(this.f52203a);
        }

        public String h() {
            return L1.g.f(this.f52204b);
        }

        public L1.d i() {
            return this.f52204b;
        }

        public int j() {
            return i.f52223d.e(this.f52204b);
        }

        public void k(L1.d dVar) {
            L1.d dVar2 = this.f52203a;
            if ((dVar2 instanceof e.a ? ((e.a) dVar2).h() : -1) >= 0) {
                dVar.m0(this.f52203a);
            } else {
                int index = this.f52203a.getIndex();
                int iN0 = this.f52203a.n0();
                while (index < iN0) {
                    int i2 = index + 1;
                    byte bK0 = this.f52203a.k0(index);
                    if (bK0 != 10 && bK0 != 13 && bK0 != 58) {
                        dVar.put(bK0);
                    }
                    index = i2;
                }
            }
            dVar.put((byte) 58);
            dVar.put((byte) 32);
            L1.d dVar3 = this.f52204b;
            if ((dVar3 instanceof e.a ? ((e.a) dVar3).h() : -1) >= 0) {
                dVar.m0(this.f52204b);
            } else {
                int index2 = this.f52204b.getIndex();
                int iN02 = this.f52204b.n0();
                while (index2 < iN02) {
                    int i3 = index2 + 1;
                    byte bK02 = this.f52204b.k0(index2);
                    if (bK02 != 10 && bK02 != 13) {
                        dVar.put(bK02);
                    }
                    index2 = i3;
                }
            }
            L1.g.c(dVar);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(f());
            sb.append("=");
            sb.append(this.f52204b);
            sb.append(this.f52205c == null ? "" : "->");
            sb.append("]");
            return sb.toString();
        }

        public e(L1.d dVar, L1.d dVar2) {
            this.f52203a = dVar;
            this.f52204b = dVar2;
            this.f52205c = null;
        }
    }

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        f52183d = timeZone;
        L1.f fVar = new L1.f("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        f52184e = fVar;
        timeZone.setID("GMT");
        fVar.e(timeZone);
        f52185f = new String[]{"Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        f52186g = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan"};
        f52187h = new a();
        f52188i = new String[]{"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss", "EEE MMM dd HH:mm:ss yyyy", "EEE, dd MMM yyyy HH:mm:ss", "EEE dd MMM yyyy HH:mm:ss zzz", "EEE dd MMM yyyy HH:mm:ss", "EEE MMM dd yyyy HH:mm:ss zzz", "EEE MMM dd yyyy HH:mm:ss", "EEE MMM-dd-yyyy HH:mm:ss zzz", "EEE MMM-dd-yyyy HH:mm:ss", "dd MMM yyyy HH:mm:ss zzz", "dd MMM yyyy HH:mm:ss", "dd-MMM-yy HH:mm:ss zzz", "dd-MMM-yy HH:mm:ss", "MMM dd HH:mm:ss yyyy zzz", "MMM dd HH:mm:ss yyyy", "EEE MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss"};
        f52189j = new b();
        String strM = m(0L);
        f52190k = strM;
        f52191l = new L1.h(strM);
        f52192m = k(0L).trim();
        f52193n = new ConcurrentHashMap();
        f52194o = Integer.getInteger("org.eclipse.jetty.http.HttpFields.CACHE", 2000).intValue();
        Float f2 = new Float("1.0");
        f52195p = f2;
        Float f3 = new Float("0.0");
        f52196q = f3;
        StringMap stringMap = new StringMap();
        f52197r = stringMap;
        stringMap.put((String) null, (Object) f2);
        stringMap.put("1.0", (Object) f2);
        stringMap.put("1", (Object) f2);
        stringMap.put("0.9", (Object) new Float("0.9"));
        stringMap.put("0.8", (Object) new Float("0.8"));
        stringMap.put("0.7", (Object) new Float("0.7"));
        stringMap.put("0.66", (Object) new Float("0.66"));
        stringMap.put("0.6", (Object) new Float("0.6"));
        stringMap.put("0.5", (Object) new Float("0.5"));
        stringMap.put("0.4", (Object) new Float("0.4"));
        stringMap.put("0.33", (Object) new Float("0.33"));
        stringMap.put("0.3", (Object) new Float("0.3"));
        stringMap.put("0.2", (Object) new Float("0.2"));
        stringMap.put("0.1", (Object) new Float("0.1"));
        stringMap.put("0", (Object) f3);
        stringMap.put("0.0", (Object) f3);
    }

    public static String k(long j2) {
        StringBuilder sb = new StringBuilder(28);
        l(sb, j2);
        return sb.toString();
    }

    public static void l(StringBuilder sb, long j2) {
        ((c) f52187h.get()).a(sb, j2);
    }

    public static String m(long j2) {
        return ((c) f52187h.get()).b(j2);
    }

    public void A(L1.d dVar) {
        if (!(dVar instanceof e.a)) {
            dVar = j.f52264d.g(dVar);
        }
        for (e eVar = (e) this.f52199b.remove(dVar); eVar != null; eVar = eVar.f52205c) {
            this.f52198a.remove(eVar);
        }
    }

    public void B(String str) {
        A(j.f52264d.h(str));
    }

    public int C() {
        return this.f52198a.size();
    }

    public void d(L1.d dVar, L1.d dVar2) {
        if (dVar2 == null) {
            throw new IllegalArgumentException("null value");
        }
        if (!(dVar instanceof e.a)) {
            dVar = j.f52264d.g(dVar);
        }
        L1.d dVarC0 = dVar.C0();
        if (!(dVar2 instanceof e.a) && i.i(j.f52264d.e(dVarC0))) {
            dVar2 = i.f52223d.g(dVar2);
        }
        L1.d dVarC02 = dVar2.C0();
        a aVar = null;
        e eVar = null;
        for (e eVar2 = (e) this.f52199b.get(dVarC0); eVar2 != null; eVar2 = eVar2.f52205c) {
            eVar = eVar2;
        }
        e eVar3 = new e(dVarC0, dVarC02, aVar);
        this.f52198a.add(eVar3);
        if (eVar != null) {
            eVar.f52205c = eVar3;
        } else {
            this.f52199b.put(dVarC0, eVar3);
        }
    }

    public void e(String str, String str2) {
        if (str2 == null) {
            return;
        }
        d(j.f52264d.h(str), j(str2));
    }

    public void f(String str, String str2, String str3, String str4, long j2, String str5, boolean z2, boolean z3, int i2) throws IOException {
        boolean z4;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Bad cookie name");
        }
        StringBuilder sb = new StringBuilder(128);
        org.eclipse.jetty.util.l.d(sb, str, "\"\\\n\r\t\f\b%+ ;=");
        sb.append('=');
        String string = sb.toString();
        if (str2 != null && str2.length() > 0) {
            org.eclipse.jetty.util.l.d(sb, str2, "\"\\\n\r\t\f\b%+ ;=");
        }
        if (str5 != null && str5.length() > 0) {
            sb.append(";Comment=");
            org.eclipse.jetty.util.l.d(sb, str5, "\"\\\n\r\t\f\b%+ ;=");
        }
        boolean z5 = true;
        if (str4 == null || str4.length() <= 0) {
            z4 = false;
        } else {
            sb.append(";Path=");
            if (str4.trim().startsWith("\"")) {
                sb.append(str4);
            } else {
                org.eclipse.jetty.util.l.d(sb, str4, "\"\\\n\r\t\f\b%+ ;=");
            }
            z4 = true;
        }
        if (str3 == null || str3.length() <= 0) {
            z5 = false;
        } else {
            sb.append(";Domain=");
            org.eclipse.jetty.util.l.d(sb, str3.toLowerCase(Locale.ENGLISH), "\"\\\n\r\t\f\b%+ ;=");
        }
        if (j2 >= 0) {
            sb.append(";Expires=");
            if (j2 == 0) {
                sb.append(f52192m);
            } else {
                l(sb, System.currentTimeMillis() + (1000 * j2));
            }
            if (i2 > 0) {
                sb.append(";Max-Age=");
                sb.append(j2);
            }
        }
        if (z2) {
            sb.append(";Secure");
        }
        if (z3) {
            sb.append(";HttpOnly");
        }
        String string2 = sb.toString();
        e eVar = null;
        for (e eVarQ = q("Set-Cookie"); eVarQ != null; eVarQ = eVarQ.f52205c) {
            String string3 = eVarQ.f52204b == null ? null : eVarQ.f52204b.toString();
            if (string3 != null && string3.startsWith(string)) {
                if (z5 || string3.contains("Domain")) {
                    if (z5) {
                        if (!string3.contains("Domain=" + str3)) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                if (z4 || string3.contains("Path")) {
                    if (z4) {
                        if (string3.contains("Path=" + str4)) {
                        }
                    } else {
                        continue;
                    }
                }
                this.f52198a.remove(eVarQ);
                if (eVar == null) {
                    this.f52199b.put(j.f52275i0, eVarQ.f52205c);
                } else {
                    eVar.f52205c = eVarQ.f52205c;
                }
                d(j.f52275i0, new L1.h(string2));
                v(j.f52235A, f52191l);
            }
            eVar = eVarQ;
        }
        d(j.f52275i0, new L1.h(string2));
        v(j.f52235A, f52191l);
    }

    public void g(f fVar) throws IOException {
        f(fVar.d(), fVar.f(), fVar.b(), fVar.e(), fVar.c(), fVar.a(), fVar.i(), fVar.h(), fVar.g());
    }

    public void h() {
        this.f52198a.clear();
        this.f52199b.clear();
    }

    public boolean i(L1.d dVar) {
        return this.f52199b.containsKey(j.f52264d.g(dVar));
    }

    public final L1.d j(String str) {
        L1.d dVar = (L1.d) f52193n.get(str);
        if (dVar != null) {
            return dVar;
        }
        try {
            L1.h hVar = new L1.h(str, "ISO-8859-1");
            if (f52194o > 0) {
                if (f52193n.size() > f52194o) {
                    f52193n.clear();
                }
                L1.d dVar2 = (L1.d) f52193n.putIfAbsent(str, hVar);
                if (dVar2 != null) {
                    return dVar2;
                }
            }
            return hVar;
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public L1.d n(L1.d dVar) {
        e eVarP = p(dVar);
        if (eVarP == null) {
            return null;
        }
        return eVarP.f52204b;
    }

    public e o(int i2) {
        return (e) this.f52198a.get(i2);
    }

    public final e p(L1.d dVar) {
        return (e) this.f52199b.get(j.f52264d.g(dVar));
    }

    public final e q(String str) {
        return (e) this.f52199b.get(j.f52264d.h(str));
    }

    public Collection r() {
        ArrayList arrayList = new ArrayList(this.f52198a.size());
        ArrayList arrayList2 = this.f52198a;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            e eVar = (e) obj;
            if (eVar != null) {
                arrayList.add(L1.g.f(eVar.f52203a));
            }
        }
        return arrayList;
    }

    public String s(L1.d dVar) {
        e eVarP = p(dVar);
        if (eVarP == null) {
            return null;
        }
        return eVarP.h();
    }

    public String t(String str) {
        e eVarQ = q(str);
        if (eVarQ == null) {
            return null;
        }
        return eVarQ.h();
    }

    public String toString() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < this.f52198a.size(); i2++) {
                e eVar = (e) this.f52198a.get(i2);
                if (eVar != null) {
                    String strF = eVar.f();
                    if (strF != null) {
                        stringBuffer.append(strF);
                    }
                    stringBuffer.append(": ");
                    String strH = eVar.h();
                    if (strH != null) {
                        stringBuffer.append(strH);
                    }
                    stringBuffer.append("\r\n");
                }
            }
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        } catch (Exception e2) {
            f52182c.e(e2);
            return e2.toString();
        }
    }

    public Collection u(String str) {
        e eVarQ = q(str);
        if (eVarQ == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (eVarQ != null) {
            arrayList.add(eVarQ.h());
            eVarQ = eVarQ.f52205c;
        }
        return arrayList;
    }

    public void v(L1.d dVar, L1.d dVar2) {
        A(dVar);
        if (dVar2 == null) {
            return;
        }
        if (!(dVar instanceof e.a)) {
            dVar = j.f52264d.g(dVar);
        }
        if (!(dVar2 instanceof e.a)) {
            dVar2 = i.f52223d.g(dVar2).C0();
        }
        e eVar = new e(dVar, dVar2, null);
        this.f52198a.add(eVar);
        this.f52199b.put(dVar, eVar);
    }

    public void w(L1.d dVar, String str) {
        v(j.f52264d.g(dVar), j(str));
    }

    public void x(String str, String str2) {
        if (str2 == null) {
            B(str);
        } else {
            v(j.f52264d.h(str), j(str2));
        }
    }

    public void y(L1.d dVar, long j2) {
        v(dVar, new L1.h(m(j2)));
    }

    public void z(String str, long j2) {
        v(j.f52264d.h(str), L1.g.g(j2));
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final SimpleDateFormat[] f52202a;

        public d() {
            this.f52202a = new SimpleDateFormat[g.f52188i.length];
        }

        public /* synthetic */ d(a aVar) {
            this();
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final StringBuilder f52200a;

        /* renamed from: b, reason: collision with root package name */
        public final GregorianCalendar f52201b;

        public c() {
            this.f52200a = new StringBuilder(32);
            this.f52201b = new GregorianCalendar(g.f52183d);
        }

        public void a(StringBuilder sb, long j2) {
            this.f52201b.setTimeInMillis(j2);
            int i2 = this.f52201b.get(7);
            int i3 = this.f52201b.get(5);
            int i4 = this.f52201b.get(2);
            int i5 = this.f52201b.get(1) % 10000;
            int i6 = (int) ((j2 / 1000) % 86400);
            int i7 = i6 % 60;
            int i8 = i6 / 60;
            sb.append(g.f52185f[i2]);
            sb.append(',');
            sb.append(' ');
            org.eclipse.jetty.util.m.a(sb, i3);
            sb.append('-');
            sb.append(g.f52186g[i4]);
            sb.append('-');
            org.eclipse.jetty.util.m.a(sb, i5 / 100);
            org.eclipse.jetty.util.m.a(sb, i5 % 100);
            sb.append(' ');
            org.eclipse.jetty.util.m.a(sb, i8 / 60);
            sb.append(':');
            org.eclipse.jetty.util.m.a(sb, i8 % 60);
            sb.append(':');
            org.eclipse.jetty.util.m.a(sb, i7);
            sb.append(" GMT");
        }

        public String b(long j2) {
            this.f52200a.setLength(0);
            this.f52201b.setTimeInMillis(j2);
            int i2 = this.f52201b.get(7);
            int i3 = this.f52201b.get(5);
            int i4 = this.f52201b.get(2);
            int i5 = this.f52201b.get(1);
            int i6 = this.f52201b.get(11);
            int i7 = this.f52201b.get(12);
            int i8 = this.f52201b.get(13);
            this.f52200a.append(g.f52185f[i2]);
            this.f52200a.append(',');
            this.f52200a.append(' ');
            org.eclipse.jetty.util.m.a(this.f52200a, i3);
            this.f52200a.append(' ');
            this.f52200a.append(g.f52186g[i4]);
            this.f52200a.append(' ');
            org.eclipse.jetty.util.m.a(this.f52200a, i5 / 100);
            org.eclipse.jetty.util.m.a(this.f52200a, i5 % 100);
            this.f52200a.append(' ');
            org.eclipse.jetty.util.m.a(this.f52200a, i6);
            this.f52200a.append(':');
            org.eclipse.jetty.util.m.a(this.f52200a, i7);
            this.f52200a.append(':');
            org.eclipse.jetty.util.m.a(this.f52200a, i8);
            this.f52200a.append(" GMT");
            return this.f52200a.toString();
        }

        public /* synthetic */ c(a aVar) {
            this();
        }
    }
}
