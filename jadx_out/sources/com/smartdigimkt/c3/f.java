package com.smartdigimkt.c3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class f extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDKContext f39672a;

    public f(SDKContext sDKContext) {
        this.f39672a = sDKContext;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        SDKContext sDKContext = this.f39672a;
        e eVar = new e(context);
        sDKContext.getClass();
        com.smartdigimkt.b4.e.a().a(eVar, 0L, 7);
        try {
            com.smartdigimkt.i3.b bVarE = this.f39672a.e();
            if (bVarE != null) {
                bVarE.resetSSID();
            }
        } catch (Throwable unused) {
        }
    }
}
