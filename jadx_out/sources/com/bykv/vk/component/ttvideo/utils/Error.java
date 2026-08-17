package com.bykv.vk.component.ttvideo.utils;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class Error {
    public static final int AUDIO_HARDWARE_DECODER_WRITE_ERROR = -499978;
    public static final int BUFFERING_TIME_OUT_ERROR = -499982;
    public static final String DataLoaderPreload = "kTTVideoErrorDomainDataLoaderPreload";
    public static final int ERROR_TYPE_CDN = 1003;
    public static final int ERROR_TYPE_PLAYER = 1002;
    public static final int OPEN_TIME_OUT_ERROR = -1414092869;
    public static final int PlayerStateIllegal = -9992;
    public static final int PreloadInvalidParameter = -100001;
    public static final int PreloadMDLStateError = -100002;
    public static final int PreloadSameKeyError = -100003;
    public static final int PreloadTrackEmptyError = -100004;
    public static final int TCP_READ_NETWORK_TIMEOUT = -499793;
    public static final int VIDEO_HARDWARE_DECODER_WRITE_ERROR = -499977;
    public static final String VideoOSPlayer = "kTTVideoErrorDomainVideoOSPlayer";
    public static final String VideoOwnPlayer = "kTTVideoErrorDomainVideoOwnPlayer";

    /* renamed from: a, reason: collision with root package name */
    public int f28826a;

    /* renamed from: b, reason: collision with root package name */
    public int f28827b;

    /* renamed from: c, reason: collision with root package name */
    public String f28828c;

    /* renamed from: d, reason: collision with root package name */
    public String f28829d;

    /* renamed from: e, reason: collision with root package name */
    public Map f28830e;

    public Error(String str, int i2) {
        this(str, i2, 0);
    }

    public int getCode() {
        return this.f28826a;
    }

    public String getDescription() {
        return this.f28829d;
    }

    public String getDomain() {
        return this.f28828c;
    }

    public int getInternalCode() {
        return this.f28827b;
    }

    public Map getParameters() {
        return this.f28830e;
    }

    public int getType() {
        return (this.f28828c.equals(VideoOwnPlayer) && needRestartPlayer()) ? 1002 : 1003;
    }

    public boolean needFallbackOS() {
        int i2 = this.f28826a;
        return i2 == -499978 || i2 == -499977;
    }

    public boolean needRestartPlayer() {
        int i2 = this.f28826a;
        return i2 == -499999 || i2 == -499997 || i2 == -499996 || i2 == -499992 || i2 == -499991 || i2 == -499990 || i2 == -499989 || i2 == -2139062143;
    }

    public boolean notNeedRetry() {
        int i2 = this.f28826a;
        return i2 == -499982 || i2 == -499793 || i2 == -1414092869;
    }

    public String toString() {
        String str = this.f28828c;
        Integer numValueOf = Integer.valueOf(this.f28826a);
        Integer numValueOf2 = Integer.valueOf(this.f28827b);
        String str2 = this.f28829d;
        if (str2 == null) {
            str2 = "";
        }
        return String.format("domain:%s, code:%d, internalCode:%d, description:%s", str, numValueOf, numValueOf2, str2);
    }

    public Error(String str, int i2, int i3) {
        this(str, i2, i3, null);
    }

    public Error(String str, int i2, int i3, String str2) {
        this.f28828c = str;
        this.f28826a = i2;
        this.f28827b = i3;
        this.f28829d = str2;
        this.f28830e = new HashMap();
    }

    public Error(String str, int i2, String str2) {
        this(str, i2, 0, str2);
    }
}
