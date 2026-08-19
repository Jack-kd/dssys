package com.anythink.rewardvideo.a;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public abstract class d implements ATCommonImpressionListener {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f10735a;

    /* renamed from: b, reason: collision with root package name */
    private final int f10736b;

    /* renamed from: c, reason: collision with root package name */
    protected final f f10737c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f10738d = false;

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f10739e = false;

    /* renamed from: f, reason: collision with root package name */
    private int f10740f = -1;

    public d(f fVar, boolean z2, int i2) {
        this.f10737c = fVar;
        this.f10735a = z2;
        this.f10736b = i2;
    }

    private boolean a() {
        return this.f10736b == 1;
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdClick() {
        if (!this.f10735a || this.f10737c == null) {
            return;
        }
        if (!a()) {
            onAdReward();
        }
        this.f10737c.onRewardedVideoAdPlayClicked();
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdDismiss() {
        if (this.f10735a) {
            if (!this.f10738d) {
                this.f10738d = true;
                f fVar = this.f10737c;
                if (fVar != null) {
                    fVar.onRewardedVideoAdPlayEnd();
                }
            }
            if (!b() || a()) {
                onAdReward();
            } else if (!this.f10739e) {
                a("reward_none_for_click");
            }
            f fVar2 = this.f10737c;
            if (fVar2 != null) {
                fVar2.onRewardedVideoAdClosed();
            }
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdImpression() {
        f fVar;
        if (!this.f10735a || (fVar = this.f10737c) == null) {
            return;
        }
        fVar.onRewardedVideoAdPlayStart();
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdReward() {
        if (this.f10739e) {
            return;
        }
        this.f10739e = true;
        f fVar = this.f10737c;
        if (fVar != null) {
            fVar.onReward();
        }
        if (b()) {
            a("reward_in_close");
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdRewardFailed() {
        if (this.f10737c == null || this.f10739e) {
            return;
        }
        this.f10739e = true;
        this.f10737c.onRewardFailed();
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdShowFail(String str, String str2) {
        f fVar;
        if (!this.f10735a || (fVar = this.f10737c) == null) {
            return;
        }
        fVar.onRewardedVideoAdPlayFailed(str, str2);
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdVideoPlayEnd() {
        if (!this.f10735a || this.f10737c == null || this.f10738d) {
            return;
        }
        this.f10738d = true;
        this.f10737c.onRewardedVideoAdPlayEnd();
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdVideoPlayStart() {
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onDeeplinkCallback(boolean z2) {
        f fVar = this.f10737c;
        if (fVar != null) {
            fVar.onDeeplinkCallback(z2);
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        f fVar = this.f10737c;
        if (fVar != null) {
            fVar.onDownloadConfirm(context, aTNetworkConfirmInfo);
        }
    }

    private boolean b() {
        return this.f10740f == 0;
    }

    public final void a(int i2) {
        this.f10740f = i2;
    }

    private static void a(String str) {
        final String string;
        final Context contextG = s.b().g();
        if (contextG == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            string = contextG.getString(p.a(contextG, str, "string"));
        } catch (Throwable unused) {
            string = null;
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        s.b();
        s.b(new Runnable() { // from class: com.anythink.rewardvideo.a.g
            @Override // java.lang.Runnable
            public final void run() {
                d.a(contextG, string);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, String str) {
        try {
            Toast.makeText(context, str, 1).show();
        } catch (Throwable unused) {
        }
    }
}
