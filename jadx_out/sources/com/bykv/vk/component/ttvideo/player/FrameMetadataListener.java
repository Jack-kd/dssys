package com.bykv.vk.component.ttvideo.player;

import java.util.Map;

/* loaded from: classes3.dex */
public interface FrameMetadataListener {
    void frameDTSNotify(int i2, long j2, long j3);

    void onFrameAboutToBeRendered(int i2, long j2, long j3, Map<Integer, String> map);

    void updateFrameTerminatedDTS(int i2, long j2, long j3);
}
