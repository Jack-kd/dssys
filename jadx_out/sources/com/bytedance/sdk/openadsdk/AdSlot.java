package com.bytedance.sdk.openadsdk;

import androidx.core.view.PointerIconCompat;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import okhttp3.internal.ws.WebSocketProtocol;
import org.json.JSONException;
import org.json.JSONObject;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 690})
/* loaded from: classes3.dex */
public class AdSlot implements SlotType {

    /* renamed from: a, reason: collision with root package name */
    private int f28847a;

    /* renamed from: b, reason: collision with root package name */
    private TTAdLoadType f28848b;
    private String cx;

    /* renamed from: d, reason: collision with root package name */
    private String f28849d;
    private IMediationAdSlot di;

    /* renamed from: e, reason: collision with root package name */
    private String f28850e;
    private boolean eb;
    private String ec;
    private String gu;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private float f28851j;
    private int jl;
    private int jx;

    /* renamed from: k, reason: collision with root package name */
    private int f28852k;

    /* renamed from: l, reason: collision with root package name */
    private int f28853l;

    /* renamed from: n, reason: collision with root package name */
    private String f28854n;
    private String ns;

    /* renamed from: o, reason: collision with root package name */
    private int f28855o;

    /* renamed from: q, reason: collision with root package name */
    private boolean f28856q;

    /* renamed from: s, reason: collision with root package name */
    private boolean f28857s;
    private String sz;

    /* renamed from: u, reason: collision with root package name */
    private int[] f28858u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f28859v;
    private String vv;

    /* renamed from: w, reason: collision with root package name */
    private float f28860w;
    private int xs;
    private int zy;

