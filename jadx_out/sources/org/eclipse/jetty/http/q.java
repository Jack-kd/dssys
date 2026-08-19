package org.eclipse.jetty.http;

import L1.e;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes5.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static final R1.c f52353a = R1.b.a(q.class);

    /* renamed from: b, reason: collision with root package name */
    public static int f52354b = 15;

    /* renamed from: c, reason: collision with root package name */
    public static final L1.e f52355c;

    /* renamed from: d, reason: collision with root package name */
    public static final e.a f52356d;

    /* renamed from: e, reason: collision with root package name */
    public static final e.a f52357e;

    /* renamed from: f, reason: collision with root package name */
    public static final e.a f52358f;

    /* renamed from: g, reason: collision with root package name */
    public static final e.a f52359g;

    /* renamed from: h, reason: collision with root package name */
    public static final e.a f52360h;

    /* renamed from: i, reason: collision with root package name */
    public static final e.a f52361i;

    /* renamed from: j, reason: collision with root package name */
    public static final e.a f52362j;

    /* renamed from: k, reason: collision with root package name */
    public static final e.a f52363k;

    /* renamed from: l, reason: collision with root package name */
    public static final e.a f52364l;

    /* renamed from: m, reason: collision with root package name */
    public static final e.a f52365m;

    /* renamed from: n, reason: collision with root package name */
    public static final e.a f52366n;

    /* renamed from: o, reason: collision with root package name */
    public static final e.a f52367o;

    /* renamed from: p, reason: collision with root package name */
    public static final e.a f52368p;

    /* renamed from: q, reason: collision with root package name */
    public static final e.a f52369q;

    /* renamed from: r, reason: collision with root package name */
    public static final e.a f52370r;

    /* renamed from: s, reason: collision with root package name */
    public static final e.a f52371s;

    /* renamed from: t, reason: collision with root package name */
    public static final e.a f52372t;

    /* renamed from: u, reason: collision with root package name */
    public static final e.a f52373u;

    /* renamed from: v, reason: collision with root package name */
    public static final e.a f52374v;

    /* renamed from: w, reason: collision with root package name */
    public static final e.a f52375w;

    /* renamed from: x, reason: collision with root package name */
    public static final e.a f52376x;

    /* renamed from: y, reason: collision with root package name */
    public static final Map f52377y;

    /* renamed from: z, reason: collision with root package name */
    public static final Map f52378z;

    static {
        L1.e eVar = new L1.e();
        f52355c = eVar;
        f52356d = eVar.a(ShareTarget.ENCODING_TYPE_URL_ENCODED, 1);
        f52357e = eVar.a("message/http", 2);
        f52358f = eVar.a("multipart/byteranges", 3);
        f52359g = eVar.a("text/html", 4);
        f52360h = eVar.a("text/plain", 5);
        f52361i = eVar.a("text/xml", 6);
        f52362j = eVar.a("text/json", 7);
        f52363k = eVar.a("text/html;charset=ISO-8859-1", 8);
        f52364l = eVar.a("text/plain;charset=ISO-8859-1", 9);
        f52365m = eVar.a("text/xml;charset=ISO-8859-1", 10);
        f52366n = eVar.a("text/html;charset=UTF-8", 11);
        f52367o = eVar.a("text/plain;charset=UTF-8", 12);
        f52368p = eVar.a("text/xml;charset=UTF-8", 13);
        f52369q = eVar.a("text/json;charset=UTF-8", 14);
        f52370r = eVar.a("text/html; charset=ISO-8859-1", 8);
        f52371s = eVar.a("text/plain; charset=ISO-8859-1", 9);
        f52372t = eVar.a("text/xml; charset=ISO-8859-1", 10);
        f52373u = eVar.a("text/html; charset=UTF-8", 11);
        f52374v = eVar.a("text/plain; charset=UTF-8", 12);
        f52375w = eVar.a("text/xml; charset=UTF-8", 13);
        f52376x = eVar.a("text/json; charset=UTF-8", 14);
        f52377y = new HashMap();
        f52378z = new HashMap();
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("org/eclipse/jetty/http/mime");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                String strNextElement = keys.nextElement();
                f52377y.put(org.eclipse.jetty.util.m.b(strNextElement), b(bundle.getString(strNextElement)));
            }
        } catch (MissingResourceException e2) {
            R1.c cVar = f52353a;
            cVar.g(e2.toString(), new Object[0]);
            cVar.a(e2);
        }
        try {
            ResourceBundle bundle2 = ResourceBundle.getBundle("org/eclipse/jetty/http/encoding");
            Enumeration<String> keys2 = bundle2.getKeys();
            while (keys2.hasMoreElements()) {
                L1.d dVarB = b(keys2.nextElement());
                f52378z.put(dVarB, bundle2.getString(dVarB.toString()));
            }
        } catch (MissingResourceException e3) {
            R1.c cVar2 = f52353a;
            cVar2.g(e3.toString(), new Object[0]);
            cVar2.a(e3);
        }
        e.a aVar = f52359g;
        e.a aVar2 = f52363k;
        aVar.i("ISO-8859-1", aVar2);
        aVar.i("ISO_8859_1", aVar2);
        aVar.i("iso-8859-1", aVar2);
        e.a aVar3 = f52360h;
        e.a aVar4 = f52364l;
        aVar3.i("ISO-8859-1", aVar4);
        aVar3.i("ISO_8859_1", aVar4);
        aVar3.i("iso-8859-1", aVar4);
        e.a aVar5 = f52361i;
        e.a aVar6 = f52365m;
        aVar5.i("ISO-8859-1", aVar6);
        aVar5.i("ISO_8859_1", aVar6);
        aVar5.i("iso-8859-1", aVar6);
        e.a aVar7 = f52366n;
        aVar.i("UTF-8", aVar7);
        aVar.i("UTF8", aVar7);
        aVar.i("utf8", aVar7);
        aVar.i("utf-8", aVar7);
        e.a aVar8 = f52367o;
        aVar3.i("UTF-8", aVar8);
        aVar3.i("UTF8", aVar8);
        aVar3.i("utf8", aVar8);
        aVar3.i("utf-8", aVar8);
        e.a aVar9 = f52368p;
        aVar5.i("UTF-8", aVar9);
        aVar5.i("UTF8", aVar9);
        aVar5.i("utf8", aVar9);
        aVar5.i("utf-8", aVar9);
        e.a aVar10 = f52362j;
        e.a aVar11 = f52369q;
        aVar10.i("UTF-8", aVar11);
        aVar10.i("UTF8", aVar11);
        aVar10.i("utf8", aVar11);
        aVar10.i("utf-8", aVar11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x00a4, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(L1.d r13) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.q.a(L1.d):java.lang.String");
    }

    public static synchronized L1.d b(String str) {
        e.a aVarC;
        L1.e eVar = f52355c;
        aVarC = eVar.c(str);
        if (aVarC == null) {
            int i2 = f52354b;
            f52354b = i2 + 1;
            aVarC = eVar.a(str, i2);
        }
        return aVarC;
    }
}
