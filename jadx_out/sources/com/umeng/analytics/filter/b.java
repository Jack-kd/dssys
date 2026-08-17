package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;

/* loaded from: classes5.dex */
public class b extends EventList {

    /* renamed from: a, reason: collision with root package name */
    private d f48625a;

    /* renamed from: b, reason: collision with root package name */
    private Object f48626b;

    public b(String str, String str2) {
        super(str, str2);
        this.f48626b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    public void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.f48626b) {
            this.f48625a = null;
            this.f48625a = new d(true, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean zA;
        if (TextUtils.isEmpty(this.mEventList)) {
            return true;
        }
        synchronized (this.f48626b) {
            try {
                if (this.f48625a == null) {
                    this.f48625a = new d(true, this.mEventList);
                }
                zA = this.f48625a.a(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zA;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z2) {
        AnalyticsConfig.CLEAR_EKV_WL = z2;
    }
}
