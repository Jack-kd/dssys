package com.sigmob.sdk.videoAd;

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
public class RewardVideoAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static IntentFilter f38739a;

    /* renamed from: b, reason: collision with root package name */
    private h f38740b;

    /* renamed from: c, reason: collision with root package name */
    private BaseAdUnit f38741c;

    public RewardVideoAdBroadcastReceiver(BaseAdUnit baseAdUnit, h hVar, String str) {
        super(str);
        this.f38741c = baseAdUnit;
        this.f38740b = hVar;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f38739a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f38739a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
            f38739a.addAction(IntentActions.ACTION_REWARDED_VIDEO_SKIP);
            f38739a.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
            f38739a.addAction(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            f38739a.addAction(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
        }
        return f38739a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f38740b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f38740b == null || this.f38741c == null || !a(intent)) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        action.getClass();
        switch (action) {
            case "action.rewardedvideo.playFail":
                this.f38740b.c(this.f38741c, intent.getStringExtra("error"));
                b(this);
                this.f38741c = null;
                break;
            case "action.rewardedvideo.play":
                this.f38740b.q(this.f38741c);
                break;
            case "action.rewardedvideo.skip":
                this.f38740b.r(this.f38741c);
                break;
            case "action.rewardedvideo.complete":
                this.f38740b.p(this.f38741c);
                break;
            case "action.rewardedvideo.Close":
                this.f38740b.s(this.f38741c);
                b(this);
                this.f38741c = null;
                break;
        }
    }
}
