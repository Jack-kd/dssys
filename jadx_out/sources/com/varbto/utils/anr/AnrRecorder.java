package com.varbto.utils.anr;

import java.io.File;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public interface AnrRecorder {
    void cleanupOldFiles(int i2);

    int getAnrCountWithinDays(int i2);

    int getAnrFileCount();

    List<File> getAnrFileList();

    List<File> getAnrFileList(String str);

    JSONArray getAnrTimestampsWithinDays(int i2);

    void markFileSent(String str, String str2);
}
