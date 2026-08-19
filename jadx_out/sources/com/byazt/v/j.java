package com.byazt.v;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 38})
/* loaded from: classes3.dex */
public class j {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public String f26508l;

    @com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public String f26509l;

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp l(String str) {
            this.f26509l = str;
            return this;
        }

        public j hp() {
            return new j(this);
        }
    }

    public j(hp hpVar) {
        this.hp = hpVar.hp;
        this.f26508l = hpVar.f26509l;
    }

    public String hp() {
        return this.hp;
    }
}
