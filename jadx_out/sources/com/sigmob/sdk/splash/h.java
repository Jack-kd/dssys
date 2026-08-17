package com.sigmob.sdk.splash;

import android.content.Context;
import android.media.MediaPlayer;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.views.SurfaceHolderCallbackC1291c;
import java.io.IOException;

/* loaded from: classes4.dex */
class h extends C1372b {

    /* renamed from: b, reason: collision with root package name */
    private final SurfaceHolderCallbackC1291c f38667b;

    /* renamed from: c, reason: collision with root package name */
    private final BaseAdUnit f38668c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f38669d;

    public h(Context context, BaseAdUnit baseAdUnit) {
        super(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        SurfaceHolderCallbackC1291c surfaceHolderCallbackC1291c = new SurfaceHolderCallbackC1291c(context);
        this.f38667b = surfaceHolderCallbackC1291c;
        setBackgroundColor(-16777216);
        this.f38668c = baseAdUnit;
        addView(surfaceHolderCallbackC1291c, layoutParams);
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public void a() throws IllegalStateException {
        super.setVisibility(0);
        SigmobLog.i("video showAd");
        this.f38667b.setVisibility(0);
        this.f38667b.d();
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public void b() throws IllegalStateException {
        this.f38667b.a();
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public void c() throws IllegalStateException {
        this.f38667b.b();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 == 8) {
            try {
                if (this.f38667b != null) {
                    SigmobLog.i("video GONE");
                    this.f38667b.c();
                    removeAllViews();
                }
            } catch (Throwable th) {
                SigmobLog.e("set splash ad video content error: " + th.getMessage());
            }
        }
        super.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MediaPlayer mediaPlayer) throws IllegalStateException {
        this.f38644a = mediaPlayer.getDuration() / 1000;
        mediaPlayer.setVolume(0.0f, 0.0f);
        mediaPlayer.start();
        if (this.f38669d) {
            return;
        }
        this.f38669d = true;
        SigmobLog.i("video onPrepared");
        BaseBroadcastReceiver.a(getContext(), this.f38668c.getUuid(), IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public boolean a(BaseAdUnit baseAdUnit) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String str;
        if (baseAdUnit == null) {
            str = "adUnit is null.";
        } else {
            String splashFilePath = baseAdUnit.getSplashFilePath();
            if (splashFilePath != null) {
                this.f38667b.a(0, 0);
                this.f38667b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.sigmob.sdk.splash.t
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
                        this.f38719b.a(mediaPlayer);
                    }
                });
                this.f38667b.setVideoPath(splashFilePath);
                return true;
            }
            str = "filePath is null.";
        }
        SigmobLog.e(str);
        return false;
    }
}
