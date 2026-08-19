package com.umeng.analytics.pro;

import com.umeng.commonsdk.debug.UMRTLog;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
public class an implements ad {

    /* renamed from: a, reason: collision with root package name */
    private Set<Integer> f48671a;

    public an(Set<Integer> set) {
        this.f48671a = null;
        this.f48671a = new HashSet(set);
    }

    @Override // com.umeng.analytics.pro.ad
    public boolean a() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i2 = 7;
            int i3 = calendar.get(7) - 1;
            if (i3 != 0) {
                i2 = i3;
            }
            Set<Integer> set = this.f48671a;
            if (set != null && set.contains(Integer.valueOf(i2))) {
                return true;
            }
            String str = "";
            Iterator<Integer> it = this.f48671a.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ",";
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "WeekOn skipped. day of week: " + i2 + "; config: " + str);
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
