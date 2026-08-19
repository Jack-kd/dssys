package com.sigmob.sdk.newInterstitial;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;

/* loaded from: classes4.dex */
public class NewInterstitialAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static IntentFilter f38542a;

    /* renamed from: b, reason: collision with root package name */
    private e f38543b;

    /* renamed from: c, reason: collision with root package name */
    private BaseAdUnit f38544c;

    public NewInterstitialAdBroadcastReceiver(BaseAdUnit baseAdUnit, e eVar, String str) {
        super(str);
        this.f38544c = baseAdUnit;
        this.f38543b = eVar;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f38542a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f38542a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
            f38542a.addAction(IntentActions.ACTION_REWARDED_VIDEO_SKIP);
            f38542a.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
            f38542a.addAction(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            f38542a.addAction(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
        }
        return f38542a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f38543b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f38543b == null || this.f38544c == null || !a(intent)) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        action.getClass();
        switch (action) {
            case "action.rewardedvideo.playFail":
                this.f38543b.c(this.f38544c, intent.getStringExtra("error"));
                b(this);
                this.f38544c = null;
                break;
            case "action.rewardedvideo.play":
                this.f38543b.r(this.f38544c);
                break;
            case "action.rewardedvideo.skip":
                this.f38543b.q(this.f38544c);
                break;
            case "action.rewardedvideo.Close":
                this.f38543b.p(this.f38544c);
                b(this);
                this.f38544c = null;
                break;
        }
    }
}
