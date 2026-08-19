package com.ubix.ssp.ad.e.s.i;

import android.content.Context;
import android.content.Intent;
import com.ubix.ssp.ad.e.a0.m;
import com.ubix.ssp.ad.e.a0.u;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private Context f47111a;

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.e.s.g.a f47112b;

    /* renamed from: c, reason: collision with root package name */
    private com.ubix.ssp.ad.e.s.g.b f47113c;

    /* renamed from: d, reason: collision with root package name */
    private com.ubix.ssp.ad.e.s.h.a f47114d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f47115e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f47116f;

    public b(Context context, com.ubix.ssp.ad.e.s.g.a aVar, com.ubix.ssp.ad.e.s.h.a aVar2) {
        this(context, aVar, aVar2, true);
    }

    private String a(String str) {
        try {
            Matcher matcher = Pattern.compile("filename=\"(.*?)\"").matcher(str);
            return matcher.find() ? matcher.group(1) : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public com.ubix.ssp.ad.e.s.g.a b() {
        return this.f47112b;
    }

    public com.ubix.ssp.ad.e.s.g.b c() {
        return this.f47113c;
    }

    public int d() {
        com.ubix.ssp.ad.e.s.g.b bVar = this.f47113c;
        if (bVar != null) {
            return bVar.b();
        }
        return 47;
    }

    public boolean e() {
        return this.f47116f;
    }

    public synchronized void f() {
        this.f47115e = true;
    }

    public synchronized void g() {
        this.f47115e = false;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        a();
    }

    public b(Context context, com.ubix.ssp.ad.e.s.g.a aVar, com.ubix.ssp.ad.e.s.h.a aVar2, boolean z2) {
        long jG;
        long jA;
        this.f47111a = context;
        this.f47112b = aVar;
        this.f47114d = aVar2;
        this.f47113c = aVar.b();
        this.f47116f = z2;
        u.b("DownloadTask", "构造函数 -> 初始化 mFileInfo=" + this.f47113c);
        com.ubix.ssp.ad.e.s.g.b bVarB = aVar2.b(aVar.f() + "");
        long j2 = 0;
        if (bVarB != null) {
            jA = bVarB.a();
            jG = bVarB.g();
            if (jA == 0) {
                if (aVar.a().exists()) {
                    j2 = jA;
                    aVar.a().delete();
                    jA = j2;
                }
            } else if (!aVar.a().exists()) {
                aVar2.a(aVar.f() + "");
                jA = 0;
            }
            j2 = jG;
        } else {
            if (aVar.a().exists()) {
                jG = 0;
                aVar.a().delete();
                jA = j2;
                j2 = jG;
            }
            jA = 0;
        }
        this.f47113c.b(j2);
        this.f47113c.a(jA);
        u.b("DownloadTask", "构造函数() -> 初始化完毕  mFileInfo=" + this.f47113c);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02c6 A[Catch: Exception -> 0x02c2, TryCatch #14 {Exception -> 0x02c2, blocks: (B:98:0x02be, B:102:0x02c6, B:104:0x02cb), top: B:112:0x02be }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02cb A[Catch: Exception -> 0x02c2, TRY_LEAVE, TryCatch #14 {Exception -> 0x02c2, blocks: (B:98:0x02be, B:102:0x02c6, B:104:0x02cb), top: B:112:0x02be }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0225 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0199 A[Catch: all -> 0x021a, Exception -> 0x021f, TRY_LEAVE, TryCatch #14 {Exception -> 0x021f, all -> 0x021a, blocks: (B:25:0x0146, B:41:0x018e, B:42:0x0192, B:44:0x0199, B:50:0x01d0, B:37:0x017b), top: B:121:0x0146 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ac A[Catch: Exception -> 0x0249, TRY_ENTER, TryCatch #2 {Exception -> 0x0249, blocks: (B:89:0x02ac, B:91:0x02b1, B:93:0x02b6, B:65:0x023f), top: B:109:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02b1 A[Catch: Exception -> 0x0249, TryCatch #2 {Exception -> 0x0249, blocks: (B:89:0x02ac, B:91:0x02b1, B:93:0x02b6, B:65:0x023f), top: B:109:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02b6 A[Catch: Exception -> 0x0249, TRY_LEAVE, TryCatch #2 {Exception -> 0x0249, blocks: (B:89:0x02ac, B:91:0x02b1, B:93:0x02b6, B:65:0x023f), top: B:109:0x006b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.s.i.b.a():void");
    }

    public void a(int i2) {
        this.f47113c.b(i2);
    }

    public void a(Intent intent) {
        m.a(this.f47111a.getApplicationContext()).b(intent);
    }
}
