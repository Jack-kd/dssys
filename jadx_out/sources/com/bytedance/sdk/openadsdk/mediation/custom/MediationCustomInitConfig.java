package com.bytedance.sdk.openadsdk.mediation.custom;

import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION})
/* loaded from: classes3.dex */
public class MediationCustomInitConfig {

    /* renamed from: a, reason: collision with root package name */
    private String f29039a;

    /* renamed from: e, reason: collision with root package name */
    private String f29040e;
    private String eb;
    private String gu;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private String f29041j;
    private String jx;

    /* renamed from: l, reason: collision with root package name */
    private String f29042l;

    /* renamed from: q, reason: collision with root package name */
    private String f29043q;

    /* renamed from: s, reason: collision with root package name */
    private String f29044s;

    /* renamed from: w, reason: collision with root package name */
    private String f29045w;

    public MediationCustomInitConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.jx = str;
        this.hp = str2;
        this.f29042l = str3;
        this.f29041j = str4;
        this.f29045w = str5;
        this.f29039a = str6;
        this.eb = str7;
        this.f29044s = str8;
        this.f29043q = str9;
        this.f29040e = str10;
        this.gu = str11;
    }

    public String getADNName() {
        return this.jx;
    }

    public String getAdnInitClassName() {
        return this.f29041j;
    }

    public String getAppId() {
        return this.hp;
    }

    public String getAppKey() {
        return this.f29042l;
    }

    public String getBannerClassName() {
        return this.f29045w;
    }

    public String getDrawClassName() {
        return this.gu;
    }

    public String getFeedClassName() {
        return this.f29040e;
    }

    public String getFullVideoClassName() {
        return this.f29044s;
    }

    public String getInterstitialClassName() {
        return this.f29039a;
    }

    public String getRewardClassName() {
        return this.eb;
    }

    public String getSplashClassName() {
        return this.f29043q;
    }

    public String toString() {
        return "MediationCustomInitConfig{mAppId='" + this.hp + "', mAppKey='" + this.f29042l + "', mADNName='" + this.jx + "', mAdnInitClassName='" + this.f29041j + "', mBannerClassName='" + this.f29045w + "', mInterstitialClassName='" + this.f29039a + "', mRewardClassName='" + this.eb + "', mFullVideoClassName='" + this.f29044s + "', mSplashClassName='" + this.f29043q + "', mFeedClassName='" + this.f29040e + "', mDrawClassName='" + this.gu + "'}";
    }

    public MediationCustomInitConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.jx = valueSet.stringValue(8003);
            this.hp = valueSet.stringValue(8534);
            this.f29042l = valueSet.stringValue(8535);
            this.f29041j = valueSet.stringValue(8536);
            this.f29045w = valueSet.stringValue(8537);
            this.f29039a = valueSet.stringValue(8538);
            this.eb = valueSet.stringValue(8539);
            this.f29044s = valueSet.stringValue(8540);
            this.f29043q = valueSet.stringValue(8541);
            this.f29040e = valueSet.stringValue(8542);
            this.gu = valueSet.stringValue(8543);
        }
    }
}
