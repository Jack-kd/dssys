package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.basic.ADNConfigResponse;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.kd;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

/* renamed from: com.beizi.fusion.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1152x extends bb implements ka {

    /* renamed from: b, reason: collision with root package name */
    private final C1135g f17354b;

    /* renamed from: c, reason: collision with root package name */
    private C1150v f17355c;

    /* renamed from: d, reason: collision with root package name */
    private final e f17356d;

    /* renamed from: e, reason: collision with root package name */
    private final d f17357e;

    /* renamed from: f, reason: collision with root package name */
    private final nc f17358f;

    /* renamed from: g, reason: collision with root package name */
    private final hb f17359g;

    /* renamed from: com.beizi.fusion.x$b */
    public class b implements nc {

        /* renamed from: a, reason: collision with root package name */
        private final c f17360a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f17361b;

        private b() {
            this.f17360a = new a(false);
            this.f17361b = false;
        }

        /* renamed from: com.beizi.fusion.x$b$a */
        public class a extends c {
            public a(boolean z2) {
                super(z2);
            }

            @Override // com.beizi.fusion.C1152x.c
            public void a(EnumC1151w enumC1151w) {
                b.this.f17361b = false;
                super.a(enumC1151w);
            }

            @Override // com.beizi.fusion.C1152x.c
            public void a() {
                b.this.f17361b = false;
                super.a();
            }
        }

        @Override // com.beizi.fusion.nc
        public void a() {
            if (this.f17361b || C1152x.this.f17359g == null) {
                return;
            }
            rm.a("ASNPInitRouter", "请求强制更新Global配置...");
            this.f17361b = true;
            C1152x.this.f17359g.e(this.f17360a);
        }
    }

    /* renamed from: com.beizi.fusion.x$c */
    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final sb f17364a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f17365b;

        /* renamed from: com.beizi.fusion.x$c$a */
        public class a extends sb {

            /* renamed from: c, reason: collision with root package name */
            final /* synthetic */ C1152x f17367c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(long j2, C1152x c1152x) {
                super(j2);
                this.f17367c = c1152x;
            }

            @Override // com.beizi.fusion.sb
            public void b() {
                c.this.a(EnumC1151w.ERROR_CONFIG_REQUEST_TIMEOUT);
                c.this.f17364a.a();
            }
        }

        /* renamed from: com.beizi.fusion.x$c$b */
        public class b implements ua {
            @Override // com.beizi.fusion.ua
            public void a(int i2, InputStream inputStream) {
                try {
                    EnumC1151w[] enumC1151wArr = new EnumC1151w[1];
                    ConfigResponseModel configResponseModelA = a(new String(((kd) gh.a().b(C1152x.this.f13075a)).a(be.b(inputStream), "101,1001", kd.a.NOT_APPEND, true)), enumC1151wArr);
                    if (configResponseModelA != null) {
                        C1152x.this.f17354b.a(configResponseModelA, true, false);
                        c.this.a();
                        return;
                    }
                    c cVar = c.this;
                    EnumC1151w enumC1151w = enumC1151wArr[0];
                    if (enumC1151w == null) {
                        enumC1151w = EnumC1151w.ERROR_CONFIG_PARSE_FAIL;
                    }
                    cVar.a(enumC1151w);
                } catch (IOException e2) {
                    rm.a(e2);
                    c.this.a(EnumC1151w.ERROR_CONFIG_RESPONSE_ERROR);
                }
            }

            private b() {
            }

            @Override // com.beizi.fusion.ua
            public void a(pc pcVar) {
                rm.b("ASNPInitRouter", "服务器请求失败 " + pcVar.b() + " " + pcVar.a());
                c.this.a(EnumC1151w.ERROR_CONFIG_RESPONSE_ERROR);
            }

            private ConfigResponseModel a(String str, EnumC1151w[] enumC1151wArr) {
                if (!TextUtils.isEmpty(str)) {
                    ADNConfigResponse aDNConfigResponse = new ADNConfigResponse(pg.c(str));
                    if (aDNConfigResponse.isResponseValid()) {
                        ConfigResponseModel data = aDNConfigResponse.getData();
                        if (!data.hasParseException()) {
                            return data;
                        }
                        if (enumC1151wArr != null && enumC1151wArr.length > 0) {
                            enumC1151wArr[0] = EnumC1151w.ERROR_CONFIG_PARSE_FAIL;
                        }
                        return null;
                    }
                }
                if (enumC1151wArr != null && enumC1151wArr.length > 0) {
                    enumC1151wArr[0] = EnumC1151w.ERROR_CONFIG_RESPONSE_ERROR;
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            this.f17365b = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17364a.c();
            C1152x.this.a(qo.a(a(C1152x.this.f17354b.a(false)), C1152x.this.f17355c.z()), new z5(C1152x.this.f13075a, C1152x.this.f17355c.e()), new b());
        }

        private c(boolean z2) {
            this.f17365b = z2;
            this.f17364a = new a(10000L, C1152x.this);
        }

        private String b() {
            return g3.c(((C1152x.this.f17355c == null || !C1152x.this.f17355c.z()) ? "aHR0cDovL3Nkay1hcGkuYWRuLXBsdXMuY29tLmNuL2FwaS92My9jZmcvZ2V0Q29uZmln" : "aHR0cHM6Ly9zZGstYXBpLmFkbi1wbHVzLmNvbS5jbi9hcGkvdjMvY2ZnL2dldENvbmZpZw==").getBytes());
        }

        public void a() {
            sb sbVar = this.f17364a;
            if (sbVar != null) {
                sbVar.a();
            }
            if (this.f17365b) {
                C1152x.this.b();
            }
        }

        public void a(EnumC1151w enumC1151w) {
            sb sbVar = this.f17364a;
            if (sbVar != null) {
                sbVar.a();
            }
            if (this.f17365b) {
                C1152x.this.a(enumC1151w);
            }
        }

        private String a(ConfigResponseModel configResponseModel) {
            if (configResponseModel != null && configResponseModel.getRequestUrl() != null) {
                String configURL = configResponseModel.getRequestUrl().getConfigURL();
                if (!TextUtils.isEmpty(configURL)) {
                    return configURL;
                }
            }
            return b();
        }
    }

    /* renamed from: com.beizi.fusion.x$d */
    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final c f17370a;

        /* renamed from: b, reason: collision with root package name */
        private final g f17371b;

        private boolean a() {
            if (C1152x.this.f17354b != null) {
                return C1152x.this.f17354b.f();
            }
            return false;
        }

        private void b() {
            this.f17371b.d();
        }

        private void c() {
            this.f17370a.run();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1138j.c(C1152x.this.f13075a)) {
                c();
                return;
            }
            b();
            if (a()) {
                C1152x.this.b();
                return;
            }
            if (C1152x.this.f17354b == null) {
                C1152x.this.a(EnumC1151w.ERROR_UNEXPECTED);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!C1152x.this.f17354b.d()) {
                c();
                return;
            }
            if (C1152x.this.f17354b.b(jCurrentTimeMillis)) {
                c();
            } else {
                if (!C1152x.this.f17354b.c(jCurrentTimeMillis)) {
                    C1152x.this.b();
                    return;
                }
                this.f17370a.c();
                c();
                C1152x.this.b();
            }
        }

        private d() {
            this.f17370a = new c(true);
            this.f17371b = new g(new f(new c(false)));
        }
    }

    /* renamed from: com.beizi.fusion.x$e */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        private uc f17373a;

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            uc ucVar = this.f17373a;
            if (ucVar != null) {
                ucVar.a();
            }
        }

        public void a() {
        }

        private e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(uc ucVar) {
            this.f17373a = ucVar;
        }

        public void a(EnumC1151w enumC1151w) {
            uc ucVar = this.f17373a;
            if (ucVar != null) {
                ucVar.a(enumC1151w);
            }
        }
    }

    /* renamed from: com.beizi.fusion.x$f */
    public class f implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final c f17374a;

        @Override // java.lang.Runnable
        public void run() {
            if (((C1135g) C1136h.a().b(C1152x.this.f13075a)).a(System.currentTimeMillis()) != C1135g.a.VALID) {
                if (C1127b0.a().a(C1152x.this.f13075a) || C1127b0.a().b(C1152x.this.f13075a)) {
                    this.f17374a.run();
                }
            }
        }

        private f(c cVar) {
            this.f17374a = cVar;
        }
    }

    /* renamed from: com.beizi.fusion.x$g */
    public class g extends de {

        /* renamed from: d, reason: collision with root package name */
        private final oc f17376d;

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            if (C1152x.this.f17354b != null) {
                C1152x.this.f17354b.a(this.f17376d);
            }
        }

        private g(Runnable runnable) {
            super(runnable);
            this.f17376d = new a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(ConfigResponseModel configResponseModel) {
            if (configResponseModel == null || configResponseModel.getUpdate() == null) {
                return;
            }
            int checkInterval = configResponseModel.getUpdate().getCheckInterval();
            if (checkInterval > 0) {
                long j2 = checkInterval;
                a(j2, j2, TimeUnit.MILLISECONDS);
            } else {
                a(60000L, 60000L, TimeUnit.MILLISECONDS);
            }
        }

        /* renamed from: com.beizi.fusion.x$g$a */
        public class a implements oc {
            public a() {
            }

            @Override // com.beizi.fusion.oc
            public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
                g.this.c();
                g.this.a(configResponseModel);
                if (z2) {
                    p0.b(C1152x.this.f13075a, p0.b(), "asnpCfgPattern", "101,1001");
                    String strA = a(configResponseModel, "101,1001");
                    if (TextUtils.isEmpty(strA)) {
                        return;
                    }
                    p0.b(C1152x.this.f13075a, p0.b(), "asnpConfigV3", strA);
                }
            }

            private String a(ConfigResponseModel configResponseModel, String str) {
                if (configResponseModel != null) {
                    return ((kd) gh.a().b(C1152x.this.f13075a)).b(configResponseModel.toJsonString(), str, kd.a.STEP_BY_STEP, false);
                }
                return "";
            }
        }
    }

    public C1152x(Context context) {
        super(context);
        this.f17354b = (C1135g) C1136h.a().b(this.f13075a);
        this.f17357e = new d();
        this.f17356d = new e();
        this.f17358f = new b();
        this.f17359g = (hb) fn.a().b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        c();
        this.f17356d.b();
    }

    private void c() {
        this.f17356d.a();
    }

    private void d() {
        this.f17354b.a(this.f17358f);
    }

    @Override // com.beizi.fusion.ka
    public void a(uc ucVar) {
        this.f17356d.a(ucVar);
    }

    @Override // com.beizi.fusion.ka
    public void a(C1150v c1150v) {
        this.f17355c = c1150v;
        d();
        a();
    }

    private void a() {
        hb hbVar = this.f17359g;
        if (hbVar != null) {
            hbVar.e(this.f17357e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EnumC1151w enumC1151w) {
        this.f17356d.a(enumC1151w);
    }
}
