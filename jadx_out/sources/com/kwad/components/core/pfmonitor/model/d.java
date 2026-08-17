package com.kwad.components.core.pfmonitor.model;

import java.io.File;

/* loaded from: classes4.dex */
public final class d {
    private final boolean aiw;
    private final File file;
    private final String fileName;
    private final String filePath;
    private final long size;

    public d(File file, long j2, boolean z2) {
        this.file = file;
        this.size = j2;
        this.aiw = z2;
        this.fileName = file.getName();
        this.filePath = file.getAbsolutePath();
    }

    public final File getFile() {
        return this.file;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final boolean isDirectory() {
        return this.aiw;
    }

    public final String toString() {
        return String.format("%s%s - %s", this.aiw ? "[DIR] " : "[FILE] ", this.filePath, com.kwad.components.core.pfmonitor.d.P(this.size));
    }
}
