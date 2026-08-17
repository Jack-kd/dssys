package com.byazt.sii;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.zn.di;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, 1175, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static final String hp = "w";

    /* renamed from: w, reason: collision with root package name */
    public static volatile w f25474w;

    /* renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArraySet<String> f25476l = new CopyOnWriteArraySet<>();
    public final List<WeakReference<a>> jx = new ArrayList(1);

    /* renamed from: j, reason: collision with root package name */
    public final List<a> f25475j = new ArrayList(1);

    private w() {
        l();
    }

    public static w hp() {
        if (f25474w == null) {
            synchronized (w.class) {
                try {
                    if (f25474w == null) {
                        f25474w = new w();
                    }
                } finally {
                }
            }
        }
        return f25474w;
    }

    private void jx() {
        PackageInfo packageInfo;
        String[] strArr;
        Context context = sz.getContext();
        if (context == null) {
            return;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(packageName, 4096)) != null && (strArr = packageInfo.requestedPermissions) != null && strArr.length != 0) {
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (!TextUtils.isEmpty(strArr[i2])) {
                        this.f25476l.add(strArr[i2]);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void l() {
        jx();
    }

    public boolean l(Context context, String str) {
        if (context == null) {
            return false;
        }
        return di.sz() ? jx.hp(context, str) && l.hp(context, str) == 0 : l.hp(context, str) == 0;
    }

    private void l(Activity activity, String[] strArr, a aVar) {
        boolean zHp;
        for (String str : strArr) {
            if (aVar != null) {
                try {
                    if (!this.f25476l.contains(str)) {
                        zHp = aVar.hp(str, j.NOT_FOUND);
                    } else if (l.hp(activity, str) != 0) {
                        zHp = aVar.hp(str, j.DENIED);
                    } else {
                        zHp = aVar.hp(str, j.GRANTED);
                    }
                    if (zHp) {
                        break;
                    }
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
        hp(aVar);
    }

    private synchronized void hp(String[] strArr, a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.hp(strArr);
        this.f25475j.add(aVar);
        this.jx.add(new WeakReference<>(aVar));
    }

    private List<String> jx(Activity activity, String[] strArr, a aVar) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (this.f25476l.contains(str)) {
                if (!hp(activity, str)) {
                    arrayList.add(str);
                } else if (aVar != null) {
                    aVar.hp(str, j.GRANTED);
                }
            } else if (aVar != null) {
                aVar.hp(str, j.NOT_FOUND);
            }
        }
        return arrayList;
    }

    private synchronized void hp(a aVar) {
        try {
            Iterator<WeakReference<a>> it = this.jx.iterator();
            while (it.hasNext()) {
                WeakReference<a> next = it.next();
                if (next.get() == aVar || next.get() == null) {
                    it.remove();
                }
            }
            Iterator<a> it2 = this.f25475j.iterator();
            while (it2.hasNext()) {
                if (it2.next() == aVar) {
                    it2.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean hp(Context context, String str) {
        if (context == null) {
            return false;
        }
        return di.sz() ? jx.hp(context, str) && l.hp(context, str) == 0 : l.hp(context, str) == 0;
    }

    public synchronized void hp(Activity activity, String[] strArr, a aVar) {
        if (activity == null) {
            return;
        }
        try {
            hp(strArr, aVar);
            List<String> listJx = jx(activity, strArr, aVar);
            if (listJx.isEmpty()) {
                hp(aVar);
            } else {
                l.requestPermissions(activity, (String[]) listJx.toArray(new String[listJx.size()]), 1);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void hp(Activity activity, String[] strArr, int[] iArr) {
        try {
            new ArrayList(3);
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                String str = strArr[i2];
                if ((iArr[i2] == -1 || (di.sz() && !jx.hp(activity, str))) && iArr[i2] != -1) {
                    iArr[i2] = -1;
                }
            }
            hp(strArr, iArr, (String[]) null);
        } catch (Throwable unused) {
        }
    }

    private void hp(String[] strArr, int[] iArr, String[] strArr2) {
        int i2;
        try {
            int length = strArr.length;
            if (iArr.length < length) {
                length = iArr.length;
            }
            Iterator<WeakReference<a>> it = this.jx.iterator();
            while (it.hasNext()) {
                a aVar = it.next().get();
                while (i2 < length) {
                    i2 = (aVar == null || aVar.hp(strArr[i2], iArr[i2])) ? 0 : i2 + 1;
                    it.remove();
                    break;
                }
            }
            Iterator<a> it2 = this.f25475j.iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        } catch (Throwable unused) {
        }
    }
}
