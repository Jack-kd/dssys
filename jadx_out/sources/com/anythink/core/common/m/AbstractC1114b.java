package com.anythink.core.common.m;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.d.i;
import com.anythink.core.common.m.a.f;
import com.anythink.core.common.m.a.i;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.SSLException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.anythink.core.common.m.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1114b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5585a = "http.loader";

    /* renamed from: d, reason: collision with root package name */
    public static final int f5586d = 699;

    /* renamed from: e, reason: collision with root package name */
    public static final int f5587e = 700;

    /* renamed from: f, reason: collision with root package name */
    public static final int f5588f = 200;

    /* renamed from: g, reason: collision with root package name */
    public static final String f5589g = "Content-Type";

    /* renamed from: h, reason: collision with root package name */
    public static final String f5590h = "application/json";

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.core.common.m.c.i f5591b = com.anythink.core.common.d.s.b().X();

    /* renamed from: c, reason: collision with root package name */
    private com.anythink.core.common.m.b.d f5592c;

    /* renamed from: i, reason: collision with root package name */
    protected s f5593i;

    /* renamed from: j, reason: collision with root package name */
    protected boolean f5594j;

    /* renamed from: k, reason: collision with root package name */
    protected String f5595k;

    /* renamed from: l, reason: collision with root package name */
    private com.anythink.core.common.m.a.b f5596l;

    /* renamed from: m, reason: collision with root package name */
    private long f5597m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f5598n;

    /* renamed from: o, reason: collision with root package name */
    private com.anythink.core.common.m.a.a.a f5599o;

    private boolean A() {
        com.anythink.core.common.m.a.a.a aVar = this.f5599o;
        com.anythink.core.common.m.b.a aVarA = aVar != null ? aVar.a() : null;
        return aVarA != null && aVarA.o();
    }

    private void b(int i2) {
        z zVar = new z(this, i2);
        if (!p()) {
            com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8118a, zVar));
        } else {
            com.anythink.core.common.u.a.a.a();
            com.anythink.core.common.u.a.a.a(zVar);
        }
    }

    private void c(int i2) {
        s sVar = this.f5593i;
        if (sVar != null) {
            sVar.onLoadCanceled(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i2) {
        JSONObject jSONObject;
        String strConcat;
        int i3;
        com.anythink.core.common.m.c.i iVar;
        com.anythink.core.common.m.b.f fVarA;
        try {
            if (this.f5594j) {
                s sVar = this.f5593i;
                if (sVar != null) {
                    sVar.onLoadCanceled(i2);
                    return;
                }
                return;
            }
            this.f5598n = false;
            com.anythink.core.common.d.s.b().T();
            this.f5595k = b();
            int iAA = com.anythink.core.e.d.a().aA();
            int iA = a();
            boolean z2 = true;
            if (iA != 1 && iA != 2) {
                iA = 2;
            }
            String str = iA == 2 ? "GET" : "POST";
            s sVar2 = this.f5593i;
            if (sVar2 != null) {
                sVar2.onLoadStart(i2);
            }
            if (this.f5592c == null) {
                this.f5592c = o();
            }
            com.anythink.core.common.m.b.d dVar = this.f5592c;
            String strTrim = "";
            if (dVar != null && (iVar = this.f5591b) != null && (fVarA = iVar.a(dVar)) != null && fVarA.e()) {
                int iF = fVarA.f();
                String strValueOf = String.valueOf(iF);
                if (iF != 200) {
                    a(i2, iF, "", ErrorCode.getErrorCode(ErrorCode.statuError, strValueOf, ""), false);
                    return;
                } else {
                    a(i2, fVarA.g(), false);
                    return;
                }
            }
            com.anythink.core.common.m.a.b eVar = this.f5596l;
            if (eVar == null) {
                if (this.f5599o == null) {
                    this.f5599o = new com.anythink.core.common.m.a.a.a(getClass().getName(), this.f5595k);
                }
                f.a aVar = new f.a();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                com.anythink.core.common.m.a.f fVarA2 = aVar.a(timeUnit).c(timeUnit).b(timeUnit).a(this.f5599o.a(this.f5592c)).a(iAA).a();
                eVar = com.anythink.core.e.b.b(fVarA2.f5553i) ? new com.anythink.core.common.m.a.a.e(fVarA2) : new com.anythink.core.common.m.a.a.b(fVarA2);
                this.f5596l = eVar;
            }
            i.a aVarB = new i.a().a(this.f5595k).b(str);
            String str2 = "application/json";
            Map<String, String> mapC = c();
            if (mapC != null && mapC.containsKey(f5589g)) {
                str2 = mapC.get(f5589g);
            }
            i.a aVarA = aVarB.c(str2).a(d());
            Map<String, String> mapC2 = c();
            if (mapC2 == null) {
                mapC2 = new HashMap<>();
            }
            if (com.anythink.core.common.d.s.b().c("ua")) {
                mapC2.put("User-Agent", com.anythink.core.common.v.o.a());
            }
            com.anythink.core.common.m.a.j jVarA = eVar.a(aVarA.a(mapC2).a());
            int i4 = jVarA.f5574b;
            if (i4 != 200 && i4 != 201 && i4 != 204) {
                z2 = false;
            }
            if (!z2 && !a(i4)) {
                Throwable th = jVarA.f5576d;
                int i5 = jVarA.f5574b;
                String message = th != null ? th.getMessage() : "";
                if (th instanceof UnknownHostException) {
                    strConcat = "UnknownHostException: ".concat(String.valueOf(message));
                    i3 = -1000;
                } else if (th instanceof ConnectException) {
                    strConcat = "ConnectException: ".concat(String.valueOf(message));
                    i3 = -1001;
                } else if (th instanceof SSLException) {
                    strConcat = "SSLException: ".concat(String.valueOf(message));
                    i3 = q.f5849g;
                } else if (th instanceof SocketException) {
                    strConcat = "SocketException: ".concat(String.valueOf(message));
                    i3 = q.f5850h;
                } else if (th instanceof SocketTimeoutException) {
                    strConcat = "SocketTimeoutException: ".concat(String.valueOf(message));
                    i3 = -1002;
                } else if (th instanceof ConnectTimeoutException) {
                    strConcat = "ConnectTimeoutException: ".concat(String.valueOf(message));
                    i3 = q.f5846d;
                } else if (th instanceof IOException) {
                    strConcat = "IOException: ".concat(String.valueOf(message));
                    i3 = q.f5851i;
                } else {
                    if (th == null) {
                        strConcat = jVarA.f5575c;
                    } else if (TextUtils.isEmpty(jVarA.f5575c)) {
                        strConcat = "Exception: " + th + ", Message: " + message;
                    } else {
                        strConcat = "Msg: " + jVarA.f5575c + "Exception: " + th + ", Message: " + message;
                    }
                    i3 = -9998;
                }
                if (A()) {
                    strConcat = "cus-dns,".concat(String.valueOf(strConcat));
                }
                AdError errorCode = ErrorCode.getErrorCode(ErrorCode.httpStatuException, String.valueOf(i3), strConcat);
                Map<String, List<String>> map = jVarA.f5578f;
                if (map != null && !map.isEmpty() && jVarA.f5574b == 699) {
                    try {
                        List<String> list = map.get("Req-Next-Time");
                        if (list != null && !list.isEmpty()) {
                            strTrim = list.get(0);
                        }
                        if (!TextUtils.isEmpty(strTrim)) {
                            this.f5597m = Long.parseLong(strTrim) * 1000;
                        }
                    } catch (Throwable unused) {
                    }
                }
                b(i2, i5, strConcat, errorCode, true);
                return;
            }
            int i6 = jVarA.f5574b;
            try {
                com.anythink.core.common.m.a.k kVar = jVarA.f5577e;
                String strC = kVar != null ? s() ? kVar.c() : kVar.b() : "";
                if (!a(i6) && (i6 == 201 || i6 == 204)) {
                    a(i2, a((Object) null));
                    return;
                }
                if (!m()) {
                    a(i2, a((Object) (strC != null ? strC.trim() : null)));
                    return;
                }
                if (TextUtils.isEmpty(strC)) {
                    jSONObject = new JSONObject();
                } else {
                    strTrim = strC.trim();
                    try {
                        jSONObject = new JSONObject(strTrim);
                    } catch (Throwable unused2) {
                        jSONObject = new JSONObject();
                    }
                }
                int iOptInt = jSONObject.optInt("code", 0);
                if (iOptInt != 0) {
                    a(i2, q.f5854l, strTrim, ErrorCode.getErrorCode(ErrorCode.statuError, String.valueOf(iOptInt), strTrim));
                    return;
                }
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(i.e.f2620e);
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                a(i2, a(jSONObjectOptJSONObject));
            } catch (Throwable th2) {
                a(i2, i6, th2.getMessage(), ErrorCode.getErrorCode(ErrorCode.httpStatuException, String.valueOf(i6), th2.getMessage()));
            }
        } catch (Throwable th3) {
            a(0, 0, th3.getMessage(), ErrorCode.getErrorCode(ErrorCode.httpStatuException, "0", th3.getMessage()));
        }
    }

    private void t() {
        this.f5594j = true;
        com.anythink.core.common.m.a.b bVar = this.f5596l;
        if (bVar != null) {
            bVar.a();
        }
    }

    private String u() {
        int iA = a();
        if (iA != 1 && iA != 2) {
            iA = 2;
        }
        return iA == 2 ? "GET" : "POST";
    }

    private Map<String, String> v() {
        Map<String, String> mapC = c();
        if (mapC == null) {
            mapC = new HashMap<>();
        }
        if (com.anythink.core.common.d.s.b().c("ua")) {
            mapC.put("User-Agent", com.anythink.core.common.v.o.a());
        }
        return mapC;
    }

    private String w() {
        Map<String, String> mapC = c();
        return (mapC == null || !mapC.containsKey(f5589g)) ? "application/json" : mapC.get(f5589g);
    }

    private static void x() {
    }

    private static void y() {
    }

    private void z() {
        com.anythink.core.common.m.a.a.a aVar;
        if (!A() || (aVar = this.f5599o) == null) {
            return;
        }
        com.anythink.core.common.u.f.a(aVar.a());
    }

    public abstract int a();

    public abstract Object a(Object obj);

    public abstract void a(AdError adError);

    public abstract String b();

    public abstract Map<String, String> c();

    public abstract byte[] d();

    public abstract String e();

    public abstract Context f();

    public abstract String g();

    public abstract Map<String, Object> h();

    public JSONObject i() {
        return f.a(n(), r());
    }

    public JSONObject j() {
        return f.b(n(), r());
    }

    public String k() throws JSONException {
        HashMap map = new HashMap();
        String strA = com.anythink.core.common.v.j.a(i().toString());
        String strA2 = com.anythink.core.common.v.j.a(j().toString());
        map.put(f.f5766P, q());
        map.put("p", strA);
        map.put(f.f5774X, strA2);
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            String str = (String) obj;
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str);
            sb.append("=");
            sb.append(map.get(str));
        }
        map.put(f.f5775Y, com.anythink.core.common.v.n.c(g() + sb.toString()));
        if (h() != null) {
            map.putAll(h());
        }
        Set<String> setKeySet = map.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : setKeySet) {
                jSONObject.put(str2, String.valueOf(map.get(str2)));
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            System.gc();
            return null;
        }
    }

    public abstract void l();

    public boolean m() {
        return false;
    }

    @Deprecated
    public int n() {
        return 0;
    }

    public com.anythink.core.common.m.b.d o() {
        return null;
    }

    public boolean p() {
        return false;
    }

    public String q() {
        return "1.0";
    }

    public List<String> r() {
        return null;
    }

    public boolean s() {
        return false;
    }

    public boolean a(int i2) {
        return false;
    }

    public void a(int i2, s sVar) {
        this.f5594j = false;
        this.f5593i = sVar;
        z zVar = new z(this, i2);
        if (p()) {
            com.anythink.core.common.u.a.a.a();
            com.anythink.core.common.u.a.a.a(zVar);
        } else {
            com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8118a, zVar));
        }
    }

    private void b(int i2, int i3, String str, AdError adError, boolean z2) {
        if (this.f5598n) {
            return;
        }
        this.f5598n = true;
        s sVar = this.f5593i;
        if (sVar != null) {
            sVar.onLoadError(i2, str, adError);
        }
        if (z2) {
            b(i3, (Object) null);
        }
        a(adError);
        z();
    }

    private void a(int i2, int i3, String str, AdError adError) {
        a(i2, i3, str, adError, true);
    }

    private void a(int i2, int i3, String str, AdError adError, boolean z2) {
        b(i2, i3, str, adError, z2);
    }

    public void a(int i2, Object obj) {
        a(i2, obj, true);
    }

    private void a(int i2, Object obj, boolean z2) {
        if (this.f5598n) {
            return;
        }
        this.f5598n = true;
        s sVar = this.f5593i;
        if (sVar != null) {
            sVar.onLoadFinish(i2, obj);
        }
        if (z2) {
            b(200, obj);
            z();
        }
    }

    private void b(int i2, Object obj) {
        com.anythink.core.common.m.b.d dVar;
        if (this.f5591b == null || (dVar = this.f5592c) == null) {
            return;
        }
        String strA = dVar.a();
        String strB = this.f5592c.b();
        com.anythink.core.common.m.b.f fVarA = com.anythink.core.common.m.b.f.a();
        if (obj != null && ("eu_traffic".equals(strB) || "get_area".equals(strB))) {
            fVarA.a(obj);
        }
        long j2 = this.f5597m;
        if (j2 > 0) {
            fVarA.a(j2);
        }
        fVarA.a(i2);
        fVarA.a(strA);
        this.f5591b.a(fVarA, this.f5592c);
    }

    public static byte[] a(String str) throws IOException {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes("utf-8"));
            gZIPOutputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    private void b(com.anythink.core.common.m.a.j jVar, int i2) {
        String strB;
        JSONObject jSONObject;
        int i3 = jVar.f5574b;
        try {
            com.anythink.core.common.m.a.k kVar = jVar.f5577e;
            String strTrim = "";
            if (kVar == null) {
                strB = "";
            } else if (s()) {
                strB = kVar.c();
            } else {
                strB = kVar.b();
            }
            if (!a(i3) && (i3 == 201 || i3 == 204)) {
                a(i2, a((Object) null));
                return;
            }
            if (m()) {
                if (!TextUtils.isEmpty(strB)) {
                    strTrim = strB.trim();
                    try {
                        jSONObject = new JSONObject(strTrim);
                    } catch (Throwable unused) {
                        jSONObject = new JSONObject();
                    }
                } else {
                    jSONObject = new JSONObject();
                }
                int iOptInt = jSONObject.optInt("code", 0);
                if (iOptInt == 0) {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(i.e.f2620e);
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                    }
                    a(i2, a(jSONObjectOptJSONObject));
                    return;
                }
                a(i2, q.f5854l, strTrim, ErrorCode.getErrorCode(ErrorCode.statuError, String.valueOf(iOptInt), strTrim));
                return;
            }
            a(i2, a((Object) (strB != null ? strB.trim() : null)));
        } catch (Throwable th) {
            a(i2, i3, th.getMessage(), ErrorCode.getErrorCode(ErrorCode.httpStatuException, String.valueOf(i3), th.getMessage()));
        }
    }

    private void a(com.anythink.core.common.m.a.j jVar) {
        Map<String, List<String>> map = jVar.f5578f;
        if (map == null || map.isEmpty() || jVar.f5574b != 699) {
            return;
        }
        try {
            List<String> list = map.get("Req-Next-Time");
            String str = (list == null || list.isEmpty()) ? "" : list.get(0);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f5597m = Long.parseLong(str) * 1000;
        } catch (Throwable unused) {
        }
    }

    private void a(com.anythink.core.common.m.a.j jVar, int i2) {
        String strConcat;
        int i3;
        Throwable th = jVar.f5576d;
        int i4 = jVar.f5574b;
        String str = "";
        String message = th != null ? th.getMessage() : "";
        if (th instanceof UnknownHostException) {
            strConcat = "UnknownHostException: ".concat(String.valueOf(message));
            i3 = -1000;
        } else if (th instanceof ConnectException) {
            strConcat = "ConnectException: ".concat(String.valueOf(message));
            i3 = -1001;
        } else if (th instanceof SSLException) {
            strConcat = "SSLException: ".concat(String.valueOf(message));
            i3 = q.f5849g;
        } else if (th instanceof SocketException) {
            strConcat = "SocketException: ".concat(String.valueOf(message));
            i3 = q.f5850h;
        } else if (th instanceof SocketTimeoutException) {
            strConcat = "SocketTimeoutException: ".concat(String.valueOf(message));
            i3 = -1002;
        } else if (th instanceof ConnectTimeoutException) {
            strConcat = "ConnectTimeoutException: ".concat(String.valueOf(message));
            i3 = q.f5846d;
        } else if (th instanceof IOException) {
            strConcat = "IOException: ".concat(String.valueOf(message));
            i3 = q.f5851i;
        } else {
            if (th == null) {
                strConcat = jVar.f5575c;
            } else if (!TextUtils.isEmpty(jVar.f5575c)) {
                strConcat = "Msg: " + jVar.f5575c + "Exception: " + th + ", Message: " + message;
            } else {
                strConcat = "Exception: " + th + ", Message: " + message;
            }
            i3 = -9998;
        }
        if (A()) {
            strConcat = "cus-dns,".concat(String.valueOf(strConcat));
        }
        String str2 = strConcat;
        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.httpStatuException, String.valueOf(i3), str2);
        Map<String, List<String>> map = jVar.f5578f;
        if (map != null && !map.isEmpty() && jVar.f5574b == 699) {
            try {
                List<String> list = map.get("Req-Next-Time");
                if (list != null && !list.isEmpty()) {
                    str = list.get(0);
                }
                if (!TextUtils.isEmpty(str)) {
                    this.f5597m = Long.parseLong(str) * 1000;
                }
            } catch (Throwable unused) {
            }
        }
        b(i2, i4, str2, errorCode, true);
    }
}
