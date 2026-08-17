package com.kwad.components.core.pfmonitor;

import androidx.annotation.WorkerThread;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Stack;

/* loaded from: classes4.dex */
final class b {

    public interface a {
    }

    /* renamed from: com.kwad.components.core.pfmonitor.b$b, reason: collision with other inner class name */
    public interface InterfaceC0555b {
    }

    @WorkerThread
    public static com.kwad.components.core.pfmonitor.model.c a(File file, a aVar, int i2, InterfaceC0555b interfaceC0555b) {
        int i3;
        if (!file.exists() || !file.isDirectory()) {
            com.kwad.sdk.core.d.c.w("DirectoryScanner", "目录不存在或不是有效目录: " + file.getAbsolutePath());
        }
        List listSynchronizedList = Collections.synchronizedList(new ArrayList());
        List listSynchronizedList2 = Collections.synchronizedList(new ArrayList());
        HashMap map = new HashMap();
        Stack stack = new Stack();
        stack.push(file);
        while (true) {
            if (stack.isEmpty()) {
                break;
            }
            File file2 = (File) stack.pop();
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                if (!file2.equals(file)) {
                    listSynchronizedList.add(new com.kwad.components.core.pfmonitor.model.d(file2, 0L, true));
                }
                for (File file3 : fileArrListFiles) {
                    if (file3.isDirectory()) {
                        stack.push(file3);
                    } else {
                        long length = file3.length();
                        com.kwad.components.core.pfmonitor.model.d dVar = new com.kwad.components.core.pfmonitor.model.d(file3, length, false);
                        listSynchronizedList.add(dVar);
                        a(dVar, i2, listSynchronizedList2);
                        for (File parentFile = file3.getParentFile(); parentFile != null; parentFile = parentFile.getParentFile()) {
                            Long l2 = (Long) map.get(parentFile);
                            if (l2 == null) {
                                map.put(parentFile, Long.valueOf(length));
                            } else {
                                map.put(parentFile, Long.valueOf(l2.longValue() + length));
                            }
                        }
                    }
                }
            }
        }
        for (i3 = 0; i3 < listSynchronizedList.size(); i3++) {
            com.kwad.components.core.pfmonitor.model.d dVar2 = (com.kwad.components.core.pfmonitor.model.d) listSynchronizedList.get(i3);
            if (dVar2.isDirectory()) {
                Long l3 = (Long) map.get(dVar2.getFile());
                if (l3 == null) {
                    l3 = 0L;
                }
                listSynchronizedList.set(i3, new com.kwad.components.core.pfmonitor.model.d(dVar2.getFile(), l3.longValue(), true));
            }
        }
        return new com.kwad.components.core.pfmonitor.model.c(listSynchronizedList, listSynchronizedList2);
    }

    private static void a(com.kwad.components.core.pfmonitor.model.d dVar, long j2, List<com.kwad.components.core.pfmonitor.model.d> list) {
        if (!dVar.isDirectory() && dVar.getFile().length() / 1048576 >= j2) {
            list.add(dVar);
        }
    }
}
