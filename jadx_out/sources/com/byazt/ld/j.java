package com.byazt.ld;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ResultReceiver;
import com.byazt.lc.eb;
import com.byazt.lc.s;
import com.byazt.ld.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.io.File;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1075, 38})
/* loaded from: classes3.dex */
public class j implements w.hp {
    public static volatile IBinder hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile Object f22476l;

    public interface hp {
    }

    @com.byazt.kj.hp(hp = {0, 1, 1075, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l extends ResultReceiver {
        public hp hp;

        public l(hp hpVar) {
            super(null);
            this.hp = hpVar;
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i2, Bundle bundle) {
            super.onReceiveResult(i2, bundle);
        }
    }

    private static String[] hp(String... strArr) {
        return strArr;
    }

    private static void jx(String str, String str2, String str3) {
        if (f22476l == null || str == null || str2 == null || str3 == null) {
            return;
        }
        hp(f22476l, "notifyDexLoad", new Object[]{str, Collections.singletonList("dalvik.system.DexClassLoader"), Collections.singletonList(str2), str3}, new Class[]{String.class, List.class, List.class, String.class});
    }

    private static void l(String str, int i2) {
        if (str == null) {
            return;
        }
        String strL = com.byazt.hu.jx.l(str, i2);
        String strW = com.byazt.hu.jx.w(str, i2);
        hp(strL, strW);
        hp(Zeus.getAppApplication().getPackageName(), strW, com.byazt.ld.l.hp());
    }

    @Override // com.byazt.ld.w.hp
    public boolean hp(String str, int i2) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        hp();
        l(str, i2);
        boolean zHp = hp("speed", str, i2);
        jx(str, i2);
        return zHp;
    }

    private static void jx(String str, int i2) {
        if (str == null) {
            return;
        }
        l(com.byazt.hu.jx.eb(str, i2), com.byazt.hu.jx.a(str, i2));
        l(com.byazt.hu.jx.w(str, i2));
        l();
    }

    private static void hp() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        PackageManager packageManager;
        Field fieldHp;
        IBinder iBinderAsBinder;
        if (hp == null && (fieldHp = hp((packageManager = Zeus.getAppApplication().getPackageManager()), "mPM")) != null) {
            Object objHp = hp(fieldHp, packageManager);
            f22476l = objHp;
            if ((objHp instanceof IInterface) && (iBinderAsBinder = ((IInterface) f22476l).asBinder()) != null) {
                hp = iBinderAsBinder;
            }
        }
    }

    private static void l(String str, String str2, String str3) {
        if (f22476l == null || str == null || str2 == null || str3 == null) {
            return;
        }
        hp(f22476l, "notifyDexLoad", new Object[]{str, Collections.singletonMap(str2, "PCL[]"), str3}, new Class[]{String.class, Map.class, String.class});
    }

    private static void l() {
        hp(jx(), (hp) null);
    }

    private static String[] jx() {
        return hp("reconcile-secondary-dex-files", Zeus.getAppApplication().getPackageName());
    }

    private static void l(String str, String str2) {
        try {
            eb.hp(str, str2);
        } catch (Exception unused) {
        }
    }

    private static void l(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    private static boolean hp(String str, String str2, int i2) {
        String strW = com.byazt.hu.jx.w(str2, i2);
        String str3 = com.byazt.hu.jx.s(str2, i2) + File.separator + com.byazt.ld.l.hp(strW);
        for (int i3 = 1; i3 <= 3; i3++) {
            hp(hp(str), (hp) null);
            if (com.byazt.ld.l.hp(str3)) {
                return true;
            }
        }
        return false;
    }

    private static void hp(String str, String str2, String str3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 30) {
            l(str, str2, str3);
        } else if (i2 == 29) {
            jx(str, str2, str3);
        }
    }

    private static void hp(String[] strArr, hp hpVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeFileDescriptor(FileDescriptor.in);
        parcelObtain.writeFileDescriptor(FileDescriptor.out);
        parcelObtain.writeFileDescriptor(FileDescriptor.err);
        parcelObtain.writeStringArray(strArr);
        parcelObtain.writeStrongBinder(null);
        new l(hpVar).writeToParcel(parcelObtain, 0);
        try {
            hp.transact(1598246212, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } catch (Exception unused) {
        } catch (Throwable th) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            throw th;
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
    }

    private static String[] hp(String str) {
        return hp("compile", "-m", str, "-f", "--secondary-dex", Zeus.getAppApplication().getPackageName());
    }

    private static void hp(String str, String str2) {
        try {
            s.hp(str, str2);
        } catch (Exception unused) {
        }
    }

    public static Field hp(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        return hp(obj.getClass(), str);
    }

    public static Field hp(Class<?> cls, String str) {
        return FieldUtils.getField(cls, str);
    }

    public static Object hp(Field field, Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        try {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            Object obj2 = field.get(obj);
            field.setAccessible(false);
            return obj2;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Object hp(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
        try {
            return MethodUtils.invokeMethod(obj, str, objArr, clsArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
