package com.byazt.iv;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.cn.q;
import com.byazt.gt.e;
import com.byazt.lxu.j;
import com.byazt.ub.a;
import java.util.HashSet;

@com.byazt.kj.hp(hp = {0, 1, 1177, 28})
/* loaded from: classes.dex */
public class hp implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public static String f21238a = null;
    public static int eb = -1;
    public static int hp;

    /* renamed from: j, reason: collision with root package name */
    public static String f21239j;
    public static long jx;

    /* renamed from: l, reason: collision with root package name */
    public static q f21240l;

    /* renamed from: q, reason: collision with root package name */
    public static final HashSet<Integer> f21241q = new HashSet<>(8);

    /* renamed from: w, reason: collision with root package name */
    public static long f21242w;

    /* renamed from: s, reason: collision with root package name */
    public final a f21243s;

    public hp(a aVar) {
        this.f21243s = aVar;
    }

    public static q hp(String str, String str2, long j2, String str3) {
        q qVar = new q();
        if (TextUtils.isEmpty(str2)) {
            qVar.f18941k = str;
        } else {
            qVar.f18941k = str + ":" + str2;
        }
        qVar.f18929l = j2;
        qVar.jl = -1L;
        if (str3 == null) {
            str3 = "";
        }
        qVar.zy = str3;
        j.hp(qVar);
        return qVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        f21241q.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        f21241q.remove(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        q qVar = f21240l;
        if (qVar != null) {
            f21239j = qVar.f18941k;
            long jCurrentTimeMillis = System.currentTimeMillis();
            jx = jCurrentTimeMillis;
            hp(f21240l, jCurrentTimeMillis);
            f21240l = null;
            if (activity.isChild()) {
                return;
            }
            eb = -1;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        q qVarHp = hp(activity.getClass().getName(), "", System.currentTimeMillis(), f21239j);
        f21240l = qVarHp;
        qVarHp.ec = !f21241q.remove(Integer.valueOf(activity.hashCode())) ? 1 : 0;
        if (activity.isChild()) {
            return;
        }
        try {
            eb = activity.getWindow().getDecorView().hashCode();
        } catch (Exception e2) {
            e.l(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        hp++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (f21239j != null) {
            int i2 = hp - 1;
            hp = i2;
            if (i2 <= 0) {
                f21239j = null;
                f21238a = null;
                f21242w = 0L;
                jx = 0L;
            }
        }
    }

    public static q hp(q qVar, long j2) {
        q qVar2 = (q) qVar.clone();
        qVar2.f18929l = j2;
        long j3 = j2 - qVar.f18929l;
        if (j3 >= 0) {
            qVar2.jl = j3;
        } else {
            e.l((Throwable) null);
        }
        j.hp(qVar2);
        return qVar2;
    }
}
