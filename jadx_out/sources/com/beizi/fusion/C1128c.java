package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;

/* renamed from: com.beizi.fusion.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1128c {

    /* renamed from: com.beizi.fusion.c$c, reason: collision with other inner class name */
    public static class C0153c {

        /* renamed from: a, reason: collision with root package name */
        private static C1128c f13175a = new C1128c();
    }

    public static C1128c a() {
        return C0153c.f13175a;
    }

    /* renamed from: com.beizi.fusion.c$b */
    public static class b implements sc {

        /* renamed from: a, reason: collision with root package name */
        private final sc f13174a;

        public b(sc scVar) {
            this.f13174a = scVar;
        }

        @Override // com.beizi.fusion.sc
        public void a() {
            sc scVar = this.f13174a;
            if (scVar != null) {
                scVar.a();
            }
        }

        @Override // com.beizi.fusion.sc
        public void b() {
            sc scVar = this.f13174a;
            if (scVar != null) {
                scVar.b();
            }
        }

        @Override // com.beizi.fusion.sc
        public void c() {
            sc scVar = this.f13174a;
            if (scVar != null) {
                scVar.c();
            }
        }

        @Override // com.beizi.fusion.sc
        public void a(int i2, String str) {
            sc scVar = this.f13174a;
            if (scVar != null) {
                scVar.a(i2, str);
            }
        }
    }

    private C1128c() {
        if (C0153c.f13175a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public void a(Context context, C1150v c1150v, sc scVar) {
        b bVar = new b(scVar);
        rm.d("ASNPAdSDK", "ASNP 版本 " + m0.c());
        try {
            rm.d("ASNPAdSDK", "Common库 版本 5.4.0.1");
            if (!a(c1150v)) {
                a(bVar, EnumC1151w.ERROR_CONFIG_APP_ID);
                return;
            }
            rm.d("ASNPAdSDK", String.format("ASNP 初始化... appID:%s", c1150v.e()));
            t9 t9Var = (t9) C1154z.a().b(context.getApplicationContext());
            if (t9Var.a()) {
                a(bVar, EnumC1151w.ALREADY_INIT);
            } else {
                t9Var.a(c1150v, bVar);
            }
        } catch (Throwable unused) {
            a(bVar, EnumC1151w.ERROR_SDK_SUPPORT_CLASS_MISSED);
        }
    }

    private void a(sc scVar, EnumC1151w enumC1151w) {
        if (scVar != null) {
            if (enumC1151w == EnumC1151w.INIT_DONE) {
                scVar.a();
            } else if (enumC1151w == EnumC1151w.ALREADY_INIT) {
                scVar.b();
            } else {
                scVar.a(enumC1151w.b(), enumC1151w.c());
            }
        }
    }

    private boolean a(C1150v c1150v) {
        if (c1150v != null) {
            return !TextUtils.isEmpty(c1150v.e());
        }
        return false;
    }
}
