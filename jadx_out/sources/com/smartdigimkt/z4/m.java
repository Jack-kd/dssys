package com.smartdigimkt.z4;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: c, reason: collision with root package name */
    public static volatile m f45485c;

    /* renamed from: a, reason: collision with root package name */
    public final s f45486a = new s(SDKContext.getInstance().d());

    /* renamed from: b, reason: collision with root package name */
    public final q f45487b = new q();

    public final void a(com.smartdigimkt.j4.b bVar) {
        if (bVar == null) {
            return;
        }
        String str = bVar.f41120a;
        try {
            com.smartdigimkt.a5.e eVar = bVar.f41121b;
            com.smartdigimkt.r4.l lVar = new com.smartdigimkt.r4.l(str);
            o oVar = new o(this, bVar);
            if (eVar == null) {
                this.f45487b.a(lVar, oVar);
                return;
            }
            lVar.f43077b = eVar.a();
            if (eVar.c()) {
                this.f45487b.a(lVar, oVar);
                return;
            }
            if (System.currentTimeMillis() - eVar.f39432v <= eVar.f39416f) {
                oVar.b(eVar);
                return;
            }
            long j2 = eVar.f39418h;
            if (j2 <= 0) {
                oVar.b(eVar);
            } else {
                com.smartdigimkt.x3.f fVar = com.smartdigimkt.x3.g.a().f45120a;
                oVar.f45493d = fVar;
                if (fVar != null) {
                    n nVar = new n(oVar, eVar);
                    oVar.f45496g = nVar;
                    fVar.a(nVar, j2);
                }
            }
            this.f45487b.a(lVar, oVar);
        } catch (Throwable unused) {
        }
    }

    public static m a() {
        if (f45485c == null) {
            synchronized (m.class) {
                try {
                    if (f45485c == null) {
                        f45485c = new m();
                    }
                } finally {
                }
            }
        }
        return f45485c;
    }

    public final void a(String str, com.smartdigimkt.a5.e eVar, JSONObject jSONObject) {
        String strA = SDKContext.getInstance().a();
        s sVar = this.f45486a;
        if (sVar.f45505a == null || TextUtils.isEmpty(strA) || TextUtils.isEmpty(str)) {
            return;
        }
        String strA2 = com.smartdigimkt.p.a.a(strA, str);
        sVar.f45506b.put(strA2, eVar);
        boolean z2 = eVar.f39419i == 1;
        boolean z3 = eVar.f39422l == 1;
        if (!z2 || jSONObject == null || z3) {
            return;
        }
        com.smartdigimkt.b4.e.a().c(new r(sVar, jSONObject, strA2));
    }

    public final com.smartdigimkt.a5.e a(String str) {
        String strA = SDKContext.getInstance().a();
        s sVar = this.f45486a;
        sVar.getClass();
        String str2 = strA + str;
        ConcurrentHashMap concurrentHashMap = sVar.f45506b;
        com.smartdigimkt.a5.e eVar = (com.smartdigimkt.a5.e) concurrentHashMap.get(str2);
        if (eVar != null) {
            return eVar;
        }
        String strB = y.b(sVar.f45505a, "sdm_adx_rp_sdk", str2 + "_PL_SY");
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        try {
            com.smartdigimkt.a5.e eVarB = com.smartdigimkt.a5.e.b(str, new JSONObject(strB));
            concurrentHashMap.put(str2, eVarB);
            return eVarB;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void a(String str, com.smartdigimkt.a5.e eVar) {
        if (eVar == null) {
            return;
        }
        s sVar = this.f45486a;
        String strA = SDKContext.getInstance().a();
        sVar.getClass();
        String strA2 = com.smartdigimkt.p.a.a(strA, str);
        sVar.f45506b.remove(strA2);
        Context context = sVar.f45505a;
        String strA3 = com.smartdigimkt.p.a.a(strA2, "_PL_SY");
        if (context == null) {
            return;
        }
        try {
            com.smartdigimkt.v4.c.a().a(context, "sdm_adx_rp_sdk").remove(strA3);
        } catch (Throwable unused) {
        }
    }
}
