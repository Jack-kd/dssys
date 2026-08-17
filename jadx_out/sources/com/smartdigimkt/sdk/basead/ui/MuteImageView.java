package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public class MuteImageView extends ImageView {
    public MuteImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setMute(boolean z2) {
        if (z2) {
            setSelected(true);
        } else {
            setSelected(false);
        }
    }
}
