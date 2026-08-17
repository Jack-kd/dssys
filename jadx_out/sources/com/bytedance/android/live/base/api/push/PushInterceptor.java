package com.bytedance.android.live.base.api.push;

/* loaded from: classes3.dex */
public interface PushInterceptor {

    public static class InterceptResult {
        public boolean intercept;
        public String interceptReason;

        public InterceptResult() {
        }

        public InterceptResult(boolean z2) {
            this(z2, "");
        }

        public InterceptResult(boolean z2, String str) {
            this.intercept = z2;
            this.interceptReason = "";
        }
    }

    InterceptResult intercept();
}
