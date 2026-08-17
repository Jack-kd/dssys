package com.umeng.ccg;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.t;
import com.umeng.analytics.pro.ac;
import com.umeng.analytics.pro.ad;
import com.umeng.analytics.pro.ae;
import com.umeng.analytics.pro.af;
import com.umeng.analytics.pro.ag;
import com.umeng.analytics.pro.ah;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.aj;
import com.umeng.analytics.pro.al;
import com.umeng.analytics.pro.an;
import com.umeng.analytics.pro.ap;
import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.at;
import com.umeng.analytics.pro.av;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bz;
import com.umeng.analytics.pro.o;
import com.umeng.ccg.c;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class d implements c.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f49813a = "iucc";

    /* renamed from: b, reason: collision with root package name */
    private static final String f49814b = be.b().b(be.f48794C);

    /* renamed from: c, reason: collision with root package name */
    private static JSONObject f49815c = null;

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f49816d = {"screen_on", com.umeng.ccg.a.f49753g, com.umeng.ccg.a.f49754h};

    /* renamed from: e, reason: collision with root package name */
    private static final String[] f49817e = {"screen_on", com.umeng.ccg.a.f49753g, com.umeng.ccg.a.f49754h, com.umeng.ccg.a.f49755i, com.umeng.ccg.a.f49760n};

    /* renamed from: f, reason: collision with root package name */
    private static ArrayList<ad> f49818f = null;

    /* renamed from: g, reason: collision with root package name */
    private static ArrayList<ad> f49819g = null;

    /* renamed from: h, reason: collision with root package name */
    private static ArrayList<ad> f49820h = null;

    /* renamed from: i, reason: collision with root package name */
    private static ArrayList<ad> f49821i = null;

    /* renamed from: j, reason: collision with root package name */
    private static ac f49822j = null;

    /* renamed from: m, reason: collision with root package name */
    private static volatile boolean f49823m = false;

    /* renamed from: o, reason: collision with root package name */
    private static f f49824o = new f();

    /* renamed from: k, reason: collision with root package name */
    private volatile String f49825k = "";

    /* renamed from: l, reason: collision with root package name */
    private volatile boolean f49826l = false;

    /* renamed from: n, reason: collision with root package name */
    private Map<String, c> f49827n = new HashMap();

    public class a {

        /* renamed from: b, reason: collision with root package name */
        private long f49830b;

        /* renamed from: c, reason: collision with root package name */
        private long f49831c;

        public a(long j2, long j3) {
            this.f49830b = j2;
            this.f49831c = j3;
        }

        public long a() {
            return this.f49830b;
        }

        public long b() {
            return this.f49831c;
        }
    }

    public static class b extends BroadcastReceiver {
        public long a(ArrayList<ad> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                return 0L;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ad adVar = arrayList.get(i2);
                if (adVar instanceof ag) {
                    return ((ag) adVar).c();
                }
            }
            return 0L;
        }

        public boolean b(ArrayList<ad> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                return false;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (arrayList.get(i2).b()) {
                    return false;
                }
            }
            return true;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (!TextUtils.isEmpty(action) && action.equals("android.intent.action.SCREEN_ON") && d.f49822j != null && (d.f49822j instanceof af)) {
                    if (!b(d.f49821i)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't send INVOKE_APPACT_WHEN_SCREEN_ON msg.");
                    } else {
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 304, d.a(), null, a(d.f49821i) * 1000);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class c {

        /* renamed from: b, reason: collision with root package name */
        private JSONArray f49833b;

        /* renamed from: c, reason: collision with root package name */
        private String f49834c;

        public c(JSONArray jSONArray, String str) {
            this.f49833b = jSONArray;
            this.f49834c = str;
        }

        public JSONArray a() {
            return this.f49833b;
        }

        public String b() {
            return this.f49834c;
        }
    }

    /* renamed from: com.umeng.ccg.d$d, reason: collision with other inner class name */
    public class C0859d {

        /* renamed from: a, reason: collision with root package name */
        public String f49835a;

        /* renamed from: b, reason: collision with root package name */
        public int f49836b;

        /* renamed from: c, reason: collision with root package name */
        public int f49837c;

        public C0859d(String str, int i2, int i3) {
            this.f49835a = str;
            this.f49836b = i2;
            this.f49837c = i3;
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        private static final d f49839a = new d();

        private e() {
        }
    }

    public static class f extends BroadcastReceiver {
        public long a(ArrayList<ad> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                return 0L;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ad adVar = arrayList.get(i2);
                if (adVar instanceof ag) {
                    return ((ag) adVar).c();
                }
            }
            return 0L;
        }

        public boolean b(ArrayList<ad> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                return false;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (arrayList.get(i2).b()) {
                    return false;
                }
            }
            return true;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv intent : ACTION_SCREEN_ON");
                    if (b(d.f49818f)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "report screen_on event.");
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 301, d.a(), null, a(d.f49818f) * 1000);
                    } else {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't report screen_on event.");
                    }
                }
                if (action.equals("android.intent.action.SCREEN_OFF")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv intent : ACTION_SCREEN_OFF");
                    if (b(d.f49819g)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "report screen_off event.");
                        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 302, d.a(), null, a(d.f49819g) * 1000);
                    } else {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't report screen_off event.");
                    }
                }
                if (action.equals("android.intent.action.USER_PRESENT")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "recv intent : ACTION_USER_PRESENT");
                    if (!b(d.f49820h)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "don't report screen_unlock event.");
                        return;
                    }
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "report screen_unlock event.");
                    com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 303, d.a(), null, a(d.f49820h) * 1000);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    private void a(Context context, String str, JSONObject jSONObject) {
    }

    private long b(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("ts")) {
            return 0L;
        }
        try {
            return jSONObject.optLong("ts");
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private boolean h() {
        SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
        if (sharedPreferencesA != null) {
            String string = sharedPreferencesA.getString(av.f48729f, "");
            if (TextUtils.isEmpty(string)) {
                i();
                return false;
            }
            try {
                if (!at.a().keySet().equals(at.a(new JSONObject(string)).keySet())) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    private void i() {
        try {
            SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                sharedPreferencesA.edit().putString(av.f48729f, new JSONObject(at.a()).toString()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean j() {
        try {
            SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                return !TextUtils.isEmpty(sharedPreferencesA.getString(av.f48730g, ""));
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private JSONObject k() {
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

    public static void a(Context context, String str, BroadcastReceiver broadcastReceiver) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(str);
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    private void c(Context context) {
        ImprintHandler.getImprintService(context).registImprintCallback(f49813a, new UMImprintChangeCallback() { // from class: com.umeng.ccg.d.1
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 107, d.a(), str2);
            }
        });
    }

    private Long d(Context context) {
        try {
            SharedPreferences sharedPreferencesA = av.a(context);
            if (sharedPreferencesA != null) {
                return Long.valueOf(sharedPreferencesA.getLong(av.f48727d, 0L));
            }
        } catch (Throwable unused) {
        }
        return 0L;
    }

    private String e(Context context) {
        try {
            SharedPreferences sharedPreferencesA = av.a(context);
            if (sharedPreferencesA != null) {
                return sharedPreferencesA.getString(av.f48728e, "");
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has(com.umeng.ccg.a.f49747a)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.ccg.a.f49747a);
            ac acVarA = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49748b) ? a(com.umeng.ccg.a.f49748b, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49748b)) : null;
            ac acVarA2 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49749c) ? a(com.umeng.ccg.a.f49749c, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49749c)) : null;
            ac acVarA3 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49750d) ? a(com.umeng.ccg.a.f49750d, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49750d)) : null;
            ac acVarA4 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49751e) ? a(com.umeng.ccg.a.f49751e, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49751e)) : null;
            ac acVarA5 = jSONObjectOptJSONObject.has("screen_on") ? a("screen_on", jSONObjectOptJSONObject.optJSONObject("screen_on")) : null;
            ac acVarA6 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49753g) ? a(com.umeng.ccg.a.f49753g, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49753g)) : null;
            ac acVarA7 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49754h) ? a(com.umeng.ccg.a.f49754h, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49754h)) : null;
            ac acVarA8 = jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49760n) ? a(com.umeng.ccg.a.f49760n, jSONObjectOptJSONObject.optJSONObject(com.umeng.ccg.a.f49760n)) : null;
            ArrayList arrayList = new ArrayList();
            if (acVarA != null) {
                arrayList.add(acVarA);
            }
            if (acVarA2 != null) {
                arrayList.add(acVarA2);
            }
            if (acVarA3 != null) {
                arrayList.add(acVarA3);
            }
            if (acVarA4 != null) {
                arrayList.add(acVarA4);
            }
            if (acVarA5 != null) {
                arrayList.add(acVarA5);
            }
            if (acVarA6 != null) {
                arrayList.add(acVarA6);
            }
            if (acVarA7 != null) {
                arrayList.add(acVarA7);
            }
            if (acVarA8 != null) {
                arrayList.add(acVarA8);
            }
            com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 202, a(), arrayList);
        } catch (Throwable unused) {
        }
    }

    public synchronized JSONObject b(Context context) {
        File filesDir;
        String str;
        FileInputStream fileInputStreamOpenFileInput;
        JSONObject jSONObject = null;
        try {
            filesDir = context.getFilesDir();
            str = f49814b;
        } catch (Throwable unused) {
        }
        if (!new File(filesDir, str).exists()) {
            return null;
        }
        try {
            fileInputStreamOpenFileInput = context.openFileInput(str);
        } catch (Throwable unused2) {
            fileInputStreamOpenFileInput = null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(new String(ay.a(HelperUtils.readStreamToByteArray(fileInputStreamOpenFileInput), UMConfigure.sAppkey.getBytes())));
            try {
                at.a(fileInputStreamOpenFileInput);
            } catch (Throwable unused3) {
            }
            jSONObject = jSONObject2;
        } catch (Throwable unused4) {
            at.a(fileInputStreamOpenFileInput);
            return jSONObject;
        }
        return jSONObject;
    }

    public static d a() {
        return e.f49839a;
    }

    public void a(Context context) {
        com.umeng.ccg.c.a(context, 105, a(), null);
    }

    private boolean a(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("code")) {
            return false;
        }
        try {
            if (200 == jSONObject.optInt("code") && jSONObject.has(com.umeng.ccg.a.f49747a)) {
                return jSONObject.has("ts");
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private synchronized void a(Context context, JSONObject jSONObject, String str) {
        long jB;
        byte[] bArrA;
        try {
            jB = b(jSONObject);
            bArrA = ay.a(jSONObject.toString().getBytes(), UMConfigure.sAppkey.getBytes());
        } catch (Throwable unused) {
        }
        if (bArrA != null && bArrA.length > 1) {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(context.getFilesDir(), f49814b));
            try {
                fileOutputStream.write(bArrA);
                fileOutputStream.flush();
                at.a(fileOutputStream);
                a(context, str, jB);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "saveConfigFile success.");
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.ccg.a.f49747a);
                if (jSONObjectOptJSONObject != null) {
                    File file = new File(context.getFilesDir().getAbsolutePath() + File.separator + bz.f48995n);
                    if (jSONObjectOptJSONObject.has(com.umeng.ccg.a.f49758l)) {
                        if (!file.exists()) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "PI: cfg is on, flag not exist, create it.");
                            file.createNewFile();
                        }
                    } else if (file.exists()) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "PI: cfg is off, flag exist, delete it.");
                        file.delete();
                    }
                }
            } catch (Throwable th) {
                at.a(fileOutputStream);
                throw th;
            }
        }
    }

    private void b(String str) {
        String str2 = "interval_" + str;
        SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
        if (sharedPreferencesA != null) {
            sharedPreferencesA.edit().putLong(str2, System.currentTimeMillis()).commit();
        }
    }

    public static boolean b() {
        return f49823m;
    }

    private void b(o.d dVar) {
        JSONObject jSONObjectA;
        if (dVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", "$$_po_resume");
            String strA = dVar.a();
            if (!TextUtils.isEmpty(strA)) {
                jSONObject2.put("sid", strA);
            }
            jSONObject2.put("cls", dVar.b());
            jSONObject2.put("ts", dVar.c());
            jSONObject2.put("dur", dVar.d());
            jSONObject2.put(t.f31269k, dVar.e());
            jSONArray.put(jSONObject2);
            jSONObject.put("ekv", jSONArray);
            JSONObject jSONObjectA2 = ap.a(UMGlobalContext.getAppContext(), new JSONArray(), "");
            if (jSONObjectA2 == null || (jSONObjectA = ap.a(jSONObjectA2, jSONObject)) == null) {
                return;
            }
            aw.a(new ar(ar.f48705d, jSONObjectA), 0L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
        }
    }

    private void a(String str, ad adVar) {
        if ("screen_on".equalsIgnoreCase(str)) {
            if (f49818f == null) {
                f49818f = new ArrayList<>();
            }
            f49818f.add(adVar);
        }
        if (com.umeng.ccg.a.f49753g.equalsIgnoreCase(str)) {
            if (f49819g == null) {
                f49819g = new ArrayList<>();
            }
            f49819g.add(adVar);
        }
        if (com.umeng.ccg.a.f49754h.equalsIgnoreCase(str)) {
            if (f49820h == null) {
                f49820h = new ArrayList<>();
            }
            f49820h.add(adVar);
        }
        if (com.umeng.ccg.a.f49755i.equalsIgnoreCase(str)) {
            if (f49821i == null) {
                f49821i = new ArrayList<>();
            }
            f49821i.add(adVar);
        }
    }

    private ac a(String str, JSONObject jSONObject) {
        ac acVar;
        JSONArray jSONArrayOptJSONArray;
        String str2;
        ac acVar2;
        JSONArray jSONArrayOptJSONArray2;
        if (jSONObject == null) {
            return null;
        }
        try {
            if (!jSONObject.has(com.umeng.ccg.a.f49761o) || (jSONArrayOptJSONArray = jSONObject.optJSONArray(com.umeng.ccg.a.f49761o)) == null || jSONArrayOptJSONArray.length() <= 0) {
                return null;
            }
            JSONObject jSONObject2 = (JSONObject) jSONArrayOptJSONArray.get(0);
            boolean zHas = jSONObject2.has(com.umeng.ccg.a.f49762p);
            boolean zHas2 = jSONObject2.has(com.umeng.ccg.a.f49765s);
            boolean zHas3 = jSONObject2.has(com.umeng.ccg.a.f49766t);
            if (!zHas || !zHas2 || !zHas3) {
                return null;
            }
            int iOptInt = jSONObject2.optInt(com.umeng.ccg.a.f49762p);
            long jOptLong = jSONObject2.optLong(com.umeng.ccg.a.f49765s);
            long jOptLong2 = jSONObject2.optLong(com.umeng.ccg.a.f49766t);
            String strOptString = jSONObject2.optString(com.umeng.ccg.a.f49767u);
            ArrayList arrayList = new ArrayList();
            acVar = null;
            if (!jSONObject2.has(com.umeng.ccg.a.f49763q)) {
                str2 = "sdk";
            } else {
                try {
                    JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray(com.umeng.ccg.a.f49763q);
                    HashSet hashSet = new HashSet();
                    if (jSONArrayOptJSONArray3 == null) {
                        str2 = "sdk";
                    } else {
                        str2 = "sdk";
                        int i2 = 0;
                        for (int length = jSONArrayOptJSONArray3.length(); i2 < length; length = length) {
                            hashSet.add(Integer.valueOf(jSONArrayOptJSONArray3.getInt(i2)));
                            i2++;
                        }
                    }
                    if (hashSet.size() > 0) {
                        an anVar = new an(hashSet);
                        if (Arrays.asList(f49816d).contains(str)) {
                            a(str, anVar);
                        } else {
                            arrayList.add(anVar);
                            if (com.umeng.ccg.a.f49755i.equalsIgnoreCase(str)) {
                                a(str, anVar);
                            }
                        }
                    }
                } catch (Throwable unused) {
                    return acVar;
                }
            }
            if (jSONObject2.has(com.umeng.ccg.a.f49764r)) {
                String strOptString2 = jSONObject2.optString(com.umeng.ccg.a.f49764r);
                if (!TextUtils.isEmpty(strOptString2)) {
                    al alVar = new al(strOptString2);
                    HashSet hashSet2 = new HashSet();
                    for (int i3 = 1; i3 <= 24; i3++) {
                        if (alVar.a(i3)) {
                            hashSet2.add(Integer.valueOf(i3));
                        }
                    }
                    if (hashSet2.size() > 0) {
                        ah ahVar = new ah(hashSet2);
                        if (Arrays.asList(f49816d).contains(str)) {
                            a(str, ahVar);
                        } else {
                            arrayList.add(ahVar);
                        }
                        if (com.umeng.ccg.a.f49755i.equalsIgnoreCase(str)) {
                            a(str, ahVar);
                        }
                    }
                }
            }
            arrayList.add(new aj(iOptInt));
            ai aiVar = new ai(str, jOptLong);
            String[] strArr = f49816d;
            if (Arrays.asList(strArr).contains(str)) {
                a(str, aiVar);
            } else {
                arrayList.add(aiVar);
            }
            if (com.umeng.ccg.a.f49755i.equalsIgnoreCase(str)) {
                a(str, aiVar);
            }
            ag agVar = new ag(jOptLong2);
            if (Arrays.asList(strArr).contains(str)) {
                a(str, agVar);
                arrayList.add(agVar);
            } else {
                arrayList.add(agVar);
            }
            if (com.umeng.ccg.a.f49755i.equalsIgnoreCase(str)) {
                a(str, agVar);
            }
            if (com.umeng.ccg.a.f49751e.equals(str)) {
                acVar2 = new ae(str, arrayList);
            } else if (com.umeng.ccg.a.f49755i.equals(str)) {
                acVar2 = new af(str, arrayList);
            } else {
                acVar2 = new ac(str, arrayList);
            }
            ac acVar3 = acVar2;
            try {
                acVar3.b(str, jSONObject2);
                acVar3.a(strOptString);
                String str3 = "";
                String str4 = str2;
                if (jSONObject.has(str4) && (jSONArrayOptJSONArray2 = jSONObject.optJSONArray(str4)) != null) {
                    Map<String, c> map = this.f49827n;
                    if (map != null && !map.containsKey(str)) {
                        this.f49827n.put(str, new c(new JSONArray(jSONArrayOptJSONArray2.toString()), strOptString));
                    }
                    int length2 = jSONArrayOptJSONArray2.length();
                    for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                        str3 = str3 + jSONArrayOptJSONArray2.getString(i4);
                        if (i4 < length2 - 1) {
                            str3 = str3 + ",";
                        }
                    }
                }
                acVar3.b(str3);
                return acVar3;
            } catch (Throwable unused2) {
                return acVar3;
            }
        } catch (Throwable unused3) {
            acVar = null;
        }
    }

    private void a(Context context, String str, long j2) {
        SharedPreferences sharedPreferencesA;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String[] strArrSplit = str.split("@");
            if (strArrSplit.length != 4 || (sharedPreferencesA = av.a(context)) == null) {
                return;
            }
            long j3 = Long.parseLong(strArrSplit[0]);
            String str2 = strArrSplit[1];
            SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
            editorEdit.putLong("config_ts", j2);
            editorEdit.putLong(av.f48727d, j3);
            editorEdit.putString(av.f48728e, str2).commit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "updateTsS1S2 : ts = " + j2 + "; s1 = " + j3 + "; s2 = " + str2);
        } catch (Throwable unused) {
        }
    }

    private void a(String str) {
        try {
            String[] strArrSplit = str.split("@");
            if (strArrSplit.length != 4) {
                return;
            }
            long j2 = Long.parseLong(strArrSplit[0]);
            String str2 = strArrSplit[1];
            if (!TextUtils.isEmpty(this.f49825k)) {
                String[] strArrSplit2 = this.f49825k.split("@");
                if (strArrSplit2.length == 2) {
                    long j3 = Long.parseLong(strArrSplit2[0]);
                    String str3 = strArrSplit2[1];
                    if (j3 == j2 && str3.equalsIgnoreCase(str2)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "重复的iucc S1 and S2, 忽略本次更新，不发起fetch。");
                        return;
                    }
                }
            }
            SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                if (sharedPreferencesA.getLong("config_ts", 0L) != j2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "local config ts != iuccS1, send FETCH_NEW_CONFIG msg.");
                    this.f49825k = String.valueOf(j2) + "@" + str2;
                    com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 101, a(), str);
                    return;
                }
                d(UMGlobalContext.getAppContext());
                if (e(UMGlobalContext.getAppContext()).equalsIgnoreCase(str2)) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "local S2 != iuccS2, send FETCH_NEW_CONFIG msg.");
                this.f49825k = String.valueOf(j2) + "@" + str2;
                com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 101, a(), str);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(boolean z2) {
        try {
            SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                if (z2) {
                    editorEdit.putString(av.f48730g, "1").commit();
                } else {
                    editorEdit.putString(av.f48730g, "").commit();
                }
            }
        } catch (Throwable unused) {
        }
    }

    private JSONObject a(String str, int i2, int i3) {
        c cVar;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            jSONObject.put("id", "$$_umc_ev1");
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("tt", str);
            jSONObject.put(com.umeng.ccg.a.f49745G, i2);
            jSONObject.put("result", i3);
            if (!this.f49827n.containsKey(com.umeng.ccg.a.f49755i) || (cVar = this.f49827n.get(com.umeng.ccg.a.f49755i)) == null) {
                return null;
            }
            JSONObject jSONObjectA = ap.a(UMGlobalContext.getAppContext(), cVar.a(), cVar.b());
            JSONObject jSONObjectA2 = ap.a(UMGlobalContext.getAppContext(), jSONObject);
            if (jSONObjectA == null || jSONObjectA2 == null) {
                return null;
            }
            return ap.a(jSONObjectA, jSONObjectA2);
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

    private void a(o.d dVar) {
        JSONObject jSONObjectA;
        if (dVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", "$$_po_stop");
            String strA = dVar.a();
            if (!TextUtils.isEmpty(strA)) {
                jSONObject2.put("sid", strA);
            }
            jSONObject2.put("cls", dVar.b());
            jSONObject2.put("ts", dVar.c());
            jSONArray.put(jSONObject2);
            jSONObject.put("ekv", jSONArray);
            JSONObject jSONObjectA2 = ap.a(UMGlobalContext.getAppContext(), new JSONArray(), "");
            if (jSONObjectA2 == null || (jSONObjectA = ap.a(jSONObjectA2, jSONObject)) == null) {
                return;
            }
            aw.a(new ar(ar.f48705d, jSONObjectA), 0L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0793 A[Catch: all -> 0x07e0, TryCatch #1 {all -> 0x07e0, blocks: (B:263:0x0709, B:265:0x0711, B:267:0x0718, B:269:0x071e, B:271:0x0726, B:288:0x0790, B:289:0x0793, B:290:0x0796, B:292:0x079c, B:293:0x07ba, B:272:0x0729, B:274:0x0733, B:276:0x073b, B:278:0x074c, B:280:0x0752, B:282:0x0769, B:284:0x076f, B:285:0x0785, B:286:0x078d), top: B:386:0x0709, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x080d  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x087b A[Catch: all -> 0x087e, PHI: r0 r14
      0x087b: PHI (r0v32 ??) = (r0v154 ??), (r0v155 ??) binds: [B:314:0x0897, B:308:0x0879] A[DONT_GENERATE, DONT_INLINE]
      0x087b: PHI (r14v4 org.json.JSONObject) = (r14v3 org.json.JSONObject), (r14v5 org.json.JSONObject) binds: [B:314:0x0897, B:308:0x0879] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #5 {all -> 0x087e, blocks: (B:307:0x0876, B:309:0x087b, B:313:0x0894), top: B:392:0x085d }] */
    /* JADX WARN: Type inference failed for: r0v154 */
    /* JADX WARN: Type inference failed for: r0v155 */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v32, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v35, types: [org.json.JSONObject] */
    @Override // com.umeng.ccg.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.Object r25, int r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 2808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.ccg.d.a(java.lang.Object, int):void");
    }
}
