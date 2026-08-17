package com.bytedance.sdk.openadsdk.mediation.bridge.custom;

import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION})
/* loaded from: classes3.dex */
public class MediationCustomInitConfig {

    /* renamed from: a, reason: collision with root package name */
    private String f29008a;

    /* renamed from: e, reason: collision with root package name */
    private String f29009e;
    private String eb;
    private String gu;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private String f29010j;
    private String jx;

    /* renamed from: l, reason: collision with root package name */
    private String f29011l;

    /* renamed from: q, reason: collision with root package name */
    private String f29012q;

    /* renamed from: s, reason: collision with root package name */
    private String f29013s;

    /* renamed from: w, reason: collision with root package name */
    private String f29014w;

    public MediationCustomInitConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.jx = str;
        this.hp = str2;
        this.f29011l = str3;
        this.f29010j = str4;
        this.f29014w = str5;
        this.f29008a = str6;
        this.eb = str7;
        this.f29013s = str8;
        this.f29012q = str9;
        this.f29009e = str10;
        this.gu = str11;
    }

    public String getADNName() {
        return this.jx;
    }

    public String getAdnInitClassName() {
        return this.f29010j;
    }

    public String getAppId() {
        return this.hp;
    }

    public String getAppKey() {
        return this.f29011l;
    }

    public String getBannerClassName() {
        return this.f29014w;
    }

    public String getDrawClassName() {
        return this.gu;
    }

    public String getFeedClassName() {
        return this.f29009e;
    }

    public String getFullVideoClassName() {
        return this.f29013s;
    }

    public String getInterstitialClassName() {
        return this.f29008a;
    }

    public String getRewardClassName() {
        return this.eb;
    }

    public String getSplashClassName() {
        return this.f29012q;
    }

    public String toString() {
        return "MediationCustomInitConfig{mAppId='" + this.hp + "', mAppKey='" + this.f29011l + "', mADNName='" + this.jx + "', mAdnInitClassName='" + this.f29010j + "', mBannerClassName='" + this.f29014w + "', mInterstitialClassName='" + this.f29008a + "', mRewardClassName='" + this.eb + "', mFullVideoClassName='" + this.f29013s + "', mSplashClassName='" + this.f29012q + "', mFeedClassName='" + this.f29009e + "', mDrawClassName='" + this.gu + "'}";
    }

    public MediationCustomInitConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.jx = valueSet.stringValue(8003);
            this.hp = valueSet.stringValue(8534);
            this.f29011l = valueSet.stringValue(8535);
            this.f29010j = valueSet.stringValue(8536);
            this.f29014w = valueSet.stringValue(8537);
            this.f29008a = valueSet.stringValue(8538);
            this.eb = valueSet.stringValue(8539);
            this.f29013s = valueSet.stringValue(8540);
            this.f29012q = valueSet.stringValue(8541);
            this.f29009e = valueSet.stringValue(8542);
            this.gu = valueSet.stringValue(8543);
        }
    }
}
