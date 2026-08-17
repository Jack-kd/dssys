package com.kwad.sdk.core.webview.b.c;

import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes4.dex */
public final class c {
    private static final List<String> bcW;

    static {
        ArrayList arrayList = new ArrayList();
        bcW = arrayList;
        arrayList.add("application/x-javascript");
        arrayList.add(DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG);
        arrayList.add("image/tiff");
        arrayList.add("text/css");
        arrayList.add("text/html");
        arrayList.add("image/gif");
        arrayList.add(DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG);
        arrayList.add("application/javascript");
        arrayList.add(DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4);
        arrayList.add(DLNAProfiles.DLNAMimeTypes.MIME_AUDIO_MPEG);
        arrayList.add("application/json");
        arrayList.add("image/webp");
        arrayList.add("image/apng");
        arrayList.add("image/svg+xml");
        arrayList.add("application/octet-stream");
    }

    public static boolean fU(String str) {
        return bcW.contains(str);
    }
}
