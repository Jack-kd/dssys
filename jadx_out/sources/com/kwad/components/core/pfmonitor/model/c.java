package com.kwad.components.core.pfmonitor.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class c {
    private e aiq;
    private final List<d> air;
    private List<d> ais;
    private final long ait;
    private final int aiu;
    private final int aiv;

    public c(List<d> list, List<d> list2) {
        this.air = new ArrayList(list);
        this.ais = list2;
        this.ait = t(list);
        this.aiu = b(list, false);
        this.aiv = b(list, true);
    }

    private static int b(List<d> list, boolean z2) {
        int i2 = 0;
        for (d dVar : list) {
            if ((z2 && dVar.isDirectory()) || (!z2 && !dVar.isDirectory())) {
                i2++;
            }
        }
        return i2;
    }

    private static long t(List<d> list) {
        long length = 0;
        for (d dVar : list) {
            if (!dVar.getFile().isDirectory()) {
                length += dVar.getFile().length();
            }
        }
        return length;
    }

    public final void a(e eVar) {
        this.aiq = eVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ScanResult{targetPath='");
        sb.append(this.aiq.vv());
        sb.append('\'');
        sb.append(", totalSize=");
        sb.append(this.ait);
        sb.append(", totalSizeFormat=");
        sb.append(com.kwad.components.core.pfmonitor.d.P(this.ait));
        sb.append(", fileCount=");
        sb.append(this.aiu);
        sb.append(", bigFilesCount=");
        List<d> list = this.ais;
        sb.append(list == null ? 0 : list.size());
        sb.append(", directoryCount=");
        sb.append(this.aiv);
        sb.append('}');
        return sb.toString();
    }

    public final f vt() {
        f fVar = new f();
        fVar.aim = this.aiq.vw();
        fVar.aiz = this.aiq.vv();
        fVar.aiA = this.ait;
        return fVar;
    }

    public final List<f> vu() {
        ArrayList arrayList = new ArrayList();
        for (d dVar : this.ais) {
            try {
                f fVar = new f();
                fVar.aim = dVar.getFileName();
                fVar.aiz = dVar.getFile().getAbsolutePath();
                fVar.aiA = dVar.getFile().length();
                arrayList.add(fVar);
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            }
        }
        return arrayList;
    }
}
