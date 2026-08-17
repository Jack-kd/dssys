package com.byazt.uhg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public hp f26219a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26220j;
    public e jx;

    /* renamed from: l, reason: collision with root package name */
    public String f26221l;

    /* renamed from: w, reason: collision with root package name */
    public byte[] f26222w;

    public enum hp {
        STRING_TYPE,
        BYTE_ARRAY_TYPE,
        FILE_TYPE
    }

    public v() {
    }

    public String hp() {
        return this.hp;
    }

    public String l() {
        return this.f26221l;
    }

    public v(e eVar, String str, hp hpVar) {
        this.jx = eVar;
        this.f26220j = str;
        this.f26219a = hpVar;
    }

    public static v hp(e eVar, String str) {
        return new v(eVar, str, hp.STRING_TYPE);
    }

    public static v hp(e eVar, byte[] bArr) {
        return new v(eVar, bArr, hp.BYTE_ARRAY_TYPE);
    }

    public static v hp(e eVar, byte[] bArr, String str, String str2) {
        return new v(eVar, bArr, str, str2, hp.FILE_TYPE);
    }

    public v(e eVar, byte[] bArr, String str, String str2, hp hpVar) {
        this.jx = eVar;
        this.f26222w = bArr;
        this.f26221l = str;
        this.hp = str2;
        this.f26219a = hpVar;
    }

    public v(e eVar, byte[] bArr, hp hpVar) {
        this.jx = eVar;
        this.f26222w = bArr;
        this.f26219a = hpVar;
    }
}
