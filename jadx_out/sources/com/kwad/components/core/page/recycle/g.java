package com.kwad.components.core.page.recycle;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes4.dex */
public class g extends RecyclerView {
    private boolean afu;

    public g(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public void removeDetachedView(View view, boolean z2) {
        if (this.afu) {
            super.removeDetachedView(view, z2);
        } else {
            super.removeDetachedView(view, z2);
        }
    }

    public void setIngoreTmpDetachedFlag(boolean z2) {
        this.afu = z2;
    }

    public g(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public g(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
