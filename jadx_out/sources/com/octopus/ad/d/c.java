package com.octopus.ad.d;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.DownloadService;
import com.octopus.ad.a.c;
import com.octopus.ad.internal.activity.DownloadDialogActivity;
import com.octopus.ad.internal.q;
import com.octopus.ad.model.ComplianceInfo;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f34009a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<Context> f34010b;

    /* renamed from: c, reason: collision with root package name */
    private com.octopus.ad.b.a f34011c;

    /* renamed from: d, reason: collision with root package name */
    private int f34012d;

    /* renamed from: e, reason: collision with root package name */
    private String f34013e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f34014f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f34015g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f34016h;

    /* renamed from: i, reason: collision with root package name */
    private b f34017i;

    /* renamed from: j, reason: collision with root package name */
    private c.b f34018j;

    /* renamed from: k, reason: collision with root package name */
    private ComplianceInfo f34019k;

    private c(Context context) {
        this.f34010b = new WeakReference<>(context);
    }

    public static c a(Context context) {
        if (f34009a == null) {
            synchronized (c.class) {
                try {
                    if (f34009a == null) {
                        f34009a = new c(context);
                    }
                } finally {
                }
            }
        }
        return f34009a;
    }

    private boolean g() {
        b bVar = this.f34017i;
        if (bVar == null) {
            return false;
        }
        if (TextUtils.isEmpty(bVar.a())) {
            com.octopus.ad.d.b.f.d("ApkDownloadManager", "apkUrl can not be empty!");
            return false;
        }
        if (TextUtils.isEmpty(this.f34017i.b())) {
            com.octopus.ad.d.b.f.d("ApkDownloadManager", "apkName can not be empty!");
            return false;
        }
        if (this.f34017i.b().endsWith(".apk")) {
            return true;
        }
        com.octopus.ad.d.b.f.d("ApkDownloadManager", "apkName must endsWith .apk!");
        return false;
    }

    public ComplianceInfo b() {
        return this.f34019k;
    }

    public void c() {
        if (q.a().u() || this.f34014f) {
            e();
            return;
        }
        try {
            if (this.f34010b.get() != null) {
                Intent intent = new Intent(this.f34010b.get(), (Class<?>) DownloadDialogActivity.class);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                this.f34010b.get().startActivity(intent);
                com.octopus.ad.b.a aVar = this.f34011c;
                if (aVar != null) {
                    aVar.b();
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void d() {
        com.octopus.ad.b.a aVar = this.f34011c;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void e() {
        if (g()) {
            try {
                if (this.f34010b.get() != null) {
                    this.f34010b.get().startService(new Intent(this.f34010b.get(), (Class<?>) DownloadService.class));
                }
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
    }

    public void f() {
        f34009a = null;
        this.f34010b = null;
    }

    public c b(Context context) {
        this.f34010b = new WeakReference<>(context);
        return this;
    }

    public void b(boolean z2) {
        c.b bVar = this.f34018j;
        if (bVar != null) {
            if (z2) {
                if (this.f34016h) {
                    return;
                } else {
                    this.f34016h = true;
                }
            } else if (this.f34015g) {
                return;
            } else {
                this.f34015g = true;
            }
            List<c.i> listV = bVar.v();
            if (listV != null) {
                for (int i2 = 0; i2 < listV.size(); i2++) {
                    c.i iVar = listV.get(i2);
                    if (iVar != null && !TextUtils.isEmpty(iVar.d())) {
                        String strD = iVar.d();
                        if (strD.contains("track=oct")) {
                            if (z2) {
                                strD = strD + "&opt=5";
                            } else if (this.f34012d != 0) {
                                strD = strD + "&opt=" + this.f34012d;
                            }
                        }
                        new com.octopus.ad.internal.i(strD).b();
                    }
                }
            }
        }
    }

    public c a(boolean z2) {
        this.f34014f = z2;
        return this;
    }

    public b a() {
        return this.f34017i;
    }

    public c a(b bVar) {
        this.f34017i = bVar;
        return this;
    }

    public c a(int i2) {
        this.f34012d = i2;
        return this;
    }

    public c a(c.b bVar) {
        this.f34018j = bVar;
        return this;
    }

    public c a(ComplianceInfo complianceInfo) {
        this.f34019k = complianceInfo;
        return this;
    }

    public c a(com.octopus.ad.b.a aVar) {
        this.f34011c = aVar;
        return this;
    }

    public c a(String str) {
        if (str != null && !str.equals(this.f34013e)) {
            this.f34015g = false;
            this.f34016h = false;
        }
        this.f34013e = str;
        return this;
    }
}
