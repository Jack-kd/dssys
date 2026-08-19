package com.smartdigimkt.j;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.byazt.kc.AbsServerManager;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.k.a0;
import com.smartdigimkt.k.b0;
import com.smartdigimkt.k.d0;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.g0;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class u implements b0 {

    /* renamed from: s, reason: collision with root package name */
    public static volatile u f40819s;

    /* renamed from: a, reason: collision with root package name */
    public final Context f40820a;

    /* renamed from: f, reason: collision with root package name */
    public ConcurrentHashMap f40825f;

    /* renamed from: g, reason: collision with root package name */
    public ConcurrentHashMap f40826g;

    /* renamed from: h, reason: collision with root package name */
    public ConcurrentHashMap f40827h;

    /* renamed from: i, reason: collision with root package name */
    public ConcurrentHashMap f40828i;

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f40829j;

    /* renamed from: k, reason: collision with root package name */
    public final CopyOnWriteArrayList f40830k;

    /* renamed from: l, reason: collision with root package name */
    public v f40831l;

    /* renamed from: m, reason: collision with root package name */
    public com.smartdigimkt.o.b f40832m;

    /* renamed from: o, reason: collision with root package name */
    public final com.smartdigimkt.k.o f40834o;

    /* renamed from: p, reason: collision with root package name */
    public final com.smartdigimkt.k.q f40835p;

    /* renamed from: q, reason: collision with root package name */
    public final com.smartdigimkt.k.p f40836q;

    /* renamed from: r, reason: collision with root package name */
    public a0 f40837r;

    /* renamed from: n, reason: collision with root package name */
    public final k f40833n = new k(this);

    /* renamed from: b, reason: collision with root package name */
    public final List f40821b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f40822c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f40823d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentHashMap f40824e = new ConcurrentHashMap();

    public u(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f40820a = applicationContext;
        this.f40834o = new com.smartdigimkt.k.o(applicationContext, com.smartdigimkt.k3.g.a(context));
        this.f40835p = new com.smartdigimkt.k.q();
        this.f40836q = new com.smartdigimkt.k.p(this);
        this.f40829j = new ConcurrentHashMap();
        this.f40830k = new CopyOnWriteArrayList();
        String strB = com.smartdigimkt.n.c.b();
        if (!TextUtils.isEmpty(strB)) {
            File file = new File(strB);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        try {
            m mVar = new m(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            applicationContext.registerReceiver(mVar, intentFilter);
        } catch (Throwable unused) {
        }
    }

    public static void a(u uVar) {
        uVar.getClass();
        try {
            if (uVar.f40831l != null) {
                return;
            }
            uVar.f40831l = new v();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
            uVar.f40820a.registerReceiver(uVar.f40831l, intentFilter);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b() {
        /*
            r9 = this;
            monitor-enter(r9)
            java.util.List r0 = r9.f40821b     // Catch: java.lang.Throwable -> L32
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L32
            if (r0 != 0) goto Lb
            monitor-exit(r9)
            return
        Lb:
            java.util.concurrent.ConcurrentHashMap r0 = r9.f40822c     // Catch: java.lang.Throwable -> L32
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L32
            if (r0 <= 0) goto L34
            java.util.concurrent.ConcurrentHashMap r1 = r9.f40822c     // Catch: java.lang.Throwable -> L32
            java.util.Set r1 = r1.keySet()     // Catch: java.lang.Throwable -> L32
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L32
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L32
            if (r2 == 0) goto L34
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L32
            java.util.concurrent.ConcurrentHashMap r2 = r9.f40822c     // Catch: java.lang.Throwable -> L32
            java.lang.Object r1 = r2.get(r1)     // Catch: java.lang.Throwable -> L32
            com.smartdigimkt.k.r r1 = (com.smartdigimkt.k.r) r1     // Catch: java.lang.Throwable -> L32
            goto L35
        L32:
            r0 = move-exception
            goto L7d
        L34:
            r1 = 0
        L35:
            java.util.List r2 = r9.f40821b     // Catch: java.lang.Throwable -> L32
            r2.size()     // Catch: java.lang.Throwable -> L32
            java.util.List r2 = r9.f40821b     // Catch: java.lang.Throwable -> L32
            r3 = 0
            java.lang.Object r2 = r2.remove(r3)     // Catch: java.lang.Throwable -> L32
            com.smartdigimkt.k.r r2 = (com.smartdigimkt.k.r) r2     // Catch: java.lang.Throwable -> L32
            long r3 = r2.f41185h     // Catch: java.lang.Throwable -> L32
            r5 = 2
            if (r0 < r5) goto L4d
            r9.g(r2)     // Catch: java.lang.Throwable -> L32
            monitor-exit(r9)
            return
        L4d:
            if (r1 == 0) goto L75
            long r5 = r2.f41184g     // Catch: java.lang.Throwable -> L32
            long r5 = r3 - r5
            long r7 = r1.f41185h     // Catch: java.lang.Throwable -> L32
            long r0 = r1.f41184g     // Catch: java.lang.Throwable -> L32
            long r7 = r7 - r0
            r0 = 0
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 != 0) goto L69
            com.smartdigimkt.k.o r0 = r9.f40834o     // Catch: java.lang.Throwable -> L32
            com.smartdigimkt.j.p r1 = new com.smartdigimkt.j.p     // Catch: java.lang.Throwable -> L32
            r1.<init>(r9, r7, r2)     // Catch: java.lang.Throwable -> L32
            r0.a(r2, r1)     // Catch: java.lang.Throwable -> L32
            goto L7b
        L69:
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 > 0) goto L71
            r9.b(r2)     // Catch: java.lang.Throwable -> L32
            goto L7b
        L71:
            r9.g(r2)     // Catch: java.lang.Throwable -> L32
            goto L7b
        L75:
            r9.b(r2)     // Catch: java.lang.Throwable -> L32
            r9.b()     // Catch: java.lang.Throwable -> L32
        L7b:
            monitor-exit(r9)
            return
        L7d:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L32
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.j.u.b():void");
    }

    public final synchronized void c(com.smartdigimkt.k.r rVar) {
        com.smartdigimkt.k.r rVar2;
        com.smartdigimkt.m3.e eVar;
        if (rVar == null) {
            return;
        }
        try {
        } catch (Throwable th) {
            th.getMessage();
        }
        if (a(rVar.f41192o)) {
            com.smartdigimkt.m3.c cVar = rVar.f41187j;
            if (cVar != null) {
                cVar.f41787H = 5;
            }
            rVar.f41196s = com.smartdigimkt.k.c.FINISH;
            int i2 = SDKContext.getInstance().f44123l ? 1 : 2;
            com.smartdigimkt.k.p pVar = this.f40836q;
            if (pVar != null) {
                pVar.a(rVar, i2);
            }
            com.smartdigimkt.k.o oVar = this.f40834o;
            if (oVar != null) {
                oVar.f41163c.b(new com.smartdigimkt.k.e(oVar, rVar));
            }
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.f40822c;
        if (concurrentHashMap != null && concurrentHashMap.containsKey(rVar.f41192o)) {
            com.smartdigimkt.m3.c cVar2 = rVar.f41187j;
            if (cVar2 != null) {
                cVar2.f41787H = 4;
            }
            rVar.f41196s = com.smartdigimkt.k.c.LOADING;
            com.smartdigimkt.b4.e.a().a(new t(this, "正在下载中： " + rVar.f41180c));
            return;
        }
        ConcurrentHashMap concurrentHashMap2 = this.f40823d;
        if (concurrentHashMap2 == null || (rVar2 = (com.smartdigimkt.k.r) concurrentHashMap2.remove(rVar.f41192o)) == null) {
            a(rVar, -1);
            b();
            return;
        }
        com.smartdigimkt.m3.c cVar3 = rVar2.f41187j;
        if (cVar3 != null && (eVar = cVar3.f41832w) != null) {
            long j2 = rVar2.f41171A;
            long j3 = eVar.f41963q;
            if (j3 > 0 && j2 + j3 < System.currentTimeMillis()) {
                com.smartdigimkt.b4.e.a().a(new t(this, "广告已失效，请刷新"));
                com.smartdigimkt.m.j.a(this.f40820a).a(rVar);
                return;
            }
        }
        a(rVar2, 0);
        b();
    }

    public final void d(com.smartdigimkt.k.r rVar) {
        String strA = rVar != null ? rVar.a() : "";
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        String str = rVar.f41178a;
        String str2 = rVar.f41197t;
        String str3 = rVar.f41199v;
        String str4 = rVar.f41198u;
        com.smartdigimkt.m3.c cVar = rVar.f41187j;
        String str5 = cVar instanceof com.smartdigimkt.m3.k ? ((com.smartdigimkt.m3.k) cVar).f42054o0 : "";
        String str6 = rVar.f41183f;
        String str7 = rVar.f41182e;
        int i2 = rVar.f41202y;
        Uri uriForFile = null;
        String str8 = cVar != null ? cVar.f41802W : null;
        String str9 = cVar != null ? cVar.f41803X : null;
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, str3);
        cVar2.f42817a = "1004712";
        cVar2.f42818b = str;
        cVar2.f42811Q = str8;
        cVar2.f42812R = str9;
        cVar2.f42819c = str2;
        cVar2.f42824h = String.valueOf(System.currentTimeMillis());
        cVar2.f42828l = str3;
        cVar2.f42829m = str4;
        cVar2.f42830n = str5;
        cVar2.f42831o = str6;
        cVar2.f42832p = str7;
        cVar2.f42833q = String.valueOf(i2);
        com.smartdigimkt.y3.h.a(cVar2);
        File file = new File(strA);
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.addFlags(1);
            try {
                uriForFile = FileProvider.getUriForFile(this.f40820a, this.f40820a.getPackageName() + ".sdm.fileProvider", file);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
            this.f40820a.startActivity(intent);
            com.smartdigimkt.y3.h.a(rVar.f41178a, rVar.f41183f, rVar.f41179b, 4, (String) null, 0L, file.length(), rVar.f41187j, 0, 0L);
        } catch (Throwable th2) {
            com.smartdigimkt.y3.h.a(rVar.f41178a, rVar.f41183f, rVar.f41179b, 10, th2.getMessage(), 0L, file.length(), rVar.f41187j, 0, 0L);
            th2.getMessage();
        }
    }

    public final void e(com.smartdigimkt.k.r rVar) {
        a0 a0Var = this.f40837r;
        if (a0Var != null) {
            a0Var.onStatusChanged(rVar);
        }
    }

    public final void f(com.smartdigimkt.k.r rVar) {
        com.smartdigimkt.k.o oVar = this.f40834o;
        if (oVar == null || rVar == null) {
            return;
        }
        oVar.f41163c.b(new com.smartdigimkt.k.f(oVar, rVar));
    }

    public final void g(com.smartdigimkt.k.r rVar) {
        try {
            rVar.f41196s = com.smartdigimkt.k.c.IDLE;
            a(rVar, -1);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strA = com.smartdigimkt.n.c.a(str);
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        return new File(strA).exists();
    }

    public static u a(Context context) {
        if (f40819s == null) {
            synchronized (u.class) {
                try {
                    if (f40819s == null) {
                        f40819s = new u(context);
                    }
                } finally {
                }
            }
        }
        return f40819s;
    }

    public final void b(com.smartdigimkt.k.r rVar) {
        if (a(rVar.f41192o)) {
            com.smartdigimkt.m3.c cVar = rVar.f41187j;
            if (cVar != null) {
                cVar.f41787H = 5;
            }
            rVar.f41196s = com.smartdigimkt.k.c.FINISH;
            int i2 = SDKContext.getInstance().f44123l ? 1 : 2;
            com.smartdigimkt.k.p pVar = this.f40836q;
            if (pVar != null) {
                pVar.a(rVar, i2);
            }
            com.smartdigimkt.k.o oVar = this.f40834o;
            if (oVar != null) {
                oVar.f41163c.b(new com.smartdigimkt.k.e(oVar, rVar));
                return;
            }
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.f40822c;
        if (concurrentHashMap == null) {
            return;
        }
        String str = rVar.f41192o;
        if (concurrentHashMap.containsKey(str)) {
            return;
        }
        this.f40822c.put(str, rVar);
        this.f40824e.put(str, new q(this));
        com.smartdigimkt.b4.e.a().a(new r(this, rVar, str));
    }

    public final synchronized void a(com.smartdigimkt.k.r rVar, int i2) {
        if (rVar == null) {
            return;
        }
        try {
            List list = this.f40821b;
            if (list != null) {
                synchronized (list) {
                    int i3 = 0;
                    while (true) {
                        try {
                            if (i3 >= this.f40821b.size()) {
                                i3 = -1;
                                break;
                            }
                            com.smartdigimkt.k.r rVar2 = (com.smartdigimkt.k.r) this.f40821b.get(i3);
                            if (rVar2 != null && rVar2.f41192o.equals(rVar.f41192o)) {
                                break;
                            } else {
                                i3++;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (i3 >= 0) {
                        this.f40821b.remove(i3);
                    }
                    if (i2 >= 0 && i2 <= this.f40821b.size()) {
                        this.f40821b.add(i2, rVar);
                    } else {
                        this.f40821b.add(rVar);
                    }
                }
                com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40820a);
                jVarA.getClass();
                com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.e(jVarA, rVar));
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(com.smartdigimkt.k.r rVar) {
        if (this.f40826g == null) {
            this.f40826g = new ConcurrentHashMap();
        }
        if (TextUtils.isEmpty(rVar.f41182e)) {
            String strA = rVar.a();
            if (!TextUtils.isEmpty(strA)) {
                Context context = this.f40820a;
                File file = new File(strA);
                String str = "";
                if (context != null) {
                    try {
                        str = context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 1).packageName;
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                rVar.f41182e = str;
            }
        }
        this.f40826g.put(rVar.f41182e, rVar);
        com.smartdigimkt.b4.e.a().a(new s(this, rVar));
    }

    public final void c() {
        ConcurrentHashMap concurrentHashMap = this.f40828i;
        if (concurrentHashMap != null) {
            Iterator it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                com.smartdigimkt.k.r rVar = (com.smartdigimkt.k.r) ((Map.Entry) it.next()).getValue();
                rVar.f41174D = 1;
                c(rVar);
                it.remove();
            }
        }
    }

    public final void b(com.smartdigimkt.k.r rVar, int i2) {
        if (this.f40835p != null) {
            g gVar = new g();
            com.smartdigimkt.s3.b bVar = rVar.f41190m;
            if (bVar != null) {
                ((g0) bVar).a(rVar.f41187j, rVar.f41178a, rVar.f41179b, i2 == 2, gVar, rVar.f41171A);
            }
        }
    }

    public final void a(String str, String str2, int i2, boolean z2) {
        com.smartdigimkt.k.r rVar;
        com.smartdigimkt.k.r rVar2;
        com.smartdigimkt.k.r rVar3;
        com.smartdigimkt.k.r rVar4;
        try {
            if (str2.equals("FAIL")) {
                ConcurrentHashMap concurrentHashMap = this.f40828i;
                if (concurrentHashMap == null || (rVar4 = (com.smartdigimkt.k.r) concurrentHashMap.remove(str)) == null) {
                    return;
                }
                c(rVar4);
                return;
            }
            int i3 = 1;
            if (str2.equals("FINISH")) {
                ConcurrentHashMap concurrentHashMap2 = this.f40825f;
                if (concurrentHashMap2 == null || (rVar3 = (com.smartdigimkt.k.r) concurrentHashMap2.get(str)) == null) {
                    return;
                }
                com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40820a);
                jVarA.getClass();
                com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.d(jVarA, rVar3));
                if (!SDKContext.getInstance().f44123l) {
                    i3 = 2;
                }
                com.smartdigimkt.k.p pVar = this.f40836q;
                if (pVar != null) {
                    pVar.a(rVar3, i3);
                    return;
                }
                return;
            }
            if (str2.equals("INSTALLED")) {
                ConcurrentHashMap concurrentHashMap3 = this.f40827h;
                if (concurrentHashMap3 == null || (rVar2 = (com.smartdigimkt.k.r) concurrentHashMap3.get(str)) == null) {
                    return;
                }
                com.smartdigimkt.m.j.a(this.f40820a).a(rVar2);
                b(rVar2, 2);
                return;
            }
            if (str2.equals("LOADING")) {
                ConcurrentHashMap concurrentHashMap4 = this.f40822c;
                com.smartdigimkt.k.r rVar5 = concurrentHashMap4 != null ? (com.smartdigimkt.k.r) concurrentHashMap4.remove(str) : null;
                if (rVar5 == null || rVar5.f41196s != com.smartdigimkt.k.c.LOADING) {
                    return;
                }
                rVar5.toString();
                if (rVar5.f41195r == 2) {
                    return;
                }
                com.smartdigimkt.y3.h.a(rVar5.f41178a, rVar5.f41183f, rVar5.f41179b, 11, (String) null, 0L, 0L, rVar5.f41187j, z2 ? 1 : 2, 0L);
                com.smartdigimkt.o.b bVar = this.f40832m;
                if (bVar != null) {
                    com.smartdigimkt.k.b bVar2 = (com.smartdigimkt.k.b) bVar.f42181a.f39919a.get(rVar5.f41192o);
                    if (bVar2 != null) {
                        ((d0) bVar2).f41135c.f41237i = 4;
                        return;
                    }
                    return;
                }
                return;
            }
            if (str2.equals("PAUSE")) {
                com.smartdigimkt.k.r rVar6 = (com.smartdigimkt.k.r) this.f40823d.get(str);
                if (rVar6 != null) {
                    rVar6.toString();
                    c(rVar6);
                    return;
                }
                return;
            }
            if (str2.equals("IDLE")) {
                this.f40821b.size();
                synchronized (this.f40821b) {
                    try {
                        Iterator it = this.f40821b.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                rVar = null;
                                break;
                            }
                            com.smartdigimkt.k.r rVar7 = (com.smartdigimkt.k.r) it.next();
                            if (rVar7.f41192o.equals(str)) {
                                if (rVar7.f41195r == 2) {
                                    return;
                                } else {
                                    rVar = rVar7;
                                }
                            }
                        }
                        if (rVar != null) {
                            com.smartdigimkt.m3.c cVar = rVar.f41187j;
                            if (cVar != null) {
                                cVar.f41787H = 7;
                            }
                            rVar.f41196s = com.smartdigimkt.k.c.PAUSE;
                            this.f40822c.remove(str);
                            this.f40821b.remove(rVar);
                            this.f40823d.put(rVar.f41192o, rVar);
                            com.smartdigimkt.m.j.a(this.f40820a).a(rVar);
                            if (rVar.f41185h > 0) {
                                com.smartdigimkt.m.j.a(this.f40820a).a(rVar, rVar.f41184g, rVar.f41185h, true);
                                return;
                            } else {
                                com.smartdigimkt.m.j.a(this.f40820a).a(rVar, 0L, 100L, true);
                                return;
                            }
                        }
                        com.smartdigimkt.m.j jVarA2 = com.smartdigimkt.m.j.a(this.f40820a);
                        jVarA2.getClass();
                        if (i2 < 0) {
                            return;
                        }
                        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.h(jVarA2, i2));
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(String str, String str2) {
        com.smartdigimkt.k.r rVar;
        ConcurrentHashMap concurrentHashMap;
        ConcurrentHashMap concurrentHashMap2;
        ConcurrentHashMap concurrentHashMap3;
        try {
            if (str2.equals("FAIL") && (concurrentHashMap3 = this.f40828i) != null && concurrentHashMap3.containsKey(str)) {
                com.smartdigimkt.k.r rVar2 = (com.smartdigimkt.k.r) this.f40828i.get(str);
                String str3 = rVar2.f41180c;
                com.smartdigimkt.m.j.a(this.f40820a).a(rVar2);
                this.f40828i.remove(str);
            }
            if (str2.equals("FINISH") && (concurrentHashMap2 = this.f40825f) != null && concurrentHashMap2.containsKey(str)) {
                com.smartdigimkt.k.r rVar3 = (com.smartdigimkt.k.r) this.f40825f.get(str);
                String str4 = rVar3.f41180c;
                com.smartdigimkt.m.j.a(this.f40820a).a(rVar3);
                this.f40825f.remove(str);
            }
            if (str2.equals("INSTALLED") && (concurrentHashMap = this.f40827h) != null && concurrentHashMap.containsKey(str)) {
                com.smartdigimkt.k.r rVar4 = (com.smartdigimkt.k.r) this.f40827h.get(str);
                String str5 = rVar4.f41180c;
                com.smartdigimkt.m.j.a(this.f40820a).a(rVar4);
                this.f40827h.remove(str);
            }
            if (!str2.equals("PAUSE") || (rVar = (com.smartdigimkt.k.r) this.f40823d.get(str)) == null) {
                return;
            }
            com.smartdigimkt.o.b bVar = this.f40832m;
            if (bVar != null) {
                com.smartdigimkt.k.b bVar2 = (com.smartdigimkt.k.b) bVar.f42181a.f39919a.get(rVar.f41192o);
                if (bVar2 != null) {
                    ((d0) bVar2).f41135c.f41237i = 5;
                }
            }
            this.f40823d.remove(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a() {
        ConcurrentHashMap concurrentHashMap;
        ConcurrentHashMap concurrentHashMap2 = this.f40826g;
        boolean z2 = concurrentHashMap2 == null || concurrentHashMap2.isEmpty();
        if ((!z2 || (concurrentHashMap = this.f40829j) == null || concurrentHashMap.isEmpty()) && z2) {
            try {
                v vVar = this.f40831l;
                if (vVar != null) {
                    this.f40820a.unregisterReceiver(vVar);
                    this.f40831l = null;
                }
            } catch (Throwable unused) {
            }
        }
    }
}
