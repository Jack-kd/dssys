package org.fourthline.cling.transport.spi;

import java.util.concurrent.ExecutorService;
import org.fourthline.cling.model.ServerClientTokens;

/* loaded from: classes5.dex */
public abstract class AbstractStreamClientConfiguration implements StreamClientConfiguration {
    protected int logWarningSeconds;
    protected ExecutorService requestExecutorService;
    protected int timeoutSeconds;

    public AbstractStreamClientConfiguration(ExecutorService executorService) {
        this.timeoutSeconds = 60;
        this.logWarningSeconds = 5;
        this.requestExecutorService = executorService;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public int getLogWarningSeconds() {
        return this.logWarningSeconds;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public ExecutorService getRequestExecutorService() {
        return this.requestExecutorService;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public int getTimeoutSeconds() {
        return this.timeoutSeconds;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public String getUserAgentValue(int i2, int i3) {
        return new ServerClientTokens(i2, i3).toString();
    }

    public void setLogWarningSeconds(int i2) {
        this.logWarningSeconds = i2;
    }

    public void setRequestExecutorService(ExecutorService executorService) {
        this.requestExecutorService = executorService;
    }

    public void setTimeoutSeconds(int i2) {
        this.timeoutSeconds = i2;
    }

    public AbstractStreamClientConfiguration(ExecutorService executorService, int i2) {
        this.logWarningSeconds = 5;
        this.requestExecutorService = executorService;
        this.timeoutSeconds = i2;
    }

    public AbstractStreamClientConfiguration(ExecutorService executorService, int i2, int i3) {
        this.requestExecutorService = executorService;
        this.timeoutSeconds = i2;
        this.logWarningSeconds = i3;
    }
}
