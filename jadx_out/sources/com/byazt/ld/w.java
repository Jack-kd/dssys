package com.byazt.ld;

import android.os.SystemClock;
import com.byazt.lc.q;
import com.byazt.lc.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1075, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    public interface hp {
        boolean hp(String str, int i2);
    }

    public static void hp() {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_dex_opt", "start");
        if (GlobalParam.getInstance().isCloseBgDex2oat()) {
            return;
        }
        if ((q.a() || q.s()) && com.byazt.hu.j.l(Zeus.getAppApplication())) {
            GlobalParam.getInstance().getReporter().hp("zeus_stage_dex_opt", "post");
            com.byazt.hu.w.l(new Runnable() { // from class: com.byazt.ld.w.1
                @Override // java.lang.Runnable
                public void run() {
                    GlobalParam.getInstance().getReporter().hp("zeus_stage_dex_opt", "exec");
                    SystemClock.sleep(GlobalParam.getInstance().getDexOptDelayTime());
                    w.l();
                }
            });
        }
    }

    public static hp jx() {
        return q.s() ? new j() : q.a() ? new jx() : new hp() { // from class: com.byazt.ld.w.2
            @Override // com.byazt.ld.w.hp
            public boolean hp(String str, int i2) {
                return true;
            }
        };
    }

    public static synchronized void l() {
        try {
            Map<String, ?> all = l.hp(Zeus.getAppApplication()).getAll();
            if (all.size() > 0) {
                for (Map.Entry<String, ?> entry : all.entrySet()) {
                    ZeusLogger.i(ZeusLogger.TAG_LOAD, "fullDex2oat start:" + entry.getKey());
                    if (jx().hp(entry.getKey(), ((Integer) entry.getValue()).intValue())) {
                        l.hp(Zeus.getAppApplication()).edit().remove(entry.getKey()).apply();
                        ZeusLogger.i(ZeusLogger.TAG_LOAD, "fullDex2oat success:" + entry.getKey());
                        zy.hp().l(entry.getKey(), ((Integer) entry.getValue()).intValue(), true);
                        ZeusLogger.i(ZeusLogger.TAG_LOAD, "fullDex2oat markDexOptState:" + entry.getKey());
                    } else {
                        ZeusLogger.i(ZeusLogger.TAG_LOAD, "fullDex2oat failed:" + entry.getKey());
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
