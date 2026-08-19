package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;

/* loaded from: classes5.dex */
public class FeedbackTextView extends AutoResizeTextView {
    public FeedbackTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackgroundResource(k.a(context, "myoffer_bg_feedback_textview", "drawable"));
    }
}
