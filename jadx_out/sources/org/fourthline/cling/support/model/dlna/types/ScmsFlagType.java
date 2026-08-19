package org.fourthline.cling.support.model.dlna.types;

/* loaded from: classes5.dex */
public class ScmsFlagType {
    private boolean copyright;
    private boolean original;

    public ScmsFlagType() {
        this.copyright = true;
        this.original = true;
    }

    public boolean isCopyright() {
        return this.copyright;
    }

    public boolean isOriginal() {
        return this.original;
    }

    public ScmsFlagType(boolean z2, boolean z3) {
        this.copyright = z2;
        this.original = z3;
    }
}
