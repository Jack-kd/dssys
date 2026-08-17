package com.byazt.rk;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.gy.j;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 34})
/* loaded from: classes3.dex */
public class l {
    public static Map<String, SparseArray<Object>> hp = new ConcurrentHashMap();

    public static void hp(final mp mpVar, final com.byazt.jt.l lVar, final int i2, String str) {
        if (mpVar == null || lVar == null) {
            return;
        }
        com.byazt.kt.jx jxVarHp = hp();
        jxVarHp.l(str, lVar.lv());
        jxVarHp.hp(str, new com.byazt.tb.j());
        if (com.byazt.un.a.hp().hp(i2)) {
            jxVarHp.hp(str, new com.byazt.un.j());
        }
        jxVarHp.hp(str, new j.hp() { // from class: com.byazt.rk.l.1
            @Override // com.byazt.gy.j.hp
            public void hp(com.byazt.gy.l lVar2) {
                if (lVar2 instanceof com.byazt.kf.jx) {
                    com.byazt.kf.jx jxVar = (com.byazt.kf.jx) lVar2;
                    jxVar.f20629q = mpVar;
                    com.byazt.jt.l lVar3 = lVar;
                    if (lVar3 != null) {
                        jxVar.eb = i2;
                        jxVar.f20630s = lVar3.j();
                    }
                }
            }
        });
        hp(str);
    }

    public static Object j(String str, int i2) {
        Object obj;
        synchronized (hp) {
            w(str);
            obj = hp.get(str).get(i2);
        }
        return obj;
    }

    public static void jx(String str) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, com.byazt.np.jx.CLICKED);
        }
    }

    public static void l(String str) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, com.byazt.np.jx.STARTED);
        }
    }

    private static void w(String str) {
        synchronized (hp) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (hp.get(str) == null) {
                    hp.put(str, new SparseArray<>());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void jx(String str, final int i2) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, new j.hp() { // from class: com.byazt.rk.l.6
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar).f22022l = i2;
                    }
                }
            });
            jxVarHp.hp(str, com.byazt.np.jx.END);
        }
        if (i2 == 1 || i2 == 2) {
            j.l(str, i2);
        }
    }

    public static void l(String str, final int i2) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, new j.hp() { // from class: com.byazt.rk.l.5
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar).jx = i2;
                    }
                }
            });
            jxVarHp.hp(str, com.byazt.np.jx.INVISIBLED);
        }
    }

    public static void j(String str) {
        synchronized (hp) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                hp.remove(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(String str) {
        if (hp() != null) {
            hp().hp(str, com.byazt.np.jx.CREATED);
        }
    }

    public static void hp(String str, final boolean z2, final boolean z3) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, new j.hp() { // from class: com.byazt.rk.l.2
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        com.byazt.kf.jx jxVar = (com.byazt.kf.jx) lVar;
                        jxVar.f22021j = z2;
                        jxVar.f22023w = z3 ? 1 : 0;
                    }
                }
            });
            jxVarHp.hp(str, com.byazt.np.jx.SHOWED);
        }
    }

    public static void hp(String str, final boolean z2) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, new j.hp() { // from class: com.byazt.rk.l.3
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar).f22021j = z2;
                    }
                }
            });
            jxVarHp.hp(str, com.byazt.np.jx.SHOWED);
        }
    }

    public static void hp(String str, final int i2) {
        com.byazt.kt.jx jxVarHp = hp();
        if (jxVarHp != null) {
            jxVarHp.hp(str, new j.hp() { // from class: com.byazt.rk.l.4
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar) {
                    if (lVar instanceof com.byazt.kf.jx) {
                        ((com.byazt.kf.jx) lVar).jx = i2;
                    }
                }
            });
            jxVarHp.hp(str, com.byazt.np.jx.VISIBLED);
        }
    }

    public static com.byazt.kt.jx hp() {
        return (com.byazt.kt.jx) com.byazt.gy.w.hp(1);
    }

    public static void hp(String str, int i2, Object obj) {
        synchronized (hp) {
            w(str);
            hp.get(str).put(i2, obj);
        }
    }
}
