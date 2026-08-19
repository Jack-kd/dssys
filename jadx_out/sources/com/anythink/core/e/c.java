package com.anythink.core.e;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ErrorCode;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8750a = "c";

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        Context f8763a;

        /* renamed from: b, reason: collision with root package name */
        com.anythink.core.common.h.v f8764b;

        /* renamed from: c, reason: collision with root package name */
        String f8765c;

        /* renamed from: d, reason: collision with root package name */
        String f8766d;

        /* renamed from: e, reason: collision with root package name */
        String f8767e;

        /* renamed from: f, reason: collision with root package name */
        String f8768f;

        /* renamed from: g, reason: collision with root package name */
        long f8769g;

        /* renamed from: h, reason: collision with root package name */
        long f8770h;

        /* renamed from: i, reason: collision with root package name */
        String f8771i;

        private a() {
        }

        public final String a(boolean z2) {
            return z2 ? this.f8767e : this.f8765c;
        }

        public final String b(boolean z2) {
            return z2 ? this.f8768f : !TextUtils.isEmpty(this.f8768f) ? this.f8768f : this.f8766d;
        }

        public /* synthetic */ a(byte b3) {
            this();
        }
    }

    public static void b(Context context, com.anythink.core.common.h.v vVar, com.anythink.core.common.m.s sVar) {
        if (context == null) {
            return;
        }
        new com.anythink.core.common.m.k(context, vVar).a(0, sVar);
    }

    public final void a(Context context, com.anythink.core.common.h.v vVar, com.anythink.core.common.m.s sVar) {
        if (context == null) {
            return;
        }
        com.anythink.core.common.d.s.b().T();
        b bVarB = d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        com.anythink.core.common.i.a();
        final String strA = com.anythink.core.common.i.a(true);
        com.anythink.core.common.i.a();
        byte b3 = 0;
        final String strA2 = com.anythink.core.common.i.a(false);
        long jAF = bVarB != null ? bVarB.aF() : 10000L;
        long jAH = bVarB != null ? bVarB.aH() : 10000L;
        long j2 = jAF;
        final a aVar = new a(b3);
        aVar.f8763a = context;
        aVar.f8764b = vVar;
        aVar.f8765c = strA;
        aVar.f8766d = strA2;
        aVar.f8769g = j2;
        aVar.f8770h = jAH;
        if (ATSDK.isCnSDK()) {
            a(false, aVar, sVar);
            return;
        }
        final com.anythink.core.common.m.p pVar = new com.anythink.core.common.m.p(sVar);
        a(false, aVar, (com.anythink.core.common.m.s) pVar);
        com.anythink.core.common.g.c.a().a(new com.anythink.core.common.g.d() { // from class: com.anythink.core.e.c.1
            @Override // com.anythink.core.common.g.d
            public final void a(String str, String str2) {
                String str3;
                String str4;
                pVar.a();
                String strE = com.anythink.core.common.v.p.e(strA);
                String strE2 = com.anythink.core.common.v.p.e(strA2);
                boolean z2 = (TextUtils.isEmpty(str) || str.equals(strE)) ? false : true;
                boolean z3 = (TextUtils.isEmpty(str2) || str2.equals(strE2)) ? false : true;
                if (z2 || z3) {
                    str3 = str;
                    str4 = str2;
                    com.anythink.core.common.g.c.a().a(str3, str4, strA, false, "");
                } else {
                    str3 = str;
                    str4 = str2;
                }
                com.anythink.core.common.g.c.a();
                aVar.f8768f = com.anythink.core.common.g.c.b(strA2, str4);
                if (!z2) {
                    String str5 = String.format("The cdnMainDomain(%s) is not equal to curMainDomain(%s).", str3, strE);
                    pVar.onLoadError(0, str5, ErrorCode.getErrorCode(ErrorCode.appIdError, "", str5));
                    return;
                }
                com.anythink.core.common.g.c.a();
                String strB = com.anythink.core.common.g.c.b(strA, str3);
                a aVar2 = aVar;
                aVar2.f8767e = strB;
                c.this.a(true, aVar2, (com.anythink.core.common.m.s) pVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z2, final a aVar, final com.anythink.core.common.m.s sVar) {
        final String strF = aVar.f8764b.f();
        final String strA = aVar.a(z2);
        final String strB = aVar.b(z2);
        new com.anythink.core.e.a.a(z2, sVar) { // from class: com.anythink.core.e.c.2
            @Override // com.anythink.core.e.a.a
            public final void a(int i2, com.anythink.core.common.m.p pVar) {
                boolean z3 = i2 == 0;
                String str = z3 ? strA : strB;
                a aVar2 = aVar;
                new com.anythink.core.common.m.g(aVar2.f8763a, aVar2.f8764b).b(str).a(z2).a(i2, (com.anythink.core.common.m.s) pVar);
                com.anythink.core.common.u.f.a(strF, z3 ? 1 : 2, str, 1, h(), i(), z2, aVar.f8764b.a());
            }

            @Override // com.anythink.core.e.a.a
            public final boolean b() {
                if (TextUtils.equals(strB, aVar.f8771i)) {
                    return false;
                }
                aVar.f8771i = strB;
                return true;
            }

            @Override // com.anythink.core.e.a.a
            public final long c() {
                return aVar.f8769g;
            }

            @Override // com.anythink.core.e.a.a
            public final long d() {
                return aVar.f8770h;
            }

            @Override // com.anythink.core.e.a.a
            public final void e() {
                com.anythink.core.common.u.f.a(strF, 0, "", 4, h(), i(), z2, aVar.f8764b.a());
                if (sVar != null) {
                    String str = "request timeout for main(backup) strategy (" + aVar.f8769g + ServiceReference.DELIMITER + aVar.f8770h + ")";
                    sVar.onLoadError(0, str, ErrorCode.getErrorCode("9999", "", str));
                }
            }

            @Override // com.anythink.core.e.a.a
            public final void b(int i2, Object obj) throws JSONException {
                d.a(aVar.f8763a).a(aVar.f8763a, obj, com.anythink.core.common.d.s.b().p());
            }

            @Override // com.anythink.core.e.a.a
            public final void a(boolean z3, int i2) {
                boolean z4 = i2 == 0;
                com.anythink.core.common.u.f.a(strF, z4 ? 1 : 2, z4 ? strA : strB, z3 ? 2 : 3, h(), i(), z2, aVar.f8764b.a());
            }
        }.f();
    }
}
