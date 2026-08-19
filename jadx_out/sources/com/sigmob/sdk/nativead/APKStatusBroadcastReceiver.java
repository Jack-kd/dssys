package com.sigmob.sdk.nativead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.InterfaceC1246b;
import com.sigmob.sdk.base.models.IntentActions;

/* loaded from: classes4.dex */
public class APKStatusBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    InterfaceC1246b f38268a;

    /* renamed from: b, reason: collision with root package name */
    IntentFilter f38269b;

    public APKStatusBroadcastReceiver(InterfaceC1246b interfaceC1246b, String str) {
        super(str);
        this.f38268a = interfaceC1246b;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (this.f38269b == null) {
            IntentFilter intentFilter = new IntentFilter();
            this.f38269b = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
            this.f38269b.addAction(IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_PAUSE);
            this.f38269b.addAction(IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_END);
            this.f38269b.addAction(IntentActions.ACTION_INTERSTITIAL_INSTALL_START);
            this.f38269b.addAction(IntentActions.ACTION_INTERSTITIAL_INSTALL_END);
        }
        return this.f38269b;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f38268a = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        boolean zEqualsIgnoreCase;
        long longExtra;
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f38268a == null || !a(intent) || (action = intent.getAction()) == null) {
            return;
        }
        zEqualsIgnoreCase = "1".equalsIgnoreCase(intent.getStringExtra("result"));
        longExtra = intent.getLongExtra("downloadId", -1L);
        switch (action) {
            case "action.interstitial.download.end":
                this.f38268a.b(zEqualsIgnoreCase, longExtra);
                break;
            case "action.interstitial.download.pause":
                this.f38268a.c(zEqualsIgnoreCase, longExtra);
                break;
            case "action.interstitial.download.start":
                this.f38268a.a(zEqualsIgnoreCase, longExtra);
                break;
            case "action.interstitial.install.end":
                this.f38268a.b(zEqualsIgnoreCase);
                break;
            case "action.interstitial.install.start":
                this.f38268a.a(zEqualsIgnoreCase);
                break;
        }
    }
}
