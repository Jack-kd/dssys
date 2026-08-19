package com.byazt.d;

import android.text.TextUtils;
import com.byazt.fu.DownloadInfo;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 670, 38})
/* loaded from: classes2.dex */
public class j {
    public static j hp;

    /* renamed from: l, reason: collision with root package name */
    public List<eb> f19065l;

    private j() {
        ArrayList arrayList = new ArrayList();
        this.f19065l = arrayList;
        arrayList.add(new w());
        this.f19065l.add(new l());
        this.f19065l.add(new jx());
    }

    public static j hp() {
        if (hp == null) {
            synchronized (gu.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(com.byazt.zv.l lVar, int i2, s sVar, com.byazt.m.jx jxVar) {
        DownloadInfo downloadInfoL;
        List<eb> list = this.f19065l;
        if (list == null || list.size() == 0 || lVar == null) {
            sVar.hp(lVar);
        }
        if (!TextUtils.isEmpty(lVar.nr())) {
            downloadInfoL = com.byazt.l.e.hp(com.byazt.t.jl.getContext()).hp(lVar.nr(), null, true);
        } else {
            downloadInfoL = com.byazt.l.e.hp(com.byazt.t.jl.getContext()).l(lVar.hp());
        }
        if (downloadInfoL == null) {
            downloadInfoL = Downloader.getInstance(com.byazt.t.jl.getContext()).getDownloadInfo(lVar.ec());
        }
        if (downloadInfoL != null && AdBaseConstants.MIME_APK.equals(downloadInfoL.getMimeType())) {
            if (new e().hp(lVar, i2, sVar)) {
                return;
            }
            Iterator<eb> it = this.f19065l.iterator();
            while (it.hasNext()) {
                if (it.next().hp(lVar, i2, sVar, jxVar)) {
                    return;
                }
            }
            sVar.hp(lVar);
            return;
        }
        sVar.hp(lVar);
    }
}
