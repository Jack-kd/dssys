package com.byazt.pj;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.pj.j;
import com.byazt.tgw.e;
import com.byazt.tgw.eb;
import com.byazt.tgw.s;
import com.byazt.ur.hp;
import com.byazt.zg.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_MAX_FPS, 54})
/* loaded from: classes3.dex */
public class a implements j {
    @Override // com.byazt.pj.j
    public void hp(Map<String, com.byazt.ewl.hp> map, Context context, final jx jxVar, @NonNull final j.hp hpVar) throws JSONException {
        if (jxVar != null && jxVar.hp != null && jxVar.f24411j != null && !d.hp(jxVar.f24412l)) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(jxVar.hp.sz()) + "开启server bidding网络请求......：");
            com.byazt.lsx.a.hp(jxVar.hp, (JSONObject) null);
            com.byazt.ktq.l lVar = jxVar.f24413s;
            if (lVar != null) {
                com.byazt.owd.a.hp(lVar.jx(), "st_sb", lVar.r());
            }
            final long j2 = jxVar.eb;
            final int[] iArr = {4};
            com.byazt.ur.hp.hp().hp(map, context, jxVar, new hp.InterfaceC0388hp() { // from class: com.byazt.pj.a.1
                @Override // com.byazt.ur.hp.InterfaceC0388hp
                public void hp(eb ebVar) throws JSONException {
                    a aVar = a.this;
                    long j3 = j2;
                    jx jxVar2 = jxVar;
                    aVar.hp(j3, jxVar2.hp, jxVar2.f24411j, iArr[0], ebVar, hpVar);
                }

                @Override // com.byazt.ur.hp.InterfaceC0388hp
                public void hp(com.byazt.dq.hp hpVar2) {
                    a.this.hp(j2, iArr[0], hpVar2, jxVar.hp, hpVar);
                }
            });
            return;
        }
        hpVar.hp(null);
    }

    public void hp(String str, final long j2, final com.byazt.iqm.l lVar, final com.byazt.tgw.l lVar2, @NonNull final j.hp hpVar) {
        com.byazt.ur.hp.hp().hp(str, new hp.InterfaceC0388hp() { // from class: com.byazt.pj.a.2
            @Override // com.byazt.ur.hp.InterfaceC0388hp
            public void hp(eb ebVar) throws JSONException {
                a.this.hp(j2, lVar, lVar2, 4, ebVar, hpVar);
            }

            @Override // com.byazt.ur.hp.InterfaceC0388hp
            public void hp(com.byazt.dq.hp hpVar2) {
                a.this.hp(j2, 4, hpVar2, lVar, hpVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, com.byazt.iqm.l lVar, com.byazt.tgw.l lVar2, int i2, eb ebVar, j.hp hpVar) throws JSONException {
        int i3;
        l lVar3;
        int i4;
        e eVarA;
        if (ebVar != null) {
            com.byazt.owd.a.hp(ebVar.eb(), "0-thread", j2);
        }
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响返回.............");
        if (lVar2 != null && ebVar != null && !d.hp(ebVar.j())) {
            List<s> listJ = ebVar.j();
            lVar3 = new l();
            lVar3.jl = ebVar.hp();
            lVar3.zy = ebVar.l();
            lVar3.f24418k = ebVar.jx();
            lVar3.gu = ebVar.eb();
            lVar3.f24420q = listJ.size();
            lVar3.hp = ebVar.q();
            lVar3.f24416e = lVar2.q();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            sb.append("winners : {");
            for (s sVar : listJ) {
                if (sVar != null && (eVarA = lVar2.a(sVar.eb())) != null) {
                    e eVarW = eVarA.w();
                    sb.append(" [ AdnName:" + eVarW.v() + ",slotId:" + eVarW.vv() + ",loadSort:" + eVarW.o() + ",showSort:" + eVarW.d() + "] ");
                    eVarW.hp(sVar);
                    arrayList.add(eVarW);
                }
            }
            sb.append("}");
            if (d.hp(arrayList)) {
                i3 = d.hp(ebVar.q()) ? i2 : 2;
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响应失败......：数据有返回，但没有返回winner数据......");
            } else {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响应成功......：" + sb.toString());
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.addAll(arrayList);
                List<e> listHp = hp(ebVar.q(), lVar2, lVar3);
                if (listHp != null && listHp.size() > 0) {
                    com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响应成功......waterfall+server bidding物料......");
                    copyOnWriteArrayList.addAll(listHp);
                    i4 = 1;
                } else {
                    com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响应成功......server bidding物料......");
                    i4 = 3;
                }
                lVar3.f24419l = copyOnWriteArrayList;
                i3 = i4;
            }
        } else {
            i3 = (ebVar == null || d.hp(ebVar.q())) ? i2 : 2;
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响应失败......没有返回serverBiddingModel相关数据");
            lVar3 = null;
        }
        if (ebVar != null) {
            String strA = ebVar.a();
            if (!TextUtils.isEmpty(strA)) {
                if (lVar3 == null) {
                    lVar3 = new l();
                }
                lVar3.f24417j = strA;
            }
            if (ebVar.s()) {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding发现config过期了，需要重新拉取配置......：");
                if (lVar3 == null) {
                    lVar3 = new l();
                }
                lVar3.jx = true;
            }
            if (!d.hp(ebVar.w())) {
                if (lVar3 == null) {
                    lVar3 = new l();
                }
                lVar3.f24422w = ebVar.w();
            }
        }
        if (lVar3 == null) {
            lVar3 = new l();
        }
        lVar3.f24415a = i3;
        lVar3.eb = SystemClock.elapsedRealtime() - j2;
        com.byazt.owd.a.hp(lVar3.gu, "0-handle_wtf", j2);
        if (hpVar != null) {
            hpVar.hp(lVar3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, int i2, com.byazt.dq.hp hpVar, com.byazt.iqm.l lVar, j.hp hpVar2) {
        int i3 = (hpVar == null || hpVar.hp != -1) ? 5 : 4;
        com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVar.sz()) + "server bidding网络请求响应失败......onFail  result:" + i3);
        l lVar2 = new l();
        lVar2.f24415a = i3;
        lVar2.eb = SystemClock.elapsedRealtime() - j2;
        lVar2.f24421s = hpVar;
        if (hpVar2 != null) {
            hpVar2.hp(lVar2);
        }
    }

    private List<e> hp(List<e> list, com.byazt.tgw.l lVar, l lVar2) {
        List<e> listRz;
        if (list == null || list.size() == 0 || lVar == null) {
            return null;
        }
        boolean zBooleanValue = lVar.s().get("serverBidding_timeout") instanceof Boolean ? ((Boolean) lVar.s().get("serverBidding_timeout")).booleanValue() : false;
        if (lVar.q() == 4 && !zBooleanValue) {
            com.byazt.tgw.l lVarHp = com.byazt.dl.j.hp().hp(lVar.ky(), lVar.xh(), 102);
            if (lVarHp == null) {
                return null;
            }
            listRz = com.byazt.ney.jx.hp(lVarHp, lVarHp.ky(), lVar2 == null ? 0.0d : lVar2.jl, lVar2 != null ? lVar2.f24418k : 0.0d);
            lVar.s().putAll(lVarHp.s());
        } else {
            listRz = lVar.rz();
        }
        if (listRz != null && listRz.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (e eVar : listRz) {
                Iterator<e> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        e next = it.next();
                        if (eVar != null && next != null && eVar.ec() == 0 && !TextUtils.isEmpty(eVar.vv()) && eVar.vv().equals(next.vv())) {
                            arrayList.add(eVar);
                            break;
                        }
                    }
                }
            }
            return arrayList;
        }
        return null;
    }
}
