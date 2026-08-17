package com.smartdigimkt.g1;

import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ String a(int i2) {
        switch (i2) {
            case 1:
                return "application/x-javascript";
            case 2:
                return "text/css";
            case 3:
            case 4:
                return DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG;
            case 5:
                return DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG;
            case 6:
                return "image/webp";
            case 7:
                return "image/gif";
            case 8:
            case 9:
                return "text/html";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String b(int i2) {
        switch (i2) {
            case 1:
                return "js";
            case 2:
                return "css";
            case 3:
                return "jpg";
            case 4:
                return "jpep";
            case 5:
                return "png";
            case 6:
                return "webp";
            case 7:
                return "gif";
            case 8:
                return "htm";
            case 9:
                return com.baidu.mobads.sdk.internal.a.f10882f;
            default:
                throw null;
        }
    }
}
