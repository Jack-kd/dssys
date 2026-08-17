package com.byazt.l;

import androidx.work.WorkRequest;
import com.byazt.f.v;
import com.byazt.y.jl;
import com.byazt.y.zy;

@com.byazt.kj.hp(hp = {0, 1, 34, 150})
/* loaded from: classes3.dex */
public class q {
    public static final String hp = "q";

    /* renamed from: l, reason: collision with root package name */
    public static boolean f22369l = false;

    @com.byazt.kj.hp(hp = {0, 1, 34, 3})
    public static class hp {
        public static q hp = new q();
    }

    public static q hp() {
        return hp.hp;
    }

    private q() {
    }

    public void hp(com.byazt.w.w wVar, final com.byazt.zv.l lVar) {
        if (!com.byazt.y.w.jx(lVar)) {
            jl.hp().hp(hp, "checkMarketInstallFinishEvent", "开关未开启, 不使用动态广播监听能力");
            return;
        }
        if (lVar == null) {
            jl.hp().l(hp, "checkMarketInstallFinishEvent", "nativeDownloadModel为空,不符合预期");
            return;
        }
        if (lVar.ea()) {
            jl.hp().l(hp, "checkMarketInstallFinishEvent", "正在监听中,不重复监听");
            return;
        }
        try {
            jl jlVarHp = jl.hp();
            String str = hp;
            jlVarHp.hp(str, "checkMarketInstallFinishEvent", "针对商店直投广告,开始检测安装完成事件");
            if (com.byazt.y.w.j(lVar)) {
                jl.hp().hp(str, "checkMarketInstallFinishEvent", "开始进行动态广播监听");
                int iOptInt = com.byazt.t.jl.q().optInt("market_install_finish_check_time", 600);
                if (lVar.rk() == 0 || System.currentTimeMillis() - lVar.rk() > iOptInt * 1000) {
                    lVar.e(System.currentTimeMillis());
                    hp(iOptInt, new v() { // from class: com.byazt.l.q.1
                        @Override // com.byazt.f.v
                        public void hp() {
                            jl.hp().hp(q.hp, "checkMarketInstallFinishEvent", "注册广播监听成功,注册耗时" + (System.currentTimeMillis() - lVar.rk()));
                            lVar.e(true);
                            com.byazt.w.a.hp().hp(lVar);
                        }

                        @Override // com.byazt.f.v
                        public void l() {
                            jl.hp().hp(q.hp, "checkMarketInstallFinishEvent", "广播监听时间结束,主动解除了广播监听");
                            if (!zy.l(lVar)) {
                                jl.hp().hp(q.hp, "checkMarketInstallFinishEvent", "监听结束依然没有完成安装");
                            }
                            lVar.e(false);
                            com.byazt.w.a.hp().hp(lVar);
                        }
                    });
                } else {
                    jl.hp().hp(str, "checkMarketInstallFinishEvent", "目前仍在广播监听的生效期内,不进行重复注册");
                }
            }
            if (com.byazt.y.w.w(lVar)) {
                jl.hp().hp(str, "checkMarketInstallFinishEvent", "开启轮询线程能力,作为容灾手段");
                com.byazt.t.zy.hp().hp(lVar);
            }
            com.byazt.w.q.hp().hp(lVar);
        } catch (Exception unused) {
            com.byazt.u.jx.hp().hp(false, "监听商店场景安装完成事件发生异常");
        }
    }

    public void hp(final com.byazt.zv.l lVar) {
        if (!com.byazt.y.w.jx(lVar)) {
            jl.hp().hp(hp, "checkMarketInstallFinishEventForReboot", "线程轮询总开关未开启,因此不执行兜底逻辑");
            return;
        }
        if (lVar == null) {
            jl.hp().l(hp, "checkMarketInstallFinishEventForReboot", "nativeDownloadModel为空,不符合预期");
            return;
        }
        if (lVar.f28629w.get() && System.currentTimeMillis() - lVar.rk() > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            jl.hp().hp(hp, "checkMarketInstallFinishEventForReboot", "兜底过一次了,不进行重复兜底");
            return;
        }
        if (com.byazt.y.w.j(lVar)) {
            long jOptInt = com.byazt.t.jl.q().optInt("market_install_finish_check_time", 600) * 1000;
            if (System.currentTimeMillis() - lVar.rk() >= jOptInt) {
                jl.hp().hp(hp, "checkMarketInstallFinishEventForReboot", "当前时间距离首次检测时间超出了广播生效期,不再执行兜底策略");
            } else {
                hp((int) (((lVar.rk() + jOptInt) - System.currentTimeMillis()) / 1000), new v() { // from class: com.byazt.l.q.2
                    @Override // com.byazt.f.v
                    public void hp() {
                        jl.hp().hp(q.hp, "checkMarketInstallFinishEventForReboot", "进程被杀,重新注册广播监听成功,正式执行冷启兜底逻辑");
                        lVar.f28629w.compareAndSet(false, true);
                        com.byazt.w.q.hp().hp(lVar);
                    }

                    @Override // com.byazt.f.v
                    public void l() {
                        jl.hp().hp(q.hp, "checkMarketInstallFinishEventForReboot", "兜底监听执行完毕,解除广播监听");
                        if (!zy.l(lVar)) {
                            jl.hp().hp(q.hp, "checkMarketInstallFinishEventForReboot", "监听结束依然没有完成安装");
                        }
                        lVar.f28629w.compareAndSet(true, false);
                        lVar.e(false);
                        com.byazt.w.q.hp().hp(lVar);
                    }
                });
            }
        }
    }

    public void hp(int i2, v vVar) {
        jl.hp().hp(hp, "registerMarketInstallFinishBroadcast", "动态广播监听的持续时间为:".concat(String.valueOf(i2)));
        if (!f22369l) {
            com.byazt.ni.j.gu().hp(vVar);
            f22369l = true;
        }
        com.byazt.ni.j.gu().hp(i2);
    }
}
