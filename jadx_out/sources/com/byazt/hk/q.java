package com.byazt.hk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.byazt.hk.cx;
import com.byazt.hk.di;
import com.byazt.hk.xs;

@com.byazt.kj.hp(hp = {0, 1, 227, 150})
/* loaded from: classes2.dex */
public final class q implements xs {

    /* renamed from: l, reason: collision with root package name */
    public static final l<Boolean> f20722l = new l<Boolean>() { // from class: com.byazt.hk.q.1
        @Override // com.byazt.hk.l
        /* renamed from: jx, reason: merged with bridge method [inline-methods] */
        public Boolean hp(Object... objArr) {
            return Boolean.valueOf(s.hp((Context) objArr[0]));
        }
    };
    public String hp;

    @com.byazt.kj.hp(hp = {0, 1, 227, 3})
    public static class hp extends xs.hp {
        public long hp = 0;
    }

    @Nullable
    private Pair<String, Boolean> a(Context context) {
        if (TextUtils.isEmpty(this.hp)) {
            return null;
        }
        return (Pair) new di(context, new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage(this.hp), new di.l<cx, Pair<String, Boolean>>() { // from class: com.byazt.hk.q.2
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public cx l(IBinder iBinder) {
                return cx.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public Pair<String, Boolean> hp(cx cxVar) throws Exception {
                if (cxVar == null) {
                    return null;
                }
                return new Pair<>(cxVar.hp(), Boolean.valueOf(cxVar.l()));
            }
        }).hp();
    }

    public static boolean hp(Context context) {
        if (context == null) {
            return false;
        }
        return f20722l.l(context).booleanValue();
    }

    private boolean w(Context context) {
        PackageManager packageManager;
        if (context == null) {
            return false;
        }
        try {
            packageManager = context.getPackageManager();
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
        if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
            this.hp = "com.huawei.hwid";
            return true;
        }
        if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
            this.hp = "com.huawei.hwid.tv";
            return true;
        }
        this.hp = "com.huawei.hms";
        return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
    }

    @Override // com.byazt.hk.xs
    @Nullable
    @WorkerThread
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public hp jx(Context context) {
        hp hpVar = new hp();
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
            String string2 = Settings.Global.getString(context.getContentResolver(), "pps_track_limit");
            if (!TextUtils.isEmpty(string)) {
                hpVar.f20732l = string;
                hpVar.jx = Boolean.parseBoolean(string2);
                hpVar.hp = 202003021704L;
                return hpVar;
            }
        } catch (Throwable th) {
            com.byazt.gt.e.hp(th);
        }
        Pair<String, Boolean> pairA = a(context);
        if (pairA != null) {
            hpVar.f20732l = (String) pairA.first;
            hpVar.jx = ((Boolean) pairA.second).booleanValue();
            hpVar.hp = hp(context, this.hp);
        }
        return hpVar;
    }

    @Override // com.byazt.hk.xs
    public boolean l(Context context) {
        return w(context);
    }

    private static int hp(Context context, String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e2) {
            com.byazt.gt.e.hp(e2);
            return 0;
        }
    }
}
