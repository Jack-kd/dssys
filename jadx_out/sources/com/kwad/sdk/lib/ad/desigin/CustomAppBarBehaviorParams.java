package com.kwad.sdk.lib.ad.desigin;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public class CustomAppBarBehaviorParams {
    public final boolean mEnableNestedFling;
    public final boolean mEnableRebound;
    public final int mExtraFixedSize;
    public final int mFlingConsumeViewId;
    public final int mReboundMaxOffset;
    public final int mReboundViewId;

    public static class a {
        private boolean mEnableNestedFling;
        private boolean mEnableRebound;
        private int mExtraFixedSize;
        private int mFlingConsumeViewId;
        private int mReboundMaxOffset;
        private int mReboundViewId;
    }

    private CustomAppBarBehaviorParams(a aVar) {
        this.mFlingConsumeViewId = aVar.mFlingConsumeViewId;
        this.mExtraFixedSize = aVar.mExtraFixedSize;
        this.mEnableNestedFling = aVar.mEnableNestedFling;
        this.mReboundMaxOffset = aVar.mReboundMaxOffset;
        this.mReboundViewId = aVar.mReboundViewId;
        this.mEnableRebound = aVar.mEnableRebound;
    }
}
