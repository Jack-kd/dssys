package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;

/* loaded from: classes5.dex */
public class a extends EventList {

    /* renamed from: a, reason: collision with root package name */
    private d f48623a;

    /* renamed from: b, reason: collision with root package name */
    private Object f48624b;

    public a(String str, String str2) {
        super(str, str2);
        this.f48624b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    public void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.f48624b) {
            this.f48623a = null;
            this.f48623a = new d(false, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean zA;
        if (TextUtils.isEmpty(this.mEventList)) {
            return false;
        }
        synchronized (this.f48624b) {
            try {
                if (this.f48623a == null) {
                    this.f48623a = new d(false, this.mEventList);
                }
                zA = this.f48623a.a(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zA;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z2) {
        AnalyticsConfig.CLEAR_EKV_BL = z2;
    }
}
