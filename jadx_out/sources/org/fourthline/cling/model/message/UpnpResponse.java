package org.fourthline.cling.model.message;

import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes5.dex */
public class UpnpResponse extends UpnpOperation {
    private int statusCode;
    private String statusMessage;

    public enum Status {
        OK(200, cb.f11288k),
        BAD_REQUEST(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "Bad Request"),
        NOT_FOUND(404, "Not Found"),
        METHOD_NOT_SUPPORTED(405, "Method Not Supported"),
        PRECONDITION_FAILED(TTAdConstant.IMAGE_URL_CODE, "Precondition Failed"),
        UNSUPPORTED_MEDIA_TYPE(TTAdConstant.VIDEO_COVER_URL_CODE, "Unsupported Media Type"),
        INTERNAL_SERVER_ERROR(500, "Internal Server Error"),
        NOT_IMPLEMENTED(MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE, "Not Implemented");

        private int statusCode;
        private String statusMsg;

        Status(int i2, String str) {
            this.statusCode = i2;
            this.statusMsg = str;
        }

        public static Status getByStatusCode(int i2) {
            for (Status status : values()) {
                if (status.getStatusCode() == i2) {
                    return status;
                }
            }
            return null;
        }

        public int getStatusCode() {
            return this.statusCode;
        }

        public String getStatusMsg() {
            return this.statusMsg;
        }
    }

    public UpnpResponse(int i2, String str) {
        this.statusCode = i2;
        this.statusMessage = str;
    }

    public String getResponseDetails() {
        return getStatusCode() + " " + getStatusMessage();
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public boolean isFailed() {
        return this.statusCode >= 300;
    }

    public String toString() {
        return getResponseDetails();
    }

    public UpnpResponse(Status status) {
        this.statusCode = status.getStatusCode();
        this.statusMessage = status.getStatusMsg();
    }
}
