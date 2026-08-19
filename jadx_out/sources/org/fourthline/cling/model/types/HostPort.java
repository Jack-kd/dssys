package org.fourthline.cling.model.types;

/* loaded from: classes5.dex */
public class HostPort {
    private String host;
    private int port;

    public HostPort() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HostPort hostPort = (HostPort) obj;
        return this.port == hostPort.port && this.host.equals(hostPort.host);
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        return this.port;
    }

    public int hashCode() {
        return (this.host.hashCode() * 31) + this.port;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public String toString() {
        return this.host + ":" + this.port;
    }

    public HostPort(String str, int i2) {
        this.host = str;
        this.port = i2;
    }
}
