package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import org.json.JSONArray;

/* loaded from: classes4.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    private Context f31329a;

    /* renamed from: b, reason: collision with root package name */
    private int f31330b;

    /* renamed from: c, reason: collision with root package name */
    private h f31331c;

    public w(Context context) {
        this.f31330b = 0;
        this.f31329a = context;
        h hVarA = h.a(context, "re_po_rt");
        this.f31331c = hVarA;
        if (hVarA != null) {
            this.f31330b = hVarA.b(dd.f31123r, 0);
        }
    }

    public JSONArray a(int i2) {
        try {
            new com.kuaishou.weapon.p0.jni.A(this.f31329a, i2);
            JSONArray jsonObject = com.kuaishou.weapon.p0.jni.A.getJsonObject();
            JSONArray jSONArray = new JSONArray();
            if (jsonObject != null) {
                for (int i3 = 0; i3 < jsonObject.length(); i3++) {
                    jSONArray.put(jsonObject.get(i3));
                }
                com.kuaishou.weapon.p0.jni.A.setJsonObject(null);
                return jSONArray;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public JSONArray b(int i2) {
        try {
            return c(i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public JSONArray c(int i2) {
        return d(i2);
    }

    public JSONArray d(int i2) throws PackageManager.NameNotFoundException {
        String[] packagesForUid;
        JSONArray jSONArray = new JSONArray();
        try {
            PackageManager packageManager = this.f31329a.getPackageManager();
            for (int i3 = 1000; i3 <= 19999; i3++) {
                try {
                    packagesForUid = packageManager.getPackagesForUid(i3);
                } catch (Exception unused) {
                    packagesForUid = null;
                }
                if (packagesForUid != null) {
                    for (String str : packagesForUid) {
                        try {
                            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                            if (i2 != 1 || (packageInfo.applicationInfo.flags & 1) != 1) {
                                v vVar = new v(packageInfo, this.f31329a);
                                vVar.h();
                                jSONArray.put(vVar.k());
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        } catch (Exception unused3) {
        }
        return jSONArray;
    }
}
