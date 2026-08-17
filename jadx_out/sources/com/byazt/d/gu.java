package com.byazt.d;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.yi.AdBaseConstants;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 670, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu {
    public static gu hp;

    /* renamed from: l, reason: collision with root package name */
    public List<q> f19063l;

    private gu() {
        ArrayList arrayList = new ArrayList();
        this.f19063l = arrayList;
        arrayList.add(new e());
        this.f19063l.add(new jl());
        this.f19063l.add(new a());
        this.f19063l.add(new hp());
    }

    public static gu hp() {
        if (hp == null) {
            synchronized (gu.class) {
                try {
                    if (hp == null) {
                        hp = new gu();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(com.byazt.zv.l lVar, int i2, s sVar) {
        DownloadInfo downloadInfoL;
        List<q> list = this.f19063l;
        if (list != null && list.size() != 0 && lVar != null) {
            if (!TextUtils.isEmpty(lVar.nr())) {
                downloadInfoL = com.byazt.l.e.hp((Context) null).hp(lVar.nr(), null, true);
            } else {
                downloadInfoL = com.byazt.l.e.hp((Context) null).l(lVar.hp());
            }
            if (downloadInfoL != null && AdBaseConstants.MIME_APK.equals(downloadInfoL.getMimeType())) {
                boolean z2 = com.byazt.jb.hp.hp(lVar.ec()).hp("pause_optimise_switch", 0) == 1;
                for (q qVar : this.f19063l) {
                    if (z2 || (qVar instanceof jl)) {
                        if (qVar.hp(lVar, i2, sVar)) {
                            return;
                        }
                    }
                }
                sVar.hp(lVar);
                return;
            }
            sVar.hp(lVar);
            return;
        }
        sVar.hp(lVar);
    }
}
