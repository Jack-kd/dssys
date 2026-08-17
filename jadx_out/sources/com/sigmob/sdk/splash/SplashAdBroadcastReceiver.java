package com.sigmob.sdk.splash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.IntentActions;

/* loaded from: classes4.dex */
public class SplashAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static IntentFilter f38640a;

    /* renamed from: b, reason: collision with root package name */
    private e f38641b;

    public SplashAdBroadcastReceiver(e eVar, String str) {
        super(str);
        this.f38641b = eVar;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f38640a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f38640a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_SPLAH_STOP_TIME);
            f38640a.addAction(IntentActions.ACTION_SPLAH_PLAYFAIL);
            f38640a.addAction(IntentActions.ACTION_SPLAH_SKIP);
            f38640a.addAction(IntentActions.ACTION_LANDPAGE_SHOW);
            f38640a.addAction(IntentActions.ACTION_LANDPAGE_DISMISS);
        }
        return f38640a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f38641b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f38641b != null && a(intent)) {
            String action = intent.getAction();
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) action)) {
                return;
            }
            action.getClass();
            switch (action) {
                case "action.splash.playFail":
                    this.f38641b.b_();
                    break;
                case "action.splash.play":
                    this.f38641b.d_();
                    break;
                case "action.splash.skip":
                    this.f38641b.c_();
                    break;
                case "action.loadpage.show":
                    this.f38641b.a();
                    break;
                case "action.splash.stoptime":
                    this.f38641b.a_();
                    break;
                case "action.loadpage.dismiss":
                    this.f38641b.b();
                    break;
            }
        }
    }
}
