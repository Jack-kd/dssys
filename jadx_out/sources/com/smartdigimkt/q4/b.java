package com.smartdigimkt.q4;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;
import com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public String f42852a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.l4.b f42853b;

    /* renamed from: c, reason: collision with root package name */
    public final IHttpLoaderInterceptor f42854c = SDKContext.getInstance().getHttpLoaderInterceptor();

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.r4.d f42855d;

    /* renamed from: e, reason: collision with root package name */
    public HttpReqEntity f42856e;

    /* renamed from: f, reason: collision with root package name */
    public com.smartdigimkt.p4.a f42857f;

    /* renamed from: g, reason: collision with root package name */
    public long f42858g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f42859h;

    /* renamed from: i, reason: collision with root package name */
    public long f42860i;

    public b(com.smartdigimkt.r4.d dVar) {
        this.f42855d = dVar;
    }

    public Object a(Object obj) {
        return obj;
    }

    public void b(AdError adError) {
    }

    public void a(int i2) {
    }

    public boolean b(int i2) {
        return false;
    }

    public void a(AdError adError) {
    }

    public boolean b() {
        return this instanceof e;
    }

    public static void b(b bVar, com.smartdigimkt.o4.d dVar, int i2) {
        String str;
        bVar.getClass();
        Throwable th = dVar.f42280c;
        int i3 = dVar.f42279b;
        String str2 = "";
        if (i3 != 0) {
            str = "code='" + String.valueOf(i3) + "', msg='" + (th + "") + "'";
        } else {
            str = th + "";
        }
        String str3 = str;
        boolean z2 = (th instanceof UnknownHostException) || (th instanceof ConnectException);
        com.smartdigimkt.k4.a aVarA = com.smartdigimkt.k4.b.a("90002", str3);
        Map map = dVar.f42282e;
        if (map != null && !map.isEmpty() && dVar.f42279b == 699) {
            try {
                List list = (List) map.get("Req-Next-Time");
                if (list != null && !list.isEmpty()) {
                    str2 = (String) list.get(0);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bVar.f42858g = Long.parseLong(str2) * 1000;
                }
            } catch (Throwable unused) {
            }
        }
        bVar.a(i2, i3, str3, aVarA, true, z2);
    }

    public boolean a() {
        return this instanceof d;
    }

    public static void a(b bVar, com.smartdigimkt.r4.d dVar, byte[] bArr) {
        bVar.getClass();
        if (dVar != null) {
            if (!TextUtils.isEmpty(dVar.k())) {
                com.smartdigimkt.r4.d dVar2 = bVar.f42855d;
                int iJ = dVar2 != null ? dVar2.j() : 2;
                if ((((iJ == 1 || iJ == 2) && iJ != 2) ? "POST" : "GET").equals("POST") && bArr == null) {
                    throw new IllegalArgumentException("req content is null when request method is POST.");
                }
                return;
            }
            throw new IllegalArgumentException("req url is null or empty.");
        }
        throw new IllegalArgumentException("reqEntity is null.");
    }

    public static void a(b bVar, com.smartdigimkt.o4.d dVar, int i2) {
        String strA;
        JSONObject jSONObject;
        String strTrim;
        bVar.getClass();
        int i3 = dVar.f42279b;
        try {
            com.smartdigimkt.p4.b bVar2 = dVar.f42281d;
            if (bVar2 == null) {
                strA = "";
            } else if (bVar instanceof g) {
                strA = bVar2.a(true);
            } else {
                strA = bVar2.a(false);
            }
            if (!bVar.b(i3) && (i3 == 201 || i3 == 204)) {
                bVar.b(i2, bVar.a((Object) null));
                return;
            }
            if (bVar.b()) {
                if (!TextUtils.isEmpty(strA)) {
                    strTrim = strA.trim();
                    try {
                        jSONObject = new JSONObject(strTrim);
                    } catch (Throwable unused) {
                        jSONObject = new JSONObject();
                    }
                } else {
                    jSONObject = new JSONObject();
                    strTrim = "";
                }
                int iOptInt = jSONObject.optInt("code", 0);
                if (iOptInt == 0) {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                    }
                    bVar.b(i2, bVar.a(jSONObjectOptJSONObject));
                    return;
                }
                bVar.a(i2, com.anythink.core.common.m.q.f5854l, strTrim, com.smartdigimkt.k4.b.a("90001", "code='" + String.valueOf(iOptInt) + "', msg='" + jSONObject.optString("msg") + "'"));
                return;
            }
            bVar.b(i2, bVar.a(strA != null ? strA.trim() : null));
        } catch (Throwable th) {
            bVar.a(i2, i3, th.getMessage(), com.smartdigimkt.k4.b.a("90002", th + ""));
        }
    }

    public void b(int i2, Object obj) {
        if (this.f42859h) {
            return;
        }
        this.f42859h = true;
        com.smartdigimkt.l4.b bVar = this.f42853b;
        if (bVar != null) {
            bVar.a(i2, obj);
        }
        a(200, obj);
    }

    public void a(int i2, com.smartdigimkt.l4.b bVar) {
        this.f42860i = System.currentTimeMillis();
        this.f42853b = bVar;
        a aVar = new a(this, i2);
        if (a()) {
            com.smartdigimkt.b4.e.a().a(aVar, 1);
        } else {
            com.smartdigimkt.b4.e.a().a(aVar, 10);
        }
    }

    public final void a(int i2, int i3, String str, com.smartdigimkt.k4.a aVar) {
        a(i2, i3, str, aVar, true, false);
    }

    public final void a(int i2, int i3, String str, com.smartdigimkt.k4.a aVar, boolean z2, boolean z3) {
        if (this.f42859h) {
            return;
        }
        this.f42859h = true;
        com.smartdigimkt.l4.b bVar = this.f42853b;
        if (bVar != null) {
            bVar.a(i2, str, aVar);
        }
        a(i3);
        if (z2) {
            a(i3, (Object) null);
        }
        if (z3) {
            a((AdError) aVar);
        }
        b(aVar);
    }

    public final void a(int i2, Object obj) {
        HttpReqEntity httpReqEntity;
        if (this.f42854c == null || (httpReqEntity = this.f42856e) == null) {
            return;
        }
        String interceptKey = httpReqEntity.getInterceptKey();
        String urlType = this.f42856e.getUrlType();
        HttpRespEntity httpRespEntityCreate = HttpRespEntity.create();
        if (obj != null && ("eu_traffic".equals(urlType) || "get_area".equals(urlType))) {
            httpRespEntityCreate.setInterceptResult(obj);
        }
        long j2 = this.f42858g;
        if (j2 > 0) {
            httpRespEntityCreate.setReqNextTime(j2);
        }
        httpRespEntityCreate.setHttpCode(i2);
        httpRespEntityCreate.setUrlKey(interceptKey);
        this.f42854c.handleRespon(httpRespEntityCreate, this.f42856e);
    }
}
