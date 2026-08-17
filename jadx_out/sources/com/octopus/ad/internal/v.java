package com.octopus.ad.internal;

import com.octopus.ad.RewardItem;

/* loaded from: classes4.dex */
public class v implements RewardItem {

    /* renamed from: a, reason: collision with root package name */
    private String f35059a;

    /* renamed from: b, reason: collision with root package name */
    private int f35060b;

    public v(String str, int i2) {
        this.f35059a = str;
        this.f35060b = i2;
    }

    @Override // com.octopus.ad.RewardItem
    public int getAmount() {
        return this.f35060b;
    }

    @Override // com.octopus.ad.RewardItem
    public String getType() {
        return this.f35059a;
    }
}
