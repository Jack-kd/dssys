package com.byazt.toc;

import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.gp.j;
import com.byazt.zg.hq;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 225, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends l implements com.byazt.gp.jx {
    public final int hp;

    /* renamed from: l, reason: collision with root package name */
    public j.jx f25962l;

    /* renamed from: u, reason: collision with root package name */
    public List<com.byazt.tgw.e> f25963u;

    public w(Context context, int i2) {
        super(context);
        this.hp = i2;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        super.eb();
        j.jx jxVar = this.f25962l;
        if (jxVar != null) {
            com.byazt.tgw.l lVar = this.eb;
            jxVar.hp(lVar != null ? lVar.ky() : "", true, 0, this.jx.jl());
        }
    }

    @Override // com.byazt.gp.jx
    public void hp(com.byazt.iqm.l lVar, com.byazt.rt.jx jxVar, j.jx jxVar2) throws JSONException {
        this.f25962l = jxVar2;
        hp(lVar);
        this.jx.l(true);
        this.jx.w(true);
        this.jx.cx().hp(lVar.hp());
        com.byazt.tgw.l lVarHp = hp(this.eb, jxVar);
        this.eb = lVarHp;
        this.jx.hp(lVarHp);
        this.f25948a.w(1);
        com.byazt.tgw.l lVarHp2 = com.byazt.wgi.jx.hp(this.f25948a, this.eb);
        if (lVarHp2 != null) {
            this.eb = lVarHp2;
            this.jx.hp(lVarHp2);
        }
        com.byazt.tgw.l lVar2 = this.eb;
        if (lVar2 == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 预缓存补充请求未发起，mRitConfig为null");
            j.jx jxVar3 = this.f25962l;
            if (jxVar3 != null) {
                jxVar3.hp(this.f25956w, false, 0, null);
                return;
            }
            return;
        }
        List<com.byazt.tgw.e> listRz = lVar2.rz();
        if (listRz == null || listRz.size() <= 0) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 预缓存补充请求未发起，过滤后的waterfall为空");
            j.jx jxVar4 = this.f25962l;
            if (jxVar4 != null) {
                jxVar4.hp(this.f25956w, false, 0, null);
                return;
            }
            return;
        }
        this.eb.eb((long) (r6.kg() * this.eb.a()));
        this.eb.a((long) (r6.as() * this.eb.w()));
        this.eb.l(false);
        this.eb.hp(false);
        List<com.byazt.tgw.e> listRz2 = this.eb.rz();
        this.f25963u = listRz2;
        hq.hp(listRz2, this.f25955v);
        if (com.byazt.aw.l.l()) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "--==-- 预缓存补充请求，过滤后的waterfall：");
            for (com.byazt.tgw.e eVar : this.f25963u) {
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25956w) + "waterfall: " + eVar.v() + "adnSlotId: " + eVar.vv() + ", loadSort: " + eVar.o() + ", showSort: " + eVar.d() + ", eCpm: " + eVar.b());
            }
        }
        q();
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
        super.l(hpVar);
        j.jx jxVar = this.f25962l;
        if (jxVar != null) {
            int i2 = 20005;
            if (hpVar != null && hpVar.hp == 10003) {
                i2 = 10003;
            }
            com.byazt.tgw.l lVar = this.eb;
            jxVar.hp(lVar != null ? lVar.ky() : "", false, i2, null);
        }
    }

    @Override // com.byazt.toc.l
    public com.byazt.tfn.eb q() {
        ArrayList arrayList = new ArrayList();
        int i2 = this.hp;
        if (i2 == 3) {
            arrayList.add(new com.byazt.tfn.q());
        } else if (i2 == 4) {
            arrayList.add(new com.byazt.tfn.e(this.jx, this.eb, this.f25963u));
        } else {
            arrayList.add(new com.byazt.tfn.l());
        }
        com.byazt.tfn.eb ebVar = new com.byazt.tfn.eb(arrayList);
        ebVar.hp(this.jx);
        return ebVar;
    }

    private com.byazt.tgw.l hp(com.byazt.tgw.l lVar, com.byazt.rt.jx jxVar) {
        if (lVar == null || jxVar == null) {
            return null;
        }
        double cpm = jxVar.getCpm();
        com.byazt.aw.l.l("TMe", "筛选预缓存 ecpm ".concat(String.valueOf(cpm)));
        com.byazt.tgw.l lVarClone = lVar.clone();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (com.byazt.tgw.e eVar : lVarClone.rz()) {
            if (eVar != null && eVar.xh() && eVar.b() > cpm) {
                copyOnWriteArrayList.add(eVar);
            }
        }
        if (lVarClone.k()) {
            lVarClone.l(copyOnWriteArrayList);
            return lVarClone;
        }
        lVarClone.hp(copyOnWriteArrayList);
        return lVarClone;
    }
}
