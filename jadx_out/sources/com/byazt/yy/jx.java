package com.byazt.yy;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 580, 30})
@Deprecated
/* loaded from: classes3.dex */
public class jx implements DownloadController {
    @Override // com.byazt.yy.DownloadController
    public boolean enableAH() {
        return true;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableAM() {
        return true;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableNewActivity() {
        return true;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean enableShowComplianceDialog() {
        return true;
    }

    @Override // com.byazt.yy.DownloadController
    public int getDowloadChunkCount() {
        return 0;
    }

    @Override // com.byazt.yy.DownloadController
    public int getDownloadMode() {
        return 0;
    }

    @Override // com.byazt.yy.DownloadController
    public Object getExtraClickOperation() {
        return null;
    }

    @Override // com.byazt.yy.DownloadController
    public JSONObject getExtraJson() {
        return null;
    }

    @Override // com.byazt.yy.DownloadController
    public Object getExtraObject() {
        return null;
    }

    @Override // com.byazt.yy.DownloadController
    public int getInterceptFlag() {
        return 0;
    }

    @Override // com.byazt.yy.DownloadController
    public int getLinkMode() {
        return 0;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isAddToDownloadManage() {
        return false;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isAutoDownloadOnCardShow() {
        return false;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isEnableBackDialog() {
        return false;
    }

    @Override // com.byazt.yy.DownloadController
    public boolean isEnableMultipleDownload() {
        return false;
    }

    @Override // com.byazt.yy.DownloadController
    public void setDownloadMode(int i2) {
    }

    @Override // com.byazt.yy.DownloadController
    public void setEnableNewActivity(boolean z2) {
    }

    @Override // com.byazt.yy.DownloadController
    public void setEnableShowComplianceDialog(boolean z2) {
    }

    @Override // com.byazt.yy.DownloadController
    public void setLinkMode(int i2) {
    }

    @Override // com.byazt.yy.DownloadController
    public boolean shouldUseNewWebView() {
        return false;
    }
}
