package com.kwad.sdk.core.videocache;

/* loaded from: classes4.dex */
public final class n {
    public final long baB;
    public final String baC;
    public final String url;

    public n(String str, long j2, String str2) {
        this.url = str;
        this.baB = j2;
        this.baC = str2;
    }

    public final String toString() {
        return "SourceInfo{url='" + this.url + "', length=" + this.baB + ", mime='" + this.baC + "'}";
    }
}
