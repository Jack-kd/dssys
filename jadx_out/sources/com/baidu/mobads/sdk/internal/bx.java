package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.baidu.mobads.sdk.internal.cb;
import com.baidu.mobads.sdk.internal.ck;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.UUID;

/* loaded from: classes2.dex */
public class bx extends Thread {

    /* renamed from: b, reason: collision with root package name */
    private static final String f11253b = "ApkDownloadThread";

    /* renamed from: c, reason: collision with root package name */
    private static final int f11254c = 900000;

    /* renamed from: h, reason: collision with root package name */
    private static volatile bx f11255h;

    /* renamed from: d, reason: collision with root package name */
    private volatile String f11257d;

    /* renamed from: e, reason: collision with root package name */
    private String f11258e;

    /* renamed from: f, reason: collision with root package name */
    private double f11259f;

    /* renamed from: g, reason: collision with root package name */
    private Handler f11260g;

    /* renamed from: i, reason: collision with root package name */
    private final Context f11261i;

    /* renamed from: k, reason: collision with root package name */
    private final bz f11263k;

    /* renamed from: j, reason: collision with root package name */
    private ck f11262j = null;

    /* renamed from: l, reason: collision with root package name */
    private bv f11264l = bv.a();

    /* renamed from: a, reason: collision with root package name */
    ck.a f11256a = new by(this);

    private bx(Context context, bz bzVar, String str, Handler handler) {
        this.f11258e = null;
        this.f11261i = context;
        this.f11263k = bzVar;
        a(bzVar.c());
        this.f11260g = handler;
        this.f11258e = str;
    }

    private boolean b() throws cb.a {
        try {
            try {
                this.f11262j = new ck(this.f11261i, new URL(this.f11257d), this.f11263k, this.f11256a);
            } catch (MalformedURLException unused) {
                this.f11262j = new ck(this.f11261i, this.f11257d, this.f11263k, this.f11256a);
            }
            double d2 = cb.f11294q != null ? cb.f11294q.f11212b : cb.f11293p != null ? cb.f11293p.f11212b > 0.0d ? cb.f11293p.f11212b : cb.f11293p.f11212b : 0.0d;
            this.f11264l.a(f11253b, "isNewApkAvailable: local apk version is: " + d2 + ", remote apk version: " + this.f11263k.b());
            if (d2 > 0.0d) {
                if (this.f11263k.b() <= 0.0d) {
                    this.f11264l.a(f11253b, "remote is null, local apk version is null, do not upgrade");
                    return false;
                }
                this.f11264l.a(f11253b, "remote not null, local apk version is null, force upgrade");
                this.f11259f = this.f11263k.b();
                return true;
            }
            if (this.f11263k.b() > 0.0d) {
                if (this.f11263k.b() <= d2) {
                    return false;
                }
                this.f11259f = this.f11263k.b();
                return true;
            }
            this.f11264l.a(f11253b, "remote apk version is: null, local apk version is: " + d2 + ", do not upgrade");
            return false;
        } catch (Exception e2) {
            String str = "parse apk failed, error:" + e2.toString();
            this.f11264l.a(f11253b, str);
            throw new cb.a(str);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            if (b()) {
                try {
                    a();
                    this.f11264l.a(f11253b, "download apk successfully, downloader exit");
                    f11255h = null;
                } catch (IOException e2) {
                    this.f11264l.a(f11253b, "create File or HTTP Get failed, exception: " + e2.getMessage());
                }
                this.f11264l.a(f11253b, "no newer apk, downloader exit");
                f11255h = null;
            }
        } catch (Throwable unused) {
        }
    }

    public static bx a(Context context, bz bzVar, String str, Handler handler) {
        if (f11255h == null) {
            f11255h = new bx(context, bzVar, str, handler);
        }
        return f11255h;
    }

    public void a(String str) {
        this.f11257d = str;
        interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, bz bzVar, String str2) {
        if (str.equals(cb.f11288k) || str.equals(cb.f11289l)) {
            Message messageObtainMessage = this.f11260g.obtainMessage();
            Bundle bundle = new Bundle();
            bundle.putParcelable(cb.f11290m, bzVar);
            bundle.putString(cb.f11291n, str);
            messageObtainMessage.setData(bundle);
            this.f11260g.sendMessage(messageObtainMessage);
        }
    }

    private String a() throws IOException {
        String str = "__xadsdk__remote__final__" + UUID.randomUUID().toString() + ".jar";
        String str2 = this.f11258e + str;
        File file = new File(str2);
        try {
            file.createNewFile();
            this.f11262j.a(this.f11258e, str);
            return str2;
        } catch (IOException e2) {
            file.delete();
            throw e2;
        }
    }
}
