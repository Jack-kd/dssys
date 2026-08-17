package org.fourthline.cling.transport.impl;

import java.util.concurrent.ExecutorService;
import org.fourthline.cling.transport.spi.AbstractStreamClientConfiguration;

/* loaded from: classes5.dex */
public class StreamClientConfigurationImpl extends AbstractStreamClientConfiguration {
    private boolean usePersistentConnections;

    public StreamClientConfigurationImpl(ExecutorService executorService) {
        super(executorService);
        this.usePersistentConnections = false;
    }

    public boolean isUsePersistentConnections() {
        return this.usePersistentConnections;
    }

    public void setUsePersistentConnections(boolean z2) {
        this.usePersistentConnections = z2;
    }

    public StreamClientConfigurationImpl(ExecutorService executorService, int i2) {
        super(executorService, i2);
        this.usePersistentConnections = false;
    }
}
