package com.byazt.es;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Environment;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

@com.byazt.kj.hp(hp = {0, 1, 155, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static int f19488a = 0;

    /* renamed from: e, reason: collision with root package name */
    public static int f19489e = 8;
    public static int eb = 1;
    public static int gu = 16;
    public static String hp = "images";

    /* renamed from: j, reason: collision with root package name */
    public static int f19490j = 30;
    public static int jl = 32;
    public static int jx = 1;

    /* renamed from: l, reason: collision with root package name */
    public static String f19491l = null;

    /* renamed from: q, reason: collision with root package name */
    public static int f19492q = 4;

    /* renamed from: s, reason: collision with root package name */
    public static int f19493s = 2;

    /* renamed from: w, reason: collision with root package name */
    public static long f19494w = 15360;

    public static boolean hp(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str.equals(str2)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static Bitmap l(String str) {
        byte[] bArrDecode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    @RequiresApi(api = 23)
    public static boolean l(Context context, String str) {
        return context.checkSelfPermission(str) == 0;
    }

    public static File hp() throws IOException {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_DCIM + File.separator + hp);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "JPG_Playable_Photo.jpg");
            if (!file2.exists()) {
                file2.createNewFile();
            }
            f19491l = file2.getAbsolutePath();
            return file2;
        } catch (IOException unused) {
            return null;
        }
    }

    public static File hp(String str) throws IOException {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_DCIM + File.separator + "Camera");
            if (!file.exists()) {
                file.mkdirs();
            }
            Calendar calendar = Calendar.getInstance();
            File file2 = new File(file, (calendar.get(12) + "_" + calendar.get(13) + "_" + calendar.get(14)) + "_" + str);
            if (!file2.exists()) {
                file2.createNewFile();
            }
            return file2;
        } catch (IOException unused) {
            return null;
        }
    }

    public static File hp(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            File fileHp = hp(str);
            if (fileHp != null && fileHp.exists()) {
                byte[] bArrDecode = Base64.decode(str2, 2);
                fileOutputStream = new FileOutputStream(fileHp);
                try {
                    fileOutputStream.write(bArrDecode, 0, bArrDecode.length);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                    }
                    return fileHp;
                } catch (IOException unused2) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            }
            return null;
        } catch (IOException unused5) {
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean hp(Context context, int i2) {
        boolean zHp;
        boolean zHp2;
        if (f19488a == 0) {
            if (Build.VERSION.SDK_INT >= 33) {
                zHp = hp(context, "android.permission.READ_MEDIA_IMAGES");
                zHp2 = true;
            } else {
                zHp = hp(context, g.f31167i);
                zHp2 = hp(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            boolean zHp3 = hp(context, "android.permission.CAMERA");
            boolean zHp4 = hp(context, "android.permission.RECORD_AUDIO");
            PackageManager packageManager = context.getPackageManager();
            if (zHp && zHp2) {
                f19488a |= eb;
            }
            if (zHp3 && packageManager.hasSystemFeature("android.hardware.camera")) {
                f19488a |= f19493s;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.gyroscope")) {
                f19488a |= f19492q;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.accelerometer")) {
                f19488a |= f19489e;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.compass")) {
                f19488a |= gu;
            }
            if (zHp4 && packageManager.hasSystemFeature("android.hardware.microphone")) {
                f19488a |= jl;
            }
        }
        return (f19488a & i2) != 0;
    }

    @RequiresApi(api = 23)
    public static boolean hp(Context context) {
        boolean z2;
        boolean z3;
        if (Build.VERSION.SDK_INT >= 33) {
            z2 = context.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0;
        } else {
            z2 = context.checkSelfPermission(g.f31167i) == 0;
            if (context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                z3 = false;
            }
            return !z3 && z2;
        }
        z3 = true;
        if (z3) {
        }
    }
}
