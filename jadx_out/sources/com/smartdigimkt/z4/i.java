package com.smartdigimkt.z4;

import android.content.Context;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class i extends com.smartdigimkt.b4.g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f45469b;

    public i(j jVar) {
        this.f45469b = jVar;
    }

    @Override // com.smartdigimkt.b4.g
    public final void b() {
        try {
            Context contextD = SDKContext.getInstance().d();
            if (contextD == null) {
                return;
            }
            j jVar = this.f45469b;
            long jCurrentTimeMillis = System.currentTimeMillis();
            jVar.getClass();
            String strA = j.a(jCurrentTimeMillis);
            y.a(contextD, "interaction_control", "last_save_date", strA);
            String str = this.f45469b.f45482l;
            if (str != null) {
                strA = str;
            }
            y.a(contextD, "interaction_control", "daily_count_day", strA);
            y.a(contextD, "interaction_control", "sp_cross_last_time", this.f45469b.f45473c);
            y.b(contextD, "interaction_control", "sp_cross_daily_count", this.f45469b.f45474d);
            y.a(contextD, "interaction_control", "sp_shake_last_time", this.f45469b.f45475e);
            y.b(contextD, "interaction_control", "sp_shake_daily_count", this.f45469b.f45476f);
            y.a(contextD, "interaction_control", "sp_swipe_last_time", this.f45469b.f45477g);
            y.b(contextD, "interaction_control", "sp_swipe_daily_count", this.f45469b.f45478h);
            y.a(contextD, "interaction_control", "sp_twist_last_time", this.f45469b.f45479i);
            y.b(contextD, "interaction_control", "sp_twist_daily_count", this.f45469b.f45480j);
        } catch (Throwable unused) {
        }
    }
}
