package com.varbto.utils.crash;

import java.io.File;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public interface CrashRecorder {
    void cleanupOldFiles(int i2);

    int getCrashCountWithinDays(int i2);

    int getCrashCountWithinDays(String str, int i2);

    int getCrashFileCount();

    List<File> getCrashFileList();

    List<File> getCrashFileList(String str);

    List<File> getCrashFileList(String str, String str2);

    JSONArray getCrashTimestampsWithinDays(int i2);

    JSONArray getCrashTimestampsWithinDays(String str, int i2);

    void markFileSent(String str, String str2);

    void recordCrash(CrashReport crashReport, Throwable th);
}
