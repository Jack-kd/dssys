package com.byazt.tja;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.zg.di;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1570, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: j, reason: collision with root package name */
    public static j f25876j;
    public final Set<String> hp = new HashSet(1);

    /* renamed from: l, reason: collision with root package name */
    public final List<w> f25877l = new ArrayList(1);
    public final List<WeakReference<w>> jx = new ArrayList(1);

    private j() {
        l();
    }

    public static j hp() {
        if (f25876j == null) {
            f25876j = new j();
        }
        return f25876j;
    }

    @NonNull
    private List<String> jx(@NonNull Activity activity, @NonNull String[] strArr, @Nullable w wVar) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (this.hp.contains(str)) {
                if (!hp(activity, str)) {
                    arrayList.add(str);
                } else if (wVar != null) {
                    wVar.hp(str, jx.GRANTED);
                }
            } else if (wVar != null) {
                wVar.hp(str, jx.NOT_FOUND);
            }
        }
        return arrayList;
    }

    private void l() {
        PackageInfo packageInfo;
        String[] strArr;
        Context context = com.byazt.di.l.getContext();
        if (context == null) {
            return;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(packageName, 4096)) != null && (strArr = packageInfo.requestedPermissions) != null && strArr.length != 0) {
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (!TextUtils.isEmpty(strArr[i2])) {
                        this.hp.add(strArr[i2]);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized void hp(@NonNull String[] strArr, @Nullable w wVar) {
        if (wVar != null) {
            wVar.hp(strArr);
            this.f25877l.add(wVar);
            this.jx.add(new WeakReference<>(wVar));
        }
    }

    private synchronized void hp(@Nullable w wVar) {
        try {
            Iterator<WeakReference<w>> it = this.jx.iterator();
            while (it.hasNext()) {
                WeakReference<w> next = it.next();
                if (next.get() == wVar || next.get() == null) {
                    it.remove();
                }
            }
            Iterator<w> it2 = this.f25877l.iterator();
            while (it2.hasNext()) {
                if (it2.next() == wVar) {
                    it2.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void l(@NonNull Activity activity, @NonNull String[] strArr, @Nullable w wVar) {
        boolean zHp;
        for (String str : strArr) {
            if (wVar != null) {
                try {
                    if (!this.hp.contains(str)) {
                        zHp = wVar.hp(str, jx.NOT_FOUND);
                    } else if (l.hp(activity, str) != 0) {
                        zHp = wVar.hp(str, jx.DENIED);
                    } else {
                        zHp = wVar.hp(str, jx.GRANTED);
                    }
                    if (zHp) {
                        break;
                    }
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
        hp(wVar);
    }

    public synchronized boolean hp(@Nullable Context context, @NonNull String str) {
        if (context != null) {
            return di.w() ? com.byazt.sii.jx.hp(context, str) && (l.hp(context, str) == 0 || !this.hp.contains(str)) : l.hp(context, str) == 0 || !this.hp.contains(str);
        }
        return false;
    }

    public synchronized void hp(@Nullable Activity activity, @NonNull String[] strArr, @Nullable w wVar) {
        if (activity != null) {
            try {
                hp(strArr, wVar);
                List<String> listJx = jx(activity, strArr, wVar);
                if (listJx.isEmpty()) {
                    hp(wVar);
                } else {
                    l.requestPermissions(activity, (String[]) listJx.toArray(new String[listJx.size()]), 1);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized void hp(@NonNull Activity activity, @NonNull String[] strArr, @NonNull int[] iArr) {
        try {
            new ArrayList(3);
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                String str = strArr[i2];
                if ((iArr[i2] == -1 || (di.w() && !com.byazt.sii.jx.hp(activity, str))) && iArr[i2] != -1) {
                    iArr[i2] = -1;
                }
            }
            hp(strArr, iArr);
        } catch (Throwable unused) {
        }
    }

    private void hp(@NonNull String[] strArr, @NonNull int[] iArr) {
        int i2;
        try {
            int length = strArr.length;
            if (iArr.length < length) {
                length = iArr.length;
            }
            Iterator<WeakReference<w>> it = this.jx.iterator();
            while (it.hasNext()) {
                w wVar = it.next().get();
                while (i2 < length) {
                    i2 = (wVar == null || wVar.hp(strArr[i2], iArr[i2])) ? 0 : i2 + 1;
                    it.remove();
                    break;
                }
            }
            Iterator<w> it2 = this.f25877l.iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        } catch (Throwable unused) {
        }
    }
}
