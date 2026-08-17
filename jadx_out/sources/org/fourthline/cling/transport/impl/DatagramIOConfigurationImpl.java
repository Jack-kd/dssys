package org.fourthline.cling.transport.impl;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.fourthline.cling.transport.spi.DatagramIOConfiguration;

/* loaded from: classes5.dex */
public class DatagramIOConfigurationImpl implements DatagramIOConfiguration {
    private int maxDatagramBytes;
    private int timeToLive;

    public DatagramIOConfigurationImpl() {
        this.timeToLive = 4;
        this.maxDatagramBytes = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
    }

    @Override // org.fourthline.cling.transport.spi.DatagramIOConfiguration
    public int getMaxDatagramBytes() {
        return this.maxDatagramBytes;
    }

    @Override // org.fourthline.cling.transport.spi.DatagramIOConfiguration
    public int getTimeToLive() {
        return this.timeToLive;
    }

    public void setMaxDatagramBytes(int i2) {
        this.maxDatagramBytes = i2;
    }

    public void setTimeToLive(int i2) {
        this.timeToLive = i2;
    }

    public DatagramIOConfigurationImpl(int i2, int i3) {
        this.timeToLive = i2;
        this.maxDatagramBytes = i3;
    }
}
