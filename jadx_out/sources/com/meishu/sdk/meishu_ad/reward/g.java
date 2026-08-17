package com.meishu.sdk.meishu_ad.reward;

import android.media.MediaPlayer;
import com.meishu.sdk.R;

/* loaded from: classes4.dex */
public class g extends com.meishu.sdk.core.safe.h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32479a;

    public g(FullScreenMediaView fullScreenMediaView) {
        this.f32479a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.h
    public void a(MediaPlayer mediaPlayer) {
        this.f32479a.f32459d = mediaPlayer;
        mediaPlayer.setVideoScalingMode(1);
        this.f32479a.f32469n = true;
        FullScreenMediaView fullScreenMediaView = this.f32479a;
        if (fullScreenMediaView.f32471p) {
            fullScreenMediaView.e();
        } else {
            fullScreenMediaView.f32457b.b(R.id.ms_controlbar_video_play_button).d(0);
            fullScreenMediaView.f32457b.b(R.id.ms_center_play_button).d(0);
            fullScreenMediaView.f32457b.b(R.id.ms_controlbar_video_pause_button).d(8);
            fullScreenMediaView.f32458c.a(0);
            fullScreenMediaView.f32458c.setmTotalTime(fullScreenMediaView.f32459d.getDuration());
            if (fullScreenMediaView.f32470o.hasMessages(1)) {
                fullScreenMediaView.f32470o.removeMessages(1);
            }
        }
        this.f32479a.f32458c.setVisibility(0);
        this.f32479a.f32471p = false;
        com.meishu.sdk.meishu_ad.nativ.e eVar = this.f32479a.f32462g;
        if (eVar != null) {
            eVar.onVideoLoaded();
        }
    }
}
