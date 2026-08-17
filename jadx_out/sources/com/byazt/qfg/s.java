package com.byazt.qfg;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.um.zy;
import com.byazt.xci.df;
import com.byazt.xci.fi;
import com.byazt.xci.mp;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static void hp(long j2, boolean z2, boolean z3, mp mpVar, long j3, String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        String str2 = z2 ? z3 ? "load_video_success" : "load_video_error" : z3 ? "download_video_image_success" : "download_video_image_fail";
        if (z2) {
            Map<String, Object> mapHp = ky.hp(z3, mpVar, jElapsedRealtime, j3, str);
            mapHp.put("splash_show_type", 1);
            com.byazt.jdb.j.w(mpVar, "splash_ad", str2, mapHp);
        } else {
            Map<String, Object> mapL = ky.l(z3, mpVar, jElapsedRealtime, j3, str);
            mapL.put("splash_show_type", 2);
            com.byazt.jdb.j.j(mpVar, "splash_ad", str2, mapL);
        }
    }

    public static int jx(com.byazt.xci.hp hpVar) {
        if (hpVar != null) {
            return hpVar.hp();
        }
        return 0;
    }

    public static boolean l(com.byazt.xci.hp hpVar) {
        return (hpVar == null || hpVar.l() == null || hpVar.l().isEmpty() || hpVar.l().get(0) == null) ? false : true;
    }

    public static boolean l(mp mpVar) {
        if (mpVar == null || mpVar.nc() == 1 || df.v(mpVar) == null || TextUtils.isEmpty(df.hp(mpVar))) {
            return true;
        }
        mpVar.jl(true);
        return false;
    }

    public static void hp(com.byazt.xci.hp hpVar) {
        com.byazt.tw.a aVarHp;
        if (l(hpVar)) {
            mp mpVar = hpVar.l().get(0);
            int iZy = ky.zy(mpVar);
            com.byazt.tw.j jVarV = df.v(mpVar);
            if (jVarV != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                String video_url = jVarV.getVideo_url();
                if (TextUtils.isEmpty(video_url)) {
                    hp(jElapsedRealtime, true, false, mpVar, -1L, "preLoadVideo videoUrl is null");
                    return;
                }
                if (TextUtils.isEmpty(jVarV.getFileHash())) {
                    com.byazt.ymw.a.l(video_url);
                }
                if (mpVar.qq()) {
                    aVarHp = df.hp(2, mpVar);
                } else {
                    aVarHp = df.hp(3, mpVar);
                }
                aVarHp.putExtra("material_meta", mpVar);
                if (!sz.l().eb(String.valueOf(iZy)) || vv.j(sz.getContext())) {
                    jVarV.setRewardVideoCachedType(0);
                    com.byazt.fx.hp.hp();
                    com.byazt.cwe.jx.hp(aVarHp, new com.byazt.fm.hp() { // from class: com.byazt.qfg.s.1
                        @Override // com.byazt.um.e.hp
                        public void onVideoPreloadFail(zy zyVar, int i2, String str) {
                        }

                        @Override // com.byazt.um.e.hp
                        public void onVideoPreloadSuccess(zy zyVar, int i2) {
                        }
                    });
                }
            }
        }
    }

    public static int hp(fi fiVar) {
        if (fiVar == null) {
            return 0;
        }
        int iJx = jx(fiVar.l());
        return iJx <= 0 ? hp(fiVar.hp()) : iJx;
    }

    public static int hp(mp mpVar) {
        if (mpVar != null) {
            return ky.zy(mpVar);
        }
        return 0;
    }
}
