package com.smartdigimkt.sdk.basead.ui.component;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;

/* loaded from: classes5.dex */
public class LargeCTAButtonLayout extends CTAButtonLayout {
    public LargeCTAButtonLayout(Context context) {
        this(context, null);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout
    public final int a(c cVar, a aVar, boolean z2) {
        return 2;
    }

    public LargeCTAButtonLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LargeCTAButtonLayout(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
