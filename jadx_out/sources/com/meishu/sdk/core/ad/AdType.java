package com.meishu.sdk.core.ad;

/* loaded from: classes4.dex */
public enum AdType {
    FEED(1),
    FEED_PRE_RENDER(2),
    FEED_MIX(10),
    BANNER(3),
    SPLASH(4),
    INTERSTITIAL(5),
    PASTER(6),
    REWARD(7),
    DRAW(8),
    FULL_SCREEN_VIDEO(9);

    private int value;

    AdType(int i2) {
        this.value = i2;
    }

    public int value() {
        return this.value;
    }
}
