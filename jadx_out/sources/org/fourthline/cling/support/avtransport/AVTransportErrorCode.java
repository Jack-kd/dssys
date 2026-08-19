package org.fourthline.cling.support.avtransport;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes5.dex */
public enum AVTransportErrorCode {
    TRANSITION_NOT_AVAILABLE(701, "The immediate transition from current to desired state not supported"),
    NO_CONTENTS(702, "The media does not contain any contents that can be played"),
    READ_ERROR(703, "The media cannot be read"),
    PLAYBACK_FORMAT_NOT_SUPPORTED(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_REF_LEVEL, "The storage format of the currently loaded media is not supported for playback"),
    TRANSPORT_LOCKED(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID, "The transport is 'hold locked', e.g. with a keyboard lock"),
    WRITE_ERROR(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_MIX_LEVEL, "The media cannot be written"),
    MEDIA_PROTECTED(707, "The media is write-protected or is of a not writable type"),
    RECORD_FORMAT_NOT_SUPPORTED(708, "The storage format of the currently loaded media is not supported for recording"),
    MEDIA_FULL(709, "There is no free space left on the loaded media"),
    SEEKMODE_NOT_SUPPORTED(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, "The specified seek mode is not supported by the device"),
    ILLEGAL_SEEK_TARGET(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_VIDEO_DIFF_THRESHOLD, "The specified seek target is not specified in terms of the seek mode, or is not present on the media"),
    PLAYMODE_NOT_SUPPORTED(MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_EXIT, "The specified play mode is not supported by the device"),
    RECORDQUALITYMODE_NOT_SUPPORTED(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, "The specified record quality mode is not supported by the device"),
    ILLEGAL_MIME_TYPE(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT, "The specified resource has a MIME-type which is not supported"),
    CONTENT_BUSY(715, "The resource is already being played by other means"),
    RESOURCE_NOT_FOUND(716, "The specified resource cannot be found in the network"),
    INVALID_INSTANCE_ID(718, "The specified instanceID is invalid for this AVTransport");

    private int code;
    private String description;

    AVTransportErrorCode(int i2, String str) {
        this.code = i2;
        this.description = str;
    }

    public static AVTransportErrorCode getByCode(int i2) {
        for (AVTransportErrorCode aVTransportErrorCode : values()) {
            if (aVTransportErrorCode.getCode() == i2) {
                return aVTransportErrorCode;
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
