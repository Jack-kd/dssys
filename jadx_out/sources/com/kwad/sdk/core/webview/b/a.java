package com.kwad.sdk.core.webview.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceResponse;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.NetworkMonitor;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.model.SdkConfigData;
import com.kwad.sdk.core.webview.b.b.a;
import com.kwad.sdk.core.webview.b.c.b;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.br;
import com.kwad.sdk.utils.i;
import com.kwad.sdk.utils.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class a {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile a bcC;
    private long alK;
    private Context mContext;
    private volatile boolean mHasInit = false;
    private final List<com.kwad.sdk.h.a.b> bcD = new CopyOnWriteArrayList();
    private final List<String> bcE = new CopyOnWriteArrayList();
    private final List<String> bcF = new CopyOnWriteArrayList();
    private final NetworkMonitor.a bcG = new NetworkMonitor.a() { // from class: com.kwad.sdk.core.webview.b.a.2
        @Override // com.kwad.sdk.core.NetworkMonitor.a
        public final void a(NetworkMonitor.NetworkState networkState) {
            if (networkState == NetworkMonitor.NetworkState.NETWORK_WIFI || networkState == NetworkMonitor.NetworkState.NETWORK_MOBILE) {
                a.this.PI();
            }
        }
    };

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(List<com.kwad.sdk.h.a.b> list) {
        synchronized (this.bcD) {
            try {
                cq(this.mContext);
                for (com.kwad.sdk.h.a.b bVar : this.bcD) {
                    if (!list.contains(bVar)) {
                        y.ad(new File(bVar.bgI));
                        this.bcD.remove(bVar);
                    } else if (y.hH(com.kwad.sdk.core.webview.b.c.a.N(this.mContext, bVar.bgH))) {
                        list.remove(bVar);
                    }
                }
                cp(this.mContext);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static a PH() {
        if (bcC == null) {
            synchronized (a.class) {
                try {
                    if (bcC == null) {
                        bcC = new a();
                    }
                } finally {
                }
            }
        }
        return bcC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public List<com.kwad.sdk.h.a.b> PJ() {
        List<com.kwad.sdk.h.a.a> list;
        List<com.kwad.sdk.h.a.b> list2;
        SdkConfigData sdkConfigDataJS = e.JS();
        if (sdkConfigDataJS == null || (list = sdkConfigDataJS.h5PreloadConfigs) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.kwad.sdk.h.a.a aVar : list) {
            if (aVar != null && (list2 = aVar.bgF) != null) {
                for (com.kwad.sdk.h.a.b bVar : list2) {
                    a(bVar, aVar);
                    if (bVar.isValid()) {
                        arrayList.add(bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private WebResourceResponse ae(String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            b.a aVar = new b.a();
            this.bcE.add(str);
            WebResourceResponse webResourceResponseA = a(str, str2, aVar, false);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (webResourceResponseA != null) {
                c.d("HybridPackageManager", "load success time:" + jCurrentTimeMillis2 + "--url:" + str2);
                com.kwad.sdk.core.webview.b.c.b.a(str2, str, 1, "", jCurrentTimeMillis2);
                return webResourceResponseA;
            }
            c.d("HybridPackageManager", "load fail errorMsg:" + aVar.msg + "-url:" + str2);
            com.kwad.sdk.core.webview.b.c.b.a(str2, str, 2, aVar.msg, jCurrentTimeMillis2);
            return webResourceResponseA;
        } catch (Throwable th) {
            c.printStackTraceOnly(th);
            com.kwad.sdk.core.webview.b.c.b.a(str2, str, 2, "HybridWebViewClient中 Exception " + Log.getStackTraceString(th), System.currentTimeMillis() - jCurrentTimeMillis);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0046 A[Catch: all -> 0x0022, TryCatch #0 {, blocks: (B:7:0x001e, B:18:0x0035, B:19:0x0040, B:21:0x0046, B:23:0x0050, B:24:0x0058, B:26:0x005a, B:27:0x005d, B:17:0x0032), top: B:31:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void cp(android.content.Context r5) {
        /*
            r4 = this;
            java.util.List<com.kwad.sdk.h.a.b> r0 = r4.bcD
            monitor-enter(r0)
            r1 = 0
            java.io.File r5 = com.kwad.sdk.core.webview.b.c.a.ct(r5)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            java.util.List<com.kwad.sdk.h.a.b> r2 = r4.bcD     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            org.json.JSONArray r2 = com.kwad.sdk.utils.ac.Y(r2)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            byte[] r5 = r2.getBytes()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            r3.write(r5)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L27
            com.kwad.sdk.crash.utils.b.closeQuietly(r3)     // Catch: java.lang.Throwable -> L22
            goto L35
        L22:
            r5 = move-exception
            goto L5e
        L24:
            r5 = move-exception
            r1 = r3
            goto L5a
        L27:
            r1 = r3
            goto L2b
        L29:
            r5 = move-exception
            goto L5a
        L2b:
            java.lang.String r5 = "updatePackageIndexFile"
            java.lang.String r2 = "read packageIndex file error"
            com.kwad.sdk.core.d.c.e(r5, r2)     // Catch: java.lang.Throwable -> L29
            com.kwad.sdk.crash.utils.b.closeQuietly(r1)     // Catch: java.lang.Throwable -> L22
        L35:
            java.util.List<java.lang.String> r5 = r4.bcE     // Catch: java.lang.Throwable -> L22
            r5.clear()     // Catch: java.lang.Throwable -> L22
            java.util.List<com.kwad.sdk.h.a.b> r5 = r4.bcD     // Catch: java.lang.Throwable -> L22
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L22
        L40:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L58
            java.lang.Object r1 = r5.next()     // Catch: java.lang.Throwable -> L22
            com.kwad.sdk.h.a.b r1 = (com.kwad.sdk.h.a.b) r1     // Catch: java.lang.Throwable -> L22
            boolean r2 = r1.bgK     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L40
            java.util.List<java.lang.String> r2 = r4.bcE     // Catch: java.lang.Throwable -> L22
            java.lang.String r1 = r1.bgG     // Catch: java.lang.Throwable -> L22
            r2.add(r1)     // Catch: java.lang.Throwable -> L22
            goto L40
        L58:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L22
            return
        L5a:
            com.kwad.sdk.crash.utils.b.closeQuietly(r1)     // Catch: java.lang.Throwable -> L22
            throw r5     // Catch: java.lang.Throwable -> L22
        L5e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L22
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.webview.b.a.cp(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0042 A[Catch: all -> 0x0038, TryCatch #2 {, blocks: (B:19:0x0033, B:26:0x0042, B:27:0x004c, B:28:0x0057, B:30:0x005d, B:32:0x0071, B:33:0x0076, B:35:0x007a, B:36:0x0082, B:38:0x0084, B:39:0x0087, B:24:0x003d), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005d A[Catch: all -> 0x0038, TryCatch #2 {, blocks: (B:19:0x0033, B:26:0x0042, B:27:0x004c, B:28:0x0057, B:30:0x005d, B:32:0x0071, B:33:0x0076, B:35:0x007a, B:36:0x0082, B:38:0x0084, B:39:0x0087, B:24:0x003d), top: B:44:0x0004 }] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void cq(android.content.Context r5) {
        /*
            r4 = this;
            java.util.List<com.kwad.sdk.h.a.b> r0 = r4.bcD
            monitor-enter(r0)
            r1 = 0
            java.io.File r5 = com.kwad.sdk.core.webview.b.c.a.ct(r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            boolean r2 = com.kwad.sdk.utils.y.Q(r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            if (r2 == 0) goto L32
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2b
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2b
            java.lang.String r5 = com.kwad.sdk.crash.utils.h.b(r5)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2b
            com.kwad.sdk.core.webview.b.a$6 r3 = new com.kwad.sdk.core.webview.b.a$6     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2b
            r3.<init>()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2b
            java.util.List r1 = a(r5, r3)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2b
            r5 = r1
            r1 = r2
            goto L33
        L28:
            r5 = move-exception
            r1 = r2
            goto L84
        L2b:
            r5 = move-exception
            goto L3a
        L2d:
            r5 = move-exception
            goto L84
        L2f:
            r5 = move-exception
            r2 = r1
            goto L3a
        L32:
            r5 = r1
        L33:
            com.kwad.sdk.crash.utils.b.closeQuietly(r1)     // Catch: java.lang.Throwable -> L38
            r1 = r5
            goto L40
        L38:
            r5 = move-exception
            goto L88
        L3a:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L28
            com.kwad.sdk.crash.utils.b.closeQuietly(r2)     // Catch: java.lang.Throwable -> L38
        L40:
            if (r1 == 0) goto L4c
            java.util.List<com.kwad.sdk.h.a.b> r5 = r4.bcD     // Catch: java.lang.Throwable -> L38
            r5.clear()     // Catch: java.lang.Throwable -> L38
            java.util.List<com.kwad.sdk.h.a.b> r5 = r4.bcD     // Catch: java.lang.Throwable -> L38
            r5.addAll(r1)     // Catch: java.lang.Throwable -> L38
        L4c:
            java.util.List<java.lang.String> r5 = r4.bcE     // Catch: java.lang.Throwable -> L38
            r5.clear()     // Catch: java.lang.Throwable -> L38
            java.util.List<com.kwad.sdk.h.a.b> r5 = r4.bcD     // Catch: java.lang.Throwable -> L38
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L38
        L57:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Throwable -> L38
            if (r1 == 0) goto L82
            java.lang.Object r1 = r5.next()     // Catch: java.lang.Throwable -> L38
            com.kwad.sdk.h.a.b r1 = (com.kwad.sdk.h.a.b) r1     // Catch: java.lang.Throwable -> L38
            android.content.Context r2 = r4.mContext     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = r1.bgH     // Catch: java.lang.Throwable -> L38
            java.lang.String r2 = com.kwad.sdk.core.webview.b.c.a.N(r2, r3)     // Catch: java.lang.Throwable -> L38
            boolean r2 = com.kwad.sdk.utils.y.hH(r2)     // Catch: java.lang.Throwable -> L38
            if (r2 != 0) goto L76
            java.util.List<com.kwad.sdk.h.a.b> r2 = r4.bcD     // Catch: java.lang.Throwable -> L38
            r2.remove(r1)     // Catch: java.lang.Throwable -> L38
        L76:
            boolean r2 = r1.bgK     // Catch: java.lang.Throwable -> L38
            if (r2 == 0) goto L57
            java.util.List<java.lang.String> r2 = r4.bcE     // Catch: java.lang.Throwable -> L38
            java.lang.String r1 = r1.bgG     // Catch: java.lang.Throwable -> L38
            r2.add(r1)     // Catch: java.lang.Throwable -> L38
            goto L57
        L82:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L38
            return
        L84:
            com.kwad.sdk.crash.utils.b.closeQuietly(r1)     // Catch: java.lang.Throwable -> L38
            throw r5     // Catch: java.lang.Throwable -> L38
        L88:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L38
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.webview.b.a.cq(android.content.Context):void");
    }

    private WebResourceResponse fJ(String str) {
        try {
            b.a aVar = new b.a();
            synchronized (this.bcD) {
                try {
                    Iterator<String> it = this.bcE.iterator();
                    while (it.hasNext()) {
                        WebResourceResponse webResourceResponseA = a(it.next(), str, aVar, true);
                        if (webResourceResponseA != null) {
                            return webResourceResponseA;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    private com.kwad.sdk.h.a.b fK(String str) {
        List<com.kwad.sdk.h.a.b> listPJ = PJ();
        if (listPJ != null && !listPJ.isEmpty()) {
            for (com.kwad.sdk.h.a.b bVar : listPJ) {
                if (br.isEquals(str, bVar.bgG)) {
                    return bVar;
                }
            }
        }
        return null;
    }

    private com.kwad.sdk.h.a.b fL(String str) {
        synchronized (this.bcD) {
            try {
                if (!TextUtils.isEmpty(str) && this.bcD.size() > 0) {
                    for (com.kwad.sdk.h.a.b bVar : this.bcD) {
                        if (TextUtils.equals(str, bVar.bgG)) {
                            return bVar;
                        }
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }

    public final void PI() {
        if (e.Kb()) {
            i.execute(new bi() { // from class: com.kwad.sdk.core.webview.b.a.3
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() {
                    int i2;
                    try {
                        List<com.kwad.sdk.h.a.b> listPJ = a.this.PJ();
                        if (listPJ != null && !listPJ.isEmpty()) {
                            a.this.M(listPJ);
                            for (com.kwad.sdk.h.a.b bVar : listPJ) {
                                if (bVar != null && bVar.packageType == 1 && ((i2 = bVar.loadType) == 1 || (i2 == 2 && aq.isWifiConnected(a.this.mContext)))) {
                                    a.this.a(bVar);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(th);
                    }
                }
            });
        }
    }

    @Nullable
    public final WebResourceResponse ad(String str, String str2) {
        if (!this.mHasInit) {
            return null;
        }
        String strFO = com.kwad.sdk.core.webview.b.c.a.fO(str);
        if (TextUtils.isEmpty(strFO)) {
            return fJ(str);
        }
        com.kwad.sdk.core.webview.b.c.b.d(str2, strFO, str);
        WebResourceResponse webResourceResponseAe = ae(strFO, str);
        com.kwad.sdk.core.webview.b.c.b.e(str2, strFO, str);
        return webResourceResponseAe;
    }

    public final synchronized void init(final Context context) {
        if (!this.mHasInit && context != null) {
            this.mContext = ServiceProvider.Ud();
            this.mHasInit = true;
            i.execute(new bi() { // from class: com.kwad.sdk.core.webview.b.a.1
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() {
                    try {
                        if (e.b(com.kwad.sdk.core.config.c.aOH)) {
                            a.this.alK = System.currentTimeMillis();
                            a.this.cq(context);
                            a.this.PI();
                            NetworkMonitor.getInstance().a(a.this.mContext, a.this.bcG);
                        }
                    } catch (Throwable th) {
                        ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(th);
                    }
                }
            });
        }
    }

    public final long wN() {
        return this.alK;
    }

    private void b(@NonNull final com.kwad.sdk.h.a.b bVar) {
        i.execute(new bi() { // from class: com.kwad.sdk.core.webview.b.a.5
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.h.a.b bVar2 = bVar;
                if (bVar2 != null) {
                    a.this.a(bVar2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull com.kwad.sdk.h.a.b bVar) {
        if (this.bcF.contains(bVar.bgG) || TextUtils.isEmpty(bVar.packageUrl)) {
            return;
        }
        com.kwad.sdk.core.webview.b.b.a.a(bVar, new a.InterfaceC0619a() { // from class: com.kwad.sdk.core.webview.b.a.4
            @Override // com.kwad.sdk.core.webview.b.b.a.InterfaceC0619a
            public final void c(com.kwad.sdk.h.a.b bVar2) {
                a.this.bcF.add(bVar2.bgG);
                c.d("HybridPackageManager", "download onStart: " + bVar2.toString());
            }

            @Override // com.kwad.sdk.core.webview.b.b.a.InterfaceC0619a
            public final void d(com.kwad.sdk.h.a.b bVar2) {
                c.d("HybridPackageManager", "download success: " + bVar2.toString());
                if (com.kwad.sdk.core.webview.b.b.b.a(a.this.mContext, bVar2)) {
                    c.d("HybridPackageManager", "install success: " + bVar2.toString());
                    a.this.bcD.add(bVar2);
                    a aVar = a.this;
                    aVar.cp(aVar.mContext);
                    com.kwad.sdk.core.webview.b.c.b.a(bVar2, 4);
                }
                a.this.bcF.remove(bVar2.bgG);
            }

            @Override // com.kwad.sdk.core.webview.b.b.a.InterfaceC0619a
            public final void e(com.kwad.sdk.h.a.b bVar2) {
                c.d("HybridPackageManager", "download failure: " + bVar2.toString());
                a.this.bcF.remove(bVar2.bgG);
            }
        });
    }

    private WebResourceResponse a(@NonNull String str, String str2, b.a aVar, boolean z2) {
        com.kwad.sdk.h.a.b bVarFL = fL(str);
        if (bVarFL == null) {
            com.kwad.sdk.h.a.b bVarFK = fK(str);
            if (bVarFK == null) {
                aVar.msg = "配置文件没有下发该zip资源";
                return null;
            }
            aVar.msg = "资源未下载:" + bVarFK.loadType;
            b(bVarFK);
            return null;
        }
        return b.a(this.mContext, str2, bVarFL, aVar, z2);
    }

    private void a(com.kwad.sdk.h.a.b bVar, com.kwad.sdk.h.a.a aVar) {
        bVar.bgG = aVar.sceneId;
        if (TextUtils.isEmpty(bVar.packageUrl)) {
            return;
        }
        String strFP = com.kwad.sdk.core.webview.b.c.a.fP(bVar.packageUrl);
        if (TextUtils.isEmpty(strFP)) {
            return;
        }
        bVar.bgH = strFP;
        bVar.bgI = com.kwad.sdk.core.webview.b.c.a.L(this.mContext, strFP);
    }

    @Deprecated
    private static List<com.kwad.sdk.h.a.b> a(String str, @NonNull com.kwad.sdk.core.c<com.kwad.sdk.h.a.b> cVar) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    com.kwad.sdk.h.a.b bVar = (com.kwad.sdk.h.a.b) cVar.IA();
                    bVar.parseJson(jSONObject);
                    arrayList.add(bVar);
                }
            } catch (Throwable unused) {
            }
        }
        return arrayList;
    }
}
