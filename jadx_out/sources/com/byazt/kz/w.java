package com.byazt.kz;

import com.byazt.nke.dy;
import com.byazt.nke.ec;
import com.byazt.nke.nu;
import com.byazt.nke.pu;
import com.byazt.nke.ud;
import com.byazt.nke.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w implements ec {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.nke.j f22302a;
    public ud eb;
    public vv hp;

    /* renamed from: j, reason: collision with root package name */
    public nu f22303j;
    public com.byazt.nke.w jx;

    /* renamed from: l, reason: collision with root package name */
    public ExecutorService f22304l;

    /* renamed from: q, reason: collision with root package name */
    public pu f22305q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.nke.l f22306s;

    /* renamed from: w, reason: collision with root package name */
    public dy f22307w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 8})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public com.byazt.nke.j f22308a;
        public ud eb;
        public vv hp;

        /* renamed from: j, reason: collision with root package name */
        public nu f22309j;
        public com.byazt.nke.w jx;

        /* renamed from: l, reason: collision with root package name */
        public ExecutorService f22310l;

        /* renamed from: q, reason: collision with root package name */
        public pu f22311q;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.nke.l f22312s;

        /* renamed from: w, reason: collision with root package name */
        public dy f22313w;

        public hp hp(com.byazt.nke.l lVar) {
            this.f22312s = lVar;
            return this;
        }

        public hp hp(ExecutorService executorService) {
            this.f22310l = executorService;
            return this;
        }

        public hp hp(com.byazt.nke.w wVar) {
            this.jx = wVar;
            return this;
        }

        public w hp() {
            return new w(this);
        }
    }

    public static w e() {
        return new hp().hp();
    }

    @Override // com.byazt.nke.ec
    public dy a() {
        return this.f22307w;
    }

    @Override // com.byazt.nke.ec
    public com.byazt.nke.j eb() {
        return this.f22302a;
    }

    @Override // com.byazt.nke.ec
    public vv hp() {
        return this.hp;
    }

    @Override // com.byazt.nke.ec
    public com.byazt.nke.w j() {
        return this.jx;
    }

    @Override // com.byazt.nke.ec
    public pu jx() {
        return this.f22305q;
    }

    @Override // com.byazt.nke.ec
    public ExecutorService l() {
        return this.f22304l;
    }

    @Override // com.byazt.nke.ec
    public com.byazt.nke.l q() {
        return this.f22306s;
    }

    @Override // com.byazt.nke.ec
    public ud s() {
        return this.eb;
    }

    @Override // com.byazt.nke.ec
    public nu w() {
        return this.f22303j;
    }

    private w(hp hpVar) {
        this.hp = hpVar.hp;
        this.f22304l = hpVar.f22310l;
        this.jx = hpVar.jx;
        this.f22303j = hpVar.f22309j;
        this.f22307w = hpVar.f22313w;
        this.f22302a = hpVar.f22308a;
        this.f22306s = hpVar.f22312s;
        this.eb = hpVar.eb;
        this.f22305q = hpVar.f22311q;
    }
}
