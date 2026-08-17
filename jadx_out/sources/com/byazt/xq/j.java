package com.byazt.xq;

import com.byazt.fu.DownloadInfo;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 38})
/* loaded from: classes3.dex */
public class j {
    public static boolean hp(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.byazt.jb.hp.hp(downloadInfo.getId()).l("optimize_head_request") == 1;
    }

    public static boolean l(DownloadInfo downloadInfo) {
        return downloadInfo != null && com.byazt.jb.hp.hp(downloadInfo.getId()).l("optimize_save_path") == 1;
    }
}
