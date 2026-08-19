package com.kwad.framework.filedownloader.event;

/* loaded from: classes4.dex */
public final class DownloadServiceConnectChangedEvent extends b {
    private final ConnectStatus aCn;
    private final Class<?> aCo;

    public enum ConnectStatus {
        connected,
        disconnected,
        lost
    }

    public DownloadServiceConnectChangedEvent(ConnectStatus connectStatus, Class<?> cls) {
        super("event.service.connect.changed");
        this.aCn = connectStatus;
        this.aCo = cls;
    }

    public final ConnectStatus CF() {
        return this.aCn;
    }
}
