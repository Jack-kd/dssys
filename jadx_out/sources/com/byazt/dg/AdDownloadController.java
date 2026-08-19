package com.byazt.dg;

import android.app.Activity;
import com.byazt.b.DownloadMarketInterceptor;
import com.byazt.kj.hp;
import com.byazt.t.jl;
import com.byazt.yy.DownloadController;
import com.byazt.yy.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK, 1444})
/* loaded from: classes2.dex */
public class AdDownloadController implements DownloadController {
    public int mDownloadMode;
    public Object mExtraClickOperation;
    public JSONObject mExtraJson;
    public Object mExtraObject;
    public int mInterceptFlag;
    public boolean mIsAddToDownloadManage;
    public boolean mIsAutoDownloadOnCardShow;
    public boolean mIsEnableBackDialog;
    public int mLinkMode;
    public boolean mShouldUseNewWebView;
    public l marketStatusChangeListener;
    public boolean mEnableShowComplianceDialog = true;
    public boolean mEnableNewActivity = true;
    public boolean mEnableAH = true;
    public boolean mEnableAM = true;
    public boolean mEnableOppoAutoDownload = true;
    public DownloadMarketInterceptor mDownloadMarketInterceptor = null;
    public WeakReference<Activity> mActivityRef = null;

    @hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK, 1578})
    public static final class Builder {
        public AdDownloadController controller = new AdDownloadController();

        public AdDownloadController build() {
            return this.controller;
        }

        @Deprecated
        public Builder setDowloadChunkCount(int i2) {
            return this;
        }

        public Builder setDownloadMode(int i2) {
            this.controller.mDownloadMode = i2;
            return this;
        }

        public Builder setEnableAH(boolean z2) {
            this.controller.mEnableAH = z2;
            return this;
        }

        public Builder setEnableAM(boolean z2) {
            this.controller.mEnableAM = z2;
            return this;
        }

        public Builder setEnableNewActivity(boolean z2) {
            this.controller.mEnableNewActivity = z2;
            return this;
        }

        public Builder setEnableOppoAutoDownload(boolean z2) {
            this.controller.mEnableOppoAutoDownload = z2;
            return this;
        }

        public Builder setEnableShowComplianceDialog(boolean z2) {
            this.controller.mEnableShowComplianceDialog = z2;
            return this;
        }

        public Builder setExtraJson(JSONObject jSONObject) {
            this.controller.mExtraJson = jSONObject;
            return this;
        }

        public Builder setExtraObject(Object obj) {
            this.controller.mExtraObject = obj;
            return this;
        }

        @Deprecated
        public Builder setExtraOperation(Object obj) {
            this.controller.mExtraClickOperation = obj;
            return this;
        }

        public Builder setInterceptFlag(int i2) {
            this.controller.mInterceptFlag = i2;
            return this;
        }

        public Builder setIsAddToDownloadManage(boolean z2) {
            this.controller.mIsAddToDownloadManage = z2;
            return this;
        }

        public Builder setIsAutoDownloadOnCardShow(boolean z2) {
            this.controller.mIsAutoDownloadOnCardShow = z2;
            return this;
        }

        public Builder setIsEnableBackDialog(boolean z2) {
            this.controller.mIsEnableBackDialog = z2;
            return this;
        }

        @Deprecated
        public Builder setIsEnableMultipleDownload(boolean z2) {
            return this;
        }

        public Builder setLinkMode(int i2) {
            this.controller.mLinkMode = i2;
            return this;
        }

        public Builder setShouldUseNewWebView(boolean z2) {
            this.controller.mShouldUseNewWebView = z2;
            return this;
        }
    }

    public static AdDownloadController fromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            builder.setLinkMode(jSONObject.optInt("link_mode"));
            builder.setDownloadMode(jSONObject.optInt("download_mode"));
            builder.setIsEnableBackDialog(jSONObject.optInt("enable_back_dialog") == 1);
            builder.setIsAddToDownloadManage(jSONObject.optInt("add_to_manage") == 1);
            builder.setShouldUseNewWebView(jSONObject.optInt("use_new_webview") == 1);
            builder.setInterceptFlag(jSONObject.optInt("intercept_flag"));
            builder.setEnableShowComplianceDialog(jSONObject.optInt("enable_show_compliance_dialog", 1) == 1);
            builder.setIsAutoDownloadOnCardShow(jSONObject.optInt("is_auto_download_on_card_show") == 1);
            builder.setEnableNewActivity(jSONObject.optInt("enable_new_activity", 1) == 1);
            builder.setEnableAH(jSONObject.optInt("enable_ah", 1) == 1);
            builder.setEnableAM(jSONObject.optInt("enable_am", 1) == 1);
            builder.setExtraJson(jSONObject.optJSONObject("extra"));
            builder.setEnableOppoAutoDownload(jSONObject.optInt("enable_oppo_auto_download", 1) == 1);
        } catch (Exception e2) {
            jl.sz().hp(e2, "AdDownloadController fromJson");
        }
        return builder.build();
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableAH() {
        return this.mEnableAH;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableAM() {
        return this.mEnableAM;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableNewActivity() {
        return this.mEnableNewActivity;
    }

    public boolean enableOppoAutoDownload() {
        return this.mEnableOppoAutoDownload;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableShowComplianceDialog() {
        return this.mEnableShowComplianceDialog;
    }

    @Override // com.byazt.yy.DownloadController
    public int getDowloadChunkCount() {
        return 1;
    }

    public DownloadMarketInterceptor getDownloadMarketInterceptor() {
        return this.mDownloadMarketInterceptor;
    }

    @Override // com.byazt.yy.DownloadController
    public int getDownloadMode() {
        return this.mDownloadMode;
    }

    @Override // com.byazt.yy.DownloadController
    public Object getExtraClickOperation() {
        return this.mExtraClickOperation;
    }

    @Override // com.byazt.yy.DownloadController
    public JSONObject getExtraJson() {
        return this.mExtraJson;
    }

    @Override // com.byazt.yy.DownloadController
    public Object getExtraObject() {
        return this.mExtraObject;
    }

    @Override // com.byazt.yy.DownloadController
    public int getInterceptFlag() {
        return this.mInterceptFlag;
    }

    @Override // com.byazt.yy.DownloadController
    public int getLinkMode() {
        return this.mLinkMode;
    }

    @Override // com.byazt.yy.DownloadController
    public l getMarketStatusChangeListener() {
        return this.marketStatusChangeListener;
    }

    public Activity getWeakActivity() {
        WeakReference<Activity> weakReference = this.mActivityRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isAddToDownloadManage() {
        return this.mIsAddToDownloadManage;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isAutoDownloadOnCardShow() {
        return this.mIsAutoDownloadOnCardShow;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isEnableBackDialog() {
        return this.mIsEnableBackDialog;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isEnableMultipleDownload() {
        return false;
    }

    public void setDownloadMarketInterceptor(DownloadMarketInterceptor downloadMarketInterceptor) {
        this.mDownloadMarketInterceptor = downloadMarketInterceptor;
    }

    @Override // com.byazt.yy.DownloadController
    public void setDownloadMode(int i2) {
        this.mDownloadMode = i2;
    }

    @Override // com.byazt.yy.DownloadController
    public void setEnableNewActivity(boolean z2) {
        this.mEnableNewActivity = z2;
    }

    public void setEnableOppoAutoDownload(boolean z2) {
        this.mEnableOppoAutoDownload = z2;
    }

    @Override // com.byazt.yy.DownloadController
    public void setEnableShowComplianceDialog(boolean z2) {
        this.mEnableShowComplianceDialog = z2;
    }

    public void setExtraJson(JSONObject jSONObject) {
        this.mExtraJson = jSONObject;
    }

    public void setExtraObject(Object obj) {
        this.mExtraObject = obj;
    }

    public void setIsAutoDownloadOnCardShow(boolean z2) {
        this.mIsAutoDownloadOnCardShow = z2;
    }

    @Override // com.byazt.yy.DownloadController
    public void setLinkMode(int i2) {
        this.mLinkMode = i2;
    }

    public void setMarketStatusChangeListener(l lVar) {
        this.marketStatusChangeListener = lVar;
    }

    public void setWeakActivity(Activity activity) {
        if (activity != null) {
            this.mActivityRef = new WeakReference<>(activity);
        } else {
            this.mActivityRef = null;
        }
    }

    @Override // com.byazt.yy.DownloadController
    public boolean shouldUseNewWebView() {
        return this.mShouldUseNewWebView;
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("link_mode", Integer.valueOf(this.mLinkMode));
            jSONObject.putOpt("download_mode", Integer.valueOf(this.mDownloadMode));
            jSONObject.putOpt("enable_back_dialog", Integer.valueOf(this.mIsEnableBackDialog ? 1 : 0));
            jSONObject.putOpt("add_to_manage", Integer.valueOf(this.mIsAddToDownloadManage ? 1 : 0));
            jSONObject.putOpt("use_new_webview", Integer.valueOf(this.mShouldUseNewWebView ? 1 : 0));
            jSONObject.putOpt("intercept_flag", Integer.valueOf(this.mInterceptFlag));
            jSONObject.putOpt("enable_show_compliance_dialog", Integer.valueOf(this.mEnableShowComplianceDialog ? 1 : 0));
            jSONObject.putOpt("is_auto_download_on_card_show", Integer.valueOf(this.mIsAutoDownloadOnCardShow ? 1 : 0));
            jSONObject.putOpt("extra", this.mExtraJson);
            jSONObject.putOpt("enable_new_activity", Integer.valueOf(this.mEnableNewActivity ? 1 : 0));
            jSONObject.putOpt("enable_ah", Integer.valueOf(this.mEnableAH ? 1 : 0));
            jSONObject.putOpt("enable_am", Integer.valueOf(this.mEnableAM ? 1 : 0));
            jSONObject.putOpt("enable_oppo_auto_download", Integer.valueOf(this.mEnableOppoAutoDownload ? 1 : 0));
            return jSONObject;
        } catch (Exception e2) {
            jl.sz().hp(e2, "AdDownloadController toJson");
            return jSONObject;
        }
    }
}
