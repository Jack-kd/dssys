package com.byazt.qx;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.byakv.z.SoftDecTool;
import com.byazt.rz.l;
import com.byazt.wd.a;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import java.io.File;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2229, 28})
/* loaded from: classes3.dex */
public class hp {
    public static hp hp;

    /* renamed from: l, reason: collision with root package name */
    public long f25075l = 0;

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp hpVar = new hp();
                        hp = hpVar;
                        hpVar.f25075l = 0L;
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @DungeonFlag
    private boolean jx() {
        SharedPreferences sharedPreferences = SoftDecTool.getSharedPreferences(SoftDecTool.SP_NAME);
        if (sharedPreferences == null) {
            return false;
        }
        this.f25075l = (System.currentTimeMillis() / 1000) - SoftDecTool.fr();
        int i2 = sharedPreferences.getInt("hit_times", 0);
        if (i2 < 2 && this.f25075l >= 172800) {
            sharedPreferences.edit().putInt("hit_times", 2).apply();
            return l();
        }
        if (i2 != 0 || this.f25075l < 21600) {
            return false;
        }
        sharedPreferences.edit().putInt("hit_times", 1).apply();
        return l();
    }

    private boolean l() {
        return new SecureRandom().nextInt(10) == 1;
    }

    private String l(Context context) {
        if (context == null) {
            return null;
        }
        String packageCodePath = context.getPackageCodePath();
        if (TextUtils.isEmpty(packageCodePath)) {
            return null;
        }
        File file = new File(packageCodePath);
        if (file.exists() && file.canRead()) {
            return packageCodePath;
        }
        return null;
    }

    public synchronized JSONObject hp(Context context, String str) {
        String strL;
        JSONObject jSONObject = new JSONObject();
        try {
            strL = l(context);
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(strL) && jx()) {
            File file = new File(strL);
            if (file.exists()) {
                jSONObject = hp(file, context, str);
            }
            return jSONObject;
        }
        return null;
    }

    @DungeonFlag
    private JSONObject hp(File file, Context context, String str) throws JSONException {
        JSONObject jSONObjectHp = a.hp(file);
        File fileHp = l.hp(context);
        if (fileHp != null) {
            a.hp(jSONObjectHp, "files", hp(!TextUtils.isEmpty(str) ? l.hp(context).getParent() : l.hp(context).getPath()), false);
            File parentFile = fileHp.getParentFile();
            if (parentFile != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(!TextUtils.isEmpty(str) ? parentFile.getParent() : parentFile.getPath());
                sb.append("/shared_prefs");
                List<String> listHp = hp(sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(!TextUtils.isEmpty(str) ? parentFile.getParent() : parentFile.getPath());
                sb2.append("/databases");
                List<String> listHp2 = hp(sb2.toString());
                a.hp(jSONObjectHp, "prefs", listHp, false);
                a.hp(jSONObjectHp, "databases", listHp2, false);
            }
        }
        try {
            JSONObject jSONObjectHp2 = hp(context);
            if (jSONObjectHp2 != null && jSONObjectHp2.length() > 0) {
                jSONObjectHp.put("manifest", jSONObjectHp2);
            }
            jSONObjectHp.put("rt", this.f25075l);
            jSONObjectHp.put("path", str);
        } catch (JSONException unused) {
        }
        return jSONObjectHp;
    }

    private List<String> hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && file2.exists()) {
                    arrayList.add(file2.getName());
                }
            }
        }
        return arrayList;
    }

    private JSONObject hp(Context context) {
        if (context == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            String packageName = context.getPackageName();
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 4239);
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null) {
                jSONObject.put("application_name", applicationInfo.name);
                jSONObject.put("label", packageManager.getApplicationLabel(applicationInfo));
            }
            if (packageInfo != null) {
                ActivityInfo[] activityInfoArr = packageInfo.activities;
                String[] strArr = packageInfo.requestedPermissions;
                ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (activityInfoArr != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        jSONArray.put(activityInfo.name);
                    }
                    jSONObject.put("activities", jSONArray);
                }
                if (strArr != null) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (String str : strArr) {
                        jSONArray2.put(str);
                    }
                    jSONObject.put("permissions", jSONArray2);
                }
                if (activityInfoArr2 != null) {
                    JSONArray jSONArray3 = new JSONArray();
                    for (ActivityInfo activityInfo2 : activityInfoArr2) {
                        jSONArray3.put(activityInfo2.name);
                    }
                    jSONObject.put("receivers", jSONArray3);
                }
                if (serviceInfoArr != null) {
                    JSONArray jSONArray4 = new JSONArray();
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        jSONArray4.put(serviceInfo.name);
                    }
                    jSONObject.put("services", jSONArray4);
                }
                if (providerInfoArr != null) {
                    JSONArray jSONArray5 = new JSONArray();
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        jSONArray5.put(providerInfo.name);
                    }
                    jSONObject.put("providers", jSONArray5);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }
}
