package com.byazt.t;

import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.rx.BaseConstants;
import com.byazt.y.k;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, 28})
/* loaded from: classes3.dex */
public class hp implements k.hp {
    public static final String hp = "hp";

    /* renamed from: l, reason: collision with root package name */
    public static hp f25628l;

    /* renamed from: j, reason: collision with root package name */
    public long f25629j;
    public com.byazt.y.k jx = new com.byazt.y.k(Looper.getMainLooper(), this);

    private hp() {
    }

    public static hp hp() {
        if (f25628l == null) {
            synchronized (hp.class) {
                try {
                    if (f25628l == null) {
                        f25628l = new hp();
                    }
                } finally {
                }
            }
        }
        return f25628l;
    }

    public void hp(@NonNull DownloadInfo downloadInfo, long j2, long j3, String str, String str2, String str3, String str4) {
        int i2;
        com.byazt.w.hp hpVar = new com.byazt.w.hp(downloadInfo.getId(), j2, j3, str, str2, str3, str4);
        if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("back_miui_silent_install", 1) == 0 && ((com.byazt.wm.w.zy() || com.byazt.wm.w.k()) && com.byazt.xq.e.hp(jl.getContext(), "com.miui.securitycore", "com.miui.enterprise.service.EntInstallService"))) {
            if (com.byazt.xq.a.hp(downloadInfo.getTempCacheData().get("extra_silent_install_succeed"), false)) {
                Message messageObtainMessage = this.jx.obtainMessage(200, hpVar);
                messageObtainMessage.arg1 = 2;
                this.jx.sendMessageDelayed(messageObtainMessage, r13.hp("check_silent_install_interval", BaseConstants.Time.MINUTE));
                return;
            }
            com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(hpVar.f26850l);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ttdownloader_type", "miui_silent_install");
                jSONObject.put("ttdownloader_message", "miui_silent_install_failed: has not started service");
                i2 = 5;
            } catch (Exception unused) {
                i2 = -1;
            }
            jl.a().hp(null, new BaseException(i2, jSONObject.toString()), i2);
            com.byazt.r.hp.hp().hp(com.byazt.ih.l.AD_TAG_FEED, "ah_result", jSONObject, lVarJ);
        }
        if (com.byazt.y.w.jx()) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f25629j;
            long j4 = com.byazt.y.w.j();
            if (jCurrentTimeMillis < com.byazt.y.w.w()) {
                long jW = com.byazt.y.w.w() - jCurrentTimeMillis;
                j4 += jW;
                this.f25629j = System.currentTimeMillis() + jW;
            } else {
                this.f25629j = System.currentTimeMillis();
            }
            com.byazt.y.k kVar = this.jx;
            kVar.sendMessageDelayed(kVar.obtainMessage(200, hpVar), j4);
        }
    }

    private void hp(com.byazt.w.hp hpVar, int i2) throws JSONException {
        int i3;
        if (jl.jl() == null || jl.jl().hp() || hpVar == null) {
            return;
        }
        if (2 == i2) {
            com.byazt.zv.l lVarJ = com.byazt.w.a.hp().j(hpVar.f26850l);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ttdownloader_type", "miui_silent_install");
                if (com.byazt.y.zy.w(jl.getContext(), hpVar.f26849j)) {
                    jSONObject.put("ttdownloader_message", "miui_silent_install_succeed");
                    i3 = 4;
                } else {
                    jSONObject.put("ttdownloader_message", "miui_silent_install_failed: has started service");
                    i3 = 5;
                }
            } catch (Exception unused) {
                i3 = -1;
            }
            jl.a().hp(null, new BaseException(i3, jSONObject.toString()), i3);
            com.byazt.r.hp.hp().hp(com.byazt.ih.l.AD_TAG_FEED, "ah_result", jSONObject, lVarJ);
        }
        if (com.byazt.y.zy.w(jl.getContext(), hpVar.f26849j)) {
            com.byazt.r.hp.hp().l("delayinstall_installed", hpVar.f26850l);
            return;
        }
        if (!com.byazt.y.zy.hp(hpVar.eb)) {
            com.byazt.r.hp.hp().l("delayinstall_file_lost", hpVar.f26850l);
        } else if (com.byazt.m.hp.hp().hp(hpVar.f26849j)) {
            com.byazt.r.hp.hp().l("delayinstall_conflict_with_back_dialog", hpVar.f26850l);
        } else {
            com.byazt.r.hp.hp().l("delayinstall_install_start", hpVar.f26850l);
            com.byazt.ni.j.hp(jl.getContext(), (int) hpVar.hp);
        }
    }

    @Override // com.byazt.y.k.hp
    public void hp(Message message) throws JSONException {
        if (message.what != 200) {
            return;
        }
        hp((com.byazt.w.hp) message.obj, message.arg1);
    }
}
