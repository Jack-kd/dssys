package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class MuteImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private boolean f5019a;

    public MuteImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5019a = false;
    }

    public void setMute(boolean z2) {
        if (z2) {
            setSelected(true);
        } else {
            setSelected(false);
        }
    }
}
