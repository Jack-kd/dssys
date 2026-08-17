package com.qq.e.ads.hybrid;

/* loaded from: classes4.dex */
public class HybridADSetting {
    public static final int TYPE_REWARD_VIDEO = 1;

    /* renamed from: f, reason: collision with root package name */
    private String f35192f;

    /* renamed from: g, reason: collision with root package name */
    private String f35193g;

    /* renamed from: h, reason: collision with root package name */
    private String f35194h;

    /* renamed from: a, reason: collision with root package name */
    private int f35187a = 1;

    /* renamed from: b, reason: collision with root package name */
    private int f35188b = 44;

    /* renamed from: c, reason: collision with root package name */
    private int f35189c = -1;

    /* renamed from: d, reason: collision with root package name */
    private int f35190d = -14013133;

    /* renamed from: e, reason: collision with root package name */
    private int f35191e = 16;

    /* renamed from: i, reason: collision with root package name */
    private int f35195i = -1776153;

    /* renamed from: j, reason: collision with root package name */
    private int f35196j = 16;

    public HybridADSetting backButtonImage(String str) {
        this.f35193g = str;
        return this;
    }

    public HybridADSetting backSeparatorLength(int i2) {
        this.f35196j = i2;
        return this;
    }

    public HybridADSetting closeButtonImage(String str) {
        this.f35194h = str;
        return this;
    }

    public String getBackButtonImage() {
        return this.f35193g;
    }

    public int getBackSeparatorLength() {
        return this.f35196j;
    }

    public String getCloseButtonImage() {
        return this.f35194h;
    }

    public int getSeparatorColor() {
        return this.f35195i;
    }

    public String getTitle() {
        return this.f35192f;
    }

    public int getTitleBarColor() {
        return this.f35189c;
    }

    public int getTitleBarHeight() {
        return this.f35188b;
    }

    public int getTitleColor() {
        return this.f35190d;
    }

    public int getTitleSize() {
        return this.f35191e;
    }

    public int getType() {
        return this.f35187a;
    }

    public HybridADSetting separatorColor(int i2) {
        this.f35195i = i2;
        return this;
    }

    public HybridADSetting title(String str) {
        this.f35192f = str;
        return this;
    }

    public HybridADSetting titleBarColor(int i2) {
        this.f35189c = i2;
        return this;
    }

    public HybridADSetting titleBarHeight(int i2) {
        this.f35188b = i2;
        return this;
    }

    public HybridADSetting titleColor(int i2) {
        this.f35190d = i2;
        return this;
    }

    public HybridADSetting titleSize(int i2) {
        this.f35191e = i2;
        return this;
    }

    public HybridADSetting type(int i2) {
        this.f35187a = i2;
        return this;
    }
}
