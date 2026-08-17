package com.kwad.framework.filedownloader.download;

/* loaded from: classes4.dex */
public final class a {
    final long aAW;
    final long aAX;
    final long aAY;
    final long contentLength;

    public a(long j2, long j3, long j4, long j5) {
        this.aAW = j2;
        this.aAX = j3;
        this.aAY = j4;
        this.contentLength = j5;
    }

    public final String toString() {
        return com.kwad.framework.filedownloader.f.f.c("range[%d, %d) current offset[%d]", Long.valueOf(this.aAW), Long.valueOf(this.aAY), Long.valueOf(this.aAX));
    }
}
