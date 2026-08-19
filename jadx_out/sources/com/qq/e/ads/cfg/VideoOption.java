package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class VideoOption {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f35155a;

    /* renamed from: b, reason: collision with root package name */
    private final int f35156b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f35157c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f35158d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f35159e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f35160f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f35161g;

    /* renamed from: h, reason: collision with root package name */
    private final int f35162h;

    /* renamed from: i, reason: collision with root package name */
    private final int f35163i;

    public static final class AutoPlayPolicy {
        public static final int ALWAYS = 1;
        public static final int NEVER = 2;
        public static final int WIFI = 0;
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        private boolean f35164a = true;

        /* renamed from: b, reason: collision with root package name */
        private int f35165b = 1;

        /* renamed from: c, reason: collision with root package name */
        private boolean f35166c = true;

        /* renamed from: d, reason: collision with root package name */
        private boolean f35167d = true;

        /* renamed from: e, reason: collision with root package name */
        private boolean f35168e = true;

        /* renamed from: f, reason: collision with root package name */
        private boolean f35169f = false;

        /* renamed from: g, reason: collision with root package name */
        private boolean f35170g = false;

        /* renamed from: h, reason: collision with root package name */
        private int f35171h;

        /* renamed from: i, reason: collision with root package name */
        private int f35172i;

        public VideoOption build() {
            return new VideoOption(this);
        }

        public Builder setAutoPlayMuted(boolean z2) {
            this.f35164a = z2;
            return this;
        }

        public Builder setAutoPlayPolicy(int i2) {
            if (i2 < 0 || i2 > 2) {
                GDTLogger.e("setAutoPlayPolicy 设置失败，值只能为0到2之间的数值, 重置为 : 1");
                i2 = 1;
            }
            this.f35165b = i2;
            return this;
        }

        @Deprecated
        public Builder setDetailPageMuted(boolean z2) {
            this.f35170g = z2;
            return this;
        }

        @Deprecated
        public Builder setEnableDetailPage(boolean z2) {
            this.f35168e = z2;
            return this;
        }

        public Builder setEnableUserControl(boolean z2) {
            this.f35169f = z2;
            return this;
        }

        public Builder setMaxVideoDuration(int i2) {
            this.f35171h = i2;
            return this;
        }

        public Builder setMinVideoDuration(int i2) {
            this.f35172i = i2;
            return this;
        }

        public Builder setNeedCoverImage(boolean z2) {
            this.f35167d = z2;
            return this;
        }

        public Builder setNeedProgressBar(boolean z2) {
            this.f35166c = z2;
            return this;
        }
    }

    private VideoOption(Builder builder) {
        this.f35155a = builder.f35164a;
        this.f35156b = builder.f35165b;
        this.f35157c = builder.f35166c;
        this.f35158d = builder.f35167d;
        this.f35159e = builder.f35168e;
        this.f35160f = builder.f35169f;
        this.f35161g = builder.f35170g;
        this.f35162h = builder.f35171h;
        this.f35163i = builder.f35172i;
    }

    public boolean getAutoPlayMuted() {
        return this.f35155a;
    }

    public int getAutoPlayPolicy() {
        return this.f35156b;
    }

    public int getMaxVideoDuration() {
        return this.f35162h;
    }

    public int getMinVideoDuration() {
        return this.f35163i;
    }

    public JSONObject getOptions() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("autoPlayMuted", Boolean.valueOf(this.f35155a));
            jSONObject.putOpt("autoPlayPolicy", Integer.valueOf(this.f35156b));
            jSONObject.putOpt("detailPageMuted", Boolean.valueOf(this.f35161g));
            return jSONObject;
        } catch (Exception e2) {
            e2.getMessage();
            return jSONObject;
        }
    }

    @Deprecated
    public boolean isDetailPageMuted() {
        return this.f35161g;
    }

    @Deprecated
    public boolean isEnableDetailPage() {
        return this.f35159e;
    }

    public boolean isEnableUserControl() {
        return this.f35160f;
    }

    public boolean isNeedCoverImage() {
        return this.f35158d;
    }

    public boolean isNeedProgressBar() {
        return this.f35157c;
    }
}
