package com.byazt.xq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public hp hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27748j = 10;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f27749l;

    @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 8})
    public static class hp {
        public long hp;

        /* renamed from: j, reason: collision with root package name */
        public hp f27750j;
        public hp jx;

        /* renamed from: l, reason: collision with root package name */
        public long f27751l;

        private hp() {
        }
    }

    public boolean hp(long j2, long j3) {
        synchronized (this) {
            try {
                hp hpVar = this.hp;
                if (hpVar != null) {
                    if (j2 >= hpVar.hp && j3 >= hpVar.f27751l) {
                        hp hpVar2 = hpVar.jx;
                        if (hpVar2 != null && j3 - hpVar2.f27751l < 1000) {
                            hpVar.hp = j2;
                            hpVar.f27751l = j3;
                            return true;
                        }
                    }
                    return false;
                }
                hp hpVarHp = hp();
                hpVarHp.hp = j2;
                hpVarHp.f27751l = j3;
                if (hpVar != null) {
                    hpVarHp.jx = hpVar;
                    hpVar.f27750j = hpVarHp;
                }
                this.hp = hpVarHp;
                return true;
            } finally {
            }
        }
    }

    public long l(long j2, long j3) {
        synchronized (this) {
            try {
                hp hpVar = this.hp;
                if (hpVar == null) {
                    return -1L;
                }
                hp hpVarHp = hp(j2);
                if (hpVarHp == null) {
                    return -1L;
                }
                long j4 = hpVar.hp - hpVarHp.hp;
                long j5 = j3 - hpVarHp.f27751l;
                if (j4 < 0 || j5 <= 0) {
                    return -1L;
                }
                return j4 / j5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private hp hp() {
        hp hpVar;
        int i2 = this.jx;
        if (i2 >= this.f27748j && (hpVar = this.f27749l) != null) {
            hp hpVar2 = hpVar.f27750j;
            hpVar.f27750j = null;
            this.f27749l = hpVar2;
            if (hpVar2 != null) {
                hpVar2.jx = null;
            }
            return hpVar;
        }
        this.jx = i2 + 1;
        return new hp();
    }

    private hp hp(long j2) {
        hp hpVar = this.hp;
        hp hpVar2 = null;
        while (hpVar != null && hpVar.f27751l > j2) {
            hpVar2 = hpVar;
            hpVar = hpVar.jx;
        }
        return (hpVar == null || hpVar2 == null || hpVar == hpVar2 || j2 - hpVar.f27751l >= hpVar2.f27751l - j2) ? hpVar2 : hpVar;
    }
}
