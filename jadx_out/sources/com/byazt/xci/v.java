package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public double f27568a;
    public double eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public double f27569j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27570l;

    /* renamed from: w, reason: collision with root package name */
    public String f27571w;

    public double a() {
        return this.f27568a;
    }

    public double eb() {
        return this.eb;
    }

    public int hp() {
        return this.hp;
    }

    public double j() {
        return this.f27569j;
    }

    public int jx() {
        return this.jx;
    }

    public String l() {
        return this.f27570l;
    }

    public boolean s() {
        return !TextUtils.isEmpty(this.f27571w);
    }

    public String w() {
        return this.f27571w;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void jx(double d2) {
        this.eb = d2;
    }

    public void l(int i2) {
        this.jx = i2;
    }

    public void hp(String str) {
        this.f27570l = str;
    }

    public void l(String str) {
        this.f27571w = str;
    }

    public void hp(double d2) {
        this.f27569j = d2;
    }

    public void l(double d2) {
        this.f27568a = d2;
    }
}
