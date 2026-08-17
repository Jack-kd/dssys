package com.byazt.uhg;

import com.byazt.hq.wv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public long f26196a;
    public long eb;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public long f26197j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f26198l;

    /* renamed from: w, reason: collision with root package name */
    public long f26199w;

    public gu() {
        this.hp = System.currentTimeMillis();
    }

    public void hp() {
        this.jx = System.currentTimeMillis();
    }

    public void j() {
        this.f26198l = System.currentTimeMillis();
    }

    public void jx() {
        this.f26199w = System.currentTimeMillis();
    }

    public void l() {
        this.f26197j = System.currentTimeMillis();
    }

    public void hp(long j2) {
        this.f26196a = j2;
    }

    public void l(long j2) {
        this.eb = j2;
    }

    public gu(Object obj) {
        this.hp = System.currentTimeMillis();
        try {
            if (obj instanceof wv) {
                wv wvVar = (wv) obj;
                this.hp = wvVar.j();
                this.f26198l = wvVar.e();
                this.jx = wvVar.w();
                this.f26197j = wvVar.a();
                this.f26199w = wvVar.eb();
                this.f26196a = wvVar.s();
                this.eb = wvVar.q();
            }
        } catch (Throwable unused) {
        }
    }
}
