package com.byazt.tfn;

import android.text.TextUtils;
import com.byazt.tfn.hp;
import com.byazt.zg.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 842, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements hp {
    private int hp(int i2) {
        switch (i2) {
            case 1:
                return 840032;
            case 2:
                return 840033;
            case 3:
                return 840034;
            case 4:
            case 6:
            default:
                return 840029;
            case 5:
                return 840035;
            case 7:
                return 840036;
            case 8:
                return 840037;
            case 9:
                return 840030;
            case 10:
                return 840039;
        }
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        if (lVarHp.e()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "调用过销毁方法_destroy()！！！");
            lVarHp.hp(new com.byazt.dq.hp(41044, com.byazt.dq.hp.hp(41044)));
        } else if (lVarHp.xs().w()) {
            lVarHp.hp(new com.byazt.dq.hp(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, "延长瀑布流总超时时长或者缩短层超时并添加兜底代码位"));
        } else {
            interfaceC0371hp.hp((String) null);
        }
    }

    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        com.byazt.iqm.l lVarCx = lVarHp.cx();
        com.byazt.le.hp hpVar = !com.byazt.di.l.l().hp(lVarHp.cx().sz(), lVarHp.cx().ec()) ? new com.byazt.le.hp(840031, com.byazt.dq.hp.hp(840031)) : null;
        if (hpVar == null && !com.byazt.di.l.l().l(lVarHp.cx().ec())) {
            hpVar = new com.byazt.le.hp(hp(lVarHp.cx().ec()), com.byazt.dq.hp.hp(hp(lVarHp.cx().ec())));
        }
        if (hpVar == null && !com.byazt.fct.jx.l()) {
            hpVar = new com.byazt.le.hp(1, com.byazt.dq.hp.hp(1));
        }
        if (hpVar == null && lVarHp.e()) {
            hpVar = new com.byazt.le.hp(41044, com.byazt.dq.hp.hp(41044));
        }
        if (hpVar == null && lVarHp.getContext() == null) {
            com.byazt.aw.l.j(MediationConstant.TAG, "Context为null！！！");
            hpVar = new com.byazt.le.hp(41005, com.byazt.dq.hp.hp(41005));
        }
        if (hpVar == null && TextUtils.isEmpty(lVarHp.cx().sz())) {
            hpVar = new com.byazt.le.hp(840026, "广告位id不能为空");
        }
        if (hpVar == null && (lVarHp.u() == null || d.hp(lVarHp.u().rz()))) {
            if (com.byazt.dl.j.hp().jx()) {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVarCx.sz()) + "settings config.......没有settings config配置信息,AdUnitId = " + lVarCx.sz());
                hpVar = new com.byazt.le.hp(840040, com.byazt.dq.hp.hp(840040));
                com.byazt.lsx.a.l(lVarCx, 1);
            } else if (lVarHp.u() == null || !d.hp(lVarHp.u().rz())) {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVarCx.sz()) + "settings config.......注意，AdUnitId = " + lVarCx.sz() + " 的配置信息为 null ！！");
                hpVar = new com.byazt.le.hp(44406, "检查广告位ID的状态是否正常、初始化 useMediation 参数是否为 true、新建广告位ID生效期为20min左右");
                com.byazt.lsx.a.l(lVarCx, 2);
            } else {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(lVarCx.sz()) + "settings config.......注意，AdUnitId = " + lVarCx.sz() + "  没有对应的waterfall配置信息");
                com.byazt.lsx.a.l(lVarCx, 3);
            }
            com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp(1);
        }
        if (hpVar == null) {
            String strMs = lVarCx.ms();
            if (!TextUtils.isEmpty(strMs) && !lVarCx.as() && !com.byazt.mey.j.hp(lVarCx.sz(), strMs)) {
                hpVar = new com.byazt.le.hp(840044, "本次请求未包含聚合广告位头层设价最高的代码位，导致聚合请求失败；请调整请求，确保包含聚合广告位头层设价最高的代码位。");
            }
        }
        com.byazt.le.hp hpVar2 = hpVar;
        if (hpVar2 == null) {
            interfaceC0371hp.hp(interfaceC0371hp.hp());
        } else {
            com.byazt.lsx.a.hp(lVarCx, lVarHp.u() != null ? lVarHp.u().nd() : null, !lVarHp.o(), lVarHp.xh().hp, hpVar2.hp, (Map<String, Object>) null);
            lVarHp.hp(hpVar2);
        }
    }
}
