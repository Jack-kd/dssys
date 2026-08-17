package org.fourthline.cling.transport.impl;

import org.fourthline.cling.transport.spi.StreamServerConfiguration;

/* loaded from: classes5.dex */
public class StreamServerConfigurationImpl implements StreamServerConfiguration {
    private int listenPort;
    private int tcpConnectionBacklog;

    public StreamServerConfigurationImpl() {
    }

    @Override // org.fourthline.cling.transport.spi.StreamServerConfiguration
    public int getListenPort() {
        return this.listenPort;
    }

    public int getTcpConnectionBacklog() {
        return this.tcpConnectionBacklog;
    }

    public void setListenPort(int i2) {
        this.listenPort = i2;
    }

    public void setTcpConnectionBacklog(int i2) {
        this.tcpConnectionBacklog = i2;
    }

    public StreamServerConfigurationImpl(int i2) {
        this.listenPort = i2;
    }
}
