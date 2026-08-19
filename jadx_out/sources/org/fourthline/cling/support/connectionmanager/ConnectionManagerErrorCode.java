package org.fourthline.cling.support.connectionmanager;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes5.dex */
public enum ConnectionManagerErrorCode {
    INCOMPATIBLE_PROTOCOL_INFO(701, "The connection cannot be established because the protocol info parameter is incompatible"),
    INCOMPATIBLE_DIRECTIONS(702, "The connection cannot be established because the directions of the involved ConnectionManagers (source/sink) are incompatible"),
    INSUFFICIENT_NETWORK_RESOURCES(703, "The connection cannot be established because there are insufficient network resources"),
    LOCAL_RESTRICTIONS(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_REF_LEVEL, "The connection cannot be established because of local restrictions in the device"),
    ACCESS_DENIED(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID, "The connection cannot be established because the client is not permitted."),
    INVALID_CONNECTION_REFERENCE(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_MIX_LEVEL, "Not a valid connection established by this service"),
    NOT_IN_NETWORK(707, "The connection cannot be established because the ConnectionManagers are not part of the same physical network.");

    private int code;
    private String description;

    ConnectionManagerErrorCode(int i2, String str) {
        this.code = i2;
        this.description = str;
    }

    public static ConnectionManagerErrorCode getByCode(int i2) {
        for (ConnectionManagerErrorCode connectionManagerErrorCode : values()) {
            if (connectionManagerErrorCode.getCode() == i2) {
                return connectionManagerErrorCode;
            }
        }
        return null;
    }

    public int getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }
}
