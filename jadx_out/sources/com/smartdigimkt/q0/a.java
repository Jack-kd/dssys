package com.smartdigimkt.q0;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import com.smartdigimkt.a1.t;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f42620a;

    /* renamed from: b, reason: collision with root package name */
    public final String f42621b;

    /* renamed from: c, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f42622c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f42623d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f42624e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f42625f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f42626g;

    public a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z2, boolean z3, boolean z4) {
        str.getClass();
        this.f42620a = str;
        this.f42621b = str2;
        this.f42622c = codecCapabilities;
        this.f42626g = z2;
        boolean z5 = false;
        this.f42623d = !z3 && codecCapabilities != null && t.f39303a >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback");
        this.f42624e = codecCapabilities != null && t.f39303a >= 21 && codecCapabilities.isFeatureSupported("tunneled-playback");
        if (z4 || (codecCapabilities != null && t.f39303a >= 21 && codecCapabilities.isFeatureSupported("secure-playback"))) {
            z5 = true;
        }
        this.f42625f = z5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q0.a.a(java.lang.String):boolean");
    }

    public final boolean b(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f42622c;
        if (codecCapabilities == null) {
            b("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            b("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i2)) {
            return true;
        }
        b("sampleRate.support, " + i2);
        return false;
    }

    public final void b(String str) {
        int i2 = t.f39303a;
    }

    public final boolean a(int i2, int i3, double d2) {
        boolean zIsSizeSupported;
        boolean zIsSizeSupported2;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f42622c;
        if (codecCapabilities == null) {
            b("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            b("sizeAndRate.vCaps");
            return false;
        }
        if (d2 != -1.0d && d2 > 0.0d) {
            zIsSizeSupported = videoCapabilities.areSizeAndRateSupported(i2, i3, d2);
        } else {
            zIsSizeSupported = videoCapabilities.isSizeSupported(i2, i3);
        }
        if (zIsSizeSupported) {
            return true;
        }
        if (i2 < i3) {
            if (d2 != -1.0d && d2 > 0.0d) {
                zIsSizeSupported2 = videoCapabilities.areSizeAndRateSupported(i3, i2, d2);
            } else {
                zIsSizeSupported2 = videoCapabilities.isSizeSupported(i3, i2);
            }
            if (zIsSizeSupported2) {
                StringBuilder sb = new StringBuilder("sizeAndRate.rotated, ");
                sb.append(i2);
                sb.append("x");
                sb.append(i3);
                sb.append("x");
                sb.append(d2);
                int i4 = t.f39303a;
                return true;
            }
        }
        b("sizeAndRate.support, " + i2 + "x" + i3 + "x" + d2);
        return false;
    }

    public final Point a(int i2, int i3) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f42622c;
        if (codecCapabilities == null) {
            b("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            b("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i4 = t.f39303a;
        return new Point((((i2 + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i3 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public final boolean a(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f42622c;
        if (codecCapabilities == null) {
            b("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            b("channelCount.aCaps");
            return false;
        }
        String str = this.f42621b;
        int maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
        if (maxInputChannelCount <= 1 && ((t.f39303a < 26 || maxInputChannelCount <= 0) && !DLNAProfiles.DLNAMimeTypes.MIME_AUDIO_MPEG.equals(str) && !DLNAProfiles.DLNAMimeTypes.MIME_AUDIO_3GP.equals(str) && !"audio/amr-wb".equals(str) && !"audio/mp4a-latm".equals(str) && !"audio/vorbis".equals(str) && !"audio/opus".equals(str) && !"audio/raw".equals(str) && !"audio/flac".equals(str) && !"audio/g711-alaw".equals(str) && !"audio/g711-mlaw".equals(str) && !"audio/gsm".equals(str))) {
            if ("audio/ac3".equals(str)) {
                maxInputChannelCount = 6;
            } else {
                maxInputChannelCount = "audio/eac3".equals(str) ? 16 : 30;
            }
        }
        if (maxInputChannelCount >= i2) {
            return true;
        }
        b("channelCount.support, " + i2);
        return false;
    }
}
