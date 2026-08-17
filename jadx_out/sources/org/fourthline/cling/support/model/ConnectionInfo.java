package org.fourthline.cling.support.model;

import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class ConnectionInfo {
    protected final int avTransportID;
    protected final int connectionID;
    protected Status connectionStatus;
    protected final Direction direction;
    protected final int peerConnectionID;
    protected final ServiceReference peerConnectionManager;
    protected final ProtocolInfo protocolInfo;
    protected final int rcsID;

    public enum Direction {
        Output,
        Input;

        public Direction getOpposite() {
            Direction direction = Output;
            return equals(direction) ? Input : direction;
        }
    }

    public enum Status {
        OK,
        ContentFormatMismatch,
        InsufficientBandwidth,
        UnreliableChannel,
        Unknown
    }

    public ConnectionInfo() {
        this(0, 0, 0, null, null, -1, Direction.Input, Status.Unknown);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ConnectionInfo connectionInfo = (ConnectionInfo) obj;
        if (this.avTransportID != connectionInfo.avTransportID || this.connectionID != connectionInfo.connectionID || this.peerConnectionID != connectionInfo.peerConnectionID || this.rcsID != connectionInfo.rcsID || this.connectionStatus != connectionInfo.connectionStatus || this.direction != connectionInfo.direction) {
            return false;
        }
        ServiceReference serviceReference = this.peerConnectionManager;
        if (serviceReference == null ? connectionInfo.peerConnectionManager != null : !serviceReference.equals(connectionInfo.peerConnectionManager)) {
            return false;
        }
        ProtocolInfo protocolInfo = this.protocolInfo;
        ProtocolInfo protocolInfo2 = connectionInfo.protocolInfo;
        return protocolInfo == null ? protocolInfo2 == null : protocolInfo.equals(protocolInfo2);
    }

    public int getAvTransportID() {
        return this.avTransportID;
    }

    public int getConnectionID() {
        return this.connectionID;
    }

    public synchronized Status getConnectionStatus() {
        return this.connectionStatus;
    }

    public Direction getDirection() {
        return this.direction;
    }

    public int getPeerConnectionID() {
        return this.peerConnectionID;
    }

    public ServiceReference getPeerConnectionManager() {
        return this.peerConnectionManager;
    }

    public ProtocolInfo getProtocolInfo() {
        return this.protocolInfo;
    }

    public int getRcsID() {
        return this.rcsID;
    }

    public int hashCode() {
        int i2 = ((((this.connectionID * 31) + this.rcsID) * 31) + this.avTransportID) * 31;
        ProtocolInfo protocolInfo = this.protocolInfo;
        int iHashCode = (i2 + (protocolInfo != null ? protocolInfo.hashCode() : 0)) * 31;
        ServiceReference serviceReference = this.peerConnectionManager;
        return ((((((iHashCode + (serviceReference != null ? serviceReference.hashCode() : 0)) * 31) + this.peerConnectionID) * 31) + this.direction.hashCode()) * 31) + this.connectionStatus.hashCode();
    }

    public synchronized void setConnectionStatus(Status status) {
        this.connectionStatus = status;
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") ID: " + getConnectionID() + ", Status: " + getConnectionStatus();
    }

    public ConnectionInfo(int i2, int i3, int i4, ProtocolInfo protocolInfo, ServiceReference serviceReference, int i5, Direction direction, Status status) {
        Status status2 = Status.OK;
        this.connectionID = i2;
        this.rcsID = i3;
        this.avTransportID = i4;
        this.protocolInfo = protocolInfo;
        this.peerConnectionManager = serviceReference;
        this.peerConnectionID = i5;
        this.direction = direction;
        this.connectionStatus = status;
    }
}