    @hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW})
    public static class Builder {

        /* renamed from: b, reason: collision with root package name */
        private String f28862b;
        private String cx;

        /* renamed from: d, reason: collision with root package name */
        private String f28863d;
        private IMediationAdSlot di;
        private String ec;
        private int gu;
        private String hp;
        private int jl;

        /* renamed from: k, reason: collision with root package name */
        private float f28866k;
        private String ns;

        /* renamed from: o, reason: collision with root package name */
        private int f28869o;

        /* renamed from: s, reason: collision with root package name */
        private String f28871s;
        private String sz;

        /* renamed from: u, reason: collision with root package name */
        private int[] f28872u;
        private String vv;
        private int xs;
        private float zy;

        /* renamed from: l, reason: collision with root package name */
        private int f28867l = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
        private int jx = MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;

        /* renamed from: j, reason: collision with root package name */
        private boolean f28865j = true;

        /* renamed from: w, reason: collision with root package name */
        private boolean f28874w = false;

        /* renamed from: a, reason: collision with root package name */
        private boolean f28861a = false;
        private int eb = 1;

        /* renamed from: q, reason: collision with root package name */
        private String f28870q = "defaultUser";

        /* renamed from: e, reason: collision with root package name */
        private int f28864e = 2;

        /* renamed from: v, reason: collision with root package name */
        private boolean f28873v = true;

        /* renamed from: n, reason: collision with root package name */
        private TTAdLoadType f28868n = TTAdLoadType.UNKNOWN;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.hp = this.hp;
            adSlot.f28847a = this.eb;
            adSlot.eb = this.f28865j;
            adSlot.f28857s = this.f28874w;
            adSlot.f28856q = this.f28861a;
            adSlot.f28853l = this.f28867l;
            adSlot.jx = this.jx;
            adSlot.f28851j = this.zy;
            adSlot.f28860w = this.f28866k;
            adSlot.f28850e = this.f28871s;
            adSlot.gu = this.f28870q;
            adSlot.jl = this.f28864e;
            adSlot.f28852k = this.gu;
            adSlot.f28859v = this.f28873v;
            adSlot.f28858u = this.f28872u;
            adSlot.xs = this.xs;
            adSlot.vv = this.vv;
            adSlot.sz = this.ns;
            adSlot.f28854n = this.cx;
            adSlot.ns = this.f28862b;
            adSlot.zy = this.jl;
            adSlot.ec = this.ec;
            adSlot.cx = this.sz;
            adSlot.f28848b = this.f28868n;
            adSlot.f28849d = this.f28863d;
            adSlot.f28855o = this.f28869o;
            adSlot.di = this.di;
            return adSlot;
        }

        public Builder setAdCount(int i2) {
            if (i2 <= 0) {
                i2 = 1;
            }
            if (i2 > 20) {
                i2 = 20;
            }
            this.eb = i2;
            return this;
        }

        public Builder setAdId(String str) {
            this.ns = str;
            return this;
        }

        public Builder setAdLoadType(TTAdLoadType tTAdLoadType) {
            this.f28868n = tTAdLoadType;
            return this;
        }

        public Builder setAdType(int i2) {
            this.jl = i2;
            return this;
        }

        public Builder setAdloadSeq(int i2) {
            this.xs = i2;
            return this;
        }

        public Builder setCodeId(String str) {
            this.hp = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.cx = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f2, float f3) {
            this.zy = f2;
            this.f28866k = f3;
            return this;
        }

        public Builder setExt(String str) {
            this.f28862b = str;
            return this;
        }

        public Builder setExternalABVid(int... iArr) {
            this.f28872u = iArr;
            return this;
        }

        public Builder setImageAcceptedSize(int i2, int i3) {
            this.f28867l = i2;
            this.jx = i3;
            return this;
        }

        public Builder setIsAutoPlay(boolean z2) {
            this.f28873v = z2;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.f28871s = str;
            return this;
        }

        public Builder setMediationAdSlot(IMediationAdSlot iMediationAdSlot) {
            this.di = iMediationAdSlot;
            return this;
        }

        @Deprecated
        public Builder setNativeAdType(int i2) {
            this.gu = i2;
            return this;
        }

        public Builder setOrientation(int i2) {
            this.f28864e = i2;
            return this;
        }

        public Builder setPrimeRit(String str) {
            this.vv = str;
            return this;
        }

        public Builder setRewardAmount(int i2) {
            this.f28869o = i2;
            return this;
        }

        public Builder setRewardName(String str) {
            this.f28863d = str;
            return this;
        }

        public Builder setSupportDeepLink(boolean z2) {
            this.f28865j = z2;
            return this;
        }

        public Builder setUserData(String str) {
            this.sz = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.f28870q = str;
            return this;
        }

        public Builder supportIconStyle() {
            this.f28861a = true;
            return this;
        }

        public Builder supportRenderControl() {
            this.f28874w = true;
            return this;
        }

        public Builder withBid(String str) {
            if (str == null) {
                return this;
            }
            this.ec = str;
            return this;
        }
    }

    public int getAdCount() {
        return this.f28847a;
    }

    public String getAdId() {
        return this.sz;
    }

    public TTAdLoadType getAdLoadType() {
        return this.f28848b;
    }

    public int getAdType() {
        return this.zy;
    }

    public int getAdloadSeq() {
        return this.xs;
    }

    public String getBidAdm() {
        return this.ec;
    }

    public String getCodeId() {
        return this.hp;
    }

    public String getCreativeId() {
        return this.f28854n;
    }

    public float getExpressViewAcceptedHeight() {
        return this.f28860w;
    }

    public float getExpressViewAcceptedWidth() {
        return this.f28851j;
    }

    public String getExt() {
        return this.ns;
    }

    public int[] getExternalABVid() {
        return this.f28858u;
    }

    public int getImgAcceptedHeight() {
        return this.jx;
    }

    public int getImgAcceptedWidth() {
        return this.f28853l;
    }

    public String getMediaExtra() {
        return this.f28850e;
    }

    public IMediationAdSlot getMediationAdSlot() {
        return this.di;
    }

    @Deprecated
    public int getNativeAdType() {
        return this.f28852k;
    }

    public int getOrientation() {
        return this.jl;
    }

    public String getPrimeRit() {
        String str = this.vv;
        return str == null ? "" : str;
    }

    public int getRewardAmount() {
        return this.f28855o;
    }

    public String getRewardName() {
        return this.f28849d;
    }

    public String getUserData() {
        return this.cx;
    }

    public String getUserID() {
        return this.gu;
    }

    public boolean isAutoPlay() {
        return this.f28859v;
    }

    public boolean isSupportDeepLink() {
        return this.eb;
    }

    public boolean isSupportIconStyle() {
        return this.f28856q;
    }

    public boolean isSupportRenderConrol() {
        return this.f28857s;
    }

    public void setAdCount(int i2) {
        this.f28847a = i2;
    }

    public void setAdLoadType(TTAdLoadType tTAdLoadType) {
        this.f28848b = tTAdLoadType;
    }

    public void setExternalABVid(int... iArr) {
        this.f28858u = iArr;
    }

    public void setNativeAdType(int i2) {
        this.f28852k = i2;
    }

    public void setUserData(String str) {
        this.cx = str;
    }

    public JSONObject toJsonObj() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.hp);
            jSONObject.put("mIsAutoPlay", this.f28859v);
            jSONObject.put("mImgAcceptedWidth", this.f28853l);
            jSONObject.put("mImgAcceptedHeight", this.jx);
            jSONObject.put("mExpressViewAcceptedWidth", this.f28851j);
            jSONObject.put("mExpressViewAcceptedHeight", this.f28860w);
            jSONObject.put("mAdCount", this.f28847a);
            jSONObject.put("mSupportDeepLink", this.eb);
            jSONObject.put("mSupportRenderControl", this.f28857s);
            jSONObject.put("mSupportIconStyle", this.f28856q);
            jSONObject.put("mMediaExtra", this.f28850e);
            jSONObject.put("mUserID", this.gu);
            jSONObject.put("mOrientation", this.jl);
            jSONObject.put("mNativeAdType", this.f28852k);
            jSONObject.put("mAdloadSeq", this.xs);
            jSONObject.put("mPrimeRit", this.vv);
            jSONObject.put("mAdId", this.sz);
            jSONObject.put("mCreativeId", this.f28854n);
            jSONObject.put("mExt", this.ns);
            jSONObject.put("mBidAdm", this.ec);
            jSONObject.put("mUserData", this.cx);
            jSONObject.put("mAdLoadType", this.f28848b);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return "AdSlot{mCodeId='" + this.hp + "', mImgAcceptedWidth=" + this.f28853l + ", mImgAcceptedHeight=" + this.jx + ", mExpressViewAcceptedWidth=" + this.f28851j + ", mExpressViewAcceptedHeight=" + this.f28860w + ", mAdCount=" + this.f28847a + ", mSupportDeepLink=" + this.eb + ", mSupportRenderControl=" + this.f28857s + ", mSupportIconStyle=" + this.f28856q + ", mMediaExtra='" + this.f28850e + "', mUserID='" + this.gu + "', mOrientation=" + this.jl + ", mNativeAdType=" + this.f28852k + ", mIsAutoPlay=" + this.f28859v + ", mPrimeRit" + this.vv + ", mAdloadSeq" + this.xs + ", mAdId" + this.sz + ", mCreativeId" + this.f28854n + ", mExt" + this.ns + ", mUserData" + this.cx + ", mAdLoadType" + this.f28848b + '}';
    }

    private AdSlot() {
        this.jl = 2;
        this.f28859v = true;
    }
}
