package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.dn;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes5.dex */
public class ImprintHandler implements FileLockCallback {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50266a = "ImprintHandler";

    /* renamed from: k, reason: collision with root package name */
    private static Context f50273k = null;

    /* renamed from: l, reason: collision with root package name */
    private static FileLockUtil f50274l = null;

    /* renamed from: m, reason: collision with root package name */
    private static final int f50275m = 0;

    /* renamed from: n, reason: collision with root package name */
    private static final int f50276n = 1;

    /* renamed from: e, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.internal.d f50279e;

    /* renamed from: h, reason: collision with root package name */
    private a f50280h = new a();

    /* renamed from: i, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.d f50281i = null;

    /* renamed from: b, reason: collision with root package name */
    private static Object f50267b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static final String f50268c = be.b().b(be.f48800c);

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f50269d = "pbl0".getBytes();

    /* renamed from: f, reason: collision with root package name */
    private static Map<String, ArrayList<UMImprintChangeCallback>> f50270f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private static Object f50271g = new Object();

    /* renamed from: j, reason: collision with root package name */
    private static ImprintHandler f50272j = null;

    /* renamed from: o, reason: collision with root package name */
    private static Map<String, UMImprintPreProcessCallback> f50277o = new HashMap();

    /* renamed from: p, reason: collision with root package name */
    private static Object f50278p = new Object();

    private ImprintHandler(Context context) {
        f50273k = context.getApplicationContext();
    }

