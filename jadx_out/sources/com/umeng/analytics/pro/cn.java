package com.umeng.analytics.pro;

import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.cj;
import com.umeng.analytics.pro.cm;
import com.umeng.analytics.pro.cx;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class cn implements cm.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f49086a = "newver";

    /* renamed from: j, reason: collision with root package name */
    private static final String f49094j = ".um_ncc_init_beacon_987654321";

    /* renamed from: k, reason: collision with root package name */
    private static final String f49095k = ".um_ncc_local_config";

    /* renamed from: b, reason: collision with root package name */
    private volatile String f49098b = "";

    /* renamed from: c, reason: collision with root package name */
    private static Map<String, ArrayList<co>> f49087c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private static int f49088d = 0;

    /* renamed from: e, reason: collision with root package name */
    private static ArrayList<ArrayList<co>> f49089e = new ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    private static volatile int f49090f = -1;

    /* renamed from: g, reason: collision with root package name */
    private static volatile boolean f49091g = false;

    /* renamed from: h, reason: collision with root package name */
    private static volatile boolean f49092h = false;

    /* renamed from: i, reason: collision with root package name */
    private static final Object f49093i = new Object();

    /* renamed from: l, reason: collision with root package name */
    private static volatile JSONObject f49096l = null;

    /* renamed from: m, reason: collision with root package name */
    private static final Object f49097m = new Object();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f49106a;

        /* renamed from: b, reason: collision with root package name */
        public String f49107b;

        /* renamed from: c, reason: collision with root package name */
        public String f49108c;

        /* renamed from: d, reason: collision with root package name */
        public long f49109d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f49110e;

        public a(String str, String str2, String str3, long j2, boolean z2) {
            this.f49106a = str;
            this.f49107b = str2;
            this.f49108c = str3;
            this.f49109d = j2;
            this.f49110e = z2;
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        public String f49111a;

        /* renamed from: b, reason: collision with root package name */
        public int f49112b;

        /* renamed from: c, reason: collision with root package name */
        public int f49113c;

        public b(String str, int i2, int i3) {
            this.f49111a = str;
            this.f49112b = i2;
            this.f49113c = i3;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private static final cn f49115a = new cn();

        private c() {
        }
    }

    public static cn a() {
        return c.f49115a;
    }

    private void c(Context context) {
        try {
            if (new File(context.getFilesDir(), f49094j).exists()) {
                f49090f = 0;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: Beacon file exists, work mode set to init dispatch");
            } else {
                f49090f = 1;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: Beacon file not exists, work mode set to foreground dispatch (default)");
            }
        } catch (Throwable th) {
            f49090f = 1;
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: Error checking beacon file, work mode set to foreground dispatch (default): " + th.getMessage());
        }
    }

    private void d(Context context) {
        try {
            File file = new File(context.getFilesDir(), f49094j);
            if (file.exists()) {
                return;
            }
            file.createNewFile();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: Beacon file created");
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: Error creating beacon file: " + th.getMessage());
        }
    }

    private void e(Context context) {
        try {
            File file = new File(context.getFilesDir(), f49094j);
            if (file.exists()) {
                file.delete();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: Beacon file deleted");
            }
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: Error deleting beacon file: " + th.getMessage());
        }
    }

    private void f(Context context) {
        ImprintHandler.getImprintService(context).registImprintCallback(f49086a, new UMImprintChangeCallback() { // from class: com.umeng.analytics.pro.cn.4
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                cm.a(UMGlobalContext.getAppContext(), 107, cn.a(), str2);
            }
        });
    }

    public void b() {
        f49091g = true;
        UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: App switched to foreground");
        if (f49090f != 1) {
            if (f49090f == -1) {
                f49090f = 1;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: Work mode set to foreground dispatch");
                return;
            }
            return;
        }
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext == null) {
            synchronized (f49093i) {
                f49092h = false;
            }
            return;
        }
        synchronized (f49097m) {
            if (f49096l == null) {
                synchronized (f49093i) {
                    f49092h = false;
                }
            }
            synchronized (f49093i) {
                if (f49092h) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: Foreground processing is already in progress, ignore new foreground event");
                } else {
                    f49092h = true;
                    cm.a(appContext, 203, a(), f49096l);
                }
            }
        }
    }

    public void a(final Context context) {
        c(context);
        ck.a(new cg() { // from class: com.umeng.analytics.pro.cn.1
            @Override // com.umeng.analytics.pro.cg
            public void a(JSONObject jSONObject) {
                if (jSONObject == null) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: onConfigReady: empty config!");
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: onConfigReady:" + jSONObject);
                cm.a(context, 201, cn.a(), jSONObject, 3000L);
            }
        });
        if (f49090f == 1) {
            ck.a(new cj.a() { // from class: com.umeng.analytics.pro.cn.2
                @Override // com.umeng.analytics.pro.cj.a
                public void a() {
                    cn.this.b();
                }

                @Override // com.umeng.analytics.pro.cj.a
                public void b() {
                    cn.this.c();
                }
            });
        }
    }

    private boolean a(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("code")) {
            return false;
        }
        try {
            if (200 == jSONObject.optInt("code") && jSONObject.has("status")) {
                return jSONObject.has("data");
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private JSONObject d() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ay.b(UMUtils.genUmc(), byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ay.a(byteArray, UMUtils.genSin());
            String str = new String(byteArray);
            byteArrayOutputStream.reset();
            return new JSONObject(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private synchronized void a(Context context, JSONObject jSONObject, String str) {
        if (context == null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: saveConfigFile: context is null!");
            return;
        }
        if (jSONObject == null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: saveConfigFile: config is null!");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: saveConfigFile: version is empty!");
            return;
        }
        long j2 = Long.parseLong(str);
        byte[] bArrA = ay.a(jSONObject.toString().getBytes(), UMConfigure.sAppkey.getBytes());
        if (bArrA != null && bArrA.length > 1) {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(context.getFilesDir(), f49095k));
            try {
                fileOutputStream.write(bArrA);
                fileOutputStream.flush();
                at.a(fileOutputStream);
                a(context, j2);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: saveConfigFile success.");
            } catch (Throwable th) {
                at.a(fileOutputStream);
                throw th;
            }
        }
    }

    public void c() {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: App switched to background");
    }

    public synchronized JSONObject b(Context context) {
        FileInputStream fileInputStreamOpenFileInput;
        JSONObject jSONObject = null;
        if (!new File(context.getFilesDir(), f49095k).exists()) {
            return null;
        }
        try {
            fileInputStreamOpenFileInput = context.openFileInput(f49095k);
        } catch (Throwable unused) {
            fileInputStreamOpenFileInput = null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(new String(ay.a(HelperUtils.readStreamToByteArray(fileInputStreamOpenFileInput), UMConfigure.sAppkey.getBytes())));
            try {
                at.a(fileInputStreamOpenFileInput);
            } catch (Throwable unused2) {
            }
            jSONObject = jSONObject2;
        } catch (Throwable unused3) {
            at.a(fileInputStreamOpenFileInput);
            return jSONObject;
        }
        return jSONObject;
    }

    private co a(cx cxVar, cx.b bVar) {
        int i2;
        long j2;
        if (bVar == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new cq(bVar.d()));
            if (bVar.a() != null && !bVar.a().isEmpty()) {
                arrayList.add(new cw(new HashSet(bVar.a())));
            }
            if (bVar.c() != null && !bVar.c().isEmpty()) {
                arrayList.add(new cr(new HashSet(bVar.c())));
            }
            if (bVar.e() != null && bVar.f() != null) {
                arrayList.add(new cv(bVar.e(), bVar.f()));
            }
            String strA = cxVar.e().a();
            if (!TextUtils.isEmpty(strA)) {
                try {
                    i2 = Integer.parseInt(strA);
                } catch (NumberFormatException unused) {
                    i2 = 0;
                }
                arrayList.add(new ct(i2));
            }
            if (bVar.g() != null) {
                try {
                    j2 = Long.parseLong(bVar.g());
                } catch (NumberFormatException unused2) {
                    j2 = 0;
                }
                arrayList.add(new cs(bVar.h(), j2));
            }
            return new co(bVar.h(), arrayList);
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: buildAction error: " + th.getMessage());
            return null;
        }
    }

    private void b(String str) throws NumberFormatException {
        long j2;
        List<cx.b> listE = null;
        try {
        } catch (Exception unused) {
        }
        synchronized (f49097m) {
            try {
                cx cxVarA = cx.a(f49096l);
                if (!a(cxVarA)) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: updateActionExecTime: parse ConfigData error. abort update.");
                    return;
                }
                listE = cxVarA.e().e();
                if (listE != null) {
                    for (cx.b bVar : listE) {
                        if (str.equals(bVar.h())) {
                            if (bVar.g() != null) {
                                try {
                                    j2 = Long.parseLong(bVar.g());
                                } catch (NumberFormatException unused2) {
                                    j2 = 0;
                                }
                                new cs(str, j2).d();
                                return;
                            }
                            return;
                        }
                    }
                }
            } finally {
            }
        }
    }

    private void a(Context context, long j2) {
        if (j2 > 0) {
            try {
                SharedPreferences sharedPreferencesA = cz.a(context);
                if (sharedPreferencesA != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                    editorEdit.putLong("config_ts", j2);
                    editorEdit.apply();
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: updateVersion : ts = " + j2);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void a(cx.a aVar, ArrayList<co> arrayList) {
        int i2;
        if (arrayList != null && !arrayList.isEmpty()) {
            int i3 = 20;
            if (aVar != null) {
                try {
                    String strB = aVar.b();
                    String strC = aVar.c();
                    try {
                        i2 = Integer.parseInt(strB);
                        try {
                            i3 = Integer.parseInt(strC);
                        } catch (NumberFormatException unused) {
                        }
                    } catch (NumberFormatException unused2) {
                    }
                } catch (Throwable th) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: processActions error: " + th.getMessage());
                    if (f49090f == 1) {
                        synchronized (f49093i) {
                            f49092h = false;
                            return;
                        }
                    }
                    return;
                }
            } else {
                i2 = 1;
            }
            int size = arrayList.size();
            int iCeil = (int) Math.ceil(size / i2);
            if (iCeil > 0) {
                int iMin = Math.min(i2, size);
                ArrayList<co> arrayList2 = new ArrayList<>();
                for (int i4 = 0; i4 < iMin; i4++) {
                    arrayList2.add(arrayList.get(i4));
                }
                if (f49090f == 1) {
                    f49088d = 0;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("batch_");
                int i5 = f49088d + 1;
                f49088d = i5;
                sb.append(i5);
                String string = sb.toString();
                f49087c.put(string, arrayList2);
                a(arrayList, i2, iCeil);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("batchId", string);
                jSONObject.put("appsPerBatch", i2);
                jSONObject.put(cl.f49057l, i3);
                jSONObject.put("processedCount", 0);
                jSONObject.put("currentBatchIndex", 0);
                jSONObject.put("totalBatches", iCeil);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("batchParams", jSONObject);
                jSONObject2.put("currentIndex", 0);
                cm.a(UMGlobalContext.getAppContext(), 204, a(), jSONObject2);
                return;
            }
            if (f49090f == 1) {
                synchronized (f49093i) {
                    f49092h = false;
                }
                return;
            }
            return;
        }
        if (f49090f == 1) {
            synchronized (f49093i) {
                f49092h = false;
            }
        }
    }

    private void a(ArrayList<co> arrayList, int i2, int i3) {
        f49089e.clear();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * i2;
            int iMin = Math.min(i5 + i2, arrayList.size());
            ArrayList<co> arrayList2 = new ArrayList<>();
            while (i5 < iMin) {
                arrayList2.add(arrayList.get(i5));
                i5++;
            }
            f49089e.add(arrayList2);
        }
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: checkFetchCondition: online version = " + str);
        try {
            long j2 = Long.parseLong(str);
            if (!TextUtils.isEmpty(this.f49098b) && this.f49098b.equalsIgnoreCase(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: local cache version == online version, ignore.");
                return;
            }
            SharedPreferences sharedPreferencesA = cz.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                long j3 = sharedPreferencesA.getLong("config_ts", 0L);
                if (j3 != j2) {
                    this.f49098b = str;
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: local version != online version, send FETCH_NEW_CONFIG msg. local version = " + j3);
                    cm.a(UMGlobalContext.getAppContext(), 101, a(), str, 5000L);
                    return;
                }
                this.f49098b = str;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[ncc]: local version == online version, ignore.");
            }
        } catch (Throwable unused) {
        }
    }

    private JSONObject a(String str, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            jSONObject.put("id", "$$_umc_ev1");
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("tt", str);
            jSONObject.put(com.umeng.ccg.a.f49745G, i2);
            jSONObject.put("result", i3);
            JSONObject jSONObjectA = ap.a(UMGlobalContext.getAppContext(), new JSONArray("[\"uapp\"]"), "uapp");
            jSONObjectA.put("wkMode", f49090f);
            JSONObject jSONObjectA2 = ap.a(UMGlobalContext.getAppContext(), jSONObject);
            if (jSONObjectA2 != null) {
                return ap.a(jSONObjectA, jSONObjectA2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public JSONObject a(String str, String str2, String str3, long j2, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", "$$_umc_ev2");
            jSONObject.put("ts", j2);
            jSONObject.put("tt", str);
            jSONObject.put("flag", str2);
            jSONObject.put("ss", str3);
            if (z2) {
                jSONObject.put("cd", 1);
            } else {
                jSONObject.put("cd", 0);
            }
            JSONObject jSONObjectA = ap.a(UMGlobalContext.getAppContext(), new JSONArray(), "");
            JSONObject jSONObjectA2 = ap.a(UMGlobalContext.getAppContext(), jSONObject);
            if (jSONObjectA == null || jSONObjectA2 == null) {
                return null;
            }
            return ap.a(jSONObjectA, jSONObjectA2);
        } catch (Throwable unused) {
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    private void a(Context context, String str, JSONObject jSONObject) {
        Object objA;
        try {
            final String strOptString = jSONObject.has("actionName") ? jSONObject.optString("actionName") : "";
            if (TextUtils.isEmpty(strOptString)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>[ncc]: target is empty, ignore umc_cfg process");
                return;
            }
            final int iOptInt = jSONObject.has(com.umeng.ccg.a.f49745G) ? jSONObject.optInt(com.umeng.ccg.a.f49745G) : 0;
            if (iOptInt == 0) {
                JSONObject jSONObjectD = d();
                if (jSONObjectD == null || (objA = ax.a(jSONObjectD.optString("c"), jSONObjectD.optString("s"), new Class[]{String.class}, context, new Object[]{jSONObjectD.optString("a")})) == null) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString("ss", Base64.encodeToString(ay.a(DeviceConfig.getPackageName(context).getBytes(), UMUtils.genSin()), 0).trim());
                ax.a(jSONObjectD.optString("m"), jSONObjectD.optString("x"), new Class[]{String.class, String.class, String[].class, Bundle.class, Activity.class, ax.a(jSONObjectD.optString(bv.aD)), Handler.class}, objA, new Object[]{strOptString, "u20@24m_PS_DK_ANA", null, bundle, null, new AccountManagerCallback<Bundle>() { // from class: com.umeng.analytics.pro.cn.3
                    @Override // android.accounts.AccountManagerCallback
                    public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                        int i2 = 1;
                        try {
                            accountManagerFuture.getResult();
                            i2 = 0;
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [ncc]: umc_cfg p s!");
                        } catch (Throwable unused) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [ncc]: umc_cfg p f!");
                        }
                        cm.a(UMGlobalContext.getAppContext(), 305, cn.a(), cn.this.new b(strOptString, iOptInt, i2));
                    }
                }, null});
                return;
            }
            JSONObject jSONObjectA = a(strOptString, iOptInt, 0);
            if (jSONObjectA != null) {
                aw.a(new ar(ar.f48703b, jSONObjectA), 0L, TimeUnit.SECONDS);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean a(cx cxVar) {
        if (cxVar.a() == 200 && cxVar.e() != null) {
            if (TextUtils.isEmpty(cxVar.c())) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: invalid config version.");
                return false;
            }
            cx.a aVarE = cxVar.e();
            if (aVarE == null) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: config data is null.");
                return false;
            }
            List<cx.b> listE = aVarE.e();
            if (listE != null && !listE.isEmpty()) {
                return true;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: targets is empty");
            return false;
        }
        UMRTLog.e(UMRTLog.RTLOG_TAG, "[ncc]: invalid config file.");
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:223:0x04fa, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0534, code lost:
    
        throw r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v126 */
    /* JADX WARN: Type inference failed for: r2v127 */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v24, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r2v26, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r2v27, types: [boolean] */
    @Override // com.umeng.analytics.pro.cm.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.Object r22, int r23) {
        /*
            Method dump skipped, instructions count: 1924
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.cn.a(java.lang.Object, int):void");
    }
}
