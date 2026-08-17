package org.fourthline.cling.support.model.dlna;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes5.dex */
public enum DLNAFlags {
    SENDER_PACED(Integer.MIN_VALUE),
    TIME_BASED_SEEK(C.ENCODING_PCM_32BIT),
    BYTE_BASED_SEEK(C.ENCODING_PCM_A_LAW),
    FLAG_PLAY_CONTAINER(C.ENCODING_PCM_MU_LAW),
    S0_INCREASE(134217728),
    SN_INCREASE(67108864),
    RTSP_PAUSE(33554432),
    STREAMING_TRANSFER_MODE(16777216),
    INTERACTIVE_TRANSFERT_MODE(8388608),
    BACKGROUND_TRANSFERT_MODE(4194304),
    CONNECTION_STALL(2097152),
    DLNA_V15(1048576);

    private int code;

    DLNAFlags(int i2) {
        this.code = i2;
    }

    public int getCode() {
        return this.code;
    }

    public static DLNAFlags valueOf(int i2) {
        for (DLNAFlags dLNAFlags : values()) {
            if (dLNAFlags.getCode() == i2) {
                return dLNAFlags;
            }
        }
        return null;
    }
}
