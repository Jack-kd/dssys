package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class al {
    public static boolean a(Context context) {
        try {
            String[] strArr = {"/storage/emulated/0/DCIM/Camera/virtual.mp4", "/storage/emulated/0/DCIM/Camera1/virtual.mp4", "/storage/emulated/0/DCIM/Camera1/no-silent.jpg", "/storage/emulated/0/DCIM/Camera1/disable.jpg", "/storage/emulated/0/DCIM/Camera1/no_toast.jpg"};
            for (int i2 = 0; i2 < 5; i2++) {
                if (new File(strArr[i2]).exists()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            String[] strArr = {"/system/lib/.aa", "/sdcard/my/34.png", "/sdcard/my/do_not_change.txt", "/sdcard/my/34.mp4", "/sdcard/my/44.mp4", "/sdcard/QQ=99932701/", "/sdcard/QQ=99932701/Dict.txt"};
            int i2 = 0;
            for (int i3 = 0; i3 < 7; i3++) {
                if (new File(strArr[i3]).exists()) {
                    i2 |= 1 << i3;
                }
            }
            if (i2 > 0) {
                jSONObject.put("files", i2);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static int c() {
        String[] strArr = {"/system/lib.aa", "/system/lib/ccc"};
        int i2 = 0;
        for (int i3 = 0; i3 < 2; i3++) {
            try {
                if (new File(strArr[i3]).exists()) {
                    i2 |= 1 << i3;
                }
            } catch (Exception unused) {
            }
        }
        return i2;
    }

    public static JSONObject a() throws JSONException, ClassNotFoundException {
        JSONObject jSONObject = new JSONObject();
        try {
            String[] strArr = {"persist.sys.virtual_camera_flag", "persist.sys.camera_type", "persist.sys.camera_rotation"};
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                String strA = aa.a().a(strArr[i3]);
                if (!TextUtils.isEmpty(strA)) {
                    String str = strArr[i3];
                    jSONObject.put(str.substring(str.lastIndexOf(46) + 1), strA);
                }
            }
            try {
                Class.forName("android.hardware.mockcamera.MockCamera");
                jSONObject.put("MockCamera", 1);
            } catch (ClassNotFoundException unused) {
            }
            String[] strArr2 = {"/sdcard/.imei.txt", "/sdcard/key.txt", "/sdcard/video/1.mp4", "/sdcard/video/test.txt", "/sdcard/video/.aa", "/sdcard/video/.new", "/sdcard/video/.old"};
            for (int i4 = 2; i4 < 7; i4++) {
                if (new File(strArr2[i4]).exists()) {
                    i2 |= 1 << i4;
                }
            }
            if (i2 > 0) {
                jSONObject.put("files", i2);
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    public static JSONObject b(Context context) throws JSONException, PackageManager.NameNotFoundException {
        String[] strArr = {"/sdcard/my/44.mp4", "/system/lib/lic"};
        String[] strArr2 = {"com.yky"};
        JSONObject jSONObject = new JSONObject();
        try {
            int iA = bn.a(strArr);
            if (iA > 0) {
                jSONObject.put("f", iA);
            }
            PackageManager packageManager = context.getPackageManager();
            for (int i2 = 0; i2 <= 0; i2++) {
                try {
                    packageManager.getApplicationInfo(strArr2[0], 0);
                    jSONObject.put(strArr2[0], 1);
                } catch (PackageManager.NameNotFoundException | JSONException unused) {
                }
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }
}
