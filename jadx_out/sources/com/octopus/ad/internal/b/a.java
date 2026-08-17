package com.octopus.ad.internal.b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.anythink.core.common.m.AbstractC1114b;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.octopus.ad.AdRequest;
import com.octopus.ad.Octopus;
import com.octopus.ad.OctopusAdSdkController;
import com.octopus.ad.R;
import com.octopus.ad.a.b;
import com.octopus.ad.a.c;
import com.octopus.ad.a.f;
import com.octopus.ad.a.g;
import com.octopus.ad.d.b.i;
import com.octopus.ad.internal.c.h;
import com.octopus.ad.internal.c.m;
import com.octopus.ad.internal.c.p;
import com.octopus.ad.internal.c.r;
import com.octopus.ad.internal.c.s;
import com.octopus.ad.internal.c.t;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.o;
import com.octopus.ad.internal.q;
import com.octopus.ad.utils.ThreadUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private SoftReference<com.octopus.ad.internal.e> f34217b;

    /* renamed from: d, reason: collision with root package name */
    private com.octopus.ad.internal.d f34218d;

    /* renamed from: e, reason: collision with root package name */
    private String f34219e;

    /* renamed from: f, reason: collision with root package name */
    private int f34220f;

    /* renamed from: g, reason: collision with root package name */
    private int f34221g;

    /* renamed from: h, reason: collision with root package name */
    private long f34222h;

    /* renamed from: i, reason: collision with root package name */
    private long f34223i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f34224j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f34225k;

    /* renamed from: l, reason: collision with root package name */
    private volatile boolean f34226l;

    /* renamed from: c, reason: collision with root package name */
    private static final f f34216c = new f(true);

    /* renamed from: a, reason: collision with root package name */
    public static final String f34215a = h.a("emulator");

    /* renamed from: com.octopus.ad.internal.b.a$a, reason: collision with other inner class name */
    public static final class C0746a {

        /* renamed from: d, reason: collision with root package name */
        private Date f34245d;

        /* renamed from: e, reason: collision with root package name */
        private String f34246e;

        /* renamed from: h, reason: collision with root package name */
        private String f34249h;

        /* renamed from: j, reason: collision with root package name */
        private boolean f34251j;

        /* renamed from: a, reason: collision with root package name */
        private final HashSet<String> f34242a = new HashSet<>();

        /* renamed from: b, reason: collision with root package name */
        private final Bundle f34243b = new Bundle();

        /* renamed from: c, reason: collision with root package name */
        private final HashSet<String> f34244c = new HashSet<>();

        /* renamed from: f, reason: collision with root package name */
        private int f34247f = -1;

        /* renamed from: g, reason: collision with root package name */
        private boolean f34248g = false;

        /* renamed from: i, reason: collision with root package name */
        private int f34250i = -1;

        public void a(String str) {
            this.f34242a.add(str);
        }

        public void b(String str) {
            this.f34244c.add(str);
        }

        public void c(String str) {
            this.f34246e = str;
        }

        public void d(String str) {
            this.f34249h = str;
        }

        public void a(Class<? extends Object> cls, Bundle bundle) {
            this.f34243b.putBundle(cls.getName(), bundle);
        }

        public void b(boolean z2) {
            this.f34251j = z2;
        }

        public void a(Date date) {
            this.f34245d = date;
        }

        public void a(int i2) {
            this.f34247f = i2;
        }

        public void a(boolean z2) {
            this.f34250i = z2 ? 1 : 0;
        }
    }

    public a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(int i2) {
        return i2 == 200;
    }

    public a(C0746a c0746a) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f b(ArrayList<f> arrayList) {
        int size = arrayList.size();
        f fVar = null;
        int i2 = 0;
        while (i2 < size) {
            f fVar2 = arrayList.get(i2);
            i2++;
            f fVar3 = fVar2;
            if (fVar == null || fVar3.B() > fVar.B() || fVar3.q() > fVar.q()) {
                fVar = fVar3;
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        com.octopus.ad.internal.d dVar = this.f34218d;
        if (dVar != null) {
            o.a(new l("TIMEOUT", dVar.c(), this.f34218d.e(), System.currentTimeMillis() - this.f34218d.h(), "80003 " + str));
        }
    }

    public void a(com.octopus.ad.internal.e eVar) throws JSONException {
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "setDelegate");
        this.f34217b = new SoftReference<>(eVar);
        Context contextL = q.a().l();
        if (contextL != null) {
            q.a().e();
            com.octopus.ad.internal.c.b.a(contextL);
            s.a(contextL);
            m.a(contextL);
            if (g.a(contextL).b(contextL)) {
                return;
            }
            a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL);
            return;
        }
        a(MediationConstant.ErrorCode.ADN_AD_NO_CACHE);
    }

    public static void b(f fVar) {
        if (fVar != null) {
            a(fVar.f(), false);
            String strG = fVar.g();
            if (TextUtils.isEmpty(strG)) {
                return;
            }
            for (String str : strG.split(",")) {
                a(str, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        com.octopus.ad.internal.e eVar = this.f34217b.get();
        if (eVar != null) {
            eVar.a(i2);
        }
        com.octopus.ad.internal.c.f.a();
    }

    public void a(final String str) {
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "开始请求封装参数");
        if (this.f34223i == 0) {
            this.f34223i = System.currentTimeMillis();
        }
        this.f34222h = System.currentTimeMillis();
        com.octopus.ad.internal.e eVar = this.f34217b.get();
        final Context contextL = q.a().l();
        if (contextL == null || eVar == null) {
            return;
        }
        com.octopus.ad.internal.d dVarB = eVar.b();
        this.f34218d = dVarB;
        if (dVarB != null) {
            dVarB.b(this.f34222h);
            ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.octopus.ad.internal.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    int i2 = 0;
                    if (a.this.f34218d == null) {
                        a.this.a(80100);
                        a.this.a(false, "80100 adParams is null");
                        return;
                    }
                    if (!p.a(str)) {
                        c.u uVarA = c.u.a(a.this.f34218d.c(), a.this.f34219e, a.this.f34218d.h(), str, true);
                        a.this.a(new f(uVarA, a.this.f34218d, a.this.f34218d.q(), a.this.f34219e, uVarA.c()));
                        return;
                    }
                    boolean zC = com.octopus.ad.internal.c.o.c(contextL, "isPreload_" + a.this.f34218d.c());
                    if (zC) {
                        String strB = com.octopus.ad.internal.c.o.b(contextL, "adPreRsp_" + a.this.f34218d.c());
                        if (TextUtils.isEmpty(strB)) {
                            com.octopus.ad.d.b.f.d("OctopusAd_Time", "返回错误码");
                            a.this.a(80100);
                        } else {
                            try {
                                String[] strArrSplit = strB.split("@#&!");
                                String str2 = strArrSplit[0];
                                String str3 = strArrSplit[1];
                                String str4 = strArrSplit[2];
                                a.this.f34218d.e(str3);
                                a.this.f34218d.a(Long.parseLong(str4));
                                c.u uVarA2 = c.u.a(a.this.f34218d.c(), str3, a.this.f34218d.h(), str2, false);
                                a.this.a(new f(uVarA2, a.this.f34218d, a.this.f34218d.q(), str3, uVarA2.c()));
                                com.octopus.ad.internal.c.o.d(contextL, "adPreRsp_" + a.this.f34218d.c());
                                com.octopus.ad.d.b.f.d("OctopusAd_Time", "走缓存创建ServerResponse耗时" + (System.currentTimeMillis() - a.this.f34222h));
                            } catch (Exception e2) {
                                com.octopus.ad.d.b.f.d("OctopusAd_Time", "返回错误码:" + e2.getMessage());
                                a.this.a(80100);
                            }
                        }
                    }
                    a aVar = a.this;
                    byte[] bytes = aVar.a(aVar.f34218d, false).getBytes();
                    com.octopus.ad.d.b.f.d("OctopusAd_Time", "请求参数封装完成，耗时：" + (System.currentTimeMillis() - a.this.f34222h));
                    com.octopus.ad.d.b.f.d("OctopusAd_Time", "开始连接服务器");
                    a.this.f34222h = System.currentTimeMillis();
                    ArrayList<String> arrayList = q.a().f35020k;
                    if (zC || arrayList == null || arrayList.size() < 2) {
                        a.this.a(contextL, q.a().a(q.a().f35019j, a.this.f34218d.l(), a.this.f34218d.m()), bytes, zC, null, null);
                        return;
                    }
                    a.this.f34225k = true;
                    final CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                    final ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    while (i2 < size) {
                        String str5 = arrayList.get(i2);
                        i2++;
                        a.this.a(contextL, q.a().a(str5, a.this.f34218d.l(), a.this.f34218d.m()), bytes, zC, countDownLatch, arrayList2);
                    }
                    new Thread(new Runnable() { // from class: com.octopus.ad.internal.b.a.1.1
                        @Override // java.lang.Runnable
                        public void run() throws InterruptedException {
                            try {
                                countDownLatch.await(q.a().f35012c, TimeUnit.MILLISECONDS);
                                if (arrayList2.isEmpty()) {
                                    a.this.a((f) null);
                                } else if (arrayList2.size() == 1) {
                                    a.this.a((f) arrayList2.get(0));
                                } else {
                                    a.this.a(a.b((ArrayList<f>) arrayList2));
                                }
                            } catch (Exception unused) {
                                a.this.a((f) null);
                            }
                        }
                    }).start();
                }
            });
        }
    }

    public String a(com.octopus.ad.internal.d dVar, boolean z2) {
        String strJ;
        try {
            Context contextL = q.a().l();
            boolean z3 = dVar.q() == com.octopus.ad.internal.p.PREFETCH;
            q qVarA = q.a();
            com.octopus.ad.internal.c.a aVarA = com.octopus.ad.internal.c.a.a();
            f.a aVarA2 = new f.a.C0712a().a(aVarA.f34513c).l(com.octopus.ad.internal.c.a.f34503o).m(com.octopus.ad.internal.c.a.f34504p).b(com.octopus.ad.d.a.b.a(contextL)).n(com.octopus.ad.d.a.b.e(contextL)).q(com.octopus.ad.d.b.g.a()).p(com.octopus.ad.d.b.g.b(contextL)).s(com.octopus.ad.d.b.g.c(contextL)).r(com.octopus.ad.d.b.g.d(contextL)).t(aVarA.f34527s).u(aVarA.f34528t).c("").d(aVarA.f34518h).a(g.e.PLATFORM_ANDROID).a(aVarA.f34519i).e(aVarA.f34520j).f(aVarA.f34521k).g(aVarA.f34522l).h(aVarA.f34523m).i(aVarA.f34524n).j(aVarA.f34525q).k(aVarA.f34526r).o(aVarA.f34515e).v(aVarA.f34529w).w(aVarA.f34530x).x(aVarA.f34531y).y(aVarA.f34532z).z(aVarA.f34507A).A(aVarA.f34508B).B(aVarA.f34509C).C(aVarA.f34510D).a(aVarA.f34511E).D(com.octopus.ad.internal.c.a.f34505u).E(com.octopus.ad.internal.c.a.f34506v).F(aVarA.f34512F).b(aVarA.f34516f).c(aVarA.f34517g).a();
            r rVarA = r.a();
            f.c cVarA = new f.c.a().a(rVarA.f34622a).a(rVarA.f34623b).a();
            f.b bVar = new f.b();
            bVar.a(com.octopus.ad.internal.c.l.a().f34611b);
            String strK = qVarA.k();
            if ("OctopusGroup".equals(dVar.d())) {
                strJ = qVarA.i();
                if (!TextUtils.isEmpty(strJ)) {
                    strK = strJ;
                }
            } else {
                strJ = qVarA.j();
                if (!TextUtils.isEmpty(strJ)) {
                    strK = strJ;
                }
            }
            if ("OctopusGroup".equals(dVar.d())) {
                this.f34219e = dVar.e();
            } else {
                this.f34219e = dVar.a();
            }
            b.C0709b.a aVarC = new b.C0709b.a().a("2.6.5.7").b(i.f(contextL)).c(i.g(contextL)).a(g.i.SRC_APP).f(s.b(contextL)).a(z3 ? g.EnumC0713g.REQ_WIFI_PRELOAD : g.EnumC0713g.REQ_AD).a(System.currentTimeMillis()).d(strK).e(this.f34219e).a(this.f34220f).a(aVarA2).a(cVarA).a(bVar).f(i.e(contextL)).g(i.i(contextL)).h(i.d(contextL)).b(i.a(contextL)).c(i.c(contextL));
            OctopusAdSdkController customController = Octopus.getCustomController();
            if (customController != null) {
                aVarC.a(customController.isCanShake());
                if (customController.getShakeValue() != null) {
                    aVarC.a(customController.getShakeValue());
                }
            }
            if (z3) {
                for (String str : q.a().t()) {
                    if (!p.a(str)) {
                        aVarC.a(new b.a.C0708a().a(str).c(dVar.a()).a());
                    }
                }
            } else {
                aVarC.a(new b.a.C0708a().a(dVar.c()).c(dVar.a()).b(dVar.s()).a());
            }
            b.C0709b c0709bA = aVarC.a();
            Boolean bool = (Boolean) com.octopus.ad.internal.c.o.c(contextL, "encrypt", Boolean.TRUE);
            if (bool != null && !bool.booleanValue() && !z2) {
                return c0709bA.toString();
            }
            String strA = com.octopus.ad.d.b.a.a(com.octopus.ad.d.b.e.a(), c0709bA.toString());
            return strA == null ? "" : strA;
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Context context, final String str, final byte[] bArr, final boolean z2, final CountDownLatch countDownLatch, final ArrayList<f> arrayList) {
        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.octopus.ad.internal.b.a.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:117:0x0312 A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:119:0x0316 A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:121:0x031d A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:123:0x0322 A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:125:0x0327 A[Catch: Exception -> 0x0262, TRY_LEAVE, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:131:0x0332 A[Catch: Exception -> 0x0356, TryCatch #4 {Exception -> 0x0356, blocks: (B:129:0x032e, B:131:0x0332, B:133:0x0336, B:136:0x0340, B:138:0x0346, B:140:0x0350, B:143:0x0358, B:148:0x036e, B:150:0x0373, B:152:0x0378, B:144:0x0363, B:146:0x0367), top: B:160:0x032e }] */
            /* JADX WARN: Removed duplicated region for block: B:144:0x0363 A[Catch: Exception -> 0x0356, TryCatch #4 {Exception -> 0x0356, blocks: (B:129:0x032e, B:131:0x0332, B:133:0x0336, B:136:0x0340, B:138:0x0346, B:140:0x0350, B:143:0x0358, B:148:0x036e, B:150:0x0373, B:152:0x0378, B:144:0x0363, B:146:0x0367), top: B:160:0x032e }] */
            /* JADX WARN: Removed duplicated region for block: B:146:0x0367 A[Catch: Exception -> 0x0356, TryCatch #4 {Exception -> 0x0356, blocks: (B:129:0x032e, B:131:0x0332, B:133:0x0336, B:136:0x0340, B:138:0x0346, B:140:0x0350, B:143:0x0358, B:148:0x036e, B:150:0x0373, B:152:0x0378, B:144:0x0363, B:146:0x0367), top: B:160:0x032e }] */
            /* JADX WARN: Removed duplicated region for block: B:148:0x036e A[Catch: Exception -> 0x0356, TryCatch #4 {Exception -> 0x0356, blocks: (B:129:0x032e, B:131:0x0332, B:133:0x0336, B:136:0x0340, B:138:0x0346, B:140:0x0350, B:143:0x0358, B:148:0x036e, B:150:0x0373, B:152:0x0378, B:144:0x0363, B:146:0x0367), top: B:160:0x032e }] */
            /* JADX WARN: Removed duplicated region for block: B:150:0x0373 A[Catch: Exception -> 0x0356, TryCatch #4 {Exception -> 0x0356, blocks: (B:129:0x032e, B:131:0x0332, B:133:0x0336, B:136:0x0340, B:138:0x0346, B:140:0x0350, B:143:0x0358, B:148:0x036e, B:150:0x0373, B:152:0x0378, B:144:0x0363, B:146:0x0367), top: B:160:0x032e }] */
            /* JADX WARN: Removed duplicated region for block: B:152:0x0378 A[Catch: Exception -> 0x0356, TRY_LEAVE, TryCatch #4 {Exception -> 0x0356, blocks: (B:129:0x032e, B:131:0x0332, B:133:0x0336, B:136:0x0340, B:138:0x0346, B:140:0x0350, B:143:0x0358, B:148:0x036e, B:150:0x0373, B:152:0x0378, B:144:0x0363, B:146:0x0367), top: B:160:0x032e }] */
            /* JADX WARN: Removed duplicated region for block: B:177:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:179:? A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:79:0x026f A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:81:0x0273 A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:83:0x027a A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Removed duplicated region for block: B:85:0x027f A[Catch: Exception -> 0x0262, TryCatch #13 {Exception -> 0x0262, blocks: (B:64:0x023a, B:66:0x023e, B:68:0x0242, B:71:0x024c, B:73:0x0252, B:75:0x025c, B:78:0x0264, B:83:0x027a, B:85:0x027f, B:86:0x0282, B:79:0x026f, B:81:0x0273, B:104:0x02e0, B:106:0x02e4, B:108:0x02e8, B:111:0x02f2, B:113:0x02f8, B:115:0x0302, B:116:0x0307, B:121:0x031d, B:123:0x0322, B:125:0x0327, B:117:0x0312, B:119:0x0316), top: B:166:0x000f }] */
            /* JADX WARN: Type inference failed for: r0v101, types: [com.octopus.ad.internal.b.a] */
            /* JADX WARN: Type inference failed for: r0v92, types: [com.octopus.ad.internal.b.a] */
            /* JADX WARN: Type inference failed for: r10v16, types: [java.io.OutputStream] */
            /* JADX WARN: Type inference failed for: r10v17 */
            /* JADX WARN: Type inference failed for: r10v18 */
            /* JADX WARN: Type inference failed for: r10v19 */
            /* JADX WARN: Type inference failed for: r10v20 */
            /* JADX WARN: Type inference failed for: r10v23 */
            /* JADX WARN: Type inference failed for: r10v24 */
            /* JADX WARN: Type inference failed for: r10v25 */
            /* JADX WARN: Type inference failed for: r10v26 */
            /* JADX WARN: Type inference failed for: r10v5, types: [java.io.OutputStream] */
            /* JADX WARN: Type inference failed for: r10v7 */
            /* JADX WARN: Type inference failed for: r10v8, types: [java.io.OutputStream] */
            /* JADX WARN: Type inference failed for: r11v19, types: [int] */
            /* JADX WARN: Type inference failed for: r11v20 */
            /* JADX WARN: Type inference failed for: r11v21 */
            /* JADX WARN: Type inference failed for: r11v23 */
            /* JADX WARN: Type inference failed for: r11v27, types: [com.octopus.ad.internal.b.f, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r11v28 */
            /* JADX WARN: Type inference failed for: r11v30 */
            /* JADX WARN: Type inference failed for: r11v31 */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instructions count: 896
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.b.a.AnonymousClass2.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(q.f34983w);
        httpURLConnection.setReadTimeout(q.f34984x);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OutputStream a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setRequestProperty("User-Agent", q.a().m());
        httpURLConnection.setRequestProperty(AbstractC1114b.f5589g, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        String strA = t.a();
        if (!TextUtils.isEmpty(strA)) {
            httpURLConnection.setRequestProperty(com.sigmob.sdk.base.e.f36239a, strA);
        }
        httpURLConnection.setRequestProperty("Connect-Length", Integer.toString(bArr.length));
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArr);
        outputStream.flush();
        return outputStream;
    }

    public void a(final f fVar) {
        if (this.f34226l) {
            return;
        }
        this.f34226l = true;
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.b.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (fVar == null || a.this.f34218d == null) {
                    com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34569e, com.octopus.ad.internal.c.f.a(R.string.no_response));
                    a.this.a(80100);
                    a.this.a(false, "80100 response is null");
                    return;
                }
                if (fVar.v()) {
                    int i2 = q.a().f35011b;
                    if (a.this.f34224j || i2 == 0 || System.currentTimeMillis() - a.this.f34223i > i2) {
                        a.this.a(MediationConstant.ErrorCode.ADN_AD_RENDER_FAIL);
                        return;
                    }
                    a.this.f34218d.a(p.a());
                    a.this.f34220f = 1;
                    if (a.this.f34225k) {
                        return;
                    }
                    a.this.a("");
                    return;
                }
                if ("204".equals(fVar.i())) {
                    a.b(fVar);
                    a.this.a(80100);
                    a.this.a(false, "80100 response code is 204");
                    return;
                }
                com.octopus.ad.internal.e eVar = (com.octopus.ad.internal.e) a.this.f34217b.get();
                if (eVar != null) {
                    a.this.a(true, "");
                    eVar.a(fVar);
                } else {
                    a.this.a(80100);
                    a.this.a(false, "80100 adRequestDelegate is null");
                }
            }
        });
    }

    public static void a(String str, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Context contextL = q.a().l();
        C0746a c0746aA = new AdRequest.Builder().build().a();
        com.octopus.ad.internal.e.g gVar = new com.octopus.ad.internal.e.g(contextL, new FrameLayout(contextL), "");
        gVar.setAdSlotId(str);
        gVar.setIsS2SBoost(z2);
        gVar.setIsBoost(true);
        gVar.a(c0746aA);
        gVar.c(true);
    }
}
