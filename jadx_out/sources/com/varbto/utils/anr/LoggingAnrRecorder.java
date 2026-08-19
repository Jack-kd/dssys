package com.varbto.utils.anr;

import android.content.Context;
import android.util.Log;
import com.varbto.internal.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import k1.InterfaceC1595b;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class LoggingAnrRecorder implements AnrRecorder {

    /* renamed from: a, reason: collision with root package name */
    public final File f50572a;

    /* renamed from: b, reason: collision with root package name */
    public final c f50573b;

    public LoggingAnrRecorder(Context context, boolean z2) {
        File file = new File(context.getFilesDir(), "anr_reports");
        this.f50572a = file;
        if (!file.exists()) {
            if (file.mkdirs()) {
                if (h.f51286a) {
                    file.getAbsolutePath();
                }
            } else if (h.f51286a) {
                Log.e("LoggingAnrRecorder", "Failed to create ANR report directory");
            }
        }
        this.f50573b = c.b(context);
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public void cleanupOldFiles(int i2) {
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public int getAnrCountWithinDays(int i2) {
        return this.f50573b.a(i2);
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public int getAnrFileCount() {
        return getAnrFileList().size();
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public List<File> getAnrFileList() {
        List<File> arrayList = new ArrayList<>();
        File file = this.f50572a;
        if (file != null && file.exists()) {
            File[] fileArrListFiles = this.f50572a.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                Arrays.sort(fileArrListFiles, new Comparator() { // from class: l1.g
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                    }
                });
                arrayList = Arrays.asList(fileArrListFiles);
            }
            if (h.f51286a) {
                arrayList.size();
            }
        }
        return arrayList;
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public JSONArray getAnrTimestampsWithinDays(int i2) {
        return this.f50573b.n(i2);
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public void markFileSent(String str, String str2) throws NumberFormatException {
        try {
            this.f50573b.o(Long.parseLong(str), str2, new InterfaceC1595b() { // from class: l1.f
                @Override // k1.InterfaceC1595b
                public final void a(long j2) {
                    this.f51953a.a(j2);
                }
            });
        } catch (NumberFormatException unused) {
        }
    }

    public final /* synthetic */ void a(long j2) {
        File file = new File(this.f50572a, String.valueOf(j2));
        if (file.exists()) {
            if (h.f51286a) {
                file.getName();
            }
            file.delete();
        }
    }

    @Override // com.varbto.utils.anr.AnrRecorder
    public List<File> getAnrFileList(String str) throws InterruptedException {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        File file = this.f50572a;
        if (file != null && file.exists() && (fileArrListFiles = this.f50572a.listFiles()) != null) {
            HashSet hashSetC = this.f50573b.c(str);
            Arrays.sort(fileArrListFiles, new Comparator() { // from class: l1.e
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                }
            });
            for (File file2 : fileArrListFiles) {
                if (file2.exists()) {
                    try {
                        if (hashSetC.contains(Long.valueOf(Long.parseLong(file2.getName())))) {
                            arrayList.add(file2);
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return arrayList;
    }
}
