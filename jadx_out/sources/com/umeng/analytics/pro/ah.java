package com.umeng.analytics.pro;

import com.umeng.commonsdk.debug.UMRTLog;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
public class ah implements ad {

    /* renamed from: a, reason: collision with root package name */
    private Set<Integer> f48660a;

    public ah(Set<Integer> set) {
        this.f48660a = null;
        this.f48660a = new HashSet(set);
    }

    @Override // com.umeng.analytics.pro.ad
    public boolean a() {
        try {
            int i2 = Calendar.getInstance().get(11);
            Set<Integer> set = this.f48660a;
            if (set != null && set.contains(Integer.valueOf(i2))) {
                return true;
            }
            String str = "";
            Iterator<Integer> it = this.f48660a.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ",";
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "HourOn skipped. hour of day: " + i2 + "; config: " + str);
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.umeng.analytics.pro.ad
    public boolean b() {
        return !a();
    }

    @Override // com.umeng.analytics.pro.ad
    public long c() {
        return 0L;
    }
}
