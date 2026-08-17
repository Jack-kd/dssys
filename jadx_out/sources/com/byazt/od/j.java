package com.byazt.od;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.yk.Downloader;
import java.io.File;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1768, 38})
/* loaded from: classes3.dex */
public class j {
    public static hp hp(Context context, String str, JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (downloadInfo != null && context != null && jSONObject != null) {
            String savePath = downloadInfo.getSavePath();
            if (!TextUtils.isEmpty(savePath) && !TextUtils.isEmpty(str)) {
                File file = new File(savePath);
                com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo);
                if (str.equals("v1")) {
                    return new e(context, hpVarHp, downloadInfo.getTargetFilePath());
                }
                if (str.equals("v2")) {
                    return new gu(context, hpVarHp, file.getAbsolutePath());
                }
                if (str.equals("v3")) {
                    return new jl(context, hpVarHp, file.getAbsolutePath());
                }
                if (str.equals("o1")) {
                    return new eb(context, hpVarHp, file.getAbsolutePath());
                }
                if (str.equals("o2")) {
                    return new s(context, hpVarHp, file.getAbsolutePath());
                }
                if (str.equals("o3")) {
                    String dBJsonString = downloadInfo.getDBJsonString("file_content_uri");
                    if (!TextUtils.isEmpty(dBJsonString)) {
                        return new q(context, hpVarHp, file.getAbsolutePath(), dBJsonString, downloadInfo.getName());
                    }
                } else {
                    if (str.equals("custom")) {
                        return new jx(context, hpVarHp, file.getAbsolutePath(), jSONObject);
                    }
                    if (str.equals("vbi")) {
                        return new zy(context, hpVarHp, com.byazt.ni.jx.hp(downloadInfo.getId(), Downloader.getInstance(context).getDownloadFileUriProvider(downloadInfo.getId()), context, com.byazt.ni.j.gu().w(), new File(downloadInfo.getSavePath() + File.separator + downloadInfo.getName())).toString());
                    }
                }
            }
        }
        return null;
    }

    public static boolean hp(Context context, String str, JSONObject jSONObject, com.byazt.jb.hp hpVar) {
        hp zyVar;
        if (context != null && str != null) {
            String strL = com.byazt.ni.jx.l();
            if (!TextUtils.isEmpty(strL) && !TextUtils.isEmpty(str)) {
                if (com.byazt.wm.w.j() && str.equals("v1")) {
                    zyVar = new e(context, hpVar, strL);
                } else if (com.byazt.wm.w.j() && str.equals("v2")) {
                    zyVar = new gu(context, hpVar, strL);
                } else if (com.byazt.wm.w.j() && str.equals("v3")) {
                    zyVar = new jl(context, hpVar, strL);
                } else if (com.byazt.wm.w.w() && str.equals("o1")) {
                    zyVar = new eb(context, hpVar, strL);
                } else if (com.byazt.wm.w.w() && str.equals("o2")) {
                    zyVar = new s(context, hpVar, strL);
                } else if (com.byazt.wm.w.w() && str.equals("o3")) {
                    zyVar = new q(context, hpVar, strL, strL, strL);
                } else if (com.byazt.wm.w.j() && str.equals("custom")) {
                    zyVar = new jx(context, hpVar, strL, jSONObject);
                } else {
                    zyVar = (com.byazt.wm.w.j() && str.equals("vbi")) ? new zy(context, hpVar, strL) : null;
                }
                if (zyVar != null && zyVar.hp()) {
                    return true;
                }
            }
        }
        return false;
    }
}
