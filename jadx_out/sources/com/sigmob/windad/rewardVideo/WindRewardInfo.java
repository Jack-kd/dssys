package com.sigmob.windad.rewardVideo;

import java.util.HashMap;

/* loaded from: classes5.dex */
public class WindRewardInfo {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f39203a;

    /* renamed from: b, reason: collision with root package name */
    private HashMap<String, String> f39204b;

    public WindRewardInfo(boolean z2) {
        this.f39203a = z2;
    }

    public HashMap<String, String> getOptions() {
        return this.f39204b;
    }

    public boolean isReward() {
        return this.f39203a;
    }

    public void setOptions(HashMap<String, String> map) {
        this.f39204b = map;
    }

    public String toString() {
        return "WindRewardInfo{isReward=" + this.f39203a + ", options=" + this.f39204b + '}';
    }

    public WindRewardInfo(boolean z2, HashMap<String, String> map) {
        this.f39203a = z2;
        this.f39204b = map;
    }
}
