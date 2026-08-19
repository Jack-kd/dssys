package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.ad.model.BeiZiLocation;
import com.beizi.fusion.C1150v;
import com.beizi.fusion.ld;
import com.beizi.fusion.model.RequestInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class u2 {

    /* renamed from: c, reason: collision with root package name */
    private static u2 f16433c;

    /* renamed from: d, reason: collision with root package name */
    private static List f16434d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    private boolean f16435a = false;

    /* renamed from: b, reason: collision with root package name */
    private boolean f16436b = false;

    public class a extends r9 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f16437a;

        /* renamed from: com.beizi.fusion.u2$a$a, reason: collision with other inner class name */
        public class C0172a implements InterfaceC1129c0 {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ BeiZiLocation f16439a;

            public C0172a(BeiZiLocation beiZiLocation) {
                this.f16439a = beiZiLocation;
            }

            @Override // com.beizi.fusion.ld
            public double a() {
                try {
                    String latitude = this.f16439a.getLatitude();
                    if (TextUtils.isEmpty(latitude)) {
                        return 0.0d;
                    }
                    return Double.parseDouble(latitude);
                } catch (Exception unused) {
                    return 0.0d;
                }
            }

            @Override // com.beizi.fusion.ld
            public double b() {
                try {
                    String longitude = this.f16439a.getLongitude();
                    if (TextUtils.isEmpty(longitude)) {
                        return 0.0d;
                    }
                    return Double.parseDouble(longitude);
                } catch (Exception unused) {
                    return 0.0d;
                }
            }

            @Override // com.beizi.fusion.ld
            public ld.a c() {
                try {
                    String type = this.f16439a.getType();
                    if (TextUtils.isEmpty(type)) {
                        return null;
                    }
                    int iHashCode = type.hashCode();
                    if (iHashCode == -1736143482) {
                        if (type.equals("WGS-84")) {
                            return ld.a.WGS_84;
                        }
                        return null;
                    }
                    if (iHashCode == 62961147) {
                        if (type.equals("BAIDU")) {
                            return ld.a.BD_09;
                        }
                        return null;
                    }
                    if (iHashCode == 2096794945 && type.equals("GCJ-02")) {
                        return ld.a.GCJ_02;
                    }
                    return null;
                } catch (Exception unused) {
                    return null;
                }
            }

            @Override // com.beizi.fusion.ld
            public long d() {
                try {
                    return this.f16439a.getTime();
                } catch (Exception unused) {
                    return 0L;
                }
            }
        }

        public a(Context context) {
            this.f16437a = context;
        }

        @Override // com.beizi.fusion.r9
        public InterfaceC1129c0 a() {
            BeiZiLocation location;
            return (BeiZis.getCustomController() == null || (location = BeiZis.getCustomController().getLocation()) == null) ? super.a() : new C0172a(location);
        }

        @Override // com.beizi.fusion.r9
        public String b() {
            return BeiZis.getCustomController() != null ? BeiZis.getCustomController().getAndroidId() : super.b();
        }

        @Override // com.beizi.fusion.r9
        public String d() {
            try {
                if (RequestInfo.getInstance(this.f16437a).getDevInfo() != null) {
                    String oaid = RequestInfo.getInstance(this.f16437a).getDevInfo().getOaid();
                    if (!TextUtils.isEmpty(oaid)) {
                        return oaid;
                    }
                    String customOaid = RequestInfo.getInstance(this.f16437a).getCustomOaid();
                    if (!TextUtils.isEmpty(customOaid)) {
                        return customOaid;
                    }
                }
            } catch (Exception unused) {
            }
            return super.d();
        }

        @Override // com.beizi.fusion.r9
        public String f() {
            return this.f16437a != null ? uf.a().b(this.f16437a.getApplicationContext()) : super.f();
        }

        @Override // com.beizi.fusion.r9
        public boolean g() {
            return false;
        }

        @Override // com.beizi.fusion.r9
        public boolean h() {
            return BeiZis.getCustomController() != null ? BeiZis.getCustomController().isCanUseLocation() : super.h();
        }

        @Override // com.beizi.fusion.r9
        public boolean i() {
            return BeiZis.getCustomController() != null ? BeiZis.getCustomController().isCanUseAndroidId() : super.i();
        }

        @Override // com.beizi.fusion.r9
        public boolean j() {
            return !q1.i().v();
        }

        @Override // com.beizi.fusion.r9
        public boolean k() {
            return !dl.b();
        }
    }

    public static synchronized u2 b() {
        try {
            if (f16433c == null) {
                synchronized (u2.class) {
                    f16433c = new u2();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f16433c;
    }

    public void a(Context context, String str, BeiZiInitCallBack beiZiInitCallBack) {
        if (this.f16435a) {
            if (beiZiInitCallBack != null) {
                beiZiInitCallBack.success();
                return;
            }
            return;
        }
        if (beiZiInitCallBack != null) {
            f16434d.add(beiZiInitCallBack);
        }
        if (this.f16436b) {
            return;
        }
        this.f16436b = true;
        C1150v.b bVar = new C1150v.b(str);
        bVar.a(q1.i().f());
        bVar.a(BeiZis.getTransferProtocol());
        bVar.a(new a(context));
        C1128c.a().a(context, bVar.a(), new b());
    }

    public class b implements sc {
        public b() {
        }

        @Override // com.beizi.fusion.sc
        public void a() {
            u2.this.f16436b = false;
            u2.this.f16435a = true;
            synchronized (this) {
                try {
                    if (u2.f16434d != null && !u2.f16434d.isEmpty()) {
                        for (BeiZiInitCallBack beiZiInitCallBack : u2.f16434d) {
                            if (beiZiInitCallBack != null) {
                                beiZiInitCallBack.success();
                            }
                        }
                        u2.f16434d.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.beizi.fusion.sc
        public void b() {
            u2.this.f16436b = false;
            u2.this.f16435a = true;
            synchronized (this) {
                try {
                    if (u2.f16434d != null && !u2.f16434d.isEmpty()) {
                        for (BeiZiInitCallBack beiZiInitCallBack : u2.f16434d) {
                            if (beiZiInitCallBack != null) {
                                beiZiInitCallBack.success();
                            }
                        }
                        u2.f16434d.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.beizi.fusion.sc
        public void c() {
        }

        @Override // com.beizi.fusion.sc
        public void a(int i2, String str) {
            u2.this.f16436b = false;
            synchronized (this) {
                try {
                    if (u2.f16434d != null && !u2.f16434d.isEmpty()) {
                        for (BeiZiInitCallBack beiZiInitCallBack : u2.f16434d) {
                            if (beiZiInitCallBack != null) {
                                beiZiInitCallBack.fail(i2, str);
                            }
                        }
                        u2.f16434d.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
