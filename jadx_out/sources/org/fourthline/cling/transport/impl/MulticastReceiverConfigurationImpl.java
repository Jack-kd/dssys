package org.fourthline.cling.transport.impl;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.fourthline.cling.transport.spi.MulticastReceiverConfiguration;

/* loaded from: classes5.dex */
public class MulticastReceiverConfigurationImpl implements MulticastReceiverConfiguration {
    private InetAddress group;
    private int maxDatagramBytes;
    private int port;

    public MulticastReceiverConfigurationImpl(InetAddress inetAddress, int i2, int i3) {
        this.group = inetAddress;
        this.port = i2;
        this.maxDatagramBytes = i3;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiverConfiguration
    public InetAddress getGroup() {
        return this.group;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiverConfiguration
    public int getMaxDatagramBytes() {
        return this.maxDatagramBytes;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiverConfiguration
    public int getPort() {
        return this.port;
    }

    public void setGroup(InetAddress inetAddress) {
        this.group = inetAddress;
    }

    public void setMaxDatagramBytes(int i2) {
        this.maxDatagramBytes = i2;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public MulticastReceiverConfigurationImpl(InetAddress inetAddress, int i2) {
        this(inetAddress, i2, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
    }

    public MulticastReceiverConfigurationImpl(String str, int i2, int i3) throws UnknownHostException {
        this(InetAddress.getByName(str), i2, i3);
    }

    public MulticastReceiverConfigurationImpl(String str, int i2) throws UnknownHostException {
        this(InetAddress.getByName(str), i2, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
    }
}
