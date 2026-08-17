package org.fourthline.cling.model.types;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes5.dex */
public enum ErrorCode {
    INVALID_ACTION(401, "No action by that name at this service"),
    INVALID_ARGS(402, "Not enough IN args, too many IN args, no IN arg by that name, one or more IN args are of the wrong data type"),
    ACTION_FAILED(MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE, "Current state of service prevents invoking that action"),
    ARGUMENT_VALUE_INVALID(600, "The argument value is invalid"),
    ARGUMENT_VALUE_OUT_OF_RANGE(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, "An argument value is less than the minimum or more than the maximum value of the allowedValueRange, or is not in the allowedValueList"),
    OPTIONAL_ACTION(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN, "The requested action is optional and is not implemented by the device"),
    OUT_OF_MEMORY(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, "The device does not have sufficient memory available to complete the action"),
    HUMAN_INTERVENTION_REQUIRED(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_VIDEO_BUFLEN, "The device has encountered an error condition which it cannot resolve itself"),
    ARGUMENT_TOO_LONG(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, "A string argument is too long for the device to handle properly"),
    ACTION_NOT_AUTHORIZED(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_AV_POS_GAP, "The action requested requires authorization and the sender was not authorized"),
    SIGNATURE_FAILURE(MediaPlayer.MEDIA_PLAYER_OPTION_MOOV_POS, "The sender's signature failed to verify"),
    SIGNATURE_MISSING(MediaPlayer.MEDIA_PLAYER_OPTION_MDAT_POS, "The action requested requires a digital signature and there was none provided"),
    NOT_ENCRYPTED(MediaPlayer.MEDIA_PLAYER_OPTION_BUFS_WHEN_BUFFER_START, "This action requires confidentiality but the action was not delivered encrypted"),
    INVALID_SEQUENCE(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, "The sequence provided was not valid"),
    INVALID_CONTROL_URL(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE, "The controlURL within the freshness element does not match the controlURL of the action actually invoked"),
    NO_SUCH_SESSION(MediaPlayer.MEDIA_PLAYER_OPTION_BARRAGE_MASKURL, "The session key reference is to a non-existent session"),
    TRANSPORT_LOCKED(MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID, "Transport locked"),
    ILLEGAL_MIME_TYPE(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT, "Illegal mime-type");

    private int code;
    private String description;

    ErrorCode(int i2, String str) {
        this.code = i2;
        this.description = str;
    }

    public static ErrorCode getByCode(int i2) {
        for (ErrorCode errorCode : values()) {
            if (errorCode.getCode() == i2) {
                return errorCode;
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
