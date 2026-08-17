package com.fl.saas.adx.api;

import android.app.Activity;
import android.content.Context;
import com.fl.saas.adx.base.annotation.API;
import com.fl.saas.adx.base.base.BaseAPI;
import com.fl.saas.adx.base.base.builder.InnerVideoBuilder;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.interfaces.AdViewVideoCheckListener;
import com.fl.saas.adx.base.interfaces.AdViewVideoListener;
import com.fl.saas.adx.base.manager.AdViewVideoManager;
import com.fl.saas.adx.util.DeviceUtil;

@API(AdType.RewardVideo)
/* loaded from: classes3.dex */
public class FLVideo extends BaseAPI<InnerVideoBuilder<?>, AdViewVideoManager> {

    public static class Builder extends InnerVideoBuilder.Builder<Builder, FLVideo> {
        /* JADX WARN: Multi-variable type inference failed */
        public Builder(Context context) {
            super(context);
            this.builder = this;
        }

        @Override // com.fl.saas.adx.base.base.Build
        public FLVideo build() {
            return new FLVideo(this);
        }

        public Builder setAdViewVideoCheckListener(AdViewVideoCheckListener adViewVideoCheckListener) {
            this.checkListener = adViewVideoCheckListener;
            return this;
        }

        public Builder setVideoListener(AdViewVideoListener adViewVideoListener) {
            this.listener = adViewVideoListener;
            return this;
        }
    }

    public FLVideo(InnerVideoBuilder<?> innerVideoBuilder) {
        super(innerVideoBuilder);
    }

    public boolean isReady() {
        S s2 = this.manager;
        if (s2 != 0) {
            return ((AdViewVideoManager) s2).isReady();
        }
        return false;
    }

    public void requestRewardVideo() {
        request();
    }

    @Deprecated
    public void show() {
        S s2 = this.manager;
        if (s2 != 0) {
            ((AdViewVideoManager) s2).show();
        }
    }

    public void show(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            activity = DeviceUtil.getTopActivity();
        }
        S s2 = this.manager;
        if (s2 != 0) {
            ((AdViewVideoManager) s2).show(activity);
        }
    }
}
