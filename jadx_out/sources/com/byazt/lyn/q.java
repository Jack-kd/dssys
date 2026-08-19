package com.byazt.lyn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 150})
/* loaded from: classes3.dex */
public class q extends j {

    /* renamed from: a, reason: collision with root package name */
    public long f22842a;
    public String eb;

    /* renamed from: s, reason: collision with root package name */
    public long f22843s;

    public q(String str, String str2, String str3, String str4, int i2, String str5, String str6) {
        super(str, str2, str3, str4, i2);
        this.f22843s = 0L;
        this.f22842a = 0L;
        try {
            this.f22842a = Long.parseLong(str5);
        } catch (Exception unused) {
        }
        this.eb = str6;
    }

    public String e() {
        return this.eb;
    }

    public long gu() {
        return this.f22843s;
    }

    public void hp(long j2) {
        this.f22843s = j2;
    }

    public boolean jl() {
        return this.f22843s != 0;
    }

    public long q() {
        return this.f22842a;
    }

    @Override // com.byazt.lyn.j
    public boolean s() {
        return (TextUtils.isEmpty(this.eb) || this.f22842a == 0) ? false : true;
    }

    @Override // com.byazt.lyn.j
    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.hp + "', showRulesVersion='" + this.jx + "', timingMode=" + this.f22836w + "}IntervalPacingBean{pacing=" + this.f22842a + ", pacingRuleId='" + this.eb + "', effectiveTime=" + this.f22843s + '}';
    }

    public q(String str, String str2, String str3, String str4, int i2, String str5, String str6, String str7) {
        this(str, str2, str3, str4, i2, str5, str6);
        this.f22843s = 0L;
        try {
            this.f22843s = Long.parseLong(str7);
        } catch (Exception unused) {
        }
    }
}
