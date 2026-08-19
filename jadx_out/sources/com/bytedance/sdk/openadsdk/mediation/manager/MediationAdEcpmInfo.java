package com.bytedance.sdk.openadsdk.mediation.manager;

import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_FIND_STREAM_INFO_PROBE_SIZE, MediaPlayer.MEDIA_PLAYER_OPTION_FIND_STREAM_INFO_PROBE_DURATION})
/* loaded from: classes3.dex */
public class MediationAdEcpmInfo {

    /* renamed from: a, reason: collision with root package name */
    private int f29068a;

    /* renamed from: e, reason: collision with root package name */
    private String f29069e;
    private String eb;
    private String gu;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private String f29070j;
    private String jl;
    private String jx;

    /* renamed from: k, reason: collision with root package name */
    private String f29071k;

    /* renamed from: l, reason: collision with root package name */
    private String f29072l;

    /* renamed from: q, reason: collision with root package name */
    private String f29073q;

    /* renamed from: s, reason: collision with root package name */
    private String f29074s;

    /* renamed from: u, reason: collision with root package name */
    private String f29075u;

    /* renamed from: v, reason: collision with root package name */
    private String f29076v;

    /* renamed from: w, reason: collision with root package name */
    private String f29077w;
    private Map<String, String> xs;
    private String zy;

    public MediationAdEcpmInfo() {
        this.xs = new HashMap();
    }

    public String getAbTestId() {
        return this.f29071k;
    }

    public String getChannel() {
        return this.jl;
    }

    public Map<String, String> getCustomData() {
        return this.xs;
    }

    public String getCustomSdkName() {
        return this.f29072l;
    }

    public String getDiscount() {
        return this.f29075u;
    }

    public String getEcpm() {
        return this.f29077w;
    }

    public String getErrorMsg() {
        return this.eb;
    }

    public String getLevelTag() {
        return this.f29070j;
    }

    public int getReqBiddingType() {
        return this.f29068a;
    }

    public String getRequestId() {
        return this.f29074s;
    }

    public String getRitType() {
        return this.f29073q;
    }

    public String getScenarioId() {
        return this.f29076v;
    }

    public String getSdkName() {
        return this.hp;
    }

    public String getSegmentId() {
        return this.gu;
    }

    public String getSlotId() {
        return this.jx;
    }

    public String getSubChannel() {
        return this.zy;
    }

    public String getSubRitType() {
        return this.f29069e;
    }

    public MediationAdEcpmInfo(String str, String str2, String str3, String str4, String str5, int i2, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map, String str15) {
        HashMap map2 = new HashMap();
        this.xs = map2;
        this.hp = str;
        this.f29072l = str2;
        this.jx = str3;
        this.f29070j = str4;
        this.f29077w = str5;
        this.f29068a = i2;
        this.eb = str6;
        this.f29074s = str7;
        this.f29073q = str8;
        this.f29069e = str9;
        this.gu = str10;
        this.jl = str11;
        this.zy = str12;
        this.f29071k = str13;
        this.f29076v = str14;
        this.f29075u = str15;
        if (map != null) {
            this.xs = map;
        } else {
            map2.clear();
        }
    }
}
