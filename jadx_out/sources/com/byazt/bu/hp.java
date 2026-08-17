package com.byazt.bu;

import android.content.Context;
import android.content.res.Resources;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.li.hp {

    /* renamed from: a, reason: collision with root package name */
    public String f18676a;

    /* renamed from: j, reason: collision with root package name */
    public String f18677j;
    public final Resources jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f18678l;

    /* renamed from: w, reason: collision with root package name */
    public String f18679w;

    public hp(Context context, int i2, String str, String str2, String str3, String str4) {
        super(i2, str);
        this.f18679w = str2;
        this.f18677j = str3;
        this.f18676a = str4;
        Context applicationContext = context.getApplicationContext();
        this.f18678l = applicationContext;
        this.jx = applicationContext.getResources();
    }

    @Override // com.byazt.li.hp
    public void hp(DownloadInfo downloadInfo) {
        super.hp(downloadInfo);
        this.f18679w = downloadInfo.getSavePath();
        this.f18677j = downloadInfo.getName();
        this.f18676a = downloadInfo.getExtra();
    }

    @Override // com.byazt.li.hp
    public void hp(BaseException baseException, boolean z2) {
        if (this.f18678l == null) {
            return;
        }
        try {
            com.byazt.f.jx jxVarHp = com.byazt.ni.j.gu().hp();
            if (jxVarHp != null) {
                this.hp = hp(jxVarHp, baseException, z2);
            }
            hp(this.hp);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x02e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.app.Notification hp(com.byazt.f.jx r23, com.byazt.io.BaseException r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bu.hp.hp(com.byazt.f.jx, com.byazt.io.BaseException, boolean):android.app.Notification");
    }

    private boolean hp(BaseException baseException, com.byazt.jb.hp hpVar, DownloadInfo downloadInfo) {
        return baseException != null && (baseException.getErrorCode() == 1013 || baseException.getErrorCode() == 1049) && downloadInfo != null && AdBaseConstants.MIME_APK.contains(downloadInfo.getMimeType()) && hpVar.hp("notification_text_opt", 0) == 1;
    }
}
