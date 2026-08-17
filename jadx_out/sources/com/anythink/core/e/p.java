package com.anythink.core.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.h.bo;
import com.anythink.core.e.m;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8979a = "p";

    /* renamed from: b, reason: collision with root package name */
    private o f8980b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        Context f8995a;

        /* renamed from: b, reason: collision with root package name */
        bo f8996b;

        /* renamed from: c, reason: collision with root package name */
        String f8997c;

        /* renamed from: d, reason: collision with root package name */
        String f8998d;

        /* renamed from: e, reason: collision with root package name */
        String f8999e;

        /* renamed from: f, reason: collision with root package name */
        String f9000f;

        /* renamed from: g, reason: collision with root package name */
        long f9001g;

        /* renamed from: h, reason: collision with root package name */
        long f9002h;

        /* renamed from: i, reason: collision with root package name */
        String f9003i;

        private a() {
        }

        public final String a(boolean z2) {
            return z2 ? this.f8999e : this.f8997c;
        }

        public final String b(boolean z2) {
            return z2 ? this.f9000f : !TextUtils.isEmpty(this.f9000f) ? this.f9000f : this.f8998d;
        }

        public /* synthetic */ a(byte b3) {
            this();
        }
    }

    public p(o oVar) {
        this.f8980b = oVar;
    }

    public final void a(Context context, final bo boVar) {
        if (boVar == null) {
            return;
        }
        a(context, boVar, new com.anythink.core.common.m.s() { // from class: com.anythink.core.e.p.1
            @Override // com.anythink.core.common.m.s
            public final void onLoadCanceled(int i2) {
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str, AdError adError) {
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) throws JSONException {
                p.a(p.this, i2, obj, boVar);
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadStart(int i2) {
            }
        });
    }

    public p() {
    }

    private void a(int i2, Object obj, bo boVar) throws JSONException {
        m mVarA;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            try {
                jSONObject.put(m.a.ac, System.currentTimeMillis());
                jSONObject.put("strategy_domain_type_key", i2 == 1 ? 1 : 0);
                int iOptInt = jSONObject.optInt(m.a.av, 0);
                o oVar = this.f8980b;
                if (oVar != null && (mVarA = oVar.a(boVar.d(), iOptInt)) != null) {
                    mVarA.a(jSONObject, boVar.d());
                }
            } catch (Throwable th) {
                Log.e(f8979a, "parse place strategy error:" + th.getMessage());
            }
            m mVarA2 = m.a(boVar.d(), jSONObject);
            o oVar2 = this.f8980b;
            if (oVar2 == null || mVarA2 == null) {
                return;
            }
            String strD = boVar.d();
            if (mVarA2.as() != 1) {
                jSONObject = null;
            }
            oVar2.a(strD, mVarA2, jSONObject, mVarA2.aW());
        }
    }

    public final void a(Context context, bo boVar, com.anythink.core.common.m.s sVar) {
        if (boVar == null) {
            return;
        }
        com.anythink.core.common.d.s.b().T();
        b bVarB = d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        byte b3 = 0;
        if (bVarB != null && !TextUtils.isEmpty(bVarB.as())) {
            new com.anythink.core.common.m.u(context, boVar).b(bVarB.as()).a(0, sVar);
            return;
        }
        com.anythink.core.common.i.a();
        final String strB = com.anythink.core.common.i.b(true);
        com.anythink.core.common.i.a();
        final String strB2 = com.anythink.core.common.i.b(false);
        long jAF = bVarB != null ? bVarB.aF() : 10000L;
        long jAH = bVarB != null ? bVarB.aH() : 10000L;
        final a aVar = new a(b3);
        aVar.f8995a = context;
        aVar.f8996b = boVar;
        aVar.f8997c = strB;
        aVar.f8998d = strB2;
        aVar.f9001g = jAF;
        aVar.f9002h = jAH;
        if (!ATSDK.isCnSDK()) {
            final com.anythink.core.common.m.p pVar = new com.anythink.core.common.m.p(sVar);
            a(false, aVar, (com.anythink.core.common.m.s) pVar);
            com.anythink.core.common.g.c.a().a(new com.anythink.core.common.g.d() { // from class: com.anythink.core.e.p.2
                @Override // com.anythink.core.common.g.d
                public final void a(String str, String str2) {
                    String str3;
                    String str4;
                    pVar.a();
                    String strE = com.anythink.core.common.v.p.e(strB);
                    String strE2 = com.anythink.core.common.v.p.e(strB2);
                    boolean z2 = (TextUtils.isEmpty(str) || str.equals(strE)) ? false : true;
                    boolean z3 = (TextUtils.isEmpty(str2) || str2.equals(strE2)) ? false : true;
                    if (z2 || z3) {
                        str3 = str;
                        str4 = str2;
                        com.anythink.core.common.g.c.a().a(str3, str4, strB, z2, aVar.f8996b.k());
                    } else {
                        str3 = str;
                        str4 = str2;
                    }
                    com.anythink.core.common.g.c.a();
                    aVar.f9000f = com.anythink.core.common.g.c.b(strB2, str4);
                    if (!z2) {
                        String str5 = String.format("The cdnMainDomain(%s) is not equal to curMainDomain(%s).", str3, strE);
                        pVar.onLoadError(0, str5, ErrorCode.getErrorCode("9999", "", str5));
                        return;
                    }
                    com.anythink.core.common.g.c.a();
                    String strB3 = com.anythink.core.common.g.c.b(strB, str3);
                    a aVar2 = aVar;
                    aVar2.f8999e = strB3;
                    p.this.a(true, aVar2, (com.anythink.core.common.m.s) pVar);
                }
            });
            return;
        }
        a(false, aVar, sVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z2, final a aVar, final com.anythink.core.common.m.s sVar) {
        final String strK = aVar.f8996b.k();
        final String strA = aVar.a(z2);
        final String strB = aVar.b(z2);
        new com.anythink.core.e.a.a(z2, sVar) { // from class: com.anythink.core.e.p.3
            @Override // com.anythink.core.e.a.a
            public final void a(int i2, com.anythink.core.common.m.p pVar) {
                boolean z3 = i2 == 0;
                String str = z3 ? strA : strB;
                a aVar2 = aVar;
                new com.anythink.core.common.m.u(aVar2.f8995a, aVar2.f8996b).b(str).a(z2).a(i2, (com.anythink.core.common.m.s) pVar);
                com.anythink.core.common.u.f.a(strK, z3 ? 1 : 2, str, 1, h(), i(), z2, aVar.f8996b.d());
            }

            @Override // com.anythink.core.e.a.a
            public final boolean b() {
                if (TextUtils.equals(strB, aVar.f9003i)) {
                    return false;
                }
                aVar.f9003i = strB;
                return true;
            }

            @Override // com.anythink.core.e.a.a
            public final long c() {
                return aVar.f9001g;
            }

            @Override // com.anythink.core.e.a.a
            public final long d() {
                return aVar.f9002h;
            }

            @Override // com.anythink.core.e.a.a
            public final void e() {
                com.anythink.core.common.u.f.a(strK, 0, "", 4, h(), i(), z2, aVar.f8996b.d());
                if (sVar != null) {
                    String str = "request timeout for main(backup) strategy (" + aVar.f9001g + ServiceReference.DELIMITER + aVar.f9002h + ")";
                    sVar.onLoadError(0, str, ErrorCode.getErrorCode("9999", "", str));
                }
            }

            @Override // com.anythink.core.e.a.a
            public final void b(int i2, Object obj) throws JSONException {
                p.a(p.this, i2, obj, aVar.f8996b);
            }

            @Override // com.anythink.core.e.a.a
            public final void a(boolean z3, int i2) {
                boolean z4 = i2 == 0;
                com.anythink.core.common.u.f.a(strK, z4 ? 1 : 2, z4 ? strA : strB, z3 ? 2 : 3, h(), i(), z2, aVar.f8996b.d());
            }
        }.f();
    }

    public static /* synthetic */ void a(p pVar, int i2, Object obj, bo boVar) throws JSONException {
        m mVarA;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            try {
                jSONObject.put(m.a.ac, System.currentTimeMillis());
                jSONObject.put("strategy_domain_type_key", i2 == 1 ? 1 : 0);
                int iOptInt = jSONObject.optInt(m.a.av, 0);
                o oVar = pVar.f8980b;
                if (oVar != null && (mVarA = oVar.a(boVar.d(), iOptInt)) != null) {
                    mVarA.a(jSONObject, boVar.d());
                }
            } catch (Throwable th) {
                Log.e(f8979a, "parse place strategy error:" + th.getMessage());
            }
            m mVarA2 = m.a(boVar.d(), jSONObject);
            o oVar2 = pVar.f8980b;
            if (oVar2 == null || mVarA2 == null) {
                return;
            }
            String strD = boVar.d();
            if (mVarA2.as() != 1) {
                jSONObject = null;
            }
            oVar2.a(strD, mVarA2, jSONObject, mVarA2.aW());
        }
    }
}
