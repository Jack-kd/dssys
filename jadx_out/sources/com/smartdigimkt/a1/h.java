package com.smartdigimkt.a1;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f39276a = new ArrayList();

    public static String a(int i2) {
        if (i2 == 32) {
            return "video/mp4v-es";
        }
        if (i2 == 33) {
            return "video/avc";
        }
        if (i2 == 35) {
            return "video/hevc";
        }
        if (i2 == 64) {
            return "audio/mp4a-latm";
        }
        if (i2 == 163) {
            return "video/wvc1";
        }
        if (i2 == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i2 == 165) {
            return "audio/ac3";
        }
        if (i2 == 166) {
            return "audio/eac3";
        }
        switch (i2) {
            case 96:
            case 97:
            case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME /* 98 */:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return DLNAProfiles.DLNAMimeTypes.MIME_AUDIO_MPEG;
            case 106:
                return DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG;
            default:
                switch (i2) {
                    case 169:
                    case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DASH_ABR /* 172 */:
                        return "audio/vnd.dts";
                    case 170:
                    case MediaPlayer.MEDIA_PLAYER_OPTION_BIT_RATE /* 171 */:
                        return "audio/vnd.dts.hd";
                    case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_SWITCH_COUNT /* 173 */:
                        return "audio/opus";
                    default:
                        return null;
                }
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf != -1) {
            return str.substring(0, iIndexOf);
        }
        throw new IllegalArgumentException("Invalid mime type: ".concat(str));
    }

    public static int a(String str) {
        str.getClass();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/eac3":
                return 6;
            case "audio/vnd.dts":
                return 7;
            case "audio/ac3":
                return 5;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }
}
