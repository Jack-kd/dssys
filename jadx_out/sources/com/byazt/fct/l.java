package com.byazt.fct;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.byazt.lsx.a;
import com.byazt.tgw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 34})
/* loaded from: classes2.dex */
public class l {
    public static final Map<String, Boolean> hp = new ConcurrentHashMap();

    public static final synchronized void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        hp.put(str, Boolean.TRUE);
    }

    public static final synchronized boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Boolean bool = hp.get(str);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static synchronized void hp(Context context, List<com.byazt.tgw.hp> list) {
        if (list != null) {
            for (com.byazt.tgw.hp hpVar : list) {
                final com.byazt.qy.l lVarJ = hpVar.j();
                try {
                    if (!l(hpVar.a())) {
                        hp(context, lVarJ, new com.byazt.gkj.jx() { // from class: com.byazt.fct.l.1
                            @Override // com.byazt.gkj.jx
                            public void hp() {
                                com.byazt.uhd.hp.hp(lVarJ.l(), (Pair<Boolean, String>) new Pair(Boolean.TRUE, ""));
                            }

                            @Override // com.byazt.gkj.jx
                            public void hp(@NonNull com.byazt.dq.hp hpVar2) {
                                if (hpVar2 != null) {
                                    com.byazt.uhd.hp.hp(lVarJ.l(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, "errorCode = " + hpVar2.hp + " errorMessage = " + hpVar2.f19238l));
                                }
                            }
                        });
                        hp(hpVar.a());
                    }
                } catch (Exception e2) {
                    com.byazt.uhd.hp.hp(lVarJ.l(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, e2.toString()));
                    a.hp(lVarJ.l(), (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, e2.toString()));
                }
            }
            return;
        }
        a.hp("", (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "获取的自定义Adapter总配置为null"));
    }

    private static com.byazt.qyg.hp hp(com.byazt.qy.l lVar, com.byazt.gkj.jx jxVar) {
        com.byazt.qyg.hp hpVarHp = com.byazt.uhd.hp.j().hp(lVar.l());
        if (hpVarHp != null) {
            return hpVarHp;
        }
        com.byazt.qyg.hp hpVar = new com.byazt.qyg.hp();
        com.byazt.uhd.hp.j().hp(lVar.l(), hpVar);
        return hpVar;
    }

    private static void hp(Context context, com.byazt.qy.l lVar, com.byazt.gkj.jx jxVar) throws Exception {
        if (lVar == null || TextUtils.isEmpty(lVar.jx())) {
            if (lVar == null) {
                throw new Exception("自定义ADN初始化失败，获取的自定义Adapter单条配置为null");
            }
            throw new Exception("自定义ADN初始化失败，获取的自定义Adapter单条配置初始化类名为空");
        }
        com.byazt.qyg.hp hpVarHp = hp(lVar, jxVar);
        if (hpVarHp != null) {
            if (!hpVarHp.isInit()) {
                hp(context, lVar, hpVarHp);
            }
            jxVar.hp();
            return;
        }
        throw new Exception("GMCustomAdapterConfiguration is null");
    }

    private static void hp(Context context, com.byazt.qy.l lVar, com.byazt.qyg.hp hpVar) {
        if (context == null) {
            a.hp(lVar.l(), (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "context为null"));
            return;
        }
        try {
            hpVar.initializeInnerADN(context.getApplicationContext(), lVar, com.byazt.di.hp.jl().b());
        } catch (Exception e2) {
            a.hp(lVar.l(), (com.byazt.rt.jx) null, (com.byazt.iqm.l) null, (e) null, new com.byazt.dq.hp(49013, "调用自定义Adapter初始化方法出现异常 " + e2.getClass().getName()));
        }
    }

    public static synchronized void hp(Context context, String str) {
        if (!l(str)) {
            hp(context, com.byazt.dl.jx.hp().l());
        }
    }
}
