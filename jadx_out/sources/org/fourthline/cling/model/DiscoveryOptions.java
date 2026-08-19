package org.fourthline.cling.model;

/* loaded from: classes5.dex */
public class DiscoveryOptions {
    private static String simpleName = "DiscoveryOptions";
    protected boolean advertised;
    protected boolean byeByeBeforeFirstAlive;

    public DiscoveryOptions(boolean z2) {
        this.advertised = z2;
    }

    public boolean isAdvertised() {
        return this.advertised;
    }

    public boolean isByeByeBeforeFirstAlive() {
        return this.byeByeBeforeFirstAlive;
    }

    public String toString() {
        return "(" + simpleName + ") advertised: " + isAdvertised() + " byebyeBeforeFirstAlive: " + isByeByeBeforeFirstAlive();
    }

    public DiscoveryOptions(boolean z2, boolean z3) {
        this.advertised = z2;
        this.byeByeBeforeFirstAlive = z3;
    }
}
