package com.smartdigimkt.x;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.smartdigimkt.sdk.api.ISDMAdManager;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.v1.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: t, reason: collision with root package name */
    public static volatile l f45032t;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f45038f;

    /* renamed from: g, reason: collision with root package name */
    public Context f45039g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f45040h;

    /* renamed from: i, reason: collision with root package name */
    public long f45041i;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.a0.h f45042j;

    /* renamed from: k, reason: collision with root package name */
    public com.smartdigimkt.a0.j f45043k;

    /* renamed from: n, reason: collision with root package name */
    public volatile Boolean f45046n;

    /* renamed from: o, reason: collision with root package name */
    public volatile Boolean f45047o;

    /* renamed from: p, reason: collision with root package name */
    public volatile boolean f45048p;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference f45049q;

    /* renamed from: a, reason: collision with root package name */
    public final String f45033a = l.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f45035c = false;

    /* renamed from: e, reason: collision with root package name */
    public final Object f45037e = new Object();

    /* renamed from: l, reason: collision with root package name */
    public boolean f45044l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f45045m = false;

    /* renamed from: r, reason: collision with root package name */
    public final Object f45050r = new Object();

    /* renamed from: b, reason: collision with root package name */
    public boolean f45034b = false;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f45036d = new AtomicBoolean(false);

    /* renamed from: s, reason: collision with root package name */
    public final CopyOnWriteArrayList f45051s = new CopyOnWriteArrayList();

    public l() {
        if (SDKContext.getInstance().j()) {
            com.smartdigimkt.c5.j.a();
        }
    }

    public static l a() {
        if (f45032t == null) {
            synchronized (l.class) {
                try {
                    if (f45032t == null) {
                        f45032t = new l();
                    }
                } finally {
                }
            }
        }
        return f45032t;
    }

    public final void b(boolean z2) {
        if (!this.f45048p) {
            this.f45048p = true;
        }
        this.f45040h = z2;
        if (z2) {
            com.smartdigimkt.a0.h hVar = this.f45042j;
            if (hVar != null) {
                long j2 = this.f45041i;
                long jCurrentTimeMillis = System.currentTimeMillis();
                com.smartdigimkt.a0.k kVar = hVar.f39240a;
                com.smartdigimkt.l3.a aVar = kVar.f39221d;
                int i2 = aVar.f41628b;
                com.smartdigimkt.m3.c cVar = kVar.f39220c;
                com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(i2), null);
                cVar2.f42817a = "1004721";
                cVar2.a(aVar);
                cVar2.f42828l = String.valueOf(j2);
                cVar2.f42829m = String.valueOf(jCurrentTimeMillis);
                if (cVar != null) {
                    if (!TextUtils.isEmpty(cVar.f41794O)) {
                        cVar2.f42830n = cVar.f41794O;
                    }
                    cVar2.f42831o = cVar.f41820k;
                    cVar2.f42832p = cVar.f41806a;
                    if (cVar instanceof com.smartdigimkt.m3.b) {
                        cVar2.f42833q = ((com.smartdigimkt.m3.b) cVar).f42054o0;
                    }
                }
                cVar2.f42834r = String.valueOf(i2);
                com.smartdigimkt.y3.h.a(cVar2);
                this.f45042j = null;
            }
        } else {
            this.f45041i = System.currentTimeMillis();
        }
        if (this.f45051s.isEmpty()) {
            return;
        }
        Iterator it = this.f45051s.iterator();
        while (it.hasNext()) {
            w wVar = (w) it.next();
            if (z2) {
                wVar.f44634a.a(129);
            } else {
                wVar.f44634a.a(MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(30:113|3|(1:5)|8|(1:10)(1:11)|12|(3:106|13|(3:19|(5:21|102|22|(1:120)(2:26|118)|27)|117))|28|29|(2:115|30)|(1:32)(7:33|(0)(6:111|36|(1:38)(1:39)|110|40|(4:44|(1:46)|49|(2:(5:53|54|(3:104|56|122)(1:123)|57|51)|121)))|59|60|108|(1:62)(1:63)|(11:69|72|(1:74)|75|100|(1:77)(1:78)|(2:84|85)(1:83)|86|(1:88)|89|90)(12:68|71|72|(0)|75|100|(0)(0)|(1:80)(3:81|84|85)|86|(0)|89|90))|35|40|(5:42|44|(0)|49|(0))|59|60|108|(0)(0)|(1:65)(12:66|69|72|(0)|75|100|(0)(0)|(0)(0)|86|(0)|89|90)|71|72|(0)|75|100|(0)(0)|(0)(0)|86|(0)|89|90) */
    /* JADX WARN: Can't wrap try/catch for region: R(32:113|3|(1:5)|8|(1:10)(1:11)|12|106|13|(3:19|(5:21|102|22|(1:120)(2:26|118)|27)|117)|28|29|(2:115|30)|(1:32)(7:33|(0)(6:111|36|(1:38)(1:39)|110|40|(4:44|(1:46)|49|(2:(5:53|54|(3:104|56|122)(1:123)|57|51)|121)))|59|60|108|(1:62)(1:63)|(11:69|72|(1:74)|75|100|(1:77)(1:78)|(2:84|85)(1:83)|86|(1:88)|89|90)(12:68|71|72|(0)|75|100|(0)(0)|(1:80)(3:81|84|85)|86|(0)|89|90))|35|40|(5:42|44|(0)|49|(0))|59|60|108|(0)(0)|(1:65)(12:66|69|72|(0)|75|100|(0)(0)|(0)(0)|86|(0)|89|90)|71|72|(0)|75|100|(0)(0)|(0)(0)|86|(0)|89|90) */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:30:0x009d, B:44:0x00d9, B:46:0x00e9, B:49:0x00ef, B:51:0x00f9, B:53:0x00ff, B:33:0x00b0), top: B:115:0x009d, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f9 A[Catch: all -> 0x00ed, LOOP:1: B:51:0x00f9->B:57:0x0115, LOOP_START, PHI: r10
      0x00f9: PHI (r10v9 int) = (r10v3 int), (r10v10 int) binds: [B:50:0x00f7, B:57:0x0115] A[DONT_GENERATE, DONT_INLINE], TryCatch #7 {all -> 0x00ed, blocks: (B:30:0x009d, B:44:0x00d9, B:46:0x00e9, B:49:0x00ef, B:51:0x00f9, B:53:0x00ff, B:33:0x00b0), top: B:115:0x009d, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0136 A[Catch: all -> 0x016a, TRY_ENTER, TryCatch #4 {all -> 0x016a, blocks: (B:62:0x0136, B:66:0x0146, B:69:0x014d, B:63:0x013b), top: B:108:0x0134 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013b A[Catch: all -> 0x016a, TryCatch #4 {all -> 0x016a, blocks: (B:62:0x0136, B:66:0x0146, B:69:0x014d, B:63:0x013b), top: B:108:0x0134 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016f A[Catch: all -> 0x000c, TryCatch #6 {all -> 0x000c, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:12:0x0054, B:28:0x0095, B:59:0x011b, B:72:0x016b, B:74:0x016f, B:75:0x017b, B:86:0x01c2, B:88:0x01c6, B:89:0x01d2, B:58:0x0118, B:11:0x0046, B:30:0x009d, B:44:0x00d9, B:46:0x00e9, B:49:0x00ef, B:51:0x00f9, B:53:0x00ff, B:33:0x00b0), top: B:113:0x0001, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x018e A[Catch: all -> 0x01c2, TRY_ENTER, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018e, B:81:0x019e, B:84:0x01a5, B:78:0x0193), top: B:100:0x018c }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0193 A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018e, B:81:0x019e, B:84:0x01a5, B:78:0x0193), top: B:100:0x018c }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x019d A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x019e A[Catch: all -> 0x01c2, TryCatch #0 {all -> 0x01c2, blocks: (B:77:0x018e, B:81:0x019e, B:84:0x01a5, B:78:0x0193), top: B:100:0x018c }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c6 A[Catch: all -> 0x000c, TryCatch #6 {all -> 0x000c, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:12:0x0054, B:28:0x0095, B:59:0x011b, B:72:0x016b, B:74:0x016f, B:75:0x017b, B:86:0x01c2, B:88:0x01c6, B:89:0x01d2, B:58:0x0118, B:11:0x0046, B:30:0x009d, B:44:0x00d9, B:46:0x00e9, B:49:0x00ef, B:51:0x00f9, B:53:0x00ff, B:33:0x00b0), top: B:113:0x0001, inners: #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(android.content.Context r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.x.l.a(android.content.Context, boolean):void");
    }

    public final boolean b() {
        if (this.f45047o != null && !this.f45047o.booleanValue()) {
            return true;
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA.f39371f) {
            return true;
        }
        this.f45047o = Boolean.valueOf(aVarA.f39359U == 1);
        if (!this.f45047o.booleanValue()) {
            return true;
        }
        if (this.f45046n == null) {
            if (this.f45047o == null) {
                com.smartdigimkt.a5.a aVarA2 = com.smartdigimkt.z4.d.c().a();
                if (!aVarA2.f39371f) {
                    this.f45047o = Boolean.valueOf(aVarA2.f39359U == 1);
                }
            }
            if (this.f45047o != null && this.f45047o.booleanValue()) {
                com.smartdigimkt.b4.e.a().a(new j(this));
            }
        }
        if (this.f45046n != null) {
            return this.f45046n.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.x.k r8) {
        /*
            r7 = this;
            boolean r0 = r7.f45034b
            if (r0 == 0) goto Lc
            if (r8 == 0) goto Lb
            com.smartdigimkt.d4.h r8 = (com.smartdigimkt.d4.h) r8
            r8.a()
        Lb:
            return
        Lc:
            java.lang.Object r1 = r7.f45037e
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicBoolean r0 = r7.f45036d     // Catch: java.lang.Throwable -> L1f
            boolean r0 = r0.get()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L25
            if (r8 == 0) goto L23
            java.util.ArrayList r0 = r7.f45038f     // Catch: java.lang.Throwable -> L1f
            r0.add(r8)     // Catch: java.lang.Throwable -> L1f
            goto L23
        L1f:
            r0 = move-exception
            r8 = r0
            goto Ldd
        L23:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            return
        L25:
            java.util.ArrayList r0 = r7.f45038f     // Catch: java.lang.Throwable -> L1f
            if (r0 != 0) goto L30
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L1f
            r0.<init>()     // Catch: java.lang.Throwable -> L1f
            r7.f45038f = r0     // Catch: java.lang.Throwable -> L1f
        L30:
            java.util.concurrent.atomic.AtomicBoolean r0 = r7.f45036d     // Catch: java.lang.Throwable -> L1f
            r2 = 1
            r0.set(r2)     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            if (r8 == 0) goto L3e
            java.util.ArrayList r0 = r7.f45038f
            r0.add(r8)
        L3e:
            boolean r8 = r7.f45035c
            if (r8 == 0) goto L43
            goto L5e
        L43:
            java.lang.Class<com.smartdigimkt.sdk.api.business.omsdk.IOmsdkHandler> r8 = com.smartdigimkt.sdk.api.business.omsdk.IOmsdkHandler.class
            java.lang.String r0 = "com.smartdigimkt.basead.oversea_plugin.bridge.OmsdkHandler"
            java.lang.Object r8 = com.smartdigimkt.c5.k.a(r8, r0)     // Catch: java.lang.Throwable -> L55
            com.smartdigimkt.sdk.api.business.omsdk.IOmsdkHandler r8 = (com.smartdigimkt.sdk.api.business.omsdk.IOmsdkHandler) r8     // Catch: java.lang.Throwable -> L55
            if (r8 == 0) goto L55
            com.smartdigimkt.u1.d r0 = com.smartdigimkt.u1.d.a()     // Catch: java.lang.Throwable -> L55
            r0.f44391a = r8     // Catch: java.lang.Throwable -> L55
        L55:
            com.smartdigimkt.sdk.core.SDKContext r8 = com.smartdigimkt.sdk.core.SDKContext.getInstance()
            r8.j()
            r7.f45035c = r2
        L5e:
            android.content.Context r8 = r7.f45039g
            java.lang.String r0 = "sdm_adx_rp_sdk"
            java.lang.String r1 = "adx_first_init"
            if (r8 != 0) goto L67
            goto L83
        L67:
            com.smartdigimkt.v4.c r3 = com.smartdigimkt.v4.c.a()     // Catch: java.lang.Throwable -> L83
            com.smartdigimkt.v4.a r8 = r3.a(r8, r0)     // Catch: java.lang.Throwable -> L83
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L83
            java.lang.Object r8 = r8.b(r0, r1)     // Catch: java.lang.Throwable -> L83
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L83
            if (r8 == 0) goto L83
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L83
            if (r8 != 0) goto L83
            r7.a(r2)
            goto Ld0
        L83:
            android.content.Context r8 = r7.f45039g
            java.lang.String r0 = "sdm_adx_rp_sdk"
            java.lang.String r1 = "adx_first_init"
            if (r8 != 0) goto L8c
            goto L99
        L8c:
            com.smartdigimkt.v4.c r2 = com.smartdigimkt.v4.c.a()     // Catch: java.lang.Throwable -> L99
            com.smartdigimkt.v4.a r8 = r2.a(r8, r0)     // Catch: java.lang.Throwable -> L99
            java.lang.Boolean r0 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L99
            r8.a(r0, r1)     // Catch: java.lang.Throwable -> L99
        L99:
            com.smartdigimkt.b4.e r8 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.x.e r0 = new com.smartdigimkt.x.e
            r0.<init>(r7)
            r1 = 300(0x12c, double:1.48E-321)
            r3 = 2
            r8.a(r0, r1, r3)
            com.smartdigimkt.h3.m r8 = com.smartdigimkt.h3.m.b()
            com.smartdigimkt.x.f r0 = new com.smartdigimkt.x.f
            r0.<init>(r7)
            r8.a(r0)
            com.smartdigimkt.z4.d r8 = com.smartdigimkt.z4.d.c()
            com.smartdigimkt.a5.a r8 = r8.a()
            if (r8 == 0) goto Ld0
            boolean r8 = r8.f39371f
            if (r8 == 0) goto Ld0
            com.smartdigimkt.h3.m r0 = com.smartdigimkt.h3.m.b()
            java.lang.String r1 = "f4KCKTZGm6zHJpxq26rq24wXmEzGmEoGJWK6KTZGm6zHJ8VV285726wpJ8btYWwHmECPKGtGI4K1K8vs23wD5EwHlEwpJpMV28xa26xa24KPKTItKTZGm6zHJpvq28HamE7A2EkV5ykq2GKPKThXKTZGm6zHJpvUJ8bAlyrs9EOA5E5TJ8bQlEaRKGtGIBmGLGrT26XAYQIAmEw7Y8zVlWwal6IAmu5R2EFA2eRXl3KPKThXvGK1K8vs23wGmER753wUlEb4m6qG2QSGJWKULWK1K8vs23wi5EbVY6qs53wAlEra2ehGJWKCvnFGLGrT26XAm8bVlyFAY6kqY8vZm8zDJ8CV5eFGJWKCI3K1K8vs23wRl4wq28x426R7J7bP9uMqfF5t9ezAl3KPKThDKTZGm6zHJpvH9ECRJ85Vl8aq96k4KGtGIT7GLGrT26XAY6bA9Qkq93wHlERX5EbAJpxq96ks5uxAluYGJWK4KTZGm6zHJpxHmECPJp5VY8kPluvUKGtGIBF4KTZGm6zHJ8bP9Erqm8hA56R4lECRYQIGJWKXKTZG2EFAlECRKGtGL3K1K8vs23wXmEzGmEoA2eR6l3KPKTI4KTZGm6zHJpbamuriJ8r42Q5UluKGJWKaIWK1K8vs23ww2Qki53wt9ezAl3KPKTFGLGrT5yrVYWwq28x426R7JplVluYGJWKCv4K1K8vs23wqm6qVlulsJplVYyvZ2QdGJWKCIWK1K8vs23wXmEzGmEoA2eRXluxq24KPKTKaKTZGm6zHJpvV28hA56kVm8oGJWKUv3K1K8vs23wq5uxs28b693wH9EwV2EbtKGtGv4K1K8vs23wkOXasm8RPl3KPKTKUL3K1K8vs23wD9Eaq2ebwm3wX9EwpJ8bAlyrs9EOGJWKavWK1K8vs23wD9Ewp9EDAfeqUKGtGvBYGLGrT26XA5QkGm3KPKTOtKTZG5ymAlebA2Ebi53wG9ECVKGtGvUKGLGrT26XA5ekAm6kA5WwCYECV58FGJWKUvGK1K8vs23wXmEzGmEoA9ExPlElVY6SGJWKDI3K1K8vs23wXmEzGmEoA5yrVYWKPKTIwKTZGm6zHJ8HHfyIAY8kqlek4KGtGIBIUKTZGm6zHJ8x4mE5s2Gw4lEb7KGtGvUFGLGrT26XA5ekAm6kA5WwH23rz"
            long r3 = com.smartdigimkt.c3.g.f39679g
            r5 = 1
            r6 = 1
            r2 = 1
            r0.a(r1, r2, r3, r5, r6)
        Ld0:
            com.smartdigimkt.b4.e r8 = com.smartdigimkt.b4.e.a()
            com.smartdigimkt.x.i r0 = new com.smartdigimkt.x.i
            r0.<init>(r7)
            r8.c(r0)
            return
        Ldd:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.x.l.a(com.smartdigimkt.x.k):void");
    }

    public final void a(boolean z2) {
        synchronized (this.f45037e) {
            if (z2) {
                try {
                    this.f45034b = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            int size = this.f45038f.size();
            for (int i2 = 0; i2 < size; i2++) {
                k kVar = (k) this.f45038f.get(i2);
                if (kVar != null) {
                    if (z2) {
                        ((com.smartdigimkt.d4.h) kVar).a();
                    } else {
                        ISDMAdManager.BidTokenCallBack bidTokenCallBack = ((com.smartdigimkt.d4.h) kVar).f39904a;
                        if (bidTokenCallBack != null) {
                            bidTokenCallBack.onComplete(null);
                        }
                    }
                }
            }
            this.f45038f.clear();
            this.f45036d.set(false);
        }
    }

    public final void a(Activity activity) {
        synchronized (this.f45050r) {
            this.f45049q = new WeakReference(activity);
        }
    }

    public static JSONArray a(Map map) {
        String str = (String) com.smartdigimkt.c5.k.a(map, "nv_tmpl_id", "[\"1\",\"2\",\"3\",\"4\",\"5\"]");
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() > 0) {
                    return jSONArray;
                }
            } catch (Throwable unused) {
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put("1");
        jSONArray2.put("2");
        jSONArray2.put("3");
        jSONArray2.put("4");
        jSONArray2.put("5");
        return jSONArray2;
    }
}
