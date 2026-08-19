package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.graphics.Color;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.smartdigimkt.h2.i;
import com.smartdigimkt.sdk.basead.ui.GuideToClickView;

/* loaded from: classes5.dex */
public class FingerG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public GuideToClickView f43849h;

    /* renamed from: i, reason: collision with root package name */
    public int f43850i;

    public FingerG2CV2View(Context context) {
        super(context);
        this.f43850i = MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        setGravity(17);
        GuideToClickView guideToClickView = new GuideToClickView(getContext());
        this.f43849h = guideToClickView;
        guideToClickView.setFingerViewMode(this.f43850i);
        addView(this.f43849h, -2, -2);
        setClipChildren(false);
        if (this.f43840e != null) {
            setOnClickListener(new i(this));
        }
    }

    public void setFingerViewMode(int i2) {
        if (i2 == 503) {
            setBackgroundColor(Color.parseColor("#66000000"));
        }
        this.f43850i = i2;
        GuideToClickView guideToClickView = this.f43849h;
        if (guideToClickView != null) {
            guideToClickView.setFingerViewMode(i2);
        }
    }
}