    private static void a(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        synchronized (f50271g) {
            try {
                int i2 = 0;
                if (f50270f.containsKey(str)) {
                    ArrayList<UMImprintChangeCallback> arrayList = f50270f.get(str);
                    int size = arrayList.size();
                    ULog.i("--->>> addCallback: before add: callbacks size is: " + size);
                    while (i2 < size) {
                        if (uMImprintChangeCallback == arrayList.get(i2)) {
                            ULog.i("--->>> addCallback: callback has exist, just exit");
                            return;
                        }
                        i2++;
                    }
                    arrayList.add(uMImprintChangeCallback);
                    ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList.size());
                } else {
                    ArrayList<UMImprintChangeCallback> arrayList2 = new ArrayList<>();
                    int size2 = arrayList2.size();
                    ULog.i("--->>> addCallback: before add: callbacks size is: " + size2);
                    while (i2 < size2) {
                        if (uMImprintChangeCallback == arrayList2.get(i2)) {
                            ULog.i("--->>> addCallback: callback has exist, just exit");
                            return;
                        }
                        i2++;
                    }
                    arrayList2.add(uMImprintChangeCallback);
                    ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList2.size());
                    f50270f.put(str, arrayList2);
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f50273k, th);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009e A[Catch: all -> 0x00a0, DONT_GENERATE, TryCatch #0 {, blocks: (B:25:0x009e, B:24:0x0099, B:8:0x000d, B:10:0x0015, B:12:0x0023, B:14:0x003e, B:16:0x0044, B:19:0x005e, B:20:0x0061, B:22:0x007f), top: B:31:0x000d, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(java.lang.String r5, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 != 0) goto La3
            if (r6 != 0) goto La
            goto La3
        La:
            java.lang.Object r0 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50271g
            monitor-enter(r0)
            java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50270f     // Catch: java.lang.Throwable -> L5c
            boolean r1 = r1.containsKey(r5)     // Catch: java.lang.Throwable -> L5c
            if (r1 == 0) goto L9e
            java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50270f     // Catch: java.lang.Throwable -> L5c
            java.lang.Object r1 = r1.get(r5)     // Catch: java.lang.Throwable -> L5c
            java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch: java.lang.Throwable -> L5c
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L5c
            if (r2 <= 0) goto L9e
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r3.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r4 = "--->>> removeCallback: before remove: callbacks size is: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L5c
            r3.append(r2)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L5c
            com.umeng.commonsdk.statistics.common.ULog.i(r3)     // Catch: java.lang.Throwable -> L5c
            r3 = 0
        L3c:
            if (r3 >= r2) goto L61
            java.lang.Object r4 = r1.get(r3)     // Catch: java.lang.Throwable -> L5c
            if (r6 != r4) goto L5e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r6.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r2 = "--->>> removeCallback: remove index "
            r6.append(r2)     // Catch: java.lang.Throwable -> L5c
            r6.append(r3)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5c
            com.umeng.commonsdk.statistics.common.ULog.i(r6)     // Catch: java.lang.Throwable -> L5c
            r1.remove(r3)     // Catch: java.lang.Throwable -> L5c
            goto L61
        L5c:
            r5 = move-exception
            goto L99
        L5e:
            int r3 = r3 + 1
            goto L3c
        L61:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r6.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r2 = "--->>> removeCallback: after remove: callbacks size is: "
            r6.append(r2)     // Catch: java.lang.Throwable -> L5c
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L5c
            r6.append(r2)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5c
            com.umeng.commonsdk.statistics.common.ULog.i(r6)     // Catch: java.lang.Throwable -> L5c
            int r6 = r1.size()     // Catch: java.lang.Throwable -> L5c
            if (r6 != 0) goto L9e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r6.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r1 = "--->>> removeCallback: remove key from map: key = "
            r6.append(r1)     // Catch: java.lang.Throwable -> L5c
            r6.append(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5c
            com.umeng.commonsdk.statistics.common.ULog.i(r6)     // Catch: java.lang.Throwable -> L5c
            java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> r6 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50270f     // Catch: java.lang.Throwable -> L5c
            r6.remove(r5)     // Catch: java.lang.Throwable -> L5c
            goto L9e
        L99:
            android.content.Context r6 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50273k     // Catch: java.lang.Throwable -> La0
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r6, r5)     // Catch: java.lang.Throwable -> La0
        L9e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La0
            goto La3
        La0:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La0
            throw r5
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.ImprintHandler.b(java.lang.String, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback):void");
    }

    private boolean c(com.umeng.commonsdk.statistics.proto.d dVar) {
        if (!dVar.i().equals(a(dVar))) {
            return false;
        }
        for (com.umeng.commonsdk.statistics.proto.e eVar : dVar.c().values()) {
            String strH = eVar.h();
            if (!TextUtils.isEmpty(strH)) {
                byte[] bArrReverseHexString = DataHelper.reverseHexString(strH);
                byte[] bArrA = a(eVar);
                for (int i2 = 0; i2 < 4; i2++) {
                    if (bArrReverseHexString[i2] != bArrA[i2]) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private com.umeng.commonsdk.statistics.proto.d d(com.umeng.commonsdk.statistics.proto.d dVar) {
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        if (mapC.containsKey(bv.f48905f)) {
            mapC.remove(bv.f48905f);
            this.f50280h.a(bv.f48905f);
            dVar.a(dVar.f());
            dVar.a(a(dVar));
        }
        return dVar;
    }

    private com.umeng.commonsdk.statistics.proto.d e(com.umeng.commonsdk.statistics.proto.d dVar) {
        ArrayList<UMImprintChangeCallback> arrayList;
        boolean z2;
        ArrayList<UMImprintChangeCallback> arrayList2;
        UMImprintPreProcessCallback uMImprintPreProcessCallback;
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        ArrayList arrayList3 = new ArrayList(mapC.size() / 2);
        Iterator<Map.Entry<String, com.umeng.commonsdk.statistics.proto.e>> it = mapC.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> next = it.next();
            if (next.getValue().d()) {
                String key = next.getKey();
                String str = next.getValue().f50430a;
                synchronized (f50278p) {
                    try {
                        z2 = !TextUtils.isEmpty(key) && f50277o.containsKey(key) && (uMImprintPreProcessCallback = f50277o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str);
                    } finally {
                    }
                }
                if (z2) {
                    arrayList3.add(key);
                }
                synchronized (f50271g) {
                    try {
                        if (!TextUtils.isEmpty(key) && f50270f.containsKey(key) && (arrayList2 = f50270f.get(key)) != null) {
                            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                                arrayList2.get(i2).onImprintValueChanged(key, str);
                            }
                        }
                    } finally {
                    }
                }
            } else {
                arrayList3.add(next.getKey());
            }
        }
        int size = arrayList3.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList3.get(i3);
            i3++;
            String str2 = (String) obj;
            synchronized (f50271g) {
                try {
                    if (!TextUtils.isEmpty(str2) && f50270f.containsKey(str2) && (arrayList = f50270f.get(str2)) != null) {
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            arrayList.get(i4).onImprintValueChanged(str2, null);
                        }
                    }
                } finally {
                }
            }
            mapC.remove(str2);
        }
        return dVar;
    }

    public static synchronized ImprintHandler getImprintService(Context context) {
        try {
            if (f50272j == null) {
                f50272j = new ImprintHandler(context);
                f50274l = new FileLockUtil();
                f50274l.doFileOperateion(new File(f50273k.getFilesDir(), f50268c), f50272j, 0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f50272j;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str) {
        return false;
    }

    public void registImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        a(str, uMImprintChangeCallback);
    }

    public void registPreProcessCallback(String str, UMImprintPreProcessCallback uMImprintPreProcessCallback) {
        if (TextUtils.isEmpty(str) || uMImprintPreProcessCallback == null) {
            return;
        }
        synchronized (f50278p) {
            try {
                if (f50277o.containsKey(str)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> key : " + str + " PreProcesser has registed!");
                } else {
                    f50277o.put(str, uMImprintPreProcessCallback);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> registPreProcessCallback: key : " + str + " regist success.");
                }
            } finally {
            }
        }
    }

    public void unregistImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        b(str, uMImprintChangeCallback);
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Map<String, String> f50282a = new HashMap();

        public a() {
        }

        private synchronized void b(com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.commonsdk.statistics.proto.e eVar;
            if (dVar != null) {
                if (dVar.e()) {
                    Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
                    for (String str : mapC.keySet()) {
                        if (!TextUtils.isEmpty(str) && (eVar = mapC.get(str)) != null) {
                            String strB = eVar.b();
                            if (!TextUtils.isEmpty(strB)) {
                                this.f50282a.put(str, strB);
                                String str2 = AnalyticsConstants.OS;
                            }
                        }
                    }
                }
            }
        }

        public synchronized void a(String str) {
            Map<String, String> map = this.f50282a;
            if (map != null && map.size() > 0 && !TextUtils.isEmpty(str) && this.f50282a.containsKey(str)) {
                this.f50282a.remove(str);
            }
        }

        public a(com.umeng.commonsdk.statistics.proto.d dVar) {
            a(dVar);
        }

        public void a(com.umeng.commonsdk.statistics.proto.d dVar) {
            if (dVar == null) {
                return;
            }
            b(dVar);
        }

        public synchronized String a(String str, String str2) {
            if (!TextUtils.isEmpty(str) && this.f50282a.size() > 0) {
                String str3 = this.f50282a.get(str);
                return !TextUtils.isEmpty(str3) ? str3 : str2;
            }
            return str2;
        }
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str, Object obj) {
        return false;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(File file, int i2) {
        if (i2 == 0) {
            f50272j.e();
        } else if (i2 == 1) {
            f50272j.a(file);
        }
        return true;
    }

    public void d() throws IOException {
        if (this.f50281i == null || f50274l == null) {
            return;
        }
        File file = new File(f50273k.getFilesDir(), f50268c);
        if (!file.exists()) {
            try {
                try {
                    file.createNewFile();
                } catch (IOException e2) {
                    UMCrashManager.reportCrash(f50273k, e2);
                }
            } catch (IOException unused) {
                file.createNewFile();
            }
        }
        f50274l.doFileOperateion(file, f50272j, 1);
    }

    public a c() {
        return this.f50280h;
    }

    public void b(com.umeng.commonsdk.statistics.proto.d dVar) {
        com.umeng.commonsdk.statistics.proto.d dVarA;
        boolean zA;
        if (dVar == null) {
            if (AnalyticsConstants.UM_DEBUG) {
                UMRTLog.d(UMRTLog.RTLOG_TAG, "Imprint is null");
                return;
            }
            return;
        }
        if (!c(dVar)) {
            if (AnalyticsConstants.UM_DEBUG) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "Imprint is not valid");
                return;
            }
            return;
        }
        String str = AnalyticsConstants.OS;
        HashMap map = new HashMap();
        synchronized (this) {
            try {
                com.umeng.commonsdk.statistics.proto.d dVar2 = this.f50281i;
                com.umeng.commonsdk.statistics.proto.d dVarD = d(dVar);
                String strI = null;
                String strI2 = dVar2 == null ? null : dVar2.i();
                if (dVar2 == null) {
                    dVarA = e(dVarD);
                } else {
                    dVarA = a(dVar2, dVarD, map);
                }
                this.f50281i = dVarA;
                if (dVarA != null) {
                    strI = dVarA.i();
                }
                zA = a(strI2, strI);
            } finally {
            }
        }
        com.umeng.commonsdk.statistics.proto.d dVar3 = this.f50281i;
        if (dVar3 != null && !zA) {
            this.f50280h.a(dVar3);
            com.umeng.commonsdk.statistics.internal.d dVar4 = this.f50279e;
            if (dVar4 != null) {
                dVar4.onImprintChanged(this.f50280h);
            }
        }
        if (map.size() > 0) {
            synchronized (f50271g) {
                try {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        String key = entry.getKey();
                        String value = entry.getValue();
                        if (!TextUtils.isEmpty(key) && f50270f.containsKey(key)) {
                            ULog.i("--->>> target imprint key is: " + key + "; value is: " + value);
                            ArrayList<UMImprintChangeCallback> arrayList = f50270f.get(key);
                            if (arrayList != null) {
                                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                    arrayList.get(i2).onImprintValueChanged(key, value);
                                }
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (f50278p) {
            try {
                if (f50277o.containsKey(str)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: unregist [" + str + "] success.");
                    f50270f.remove(str);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: can't find [" + str + "], pls regist first.");
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() {
        /*
            r5 = this;
            java.io.File r0 = new java.io.File
            android.content.Context r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50273k
            java.io.File r1 = r1.getFilesDir()
            java.lang.String r2 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50268c
            r0.<init>(r1, r2)
            java.lang.Object r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50267b
            monitor-enter(r1)
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L1a
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L18
            return
        L18:
            r0 = move-exception
            goto L61
        L1a:
            r0 = 0
            android.content.Context r3 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f50273k     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            java.io.FileInputStream r2 = r3.openFileInput(r2)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            byte[] r0 = com.umeng.commonsdk.statistics.common.HelperUtils.readStreamToByteArray(r2)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
        L25:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L18
            goto L38
        L29:
            r0 = move-exception
            goto L5d
        L2b:
            r3 = move-exception
            goto L34
        L2d:
            r2 = move-exception
            r4 = r2
            r2 = r0
            r0 = r4
            goto L5d
        L32:
            r3 = move-exception
            r2 = r0
        L34:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L29
            goto L25
        L38:
            if (r0 == 0) goto L5b
            com.umeng.commonsdk.statistics.proto.d r2 = new com.umeng.commonsdk.statistics.proto.d     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            r2.<init>()     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            com.umeng.analytics.pro.dh r3 = new com.umeng.analytics.pro.dh     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            r3.<init>()     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            r3.a(r2, r0)     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            r5.f50281i = r2     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            com.umeng.commonsdk.statistics.idtracking.ImprintHandler$a r0 = r5.f50280h     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            r0.a(r2)     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            com.umeng.commonsdk.statistics.proto.d r0 = r5.f50281i     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            com.umeng.commonsdk.statistics.proto.d r0 = r5.d(r0)     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            r5.f50281i = r0     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L57
            goto L5b
        L57:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L18
        L5b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L18
            return
        L5d:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L18
            throw r0     // Catch: java.lang.Throwable -> L18
        L61:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L18
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.ImprintHandler.e():void");
    }

    public void a(com.umeng.commonsdk.statistics.internal.d dVar) {
        this.f50279e = dVar;
    }

    public String a(com.umeng.commonsdk.statistics.proto.d dVar) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(dVar.c()).entrySet()) {
            sb.append((String) entry.getKey());
            if (((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).d()) {
                sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).b());
            }
        }
        sb.append(dVar.f50412b);
        return HelperUtils.MD5(sb.toString()).toLowerCase(Locale.US);
    }

    public byte[] a(com.umeng.commonsdk.statistics.proto.e eVar) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(null);
        byteBufferAllocate.putLong(eVar.e());
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArr = f50269d;
        byte[] bArr2 = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr2[i2] = (byte) (bArrArray[i2] ^ bArr[i2]);
        }
        return bArr2;
    }

    public byte[] a() {
        try {
            synchronized (this) {
                try {
                    com.umeng.commonsdk.statistics.proto.d dVar = this.f50281i;
                    if (dVar == null) {
                        return null;
                    }
                    if (dVar.b() <= 0) {
                        return null;
                    }
                    return new dn().a(this.f50281i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            UMCrashManager.reportCrash(f50273k, th2);
            return null;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.d b() {
        return this.f50281i;
    }

    private boolean a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    private com.umeng.commonsdk.statistics.proto.d a(com.umeng.commonsdk.statistics.proto.d dVar, com.umeng.commonsdk.statistics.proto.d dVar2, Map<String, String> map) {
        UMImprintPreProcessCallback uMImprintPreProcessCallback;
        ArrayList<UMImprintChangeCallback> arrayList;
        if (dVar2 == null) {
            return dVar;
        }
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar2.c().entrySet()) {
            int i2 = 0;
            if (entry.getValue().d()) {
                String key = entry.getKey();
                String str = entry.getValue().f50430a;
                synchronized (f50278p) {
                    try {
                        if (!TextUtils.isEmpty(key) && f50277o.containsKey(key) && (uMImprintPreProcessCallback = f50277o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str)) {
                            i2 = 1;
                        }
                    } finally {
                    }
                }
                if (i2 == 0) {
                    mapC.put(entry.getKey(), entry.getValue());
                    synchronized (f50271g) {
                        try {
                            if (!TextUtils.isEmpty(key) && f50270f.containsKey(key) && f50270f.get(key) != null) {
                                map.put(key, str);
                            }
                        } finally {
                        }
                    }
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> merge: [" + key + "] should be ignored.");
                }
            } else {
                String key2 = entry.getKey();
                synchronized (f50271g) {
                    try {
                        if (!TextUtils.isEmpty(key2) && f50270f.containsKey(key2) && (arrayList = f50270f.get(key2)) != null) {
                            while (i2 < arrayList.size()) {
                                arrayList.get(i2).onImprintValueChanged(key2, null);
                                i2++;
                            }
                        }
                    } finally {
                    }
                }
                mapC.remove(key2);
                this.f50280h.a(key2);
            }
        }
        dVar.a(dVar2.f());
        dVar.a(a(dVar));
        return dVar;
    }

    private void a(File file) {
        if (this.f50281i == null) {
            return;
        }
        try {
            synchronized (f50267b) {
                try {
                    byte[] bArrA = new dn().a(this.f50281i);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(bArrA);
                        fileOutputStream.flush();
                    } finally {
                        HelperUtils.safeClose(fileOutputStream);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
