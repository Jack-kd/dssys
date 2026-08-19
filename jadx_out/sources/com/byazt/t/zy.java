package com.byazt.t;

import android.os.SystemClock;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, 302})
/* loaded from: classes3.dex */
public class zy {
    public static final String hp = "zy";

    @com.byazt.kj.hp(hp = {0, 1, 311, 312})
    public class hp implements Runnable {

        /* renamed from: l, reason: collision with root package name */
        public final com.byazt.zv.l f25687l;

        public hp(com.byazt.zv.l lVar) {
            this.f25687l = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f25687l.e(true);
                zy.this.l(this.f25687l);
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.f25687l.e(false);
                throw th;
            }
            this.f25687l.e(false);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 311, 1831})
    public static class l {
        public static zy hp = new zy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.zv.l lVar) {
        JSONObject jSONObject = new JSONObject();
        int iHp = com.byazt.y.w.hp(lVar);
        int iL = com.byazt.y.w.l(lVar);
        if (com.byazt.y.w.w(lVar) && com.byazt.y.w.j(lVar)) {
            com.byazt.y.jl.hp().hp(hp, "tryListenInstallFinishEvent", "上层库开启二级线程轮询检测策略");
            hp(lVar, iHp, iL, jSONObject);
        } else {
            com.byazt.y.jl.hp().hp(hp, "tryListenInstallFinishEvent", "采用原有默认轮询策略");
            l(lVar, 15, 20000, jSONObject);
        }
    }

    private zy() {
    }

    public static zy hp() {
        return l.hp;
    }

    public void hp(com.byazt.zv.l lVar) {
        com.byazt.y.jl.hp().hp(hp, "tryListenInstallFinish", "开始通过轮询线程监听安装完成事件");
        com.byazt.l.w.hp().jx(new hp(lVar));
    }

    private void hp(com.byazt.zv.l lVar, int i2, int i3, JSONObject jSONObject) {
        int iA;
        if (lVar.xh() == 4) {
            iA = jl.q().optInt("market_install_finish_check_time", 600);
        } else {
            iA = com.byazt.y.w.a(lVar);
        }
        int i4 = ((iA * 1000) / 20000) + 1;
        com.byazt.y.jl jlVarHp = com.byazt.y.jl.hp();
        String str = hp;
        jlVarHp.hp(str, "realListenInstallFinishEventOpt", "一级轮询次数，即广播生效期内的轮询次数为:".concat(String.valueOf(i4)));
        if (l(lVar, i4, 20000, jSONObject)) {
            return;
        }
        if (iA * 1000 < com.byazt.y.w.eb(lVar)) {
            com.byazt.y.jl.hp().hp(str, "tryListenInstallFinishEventOpt", "广播生效时间外，一级轮询完成且没有检测到安装完成事件，开始二级检测");
            if (l(lVar, i2, i3, jSONObject)) {
                return;
            }
            com.byazt.y.jl.hp().hp(str, "tryListenInstallFinishEventOpt", "监听时间结束,依然没有监听到安装完成事件");
            return;
        }
        com.byazt.y.jl.hp().hp(str, "tryListenInstallFinishEventOpt", "一级轮询时间小于广播监听时间,且未监听到安装完成事件");
    }

    private boolean l(com.byazt.zv.l lVar, int i2, int i3, JSONObject jSONObject) {
        com.byazt.y.jl.hp().hp(hp, "realListenInstallFinishEvent", "开始轮询检测,轮询时间间隔为" + i3 + ",轮询次数为" + i2);
        long j2 = (long) i3;
        SystemClock.sleep(j2);
        while (i2 > 0) {
            if (com.byazt.y.zy.l(lVar)) {
                com.byazt.l.hp.hp().hp(lVar.w());
                com.byazt.y.jl.hp().hp(hp, "realListenInstallFinishEvent", "检测到安装成功，当前剩余的轮询次数为".concat(String.valueOf(i2)));
                return true;
            }
            i2--;
            if (i2 == 0) {
                return false;
            }
            SystemClock.sleep(j2);
        }
        return false;
    }
}
