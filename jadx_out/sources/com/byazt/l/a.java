package com.byazt.l;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.b.gu;
import com.byazt.b.ns;
import com.byazt.b.sz;
import com.byazt.b.vv;
import com.byazt.b.zy;
import com.byazt.ei.hp;
import com.byazt.fn.nu;
import com.byazt.fu.DownloadInfo;
import com.byazt.ni.DownloadHandlerService;
import com.byazt.t.jl;
import com.byazt.yk.Downloader;
import com.byazt.yk.DownloaderBuilder;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 34, 54})
/* loaded from: classes3.dex */
public class a implements com.byazt.ec.hp {
    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull com.byazt.b.q qVar) {
        jl.hp(qVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull com.byazt.b.eb ebVar) {
        jl.hp(ebVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull zy zyVar) {
        jl.hp(zyVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull com.byazt.b.s sVar) {
        jl.hp(sVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull com.byazt.b.jx jxVar) {
        jl.hp(jxVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull gu guVar) {
        jl.hp(guVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull com.byazt.v.hp hpVar) {
        jl.hp(hpVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(String str) {
        jl.hp(str);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(com.byazt.f.jx jxVar) {
        jl.hp(jxVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(@NonNull final com.byazt.b.l lVar) {
        jl.hp(lVar);
        com.byazt.ei.hp.hp().hp(new hp.jx() { // from class: com.byazt.l.a.1
        });
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(DownloaderBuilder downloaderBuilder) {
        if (downloaderBuilder.getNotificationClickCallback() == null) {
            downloaderBuilder.notificationClickCallback(new nu() { // from class: com.byazt.l.a.2
                private boolean j(DownloadInfo downloadInfo) {
                    ns nsVarEc = jl.ec();
                    if (nsVarEc == null) {
                        return false;
                    }
                    com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
                    String strHp = (lVarHp == null || !lVarHp.jx()) ? com.byazt.t.q.hp(downloadInfo) : com.byazt.jb.hp.hp(downloadInfo.getId()).hp("ad_notification_jump_url", (String) null);
                    if (TextUtils.isEmpty(strHp)) {
                        return false;
                    }
                    return nsVarEc.hp(jl.getContext(), strHp);
                }

                @Override // com.byazt.fn.nu
                public boolean hp(DownloadInfo downloadInfo) throws JSONException {
                    com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
                    if (hpVarHp.l("notification_opt_2") != 1) {
                        boolean zJ = j(downloadInfo);
                        if (hpVarHp.hp("disable_delete_dialog", 0) == 1) {
                            return true;
                        }
                        return zJ;
                    }
                    if (downloadInfo.getStatus() == -2) {
                        DownloadHandlerService.hp(jl.getContext(), downloadInfo, com.byazt.ni.j.gu().jx(), Downloader.getInstance(jl.getContext()).getDownloadNotificationEventListener(downloadInfo.getId()));
                    }
                    return true;
                }

                @Override // com.byazt.fn.nu
                public boolean jx(DownloadInfo downloadInfo) throws JSONException {
                    if (downloadInfo == null) {
                        return false;
                    }
                    com.byazt.zv.l lVarHp = com.byazt.w.a.hp().hp(downloadInfo);
                    if (lVarHp != null) {
                        com.byazt.j.hp.hp(lVarHp);
                    } else {
                        com.byazt.y.q.l(jl.getContext(), downloadInfo.getPackageName());
                    }
                    com.byazt.li.l.hp().a(downloadInfo.getId());
                    return true;
                }

                @Override // com.byazt.fn.nu
                public boolean l(DownloadInfo downloadInfo) {
                    return false;
                }
            });
        }
        downloaderBuilder.addDownloadCompleteHandler(new com.byazt.n.jx());
        Downloader.initOrCover(downloaderBuilder, true);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(com.byazt.f.eb ebVar) {
        com.byazt.ni.j.gu().hp(ebVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(vv vvVar) {
        jl.hp(vvVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(sz szVar) {
        jl.hp(szVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public com.byazt.ec.hp hp(com.byazt.b.e eVar) {
        jl.hp(eVar);
        return this;
    }

    @Override // com.byazt.ec.hp
    public void hp() throws JSONException {
        if (!jl.b()) {
            com.byazt.u.jx.hp().hp("ttdownloader init error");
        }
        jl.hp(com.byazt.u.jx.hp());
        try {
            com.byazt.ni.j.gu().l(jl.cx());
        } catch (Exception unused) {
        }
        com.byazt.ni.j.gu().hp(hp.hp());
        w.hp().l(new Runnable() { // from class: com.byazt.l.a.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.wm.w.hp("");
                if (com.byazt.wm.w.v()) {
                    com.byazt.yk.jx.hp(true);
                }
                if (com.byazt.jb.hp.jx().hp("disable_security_init", 1) == 1) {
                    com.byazt.wm.a.hp(jl.getContext());
                }
            }
        });
    }
}
