package com.byazt.kt;

import com.byazt.gy.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 747, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w extends com.byazt.gy.j<com.byazt.np.w, com.byazt.kf.w> {

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.gj.w f22125l = new com.byazt.gj.w() { // from class: com.byazt.kt.w.1
        @Override // com.byazt.gj.w
        public void a(com.byazt.kf.w wVar, s sVar) {
        }

        @Override // com.byazt.gj.w
        public void eb(com.byazt.kf.w wVar, s sVar) {
            com.byazt.gy.jx jxVar;
            if (wVar == null || wVar.hp() == null || (jxVar = (com.byazt.gy.jx) w.this.hp.remove(wVar.hp())) == null) {
                return;
            }
            jxVar.l(w.this.f22125l);
        }

        @Override // com.byazt.gj.w
        public void hp(com.byazt.kf.w wVar, s sVar) {
        }

        @Override // com.byazt.gj.w
        public void j(com.byazt.kf.w wVar, s sVar) {
        }

        @Override // com.byazt.gj.w
        public void jx(com.byazt.kf.w wVar, s sVar) {
        }

        @Override // com.byazt.gj.w
        public void l(com.byazt.kf.w wVar, s sVar) {
        }

        @Override // com.byazt.gj.w
        public void w(com.byazt.kf.w wVar, s sVar) {
        }
    };

    public void hp(String str, com.byazt.np.w wVar, s sVar) {
        com.byazt.gy.jx<com.byazt.np.w, com.byazt.kf.w> jxVarHp = hp(str);
        if (jxVarHp instanceof com.byazt.ew.w) {
            ((com.byazt.ew.w) jxVarHp).hp(wVar, sVar);
        }
    }

    public void l(String str, String str2) {
        if (str == null) {
            return;
        }
        com.byazt.ew.w wVar = new com.byazt.ew.w(str, str2);
        wVar.hp(this.f22125l);
        hp(str, wVar);
    }

    public void hp(String str, com.byazt.np.w wVar) {
        hp(str, wVar, null);
    }
}
