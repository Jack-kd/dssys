package com.byazt.t;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fu.DownloadInfo;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yy.DownloadModel;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, 150})
/* loaded from: classes3.dex */
public class q {
    public static boolean hp(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public static String j(DownloadModel downloadModel) {
        try {
            if (TextUtils.isEmpty(downloadModel.getLogExtra())) {
                return null;
            }
            return new JSONObject(downloadModel.getLogExtra()).optString(AdBaseConstants.MARKET_OPEN_INTENT_EXTRA);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String jx(DownloadModel downloadModel) {
        try {
            if (TextUtils.isEmpty(downloadModel.getLogExtra())) {
                return null;
            }
            return new JSONObject(downloadModel.getLogExtra()).optString("clickid");
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean l(int i2) {
        return i2 == 2 || i2 == 1;
    }

    public static boolean hp(DownloadModel downloadModel) {
        return downloadModel.isAd() && (downloadModel instanceof AdDownloadModel) && downloadModel.getModelType() == 1;
    }

    public static boolean l(DownloadModel downloadModel) {
        return downloadModel != null && downloadModel.getModelType() == 2;
    }

    public static boolean hp(DownloadModel downloadModel, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return downloadModel.isAd() && iDownloadButtonClickListener != null;
    }

    public static int hp(@NonNull com.byazt.w.w wVar, boolean z2, com.byazt.ni.w wVar2) {
        int iHp;
        if (wVar2 == null || TextUtils.isEmpty(wVar2.hp()) || wVar2.getContext() == null) {
            return 0;
        }
        try {
            iHp = hp(wVar2, wVar2.hp());
        } catch (Throwable th) {
            jl.sz().hp(th, "redirectSavePathIfPossible");
            iHp = 4;
        }
        wVar2.hp(iHp);
        if (iHp == 0) {
            wVar2.hp(new com.byazt.n.hp());
        }
        if (!wVar2.rv()) {
            wVar2.hp(new com.byazt.n.l());
        }
        int iHp2 = com.byazt.ni.j.gu().hp(wVar2);
        com.byazt.zv.l lVarHp = hp(wVar, iHp2);
        com.byazt.w.a.hp().hp(lVarHp);
        lVarHp.eb(iHp2);
        lVarHp.s(System.currentTimeMillis());
        lVarHp.q(0L);
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(wVar2.fi());
        if (!hp(wVar2, hpVarHp, iHp2) && wVar.f26873l.isShowToast()) {
            String startToast = wVar.f26873l.getStartToast();
            if (TextUtils.isEmpty(startToast)) {
                startToast = hpVarHp.jx("download_start_toast_text");
            }
            if (TextUtils.isEmpty(startToast)) {
                startToast = z2 ? "已开始下载，可在\"我的\"里查看管理" : "已开始下载";
            }
            jl.jx().hp(2, wVar2.getContext(), wVar.f26873l, startToast, null, 0);
        }
        return iHp2;
    }

    private static com.byazt.zv.l hp(com.byazt.w.w wVar, int i2) {
        com.byazt.zv.l lVar = new com.byazt.zv.l(wVar.f26873l, wVar.jx, wVar.f26872j, i2);
        boolean z2 = true;
        if (com.byazt.jb.hp.hp(i2).hp("download_event_opt", 1) > 1) {
            try {
                String packageName = wVar.f26873l.getPackageName();
                if (!TextUtils.isEmpty(packageName)) {
                    if (jl.getContext().getPackageManager().getPackageInfo(packageName, 0) == null) {
                        z2 = false;
                    }
                    lVar.s(z2);
                }
            } catch (Throwable unused) {
            }
        }
        return lVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean hp(com.byazt.ni.w r11, @androidx.annotation.NonNull com.byazt.jb.hp r12, int r13) {
        /*
            java.lang.String r11 = "ah_plans"
            org.json.JSONArray r11 = r12.w(r11)
            r0 = 0
            if (r11 == 0) goto Lc7
            int r1 = r11.length()
            if (r1 != 0) goto L11
            goto Lc7
        L11:
            int r1 = r11.length()
            r2 = 0
            r3 = r0
            r4 = r2
        L18:
            r5 = 1
            if (r3 >= r1) goto Laf
            org.json.JSONObject r6 = r11.optJSONObject(r3)
            if (r6 == 0) goto Lab
            java.lang.String r7 = "type"
            java.lang.String r7 = r6.optString(r7)
            java.lang.String r8 = "plan_c"
            if (r7 == r8) goto L31
            boolean r9 = com.byazt.wm.hp.hp(r6)
            if (r9 == 0) goto Lab
        L31:
            r7.getClass()
            int r9 = r7.hashCode()
            r10 = -1
            switch(r9) {
                case -985763637: goto L89;
                case -985763636: goto L7e;
                case -985763635: goto L75;
                case -985763634: goto L6a;
                case -985763633: goto L5f;
                case -985763632: goto L54;
                case -985763631: goto L49;
                case -985763630: goto L3e;
                default: goto L3c;
            }
        L3c:
            goto L93
        L3e:
            java.lang.String r8 = "plan_h"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L47
            goto L93
        L47:
            r10 = 7
            goto L93
        L49:
            java.lang.String r8 = "plan_g"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L52
            goto L93
        L52:
            r10 = 6
            goto L93
        L54:
            java.lang.String r8 = "plan_f"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L5d
            goto L93
        L5d:
            r10 = 5
            goto L93
        L5f:
            java.lang.String r8 = "plan_e"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L68
            goto L93
        L68:
            r10 = 4
            goto L93
        L6a:
            java.lang.String r8 = "plan_d"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L73
            goto L93
        L73:
            r10 = 3
            goto L93
        L75:
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L7c
            goto L93
        L7c:
            r10 = 2
            goto L93
        L7e:
            java.lang.String r8 = "plan_b"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L87
            goto L93
        L87:
            r10 = r5
            goto L93
        L89:
            java.lang.String r8 = "plan_a"
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L92
            goto L93
        L92:
            r10 = r0
        L93:
            switch(r10) {
                case 0: goto La2;
                case 1: goto La2;
                case 2: goto La0;
                case 3: goto Laf;
                case 4: goto La2;
                case 5: goto La2;
                case 6: goto L97;
                case 7: goto Laf;
                default: goto L96;
            }
        L96:
            goto Lab
        L97:
            com.byazt.ni.hp r6 = com.byazt.ni.l.l(r6, r12)
            int r6 = r6.f23588l
            if (r6 != 0) goto Lab
            goto Laf
        La0:
            r4 = r6
            goto Lab
        La2:
            com.byazt.ni.hp r6 = com.byazt.ni.l.hp(r6, r12)
            int r6 = r6.f23588l
            if (r6 != 0) goto Lab
            goto Laf
        Lab:
            int r3 = r3 + 1
            goto L18
        Laf:
            if (r4 == 0) goto Lc7
            java.lang.String r11 = "show_unknown_source_on_startup"
            int r11 = r4.optInt(r11)
            if (r11 != r5) goto Lc7
            android.content.Context r11 = com.byazt.yk.jx.mp()
            com.byazt.ni.hp r12 = new com.byazt.ni.hp
            r12.<init>()
            boolean r11 = com.byazt.ni.l.hp(r11, r2, r4, r13, r12)
            return r11
        Lc7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.t.q.hp(com.byazt.ni.w, com.byazt.jb.hp, int):boolean");
    }

    public static String hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        try {
            String extra = downloadInfo.getExtra();
            if (!TextUtils.isEmpty(extra)) {
                return new JSONObject(extra).optString("notification_jump_url", null);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static int hp(com.byazt.ni.w wVar, String str) {
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(wVar.fi());
        JSONObject jSONObjectJ = hpVarHp.j("download_dir");
        if (jSONObjectJ == null || TextUtils.isEmpty(jSONObjectJ.optString("dir_name"))) {
            return -1;
        }
        String strL = wVar.l();
        String strMs = wVar.ms();
        if (TextUtils.isEmpty(strMs)) {
            strMs = com.byazt.ni.jx.hp(str, strL, wVar.jl(), true);
        }
        if (strMs.length() > 255) {
            strMs = strMs.substring(strMs.length() - 255);
        }
        if (TextUtils.isEmpty(strL)) {
            strL = strMs;
        }
        String strJx = wVar.jx();
        if (TextUtils.isEmpty(strJx)) {
            strJx = com.byazt.ni.jx.l();
        }
        String str2 = strJx + File.separator + com.byazt.ni.jx.hp(strL, hpVarHp);
        DownloadInfo downloadInfoHp = com.byazt.ni.j.gu().hp(wVar.getContext(), str);
        if (downloadInfoHp != null && downloadInfoHp.isSavePathRedirected()) {
            wVar.jx(downloadInfoHp.getSavePath());
            try {
                wVar.hp(new JSONObject(downloadInfoHp.getDownloadSettingString()));
                return 0;
            } catch (Throwable unused) {
                return 0;
            }
        }
        if (downloadInfoHp != null || !AdBaseConstants.MIME_APK.equalsIgnoreCase(com.byazt.ni.j.gu().hp(strMs, wVar.jl()))) {
            return downloadInfoHp != null ? 8 : 9;
        }
        int iHp = com.byazt.ni.l.hp(hpVarHp);
        if (iHp == 0) {
            wVar.jx(str2);
        }
        return iHp;
    }
}
