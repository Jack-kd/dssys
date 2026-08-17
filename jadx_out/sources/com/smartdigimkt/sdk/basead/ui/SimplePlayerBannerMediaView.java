package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;

/* loaded from: classes5.dex */
public class SimplePlayerBannerMediaView extends SimplePlayerMediaView {
    public SimplePlayerBannerMediaView(@NonNull Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView
    public final void a() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_simple_player_banner_media_ad_view", "layout"), this);
    }

    public SimplePlayerBannerMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SimplePlayerBannerMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
