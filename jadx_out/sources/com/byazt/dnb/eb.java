package com.byazt.dnb;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.dnb.a;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.lf.k;
import com.kwad.sdk.collector.AppStatusRules;
import dalvik.system.BaseDexClassLoader;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1239, 94})
/* loaded from: classes2.dex */
public class eb {
    public static Boolean hp = null;
    public static boolean jx = hp().exists();

    /* renamed from: l, reason: collision with root package name */
    public static Method f19179l;

    public static File hp() {
        return new File(com.byazt.ymw.eb.hp(sz.getContext(), false, null), ".csj_so");
    }

    private static boolean l(String str) throws JSONException {
        try {
            if (f19179l == null) {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class);
                f19179l = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            BaseDexClassLoader baseDexClassLoader = (BaseDexClassLoader) eb.class.getClassLoader();
            if (f19179l != null && baseDexClassLoader != null) {
                String strFindLibrary = baseDexClassLoader.findLibrary(str);
                synchronized (eb.class) {
                    f19179l.invoke(null, strFindLibrary, baseDexClassLoader);
                }
                return true;
            }
        } catch (Throwable th) {
            jx = false;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("lib", str);
                jSONObject.putOpt("msg", "lock load failed!");
            } catch (JSONException unused) {
            }
            k.hp().hp("so_load_fail", jSONObject, th);
        }
        return false;
    }

    public static void hp(final String str) throws JSONException {
        if (sz.l().ju() == 1) {
            if (!a.hp(str) && sz.l().vr() == 1) {
                vv.hp = false;
                if ("maparmor".equals(str) || "panglearmor".equals(str)) {
                    throw new a.jx("SoVerfailed: ".concat(String.valueOf(str)));
                }
            }
        } else if (sz.l().ju() == 2) {
            com.byazt.uid.w.hp(new com.byazt.uid.eb("har") { // from class: com.byazt.dnb.eb.1
                @Override // java.lang.Runnable
                public void run() {
                    a.hp(str);
                }
            }, 5000);
        }
        try {
            if (jx && !TextUtils.equals(str, "pangleflipped") && l(str)) {
                return;
            }
            System.loadLibrary(str);
        } catch (Throwable th) {
            if (!(th instanceof a.jx)) {
                th.printStackTrace();
                hp(str, th);
                return;
            }
            throw th;
        }
    }

    public static boolean l() {
        Boolean bool = hp;
        if (bool != null) {
            return bool.booleanValue();
        }
        hp = Boolean.FALSE;
        try {
            Context context = sz.getContext();
            if ((context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).applicationInfo.flags & 1) != 0) {
                hp = Boolean.TRUE;
            }
        } catch (Exception unused) {
        }
        return hp.booleanValue();
    }

    private static boolean hp(String str, Throwable th) throws JSONException {
        String strEb = d.eb();
        String str2 = "lib" + str + ".so";
        File file = new File(strEb, "/lib/".concat(String.valueOf(str2)));
        if (file.exists() && file.length() > 0) {
            return hp(str, file.getAbsolutePath());
        }
        File file2 = new File(strEb, "apk/base-1.apk");
        if (file2.exists() && file2.length() > 0) {
            hp(file2, file, str2);
            File file3 = new File(strEb, "/lib/".concat(String.valueOf(str2)));
            if (file3.exists() && file3.length() > 0) {
                try {
                    System.loadLibrary(str);
                    return true;
                } catch (Throwable unused) {
                    return hp(str, file3.getAbsolutePath());
                }
            }
            hp(str, str2 + " unzip failed !", th);
            return false;
        }
        hp(str, "load so filed! apk not exist! ", th);
        return false;
    }

    private static boolean hp(String str, String str2) throws JSONException {
        try {
            System.load(str2);
            return true;
        } catch (Throwable th) {
            new File(str2).delete();
            hp(str, "load so " + str + " filed! ", th);
            throw th;
        }
    }

    private static void hp(File file, File file2, String str) {
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        try {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry("lib/" + com.byazt.xgv.l.hp() + ServiceReference.DELIMITER + str);
            if (entry == null) {
                entry = zipFile.getEntry("lib/armeabi/".concat(String.valueOf(str)));
            }
            if (entry == null) {
                return;
            }
            file2.getParentFile().mkdirs();
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry));
                    try {
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                        try {
                            byte[] bArr = new byte[AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE];
                            while (true) {
                                int i2 = bufferedInputStream.read(bArr);
                                if (i2 != -1) {
                                    bufferedOutputStream.write(bArr, 0, i2);
                                } else {
                                    com.byazt.qkc.l.hp(bufferedInputStream);
                                    com.byazt.qkc.l.hp(bufferedOutputStream);
                                    com.byazt.qkc.l.hp(fileOutputStream);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            com.byazt.qkc.l.hp(bufferedInputStream);
                            com.byazt.qkc.l.hp(bufferedOutputStream);
                            com.byazt.qkc.l.hp(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedOutputStream = null;
                    }
                } catch (Throwable th4) {
                    bufferedInputStream = null;
                    th = th4;
                    bufferedOutputStream = null;
                }
            } catch (Throwable th5) {
                bufferedInputStream = null;
                fileOutputStream = null;
                th = th5;
                bufferedOutputStream = null;
            }
        } catch (Throwable unused) {
        }
    }

    private static void hp(String str, String str2, Throwable th) throws JSONException {
        if ("maparmor".equals(str)) {
            vv.hp = false;
        }
        if (l()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("lib", str);
            jSONObject.putOpt("msg", str2);
        } catch (JSONException unused) {
        }
        k.hp().hp("so_load_fail", jSONObject, th);
    }
}
