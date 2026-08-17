package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;

/* loaded from: classes4.dex */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f35581a = "EventForwardingBroadcastReceiver";

    /* renamed from: c, reason: collision with root package name */
    private static IntentFilter f35582c;

    /* renamed from: b, reason: collision with root package name */
    public BaseAdUnit f35583b;

    /* renamed from: d, reason: collision with root package name */
    private InterfaceC1274p f35584d;

    public EventForwardingBroadcastReceiver(BaseAdUnit baseAdUnit, InterfaceC1274p interfaceC1274p, String str) {
        super(str);
        this.f35583b = baseAdUnit;
        this.f35584d = interfaceC1274p;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f35582c == null) {
            IntentFilter intentFilter = new IntentFilter();
            f35582c = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_INTERSTITIAL_FAIL);
            f35582c.addAction(IntentActions.ACTION_INTERSTITIAL_SHOW);
            f35582c.addAction(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            f35582c.addAction(IntentActions.ACTION_INTERSTITIAL_CLICK);
            f35582c.addAction(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        }
        return f35582c;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f35584d = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f35584d == null || this.f35583b == null || !a(intent)) {
            return;
        }
        String requestId = this.f35583b.getRequestId();
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        SigmobLog.d(f35581a + "#onReceive: action = " + action + ", requestId = " + requestId);
        switch (action) {
            case "action.interstitial.dismiss":
                this.f35584d.d(this.f35583b);
                b(this);
                this.f35583b = null;
                break;
            case "action.interstitial.click":
                this.f35584d.c(this.f35583b);
                break;
            case "action.interstitial.vopen":
                this.f35584d.e(this.f35583b);
                break;
            case "action.interstitial.fail":
                this.f35584d.b(this.f35583b, intent.getStringExtra("error"));
                break;
            case "action.interstitial.show":
                this.f35584d.b(this.f35583b);
                break;
        }
    }
}
