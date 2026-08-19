package com.byazt.ag;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.dnb.gu;
import com.byazt.jz.sz;
import com.byazt.um.zy;
import com.byazt.vu.eb;
import com.byazt.vu.s;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.a;
import com.byazt.ymw.vv;

@com.byazt.kj.hp(hp = {0, 1, 233, 38})
/* loaded from: classes2.dex */
public class j implements com.byazt.luy.hp {
    public eb hp = new eb();

    private void l(com.byazt.vu.l lVar, com.byazt.cx.jx<s, eb> jxVar) {
        if (lVar == null || jxVar == null) {
            return;
        }
        this.hp.l(lVar.zy());
        this.hp.hp(lVar.l());
        int iS = lVar.s();
        com.byazt.tw.j jVarEb = lVar.eb();
        this.hp.hp(true);
        if (jVarEb == null) {
            this.hp.l(2);
            this.hp.hp("no video info");
            jxVar.hp(this.hp);
            return;
        }
        String video_url = jVarEb.getVideo_url();
        if (TextUtils.isEmpty(video_url)) {
            this.hp.l(2);
            this.hp.hp("no video url");
            jxVar.hp(this.hp);
            return;
        }
        String fileHash = jVarEb.getFileHash();
        if (TextUtils.isEmpty(fileHash)) {
            fileHash = a.l(video_url);
        }
        if (TextUtils.isEmpty(fileHash)) {
            this.hp.l(2);
            this.hp.hp("no video cahce filename");
            jxVar.hp(this.hp);
            return;
        }
        com.byazt.kl.hp.hp("Splash_FullLink", "加载视频素材");
        mp mpVarL = lVar.l();
        if (mpVarL == null) {
            return;
        }
        boolean zQ = lVar.q();
        jVarEb.setRewardVideoCachedType(1);
        if (jVarEb.getVideoPreloadSize() == 0) {
            jVarEb.setVideoPreloadSize(307200);
        }
        com.byazt.tw.a aVarHp = zQ ? df.hp(2, mpVarL) : df.hp(3, mpVarL);
        aVarHp.putExtra("material_meta", mpVarL);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (gu.hp(mpVarL.qe()).isVideoCached(aVarHp)) {
            s sVar = new s(lVar.l(), lVar.zy());
            sVar.hp(true);
            sVar.jx(true);
            sVar.hp(lVar.hp());
            sVar.w(lVar.jx());
            jxVar.l(sVar);
            aVarHp.setSourceType(1);
            com.byazt.cwe.jx.hp(aVarHp, mpVarL, SystemClock.elapsedRealtime() - jElapsedRealtime);
            return;
        }
        if (sz.l().eb(String.valueOf(iS)) && !vv.j(sz.getContext())) {
            this.hp.l(2);
            this.hp.hp("network error");
            jxVar.hp(this.hp);
        } else {
            if (lVar.l() == null || lVar.l().nc() != 3) {
                com.byazt.fx.hp.hp();
                hp(aVarHp, lVar, lVar.l(), jxVar);
                return;
            }
            s sVar2 = new s(lVar.l(), lVar.zy());
            sVar2.hp(true);
            sVar2.jx(false);
            sVar2.hp(lVar.hp());
            sVar2.w(lVar.jx());
            sVar2.hp(df.hp(lVar.l()));
            jxVar.l(sVar2);
        }
    }

    @Override // com.byazt.luy.hp
    public void hp(com.byazt.vu.l lVar, com.byazt.cx.jx<s, eb> jxVar) {
        l(lVar, jxVar);
    }

    private void hp(com.byazt.tw.a aVar, final com.byazt.vu.l lVar, mp mpVar, final com.byazt.cx.jx<s, eb> jxVar) {
        if (mpVar == null || jxVar == null || lVar == null || aVar == null || df.v(mpVar) == null) {
            return;
        }
        com.byazt.cwe.jx.hp(aVar, new com.byazt.fm.hp() { // from class: com.byazt.ag.j.1
            @Override // com.byazt.um.e.hp
            public void onVideoPreloadFail(zy zyVar, int i2, String str) {
                if (jxVar != null) {
                    j.this.hp.l(2);
                    j.this.hp.hp("preload video fail");
                    jxVar.hp(j.this.hp);
                }
            }

            @Override // com.byazt.um.e.hp
            public void onVideoPreloadSuccess(zy zyVar, int i2) {
                if (jxVar != null) {
                    s sVar = new s(lVar.l(), lVar.zy());
                    sVar.hp(true);
                    sVar.jx(false);
                    sVar.hp((com.byazt.oyr.l) null);
                    sVar.hp(lVar.hp());
                    sVar.w(lVar.jx());
                    jxVar.l(sVar);
                }
            }
        });
    }
}
