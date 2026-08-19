package com.sigmob.sdk.base.models;

/* loaded from: classes4.dex */
public class CurrentAppOrientation {
    private final boolean locked;
    private final String orientation;

    public CurrentAppOrientation(String str, boolean z2) {
        this.orientation = str;
        this.locked = z2;
    }

    public String toString() {
        return "\"appOrientation\"={\"orientation\"=\"" + this.orientation + "\", \"locked\"=" + this.locked + '}';
    }
}
