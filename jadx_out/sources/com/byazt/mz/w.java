package com.byazt.mz;

import android.content.Context;
import com.byazt.toc.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 663, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements com.byazt.eb.w {
    public com.byazt.aqw.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23357j;
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.p000if.a f23358l;

    public w(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.a aVar, boolean z2) {
        this.hp = hpVar;
        this.f23357j = z2;
        if (hpVar != null) {
            this.jx = new q(context);
            this.f23358l = aVar;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        com.byazt.iqm.l lVar = new com.byazt.iqm.l(5, this.hp.nu(), this.hp.lv());
        lVar.hp(this.f23357j);
        this.jx.hp(lVar, new com.byazt.qjq.j() { // from class: com.byazt.mz.w.1
            @Override // com.byazt.qjq.j
            public void hp(List<com.byazt.rt.jx> list) {
                com.byazt.aqw.l lVarWv;
                if (list == null) {
                    hp(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (w.this.f23358l != null) {
                    com.byazt.tl.l lVarE = (w.this.hp == null || (lVarWv = w.this.hp.wv()) == null) ? null : lVarWv.e();
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.byazt.rt.jx> it = list.iterator();
                    while (it.hasNext()) {
                        linkedList.add(new j(w.this.jx, it.next(), w.this.jx.ec(), lVarE));
                    }
                    w.this.f23358l.hp(linkedList);
                }
            }

            @Override // com.byazt.qjq.j
            public void hp(com.byazt.dq.hp hpVar) {
                if (hpVar == null || w.this.f23358l == null) {
                    return;
                }
                w.this.f23358l.hp(hpVar.hp, hpVar.f19238l);
            }
        });
    }
}
